import flixel.util.FlxSave;

public function saveControls():Void {
    var save = FlxG.save;
    save.data.controls = serializeBindings();
    save.flush();
}

public function loadControls():Void {
    var save = FlxG.save;
    if (save.data.controls != null) {
        deserializeAndApply(save.data.controls);
    }
}


function serializeBindings():Dynamic {
    // Save keyboard bindings per Control
    var data = {};
    data.LEFT = [FlxKey.A, FlxKey.LEFT, FlxKey.X];
    data.UP = [FlxKey.W, FlxKey.UP, FlxKey.C];
    data.DOWN = [FlxKey.S, FlxKey.B, FlxKey.DOWN];
    data.Right = [FlxKey.D, FlxKey.RIGHT, FlxKey.N];
    return data;
}
