/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20120420-32 [Apr 20 2012]
 * Copyright (c) 2000 - 2012 Intel Corporation
 * 
 * Disassembly of SSDT5.aml, Wed Nov 26 01:50:44 2014
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000455 (1109)
 *     Revision         0x01
 *     Checksum         0xA7
 *     OEM ID           "SataRe"
 *     OEM Table ID     "SataTabl"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120711 (538052369)
 */

DefinitionBlock ("SSDT5.aml", "SSDT", 1, "SataRe", "SataTabl", 0x00001000)
{
    External (FHPP, IntObj)
    External (DSSP, IntObj)
    External (HFSE, FieldUnitObj)
    External (\_SB_.PCI0.SAT0, DeviceObj)

    Scope (\)
    {
        Name (STFE, Buffer (0x07)
        {
             0x10, 0x06, 0x00, 0x00, 0x00, 0x00, 0xEF
        })
        Name (STFD, Buffer (0x07)
        {
             0x90, 0x06, 0x00, 0x00, 0x00, 0x00, 0xEF
        })
        Name (FZTF, Buffer (0x07)
        {
             0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF5
        })
        Name (DCFL, Buffer (0x07)
        {
             0xC1, 0x00, 0x00, 0x00, 0x00, 0x00, 0xB1
        })
        Name (STFF, Buffer (0x07)
        {
             0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0x00
        })
        Name (SCBF, Buffer (0x1C) {})
        Name (CMDC, Zero)
        Method (GTFB, 2, Serialized)
        {
            Multiply (CMDC, 0x38, Local0)
            CreateField (SCBF, Local0, 0x38, CMDX)
            Multiply (CMDC, 0x07, Local0)
            CreateByteField (SCBF, Add (Local0, One), A001)
            Store (Arg0, CMDX)
            Store (Arg1, A001)
            Increment (CMDC)
        }
    }

    Scope (\_SB.PCI0.SAT0)
    {
        Name (REGF, One)
        Method (_REG, 2, NotSerialized)
        {
            If (LEqual (Arg0, 0x02))
            {
                Store (Arg1, REGF)
            }
        }

        Name (TMD0, Buffer (0x14) {})
        CreateDWordField (TMD0, Zero, PIO0)
        CreateDWordField (TMD0, 0x04, DMA0)
        CreateDWordField (TMD0, 0x08, PIO1)
        CreateDWordField (TMD0, 0x0C, DMA1)
        CreateDWordField (TMD0, 0x10, CHNF)
        Method (_GTM, 0, NotSerialized)
        {
            Store (0x78, PIO0)
            Store (0x14, DMA0)
            Store (0x78, PIO1)
            Store (0x14, DMA1)
            Or (CHNF, 0x05, CHNF)
            Return (TMD0)
        }

        Method (_STM, 3, NotSerialized)
        {
        }

        Device (SPT0)
        {
            Name (_ADR, 0xFFFF)
            Method (_SDD, 1, NotSerialized)
            {
                Name (FFS0, Buffer (0x07)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0x00
                })
                CreateByteField (FFS0, Zero, FF00)
                CreateByteField (FFS0, 0x06, FF06)
                If (LEqual (SizeOf (Arg0), 0x0200))
                {
                    If (LNotEqual (HFSE, Zero))
                    {
                        CreateWordField (Arg0, 0x0134, W154)
                        CreateWordField (Arg0, 0x0138, W156)
                        If (And (LEqual (W154, 0x1028), LEqual (And (W156, 0x4000), 
                            0x4000)))
                        {
                            If (LEqual (And (W156, 0x8000), Zero))
                            {
                                Store (0x5A, FF00)
                                Store (0xEF, FF06)
                            }
                        }
                    }
                }

                Store (FFS0, STFF)
            }

            Method (_GTF, 0, NotSerialized)
            {
                Store (Zero, CMDC)
                If (LOr (DSSP, FHPP))
                {
                    GTFB (STFD, 0x06)
                }
                Else
                {
                    GTFB (STFE, 0x06)
                }

                GTFB (FZTF, Zero)
                GTFB (DCFL, Zero)
                GTFB (STFF, Zero)
                Return (SCBF)
            }
        }

        Device (SPT1)
        {
            Name (_ADR, 0x0001FFFF)
            Method (_SDD, 1, NotSerialized)
            {
                Name (FFS0, Buffer (0x07)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0x00
                })
                CreateByteField (FFS0, Zero, FF00)
                CreateByteField (FFS0, 0x06, FF06)
                If (LEqual (SizeOf (Arg0), 0x0200))
                {
                    If (LNotEqual (HFSE, Zero))
                    {
                        CreateWordField (Arg0, 0x0134, W154)
                        CreateWordField (Arg0, 0x0138, W156)
                        If (And (LEqual (W154, 0x1028), LEqual (And (W156, 0x4000), 
                            0x4000)))
                        {
                            If (LEqual (And (W156, 0x8000), Zero))
                            {
                                Store (0x5A, FF00)
                                Store (0xEF, FF06)
                            }
                        }
                    }
                }

                Store (FFS0, STFF)
            }

            Method (_GTF, 0, NotSerialized)
            {
                Store (Zero, CMDC)
                If (LOr (DSSP, FHPP))
                {
                    GTFB (STFD, 0x06)
                }
                Else
                {
                    GTFB (STFE, 0x06)
                }

                GTFB (FZTF, Zero)
                GTFB (DCFL, Zero)
                GTFB (STFF, Zero)
                Return (SCBF)
            }
        }

        Device (SPT3)
        {
            Name (_ADR, 0x0003FFFF)
            Method (_GTF, 0, NotSerialized)
            {
                Store (Zero, CMDC)
                If (LOr (DSSP, FHPP))
                {
                    GTFB (STFD, 0x06)
                }
                Else
                {
                    GTFB (STFE, 0x06)
                }

                GTFB (FZTF, Zero)
                GTFB (DCFL, Zero)
                Return (SCBF)
            }
        }

        Device (SPT4)
        {
            Name (_ADR, 0x0004FFFF)
            Method (_GTF, 0, NotSerialized)
            {
                Store (Zero, CMDC)
                If (LOr (DSSP, FHPP))
                {
                    GTFB (STFD, 0x06)
                }
                Else
                {
                    GTFB (STFE, 0x06)
                }

                GTFB (FZTF, Zero)
                GTFB (DCFL, Zero)
                Return (SCBF)
            }
        }

        Device (SPT5)
        {
            Name (_ADR, 0x0005FFFF)
            Method (_GTF, 0, NotSerialized)
            {
                Store (Zero, CMDC)
                If (LOr (DSSP, FHPP))
                {
                    GTFB (STFD, 0x06)
                }
                Else
                {
                    GTFB (STFE, 0x06)
                }

                GTFB (FZTF, Zero)
                GTFB (DCFL, Zero)
                Return (SCBF)
            }
        }
    }
}

