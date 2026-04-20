function onEvent(n,v1,v2)
	if n == "Apple Filter" then
		if v1 == 'on' then
		if v2 == 'black' then
makeLuaSprite('touhouBG', nil, -screenWidth * getProperty('camGame.zoom'), -screenHeight * getProperty('camGame.zoom'));
makeGraphic('touhouBG', screenWidth * 3, screenHeight * 3, '000000');
setScrollFactor('touhouBG');
addLuaSprite('touhouBG', false);

runHaxeCode([[
var glowy = game.createRuntimeShader('glowy');
            var chromToggle = game.createRuntimeShader('ChromaticAbberationHUD');
            var shaderVcr = game.createRuntimeShader('glitchChromatic');
            var shaderBlur = game.createRuntimeShader('radialBlur');

            game.camHUD.setFilters([new ShaderFilter(shaderVcr),new ShaderFilter(chromToggle)]);
            game.getLuaObject('chromToggle').shader = chromToggle;
            game.getLuaObject('shadertest').shader = shaderBlur;
            game.getLuaObject("temporaryShader1").shader = shaderVcr;

			trace(ShaderFilter);

			game.camGame.setFilters([new ShaderFilter(game.getLuaObject("temporaryShader1").shader),new ShaderFilter(game.getLuaObject("temporaryShader1").shader),new ShaderFilter(glowy)]);
]])

setProperty('boyfriend.colorTransform.blueOffset',255)
setProperty('boyfriend.colorTransform.redOffset',255)
setProperty('boyfriend.colorTransform.greenOffset',255)
setProperty('dad.colorTransform.blueOffset',255)
setProperty('dad.colorTransform.redOffset',255)
setProperty('dad.colorTransform.greenOffset',255)
setProperty('gf.colorTransform.blueOffset',255)
setProperty('gf.colorTransform.redOffset',255)
setProperty('gf.colorTransform.greenOffset',255)
end

		if v2 == 'black1' then
makeLuaSprite('touhouBG', nil, -screenWidth * getProperty('camGame.zoom'), -screenHeight * getProperty('camGame.zoom'));
makeGraphic('touhouBG', screenWidth * 3, screenHeight * 3, '000000');
setScrollFactor('touhouBG');
addLuaSprite('touhouBG', false);

runHaxeCode([[
var glowy = game.createRuntimeShader('glowy');
            var chromToggle = game.createRuntimeShader('ChromaticAbberationHUD');
            var shaderVcr = game.createRuntimeShader('glitchChromatic');
            var shaderBlur = game.createRuntimeShader('radialBlur');

            game.camHUD.setFilters([new ShaderFilter(shaderVcr),new ShaderFilter(chromToggle)]);
            game.getLuaObject('chromToggle').shader = chromToggle;
            game.getLuaObject('shadertest').shader = shaderBlur;
            game.getLuaObject("temporaryShader1").shader = shaderVcr;

			trace(ShaderFilter);

			game.camGame.setFilters([new ShaderFilter(game.getLuaObject("temporaryShader1").shader),new ShaderFilter(game.getLuaObject("temporaryShader1").shader),new ShaderFilter(glowy)]);
]])

setProperty('boyfriend.colorTransform.blueOffset',255)
setProperty('boyfriend.colorTransform.redOffset',255)
setProperty('boyfriend.colorTransform.greenOffset',255)
setProperty('gf.colorTransform.blueOffset',255)
setProperty('gf.colorTransform.redOffset',255)
setProperty('gf.colorTransform.greenOffset',255)

setProperty('dad.alpha', 0)
setProperty('jake.alpha', 0)
end

		if v2 == 'white' then
makeLuaSprite('touhouBG', nil, -screenWidth * getProperty('camGame.zoom'), -screenHeight * getProperty('camGame.zoom'));
makeGraphic('touhouBG', screenWidth * 3, screenHeight * 3, 'FFFFFF');
setScrollFactor('touhouBG');
addLuaSprite('touhouBG', false);
setProperty('dad.color',getColorFromHex('000000'))
setProperty('boyfriend.color',getColorFromHex('000000'))
setProperty('gf.color',getColorFromHex('000000'))

runHaxeCode([[
var glowy = game.createRuntimeShader('glowy');
            var chromToggle = game.createRuntimeShader('ChromaticAbberationHUD');
            var shaderVcr = game.createRuntimeShader('glitchChromatic');
            var shaderBlur = game.createRuntimeShader('radialBlur');

            game.camHUD.setFilters([new ShaderFilter(shaderVcr),new ShaderFilter(chromToggle)]);
            game.getLuaObject('chromToggle').shader = chromToggle;
            game.getLuaObject('shadertest').shader = shaderBlur;
            game.getLuaObject("temporaryShader1").shader = shaderVcr;

			trace(ShaderFilter);

			game.camGame.setFilters([new ShaderFilter(game.getLuaObject("temporaryShader1").shader),new ShaderFilter(game.getLuaObject("temporaryShader1").shader),new ShaderFilter(glowy)]);
]])
		end
		else
setProperty('boyfriend.colorTransform.blueOffset',0)
setProperty('boyfriend.colorTransform.redOffset',0)
setProperty('boyfriend.colorTransform.greenOffset',0)
setProperty('dad.colorTransform.blueOffset',0)
setProperty('dad.colorTransform.redOffset',0)
setProperty('dad.colorTransform.greenOffset',0)
setProperty('gf.colorTransform.blueOffset',0)
setProperty('gf.colorTransform.redOffset',0)
setProperty('gf.colorTransform.greenOffset',0)
setProperty('dad.color',getColorFromHex('FFFFFF'))
setProperty('boyfriend.color',getColorFromHex('FFFFFF'))
setProperty('gf.color',getColorFromHex('FFFFFF'))
setProperty('touhouBG.alpha',0)
		end
	end
		if v1 == 'off' then
		if v2 == 'white' then
            removeLuaSprite('touhouBG', false);
setProperty('dad.colorTransform.redOffset', 0)
setProperty('dad.colorTransform.blueOffset', 0)

setProperty('gf.colorTransform.greenOffset', 0)
setProperty('gf.colorTransform.redOffset', 0)
setProperty('gf.colorTransform.blueOffset', 0)

setProperty('boyfriend.colorTransform.greenOffset', 0)
setProperty('boyfriend.colorTransform.redOffset', 0)
setProperty('boyfriend.colorTransform.blueOffset', 0)

runHaxeCode([[
var pibbyFNF = game.createRuntimeShader('Pibbified');
game.getLuaObject('pibbyFNFobject').shader = pibbyFNF;
var chromFNF = game.createRuntimeShader('chromShader');
game.getLuaObject('chromFNFobject').shader = chromFNF;
game.camHUD.setFilters([new ShaderFilter(pibbyFNF),new ShaderFilter(chromFNF)]);
game.camGame.setFilters([new ShaderFilter(pibbyFNF),new ShaderFilter(chromFNF)]);
]])
		end
		if v1 == 'off' then
		if v2 == 'black' then
            removeLuaSprite('touhouBG', false);
setProperty('dad.colorTransform.redOffset', 0)
setProperty('dad.colorTransform.blueOffset', 0)

setProperty('gf.colorTransform.greenOffset', 0)
setProperty('gf.colorTransform.redOffset', 0)
setProperty('gf.colorTransform.blueOffset', 0)

setProperty('boyfriend.colorTransform.greenOffset', 0)
setProperty('boyfriend.colorTransform.redOffset', 0)
setProperty('boyfriend.colorTransform.blueOffset', 0)

runHaxeCode([[
            var chromToggle = game.createRuntimeShader('ChromaticAbberationHUD');
            var shaderVcr = game.createRuntimeShader('glitchChromatic');
            var shaderBlur = game.createRuntimeShader('radialBlur');

            game.camHUD.setFilters([new ShaderFilter(shaderVcr),new ShaderFilter(chromToggle)]);
            game.getLuaObject('chromToggle').shader = chromToggle;
            game.getLuaObject('shadertest').shader = shaderBlur;
            game.getLuaObject("temporaryShader1").shader = shaderVcr;
			trace(ShaderFilter);

			game.camGame.setFilters([new ShaderFilter(game.getLuaObject("temporaryShader1").shader),new ShaderFilter(game.getLuaObject("temporaryShader1").shader)]);
]])
		end
	end
end
end