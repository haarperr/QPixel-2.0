const regged = [];

function RegisterInterfaceCallback(name, cb) {
    AddEventHandler(`_apx_uiReq:${name}`, cb);

    if (GetResourceState('desirerp-interface') === 'started') exports['desirerp-interface'].RegisterIntefaceEvent(name);

    regged.push(name);
}

function SendInterfaceMessage(data) {
    exports['desirerp-interface'].SendInterfaceMessage(data);
}

function SetInterfaceFocus(hasFocus, hasCursor) {
    exports['desirerp-interface'].SetInterfaceFocus(hasFocus, hasCursor);
}

function GetInterfaceFocus() {
    return exports['desirerp-interface'].GetInterfaceFocus();
}

AddEventHandler('_apx_uiReady', () => {
    regged.forEach((eventName) => exports['desirerp-interface'].RegisterIntefaceEvent(eventName));
});