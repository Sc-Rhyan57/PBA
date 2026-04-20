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

// ShaderToy shader

// Constante personalizada
uniform float curvature; // Ajusta este valor para cambiar la intensidad del efecto

void mainImage(out vec4 fragColor, in vec2 fragCoord)
{
    // Resolucin de la pantalla
    vec2 resolution = iResolution.xy;

    // Coordenadas de textura normalizadas
    vec2 uv = fragCoord / resolution.xy;
    
    // Aplicar el efecto cncavo (ojo de pez inverso) con la intensidad controlada por zoom
    vec2 center = vec2(0.5);
    vec2 uv_centered = uv - center; // Centrar coordenadas UV en (0,0)
    float len = length(uv_centered);
    if (len < 1.0)
    {
        float theta = atan(uv_centered.y, uv_centered.x);
        float r = len / (1.0 - curvature * len); // Aplicar distorsin controlada por zoom
        uv_centered = r * vec2(cos(theta), sin(theta));
    }
    
    // Ajustar las coordenadas UV para que se repitan
    uv = mod(uv_centered + center, 1.0);

    // Muestrear la textura
    vec3 color = texture(iChannel0, uv).rgb;
    
    // Salida del color final
    fragColor = vec4(color, 1.0);
}

void main() {
	mainImage(gl_FragColor, openfl_TextureCoordv*openfl_TextureSize);
}