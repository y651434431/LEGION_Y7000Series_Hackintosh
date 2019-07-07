
#ifndef NO_DEFINITIONBLOCK
DefinitionBlock("", "SSDT", 2, "hack", "PS2M", 0)
{
#endif
    External(_SB.PCI0.LPCB, DeviceObj)
    Scope(_SB.PCI0.LPCB)
	{
        Device (PS2M)  // For ApplePS2SmartTouchPad.kext (by EMlyDinEsH)
        {
            Name (_HID, "MSFT0002")  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0F13"))
            Method(_STA, 0, NotSerialized)
            {
                Return (0x0F)
            }
            Name (_CRS, ResourceTemplate ()
            {
                IO (Decode16,
                   0x0060,             // Range Minimum
                   0x0060,             // Range Maximum
                   0x00,               // Alignment
                   0x01,               // Length
                   )
                IO (Decode16,
                   0x0064,             // Range Minimum
                   0x0064,             // Range Maximum
                   0x00,               // Alignment
                   0x01,               // Length
                   )
                IRQNoFlags ()
                   {12}
            })
            Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
            {
                StartDependentFn (0x00, 0x00)
                {
                    IRQNoFlags ()
                        {12}
                }
                EndDependentFn ()
            })
        }
    }
#ifndef NO_DEFINITIONBLOCK
}
#endif
//EOF
