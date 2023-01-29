function onStepHit()
if curStep == 764 then
    removeLuaSprite('stagefront', false);
    makeLuaSprite('shit', 'stageimages/evilstev', -300, -320);
	setScrollFactor('shit', 1, 1);
	scaleObject('shit', 1.3, 1.3);
    addLuaSprite('shit', false);
end
if curStep == 1305 then
    doTweenAlpha('in1', 'camHUD', 0.001, 0.5)
end
if curStep == 1433 then
    doTweenAlpha('in1', 'camHUD', 1, 0.5)
end
end