#ifndef NO_DEFINITIONBLOCK
DefinitionBlock ("", "SSDT", 2, "APPLE ", "PowerMenu", 0x00001000)
{
#endif
    External (_SB_.PCI0, DeviceObj)
    Scope (_SB.PCI0)
    {
        Device (PPMC)
        {
            Name (_ADR, 0x001F0002)  // _ADR: Address
        }

        Device (PMCR)
        {
            Name (_HID, EisaId ("APP9876"))  // _HID: Hardware ID
            Name (_STA, 0x0B)  // _STA: Status
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                Memory32Fixed (ReadWrite,
                    0xFE000000,         // Address Base
                    0x00010000,         // Address Length
                    )
            })
        }
    }
#ifndef NO_DEFINITIONBLOCK
}
#endif
