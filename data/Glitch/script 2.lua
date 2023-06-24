
function onCreatePost()
  makeLuaText("message", "Song by The-Boneyard,When you win I smash my phone", 500, 30, 50)
  setTextAlignment("message", "left")
  addLuaText("message")

  makeLuaText("engineText", "Glitch - Psych Engine (PE 0.6.3)", 500, 30, 30)
  setTextAlignment("engineText", "left")
  addLuaText("engineText")

  if getPropertyFromClass('ClientPrefs', 'downScroll') == true then
      setProperty('message.y', 680)
      setProperty('engineText.y', 660)
  end
end