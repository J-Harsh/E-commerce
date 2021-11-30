/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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
                    
               if(!xmlHttp && typeof(XMLHttpRequest)!='undefined')
                    {
                        
                        xmlHttp=new XMLHttpRequest();
                        
                    }
            
                
                return xmlHttp;
            
            
        }

function checkEmail(val)
{
   
    var xmlHttp=makeRequestObject();
    var _url="display.jsp?value="+val;
    xmlHttp.open('GET',_url,true);
    xmlHttp.onreadystatechange=function()
    {
        if(xmlHttp.readyState===4 && xmlHttp.status===200)
        {
            var content=xmlHttp.responseText;
             if(content)
             {
                document.getElementById("emerror").innerHTML=content;
            }
        }
    };
    xmlHttp.send(null);
}