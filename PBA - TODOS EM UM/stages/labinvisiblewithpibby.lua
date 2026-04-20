function onCreate()
    makeLuaSprite('z' , 'labinvisible' , -800 , -700);
    addLuaSprite('z' , false);--     1 valor  2 

makeAnimatedLuaSprite('pibby', 'characters/pibby', 30000, 220); 
addAnimationByPrefix('pibby', 'pibby', 'Idle', 12, true);
scaleObject('pibby', 0.9, 0.9);
addLuaSprite('pibby', false);

--:v donde puse awita puedes poner tu esenario y del z cualquier nombre pero tiene ser iguales como yo le puse caso contrario no funcionara :'('
end