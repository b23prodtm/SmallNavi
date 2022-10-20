/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLgVQ8Cj.aml, Wed Oct 19 02:01:49 2022
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x000044F9 (17657)
 *     Revision         0x01 **** 32-bit table (V1), no 64-bit math support
 *     Checksum         0x4A
 *     OEM ID           "APPLE "
 *     OEM Table ID     "Apple00"
 *     OEM Revision     0x00050001 (327681)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200925 (538970405)
 */
DefinitionBlock ("", "DSDT", 1, "APPLE ", "Apple00", 0x00050001)
{
    External (_SB_.PCI0.IOU0, UnknownObj)
    External (_SB_.PCI0.IOU0.PSP8, UnknownObj)
    External (_SB_.PCI0.IOU0.PXS1, DeviceObj)
    External (_SB_.PCI0.IOU1, DeviceObj)
    External (_SB_.PCI0.IOU1.PSP7, UnknownObj)
    External (_SB_.PCI0.IOU1.PXS2, DeviceObj)
    External (_SB_.PCI0.IOU2.I2PS.PPB2, UnknownObj)
    External (_SB_.PCI0.IOU2.I2PS.PPB2.PXS3, DeviceObj)
    External (_SB_.PCI0.IOU2.I2PS.PPB4, UnknownObj)
    External (_SB_.PCI0.IOU2.I2PS.PPB4.PXS4, DeviceObj)
    External (_SB_.PCI0.IOU2.PSP9, UnknownObj)
    External (OSDW, MethodObj)    // 0 Arguments
    External (PDC0, UnknownObj)
    External (PDC1, UnknownObj)
    External (PDC2, UnknownObj)
    External (PDC3, UnknownObj)
    External (PDC4, UnknownObj)
    External (PDC5, UnknownObj)
    External (PDC6, UnknownObj)
    External (PDC7, UnknownObj)
    External (PDC8, UnknownObj)
    External (PDC9, UnknownObj)
    External (PDCA, UnknownObj)
    External (PDCB, UnknownObj)
    External (PDCC, UnknownObj)
    External (PDCD, UnknownObj)
    External (PDCE, UnknownObj)
    External (PDCF, UnknownObj)
    External (PDCG, UnknownObj)
    External (PDCH, UnknownObj)
    External (PDCI, UnknownObj)
    External (PDCJ, UnknownObj)
    External (PDCK, UnknownObj)
    External (PDCL, UnknownObj)
    External (PDCM, UnknownObj)
    External (PDCN, UnknownObj)

    OperationRegion (PRT0, SystemIO, 0x80, 0x04)
    Field (PRT0, DWordAcc, Lock, Preserve)
    {
        P80H,   32
    }

    OperationRegion (SPRT, SystemIO, 0xB2, 0x02)
    Field (SPRT, ByteAcc, Lock, Preserve)
    {
        SSMP,   8
    }

    OperationRegion (S_IO, SystemIO, 0x0680, 0x11)
    Field (S_IO, ByteAcc, NoLock, Preserve)
    {
        PMS0,   8, 
        PME0,   8, 
        PMS1,   8, 
        PMS2,   8, 
        PMS3,   8, 
        PME1,   8, 
        PME2,   8, 
        PME3,   8, 
        SMS1,   8, 
        SMS2,   8, 
        SME1,   8, 
        SME2,   8, 
        RT10,   1, 
        RT11,   1, 
            ,   1, 
        RT13,   1, 
        Offset (0x0E), 
        RT30,   1, 
        RT31,   1, 
        RT32,   1, 
        RT33,   1, 
        RT34,   1, 
        RT35,   1, 
        RT36,   1, 
        RT37,   1, 
        Offset (0x10), 
        DLPC,   1, 
        CK33,   1, 
        CK14,   1
    }

    OperationRegion (PRVT, SystemIO, 0x06A0, 0x08)
    Field (PRVT, ByteAcc, NoLock, Preserve)
    {
        PVT0,   8, 
        Offset (0x04), 
        PVT1,   8
    }

    OperationRegion (IO_T, SystemIO, 0x0800, 0x10)
    Field (IO_T, ByteAcc, NoLock, Preserve)
    {
        TRPI,   16, 
        Offset (0x04), 
        Offset (0x06), 
        Offset (0x08), 
        TRP0,   8, 
        TRPC,   8, 
        Offset (0x0B), 
        Offset (0x0C), 
        Offset (0x0D), 
        Offset (0x0E), 
        Offset (0x0F), 
        Offset (0x10)
    }

    OperationRegion (IO_D, SystemIO, 0x0810, 0x08)
    Field (IO_D, ByteAcc, NoLock, Preserve)
    {
        TRPD,   8
    }

    OperationRegion (PMIO, SystemIO, 0x0400, 0x80)
    Field (PMIO, WordAcc, NoLock, Preserve)
    {
        PM1S,   16, 
        PM1E,   16
    }

    Field (PMIO, DWordAcc, NoLock, Preserve)
    {
        Offset (0x20), 
        GP0S,   32, 
        GP1S,   32, 
        GP0E,   32, 
        GP1E,   32
    }

    Field (PMIO, ByteAcc, NoLock, Preserve)
    {
        Offset (0x02), 
            ,   10, 
        RTEE,   1, 
        Offset (0x04), 
        Offset (0x20), 
            ,   2, 
        SPST,   1, 
            ,   28, 
        GPF,    1, 
        Offset (0x42), 
            ,   1, 
        GPEC,   1
    }

    OperationRegion (GNVS, SystemMemory, 0x7F556D98, 0x0100)
    Field (GNVS, AnyAcc, Lock, Preserve)
    {
        OSYS,   16, 
        SMIF,   8, 
        PRM0,   8, 
        PRM1,   8, 
        SCIF,   8, 
        PRM2,   8, 
        PRM3,   8, 
        LCKF,   8, 
        PRM4,   8, 
        PRM5,   8, 
        P80D,   32, 
        LIDS,   8, 
        PWRS,   8, 
        DBGS,   8, 
        LINX,   8, 
        Offset (0x14), 
        ACTT,   8, 
        PSVT,   8, 
        TC1V,   8, 
        TC2V,   8, 
        TSPV,   8, 
        CRTT,   8, 
        DTSE,   8, 
        DTS1,   8, 
        DTS2,   8, 
        DTSF,   8, 
        BNUM,   8, 
        B0SC,   8, 
        B1SC,   8, 
        B2SC,   8, 
        B0SS,   8, 
        B1SS,   8, 
        B2SS,   8, 
        Offset (0x28), 
        APIC,   8, 
        MPEN,   8, 
        PCP0,   8, 
        PCP1,   8, 
        PPCM,   8, 
        PPMF,   32, 
        Offset (0x32), 
        NATP,   8, 
        CMAP,   8, 
        CMBP,   8, 
        LPTP,   8, 
        FDCP,   8, 
        CMCP,   8, 
        CIRP,   8, 
        Offset (0x3C), 
        IGDS,   8, 
        TLST,   8, 
        CADL,   8, 
        PADL,   8, 
        CSTE,   16, 
        NSTE,   16, 
        SSTE,   16, 
        NDID,   8, 
        DID1,   32, 
        DID2,   32, 
        DID3,   32, 
        DID4,   32, 
        DID5,   32, 
        BDSP,   8, 
        PTY1,   8, 
        PTY2,   8, 
        PSCL,   8, 
        TVF1,   8, 
        TVF2,   8, 
        Offset (0x63), 
        GOPB,   32, 
        BLCS,   8, 
        BRTL,   8, 
        ALSE,   8, 
        ALAF,   8, 
        LLOW,   8, 
        LHIH,   8, 
        Offset (0x6E), 
        EMAE,   8, 
        EMAP,   16, 
        EMAL,   16, 
        Offset (0x74), 
        MEFE,   8, 
        Offset (0x82), 
        GTF0,   56, 
        GTF2,   56, 
        IDEM,   8, 
        GTF1,   56
    }

    OperationRegion (RCRB, SystemMemory, 0xFED1C000, 0x4000)
    Field (RCRB, DWordAcc, Lock, Preserve)
    {
        Offset (0x1000), 
        Offset (0x3000), 
        Offset (0x3404), 
        HPAS,   2, 
            ,   5, 
        HPAE,   1, 
        Offset (0x3418), 
            ,   1, 
            ,   1, 
        SATD,   1, 
        SMBD,   1, 
        HDAD,   1, 
            ,   2, 
        Offset (0x3419), 
            ,   1, 
            ,   1, 
            ,   1, 
            ,   1, 
            ,   1, 
            ,   1, 
            ,   1, 
        Offset (0x341A), 
        RP1D,   1, 
        RP2D,   1, 
        RP3D,   1, 
        RP4D,   1, 
        RP5D,   1, 
        RP6D,   1, 
        Offset (0x341B), 
            ,   1, 
            ,   1
    }

    OperationRegion (GPIO, SystemIO, 0x0500, 0x3C)
    Field (GPIO, ByteAcc, NoLock, Preserve)
    {
        GU00,   8, 
        GU01,   8, 
        GU02,   8, 
        GU03,   8, 
        GIO0,   8, 
        GIO1,   8, 
        GIO2,   8, 
        GIO3,   8, 
        Offset (0x0C), 
        GL00,   8, 
        GL01,   8, 
        GL02,   8, 
        GL03,   8, 
        Offset (0x18), 
        GB00,   8, 
        GB01,   8, 
        GB02,   8, 
        GB03,   8, 
        Offset (0x2C), 
            ,   1, 
        GI01,   1, 
            ,   1, 
        GI03,   1, 
        GI04,   1, 
        GI05,   1, 
        GI06,   1, 
        Offset (0x2D), 
        GIV2,   7, 
        GI0F,   1, 
        GIV3,   8, 
        GIV4,   8, 
        GU04,   8, 
        GU05,   8, 
        GU06,   8, 
        GU07,   8, 
        GIO4,   8, 
        GIO5,   8, 
        GIO6,   8, 
        GIO7,   8, 
        GL04,   8, 
        GL05,   8, 
        GL06,   8, 
        GL07,   8
    }

    Mutex (MUTX, 0x00)
    Scope (_PR)
    {
        Processor (CPU0, 0x00, 0x00000410, 0x06){}
        Processor (CPU1, 0x01, 0x00000410, 0x06){}
        Processor (CPU2, 0x02, 0x00000410, 0x06){}
        Processor (CPU3, 0x03, 0x00000410, 0x06){}
        Processor (CPU4, 0x04, 0x00000410, 0x06){}
        Processor (CPU5, 0x05, 0x00000410, 0x06){}
        Processor (CPU6, 0x06, 0x00000410, 0x06){}
        Processor (CPU7, 0x07, 0x00000410, 0x06){}
        Processor (CPU8, 0x08, 0x00000410, 0x06){}
        Processor (CPU9, 0x09, 0x00000410, 0x06){}
        Processor (CPUA, 0x0A, 0x00000410, 0x06){}
        Processor (CPUB, 0x0B, 0x00000410, 0x06){}
        Processor (CPUC, 0x0C, 0x00000410, 0x06){}
        Processor (CPUD, 0x0D, 0x00000410, 0x06){}
        Processor (CPUE, 0x0E, 0x00000410, 0x06){}
        Processor (CPUF, 0x0F, 0x00000410, 0x06){}
        Processor (CPUG, 0x10, 0x00000410, 0x06){}
        Processor (CPUH, 0x11, 0x00000410, 0x06){}
        Processor (CPUI, 0x12, 0x00000410, 0x06){}
        Processor (CPUJ, 0x13, 0x00000410, 0x06){}
        Processor (CPUK, 0x14, 0x00000410, 0x06){}
        Processor (CPUL, 0x15, 0x00000410, 0x06){}
        Processor (CPUM, 0x16, 0x00000410, 0x06){}
        Processor (CPUN, 0x17, 0x00000410, 0x06){}
    }

    OperationRegion (PSYS, SystemMemory, 0x7F555E18, 0x0100)
    Field (PSYS, ByteAcc, NoLock, Preserve)
    {
        PLAT,   32, 
        APC0,   1, 
        APC1,   1, 
        Offset (0x05), 
        MEEN,   8, 
        TPME,   1, 
        CSEN,   1, 
        C2OS,   1, 
        C6EN,   1, 
        C7EN,   1, 
        MWOS,   1, 
        PSEN,   1, 
        TSEN,   1
    }

    Name (DSEN, One)
    Name (ECON, Zero)
    Name (GPIC, Zero)
    Name (CTYP, Zero)
    Name (VFN0, Zero)
    Name (TSTE, Zero)
    Method (OSDW, 0, NotSerialized)
    {
        If ((OSYS == 0x2710))
        {
            Return (One)
        }
        Else
        {
            Return (Zero)
        }
    }

    Method (PINI, 0, NotSerialized)
    {
        If (CondRefOf (_OSI, Local0))
        {
            If (_OSI ("Darwin"))
            {
                OSYS = 0x2710
            }
            ElseIf (_OSI ("Linux"))
            {
                OSYS = 0x03E8
            }
            ElseIf (_OSI ("Windows 2001"))
            {
                OSYS = 0x07D1
            }
            ElseIf (_OSI ("Windows 2001 SP1"))
            {
                OSYS = 0x07D1
            }
            ElseIf (_OSI ("Windows 2001 SP2"))
            {
                OSYS = 0x07D2
            }
            ElseIf (_OSI ("Windows 2006"))
            {
                OSYS = 0x07D6
            }
            ElseIf (_OSI ("Windows 2007"))
            {
                OSYS = 0x07D7
            }
            ElseIf (_OSI ("Windows 2008"))
            {
                OSYS = 0x07D8
            }
        }
        Else
        {
            OSYS = 0x07D0
        }
    }

    Method (_PIC, 1, NotSerialized)  // _PIC: Interrupt Model
    {
        GPIC = Arg0
    }

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

    Name (_S0, Package (0x04)  // _S0_: S0 System State
    {
        Zero, 
        Zero, 
        Zero, 
        Zero
    })
    Name (_S1, Package (0x04)  // _S1_: S1 System State
    {
        One, 
        Zero, 
        Zero, 
        Zero
    })
    Name (_S3, Package (0x04)  // _S3_: S3 System State
    {
        0x05, 
        0x05, 
        Zero, 
        Zero
    })
    Name (_S4, Package (0x04)  // _S4_: S4 System State
    {
        0x06, 
        0x06, 
        Zero, 
        Zero
    })
    Name (_S5, Package (0x04)  // _S5_: S5 System State
    {
        0x07, 
        0x07, 
        Zero, 
        Zero
    })
    Method (G3HT, 0, NotSerialized)
    {
        If (((RTEE == One) || (\_SB.PCI0.LPCB.AG3E == Zero)))
        {
            \_SB.PCI0.LPCB.EC.G3HT = Zero
        }
        Else
        {
            \_SB.PCI0.LPCB.EC.G3HT = One
        }
    }

    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        P80D = Zero
        P8XH (Zero, Arg0)
        \_SB.PCI0.LPCB.EC.ECSS = Arg0
        G3HT ()
        If (OSDW ())
        {
            \_SB.PCI0.SBUS.DISB ()
        }
    }

    Method (_WAK, 1, NotSerialized)  // _WAK: Wake
    {
        P8XH (Zero, Zero)
        \_SB.PCI0.LPCB.EC.ECSS = Zero
        If (OSDW ())
        {
            \_SB.PCI0.SBUS.ENAB ()
        }

        PNOT ()
        Notify (\_SB.PCI0.UHC1, Zero) // Bus Check
        Notify (\_SB.PCI0.UHC2, Zero) // Bus Check
        Notify (\_SB.PCI0.UHC3, Zero) // Bus Check
        Notify (\_SB.PCI0.UHC4, Zero) // Bus Check
        Notify (\_SB.PCI0.UHC5, Zero) // Bus Check
        Notify (\_SB.PCI0.UHC6, Zero) // Bus Check
        Notify (\_SB.PCI0.EHC1, Zero) // Bus Check
        Notify (\_SB.PCI0.EHC2, Zero) // Bus Check
        Return (Package (0x02)
        {
            Zero, 
            Zero
        })
    }

    Scope (_GPE)
    {
        Method (_L02, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            GPEC = Zero
        }

        Method (_L03, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            Notify (\_SB.PCI0.UHC1, 0x02) // Device Wake
            Notify (\_SB.PWRB, 0x02) // Device Wake
        }

        Method (_L04, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            Notify (\_SB.PCI0.UHC2, 0x02) // Device Wake
            Notify (\_SB.PWRB, 0x02) // Device Wake
        }

        Method (_L0C, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            Notify (\_SB.PCI0.UHC3, 0x02) // Device Wake
            Notify (\_SB.PWRB, 0x02) // Device Wake
        }

        Method (_L0E, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            Notify (\_SB.PCI0.UHC4, 0x02) // Device Wake
            Notify (\_SB.PWRB, 0x02) // Device Wake
        }

        Method (_L05, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            Notify (\_SB.PCI0.UHC5, 0x02) // Device Wake
            Notify (\_SB.PWRB, 0x02) // Device Wake
        }

        Method (_L20, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            Notify (\_SB.PCI0.UHC6, 0x02) // Device Wake
            Notify (\_SB.PWRB, 0x02) // Device Wake
        }

        Method (_L07, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            \_SB.PCI0.SBUS.HSTS = 0x20
        }

        Method (_L09, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            If (\_SB.PCI0.RP03.PSP3)
            {
                \_SB.PCI0.RP03.PSP3 = One
                \_SB.PCI0.RP03.PMS3 = One
                Notify (\_SB.PCI0.RP03, 0x02) // Device Wake
            }

            If (\_SB.PCI0.RP04.PSP4)
            {
                \_SB.PCI0.RP04.PSP4 = One
                \_SB.PCI0.RP04.PMS4 = One
                Notify (\_SB.PCI0.RP04, 0x02) // Device Wake
            }

            If (\_SB.PCI0.RP05.PSP5)
            {
                \_SB.PCI0.RP05.PSP5 = One
                \_SB.PCI0.RP05.PMS5 = One
                Notify (\_SB.PCI0.RP05, 0x02) // Device Wake
            }

            If (\_SB.PCI0.RP06.PSP6)
            {
                \_SB.PCI0.RP06.PSP6 = One
                \_SB.PCI0.RP06.PMS6 = One
                Notify (\_SB.PCI0.RP06, 0x02) // Device Wake
            }

            If (\_SB.PCI0.IOU0.PXS1)
            {
                \_SB.PCI0.IOU0.PSP8 = One
                Notify (\_SB.PCI0.IOU0, 0x02) // Device Wake
            }

            If (\_SB.PCI0.IOU2.I2PS.PPB2.PXS3)
            {
                \_SB.PCI0.IOU2.PSP9 = One
                Notify (\_SB.PCI0.IOU2.I2PS.PPB2, 0x02) // Device Wake
            }

            If (\_SB.PCI0.IOU2.I2PS.PPB4.PXS4)
            {
                \_SB.PCI0.IOU2.PSP9 = One
                Notify (\_SB.PCI0.IOU2.I2PS.PPB4, 0x02) // Device Wake
            }

            Notify (\_SB.PWRB, 0x02) // Device Wake
        }

        Method (_L0D, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            If (\_SB.PCI0.EHC1.PMES)
            {
                \_SB.PCI0.EHC1.PMES = One
                Notify (\_SB.PCI0.EHC1, 0x02) // Device Wake
                Notify (\_SB.PWRB, 0x02) // Device Wake
            }

            If (\_SB.PCI0.EHC2.PMES)
            {
                \_SB.PCI0.EHC2.PMES = One
                Notify (\_SB.PCI0.EHC2, 0x02) // Device Wake
                Notify (\_SB.PWRB, 0x02) // Device Wake
            }

            If (\_SB.PCI0.HDEF.PMES)
            {
                \_SB.PCI0.HDEF.PMES = One
                Notify (\_SB.PCI0.HDEF, 0x02) // Device Wake
            }
        }

        Method (_L1A, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            Notify (\_SB.PCI0.RP05.FWBR.FRWR, Zero) // Bus Check
        }
    }

    Method (P8XH, 2, Serialized)
    {
        If ((Arg0 == Zero))
        {
            P80D = ((P80D & 0xFFFFFF00) | Arg1)
        }

        If ((Arg0 == One))
        {
            P80D = ((P80D & 0xFFFF00FF) | (Arg1 << 0x08))
        }

        If ((Arg0 == 0x02))
        {
            P80D = ((P80D & 0xFF00FFFF) | (Arg1 << 0x10))
        }

        If ((Arg0 == 0x03))
        {
            P80D = ((P80D & 0x00FFFFFF) | (Arg1 << 0x18))
        }

        P80H = P80D /* \P80D */
    }

    Method (PNOT, 0, Serialized)
    {
        If (MPEN)
        {
            If ((PDC0 & 0x08))
            {
                Notify (\_PR.CPU0, 0x80) // Performance Capability Change
                If ((PDC0 & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU0, 0x81) // C-State Change
                }
            }

            If ((PDC1 & 0x08))
            {
                Notify (\_PR.CPU1, 0x80) // Performance Capability Change
                If ((PDC1 & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU1, 0x81) // C-State Change
                }
            }

            If ((PDC2 & 0x08))
            {
                Notify (\_PR.CPU2, 0x80) // Performance Capability Change
                If ((PDC2 & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU2, 0x81) // C-State Change
                }
            }

            If ((PDC3 & 0x08))
            {
                Notify (\_PR.CPU3, 0x80) // Performance Capability Change
                If ((PDC3 & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU3, 0x81) // C-State Change
                }
            }

            If ((PDC4 & 0x08))
            {
                Notify (\_PR.CPU4, 0x80) // Performance Capability Change
                If ((PDC4 & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU4, 0x81) // C-State Change
                }
            }

            If ((PDC5 & 0x08))
            {
                Notify (\_PR.CPU5, 0x80) // Performance Capability Change
                If ((PDC5 & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU5, 0x81) // C-State Change
                }
            }

            If ((PDC6 & 0x08))
            {
                Notify (\_PR.CPU6, 0x80) // Performance Capability Change
                If ((PDC6 & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU6, 0x81) // C-State Change
                }
            }

            If ((PDC7 & 0x08))
            {
                Notify (\_PR.CPU7, 0x80) // Performance Capability Change
                If ((PDC7 & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU7, 0x81) // C-State Change
                }
            }

            If ((PDC8 & 0x08))
            {
                Notify (\_PR.CPU8, 0x80) // Performance Capability Change
                If ((PDC8 & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU8, 0x81) // C-State Change
                }
            }

            If ((PDC9 & 0x08))
            {
                Notify (\_PR.CPU9, 0x80) // Performance Capability Change
                If ((PDC9 & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU9, 0x81) // C-State Change
                }
            }

            If ((PDCA & 0x08))
            {
                Notify (\_PR.CPUA, 0x80) // Performance Capability Change
                If ((PDCA & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPUA, 0x81) // C-State Change
                }
            }

            If ((PDCB & 0x08))
            {
                Notify (\_PR.CPUB, 0x80) // Performance Capability Change
                If ((PDCB & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPUB, 0x81) // C-State Change
                }
            }

            If ((PDCC & 0x08))
            {
                Notify (\_PR.CPUC, 0x80) // Performance Capability Change
                If ((PDCC & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPUC, 0x81) // C-State Change
                }
            }

            If ((PDCD & 0x08))
            {
                Notify (\_PR.CPUD, 0x80) // Performance Capability Change
                If ((PDCD & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPUD, 0x81) // C-State Change
                }
            }

            If ((PDCE & 0x08))
            {
                Notify (\_PR.CPUE, 0x80) // Performance Capability Change
                If ((PDCE & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPUE, 0x81) // C-State Change
                }
            }

            If ((PDCF & 0x08))
            {
                Notify (\_PR.CPUF, 0x80) // Performance Capability Change
                If ((PDCF & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPUF, 0x81) // C-State Change
                }
            }

            If ((PDCG & 0x08))
            {
                Notify (\_PR.CPUG, 0x80) // Performance Capability Change
                If ((PDCG & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPUG, 0x81) // C-State Change
                }
            }

            If ((PDCH & 0x08))
            {
                Notify (\_PR.CPUH, 0x80) // Performance Capability Change
                If ((PDCH & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPUH, 0x81) // C-State Change
                }
            }

            If ((PDCI & 0x08))
            {
                Notify (\_PR.CPUI, 0x80) // Performance Capability Change
                If ((PDCI & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPUI, 0x81) // C-State Change
                }
            }

            If ((PDCJ & 0x08))
            {
                Notify (\_PR.CPUJ, 0x80) // Performance Capability Change
                If ((PDCJ & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPUJ, 0x81) // C-State Change
                }
            }

            If ((PDCK & 0x08))
            {
                Notify (\_PR.CPUK, 0x80) // Performance Capability Change
                If ((PDCK & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPUK, 0x81) // C-State Change
                }
            }

            If ((PDCL & 0x08))
            {
                Notify (\_PR.CPUL, 0x80) // Performance Capability Change
                If ((PDCL & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPUL, 0x81) // C-State Change
                }
            }

            If ((PDCM & 0x08))
            {
                Notify (\_PR.CPUM, 0x80) // Performance Capability Change
                If ((PDCM & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPUM, 0x81) // C-State Change
                }
            }

            If ((PDCN & 0x08))
            {
                Notify (\_PR.CPUN, 0x80) // Performance Capability Change
                If ((PDCN & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPUN, 0x81) // C-State Change
                }
            }
        }
        Else
        {
            Notify (\_PR.CPU0, 0x80) // Performance Capability Change
            Sleep (0x64)
            Notify (\_PR.CPU0, 0x81) // C-State Change
        }
    }

    Scope (_SB)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            PINI ()
        }

        Device (PWRB)
        {
            Name (_HID, EisaId ("PNP0C0C") /* Power Button Device */)  // _HID: Hardware ID
            Name (_STA, 0x0B)  // _STA: Status
        }

        Device (PCI0)
        {
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                If (OSDW ())
                {
                    ^SBUS.ENAB ()
                }
            }

            Device (APIC)
            {
                Name (_HID, EisaId ("PNP0003") /* IO-APIC Interrupt Controller */)  // _HID: Hardware ID
                Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                {
                    Memory32Fixed (ReadOnly,
                        0xFEC00000,         // Address Base
                        0x00100000,         // Address Length
                        )
                })
            }

            Name (_HID, EisaId ("PNP0A08") /* PCI Express Bus */)  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0A03") /* PCI Bus */)  // _CID: Compatible ID
            Name (_ADR, Zero)  // _ADR: Address
            Name (_BBN, Zero)  // _BBN: BIOS Bus Number
            OperationRegion (HBUS, PCI_Config, 0x40, 0xC0)
            Field (HBUS, DWordAcc, NoLock, Preserve)
            {
                Offset (0x50), 
                    ,   4, 
                PM0H,   2, 
                Offset (0x51), 
                PM1L,   2, 
                    ,   2, 
                PM1H,   2, 
                Offset (0x52), 
                PM2L,   2, 
                    ,   2, 
                PM2H,   2, 
                Offset (0x53), 
                PM3L,   2, 
                    ,   2, 
                PM3H,   2, 
                Offset (0x54), 
                PM4L,   2, 
                    ,   2, 
                PM4H,   2, 
                Offset (0x55), 
                PM5L,   2, 
                    ,   2, 
                PM5H,   2, 
                Offset (0x56), 
                PM6L,   2, 
                    ,   2, 
                PM6H,   2, 
                Offset (0x57), 
                    ,   7, 
                HENA,   1, 
                Offset (0x5C), 
                    ,   3, 
                TOUD,   5
            }

            Name (PBRS, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x00FF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0100,             // Length
                    ,, )
                IO (Decode16,
                    0x0CF8,             // Range Minimum
                    0x0CF8,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x0CF7,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0CF8,             // Length
                    ,, , TypeStatic, DenseTranslation)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0D00,             // Range Minimum
                    0xFFFF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0xF300,             // Length
                    ,, , TypeStatic, DenseTranslation)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000A0000,         // Range Minimum
                    0x000BFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000000,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000000,         // Length
                    ,, _Y00, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x80000000,         // Range Minimum
                    0xDFFFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x60000000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                EROM ()
                Return (PBRS) /* \_SB_.PCI0.PBRS */
            }

            OperationRegion (PAMX, PCI_Config, 0x90, 0x07)
            Field (PAMX, ByteAcc, NoLock, Preserve)
            {
                    ,   4, 
                BSEG,   4, 
                PAMS,   48
            }

            Name (ERNG, Package (0x0D)
            {
                0x000C0000, 
                0x000C4000, 
                0x000C8000, 
                0x000CC000, 
                0x000D0000, 
                0x000D4000, 
                0x000D8000, 
                0x000DC000, 
                0x000E0000, 
                0x000E4000, 
                0x000E8000, 
                0x000EC000, 
                0x000F0000
            })
            Name (PAMB, Buffer (0x07){})
            Method (EROM, 0, NotSerialized)
            {
                CreateDWordField (PBRS, \_SB.PCI0._Y00._MIN, RMIN)  // _MIN: Minimum Base Address
                CreateDWordField (PBRS, \_SB.PCI0._Y00._MAX, RMAX)  // _MAX: Maximum Base Address
                CreateDWordField (PBRS, \_SB.PCI0._Y00._LEN, RLEN)  // _LEN: Length
                CreateByteField (PAMB, 0x06, BREG)
                PAMB = PAMS /* \_SB_.PCI0.PAMS */
                BREG = BSEG /* \_SB_.PCI0.BSEG */
                RMIN = Zero
                RMAX = Zero
                RLEN = Zero
                Local0 = Zero
                While ((Local0 < 0x0D))
                {
                    Local1 = (Local0 >> One)
                    Local2 = DerefOf (PAMB [Local1])
                    If ((Local0 & One))
                    {
                        Local2 >>= 0x04
                    }

                    Local2 &= 0x03
                    If (RMIN)
                    {
                        If (Local2)
                        {
                            RMAX = (DerefOf (ERNG [Local0]) + 0x3FFF)
                            If ((RMAX == 0x000F3FFF))
                            {
                                RMAX = 0x000FFFFF
                            }

                            RLEN = (RMAX - RMIN) /* \_SB_.PCI0.EROM.RMIN */
                            RLEN++
                        }
                        Else
                        {
                            Local0 = 0x0C
                        }
                    }
                    ElseIf (Local2)
                    {
                        RMIN = DerefOf (ERNG [Local0])
                        RMAX = (DerefOf (ERNG [Local0]) + 0x3FFF)
                        If ((RMAX == 0x000F3FFF))
                        {
                            RMAX = 0x000FFFFF
                        }

                        RLEN = (RMAX - RMIN) /* \_SB_.PCI0.EROM.RMIN */
                        RLEN++
                    }
                    Else
                    {
                    }

                    Local0++
                }
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                CreateDWordField (Arg3, Zero, CDW1)
                If ((Arg0 == ToUUID ("33db4d5b-1ff7-401c-9657-7441c03dd766") /* PCI Host Bridge Device */))
                {
                    If ((Arg2 >= 0x03))
                    {
                        Name (SUPP, Zero)
                        Name (CTRL, Zero)
                        Local0 = 0x03
                        CreateDWordField (Arg3, 0x04, CDW2)
                        CreateDWordField (Arg3, 0x08, CDW3)
                        SUPP = CDW2 /* \_SB_.PCI0._OSC.CDW2 */
                        CTRL = CDW3 /* \_SB_.PCI0._OSC.CDW3 */
                        CTRL &= 0x1D
                        If (((SUPP & 0x16) != 0x16))
                        {
                            CTRL &= 0x1E
                        }

                        If (!(CDW1 & One))
                        {
                            If ((CTRL & One))
                            {
                                Local0 &= 0x0E
                            }

                            If ((CTRL & 0x04))
                            {
                                Local0 &= 0x0D
                                ^LPCB.GPMD (Zero)
                            }

                            If ((CTRL & 0x10)){}
                        }

                        If ((Arg1 != One))
                        {
                            CDW1 |= 0x08
                        }

                        If ((CDW3 != CTRL))
                        {
                            CDW1 |= 0x10
                        }

                        CDW3 = CTRL /* \_SB_.PCI0._OSC.CTRL */
                    }
                    Else
                    {
                        CDW1 |= 0x02
                    }
                }
                Else
                {
                    CDW1 |= 0x04
                }

                Return (Arg3)
            }

            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (GPIC)
                {
                    Return (Package (0x1F)
                    {
                        Package (0x04)
                        {
                            0x0001FFFF, 
                            Zero, 
                            Zero, 
                            0x10
                        }, 

                        Package (0x04)
                        {
                            0x0001FFFF, 
                            One, 
                            Zero, 
                            0x11
                        }, 

                        Package (0x04)
                        {
                            0x0001FFFF, 
                            0x02, 
                            Zero, 
                            0x12
                        }, 

                        Package (0x04)
                        {
                            0x0001FFFF, 
                            0x03, 
                            Zero, 
                            0x13
                        }, 

                        Package (0x04)
                        {
                            0x0003FFFF, 
                            Zero, 
                            Zero, 
                            0x10
                        }, 

                        Package (0x04)
                        {
                            0x0003FFFF, 
                            One, 
                            Zero, 
                            0x11
                        }, 

                        Package (0x04)
                        {
                            0x0003FFFF, 
                            0x02, 
                            Zero, 
                            0x12
                        }, 

                        Package (0x04)
                        {
                            0x0003FFFF, 
                            0x03, 
                            Zero, 
                            0x13
                        }, 

                        Package (0x04)
                        {
                            0x0007FFFF, 
                            Zero, 
                            Zero, 
                            0x10
                        }, 

                        Package (0x04)
                        {
                            0x0007FFFF, 
                            One, 
                            Zero, 
                            0x11
                        }, 

                        Package (0x04)
                        {
                            0x0007FFFF, 
                            0x02, 
                            Zero, 
                            0x12
                        }, 

                        Package (0x04)
                        {
                            0x0007FFFF, 
                            0x03, 
                            Zero, 
                            0x13
                        }, 

                        Package (0x04)
                        {
                            0x000DFFFF, 
                            Zero, 
                            Zero, 
                            0x10
                        }, 

                        Package (0x04)
                        {
                            0x000DFFFF, 
                            One, 
                            Zero, 
                            0x11
                        }, 

                        Package (0x04)
                        {
                            0x000DFFFF, 
                            0x02, 
                            Zero, 
                            0x12
                        }, 

                        Package (0x04)
                        {
                            0x000DFFFF, 
                            0x03, 
                            Zero, 
                            0x13
                        }, 

                        Package (0x04)
                        {
                            0x001AFFFF, 
                            Zero, 
                            Zero, 
                            0x10
                        }, 

                        Package (0x04)
                        {
                            0x001AFFFF, 
                            One, 
                            Zero, 
                            0x15
                        }, 

                        Package (0x04)
                        {
                            0x001AFFFF, 
                            0x02, 
                            Zero, 
                            0x12
                        }, 

                        Package (0x04)
                        {
                            0x001AFFFF, 
                            0x03, 
                            Zero, 
                            0x13
                        }, 

                        Package (0x04)
                        {
                            0x001BFFFF, 
                            Zero, 
                            Zero, 
                            0x16
                        }, 

                        Package (0x04)
                        {
                            0x001CFFFF, 
                            Zero, 
                            Zero, 
                            0x10
                        }, 

                        Package (0x04)
                        {
                            0x001CFFFF, 
                            One, 
                            Zero, 
                            0x11
                        }, 

                        Package (0x04)
                        {
                            0x001CFFFF, 
                            0x02, 
                            Zero, 
                            0x12
                        }, 

                        Package (0x04)
                        {
                            0x001CFFFF, 
                            0x03, 
                            Zero, 
                            0x13
                        }, 

                        Package (0x04)
                        {
                            0x001DFFFF, 
                            Zero, 
                            Zero, 
                            0x17
                        }, 

                        Package (0x04)
                        {
                            0x001DFFFF, 
                            One, 
                            Zero, 
                            0x13
                        }, 

                        Package (0x04)
                        {
                            0x001DFFFF, 
                            0x02, 
                            Zero, 
                            0x12
                        }, 

                        Package (0x04)
                        {
                            0x001DFFFF, 
                            0x03, 
                            Zero, 
                            0x10
                        }, 

                        Package (0x04)
                        {
                            0x001FFFFF, 
                            One, 
                            Zero, 
                            0x11
                        }, 

                        Package (0x04)
                        {
                            0x001FFFFF, 
                            0x02, 
                            Zero, 
                            0x12
                        }
                    })
                }
                Else
                {
                    Return (Package (0x1F)
                    {
                        Package (0x04)
                        {
                            0x0001FFFF, 
                            Zero, 
                            ^LPCB.LNKA, 
                            Zero
                        }, 

                        Package (0x04)
                        {
                            0x0001FFFF, 
                            One, 
                            ^LPCB.LNKB, 
                            Zero
                        }, 

                        Package (0x04)
                        {
                            0x0001FFFF, 
                            0x02, 
                            ^LPCB.LNKC, 
                            Zero
                        }, 

                        Package (0x04)
                        {
                            0x0001FFFF, 
                            0x03, 
                            ^LPCB.LNKD, 
                            Zero
                        }, 

                        Package (0x04)
                        {
                            0x0003FFFF, 
                            Zero, 
                            ^LPCB.LNKA, 
                            Zero
                        }, 

                        Package (0x04)
                        {
                            0x0003FFFF, 
                            One, 
                            ^LPCB.LNKB, 
                            Zero
                        }, 

                        Package (0x04)
                        {
                            0x0003FFFF, 
                            0x02, 
                            ^LPCB.LNKC, 
                            Zero
                        }, 

                        Package (0x04)
                        {
                            0x0003FFFF, 
                            0x03, 
                            ^LPCB.LNKD, 
                            Zero
                        }, 

                        Package (0x04)
                        {
                            0x0007FFFF, 
                            Zero, 
                            ^LPCB.LNKA, 
                            Zero
                        }, 

                        Package (0x04)
                        {
                            0x0007FFFF, 
                            One, 
                            ^LPCB.LNKB, 
                            Zero
                        }, 

                        Package (0x04)
                        {
                            0x0007FFFF, 
                            0x02, 
                            ^LPCB.LNKC, 
                            Zero
                        }, 

                        Package (0x04)
                        {
                            0x0007FFFF, 
                            0x03, 
                            ^LPCB.LNKD, 
                            Zero
                        }, 

                        Package (0x04)
                        {
                            0x000DFFFF, 
                            Zero, 
                            ^LPCB.LNKA, 
                            Zero
                        }, 

                        Package (0x04)
                        {
                            0x000DFFFF, 
                            One, 
                            ^LPCB.LNKB, 
                            Zero
                        }, 

                        Package (0x04)
                        {
                            0x000DFFFF, 
                            0x02, 
                            ^LPCB.LNKC, 
                            Zero
                        }, 

                        Package (0x04)
                        {
                            0x000DFFFF, 
                            0x03, 
                            ^LPCB.LNKD, 
                            Zero
                        }, 

                        Package (0x04)
                        {
                            0x001AFFFF, 
                            Zero, 
                            ^LPCB.LNKA, 
                            Zero
                        }, 

                        Package (0x04)
                        {
                            0x001AFFFF, 
                            One, 
                            ^LPCB.LNKF, 
                            Zero
                        }, 

                        Package (0x04)
                        {
                            0x001AFFFF, 
                            0x02, 
                            ^LPCB.LNKC, 
                            Zero
                        }, 

                        Package (0x04)
                        {
                            0x001AFFFF, 
                            0x03, 
                            ^LPCB.LNKD, 
                            Zero
                        }, 

                        Package (0x04)
                        {
                            0x001BFFFF, 
                            Zero, 
                            ^LPCB.LNKG, 
                            Zero
                        }, 

                        Package (0x04)
                        {
                            0x001CFFFF, 
                            Zero, 
                            ^LPCB.LNKA, 
                            Zero
                        }, 

                        Package (0x04)
                        {
                            0x001CFFFF, 
                            One, 
                            ^LPCB.LNKB, 
                            Zero
                        }, 

                        Package (0x04)
                        {
                            0x001CFFFF, 
                            0x02, 
                            ^LPCB.LNKC, 
                            Zero
                        }, 

                        Package (0x04)
                        {
                            0x001CFFFF, 
                            0x03, 
                            ^LPCB.LNKD, 
                            Zero
                        }, 

                        Package (0x04)
                        {
                            0x001DFFFF, 
                            Zero, 
                            ^LPCB.LNKH, 
                            Zero
                        }, 

                        Package (0x04)
                        {
                            0x001DFFFF, 
                            One, 
                            ^LPCB.LNKD, 
                            Zero
                        }, 

                        Package (0x04)
                        {
                            0x001DFFFF, 
                            0x02, 
                            ^LPCB.LNKC, 
                            Zero
                        }, 

                        Package (0x04)
                        {
                            0x001DFFFF, 
                            0x03, 
                            ^LPCB.LNKA, 
                            Zero
                        }, 

                        Package (0x04)
                        {
                            0x001FFFFF, 
                            One, 
                            ^LPCB.LNKB, 
                            Zero
                        }, 

                        Package (0x04)
                        {
                            0x001FFFFF, 
                            0x02, 
                            ^LPCB.LNKC, 
                            Zero
                        }
                    })
                }
            }

            Device (ESI)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0B)
                }
            }

            Device (PDRC)
            {
                Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                Name (_UID, One)  // _UID: Unique ID
                Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                {
                    Memory32Fixed (ReadOnly,
                        0xE0000000,         // Address Base
                        0x10000000,         // Address Length
                        )
                    Memory32Fixed (ReadOnly,
                        0xFC000000,         // Address Base
                        0x01000000,         // Address Length
                        )
                    Memory32Fixed (ReadOnly,
                        0xFED1A000,         // Address Base
                        0x00001000,         // Address Length
                        )
                    Memory32Fixed (ReadOnly,
                        0xFED1B000,         // Address Base
                        0x00001000,         // Address Length
                        )
                    Memory32Fixed (ReadOnly,
                        0xFED1C000,         // Address Base
                        0x0006FFFF,         // Address Length
                        )
                    Memory32Fixed (ReadOnly,
                        0xFE000000,         // Address Base
                        0x00020000,         // Address Length
                        )
                    Memory32Fixed (ReadOnly,
                        0xFE600000,         // Address Base
                        0x00100000,         // Address Length
                        )
                    Memory32Fixed (ReadOnly,
                        0xFE800000,         // Address Base
                        0x00200000,         // Address Length
                        )
                    Memory32Fixed (ReadOnly,
                        0xFEB00000,         // Address Base
                        0x00100000,         // Address Length
                        )
                    Memory32Fixed (ReadOnly,
                        0xFEC00000,         // Address Base
                        0x00100000,         // Address Length
                        )
                    Memory32Fixed (ReadOnly,
                        0xFEE00000,         // Address Base
                        0x00100000,         // Address Length
                        )
                    Memory32Fixed (ReadOnly,
                        0xFF000000,         // Address Base
                        0x01000000,         // Address Length
                        )
                })
            }

            Device (HDEF)
            {
                Name (_ADR, 0x001B0000)  // _ADR: Address
                OperationRegion (HDCS, PCI_Config, 0x54, 0x04)
                Field (HDCS, DWordAcc, NoLock, Preserve)
                {
                        ,   15, 
                    PMES,   1
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x0D, 
                    0x03
                })
            }

            Device (RP03)
            {
                Name (_ADR, 0x001C0002)  // _ADR: Address
                OperationRegion (P3CS, PCI_Config, 0x40, 0xA0)
                Field (P3CS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0x20), 
                    Offset (0x22), 
                    PSP3,   1, 
                    Offset (0x9C), 
                        ,   30, 
                    HPS3,   1, 
                    PMS3,   1
                }

                Device (ETH0)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x03
                    })
                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        Local0 = Package (0x02)
                            {
                                "location", 
                                Buffer (0x02)
                                {
                                    "1"
                                }
                            }
                        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                        Return (Local0)
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (GPIC)
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                Zero, 
                                Zero, 
                                0x12
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                One, 
                                Zero, 
                                0x13
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                Zero, 
                                0x10
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                Zero, 
                                0x11
                            }
                        })
                    }
                    Else
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                Zero, 
                                ^^LPCB.LNKC, 
                                Zero
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                One, 
                                ^^LPCB.LNKD, 
                                Zero
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                ^^LPCB.LNKA, 
                                Zero
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                ^^LPCB.LNKB, 
                                Zero
                            }
                        })
                    }
                }
            }

            Device (RP04)
            {
                Name (_ADR, 0x001C0003)  // _ADR: Address
                OperationRegion (P4CS, PCI_Config, 0x40, 0xA0)
                Field (P4CS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0x20), 
                    Offset (0x22), 
                    PSP4,   1, 
                    Offset (0x9C), 
                        ,   30, 
                    HPS4,   1, 
                    PMS4,   1
                }

                Device (ETH1)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x03
                    })
                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        Local0 = Package (0x02)
                            {
                                "location", 
                                Buffer (0x02)
                                {
                                    "2"
                                }
                            }
                        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                        Return (Local0)
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (GPIC)
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                Zero, 
                                Zero, 
                                0x13
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                One, 
                                Zero, 
                                0x10
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                Zero, 
                                0x11
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                Zero, 
                                0x12
                            }
                        })
                    }
                    Else
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                Zero, 
                                ^^LPCB.LNKD, 
                                Zero
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                One, 
                                ^^LPCB.LNKA, 
                                Zero
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                ^^LPCB.LNKB, 
                                Zero
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                ^^LPCB.LNKC, 
                                Zero
                            }
                        })
                    }
                }
            }

            Device (RP05)
            {
                Name (_ADR, 0x001C0004)  // _ADR: Address
                OperationRegion (P5CS, PCI_Config, 0x40, 0xA0)
                Field (P5CS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0x20), 
                    Offset (0x22), 
                    PSP5,   1, 
                    Offset (0x9C), 
                        ,   30, 
                    HPS5,   1, 
                    PMS5,   1
                }

                Device (FWBR)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Device (FRWR)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Name (_GPE, 0x1A)  // _GPE: General Purpose Events
                        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                        {
                            Local0 = Package (0x02)
                                {
                                    "fwhub", 
                                    Buffer (0x04)
                                    {
                                         0x00, 0x00, 0x00, 0x00                           // ....
                                    }
                                }
                            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                            Return (Local0)
                        }
                    }
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (GPIC)
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                Zero, 
                                Zero, 
                                0x10
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                One, 
                                Zero, 
                                0x11
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                Zero, 
                                0x12
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                Zero, 
                                0x13
                            }
                        })
                    }
                    Else
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                Zero, 
                                ^^LPCB.LNKA, 
                                Zero
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                One, 
                                ^^LPCB.LNKB, 
                                Zero
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                ^^LPCB.LNKC, 
                                Zero
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                ^^LPCB.LNKD, 
                                Zero
                            }
                        })
                    }
                }
            }

            Device (RP06)
            {
                Name (_ADR, 0x001C0005)  // _ADR: Address
                OperationRegion (P6CS, PCI_Config, 0x40, 0xA0)
                Field (P6CS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0x20), 
                    Offset (0x22), 
                    PSP6,   1, 
                    Offset (0x9C), 
                        ,   30, 
                    HPS6,   1, 
                    PMS6,   1
                }

                Device (ARPT)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x09, 
                        0x03
                    })
                    Name (_SUN, 0x05)  // _SUN: Slot User Number
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (GPIC)
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                Zero, 
                                Zero, 
                                0x11
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                One, 
                                Zero, 
                                0x12
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                Zero, 
                                0x13
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                Zero, 
                                0x10
                            }
                        })
                    }
                    Else
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                Zero, 
                                ^^LPCB.LNKB, 
                                Zero
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                One, 
                                ^^LPCB.LNKC, 
                                Zero
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                ^^LPCB.LNKD, 
                                Zero
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                ^^LPCB.LNKA, 
                                Zero
                            }
                        })
                    }
                }
            }

            Device (UHC1)
            {
                Name (_ADR, 0x001D0000)  // _ADR: Address
                OperationRegion (U1CS, PCI_Config, 0xC4, 0x04)
                Field (U1CS, DWordAcc, NoLock, Preserve)
                {
                    U1EN,   2
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x03, 
                    0x03
                })
                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        U1EN = 0x03
                    }
                    Else
                    {
                        U1EN = Zero
                    }
                }
            }

            Device (UHC2)
            {
                Name (_ADR, 0x001D0001)  // _ADR: Address
                OperationRegion (U2CS, PCI_Config, 0xC4, 0x04)
                Field (U2CS, DWordAcc, NoLock, Preserve)
                {
                    U2EN,   2
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x04, 
                    0x03
                })
                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        U2EN = 0x03
                    }
                    Else
                    {
                        U2EN = Zero
                    }
                }
            }

            Device (UHC3)
            {
                Name (_ADR, 0x001D0002)  // _ADR: Address
                OperationRegion (U2CS, PCI_Config, 0xC4, 0x04)
                Field (U2CS, DWordAcc, NoLock, Preserve)
                {
                    U3EN,   2
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x0C, 
                    0x03
                })
                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        U3EN = 0x03
                    }
                    Else
                    {
                        U3EN = Zero
                    }
                }
            }

            Device (UHC4)
            {
                Name (_ADR, 0x001A0000)  // _ADR: Address
                OperationRegion (U4CS, PCI_Config, 0xC4, 0x04)
                Field (U4CS, DWordAcc, NoLock, Preserve)
                {
                    U4EN,   2
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x0E, 
                    0x03
                })
                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        U4EN = 0x03
                    }
                    Else
                    {
                        U4EN = Zero
                    }
                }
            }

            Device (UHC5)
            {
                Name (_ADR, 0x001A0001)  // _ADR: Address
                OperationRegion (U5CS, PCI_Config, 0xC4, 0x04)
                Field (U5CS, DWordAcc, NoLock, Preserve)
                {
                    U5EN,   2
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x05, 
                    0x03
                })
                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        U5EN = 0x03
                    }
                    Else
                    {
                        U5EN = Zero
                    }
                }
            }

            Device (UHC6)
            {
                Name (_ADR, 0x001A0002)  // _ADR: Address
                OperationRegion (U6CS, PCI_Config, 0xC4, 0x04)
                Field (U6CS, DWordAcc, NoLock, Preserve)
                {
                    U6EN,   2
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x20, 
                    0x03
                })
                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        U6EN = 0x03
                    }
                    Else
                    {
                        U6EN = Zero
                    }
                }
            }

            Device (EHC1)
            {
                Name (_ADR, 0x001D0007)  // _ADR: Address
                OperationRegion (U7CS, PCI_Config, 0x54, 0x02)
                Field (U7CS, WordAcc, NoLock, Preserve)
                {
                        ,   15, 
                    PMES,   1
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x0D, 
                    0x03
                })
                OperationRegion (USBR, PCI_Config, 0x62, 0x02)
                Field (USBR, AnyAcc, NoLock, Preserve)
                {
                    URE2,   9
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If ((Arg0 == Zero))
                    {
                        URE2 = Zero
                    }

                    If ((Arg0 == One))
                    {
                        URE2 = 0x01FF
                    }
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    Local0 = Package (0x07)
                        {
                            "AAPL,current-available", 
                            0x05DC, 
                            "AAPL,current-extra", 
                            0x04B0, 
                            "AAPL,current-in-sleep", 
                            0x09C4, 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }
                    DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                    Return (Local0)
                }
            }

            Device (EHC2)
            {
                Name (_ADR, 0x001A0007)  // _ADR: Address
                OperationRegion (U7CS, PCI_Config, 0x54, 0x02)
                Field (U7CS, WordAcc, NoLock, Preserve)
                {
                        ,   15, 
                    PMES,   1
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x0D, 
                    0x03
                })
                OperationRegion (USBR, PCI_Config, 0x62, 0x02)
                Field (USBR, AnyAcc, NoLock, Preserve)
                {
                    URE2,   9
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If ((Arg0 == Zero))
                    {
                        URE2 = Zero
                    }

                    If ((Arg0 == One))
                    {
                        URE2 = 0x01FF
                    }
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    Local0 = Package (0x07)
                        {
                            "AAPL,current-available", 
                            0x05DC, 
                            "AAPL,current-extra", 
                            0x04B0, 
                            "AAPL,current-in-sleep", 
                            0x09C4, 
                            Buffer (One)
                            {
                                 0x00                                             // .
                            }
                        }
                    DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                    Return (Local0)
                }
            }

            Device (LPCB)
            {
                Name (_ADR, 0x001F0000)  // _ADR: Address
                OperationRegion (LPC0, PCI_Config, 0x40, 0xC0)
                Field (LPC0, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x20), 
                    PARC,   8, 
                    PBRC,   8, 
                    PCRC,   8, 
                    PDRC,   8, 
                    Offset (0x28), 
                    PERC,   8, 
                    PFRC,   8, 
                    PGRC,   8, 
                    PHRC,   8, 
                    Offset (0x40), 
                    IOD0,   8, 
                    IOD1,   8, 
                    Offset (0x60), 
                        ,   10, 
                    XPME,   1, 
                    Offset (0x64), 
                    AG3E,   1, 
                    Offset (0xB0), 
                    RAEN,   1, 
                        ,   13, 
                    RCBA,   18
                }

                Method (GPMD, 1, NotSerialized)
                {
                    XPME = Arg0
                }

                Device (LNKA)
                {
                    Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                    Name (_UID, One)  // _UID: Unique ID
                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        If ((PARC & 0x80))
                        {
                            Return (0x09)
                        }
                        Else
                        {
                            Return (0x0B)
                        }
                    }

                    Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                    {
                        PARC |= 0x80
                    }

                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        Name (RTLA, ResourceTemplate ()
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {}
                        })
                        CreateWordField (RTLA, One, IRQ0)
                        IRQ0 = Zero
                        IRQ0 = (One << (PARC & 0x0F))
                        Return (RTLA) /* \_SB_.PCI0.LPCB.LNKA._CRS.RTLA */
                    }

                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        IRQ (Level, ActiveLow, Shared, )
                            {3,4,5,6,7,9,10,11,12,14,15}
                    })
                    Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                    {
                        CreateWordField (Arg0, One, IRQ0)
                        FindSetRightBit (IRQ0, Local0)
                        Local0--
                        PARC = Local0
                    }
                }

                Device (LNKB)
                {
                    Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                    Name (_UID, 0x02)  // _UID: Unique ID
                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        If ((PBRC & 0x80))
                        {
                            Return (0x09)
                        }
                        Else
                        {
                            Return (0x0B)
                        }
                    }

                    Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                    {
                        PBRC |= 0x80
                    }

                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        Name (RTLB, ResourceTemplate ()
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {}
                        })
                        CreateWordField (RTLB, One, IRQ0)
                        IRQ0 = Zero
                        IRQ0 = (One << (PBRC & 0x0F))
                        Return (RTLB) /* \_SB_.PCI0.LPCB.LNKB._CRS.RTLB */
                    }

                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        IRQ (Level, ActiveLow, Shared, )
                            {3,4,5,6,7,9,10,11,12,14,15}
                    })
                    Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                    {
                        CreateWordField (Arg0, One, IRQ0)
                        FindSetRightBit (IRQ0, Local0)
                        Local0--
                        PBRC = Local0
                    }
                }

                Device (LNKC)
                {
                    Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                    Name (_UID, 0x03)  // _UID: Unique ID
                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        If ((PCRC & 0x80))
                        {
                            Return (0x09)
                        }
                        Else
                        {
                            Return (0x0B)
                        }
                    }

                    Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                    {
                        PCRC |= 0x80
                    }

                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        Name (RTLC, ResourceTemplate ()
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {}
                        })
                        CreateWordField (RTLC, One, IRQ0)
                        IRQ0 = Zero
                        IRQ0 = (One << (PCRC & 0x0F))
                        Return (RTLC) /* \_SB_.PCI0.LPCB.LNKC._CRS.RTLC */
                    }

                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        IRQ (Level, ActiveLow, Shared, )
                            {3,4,5,6,7,9,10,11,12,14,15}
                    })
                    Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                    {
                        CreateWordField (Arg0, One, IRQ0)
                        FindSetRightBit (IRQ0, Local0)
                        Local0--
                        PCRC = Local0
                    }
                }

                Device (LNKD)
                {
                    Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                    Name (_UID, 0x04)  // _UID: Unique ID
                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        If ((PDRC & 0x80))
                        {
                            Return (0x09)
                        }
                        Else
                        {
                            Return (0x0B)
                        }
                    }

                    Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                    {
                        PDRC |= 0x80
                    }

                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        Name (RTLD, ResourceTemplate ()
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {}
                        })
                        CreateWordField (RTLD, One, IRQ0)
                        IRQ0 = Zero
                        IRQ0 = (One << (PDRC & 0x0F))
                        Return (RTLD) /* \_SB_.PCI0.LPCB.LNKD._CRS.RTLD */
                    }

                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        IRQ (Level, ActiveLow, Shared, )
                            {3,4,5,6,7,9,10,11,12,14,15}
                    })
                    Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                    {
                        CreateWordField (Arg0, One, IRQ0)
                        FindSetRightBit (IRQ0, Local0)
                        Local0--
                        PDRC = Local0
                    }
                }

                Device (LNKE)
                {
                    Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                    Name (_UID, 0x05)  // _UID: Unique ID
                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        If ((PERC & 0x80))
                        {
                            Return (0x09)
                        }
                        Else
                        {
                            Return (0x0B)
                        }
                    }

                    Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                    {
                        PERC |= 0x80
                    }

                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        Name (RTLE, ResourceTemplate ()
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {}
                        })
                        CreateWordField (RTLE, One, IRQ0)
                        IRQ0 = Zero
                        IRQ0 = (One << (PERC & 0x0F))
                        Return (RTLE) /* \_SB_.PCI0.LPCB.LNKE._CRS.RTLE */
                    }

                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        IRQ (Level, ActiveLow, Shared, )
                            {3,4,5,6,7,9,10,11,12,14,15}
                    })
                    Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                    {
                        CreateWordField (Arg0, One, IRQ0)
                        FindSetRightBit (IRQ0, Local0)
                        Local0--
                        PERC = Local0
                    }
                }

                Device (LNKF)
                {
                    Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                    Name (_UID, 0x06)  // _UID: Unique ID
                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        If ((PFRC & 0x80))
                        {
                            Return (0x09)
                        }
                        Else
                        {
                            Return (0x0B)
                        }
                    }

                    Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                    {
                        PFRC |= 0x80
                    }

                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        Name (RTLF, ResourceTemplate ()
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {}
                        })
                        CreateWordField (RTLF, One, IRQ0)
                        IRQ0 = Zero
                        IRQ0 = (One << (PFRC & 0x0F))
                        Return (RTLF) /* \_SB_.PCI0.LPCB.LNKF._CRS.RTLF */
                    }

                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        IRQ (Level, ActiveLow, Shared, )
                            {3,4,5,6,7,9,10,11,12,14,15}
                    })
                    Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                    {
                        CreateWordField (Arg0, One, IRQ0)
                        FindSetRightBit (IRQ0, Local0)
                        Local0--
                        PFRC = Local0
                    }
                }

                Device (LNKG)
                {
                    Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                    Name (_UID, 0x07)  // _UID: Unique ID
                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        If ((PGRC & 0x80))
                        {
                            Return (0x09)
                        }
                        Else
                        {
                            Return (0x0B)
                        }
                    }

                    Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                    {
                        PGRC |= 0x80
                    }

                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        Name (RTLG, ResourceTemplate ()
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {}
                        })
                        CreateWordField (RTLG, One, IRQ0)
                        IRQ0 = Zero
                        IRQ0 = (One << (PGRC & 0x0F))
                        Return (RTLG) /* \_SB_.PCI0.LPCB.LNKG._CRS.RTLG */
                    }

                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        IRQ (Level, ActiveLow, Shared, )
                            {3,4,5,6,7,9,10,11,12,14,15}
                    })
                    Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                    {
                        CreateWordField (Arg0, One, IRQ0)
                        FindSetRightBit (IRQ0, Local0)
                        Local0--
                        PGRC = Local0
                    }
                }

                Device (LNKH)
                {
                    Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                    Name (_UID, 0x08)  // _UID: Unique ID
                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        If ((PHRC & 0x80))
                        {
                            Return (0x09)
                        }
                        Else
                        {
                            Return (0x0B)
                        }
                    }

                    Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                    {
                        PHRC |= 0x80
                    }

                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        Name (RTLH, ResourceTemplate ()
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {}
                        })
                        CreateWordField (RTLH, One, IRQ0)
                        IRQ0 = Zero
                        IRQ0 = (One << (PHRC & 0x0F))
                        Return (RTLH) /* \_SB_.PCI0.LPCB.LNKH._CRS.RTLH */
                    }

                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        IRQ (Level, ActiveLow, Shared, )
                            {3,4,5,6,7,9,10,11,12,14,15}
                    })
                    Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                    {
                        CreateWordField (Arg0, One, IRQ0)
                        FindSetRightBit (IRQ0, Local0)
                        Local0--
                        PHRC = Local0
                    }
                }

                Device (SMC)
                {
                    Name (_HID, EisaId ("APP0001"))  // _HID: Hardware ID
                    Name (_CID, "smc-thurley")  // _CID: Compatible ID
                    Name (_STA, 0x0B)  // _STA: Status
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0300,             // Range Minimum
                            0x0300,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        IRQNoFlags ()
                            {6}
                    })
                }

                Device (EC)
                {
                    Name (_HID, EisaId ("PNP0C09") /* Embedded Controller Device */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0062,             // Range Minimum
                            0x0062,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0066,             // Range Minimum
                            0x0066,             // Range Maximum
                            0x00,               // Alignment
                            0x01,               // Length
                            )
                    })
                    Name (_GPE, 0x17)  // _GPE: General Purpose Events
                    Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                    {
                        0x1B, 
                        0x03
                    })
                    Name (ECOK, Zero)
                    OperationRegion (ECOR, EmbeddedControl, Zero, 0xFF)
                    Field (ECOR, ByteAcc, Lock, Preserve)
                    {
                        ECVS,   8, 
                        LSTE,   1, 
                        RPWR,   1, 
                        CDIN,   1, 
                        Offset (0x02), 
                        LWAK,   1, 
                        ACWK,   1, 
                        CDWK,   1, 
                        Offset (0x03), 
                        G3HT,   1, 
                        Offset (0x04), 
                        Offset (0x10), 
                        ECSS,   8, 
                        PLIM,   8, 
                        Offset (0x20), 
                        SPTR,   8, 
                        SSTS,   8, 
                        SADR,   8, 
                        SCMD,   8, 
                        SBFR,   256, 
                        SCNT,   8, 
                        SAAD,   8, 
                        SAD0,   8, 
                        SAD1,   8, 
                        SMUX,   8
                    }

                    Method (_Q5A, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        Notify (PWRB, 0x80) // Status Change
                    }

                    Method (_Q80, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        PNOT ()
                    }

                    Method (_REG, 2, NotSerialized)  // _REG: Region Availability
                    {
                        If (((Arg0 == 0x03) || (OSYS >= 0x07D6)))
                        {
                            ECOK = Arg1
                            If ((Arg1 == One))
                            {
                                ECSS = Zero
                            }
                        }
                    }
                }

                Device (DMAC)
                {
                    Name (_HID, EisaId ("PNP0200") /* PC-class DMA Controller */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x00,               // Alignment
                            0x20,               // Length
                            )
                        IO (Decode16,
                            0x0081,             // Range Minimum
                            0x0081,             // Range Maximum
                            0x00,               // Alignment
                            0x11,               // Length
                            )
                        IO (Decode16,
                            0x00C0,             // Range Minimum
                            0x00C0,             // Range Maximum
                            0x00,               // Alignment
                            0x20,               // Length
                            )
                        DMA (Compatibility, BusMaster, Transfer8_16, )
                            {4}
                    })
                }

                Device (FWHD)
                {
                    Name (_HID, EisaId ("INT0800") /* Intel 82802 Firmware Hub Device */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        Memory32Fixed (ReadOnly,
                            0xFF000000,         // Address Base
                            0x01000000,         // Address Length
                            )
                    })
                }

                Device (HPET)
                {
                    Name (_HID, EisaId ("PNP0103") /* HPET System Timer */)  // _HID: Hardware ID
                    Name (BUF0, ResourceTemplate ()
                    {
                        IRQNoFlags ()
                            {0}
                        IRQNoFlags ()
                            {8}
                        Memory32Fixed (ReadOnly,
                            0xFED00000,         // Address Base
                            0x00100000,         // Address Length
                            _Y01)
                    })
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If ((OSYS >= 0x07D1))
                        {
                            If (HPAE)
                            {
                                Return (0x0F)
                            }
                        }
                        ElseIf (HPAE)
                        {
                            Return (0x0B)
                        }

                        Return (Zero)
                    }

                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        If (HPAE)
                        {
                            CreateDWordField (BUF0, \_SB.PCI0.LPCB.HPET._Y01._BAS, HPT0)  // _BAS: Base Address
                            If ((HPAS == One))
                            {
                                HPT0 = 0xFED10000
                            }

                            If ((HPAS == 0x02))
                            {
                                HPT0 = 0xFED20000
                            }

                            If ((HPAS == 0x03))
                            {
                                HPT0 = 0xFED30000
                            }
                        }

                        Return (BUF0) /* \_SB_.PCI0.LPCB.HPET.BUF0 */
                    }
                }

                Device (IPIC)
                {
                    Name (_HID, EisaId ("PNP0000") /* 8259-compatible Programmable Interrupt Controller */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0020,             // Range Minimum
                            0x0020,             // Range Maximum
                            0x01,               // Alignment
                            0x1E,               // Length
                            )
                        IO (Decode16,
                            0x00A0,             // Range Minimum
                            0x00A0,             // Range Maximum
                            0x01,               // Alignment
                            0x1E,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {2}
                    })
                }

                Device (MATH)
                {
                    Name (_HID, EisaId ("PNP0C04") /* x87-compatible Floating Point Processing Unit */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x00F0,             // Range Minimum
                            0x00F0,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {13}
                    })
                }

                Device (LDRC)
                {
                    Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x002E,             // Range Minimum
                            0x002E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x004E,             // Range Minimum
                            0x004E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0061,             // Range Minimum
                            0x0061,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0092,             // Range Minimum
                            0x0092,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x00B2,             // Range Minimum
                            0x00B2,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00F0,             // Range Minimum
                            0x00F0,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0680,             // Range Minimum
                            0x0680,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        IO (Decode16,
                            0x0800,             // Range Minimum
                            0x0800,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0810,             // Range Minimum
                            0x0810,             // Range Maximum
                            0x01,               // Alignment
                            0x08,               // Length
                            )
                        IO (Decode16,
                            0x0400,             // Range Minimum
                            0x0400,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                        IO (Decode16,
                            0x0500,             // Range Minimum
                            0x0500,             // Range Maximum
                            0x01,               // Alignment
                            0x40,               // Length
                            )
                        IO (Decode16,
                            0x1640,             // Range Minimum
                            0x1640,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                    })
                }

                Device (RTC)
                {
                    Name (_HID, EisaId ("PNP0B00") /* AT Real-Time Clock */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x08,               // Length
                            )
                    })
                }

                Device (TIMR)
                {
                    Name (_HID, EisaId ("PNP0100") /* PC-class System Timer */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                        IO (Decode16,
                            0x0050,             // Range Minimum
                            0x0050,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                    })
                }
            }

            Device (SATA)
            {
                Name (_ADR, 0x001F0002)  // _ADR: Address
                OperationRegion (IDER, PCI_Config, 0x40, 0x20)
                Field (IDER, AnyAcc, NoLock, Preserve)
                {
                    PFT0,   1, 
                    PIE0,   1, 
                    PPE0,   1, 
                    PDE0,   1, 
                    PFT1,   1, 
                    PIE1,   1, 
                    PPE1,   1, 
                    PDE1,   1, 
                    PRTZ,   2, 
                        ,   2, 
                    PIP0,   2, 
                    PSIT,   1, 
                    PIDE,   1, 
                    SFT0,   1, 
                    SIE0,   1, 
                    SPE0,   1, 
                    SDE0,   1, 
                    SFT1,   1, 
                    SIE1,   1, 
                    SPE1,   1, 
                    SDE1,   1, 
                    SRT0,   2, 
                        ,   2, 
                    SIP0,   2, 
                    SSIT,   1, 
                    SIDE,   1, 
                    PRTY,   2, 
                    PIP1,   2, 
                    SRT1,   2, 
                    SIP1,   2, 
                    Offset (0x08), 
                    UDM0,   1, 
                    UDM1,   1, 
                    UDM2,   1, 
                    UDM3,   1, 
                    Offset (0x0A), 
                    PCT0,   2, 
                        ,   2, 
                    PCT1,   2, 
                    Offset (0x0B), 
                    SCT0,   2, 
                        ,   2, 
                    SCT1,   2, 
                    Offset (0x14), 
                    PCB0,   1, 
                    PCB1,   1, 
                    SCB0,   1, 
                    SCB1,   1, 
                    PCCR,   2, 
                    SCCR,   2, 
                        ,   4, 
                    PUM0,   1, 
                    PUM1,   1, 
                    SUM0,   1, 
                    SUM1,   1, 
                    PSIG,   2, 
                    SSIG,   2
                }

                Method (GPIO, 4, NotSerialized)
                {
                    If (((Arg0 | Arg1) == Zero))
                    {
                        Return (Ones)
                    }
                    ElseIf (((Arg0 == Zero) & (Arg1 == One)))
                    {
                        Return (0x0384)
                    }

                    Return ((0x1E * (0x09 - (Arg2 + Arg3))))
                }

                Method (GDMA, 5, NotSerialized)
                {
                    If ((Arg0 == One))
                    {
                        If ((Arg1 == One))
                        {
                            If ((Arg4 == 0x02))
                            {
                                Return (0x0F)
                            }

                            Return (0x14)
                        }

                        If ((Arg2 == One))
                        {
                            Return ((0x0F * (0x04 - Arg4)))
                        }

                        Return ((0x1E * (0x04 - Arg4)))
                    }

                    Return (0xFFFFFFFE)
                }

                Method (SFLG, 5, NotSerialized)
                {
                    Local0 = Zero
                    Local0 |= Arg1
                    Local0 |= (Arg0 << One)
                    Local0 |= (Arg2 << 0x03)
                    Local0 |= (Arg3 << 0x02)
                    Local0 |= (Arg4 << 0x04)
                    Return (Local0)
                }

                Method (SPIO, 3, NotSerialized)
                {
                    Name (PBUF, Buffer (0x05)
                    {
                         0x00, 0x00, 0x00, 0x00, 0x00                     // .....
                    })
                    CreateByteField (PBUF, Zero, RCT)
                    CreateByteField (PBUF, One, ISP)
                    CreateByteField (PBUF, 0x02, FAST)
                    CreateByteField (PBUF, 0x03, DMAE)
                    CreateByteField (PBUF, 0x04, PIOT)
                    If (((Arg0 == Zero) || (Arg0 == Ones)))
                    {
                        Return (PBUF) /* \_SB_.PCI0.SATA.SPIO.PBUF */
                    }

                    If ((Arg0 > 0xF0))
                    {
                        DMAE = One
                        PIOT = Zero
                    }
                    Else
                    {
                        FAST = One
                        If ((Arg1 & 0x02))
                        {
                            If (((Arg0 == 0x78) & (Arg2 & 0x02)))
                            {
                                RCT = 0x03
                                ISP = 0x02
                                PIOT = 0x04
                            }
                            ElseIf (((Arg0 <= 0xB4) & (Arg2 & One)))
                            {
                                RCT = One
                                ISP = 0x02
                                PIOT = 0x03
                            }
                            Else
                            {
                                RCT = Zero
                                ISP = One
                                PIOT = 0x02
                            }
                        }
                    }

                    Return (PBUF) /* \_SB_.PCI0.SATA.SPIO.PBUF */
                }

                Method (SDMA, 3, NotSerialized)
                {
                    Name (PBUF, Buffer (0x05)
                    {
                         0x00, 0x00, 0x00, 0x00                           // ....
                    })
                    CreateByteField (PBUF, Zero, PCT)
                    CreateByteField (PBUF, One, PCB)
                    CreateByteField (PBUF, 0x02, UDMT)
                    CreateByteField (PBUF, 0x03, UDME)
                    CreateByteField (PBUF, 0x04, DMAT)
                    If (((Arg0 == Zero) || (Arg0 == Ones)))
                    {
                        Return (PBUF) /* \_SB_.PCI0.SATA.SDMA.PBUF */
                    }

                    If ((Arg0 <= 0x78))
                    {
                        If ((Arg1 & 0x04))
                        {
                            UDME = One
                            If (((Arg0 == 0x0F) & (Arg2 & 0x40)))
                            {
                                UDMT = One
                                PCB = One
                                PCT = 0x02
                                DMAT = 0x06
                            }
                            ElseIf (((Arg0 == 0x14) & (Arg2 & 0x20)))
                            {
                                UDMT = One
                                PCB = One
                                PCT = One
                                DMAT = 0x05
                            }
                            ElseIf (((Arg0 <= 0x1E) & (Arg2 & 0x10)))
                            {
                                PCB = One
                                PCT = 0x02
                                DMAT = 0x04
                            }
                            ElseIf (((Arg0 <= 0x2D) & (Arg2 & 0x08)))
                            {
                                PCB = One
                                PCT = One
                                DMAT = 0x03
                            }
                            ElseIf (((Arg0 <= 0x3C) & (Arg2 & 0x04)))
                            {
                                PCT = 0x02
                                DMAT = 0x02
                            }
                            ElseIf (((Arg0 <= 0x5A) & (Arg2 & 0x02)))
                            {
                                PCT = One
                                DMAT = One
                            }
                            ElseIf (((Arg0 <= 0x78) & (Arg2 & One)))
                            {
                                DMAT = Zero
                            }
                        }
                    }

                    Return (PBUF) /* \_SB_.PCI0.SATA.SDMA.PBUF */
                }
            }

            Device (SSAT)
            {
                Name (_ADR, 0x001F0005)  // _ADR: Address
                OperationRegion (IDER, PCI_Config, 0x40, 0x20)
                Field (IDER, AnyAcc, NoLock, Preserve)
                {
                    PFT0,   1, 
                    PIE0,   1, 
                    PPE0,   1, 
                    PDE0,   1, 
                    PFT1,   1, 
                    PIE1,   1, 
                    PPE1,   1, 
                    PDE1,   1, 
                    PRTZ,   2, 
                        ,   2, 
                    PIP0,   2, 
                    PSIT,   1, 
                    PIDE,   1, 
                    SFT0,   1, 
                    SIE0,   1, 
                    SPE0,   1, 
                    SDE0,   1, 
                    SFT1,   1, 
                    SIE1,   1, 
                    SPE1,   1, 
                    SDE1,   1, 
                    SRT0,   2, 
                        ,   2, 
                    SIP0,   2, 
                    SSIT,   1, 
                    SIDE,   1, 
                    PRTY,   2, 
                    PIP1,   2, 
                    SRT1,   2, 
                    SIP1,   2, 
                    Offset (0x08), 
                    UDM0,   1, 
                    UDM1,   1, 
                    UDM2,   1, 
                    UDM3,   1, 
                    Offset (0x0A), 
                    PCT0,   2, 
                        ,   2, 
                    PCT1,   2, 
                    Offset (0x0B), 
                    SCT0,   2, 
                        ,   2, 
                    SCT1,   2, 
                    Offset (0x14), 
                    PCB0,   1, 
                    PCB1,   1, 
                    SCB0,   1, 
                    SCB1,   1, 
                    PCCR,   2, 
                    SCCR,   2, 
                        ,   4, 
                    PUM0,   1, 
                    PUM1,   1, 
                    SUM0,   1, 
                    SUM1,   1, 
                    PSIG,   2, 
                    SSIG,   2
                }

                Method (GPIO, 4, NotSerialized)
                {
                    If (((Arg0 | Arg1) == Zero))
                    {
                        Return (Ones)
                    }
                    ElseIf (((Arg0 == Zero) & (Arg1 == One)))
                    {
                        Return (0x0384)
                    }

                    Return ((0x1E * (0x09 - (Arg2 + Arg3))))
                }

                Method (GDMA, 5, NotSerialized)
                {
                    If ((Arg0 == One))
                    {
                        If ((Arg1 == One))
                        {
                            If ((Arg4 == 0x02))
                            {
                                Return (0x0F)
                            }

                            Return (0x14)
                        }

                        If ((Arg2 == One))
                        {
                            Return ((0x0F * (0x04 - Arg4)))
                        }

                        Return ((0x1E * (0x04 - Arg4)))
                    }

                    Return (0xFFFFFFFE)
                }

                Method (SFLG, 5, NotSerialized)
                {
                    Local0 = Zero
                    Local0 |= Arg1
                    Local0 |= (Arg0 << One)
                    Local0 |= (Arg2 << 0x03)
                    Local0 |= (Arg3 << 0x02)
                    Local0 |= (Arg4 << 0x04)
                    Return (Local0)
                }

                Method (SPIO, 3, NotSerialized)
                {
                    Name (PBUF, Buffer (0x05)
                    {
                         0x00, 0x00, 0x00, 0x00, 0x00                     // .....
                    })
                    CreateByteField (PBUF, Zero, RCT)
                    CreateByteField (PBUF, One, ISP)
                    CreateByteField (PBUF, 0x02, FAST)
                    CreateByteField (PBUF, 0x03, DMAE)
                    CreateByteField (PBUF, 0x04, PIOT)
                    If (((Arg0 == Zero) || (Arg0 == Ones)))
                    {
                        Return (PBUF) /* \_SB_.PCI0.SSAT.SPIO.PBUF */
                    }

                    If ((Arg0 > 0xF0))
                    {
                        DMAE = One
                        PIOT = Zero
                    }
                    Else
                    {
                        FAST = One
                        If ((Arg1 & 0x02))
                        {
                            If (((Arg0 == 0x78) & (Arg2 & 0x02)))
                            {
                                RCT = 0x03
                                ISP = 0x02
                                PIOT = 0x04
                            }
                            ElseIf (((Arg0 <= 0xB4) & (Arg2 & One)))
                            {
                                RCT = One
                                ISP = 0x02
                                PIOT = 0x03
                            }
                            Else
                            {
                                RCT = Zero
                                ISP = One
                                PIOT = 0x02
                            }
                        }
                    }

                    Return (PBUF) /* \_SB_.PCI0.SSAT.SPIO.PBUF */
                }

                Method (SDMA, 3, NotSerialized)
                {
                    Name (PBUF, Buffer (0x05)
                    {
                         0x00, 0x00, 0x00, 0x00                           // ....
                    })
                    CreateByteField (PBUF, Zero, PCT)
                    CreateByteField (PBUF, One, PCB)
                    CreateByteField (PBUF, 0x02, UDMT)
                    CreateByteField (PBUF, 0x03, UDME)
                    CreateByteField (PBUF, 0x04, DMAT)
                    If (((Arg0 == Zero) || (Arg0 == Ones)))
                    {
                        Return (PBUF) /* \_SB_.PCI0.SSAT.SDMA.PBUF */
                    }

                    If ((Arg0 <= 0x78))
                    {
                        If ((Arg1 & 0x04))
                        {
                            UDME = One
                            If (((Arg0 == 0x0F) & (Arg2 & 0x40)))
                            {
                                UDMT = One
                                PCB = One
                                PCT = 0x02
                                DMAT = 0x06
                            }
                            ElseIf (((Arg0 == 0x14) & (Arg2 & 0x20)))
                            {
                                UDMT = One
                                PCB = One
                                PCT = One
                                DMAT = 0x05
                            }
                            ElseIf (((Arg0 <= 0x1E) & (Arg2 & 0x10)))
                            {
                                PCB = One
                                PCT = 0x02
                                DMAT = 0x04
                            }
                            ElseIf (((Arg0 <= 0x2D) & (Arg2 & 0x08)))
                            {
                                PCB = One
                                PCT = One
                                DMAT = 0x03
                            }
                            ElseIf (((Arg0 <= 0x3C) & (Arg2 & 0x04)))
                            {
                                PCT = 0x02
                                DMAT = 0x02
                            }
                            ElseIf (((Arg0 <= 0x5A) & (Arg2 & 0x02)))
                            {
                                PCT = One
                                DMAT = One
                            }
                            ElseIf (((Arg0 <= 0x78) & (Arg2 & One)))
                            {
                                DMAT = Zero
                            }
                        }
                    }

                    Return (PBUF) /* \_SB_.PCI0.SSAT.SDMA.PBUF */
                }
            }

            Device (SBUS)
            {
                Name (_ADR, 0x001F0003)  // _ADR: Address
                OperationRegion (SMBP, PCI_Config, 0x40, 0xC0)
                Field (SMBP, DWordAcc, NoLock, Preserve)
                {
                        ,   2, 
                    I2CE,   1
                }

                OperationRegion (SMBE, PCI_Config, 0x04, 0x02)
                Field (SMBE, AnyAcc, NoLock, Preserve)
                {
                    IOSE,   1
                }

                OperationRegion (SMBI, SystemIO, 0x5000, 0x10)
                Field (SMBI, ByteAcc, NoLock, Preserve)
                {
                    HSTS,   8, 
                    Offset (0x02), 
                    HCON,   8, 
                    HCOM,   8, 
                    TXSA,   8, 
                    DAT0,   8, 
                    DAT1,   8, 
                    HBDR,   8, 
                    PECR,   8, 
                    RXSA,   8, 
                    SDAT,   16
                }

                Name (SBOK, Zero)
                Method (ENAB, 0, NotSerialized)
                {
                    IOSE = One
                    SBOK = One
                }

                Method (DISB, 0, NotSerialized)
                {
                    SBOK = Zero
                }

                Method (SSXB, 2, Serialized)
                {
                    If (STRT ())
                    {
                        Return (Zero)
                    }

                    I2CE = Zero
                    HSTS = 0xBF
                    TXSA = Arg0
                    HCOM = Arg1
                    HCON = 0x48
                    If (COMP ())
                    {
                        HSTS |= 0xFF
                        Return (One)
                    }

                    Return (Zero)
                }

                Method (SRXB, 1, Serialized)
                {
                    If (STRT ())
                    {
                        Return (0xFFFF)
                    }

                    I2CE = Zero
                    HSTS = 0xBF
                    TXSA = (Arg0 | One)
                    HCON = 0x44
                    If (COMP ())
                    {
                        HSTS |= 0xFF
                        Return (DAT0) /* \_SB_.PCI0.SBUS.DAT0 */
                    }

                    Return (0xFFFF)
                }

                Method (SWRB, 3, Serialized)
                {
                    If (STRT ())
                    {
                        Return (Zero)
                    }

                    I2CE = Zero
                    HSTS = 0xBF
                    TXSA = Arg0
                    HCOM = Arg1
                    DAT0 = Arg2
                    HCON = 0x48
                    If (COMP ())
                    {
                        HSTS |= 0xFF
                        Return (One)
                    }

                    Return (Zero)
                }

                Method (SRDB, 2, Serialized)
                {
                    If (STRT ())
                    {
                        Return (0xFFFF)
                    }

                    I2CE = Zero
                    HSTS = 0xBF
                    TXSA = (Arg0 | One)
                    HCOM = Arg1
                    HCON = 0x48
                    If (COMP ())
                    {
                        HSTS |= 0xFF
                        Return (DAT0) /* \_SB_.PCI0.SBUS.DAT0 */
                    }

                    Return (0xFFFF)
                }

                Method (SBLW, 4, Serialized)
                {
                    If (STRT ())
                    {
                        Return (Zero)
                    }

                    I2CE = Arg3
                    HSTS = 0xBF
                    TXSA = Arg0
                    HCOM = Arg1
                    DAT0 = SizeOf (Arg2)
                    Local1 = Zero
                    HBDR = DerefOf (Arg2 [Zero])
                    HCON = 0x54
                    While ((SizeOf (Arg2) > Local1))
                    {
                        Local0 = 0x0FA0
                        While ((!(HSTS & 0x80) && Local0))
                        {
                            Local0--
                            Stall (0x32)
                        }

                        If (!Local0)
                        {
                            KILL ()
                            Return (Zero)
                        }

                        HSTS = 0x80
                        Local1++
                        If ((SizeOf (Arg2) > Local1))
                        {
                            HBDR = DerefOf (Arg2 [Local1])
                        }
                    }

                    If (COMP ())
                    {
                        HSTS |= 0xFF
                        Return (One)
                    }

                    Return (Zero)
                }

                Method (SBLR, 3, Serialized)
                {
                    Name (TBUF, Buffer (0x0100){})
                    If (STRT ())
                    {
                        Return (Zero)
                    }

                    I2CE = Arg2
                    HSTS = 0xBF
                    TXSA = (Arg0 | One)
                    HCOM = Arg1
                    HCON = 0x54
                    Local0 = 0x0FA0
                    While ((!(HSTS & 0x80) && Local0))
                    {
                        Local0--
                        Stall (0x32)
                    }

                    If (!Local0)
                    {
                        KILL ()
                        Return (Zero)
                    }

                    TBUF [Zero] = DAT0 /* \_SB_.PCI0.SBUS.DAT0 */
                    HSTS = 0x80
                    Local1 = One
                    While ((Local1 < DerefOf (TBUF [Zero])))
                    {
                        Local0 = 0x0FA0
                        While ((!(HSTS & 0x80) && Local0))
                        {
                            Local0--
                            Stall (0x32)
                        }

                        If (!Local0)
                        {
                            KILL ()
                            Return (Zero)
                        }

                        TBUF [Local1] = HBDR /* \_SB_.PCI0.SBUS.HBDR */
                        HSTS = 0x80
                        Local1++
                    }

                    If (COMP ())
                    {
                        HSTS |= 0xFF
                        Return (TBUF) /* \_SB_.PCI0.SBUS.SBLR.TBUF */
                    }

                    Return (Zero)
                }

                Method (STRT, 0, Serialized)
                {
                    Local0 = 0xC8
                    While (Local0)
                    {
                        If ((HSTS & 0x40))
                        {
                            Local0--
                            Sleep (One)
                            If ((Local0 == Zero))
                            {
                                Return (One)
                            }
                        }
                        Else
                        {
                            Local0 = Zero
                        }
                    }

                    Local0 = 0x0FA0
                    While (Local0)
                    {
                        If ((HSTS & One))
                        {
                            Local0--
                            Stall (0x32)
                            If ((Local0 == Zero))
                            {
                                KILL ()
                            }
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }

                    Return (One)
                }

                Method (COMP, 0, Serialized)
                {
                    Local0 = 0x0FA0
                    While (Local0)
                    {
                        If ((HSTS & 0x02))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Local0--
                            Stall (0x32)
                            If ((Local0 == Zero))
                            {
                                KILL ()
                            }
                        }
                    }

                    Return (Zero)
                }

                Method (KILL, 0, Serialized)
                {
                    HCON |= 0x02
                    HSTS |= 0xFF
                }

                Device (BUS0)
                {
                    Name (_CID, "smbus")  // _CID: Compatible ID
                    Name (_ADR, Zero)  // _ADR: Address
                    Device (MKY0)
                    {
                        Name (_ADR, Zero)  // _ADR: Address
                        Name (_CID, "mikey")  // _CID: Compatible ID
                        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                        {
                            Local0 = Package (0x07)
                                {
                                    "refnum", 
                                    Zero, 
                                    "address", 
                                    0x39, 
                                    "device-id", 
                                    0x0CCB, 
                                    Buffer (One)
                                    {
                                         0x00                                             // .
                                    }
                                }
                            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                            Return (Local0)
                        }

                        Method (H1EN, 1, Serialized)
                        {
                            If ((Arg0 <= One))
                            {
                                If ((Arg0 == One))
                                {
                                    GL04 |= 0x04
                                }
                                Else
                                {
                                    GL04 &= 0xFB
                                }
                            }
                        }

                        Method (H1IL, 0, Serialized)
                        {
                            Local0 = ((GL00 & 0x02) >> One)
                            Return (Local0)
                        }

                        Method (H1IP, 1, Serialized)
                        {
                            Local0 = Arg0
                            If ((Arg0 <= One))
                            {
                                Arg0 = ~Arg0
                                GI01 = Arg0
                            }
                        }

                        Name (H1IN, 0x11)
                        Scope (\_GPE)
                        {
                            Method (_L11, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
                            {
                                Notify (\_SB.PCI0.SBUS.BUS0.MKY0, 0x80) // Status Change
                            }
                        }

                        Method (P1IL, 0, Serialized)
                        {
                            Local0 = ((GL00 & 0x40) >> 0x06)
                            Return (Local0)
                        }

                        Method (P1IP, 1, Serialized)
                        {
                            If ((Arg0 <= One))
                            {
                                Arg0 = ~Arg0
                                GI06 = Arg0
                            }
                        }

                        Name (P1IN, 0x16)
                        Scope (\_GPE)
                        {
                            Method (_L16, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
                            {
                                GI06 ^= One
                                Notify (\_SB.PCI0.SBUS.BUS0.MKY0, 0x81) // Information Change
                            }
                        }
                    }

                    Device (DVL0)
                    {
                        Name (_ADR, 0x57)  // _ADR: Address
                        Name (_CID, "diagsvault")  // _CID: Compatible ID
                        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                        {
                            Local0 = Package (0x03)
                                {
                                    "address", 
                                    0x57, 
                                    Buffer (One)
                                    {
                                         0x00                                             // .
                                    }
                                }
                            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                            Return (Local0)
                        }
                    }
                }
            }

            Device (IOU2)
            {
                Name (_ADR, 0x00010000)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x04
                })
                OperationRegion (P1XS, PCI_Config, 0x40, 0xE0)
                Field (P1XS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0xA4), 
                        ,   15, 
                    PSP9,   1
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (GPIC)
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                Zero, 
                                Zero, 
                                0x10
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                One, 
                                Zero, 
                                0x11
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                Zero, 
                                0x12
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                Zero, 
                                0x13
                            }
                        })
                    }
                    Else
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                Zero, 
                                ^^LPCB.LNKA, 
                                Zero
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                One, 
                                ^^LPCB.LNKB, 
                                Zero
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                ^^LPCB.LNKC, 
                                Zero
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                ^^LPCB.LNKD, 
                                Zero
                            }
                        })
                    }
                }

                Device (I2PS)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                    {
                        If (GPIC)
                        {
                            Return (Package (0x08)
                            {
                                Package (0x04)
                                {
                                    0x0002FFFF, 
                                    Zero, 
                                    Zero, 
                                    0x10
                                }, 

                                Package (0x04)
                                {
                                    0x0002FFFF, 
                                    One, 
                                    Zero, 
                                    0x11
                                }, 

                                Package (0x04)
                                {
                                    0x0002FFFF, 
                                    0x02, 
                                    Zero, 
                                    0x12
                                }, 

                                Package (0x04)
                                {
                                    0x0002FFFF, 
                                    0x03, 
                                    Zero, 
                                    0x13
                                }, 

                                Package (0x04)
                                {
                                    0x0004FFFF, 
                                    Zero, 
                                    Zero, 
                                    0x11
                                }, 

                                Package (0x04)
                                {
                                    0x0004FFFF, 
                                    One, 
                                    Zero, 
                                    0x12
                                }, 

                                Package (0x04)
                                {
                                    0x0004FFFF, 
                                    0x02, 
                                    Zero, 
                                    0x13
                                }, 

                                Package (0x04)
                                {
                                    0x0004FFFF, 
                                    0x03, 
                                    Zero, 
                                    0x10
                                }
                            })
                        }
                        Else
                        {
                            Return (Package (0x08)
                            {
                                Package (0x04)
                                {
                                    0x0002FFFF, 
                                    Zero, 
                                    ^^^LPCB.LNKA, 
                                    Zero
                                }, 

                                Package (0x04)
                                {
                                    0x0002FFFF, 
                                    One, 
                                    ^^^LPCB.LNKB, 
                                    Zero
                                }, 

                                Package (0x04)
                                {
                                    0x0002FFFF, 
                                    0x02, 
                                    ^^^LPCB.LNKC, 
                                    Zero
                                }, 

                                Package (0x04)
                                {
                                    0x0002FFFF, 
                                    0x03, 
                                    ^^^LPCB.LNKD, 
                                    Zero
                                }, 

                                Package (0x04)
                                {
                                    0x0004FFFF, 
                                    Zero, 
                                    ^^^LPCB.LNKB, 
                                    Zero
                                }, 

                                Package (0x04)
                                {
                                    0x0004FFFF, 
                                    One, 
                                    ^^^LPCB.LNKC, 
                                    Zero
                                }, 

                                Package (0x04)
                                {
                                    0x0004FFFF, 
                                    0x02, 
                                    ^^^LPCB.LNKD, 
                                    Zero
                                }, 

                                Package (0x04)
                                {
                                    0x0004FFFF, 
                                    0x03, 
                                    ^^^LPCB.LNKA, 
                                    Zero
                                }
                            })
                        }
                    }

                    Device (PPB2)
                    {
                        Name (_ADR, 0x00020000)  // _ADR: Address
                        Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                        {
                            0x09, 
                            0x04
                        })
                        Device (PEG0)
                        {
                            Name (_ADR, Zero)  // _ADR: Address
                            Name (_SUN, 0x03)  // _SUN: Slot User Number
                            Device (PEGP)
                            {
                                Name (_ADR, Zero)  // _ADR: Address
                                Device (GFX0)
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

                                        Return (Package (0x1E)
                                        {
                                            "AAPL,slot-name", 
                                            Buffer (0x0D)
                                            {
                                                "Slot-3@5,0,0"
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

                                            "revision-id", 
                                            Buffer (One)
                                            {
                                                 0xE7                                             // .
                                            }, 

                                            "compatible", 
                                            Package (0x04)
                                            {
                                                "pci1002:67ef", 
                                                "pci1da2:e366", 
                                                "pciclass,030000", 
                                                "GFX1"
                                            }, 

                                            "device-id", 
                                            Buffer (0x04)
                                            {
                                                 0xEF, 0x67, 0x00, 0x00                           // .g..
                                            }, 

                                            "model", 
                                            Buffer (0x0E)
                                            {
                                                "Radeon RX 580"
                                            }, 

                                            "hda-gfx", 
                                            Buffer (0x0A)
                                            {
                                                "onboard-2"
                                            }, 

                                            "subsystem-id", 
                                            Buffer (0x04)
                                            {
                                                 0x66, 0xE3, 0x00, 0x00                           // f...
                                            }, 

                                            "subsystem-vendor-id", 
                                            Buffer (0x04)
                                            {
                                                 0xA2, 0x1D, 0x00, 0x00                           // ....
                                            }, 

                                            "@0,AAPL,boot-display", 
                                            Buffer (One)
                                            {
                                                 0x01                                             // .
                                            }, 

                                            "@1,AAPL,boot-display", 
                                            Buffer (One)
                                            {
                                                 0x00                                             // .
                                            }, 

                                            "CFG,CFG_USE_AGDC", 
                                            Buffer (One)
                                            {
                                                 0x00                                             // .
                                            }, 

                                            "CFG,CFG_FB_LIMIT", 
                                            Buffer (One)
                                            {
                                                 0x02                                             // .
                                            }, 

                                            "PP,MM_EnableHEVCEncode", 
                                            Buffer (One)
                                            {
                                                 0x00                                             // .
                                            }
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
                                            Buffer (0x0D)
                                            {
                                                "Slot-3@5,0,1"
                                            }, 

                                            "model", 
                                            Buffer (0x13)
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

                        Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                        {
                            If (GPIC)
                            {
                                Return (Package (0x04)
                                {
                                    Package (0x04)
                                    {
                                        0xFFFF, 
                                        Zero, 
                                        Zero, 
                                        0x12
                                    }, 

                                    Package (0x04)
                                    {
                                        0xFFFF, 
                                        One, 
                                        Zero, 
                                        0x13
                                    }, 

                                    Package (0x04)
                                    {
                                        0xFFFF, 
                                        0x02, 
                                        Zero, 
                                        0x10
                                    }, 

                                    Package (0x04)
                                    {
                                        0xFFFF, 
                                        0x03, 
                                        Zero, 
                                        0x11
                                    }
                                })
                            }
                            Else
                            {
                                Return (Package (0x04)
                                {
                                    Package (0x04)
                                    {
                                        0xFFFF, 
                                        Zero, 
                                        ^^^^LPCB.LNKC, 
                                        Zero
                                    }, 

                                    Package (0x04)
                                    {
                                        0xFFFF, 
                                        One, 
                                        ^^^^LPCB.LNKD, 
                                        Zero
                                    }, 

                                    Package (0x04)
                                    {
                                        0xFFFF, 
                                        0x02, 
                                        ^^^^LPCB.LNKA, 
                                        Zero
                                    }, 

                                    Package (0x04)
                                    {
                                        0xFFFF, 
                                        0x03, 
                                        ^^^^LPCB.LNKB, 
                                        Zero
                                    }
                                })
                            }
                        }
                    }

                    Device (PPB4)
                    {
                        Name (_ADR, 0x00040000)  // _ADR: Address
                        Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                        {
                            0x09, 
                            0x04
                        })
                        Device (PXS4)
                        {
                            Name (_ADR, 0xFFFF)  // _ADR: Address
                            Name (_SUN, 0x04)  // _SUN: Slot User Number
                        }

                        Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                        {
                            If (GPIC)
                            {
                                Return (Package (0x04)
                                {
                                    Package (0x04)
                                    {
                                        0xFFFF, 
                                        Zero, 
                                        Zero, 
                                        0x10
                                    }, 

                                    Package (0x04)
                                    {
                                        0xFFFF, 
                                        One, 
                                        Zero, 
                                        0x11
                                    }, 

                                    Package (0x04)
                                    {
                                        0xFFFF, 
                                        0x02, 
                                        Zero, 
                                        0x12
                                    }, 

                                    Package (0x04)
                                    {
                                        0xFFFF, 
                                        0x03, 
                                        Zero, 
                                        0x13
                                    }
                                })
                            }
                            Else
                            {
                                Return (Package (0x04)
                                {
                                    Package (0x04)
                                    {
                                        0xFFFF, 
                                        Zero, 
                                        ^^^^LPCB.LNKA, 
                                        Zero
                                    }, 

                                    Package (0x04)
                                    {
                                        0xFFFF, 
                                        One, 
                                        ^^^^LPCB.LNKB, 
                                        Zero
                                    }, 

                                    Package (0x04)
                                    {
                                        0xFFFF, 
                                        0x02, 
                                        ^^^^LPCB.LNKC, 
                                        Zero
                                    }, 

                                    Package (0x04)
                                    {
                                        0xFFFF, 
                                        0x03, 
                                        ^^^^LPCB.LNKD, 
                                        Zero
                                    }
                                })
                            }
                        }
                    }
                }
            }

            Device (IOU0)
            {
                Name (_ADR, 0x00030000)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x04
                })
                OperationRegion (P3XS, PCI_Config, 0x40, 0xE0)
                Field (P3XS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0xA4), 
                        ,   15, 
                    PSP8,   1
                }

                Device (PXS1)
                {
                    Name (_ADR, 0xFFFF)  // _ADR: Address
                    Name (_SUN, 0x02)  // _SUN: Slot User Number
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (GPIC)
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                Zero, 
                                Zero, 
                                0x10
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                One, 
                                Zero, 
                                0x11
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                Zero, 
                                0x12
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                Zero, 
                                0x13
                            }
                        })
                    }
                    Else
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                Zero, 
                                ^^LPCB.LNKA, 
                                Zero
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                One, 
                                ^^LPCB.LNKB, 
                                Zero
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                ^^LPCB.LNKC, 
                                Zero
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                ^^LPCB.LNKD, 
                                Zero
                            }
                        })
                    }
                }
            }

            Device (IOU1)
            {
                Name (_ADR, 0x00070000)  // _ADR: Address
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x09, 
                    0x04
                })
                OperationRegion (P7XS, PCI_Config, 0x40, 0xE0)
                Field (P7XS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0xA4), 
                        ,   15, 
                    PSP7,   1
                }

                Device (PXS2)
                {
                    Name (_ADR, 0xFFFF)  // _ADR: Address
                    Name (_SUN, 0x02)  // _SUN: Slot User Number
                }

                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (GPIC)
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                Zero, 
                                Zero, 
                                0x10
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                One, 
                                Zero, 
                                0x11
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                Zero, 
                                0x12
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                Zero, 
                                0x13
                            }
                        })
                    }
                    Else
                    {
                        Return (Package (0x04)
                        {
                            Package (0x04)
                            {
                                0xFFFF, 
                                Zero, 
                                ^^LPCB.LNKA, 
                                Zero
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                One, 
                                ^^LPCB.LNKB, 
                                Zero
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x02, 
                                ^^LPCB.LNKC, 
                                Zero
                            }, 

                            Package (0x04)
                            {
                                0xFFFF, 
                                0x03, 
                                ^^LPCB.LNKD, 
                                Zero
                            }
                        })
                    }
                }
            }
        }
    }
}

