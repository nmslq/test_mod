local abc = {'wow', 'url'};

function onCreate()
    setProperty('timeBar.alpha', 0);
    setProperty('healthBar.alpha', 0);
    debugPrint(abc[2]);
end

function onStepHit()
    if curStep == 5 then
        doTweenAlpha('tw', 'note', 0, 1, 'linear');
    end
end
