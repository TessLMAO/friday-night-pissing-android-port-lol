function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.4 and difficulty > 1 then
        setProperty('health', health- 0.017)
    end
end