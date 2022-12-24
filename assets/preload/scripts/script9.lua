notehitlol = 0
sadfasd = 0 -- unused
cmoffset = -5
cmy = 20
tnhx = -10
local comboBreaks = 0
local hitInARow = 0
function onCreate()
    makeLuaText("tnh", '', 10000, tnhx, 259);
    makeLuaText("cm", 'Combos: 0', 200, -getProperty('tnh.x') + cmoffset, getProperty('tnh.y') + cmy);
    makeLuaText("sick", 'Sicks!: 0', 200, getProperty('cm.x'), getProperty('cm.y') + 20);
    makeLuaText("good", 'Goods: 0', 200, getProperty('cm.x'), getProperty('sick.y') + 20);
    makeLuaText("bad", 'Bads: 0', 200, getProperty('cm.x'), getProperty('good.y') + 20);
    makeLuaText("shit", 'Shits: 0', 200, getProperty('cm.x'), getProperty('bad.y') + 20);
    makeLuaText("miss", 'Misses: 0', 200, getProperty('cm.x'), getProperty('shit.y') + 20);
    setObjectCamera("tnh", 'other');
    setTextSize('tnh', 20);
    addLuaText("tnh");
    

    setObjectCamera("cm", 'other');
    setTextSize('cm', 16);
    addLuaText("cm");
    setTextAlignment('cm', 'left')
    setObjectCamera("sick", 'other');
    setTextSize('sick', 16);
    addLuaText("sick");
    setTextAlignment('sick', 'left')
    setTextColor('sick', '9725ff')
    setObjectCamera("good", 'other');
    setTextSize('good', 16);
    addLuaText("good");
    setTextColor('good', 'ff4400')
    setTextAlignment('good', 'left')
    setObjectCamera("bad", 'other');
    setTextSize('bad', 16);
    addLuaText("bad");
    setTextAlignment('bad', 'left')
    setTextColor('bad', '23ffff')
    setObjectCamera("shit", 'other');
    setTextSize('shit', 16);
    addLuaText("shit");
    setTextColor('shit', '23ffff')
    setTextAlignment('shit', 'left')
    setObjectCamera("miss", 'other');
    setTextSize('miss', 16);
    addLuaText("miss");
    setTextAlignment('miss', 'left')
    setTextColor('miss', 'ff0000')
end

function noteMiss()
    if hitInARow > 0 then
        comboBreaks = comboBreaks + 1
        hitInARow = 0
    end
end


function goodNoteHit(id, direction, noteType, isSustainNote)
	-- Function called when you hit a note (after note hit calculations)
	-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
	-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
	-- noteType: The note type string/tag
	-- isSustainNote: If it's a hold note, can be either true or false
      if not isSustainNote then
      hitInARow = hitInARow + 1    
         notehitlol = notehitlol + 1;
         setTextString('tnh', '' .. tostring(notehitlol))
     end -- NOTE I DID NOT MAKE THIS FRANTASTIC24 MADE THIS!

end

function onUpdate(elapsed)
    notehitloltosting = tostring(notehitlol)
    setTextString('cm', 'Combo: ' .. getProperty('combo'))
    setTextString('sick', 'Perfects!: ' .. getProperty('sicks'))
    setTextString('good', 'Awesomes!: ' .. getProperty('goods'))
    setTextString('bad', "Jammins'!: " .. getProperty('bads'))
    setTextString('shit', 'Goods!: ' .. getProperty('shits'))
    setTextString('miss', 'Combo Breaks: ' .. comboBreaks)
	-- start of "update", some variables weren't updated yet
    -- setTextString('tnh', 'Total Notes Hit: ' + 1)
end