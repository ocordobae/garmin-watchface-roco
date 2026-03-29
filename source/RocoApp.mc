using Toybox.Application;
using Toybox.WatchUi;

class RocoApp extends Application.AppBase {

function initialize() {
AppBase.initialize();
}

function getInitialView() {
return [ new RocoView() ];
}
}
