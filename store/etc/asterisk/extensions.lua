
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
			app.playback("/var/menu/demo");
		end
	};
};

hints = {};