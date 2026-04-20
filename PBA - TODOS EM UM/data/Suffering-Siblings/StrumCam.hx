import flixel.math.FlxRect;
import flixel.FlxCamera;

var strumHUD: FlxCamera;

function onCreatePost() {
    strumHUD = new FlxCamera();
    strumHUD.bgColor = 0x00000000;
    FlxG.cameras.add(strumHUD, false);
    game.variables.set('strumHUD', strumHUD);
    for (i in 0...8) {
        game.strumLineNotes.members[i].cameras = [strumHUD];
    }
    for (note in game.unspawnNotes) {
        note.cameras = [strumHUD];
    }
    game.grpNoteSplashes.cameras = [strumHUD];
    FlxG.cameras.remove(game.camOther, false);
    FlxG.cameras.add(game.camOther, false);
}

function onUpdate() {
    strumHUD.alpha = game.camHUD.alpha;
    strumHUD.zoom = game.camHUD.zoom;
}