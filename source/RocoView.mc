using Toybox.Graphics;
using Toybox.System;
using Toybox.WatchUi;
using Toybox.Math;

class RocoView extends WatchUi.WatchFace {

var _lowPower = false;

function initialize() {
WatchFace.initialize();
}

function onLayout(dc) {
}

function onShow() {
_lowPower = false;
}

function onEnterSleep() {
_lowPower = true;
}

function onExitSleep() {
_lowPower = false;
}

function drawScene(dc) {
var width = dc.getWidth();
var height = dc.getHeight();
var cx = width / 2;
var cy = height / 2;

var now = System.getClockTime();
var minute = now.min;
var hour = now.hour % 12;

var dialSize = (width < height ? width : height);

var bgColor;
var fgColor;

if (_lowPower) {
// modo ahorro
bgColor = Graphics.COLOR_BLACK;
fgColor = Graphics.createColor(0xFF, 0xB2, 0x22, 0x22);
} else {
// modo activo
bgColor = Graphics.createColor(0xFF, 0xB5, 0x96, 0x3A);
fgColor = Graphics.COLOR_BLACK;
}

dc.setColor(fgColor, bgColor);
dc.clear();

// MINUTERO
var handLength = dialSize * 0.38;
var handWidth = 16;
var radius = handWidth / 2.0;

var minuteAngle = ((minute / 60.0) * 2.0 * Math.PI) - (Math.PI / 2.0);

var tipCenterX = cx + (Math.cos(minuteAngle) * handLength);
var tipCenterY = cy + (Math.sin(minuteAngle) * handLength);

var perpAngle = minuteAngle + (Math.PI / 2.0);

var baseLeftX = cx + (Math.cos(perpAngle) * radius);
var baseLeftY = cy + (Math.sin(perpAngle) * radius);
var baseRightX = cx - (Math.cos(perpAngle) * radius);
var baseRightY = cy - (Math.sin(perpAngle) * radius);

var tipLeftX = tipCenterX + (Math.cos(perpAngle) * radius);
var tipLeftY = tipCenterY + (Math.sin(perpAngle) * radius);
var tipRightX = tipCenterX - (Math.cos(perpAngle) * radius);
var tipRightY = tipCenterY - (Math.sin(perpAngle) * radius);

dc.setColor(fgColor, fgColor);

dc.fillPolygon([
[baseLeftX, baseLeftY],
[tipLeftX, tipLeftY],
[tipRightX, tipRightY],
[baseRightX, baseRightY]
]);

dc.fillCircle(cx, cy, radius);
dc.fillCircle(tipCenterX, tipCenterY, radius);

// INDICADOR DE HORA
var hourDiameter = handWidth;
var hourRadius = hourDiameter / 2.0;
var hourOrbit = dialSize * 0.46;

var hourProgress = (hour + (minute / 60.0)) / 12.0;
var hourAngle = (hourProgress * 2.0 * Math.PI) - (Math.PI / 2.0);

var hourX = cx + (Math.cos(hourAngle) * hourOrbit);
var hourY = cy + (Math.sin(hourAngle) * hourOrbit);

dc.fillCircle(hourX, hourY, hourRadius);
}

function onUpdate(dc) {
drawScene(dc);
}
}