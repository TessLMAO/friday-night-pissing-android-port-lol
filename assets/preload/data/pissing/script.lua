local endstops = 0
function onCreate()
    if not lowQuality then
        makeLuaSprite('superLazarPiss', 'BGs/announcement/main/piss', 2000, -200)
        addLuaSprite('superLazarPiss', true)
    end
    if downScroll then
    makeLuaText('pissWarn', "Don't hit the yellow piss notes!", 0, 275, 600)
else
    makeLuaText('pissWarn', "Don't hit the yellow piss notes!", 0, 275, 100)
end
    setTextSize('pissWarn', 35, 35)
    setTextColor('pissWarn', 'ff0000')
    addLuaText('pissWarn')
end
function onSongStart()
    runTimer('ballslmfaogottem', 5)
end
function onStepHit()
    if curStep > 767 and curStep < 1024 and curBeat % 2 == 0 and not lowQuality or curStep > 767 and curStep < 1024 and curBeat % 2 == 0 and not flashingLights then
        cameraFlash('game', 'ff0000', 0.15, true)
    end
    if curStep > 767 and curStep < 1024 and curBeat % 2 == 0 and not lowQuality then
        setProperty('healthBar.color', '000000')
        doTweenColor('flashHealth', 'healthBar', 'FFFFFF', 0.25, 'linear')
    end
    if curStep == 906 and not lowQuality then
        doTweenX('hesPullingHisCockOu', 'superLazarPiss', -5300, 4, 'quartOut')
    end
end
function goodNoteHit()
    if curStep > 767 and curStep < 1024 then
        setProperty('health', getProperty('health') -0.023)
    end
end
function onEndSong()

        endstops = endstops + 1
        if isStoryMode then
            if endstops == 1 then
                
                
			     runTimer('endshit',1)
			    cameraFade('hud','000000',1)
                
                return Function_Stop;
                
            end
        end
         return Function_Continue;

end
function onUpdatePost()
    
   
    if endstops == 1 and getProperty('endingSong') then
       
      if keyJustPressed('accept') then endSong() end
        
    end
    
    
end
function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'endshit' then
            setProperty('camHUD._fxFadeAlpha', 0);
            cameraFlash('hud','000000',1)
            makeLuaSprite('endcock','jabaited')
            addLuaSprite('endcock',true)
            setObjectCamera('endcock','other')
            playSound('Song Unlocked')
        elseif tag == 'ballslmfaogottem' then
             doTweenAlpha('pissWarm', 'pissWarn', 0, 1, 'quartOut')
            runTimer('ballslmfaogottem2', 1)
        elseif tag == 'ballslmfaogottem2' then
           removeLuaText('pissWarn', true)
    end
end