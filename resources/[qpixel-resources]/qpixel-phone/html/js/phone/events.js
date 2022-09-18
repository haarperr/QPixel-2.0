function btnHangUp(){
    $.post('https://qpixel-phone/btnHangup', JSON.stringify({}))
}

function btnAnswer(){
    $.post('https://qpixel-phone/btnAnswer', JSON.stringify({}))
}

function pingReject(){
    $.post('https://qpixel-phone/qpixel-ui:pingReject', JSON.stringify({}))
}

function pingAccept(){
    $.post('https://qpixel-phone/qpixel-ui:pingAccept', JSON.stringify({}))
}

function billDecline(){
}

function billAccept(data){
    if (data.pType == "car_sale") {   
        let price = data.amount
        let sID = data.sellerID
        let pType = data.pType
        $.post('https://qpixel-phone/purchaseCar', JSON.stringify({amount: price, sID: sID, pType: pType}))
    } else if (data.pType == "gas_station") {
        let price = data.amount
        let sID = data.sellerID
        let pType = data.pType
        $.post('https://qpixel-phone/purchase_gas', JSON.stringify({amount: price, sID: sID, pType: pType}))
    }
}

function createCameraDropdown(cameraData) {
    var camData = `<li><a href="#" class="waves-effect waves-light" onclick="SetStateBagCamera('${cameraData.cid}')">${cameraData.name}</a></li>`
    console.log(camData)
    $('.removeCamera').append(camData);
}


function SetStateBagCamera(func) {
    $("#cameraRemoveID").val(func)
}