function onCreate()
    makeLuaSprite('z' , 'labinvisible' , -800 , -700);
    addLuaSprite('z' , false);--     1 valor  2 

makeAnimatedLuaSprite('pibbyinvisible', 'characters/pibbyinvisible', 30000, 220); 
addAnimationByPrefix('pibbyinvisible', 'pibbyinvisible', 'Idle', 12, true);
scaleObject('pibbyinvisible', 0.9, 0.9);
addLuaSprite('pibbyinvisible', false);

--:v donde puse awita puedes poner tu esenario y del z cualquier nombre pero tiene ser iguales como yo le puse caso contrario no funcionara :'('
end