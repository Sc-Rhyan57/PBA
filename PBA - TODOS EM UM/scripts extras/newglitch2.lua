local shaderName = "NewGlitch2"
randomxd = math.random(10,20)

function onStepHit()

	randomxd = math.random(2,5)/math.random(1,3)
		
	if curStep == 1565 then
		shaderCoordFix() -- initialize a fix for textureCoord when resizing game window

		makeLuaSprite("NewGlitch2")
		makeGraphic("NewGlitch2", screenWidth, screenHeight)

		setSpriteShader("shaderImage", "NewGlitch2")


		runHaxeCode([[
			var shaderName = "]] .. shaderName .. [[";
			
			game.initLuaShader(shaderName);
			
			var shader0 = game.createRuntimeShader(shaderName);
			game.camGame.setFilters([new ShaderFilter(shader0)]);
			game.getLuaObject("NewGlitch2").shader = shader0; // setting it into temporary sprite so luas can set its shader uniforms/properties
			return;
		]])
		
	end
	
	if curStep == 1572 then
		setShaderFloat('NewGlitch2', 'negativity', 1)
		doTweenY('camGameY', 'camGame', getProperty('camGame.y')+350, 0.4, 'quadIn')
	end

	if curStep == 1579 then

		removeSpriteShader('NewGlitch2')
		runHaxeCode([[
			trace(ShaderFilter);
			game.camGame.setFilters([]);
			
			return;
		]])
		
		setProperty('camGame.y', 0)
	end
	
	setShaderFloat("NewGlitch2", "binaryIntensity", randomxd-1)
	
end

function onUpdate(elapsed)
    setShaderFloat("shaderImage", "iTime", os.clock())
end

function shaderCoordFix()
    runHaxeCode([[
        resetCamCache = function(?spr) {
            if (spr == null || spr.filters == null) return;
            spr.__cacheBitmap = null;
            spr.__cacheBitmapData = null;
        }
        
        fixShaderCoordFix = function(?_) {
            resetCamCache(game.camGame.flashSprite);
            resetCamCache(game.camHUD.flashSprite);
            resetCamCache(game.camOther.flashSprite);
        }
    
        FlxG.signals.gameResized.add(fixShaderCoordFix);
        fixShaderCoordFix();
        return;
    ]])
    
    local temp = onDestroy
    function onDestroy()
        runHaxeCode([[
            FlxG.signals.gameResized.remove(fixShaderCoordFix);
            return;
        ]])
        if (temp) then temp() end
    end
end

function onCreate()
	if not shadersEnabled then
		close()
	end
end