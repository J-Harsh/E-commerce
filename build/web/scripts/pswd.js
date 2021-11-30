/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function checkPassword()
    {
        if(document.getElementById("pass1").value!==document.getElementById("pass2").value)
                {
                    
                        document.getElementById("bt").disabled=true;
                        
                        
                        document.getElementById("pwerror").innerHTML="Password Mismatch";
                            
                    
                    
                }
            else
                {
                    
                                document.getElementById("bt").disabled=false;
                        
                        
                        document.getElementById("pwerror").innerHTML="";
                            
             
                    
                }
            
        
    }
    
    


