function onCreate()

	makeAnimatedLuaSprite('static','SonicP3/staticBACKGROUND2',-700,-400)addAnimationByPrefix('static','dance','menuSTATICNEW instance ',24,true)
	
   objectPlayAnimation('static','dance',false)
   setScrollFactor('static', 0.9, 0.9);
   scaleObject('static', 3.7, 3.7);

	 makeLuaSprite('ground', 'SonicP2/ground', -650, -100);
	setScrollFactor('ground', 0.9, 0.9);
	scaleObject('ground', 1.1, 1.1);

	addLuaSprite('static', false);
	addLuaSprite('ground', false);
	addLuaSprite('gf-dark', false);
end