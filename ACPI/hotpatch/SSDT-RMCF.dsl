// configuration data for other SSDTs in this pack

#ifndef NO_DEFINITIONBLOCK
DefinitionBlock("", "SSDT", 2, "hack", "_RMCF", 0)
{
#endif
    Device(RMCF)
    {
        Name(_ADR, 0)   // do not remove
       
        // DWOU: Disable wake on USB
        // 1: Disable wake on USB
        // 0: Do not disable wake on USB
        Name(DWOU, 1)
    }
#ifndef NO_DEFINITIONBLOCK
}
#endif
//EOF
