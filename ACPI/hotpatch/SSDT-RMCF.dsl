// configuration data for other SSDTs in this pack

#ifndef NO_DEFINITIONBLOCK
DefinitionBlock("", "SSDT", 2, "hack", "_RMCF", 0)
{
#endif
    Device(RMCF)
    {
        Name(_ADR, 0)   // do not remove
        
        // AUDL: Audio Layout
        //
        // The value here will be used to inject layout-id for HDEF and HDAU
        // If set to Ones, no audio injection will be done.
        Name(AUDL, 18)
       
        // DWOU: Disable wake on USB
        // 1: Disable wake on USB
        // 0: Do not disable wake on USB
        Name(DWOU, 1)
    }
#ifndef NO_DEFINITIONBLOCK
}
#endif
//EOF
