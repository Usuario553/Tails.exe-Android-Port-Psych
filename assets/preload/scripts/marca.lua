local name = "Tails.Exe Recreated by IKVI"; -- put your name
local textSize = 20; -- to make it bigger change it to 32!
local borderSize = 1.5; -- change it to 3
local colorText = 'ffffff';
local font = "vcr.ttf"; --font name in mods/fonts
local alignment = 'left'; --change this only [left, right, and center]
local x = 50; -- the offset x
local y = 690; -- the offset y
-- u can change offset so ye
local textfieldWidth = 0;
-- if you want remove the watermark write this removeLuaText('wtmr', true);
function onCreate()
       makeLuaText('wtmr', name, textfieldWidth, x, y)
       setTextSize('wtmr', textSize)
       setTextBorder('wtmr', borderSize, '000000')
       setTextFont('wtmr', font)
       setTextAlignment('wtmr', alignment)
       setTextColor('wtmr', colorText)
       setProperty('wtmr.alpha', 0.60);
       addLuaText('wtmr')

       close(true);
end