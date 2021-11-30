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