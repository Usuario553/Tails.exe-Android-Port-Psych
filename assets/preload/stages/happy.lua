function onCreate()

	makeLuaSprite('sky', 'happy/SKY', -600, -100);
	setScrollFactor('sky', 0.9, 0.9);
	
	makeLuaSprite('exe', 'happy/backex', -600, -100);
	setScrollFactor('exe', 0.9, 0.9);
	
	makeLuaSprite('floor1', 'happy/FLOOR2', -650, 0);
	setScrollFactor('floor1', 0.9, 0.9);
	scaleObject('floor1', 1.1, 1.1);

	makeLuaSprite('floor2', 'happy/FLOOR1', -650, 0);
	setScrollFactor('floor2', 0.9, 0.9);
	scaleObject('floor2', 1.1, 1.1);

	makeLuaSprite('grass', 'happy/frontgrass', -650, 0);
	setScrollFactor('grass', 0.9, 0.9);
	scaleObject('grass', 1.1, 1.1);
	
	makeLuaSprite('border', 'RedVG', 0, 0);
	setObjectCamera('border', 'camother');

	addLuaSprite('sky', false);
	addLuaSprite('floor1', false);
	addLuaSprite('floor2', false);
	addLuaSprite('grass', false);
	addLuaSprite('exe', false);
	addLuaSprite('border', false);
	
	setProperty('exe.visible', false);
	setProperty('border.visible', false);
end	

function onEvent(name,value1,value2)
	  if name == 'Play Animation' then 
		
		if value1 == 'ex' then
        setProperty('sky.visible', false);
        setProperty('exe.visible', true);
        setProperty('floor1.visible', false);
        setProperty('floor2.visible', false);
        setProperty('grass.visible', false);
        setProperty('border.visible', true);
        end
    end
end 

function onBeatHit()
	if curBeat == 151 then
		doTweenAlpha('bordervis','border', 1, 0.85, 'quadInOut');
	end
end	

function onTweenCompleted(tag)
	if tag == 'bordervis' then
		doTweenAlpha('borderinvis','border', 0, 0.85, 'quadInOut');
	end

	if tag == 'borderinvis' then
		doTweenAlpha('bordervis','border', 1, 0.85, 'quadInOut');
	end
end	