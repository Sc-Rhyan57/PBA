// Automatically converted with https://github.com/TheLeerName/ShadertoyToFlixel

#pragma header

#define round(a) floor(a + 0.5)
#define iResolution vec3(openfl_TextureSize, 0.)
uniform float iTime;
#define iChannel0 bitmap
uniform sampler2D iChannel1;
uniform sampler2D iChannel2;
uniform sampler2D iChannel3;
#define texture flixel_texture2D

// third argument fix
vec4 flixel_texture2D(sampler2D bitmap, vec2 coord, float bias) {
	vec4 color = texture2D(bitmap, coord, bias);
	if (!hasTransform)
	{
		return color;
	}
	if (color.a == 0.0)
	{
		return vec4(0.0, 0.0, 0.0, 0.0);
	}
	if (!hasColorTransform)
	{
		return color * openfl_Alphav;
	}
	color = vec4(color.rgb / color.a, color.a);
	mat4 colorMultiplier = mat4(0);
	colorMultiplier[0][0] = openfl_ColorMultiplierv.x;
	colorMultiplier[1][1] = openfl_ColorMultiplierv.y;
	colorMultiplier[2][2] = openfl_ColorMultiplierv.z;
	colorMultiplier[3][3] = openfl_ColorMultiplierv.w;
	color = clamp(openfl_ColorOffsetv + (color * colorMultiplier), 0.0, 1.0);
	if (color.a > 0.0)
	{
		return vec4(color.rgb * color.a * openfl_Alphav, color.a * openfl_Alphav);
	}
	return vec4(0.0, 0.0, 0.0, 0.0);
}

// variables which is empty, they need just to avoid crashing shader
uniform float iTimeDelta;
uniform float iFrameRate;
uniform int iFrame;
#define iChannelTime float[4](iTime, 0., 0., 0.)
#define iChannelResolution vec3[4](iResolution, vec3(0.), vec3(0.), vec3(0.))
uniform vec4 iMouse;
uniform vec4 iDate;

uniform float scale;

uniform float strength;


float random(float x) {
    return fract(sin(x) * 10000.0);
}

float noise(vec2 p) {
    return random(p.x + p.y * 10000.0);
}

vec2 sw(vec2 p) { return vec2(floor(p.x), floor(p.y)); }
vec2 se(vec2 p) { return vec2(ceil(p.x), floor(p.y)); }
vec2 nw(vec2 p) { return vec2(floor(p.x), ceil(p.y)); }
vec2 ne(vec2 p) { return vec2(ceil(p.x), ceil(p.y)); }

float smoothNoise(vec2 p) {
    vec2 interp = smoothstep(0.0, 1.0, fract(p));
    float s = mix(noise(sw(p)), noise(se(p)), interp.x);
    float n = mix(noise(nw(p)), noise(ne(p)), interp.x);
    return mix(s, n, interp.y);
}

float fractalNoise(vec2 p) {
    float n = 0.0;
    n += smoothNoise(p);
    n += smoothNoise(p * 2.0) / 2.0;
    n += smoothNoise(p * 4.0) / 4.0;
    n += smoothNoise(p * 8.0) / 8.0;
    n += smoothNoise(p * 16.0) / 16.0;
    n /= 1.0 + 1.0 / 2.0 + 1.0 / 4.0 + 1.0 / 8.0 + 1.0 / 16.0;
    return n;
}

float smokeDensity(vec2 p, float scale, float time, float strength) {
    float n = fractalNoise(p * scale + vec2(time * 2.1, time * 0.1));
    // Aseguramos que la niebla cubra toda la pantalla
    float density = max(0.0, exp(-length(p) * 1.5) * n * strength);
    return density;
}

void mainImage(out vec4 fragColor, in vec2 fragCoord) {
    vec2 uv = fragCoord.xy / iResolution.xy;
    vec2 text = fragCoord.xy / iResolution.xy;

    // Ajustes del humo
    float time = iTime;

    // Generar el patrn de niebla
    vec2 p = uv * 2.0 - 1.0; // Normalizar las coordenadas
    float density = smokeDensity(p, scale, time, strength);

    // Ajustar color y opacidad
    vec3 color = vec3(0.9, 0.9, 0.9) * density; // Color de la niebla
    float blur = smoothstep(0.0, 0.0, density); // Difuminado ajustado
    
    fragColor = vec4(color, blur) + texture(iChannel0, text); // Color final
}
void main() {
	mainImage(gl_FragColor, openfl_TextureCoordv*openfl_TextureSize);
}