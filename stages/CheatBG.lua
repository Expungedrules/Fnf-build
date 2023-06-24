

function onCreate()
	-- background CheatBG
	makeLuaSprite('CheatBG', 'StageBG/CheatBG', -290, -200);
	setLuaSpriteScrollFactor('CheatBG', 0, 0);
	scaleObject('CheatBG', 1.3, 1.3)
	addLuaSprite('CheatBG', false);
end



function onCreatePost()
    initLuaShader("fart")
 
    setSpriteShader("CheatBG", "fart")
end
 
function onUpdate()
    setShaderFloat("CheatBG", "uTime", getSongPosition()/1000)
    setShaderFloat("CheatBG", "uWaveAmplitude", 0.1)
    setShaderFloat("CheatBG", "uSpeed", 2.25)
    setShaderFloat("CheatBG", "uFrequency", 5)
end