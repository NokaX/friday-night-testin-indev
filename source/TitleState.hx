package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.util.FlxColor;

class TitleState extends FlxState
{
	override public function create()
	{
		FlxG.camera.fade(FlxColor.BLACK, 0.33, true);
		FlxG.sound.playMusic("assets/music/freakyMenu.ogg", 1, true);

		super.create();

		var menuBG = new FlxSprite();
		menuBG.loadGraphic("assets/images/menuBG.png");
		menuBG.screenCenter();
		add(menuBG);

		var logo = new FlxSprite();
		logo.loadGraphic("assets/images/logotestBumpin.png");
		logo.screenCenter();
		add(logo);
	}

	override public function update(elapsed:Float)
	{
		if (FlxG.keys.justPressed.ENTER)
		{
			FlxG.sound.play("assets/sounds/confirmMenu.ogg", 1, false);
			FlxG.camera.fade(FlxColor.BLACK, 0.33, false, function()
			{
				FlxG.switchState(new SelectState());
			});
		}

		super.update(elapsed);
	}
}
