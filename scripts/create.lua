local item = {'timeBar', 'healthBar', 'healthStrips'};

function onCreate()
    for i = 1, 3 do
        setProperty(item[i] .. '.alpha', 0);
    end

    runHaxeCode([[
        var text = new Alphabet(0, game.healthBar.y + 50, 'url lua version', true);
        text.cameras = [game.camHUD];
        text.alpha = 0.75;
        game.add(text);
        setVar('alp', text);
    ]]);
end

function onStepHit()
    if curStep == 5 then
        doTweenAlpha('tw', 'note', 0, 1, 'linear');
        debugPrint('URL change!!!');
    end
end
