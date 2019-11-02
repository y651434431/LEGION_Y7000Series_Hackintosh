/*
 * On some boards RTC device is disabled by returning 0 from _STA status method and
 * to enable it 0xF will be returned as expected by macOS.
 */
#ifndef NO_DEFINITIONBLOCK
DefinitionBlock ("", "SSDT", 2, "ACDT", "RTC", 0x00000000)
{
#endif
    External (_SB_.PCI0.LPCB.RTC, DeviceObj)    // (from opcode)

    Scope (_SB.PCI0.LPCB.RTC)
    {
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (_OSI ("Darwin"))
            {
                Return (0x0F)
            }
            Else
            {
                Return (Zero)
            }
        }
    }
#ifndef NO_DEFINITIONBLOCK
}
#endif