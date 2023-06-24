
function onCreatePost()
  makeLuaText("message", "Song by Maevings,Lets do a rematch", 500, 30, 50)
  setTextAlignment("message", "left")
  addLuaText("message")

  makeLuaText("engineText", "Opposition - Psych Engine (PE 0.6.3)", 500, 30, 30)
  setTextAlignment("engineText", "left")
  addLuaText("engineText")

  if getPropertyFromClass('ClientPrefs', 'downScroll') == true then
      setProperty('message.y', 680)
      setProperty('engineText.y', 660)
  end
end