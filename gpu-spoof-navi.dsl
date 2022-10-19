/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASL0HOtCV.aml, Sat Oct  1 21:19:36 2022
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000024F (591)
 *     Revision         0x02
 *     Checksum         0x4B
 *     OEM ID           "Matty"
 *     OEM Table ID     "Navi10"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200925 (538970405)
 */
DefinitionBlock ("", "SSDT", 2, "Matty", "Baffin", 0x00000000)
{
    
    External (_SB_.PCI0.IOU1, DeviceObj)
    External (OSDW, MethodObj)    // 0 Arguments

    Scope (\_SB.PCI0.IOU1)
    {
        Device (PEG0)     
        {
            Name (_ADR, Zero)
            Name (_SUN, 0x02)  // PCI-Bridge SLOT-2
            Device (PEGP)    // PCI-Bridge
            {
                Name (_ADR, Zero)  // _ADR: Address
                Device (GFX1)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        If ((Arg2 == Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x03                                             // .
                            })
                        }

                        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                        {
                            If (OSDW ())
                            {
                                Return (Package (0x02)
                                {
                                    0x69, 
                                    0x03
                                })
                            }
                            Else
                            {
                                Return (Package (0x02)
                                {
                                    0x69, 
                                    0x03
                                })
                            }
                        }

                        Return (Package (0x1A)
                        {
                            "AAPL,slot-name", 
                            Buffer (0x06)
                            {
                                "Slot-2"
                            }, 
                            
                            "@0,connector-type", 
                            Buffer (0x04)
                            {
                                 0x00, 0x08, 0x00, 0x00                           // ....
                            }, 

                            "@1,connector-type", 
                            Buffer (0x04)
                            {
                                 0x00, 0x04, 0x00, 0x00                           // ....
                            }, 
                                                        
                            "compatible",
                            Package (0x05)
                            {
                                "pci1002:73Bf", "pci1002:0b36", "pciclass,030000", "PXS2", "GFX1"
                            },

                            
                            "device-id", 
                            Buffer (0x04)
                            {
                                 0xBF, 0x73, 0x00, 0x00                           // .s..
                            }, 

                            "model", 
                            Buffer (0x11)
                            {
                                "Radeon RX 6900 XT"
                            }, 
                            
                            "hda-gfx", 
                            Buffer (0x0A)
                            {
                                "onboard-2"
                            },
                            
                            "subsystem-id",
                            Buffer (0x04)
                            {
                                0x36, 0x0B, 0x00, 0x00
                            },
                            
                            "subsystem-vendor-id",
                            Buffer (0x04)
                            {
                                0x02, 0x10, 0x00, 0x00
                            },
                            
                            "revision-id",
                            Buffer (0x02)
                            {
                                0xFF, 0x00
                            },
                            
                            "@0,AAPL,boot-display",
                            Buffer (One)
                            {
                                0x00
                            },
                            
                            "CFG,CFG_FB_LIMIT",
                            Buffer (One)
                            {
                                0x02
                            },
                            
                            "PP,MM_EnableHEVCEncode", // Navi24 HEVC was disabled
                            Zero
                        })
                    }
                }

                Device (HDAU)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        If ((Arg2 == Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x03                                             // .
                            })
                        }

                        Return (Package (0x08)
                        {
                            "AAPL,slot-name", 
                            Buffer (0x06)
                            {
                                "Slot-2"
                            }, 

                            "model", 
                            Buffer (0x12)
                            {
                                "Navi 10 HDMI Audio"
                            }, 

                            "hda-gfx", 
                            Buffer (0x0A)
                            {
                                "onboard-2"
                            }, 

                            "layout-id", 
                            Buffer (0x04)
                            {
                                 0x01, 0x00, 0x00, 0x00                           // ....
                            }
                        })
                    }
                }
            }
        }
    }
}

