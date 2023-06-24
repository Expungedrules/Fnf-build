

function onCreate()
	-- background FutileBG
	makeLuaSprite('FutileBG', 'StageBG/FutileBG', -380, -200);
	setLuaSpriteScrollFactor('FutileBG', 0, 0);
	scaleObject('FutileBG', 2,5, 2,5)
	addLuaSprite('FutileBG', false);
end


local shadname = "stridentCrisisWavy"

	function onCreatePost()
		initLuaShader("stridentCrisisWavy")
		setSpriteShader('FutileBG', shadname)
	end
	
	function onUpdate(elapsed)
	setShaderFloat('FutileBG', 'uWaveAmplitude', 0.1)
	setShaderFloat('FutileBG', 'uFrequency', 5)
	setShaderFloat('FutileBG', 'uSpeed', 2.25)
		end

	function onUpdatePost(elapsed)
	setShaderFloat('FutileBG', 'uTime', os.clock())
	end