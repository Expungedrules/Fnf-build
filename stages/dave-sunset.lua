function onCreate()
	makeLuaSprite('grass', 'grass', -832, 505);
	makeLuaSprite('gate', 'gate', -755, 250);
	setScrollFactor('gate', 0.9, 1);
	makeLuaSprite('hills', 'hills', -834, -159);
	setScrollFactor('hills', 0.7, 0.7);
	makeLuaSprite('sky', 'sky_sunset', -500, -200);
	setScrollFactor('sky', 0.5, 0.5);

	addLuaSprite('sky', false);
	addLuaSprite('hills', false);
	addLuaSprite('gate', false);
	addLuaSprite('grass', false)
end