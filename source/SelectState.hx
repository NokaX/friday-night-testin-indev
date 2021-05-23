package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;

class SelectState extends FlxState
{
	override public function create()
	{
		function picoCallback():Void
		{
			FlxG.switchState(new PicoState());
		}

		FlxG.camera.fade(FlxColor.BLACK, 0.33, true);
		FlxG.sound.playMusic("assets/music/freakyMenu.ogg", 1, true);

		super.create();

		var menuBGmag = new FlxSprite();
		menuBGmag.loadGraphic("assets/images/menuBGMagenta.png");
		menuBGmag.screenCenter();
		add(menuBGmag);

		var selectRap = new FlxText(-50, 80, 900); // x, y, width
		selectRap.text = "Select a character!";
		selectRap.setFormat("assets/fonts/vcr.ttf", 60, FlxColor.WHITE, CENTER);
		selectRap.setBorderStyle(OUTLINE, FlxColor.BLACK, 2);
		add(selectRap);

		var pico = new FlxButton(100, 180, "Pico", picoCallback);
		add(pico);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
