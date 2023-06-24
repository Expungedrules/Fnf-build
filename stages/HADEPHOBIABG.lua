

function onCreate()
	-- background HADEPHOBIABG
	makeLuaSprite('HADEPHOBIABG', 'StageBG/HADEPHOBIGBG', -280, -50);
	setLuaSpriteScrollFactor('HADEPHOBIABG', 0, 0);
	scaleObject('HADEPHOBIABG', 1.3, 1.3)
	addLuaSprite('HADEPHOBIABG', false);
end



function onCreatePost()
    initLuaShader("fart")
 
    setSpriteShader("HADEPHOBIABG", "fart")
end
 
function onUpdate()
    setShaderFloat("HADEPHOBIABG", "uTime", getSongPosition()/1000)
    setShaderFloat("HADEPHOBIABG", "uWaveAmplitude", 0.1)
    setShaderFloat("HADEPHOBIABG", "uSpeed", 2.25)
    setShaderFloat("HADEPHOBIABG", "uFrequency", 5)
end