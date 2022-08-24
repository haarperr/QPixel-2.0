const registered = [];

function RegisterUICallback(name, cb) {
    AddEventHandler(`_aui_uiReq:${name}`, cb);

    if (GetResourceState('desirerp-ui') === 'started') exports['desirerp-ui'].RegisterUIEvent(name);

    registered.push(name);
}

function SendUIMessage(data) {
    exports['desirerp-ui'].SendUIMessage(data);
}

function SetUIFocus(hasFocus, hasCursor) {
    exports['desirerp-ui'].SetUIFocus(hasFocus, hasCursor);
}

function GetUIFocus() {
    return exports['desirerp-ui'].GetUIFocus();
}

AddEventHandler('_aui_uiReady', () => {
    registered.forEach((eventName) => exports['desirerp-ui'].RegisterUIEvent(eventName));
});