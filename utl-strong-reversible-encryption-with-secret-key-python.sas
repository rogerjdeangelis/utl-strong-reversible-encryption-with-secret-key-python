Strong reversible encryption with secret key python                                                                                 
                                                                                                                                    
  Two parts                                                                                                                         
                                                                                                                                    
      a. Encrypt                                                                                                                    
      b. Decrypt                                                                                                                    
                                                                                                                                    
gitbub                                                                                                                              
https://tinyurl.com/y5j5b7st                                                                                                        
https://github.com/rogerjdeangelis/utl-strong-reversible-encryption-with-secret-key-python                                          
                                                                                                                                    
Source (I have made quite a few changes)                                                                                            
                                                                                                                                    
https://devqa.io/encrypt-decrypt-data-python/                                                                                       
https://stackoverflow.com/questions/43917837/python-decode-fernet-key/44217290                                                      
https://stackoverflow.com/users/7877094/proximacentauri                                                                             
                                                                                                                                    
macros                                                                                                                              
https://tinyurl.com/y9nfugth                                                                                                        
https://github.com/rogerjdeangelis/utl-macros-used-in-many-of-rogerjdeangelis-repositories                                          
                                                                                                                                    
   PROCESS=                                                                                                                         
                                                                                                                                    
    ENCRYPT                                                                                                                         
       1. Generate a Fernet key                                                                                                     
          key: b'6jVIeujdJk1WQelf1gIrCH3VsSMOTrqQURv-cODXAys=', type: <class 'bytes'>                                               
       2. Write the key to a text file.                                                                                             
       3. Create a fake Social Security Number and save as a SAS macro variable                                                     
          %let message='000-00-0000';                                                                                               
       4. Encrypt the message                                                                                                       
          b'gAAAAABfd3bgKkj6usevIwOoKY-fBi8Sp57ERb-s04PJaVXOGMKk3fgZZspHvCILv3KiGtqZ_JUyUaEFG6CmT3638nnEkUTXEw=='                   
       5. Save the encryped message in a SAS macro variable, encrypted.                                                             
                                                                                                                                    
    DECRYPT                                                                                                                         
       1. Read the key from the text file created above.                                                                            
          key: b'6jVIeujdJk1WQelf1gIrCH3VsSMOTrqQURv-cODXAys=', type: <class 'bytes'>                                               
       2. Load the encypted message from the SAS macro variable created above,                                                      
          b'gAAAAABfd3bgKkj6usevIwOoKY-fBi8Sp57ERb-s04PJaVXOGMKk3fgZZspHvCILv3KiGtqZ_JUyUaEFG6CmT3638nnEkUTXEw=='                   
       3. Decrypt the message                                                                                                       
       4. Store the result in a SAS macro variable, decrypted.                                                                      
/*                _                                              _                                                                  
 _ __   __ _ _ __| |_    __ _    ___ _ __   ___ _ __ _   _ _ __ | |_                                                                
| `_ \ / _` | `__| __|  / _` |  / _ \ `_ \ / __| `__| | | | `_ \| __|                                                               
| |_) | (_| | |  | |_  | (_| | |  __/ | | | (__| |  | |_| | |_) | |_                                                                
| .__/ \__,_|_|   \__|  \__,_|  \___|_| |_|\___|_|   \__, | .__/ \__|                                                               
|_|                                                  |___/|_|                                                                       
 _                   _                                                                                                              
(_)_ __  _ __  _   _| |_                                                                                                            
| | `_ \| `_ \| | | | __|                                                                                                           
| | | | | |_) | |_| | |_                                                                                                            
|_|_| |_| .__/ \__,_|\__|                                                                                                           
        |_|                                                                                                                         
*/                                                                                                                                  
                                                                                                                                    
%let message=666.66.6666;                                                                                                           
                                                                                                                                    
/*           _               _                                                                                                      
  ___  _   _| |_ _ __  _   _| |_                                                                                                    
 / _ \| | | | __| `_ \| | | | __|                                                                                                   
| (_) | |_| | |_| |_) | |_| | |_                                                                                                    
 \___/ \__,_|\__| .__/ \__,_|\__|                                                                                                   
                |_|                                                                                                                 
*/                                                                                                                                  
                                                                                                                                    
Encrypted message                                                                                                                   
                                                                                                                                    
%put &=encryptedmsg;                                                                                                                
                                                                                                                                    
ENCRYPTEDMSG=b'gAAAAABfd4pq07rcH0Wy9DfjZo-RKbqvA74cJANLDgpGL_Ud8fkek1bxHR4pFfFUtHbWqR7Zv0dN88KBVj5EoU18C-7r0_EUUw=='                
                                                                                                                                    
/*                                                                                                                                  
 _ __  _ __ ___   ___ ___  ___ ___                                                                                                  
| `_ \| `__/ _ \ / __/ _ \/ __/ __|                                                                                                 
| |_) | | | (_) | (_|  __/\__ \__ \                                                                                                 
| .__/|_|  \___/ \___\___||___/___/                                                                                                 
|_|                                                                                                                                 
*/                                                                                                                                  
                                                                                                                                    
* just in case you should not need this;                                                                                            
%utlfkil(f:\wrk\_TD14376_T7610_\py_pgm.py);                                                                                         
%symdel encryptedmsg dcryptedmsg message / nowarn;                                                                                  
                                                                                                                                    
%let message=666.66.6666;                                                                                                           
%put &=message;                                                                                                                     
                                                                                                                                    
%utl_submit_py64_38(resolve('                                                                                                       
import pyperclip;                                                                                                                   
from cryptography.fernet import Fernet;                                                                                             
def generate_key():;                                                                                                                
.   key = Fernet.generate_key();                                                                                                    
.   with open("d:/txt/secret.txt", "wb") as key_file:;                                                                              
.       key_file.write(key);                                                                                                        
.   print("key: {0}, type: {1}".format(key, type(key)));                                                                            
def load_key():;                                                                                                                    
.   return open("d:/txt/secret.txt", "rb").read();                                                                                  
def encrypt_message(message):;                                                                                                      
.   key = load_key();                                                                                                               
.   f = Fernet(key);                                                                                                                
.   encrypted_message = f.encrypt(message.encode("utf-8"));                                                                         
.   print(encrypted_message);                                                                                                       
.   pyperclip.copy(str(encrypted_message));                                                                                         
if __name__ == "__main__":;                                                                                                         
.   generate_key();                                                                                                                 
if __name__ == "__main__":;                                                                                                         
.   encrypt_message("&message");                                                                                                    
'),return=encryptedmsg);                                                                                                            
                                                                                                                                    
/*                                                                                                                                  
 _                                                                                                                                  
| | ___   __ _                                                                                                                      
| |/ _ \ / _` |                                                                                                                     
| | (_) | (_| |                                                                                                                     
|_|\___/ \__, |                                                                                                                     
         |___/                                                                                                                      
*/                                                                                                                                  
                                                                                                                                    
import pyperclip;                                                                                                                   
from cryptography.fernet import Fernet;                                                                                             
def generate_key():;                                                                                                                
    key = Fernet.generate_key();                                                                                                    
    with open("d:/txt/secret.txt", "wb") as key_file:;                                                                              
        key_file.write(key);                                                                                                        
    print("key: {0}, type: {1}".format(key, type(key)));                                                                            
def load_key():;                                                                                                                    
.   return open("d:/txt/secret.txt", "rb").read();                                                                                  
 ef encrypt_message(message):;                                                                                                      
    key = load_key();                                                                                                               
    f = Fernet(key);                                                                                                                
    encrypted_message = f.encrypt(message.encode("utf-8"));                                                                         
    print(encrypted_message);                                                                                                       
    pyperclip.copy(str(encrypted_message));                                                                                         
if __name__ == "__main__":;                                                                                                         
    generate_key();                                                                                                                 
if __name__ == "__main__":;                                                                                                         
                                                                                                                                    
   encrypt_message("666.66.6666")  ==============================> note the substitution;                                           
                                                                                                                                    
NOTE: 19 records were written to the file PY_PGM.                                                                                   
      The minimum record length was 384.                                                                                            
      The maximum record length was 384.                                                                                            
NOTE: DATA statement used (Total process time):                                                                                     
      real time           0.06 seconds                                                                                              
      cpu time            0.04 seconds                                                                                              
                                                                                                                                    
f:\wrk\_TD22124_T7610_\py_pgm.py                                                                                                    
                                                                                                                                    
NOTE: The infile RUT is:                                                                                                            
      Unnamed Pipe Access Device,                                                                                                   
      PROCESS=c:\Python38\python.exe f:\wrk\_TD22124_T7610_\py_pgm.py,                                                              
      RECFM=V,LRECL=32767                                                                                                           
                                                                                                                                    
NOTE: 2 lines were written to file PRINT.                                                                                           
NOTE: 2 records were read from the infile RUT.                                                                                      
      The minimum record length was 75.                                                                                             
      The maximum record length was 103.                                                                                            
NOTE: DATA statement used (Total process time):                                                                                     
      real time           0.50 seconds                                                                                              
      cpu time            0.09 seconds                                                                                              
                                                                                                                                    
NOTE: Fileref RUT has been deassigned.                                                                                              
NOTE: Fileref PY_PGM has been deassigned.                                                                                           
                                                                                                                                    
NOTE: The infile CLP is:                                                                                                            
      (no system-specific pathname available),                                                                                      
      (no system-specific file attributes available)                                                                                
                                                                                                                                    
*******  b'gAAAAABfd43qm2dxF06WxXQg2_9mwcDFX-cN5twXYfEy1kueaOvkzGoPYUJ68pDP3u-gqmgnzQ19pLdcqN1yWdOWYFEA77vapw=='                    
NOTE: 1 record was read from the infile CLP.                                                                                        
      The minimum record length was 103.                                                                                            
      The maximum record length was 103.                                                                                            
NOTE: DATA statement used (Total process time):                                                                                     
      real time           0.01 seconds                                                                                              
      cpu time            0.01 seconds                                                                                              
                                                                                                                                    
353   %put &=encryptedmsg;                                                                                                          
ENCRYPTEDMSG=b'gAAAAABfd43qm2dxF06WxXQg2_9mwcDFX-cN5twXYfEy1kueaOvkzGoPYUJ68pDP3u-gqmgnzQ19pLdcqN1yWdOWYFEA77vapw=='                
                                                                                                                                    
                                                                                                                                    
/*                _     _           _                            _                                                                  
 _ __   __ _ _ __| |_  | |__     __| | ___  ___ _ __ _   _ _ __ | |_                                                                
| `_ \ / _` | `__| __| | `_ \   / _` |/ _ \/ __| `__| | | | `_ \| __|                                                               
| |_) | (_| | |  | |_  | |_) | | (_| |  __/ (__| |  | |_| | |_) | |_                                                                
| .__/ \__,_|_|   \__| |_.__/   \__,_|\___|\___|_|   \__, | .__/ \__|                                                               
|_|                                                  |___/|_|                                                                       
 _                   _                                                                                                              
(_)_ __  _ __  _   _| |_                                                                                                            
| | `_ \| `_ \| | | | __|                                                                                                           
| | | | | |_) | |_| | |_                                                                                                            
|_|_| |_| .__/ \__,_|\__|                                                                                                           
        |_|                                                                                                                         
*/                                                                                                                                  
                                                                                                                                    
This is already available.                                                                                                          
It is the output from Part A.                                                                                                       
                                                                                                                                    
File with secret key                                                                                                                
                                                                                                                                    
d:/txt/secret.txt                                                                                                                   
                                                                                                                                    
b42lnkPsWVFrp6eR2M2P6iKFHdefOcvGZrFR2zPwW_M=                                                                                        
                                                                                                                                    
Macro variable ENCRYPTEDMSG created above containing the encrypted message                                                          
                                                                                                                                    
ENCRYPTEDMSG=b'gAAAAABfd43qm2dxF06WxXQg2_9mwcDFX-cN5twXYfEy1kueaOvkzGoPYUJ68pDP3u-gqmgnzQ19pLdcqN1yWdOWYFEA77vapw=='                
                                                                                                                                    
/*           _               _                                                                                                      
  ___  _   _| |_ _ __  _   _| |_                                                                                                    
 / _ \| | | | __| `_ \| | | | __|                                                                                                   
| (_) | |_| | |_| |_) | |_| | |_                                                                                                    
 \___/ \__,_|\__| .__/ \__,_|\__|                                                                                                   
                |_|                                                                                                                 
*/                                                                                                                                  
                                                                                                                                    
Macro variable with DCRYPTEDMSG text                                                                                                
                                                                                                                                    
DCRYPTEDMSG=666.66.6666                                                                                                             
                                                                                                                                    
/*                                                                                                                                  
 _ __  _ __ ___   ___ ___  ___ ___                                                                                                  
| `_ \| `__/ _ \ / __/ _ \/ __/ __|                                                                                                 
| |_) | | | (_) | (_|  __/\__ \__ \                                                                                                 
| .__/|_|  \___/ \___\___||___/___/                                                                                                 
|_|                                                                                                                                 
*/                                                                                                                                  
                                                                                                                                    
* just to make sure we do not get message in message out;                                                                           
%symdel message / nowarn;                                                                                                           
                                                                                                                                    
%utl_submit_py64_38("                                                                                                               
import pyperclip;                                                                                                                   
from cryptography.fernet import Fernet;                                                                                             
def load_key():;                                                                                                                    
.   return open('d:/txt/secret.txt', 'rb').read();                                                                                  
def decrypt_message(encrypted_message):;                                                                                            
.   key = load_key();                                                                                                               
.   print('key: {0}, type: {1}'.format(key, type(key)));                                                                            
.   f = Fernet(key);                                                                                                                
.   decrypted_message = f.decrypt(encrypted_message);                                                                               
.   print(decrypted_message.decode());                                                                                              
.   pyperclip.copy(str(decrypted_message.decode()));                                                                                
if __name__ == '__main__':;                                                                                                         
.   decrypt_message(&encryptedmsg);                                                                                                 
",return=dcryptedmsg);                                                                                                              
                                                                                                                                    
%put &=dcryptedmsg;                                                                                                                 
                                                                                                                                    
/*                                                                                                                                  
| | ___   __ _                                                                                                                      
| |/ _ \ / _` |                                                                                                                     
| | (_) | (_| |                                                                                                                     
|_|\___/ \__, |                                                                                                                     
         |___/                                                                                                                      
*/                                                                                                                                  
                                                                                                                                    
import pyperclip;                                                                                                                   
from cryptography.fernet import Fernet;                                                                                             
def load_key():;                                                                                                                    
    return open('d:/txt/secret.txt', 'rb').read();                                                                                  
def decrypt_message(encrypted_message):;                                                                                            
    key = load_key();                                                                                                               
    print('key: {0}, type: {1}'.format(key, type(key)));                                                                            
    f = Fernet(key);                                                                                                                
    decrypted_message = f.decrypt(encrypted_message);                                                                               
    print(decrypted_message.decode());                                                                                              
    pyperclip.copy(str(decrypted_message.decode()));                                                                                
if __name__ == '__main__':;                                                                                                         
                                                                                                                                    
    *****************************************                                                                                       
    * note the substitution has been made ***                                                                                       
    *****************************************                                                                                       
                                                                                                                                    
    decrypt_message(b'gAAAAABfd43qm2dxF06WxXQg2_9mwcDFX-cN5twXYfEy1kueaOvkzGoPYUJ68pDP3u-gqmgnzQ19pLdcqN1yWdOWYFEA77vapw==')        
                                                                                                                                    
NOTE: 13 records were written to the file PY_PGM.                                                                                   
      The minimum record length was 384.                                                                                            
      The maximum record length was 384.                                                                                            
NOTE: DATA statement used (Total process time):                                                                                     
      real time           0.03 seconds                                                                                              
      cpu time            0.03 seconds                                                                                              
                                                                                                                                    
                                                                                                                                    
f:\wrk\_TD22124_T7610_\py_pgm.py                                                                                                    
                                                                                                                                    
NOTE: The infile RUT is:                                                                                                            
      Unnamed Pipe Access Device,                                                                                                   
      PROCESS=c:\Python38\python.exe f:\wrk\_TD22124_T7610_\py_pgm.py,                                                              
      RECFM=V,LRECL=32767                                                                                                           
                                                                                                                                    
NOTE: 2 lines were written to file PRINT.                                                                                           
NOTE: 2 records were read from the infile RUT.                                                                                      
      The minimum record length was 11.                                                                                             
      The maximum record length was 75.                                                                                             
NOTE: DATA statement used (Total process time):                                                                                     
      real time           0.50 seconds                                                                                              
      cpu time            0.06 seconds                                                                                              
                                                                                                                                    
                                                                                                                                    
NOTE: Fileref RUT has been deassigned.                                                                                              
NOTE: Fileref PY_PGM has been deassigned.                                                                                           
                                                                                                                                    
NOTE: The infile CLP is:                                                                                                            
      (no system-specific pathname available),                                                                                      
      (no system-specific file attributes available)                                                                                
                                                                                                                                    
*******  666.66.6666                                                                                                                
NOTE: 1 record was read from the infile CLP.                                                                                        
      The minimum record length was 11.                                                                                             
      The maximum record length was 11.                                                                                             
NOTE: DATA statement used (Total process time):                                                                                     
      real time           0.01 seconds                                                                                              
      cpu time            0.00 seconds                                                                                              
                                                                                                                                    
                                                                                                                                    
412   %put &=dcryptedmsg;                                                                                                           
DCRYPTEDMSG=666.66.6666                                                                                                             
                                                                                                                                    
                                                                                                                                    
                                                                                                                                    
