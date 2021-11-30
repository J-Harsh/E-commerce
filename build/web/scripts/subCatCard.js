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

function dispCards(val)
{
    var xmlHttp=makeRequestObject();
    var _url="cardDisp.jsp?value="+val;
    xmlHttp.open("get",_url,true);
    xmlHttp.onreadystatechange=function()
    {
        if(xmlHttp.status===200 && xmlHttp.readyState===4)
                {
                    var content=xmlHttp.responseText;
                    if(content)
                    {
                       document.getElementById("cards").innerHTML=content;
                       document.getElementById("del").innerHTML="";
                   }
                }
            };
            xmlHttp.send(null);
}