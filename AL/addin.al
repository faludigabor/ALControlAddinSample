controladdin DemoAddin
{
    Scripts = 'https://code.jquery.com/jquery-2.1.0.min.js', './js/chart.js';
    StartupScript = './js/chart.js';
    VerticalShrink = true;

    //this Can be called from NAV
    
    procedure LoadData(Data: JsonObject);
    //this is a callback that JS can call 
    //Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('CountryClicked',[{Country:'UK'}])
    event CountryClicked(Country: JsonObject);
    
}
    page 50200 CustomersMapPage
    {
        layout{
            area(Content){
                usercontrol(ControlName;DemoAddin){
                    trigger CountryClicked(Country : JsonObject)
                    var Data:JsonObject;
                    begin
                        CurrPage.ControlName.LoadData(Country);
                    end;

                    
                }
                
            }
        }
        
        
    }
