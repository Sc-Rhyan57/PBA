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

uniform float Intensity;

uniform float Dark;

void mainImage( out vec4 fragColor, in vec2 fragCoord ) {
    vec2 uv = fragCoord.xy / iResolution.xy;
    vec2 text = fragCoord.xy / iResolution.xy;
    
    vec2 center = vec2(0.5, 0.5 * (iResolution.y / iResolution.x));
    
    vec2 light1 = vec2(sin(iTime*1.2+50.0)*1.0 + cos(iTime*0.4+10.0)*0.6, sin(iTime*1.2+100.0)*0.8 + cos(iTime*0.2+20.0)*-0.2)*0.2 + center;
    vec3 lightColor1 = vec3(1.0, 0.3, 0.3);
    
    vec2 light2 = vec2(sin(iTime+3.0)*-2.0, cos(iTime+7.0)*1.0)*0.2 + center;
    vec3 lightColor2 = vec3(1.0, 0.3, 0.3);
    
    vec2 light3 = vec2(sin(iTime+3.0)*2.0, cos(iTime+14.0)*-1.0)*0.2 + center;
    vec3 lightColor3 = vec3(1.0, 0.3, 0.3);

    float cloudIntensity1 = Dark * (1.0 - (2.5 * distance(uv, light1)));
    float lightIntensity1 = Intensity / (100.0 * distance(uv, light1));

    float cloudIntensity2 = Dark * (1.0 - (2.5 * distance(uv, light2)));
    float lightIntensity2 = Intensity / (100.0 * distance(uv, light2));

    float cloudIntensity3 = Dark * (1.0 - (2.5 * distance(uv, light3)));
    float lightIntensity3 = Intensity / (100.0 * distance(uv, light3));

    // Simulate cloud color based on procedural pattern
    vec3 cloudColor = vec3(cloudIntensity1 * uv.y) * lightColor1 +
                      vec3(cloudIntensity2 * uv.y) * lightColor2 +
                      vec3(cloudIntensity3 * uv.y) * lightColor3;

    // Add lighting contribution
    fragColor = vec4(cloudColor + lightIntensity1 * lightColor1 +
                     lightIntensity2 * lightColor2 +
                     lightIntensity3 * lightColor3, 1.0) + texture(iChannel0,text);
}

void main() {
	mainImage(gl_FragColor, openfl_TextureCoordv*openfl_TextureSize);
}