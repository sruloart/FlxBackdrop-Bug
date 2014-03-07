package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxMath;

import flixel.addons.display.FlxBackdrop;


/**
 * A FlxState which can be used for the game's menu.
 */
class MenuState extends FlxState
{
	var sky: FlxBackdrop;
	
	/**
	 * Function that is called up when to state is created to set it up. 
	 */
	override public function create():Void
	{
		
		super.create();

		FlxG.mouse.visible = false;
		FlxG.drawFramerate = 100;
		FlxG.updateFramerate = 300;

		sky = new FlxBackdrop("assets/images/layer1.png", 1, 1, true, true);
		add(sky);

	}
	
	/**
	 * Function that is called when this state is destroyed - you might want to 
	 * consider setting all objects this state uses to null to help garbage collection.
	 */
	override public function destroy():Void
	{
		super.destroy();
	}

	/**
	 * Function that is called once every frame.
	 */
	override public function update():Void
	{
		{
			sky.x += 1;
			sky.y += 1;
		}
		
		super.update();
	}	
}