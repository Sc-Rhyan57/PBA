function onCreatePost()
    initLuaShader('blur')
    makeLuaSprite('blurShader')
    setSpriteShader('blurShader','blur')
    runHaxeCode([[
        var blur = game.createRuntimeShader('blur');
        FlxG.game.setFilters([new ShaderFilter(blur)]);
        game.getLuaObject('blurShader').shader = blur;
    ]])

    setShaderFloat('blurShader','cx', 0.2)
    setShaderFloat('blurShader','cy', 0.3)
    setShaderFloat('blurShader','blurWidth',0.0)
    --setProperty('camGame.x',20)
end

function onUpdate()
    setShaderFloat('blurShader','blurWidth',getProperty('blurShader.x'))
end

function onEvent(n,v1,v2)
    if n == 'Effect Blur' then
        cancelTween('blurShaderDown')
        doTweenX('blurShaderDown','blurShader',v1,v2,'linear')
    end
    if n == 'Effect Blur Up' then
        cancelTween('blurShaderDown')
        setProperty('blurShader.x',v1)
        doTweenX('blurShaderDown','blurShader',0,v2,'linear')
    end
end