--[[ made by beihu(b站一北狐丶逐梦) 
    bilbil: https://b23.tv/gxqO0GH
    youtube: https://www.youtube.com/@beihu235
    
    download: https://youtu.be/pD_a82jTJgY
    
    sorry my engine is too bad
    
    it takes me 4 mouth finish this I've been thinking data logic about it, actually.
    maybe you can think logic is too easy,but find it is a tough process
    
    it only use a little memory and CPU utility so you dont need worried about it 
    
    notice: if your sprite bottom have blank,you need fix Y location by yourself

    credit if you are using this for a public mod!
    If you use it in your video,l hope you can give a link to this video,l want more people can use it
  ]]
  
function onCreatePost()
        
    BFAlpha = 0.35
    DADAlpha = 0.35

    checkCharacter() --about Character Y Fix
    checkSong() --about show     

--------------------------------------------------

    if showBF then

        bfimage = getProperty('boyfriend.imageFile')
        bfframe = getProperty('boyfriend.animation.frameName')
        bfx = getProperty('boyfriend.x')
        bfy = getProperty('boyfriend.y')

        bfscaleX = getProperty('boyfriend.scale.x')
        bfscaleY = getProperty('boyfriend.scale.y')
        bfoffsetX = getProperty('boyfriend.offset.x')
        bfoffsetY = getProperty('boyfriend.offset.y')
        bfflipX = getProperty('boyfriend.flipX')
        
        makeAnimatedLuaSprite('bfPhantom',bfimage,bfx,bfy)
        addLuaSprite('bfPhantom')
		setObjectOrder('bfPhantom', getObjectOrder('boyfriendGroup') - 1)
        setProperty('bfPhantom.offset.x',bfoffsetX)
        setProperty('bfPhantom.offset.y',bfoffsetY)
        setProperty('bfPhantom.scale.x',bfscaleX)
        setProperty('bfPhantom.scale.y',bfscaleY)
        setProperty('bfPhantom.alpha',BFAlpha)
        setProperty('bfPhantom.flipX', bfflipX)
        setProperty('bfPhantom.flipY', true)
        setProperty('bfPhantom.y',getProperty('boyfriend.y') + 685)
    end

-----------------------------boyfriend sprite---------------------

    if showDAD then
        dadimage = getProperty('dad.imageFile')
        dadframe = getProperty('dad.animation.frameName')
        dadx = getProperty('dad.x')
        dady = getProperty('dad.y')

        dadscaleX = getProperty('dad.scale.x')
        dadscaleY = getProperty('dad.scale.y')
        dadoffsetX = getProperty('dad.offset.x')
        dadoffsetY = getProperty('dad.offset.y')
        dadflipX = getProperty('dad.flipX')

        makeAnimatedLuaSprite('dadPhantom',dadimage,dadx+10,0)
        addLuaSprite('dadPhantom',false)
		setObjectOrder('dadPhantom',getObjectOrder('dadGroup')-1)
        setProperty('dadPhantom.offset.x',dadoffsetX)
        setProperty('dadPhantom.offset.y',dadoffsetY)
        setProperty('dadPhantom.scale.x',dadscaleX)
        setProperty('dadPhantom.scale.y',dadscaleY)
        setProperty('dadPhantom.alpha',DADAlpha)
        setProperty('dadPhantom.flipY', true);
        setProperty('dadPhantom.flipX', dadflipX)
        setProperty('dadPhantom.y',getProperty('dad.y') + 880)

        makeAnimatedLuaSprite('upMech',dadimage,dadx,dady)
		addLuaSprite('upMech', true)
		setObjectOrder('upMech',getObjectOrder('dadGroup')+1)
		setProperty('upMech.offset.x',dadoffsetX)
		setProperty('upMech.offset.y',dadoffsetY)
		setProperty('upMech.scale.x',dadscaleX)
		setProperty('upMech.scale.y',dadscaleY)
	    setProperty('upMech.alpha', 0)
    end
    
--------------------------dad sprite--------------------------

end


function onUpdate()
	
    bfframe = getProperty('boyfriend.animation.frameName')
    addAnimationByPrefix('bfPhantom','b',bfframe,1,true)
    objectPlayAnimation("bfPhantom","b",true)
    bfoffsetX = getProperty('boyfriend.offset.x')
    bfoffsetY = getProperty('boyfriend.offset.y')
    setProperty('bfPhantom.offset.x',bfoffsetX)
    setProperty('bfPhantom.offset.y',getProperty('boyfriend.frameHeight')*getProperty('boyfriend.scale.y')-bfoffsetY)

-----------------------------boyfriend playanim---------------

    dadframe = getProperty('dad.animation.frameName')
    addAnimationByPrefix('dadPhantom','d',dadframe,1,true)
    objectPlayAnimation("dadPhantom","d",true)
    dadoffsetX = getProperty('dad.offset.x')
    dadoffsetY = getProperty('dad.offset.y')
    setProperty('dadPhantom.offset.x',dadoffsetX)
    setProperty('dadPhantom.offset.y',getProperty('dad.frameHeight')*getProperty('dad.scale.y')-dadoffsetY)
	
    addAnimationByPrefix('upMech','upMechA',dadframe,1,true)
    objectPlayAnimation("upMech","upMechA",true)
    dadoffsetX = getProperty('dad.offset.x')
    dadoffsetY = getProperty('dad.offset.y')
    setProperty('upMech.offset.x',dadoffsetX)
    setProperty('upMech.offset.y',dadoffsetY)

-----------------------------dad playanim---------------

end

function onEvent(name,value1,value2)
    if name == "Change Character" then
    
    checkCharacter()

        if value1 == "Dad" or value1 == "dad" then
			if value2 == "gumball" then
				dadimage = getProperty('dad.imageFile')
				dadframe = getProperty('dad.animation.frameName')
				dadx = getProperty('dad.x')
				dady = getProperty('dad.y')

				dadscaleX = getProperty('dad.scale.x')
				dadscaleY = getProperty('dad.scale.y')
				dadoffsetX = getProperty('dad.offset.x')
				dadoffsetY = getProperty('dad.offset.y')
				dadflipX = getProperty('dad.flipX')

				makeAnimatedLuaSprite('dadPhantom',dadimage,dadx,0)
				addLuaSprite('dadPhantom',false)
				setObjectOrder('dadPhantom',getObjectOrder('dadGroup')-1)
				setProperty('dadPhantom.offset.x',dadoffsetX)
				setProperty('dadPhantom.offset.y',dadoffsetY)
				setProperty('dadPhantom.scale.x',dadscaleX)
				setProperty('dadPhantom.scale.y',dadscaleY)
				setProperty('dadPhantom.alpha',DADAlpha)
				setProperty('dadPhantom.flipY', true);
				setProperty('dadPhantom.flipX', dadflipX)
				setProperty('dadPhantom.y',getProperty('dad.y') + 892)
			end
        end
    end
end

function checkCharacter()

    -----------------------

    if boyfriendName =='YourBFName' then
        BFYFix = 0
    elseif boyfriendName =='YourBFName2' then
        BFYFix = 0
    else
        BFYFix = 0    
    end
    
    ------------boyfriend-----------
    
    if dadName == 'YourDadName' then
        DADYFix = 0
    elseif dadName == 'YourDadName2' then
        DADYFix = 0
    else
        DADYFix = 0    
    end
    
    ------------dad-----------
    
end

function checkSong()

    showBF = true
    showDAD = true
    
end

