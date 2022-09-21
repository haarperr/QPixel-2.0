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
    let price = data.amount
    let sID = data.sellerID
    $.post('https://qpixel-phone/purchaseCar', JSON.stringify({amount:price, sID: sID}))
}

function createCameraDropdown(cameraData) {
    var camData = `<li><a href="#" class="waves-effect waves-light" onclick="SetStateBagCamera('${cameraData.cid}')">${cameraData.name}</a></li>`
    console.log(camData)
    $('.removeCamera').append(camData);
}


function SetStateBagCamera(func) {
    $("#cameraRemoveID").val(func)
}