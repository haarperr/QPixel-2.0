const registered = [];

function RegisterUICallback(name, cb) {
    AddEventHandler(`_vui_uiReq:${name}`, cb);

    if (GetResourceState('qpixel-ui') === 'started') exports['qpixel-ui'].RegisterUIEvent(name);

    registered.push(name);
}

function SendUIMessage(data) {
    exports['qpixel-ui'].SendUIMessage(data);
}

function SetUIFocus(hasFocus, hasCursor) {
    exports['qpixel-ui'].SetUIFocus(hasFocus, hasCursor);
}

function GetUIFocus() {
    return exports['qpixel-ui'].GetUIFocus();
}

AddEventHandler('_vui_uiReady', () => {
    registered.forEach((eventName) => exports['qpixel-ui'].RegisterUIEvent(eventName));
});