
-----settings------
sped = 0.5 --Rapides daaah :v
valo = -18 --Cuanto Quieres que se mueva a los lados
CamZoom = 0.1 --Add Camera Zoom
-----settings------



---------------Code----------------
function onEvent(n,v1,v2)
	if n == 'BumpBv2' then
triggerEvent("Add Camera Zoom",CamZoom+0.02,CamZoom)

setProperty('camHUD.x',valo)
setProperty('camGame.x',valo)
doTweenX('Contrasakar', 'camHUD', 0, sped, 'sineInOut')
doTweenX('Adoptame :(', 'camGame', 0, sped, 'sineInOut')

valo = -valo
end
end
---------------Code----------------