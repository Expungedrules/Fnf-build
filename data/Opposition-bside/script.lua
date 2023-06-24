function opponentNoteHit()
       health = getProperty('health')
    if getProperty('health') > 1 then
       setProperty('health', health- 0.0050);
	end
end

function onUpdate(elapsed)
  if curStep >= 0 then
    songPos = getSongPosition()
    local currentBeat = (songPos/1000)*(bpm/120)
    doTweenY(dadTweenY, 'dad', 290-130*math.sin((currentBeat*0.25)*math.pi),0.001)
  end
end

function onCreatePost()
  makeLuaText("message", "Song by hortas,FUCK YOU!!!!!!!", 500, 30, 50)
  setTextAlignment("message", "left")
  addLuaText("message")

  makeLuaText("engineText", "Opposition-bside - Psych Engine (PE 0.6.3)", 500, 30, 30)
  setTextAlignment("engineText", "left")
  addLuaText("engineText")

  if getPropertyFromClass('ClientPrefs', 'downScroll') == true then
      setProperty('message.y', 680)
      setProperty('engineText.y', 660)
  end
end