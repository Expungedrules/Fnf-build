

function onCreate()
	-- background UnfairnessBG
	makeLuaSprite('UnfairnessBG', 'StageBG/UnfairnessBG', -280, -130);
	setLuaSpriteScrollFactor('UnfairnessBG', 0, 0);
	scaleObject('UnfairnessBG', 1.3, 1.3)
	addLuaSprite('UnfairnessBG', false);
end



function onCreatePost()
    initLuaShader("fart")
 
    setSpriteShader("UnfairnessBG", "fart")
end
 
function onUpdate()
    setShaderFloat("UnfairnessBG", "uTime", getSongPosition()/1000)
    setShaderFloat("UnfairnessBG", "uWaveAmplitude", 0.1)
    setShaderFloat("UnfairnessBG", "uSpeed", 2.25)
    setShaderFloat("UnfairnessBG", "uFrequency", 5)
end