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
                    
               if(!xmlHttp && typeof(XMLHttpRequest)!='undefined')
                    {
                        
                        xmlHttp=new XMLHttpRequest();
                        
                    }
            
                
                return xmlHttp;
            
            
        }

function subShow(val)
{
    var xmlHttp=makeReqObj();
    var _url="card.jsp?value"+val;
    xmlHttp.open("get",_url,true);
    xmlHttp.onreadystatechange=function()
    {
        if(xmlHttp.status===200 && xmlHttp.readyState===4)
                {
                    var content=xmlHttp.responseText;
                    if(content)
                    {
                       document.getElementById("show").innerHTML=content;
                   }
                }
            };
            xmlHttp.send(null);
}