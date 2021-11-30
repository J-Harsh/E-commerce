function makeReqObj()
        {
            var xmlHttp=false;
            
            try
                    {
                        xmlHttp=new ActiveXObject('Msxml2.XMLHTTP');
                        
                    }
               catch(e)
                    {
                        
                            try
                                {
                                            xmlHttp=new ActiveXObject('Microsoft.XMLHTTP');
                                        
                                }
                               catch(E)
                                {
                                        xmlHttp=false;
                                    
                                }
                        
                        
                    }
                    
               if(!xmlHttp && typeof(XMLHttpRequest)!=='undefined')
                    {
                        
                        xmlHttp=new XMLHttpRequest();
                        
                    }
            
                
                return xmlHttp;
            
            
        }

function addToCart(val)
{
    var xmlHttp=makeReqObj();
    var _url="additionCart.jsp?id="+val;
    xmlHttp.open("get",_url,true);
    
    xmlHttp.onreadystatechange=function()
    {
        if(xmlHttp.readyState===4 && xmlHttp.status===200)
        {
            var content=xmlHttp.responseText;
            if(content)
            {
                document.getElementById("confirm"+val).innerHTML=content;
            }
        }
    };
    xmlHttp.send(null);
}