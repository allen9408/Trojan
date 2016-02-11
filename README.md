# <center>HARDWARE TROJAN DETECTION</center>
#### <center>SJTU Graduation Design</center>
#### <center>Developer: Allen Ni</center>
#### <center>School of Microelectronic</center>

## File structure  
    Trojan  
    |---Vivado  
    |---|---AES  
    |---|---AES_T100
    |---|---  ...  
    |---|---run.bat  
    |---|---clear.bat  
    |---Matlab  

##  How to run Vivado projects (*win xp/7/8/10, Vivado 14.2*)  
1. Open CMD or Cygwin  
2. CD to "your path"/Trojan/Vivado  
3. Run projects (example: ./run.bat AES)
4. Wait for synthesis-->implememtation-->write bitstream, complete   


##  Versions
### V_1.0 (*Feb 7,2015*)
**What's new:**  
    1. Completion of AES algorithm and AES-T100 Trojan algorithm  
    2. Constraint file can be uesd in all trojan projects  
    3. Vivado project completed  
    4. Capable of running bitstream on Zedboard  

**Known Issues:**  
    1. Pin CLK seems incompatible with GCLK  
    2. Input is always the same (defined in top.v)  

**Coming Soon:**  
    1. More types of trojan projects  
    2. Constraints correction  


