package;

import flixel.FlxSprite;

class HealthIcon extends FlxSprite
{
	/**
	 * Used for FreeplayState! If you use it elsewhere, prob gonna annoying
	 */
	public var sprTracker:FlxSprite;

	public function new(char:String = 'bf', isPlayer:Bool = false)
	{
		super();

		loadGraphic(Paths.image('iconGrid'), true, 150, 150);

		antialiasing = true;
		animation.add('bf', [0, 1], 0, false, isPlayer);
		animation.add('bfb', [2, 3], 0, false, isPlayer);
		animation.add('evilstev', [4, 5], 0, false, isPlayer);
		animation.add('stev', [6, 6], 0, false, isPlayer);
		animation.add('stevguitar', [7, 7], 0, false, isPlayer);
		animation.add('stevgun', [8, 8], 0, false, isPlayer);
		animation.add('stevb', [9, 9], 0, false, isPlayer);
		animation.play(char);

		/*switch (char)
		{
			case 'bf-pixel' | 'senpai' | 'senpai-angry' | 'spirit' | 'gf-pixel':
				antialiasing = false;
		}*/

		scrollFactor.set();
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (sprTracker != null)
			setPosition(sprTracker.x + sprTracker.width + 10, sprTracker.y - 30);
	}
}
