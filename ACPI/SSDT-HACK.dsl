// for testing including all SSDTs with NO_DEFINITIONBLOCK
DefinitionBlock("", "SSDT", 2, "hack", "HACK", 0)
{
    #define NO_DEFINITIONBLOCK
    #include "./hotpatch/SSDT-RMCF.dsl"
    #include "./hotpatch/SSDT-ALS0.dsl"
    #include "./hotpatch/SSDT-DDGPU.dsl"
    #include "./hotpatch/SSDT-PNLFCFL.dsl"
    #include "./hotpatch/SSDT-PS2N.dsl"
    #include "./hotpatch/SSDT-Backlight.dsl"    
    #include "./hotpatch/SSDT-SATA.dsl" 
    #include "./hotpatch/SSDT-USBX.dsl"
    #include "./hotpatch/SSDT-XCPM.dsl"
    #include "./hotpatch/SSDT-GPRW.dsl"
    #include "./hotpatch/SSDT-PTSWAK.dsl"
    #include "./hotpatch/SSDT-XOSI.dsl"
    #include "./hotpatch/SSDT-I2C-GPI0.dsl"
    #include "./hotpatch/SSDT-PowerMenu.dsl"
    #include "./hotpatch/SSDT-EC.dsl"
    #include "./hotpatch/SSDT-HDEF.dsl"
    #include "./hotpatch/SSDT-RTC.dsl"
    //#include "./hotpatch/SSDT-DNVMe.dsl"
}
//EOF
