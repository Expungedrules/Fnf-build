

function onCreate()
	-- background scarybg
	makeLuaSprite('scarybg', 'StageBG/scarybg', -700, -500);
	setLuaSpriteScrollFactor('scarybg', 0.9, 0.9);
	scaleObject('scarybg', 3, 3)
	addLuaSprite('scarybg', false);
end



function onCreatePost()
    initLuaShader("fart")
 
    setSpriteShader("scarybg", "fart")
end
 
function onUpdate()
    setShaderFloat("scarybg", "uTime", getSongPosition()/1000)
    setShaderFloat("scarybg", "uWaveAmplitude", 0.1)
    setShaderFloat("scarybg", "uSpeed", 2.25)
    setShaderFloat("scarybg", "uFrequency", 5)
end