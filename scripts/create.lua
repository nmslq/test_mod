local item = {'timeBar', 'healthBar', 'healthStrips'};

function onCreate()
    for i = 1, 3 do
        setProperty(item[i] .. '.alpha', 0);
    end
end

function onStepHit()
    if curStep == 5 then
        doTweenAlpha('tw', 'note', 0, 1, 'linear');
    end
end
