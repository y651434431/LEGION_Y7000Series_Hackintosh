#ifndef NO_DEFINITIONBLOCK
DefinitionBlock ("", "SSDT", 2, "hack", "I2C-ELAN", 0x00000000)
{
#endif
    External (_SB_.PCI0.I2C1, DeviceObj)
    External (_SB_.PCI0.GPI0, DeviceObj)
    External (_SB_.PCI0.GPI0.XSTA, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.I2C1.TPD0.XCRS, MethodObj)
    External (_SB_.PCI0.I2C1.TPD0, DeviceObj)
    External (_SB_.PCI0.I2C1.TPD0.SBFB, FieldUnitObj)
    External (FMD1, IntObj)
    External (FMH1, IntObj)
    External (FML1, IntObj)
    External (SSD1, IntObj)
    External (SSH1, IntObj)
    External (SSL1, IntObj)

    Scope (_SB.PCI0.I2C1)
    {
        Method (PKGX, 3, Serialized)
        {
            Name (PKG, Package (0x03)
            {
                Zero, 
                Zero, 
                Zero
            })
        Store (Arg0, Index (PKG, Zero))
        Store (Arg1, Index (PKG, One))
        Store (Arg2, Index (PKG, 0x02))
        Return (PKG) /* \PKG3.PKG_ */
        }
        
        Method (SSCN, 0, NotSerialized)
        {
            Return (PKGX (SSH1, SSL1, SSD1))
        }

        Method (FMCN, 0, NotSerialized)
        {
            Return (PKGX (FMH1, FML1, FMD1))
        }        
    }
    
    Scope (_SB.PCI0.I2C1.TPD0)
    {
        Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
        {
            
            If (_OSI ("Darwin"))
            {
                Name (XBFG, ResourceTemplate ()
                {
                GpioInt (Level, ActiveLow, ExclusiveAndWake, PullDefault, 0x0000,
                    "\\_SB.PCI0.GPI0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x003B
                    }
                })
                Return (ConcatenateResTemplate (SBFB, XBFG))
            }
            Else
            {
                Return (\_SB.PCI0.I2C1.TPD0.XCRS ())
            }
        }
    }

    Scope (_SB.PCI0.GPI0)
    {
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (_OSI ("Darwin"))
            {
                Return (0x0F)
            }
            Else
            {
                Return (\_SB.PCI0.GPI0.XSTA ())
            }
        }
    }
#ifndef NO_DEFINITIONBLOCK
}
#endif
//EOF
