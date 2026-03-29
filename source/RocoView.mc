using Toybox.Graphics;
using Toybox.Lang;
using Toybox.System;
using Toybox.WatchUi;

class RocoView extends WatchUi.WatchFace {

function initialize() {
WatchFace.initialize();
}

function onLayout(dc) {
}

function onUpdate(dc) {
var width = dc.getWidth();
var height = dc.getHeight();

dc.setColor(Graphics.COLOR_BLACK, Graphics.COLOR_BLACK);
dc.clear();

dc.setColor(Graphics.COLOR_WHITE, Graphics.COLOR_TRANSPARENT);
dc.drawText(width / 2, height / 2, Graphics.FONT_LARGE, "ROCO", Graphics.TEXT_JUSTIFY_CENTER);
}
}
