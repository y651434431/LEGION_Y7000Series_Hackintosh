/*
 * XCPM power management compatibility table.
 */
#ifndef NO_DEFINITIONBLOCK
DefinitionBlock ("", "SSDT", 2, "CpuRef", "CpuPlug", 0x00003000)
{
#endif
    External (_SB.PR00, ProcessorObj)

    Scope (_SB.PR00)
    {
        Method(_DSM, 4)
    {
        If (!Arg2) { Return (Buffer() { 0x03 } ) }
        Return (Package()
        {
            "plugin-type", 1
        })
    }
    }
#ifndef NO_DEFINITIONBLOCK
}
#endif
//EOF