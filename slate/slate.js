slate.configAll({
    "defaultToCurrentScreen" : true,
    "windowHintsShowIcons" : true,
    "windowHintsIgnoreHiddenWindows" : false,
    "windowHintsSpread" : true
});

var screens = {
    1440 : {
        "label" : "macbook",
        "1col" : 586,
        "2col" : 1162
    },
    2560 : {
        "label" : "dell",
        "1col" : 860,
        "2col" : 1070
    }
};
        

var get_pusher = function(label, direction) {
    var pusher = function(win) {
        var width = screens[slate.screen().rect().width][label];
        var push = slate.operation("push", {
            "direction" : direction,
            "style" : "bar-resize:"+width
        });
        win.doOperation(push);
        return;
    };
    return pusher;
};


get_filler = function(label, direction) {
    var filler = function(win) {
        var screen_width = slate.screen().rect().width;
        var width = screens[screen_width][label];
        width = screen_width - width;
        var push = slate.operation("push", {
            "direction" : direction,
            "style" : "bar-resize:"+width
        });
        win.doOperation(push);
        return;
    };
    return filler;
};


var movemode = "d,cmd,shift";
var appmode = "a,cmd,shift";

slate.bind("a:"+movemode, get_pusher("1col", "left"), false);
slate.bind("g:"+movemode, get_pusher("1col", "right"), false);

slate.bind("w:"+movemode, get_pusher("2col", "left"), false);
slate.bind("e:"+movemode, get_pusher("2col", "right"), false);

//Fill everything, but 1 column
slate.bind("s:"+movemode, get_filler("1col", "left"), false);
slate.bind("f:"+movemode, get_filler("1col", "right"), false);

slate.bind("d:"+movemode,
        slate.operation("push", {"direction" : "left", "style" : "bar-resize:screenSizeX"}),
        false);

slate.bind("h:"+movemode,
        slate.operation("throw", {
            "screen" : "left",
            "width" : "screenSizeX",
            "height" : "screenSizeY"
        }));
slate.bind("l:"+movemode,
        slate.operation("throw", {
            "screen" : "right",
            "width" : "screenSizeX",
            "height" : "screenSizeY"
        }));

slate.bind("esc:cmd", slate.operation("hint", {"characters" : "ASDFQWERTZXCV"}));

slate.bind("r:"+movemode, slate.operation("relaunch"));

var grids = {
    "2560x1600" : {
        "width" : 6,
        "height" : 2
    },
    "1440x900" : {
        "width" : 6,
        "height" : 2
    }
};
slate.bind("z:"+movemode, slate.operation("grid", {"grids" : grids, "padding" : 5}));
