/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 *
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLAkh9ly.aml, Sun Sep 25 12:15:20 2022
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000017C (380)
 *     Revision         0x02
 *     Checksum         0xE4
 *     OEM ID           "DRTNIA"
 *     OEM Table ID     "AMDGPU"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200925 (538970405)
 */
DefinitionBlock ("", "SSDT", 2, "DRTNIA", "AMDGPU", 0x00001000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.IOU1, DeviceObj)
    External (_SB_.PCI0.IOU1.PXS2, DeviceObj)

    Scope (\_SB.PCI0.IOU1.PXS2)
    {
        If (_OSI ("Darwin"))
        {
            Device (PBR0)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Device (GFX1)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        Local0 = Package (0x3F)
                            {
                                "AAPL,slot-name",
                                Buffer (0x07)
                                {
                                    "Slot-2"
                                },

                                "@0,AAPL,boot-display",
                                Buffer (Zero){},
                                "device-id",
                                Buffer (0x04)
                                {
                                     0xBF, 0x73, 0x00, 0x00                           // .s..
                                },

                                "model",
                                Buffer (0x16)
                                {
                                    "AMD Radeon RX 6500 XT"
                                },

                                // aty_config No PowerPlay Accelerators
                                "CFG,CFG_NO_PP",
                                One,

                                "CFG,CFG_CORRECT_BLPT",
                                One,
                                "CFG,CFG_TRANS_WSRV",
                                One,
                                "CFG,CFG_UFL_CHK",
                                Zero,
                                "CFG,CFG_UFL_STP",
                                Zero,
                                "CFG,CFG_USE_DPT",
                                One,
                                "PP,DalDisableDisplayID2",
                                One,
                                "PP,DalDisableLTTPR",
                                One,
                                "PP,DalEnablePspFwLoad",
                                Zero,
                                "PP,DalSkipDetectionLT",
                                One,
                                "PP,PP_DisableClockStretcher",
                                One,
                                "PP,PP_DisableULV",
                                Zero,
                                "PP,PP_EnableUploadFirmware",
                                Zero,
                                "PP,PP_Falcon_QuickTransition_Enable",
                                One,
                                "PP,PP_GfxOffControl",
                                One,
                                "PP,PP_PhmUseDummyBackEnd",
                                Zero,
                                "PP,PP_ToolsLogSpaceSize",
                                Buffer (0x03)
                                {
                                  0x08, 0x00, 0x00
                                },
                                "PP,PP_WorkLoadPolicyMask",
                                Buffer (0x01)
                                {
                                  0x0F
                                }
                            }
                        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                        Return (Local0)
                    }
                }
            }
        }
    }

    Scope (\_SB.PCI0)
    {
        Method (DTGP, 5, NotSerialized)
        {
            If ((Arg0 == ToUUID ("a0b5b7c6-1318-441c-b0c9-fe695eaf949b") /* Unknown UUID */))
            {
                If ((Arg1 == One))
                {
                    If ((Arg2 == Zero))
                    {
                        Arg4 = Buffer (One)
                            {
                                 0x03                                             // .
                            }
                        Return (One)
                    }

                    If ((Arg2 == One))
                    {
                        Return (One)
                    }
                }
            }

            Arg4 = Buffer (One)
                {
                     0x00                                             // .
                }
            Return (Zero)
        }
    }
}
