$().ready(function () {
   $('#controlAddIn').html('<Button onclick="CallFunction()">Hello World</Button>');
});
function CallFunction(){
    // alert('hello world');
    Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('CountryClicked',[{Country:'UK'}]);
}

function LoadData(data)
{
    alert('hello from nav ' + data);
}