/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLKD7XjA.aml, Sun Sep 25 13:42:04 2022
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000C0 (192)
 *     Revision         0x02
 *     Checksum         0x65
 *     OEM ID           "DRTNIA"
 *     OEM Table ID     "dGPU-Off"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200925 (538970405)
 */
DefinitionBlock ("", "SSDT", 2, "DRTNIA", "dGPU-Off", 0x00000000)
{
    External (_SB_.PCI0.IOU0.PXS1._OFF, MethodObj)    // 0 Arguments

    Device (RMD1)
    {
        Name (_HID, "RMD10000")  // _HID: Hardware ID
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

        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            If (_OSI ("Darwin"))
            {
                If (CondRefOf (\_SB.PCI0.IOU0.PXS1._OFF))
                {
                    \_SB.PCI0.IOU0.PXS1._OFF ()
                }
            }
            Else
            {
            }
        }
    }
    External (_SB_.PCI0.IOU1.PEG0.PEGP._OFF, MethodObj)    // 0 Arguments

    Device (RMD2)
    {
        Name (_HID, "RMD20000")  // _HID: Hardware ID
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

        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            If (_OSI ("Darwin"))
            {
                If (CondRefOf (\_SB.PCI0.IOU1.PEG0.PEGP._OFF))
                {
                    \_SB.PCI0.IOU1.PEG0.PEGP._OFF ()
                }
            }
            Else
            {
            }
        }
    }
}

