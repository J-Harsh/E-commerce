function makeRequestObject()
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

function subCatBm(val)
{
    
    var xmlHttp=makeRequestObject();
    var _url="subList.jsp?value="+val;
    xmlHttp.open("get",_url,true);
    xmlHttp.onreadystatechange=function()
    {
        if(xmlHttp.status===200 && xmlHttp.readyState===4)
        {
            var content=xmlHttp.responseText;
            if(content)
            {
                document.getElementById("subCatDisp").innerHTML=content;
            }
        }
    };
    xmlHttp.send(null);
}
