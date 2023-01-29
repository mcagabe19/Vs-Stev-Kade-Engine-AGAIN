function onCreate()
        makeLuaSprite('blackshit', 'blackshit', 0, 0);
		scaleObject('blackshit', 6, 6);
		setObjectCamera('blackshit', 'hud');
end

function onStepHit()
	if curStep == 98 then
	addLuaSprite('blackshit', false);
    doTweenAlpha('in1', 'blackshit', 1, 0.5)
	end
    if curStep == 125 then
    removeLuaSprite('blackshit', false);
	end
end