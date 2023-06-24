function opponentNoteHit()
triggerEvent('Screen Shake', '0.1, 0.01', '0.1, 0.01');
health = getProperty('health')
setProperty('health', health- 0.0003);	
end

function onUpdate(elapsed)
	if curStep == 20 then
		started = true
	end
songPos = getSongPosition()
local currentBeat = (songPos/5000)*(curBpm/60)
doTweenY('opponentmove', 'dad', 0 - 0*math.sin((currentBeat+12*12)*math.pi), 0)
doTweenX('disruptor2', 'disruptor2.scale', 0 - 0*math.sin((currentBeat+1*0.1)*math.pi), 0)
doTweenY('disruptor2', 'disruptor2.scale', 0 - 0*math.sin((currentBeat+1*1)*math.pi), 0)
	if started == true then
		noteTweenY('player1', 13446, defaultPlayerStrumY3 - 300*math.sin((currentBeat+8*0.1)*math.pi), 3)
		noteTweenY('player2', 24677, defaultPlayerStrumY1 + 300*math.sin((currentBeat+8*0.1)*math.pi), 3)
		noteTweenY('player3', 345, defaultPlayerStrumY0 - 300*math.sin((currentBeat+8*0.1)*math.pi), 3)
		noteTweenY('player4', 474567, defaultPlayerStrumY2 +	300*math.sin((currentBeat+8*0.1)*math.pi), 3)
		noteTweenY('opponent1', 54745, defaultOpponentStrumY3 + 300*math.sin((currentBeat+8*0.1)*math.pi), 3)
		noteTweenY('opponent2', 6346, defaultOpponentStrumY1 - 300*math.sin((currentBeat+8*0.1)*math.pi), 3)
		noteTweenY('opponent3', 73546, defaultOpponentStrumY0 + 300*math.sin((currentBeat+8*0.1)*math.pi), 3)
		noteTweenY('opponent4', 8576, defaultOpponentStrumY2 - 300*math.sin((currentBeat+8*0.1)*math.pi), 3)
		noteTweenX('playerx1', 9647, defaultPlayerStrumX0 + 600*math.sin((currentBeat+8*0.1)*math.pi), 3)
		noteTweenX('playerx2', 1346, defaultPlayerStrumX1 - 600*math.sin((currentBeat+8*0.1)*math.pi), 3)
		noteTweenX('playerx3', 13658, defaultPlayerStrumX2 + 600*math.sin((currentBeat+8*0.1)*math.pi), 3)
		noteTweenX('playerx4', 13256, defaultPlayerStrumX3 - 600*math.sin((currentBeat+8*0.1)*math.pi), 3)
		noteTweenX('opponentx1', 12479, defaultOpponentStrumX0 - 600*math.sin((currentBeat+8*0.1)*math.pi), 3)
		noteTweenX('opponentx2', 1760, defaultOpponentStrumX1 + 600*math.sin((currentBeat+8*0.1)*math.pi), 3)
		noteTweenX('opponentx3', 12378, defaultOpponentStrumX2 - 600*math.sin((currentBeat+8*0.1)*math.pi), 3)
		noteTweenX('opponentx4', 134654, defaultOpponentStrumX3 + 600*math.sin((currentBeat+8*0.1)*math.pi), 3)
	end
end
