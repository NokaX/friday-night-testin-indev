package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.util.FlxColor;

class PicoState extends FlxState
{
	override public function create()
	{
		FlxG.camera.fade(FlxColor.BLACK, 0.33, true);
		FlxG.sound.playMusic("assets/music/lilbitBack.ogg", 0.3, true);

		super.create();

		var menuBG = new FlxSprite();
		menuBG.loadGraphic("assets/images/menuBGBlue.png");
		menuBG.screenCenter();
		add(menuBG);
	}

	override public function update(elapsed:Float)
	{
		if (FlxG.keys.justPressed.BACKSPACE)
		{
			FlxG.sound.play("assets/sounds/cancelMenu.ogg", 1, false);
			FlxG.camera.fade(FlxColor.BLACK, 0.33, false, function()
			{
				FlxG.switchState(new SelectState());
			});
		}

		super.update(elapsed);
	}
}
