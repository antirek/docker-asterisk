
extensions = {
    ["internal"] = {

        ["_NXXXXXX"] = outgoing_local;

        ["*12"] = function ()
            app.sayunixtime();
        end;

        ["_1XX"] = function (context, extension) 
            app.noop("context: "..context..", extension: "..extension);
            app.dial('SIP/'..extension);
        end;

        ["200"] = function (context, extension)
            app.read("IVR_CHOOSE", "/var/menu/demo", 1, nil, 2, 3);
            local choose = channel["IVR_CHOOSE"]:get();
            if choose == '1' then
                app.dial('SIP/120');
            elseif choose == '2' then
                app.dial('Local/100@internal');
            else
                app.hangup();
            end;
        end;
    };
};

hints = {};