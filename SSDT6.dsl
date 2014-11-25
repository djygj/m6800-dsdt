/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20120420-32 [Apr 20 2012]
 * Copyright (c) 2000 - 2012 Intel Corporation
 * 
 * Disassembly of SSDT6.aml, Wed Nov 26 01:50:44 2014
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000B25 (2853)
 *     Revision         0x01
 *     Checksum         0x53
 *     OEM ID           "AmdRef"
 *     OEM Table ID     "AmdTabl"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120711 (538052369)
 */

DefinitionBlock ("SSDT6.aml", "SSDT", 1, "AmdRef", "AmdTabl", 0x00001000)
{
    External (AMDA, FieldUnitObj)
    External (BRTL, FieldUnitObj)
    External (BBRD, MethodObj)    // 2 Arguments
    External (GENS, MethodObj)    // 3 Arguments
    External (OSID, MethodObj)    // 0 Arguments
    External (OIDE, MethodObj)    // 0 Arguments
    External (VDP2, MethodObj)    // 2 Arguments
    External (ECGB, MethodObj)    // 0 Arguments
    External (VDP1, MethodObj)    // 2 Arguments
    External (VDP8, BuffFieldObj)
    External (\_SB_.LID0._LID, MethodObj)    // 0 Arguments
    External (\_SB_.PCI0.PEG0.PEGP, DeviceObj)

    Scope (\_SB.PCI0.PEG0.PEGP)
    {
        Method (_DOS, 1, NotSerialized)
        {
            Store (Arg0, VDP8)
            VDP1 (0x01, VDP8)
        }

        Method (_DOD, 0, NotSerialized)
        {
            If (LEqual (ECGB (), 0x01))
            {
                Return (Package (0x08)
                {
                    0x0100, 
                    0x0110, 
                    0x0210, 
                    0x0220, 
                    0x0230, 
                    0x0240, 
                    0x0250, 
                    0x0260
                })
            }
            Else
            {
                Return (Package (0x08)
                {
                    0x0100, 
                    0x0110, 
                    0x0210, 
                    0x0220, 
                    0x0230, 
                    0x0240, 
                    0x0250, 
                    0x0260
                })
            }
        }

        Device (CRT)
        {
            Method (_ADR, 0, NotSerialized)
            {
                Return (0x0100)
            }

            Method (_DCS, 0, NotSerialized)
            {
                Store (VDP1 (0x02, 0x02), Local0)
                Return (Local0)
            }

            Method (_DGS, 0, NotSerialized)
            {
                Store (VDP1 (0x03, 0x02), Local0)
                Return (Local0)
            }

            Method (_DSS, 1, NotSerialized)
            {
                VDP2 (0x02, Arg0)
            }
        }

        Device (LCD)
        {
            Method (_ADR, 0, NotSerialized)
            {
                If (LEqual (ECGB (), 0x01))
                {
                    Return (0x0110)
                }
                Else
                {
                    Return (0x0110)
                }
            }

            Method (_DCS, 0, NotSerialized)
            {
                Store (VDP1 (0x02, 0x01), Local0)
                Return (Local0)
            }

            Method (_DGS, 0, NotSerialized)
            {
                Store (VDP1 (0x03, 0x01), Local0)
                Return (Local0)
            }

            Method (_DSS, 1, NotSerialized)
            {
                VDP2 (0x01, Arg0)
            }

            Name (BRT0, 0x64)
            Name (DBCL, Package (0x12) {})
            Method (_BCL, 0, Serialized)
            {
                If (LEqual (OIDE (), 0x01))
                {
                    OperationRegion (NVID, SystemMemory, 0xF8100000, 0x02)
                    Field (NVID, ByteAcc, NoLock, Preserve)
                    {
                        VVID,   16
                    }

                    If (LEqual (VVID, 0x10DE))
                    {
                        Return (Package (0x67)
                        {
                            0x50, 
                            0x32, 
                            0x00, 
                            0x01, 
                            0x02, 
                            0x03, 
                            0x04, 
                            0x05, 
                            0x06, 
                            0x07, 
                            0x08, 
                            0x09, 
                            0x0A, 
                            0x0B, 
                            0x0C, 
                            0x0D, 
                            0x0E, 
                            0x0F, 
                            0x10, 
                            0x11, 
                            0x12, 
                            0x13, 
                            0x14, 
                            0x15, 
                            0x16, 
                            0x17, 
                            0x18, 
                            0x19, 
                            0x1A, 
                            0x1B, 
                            0x1C, 
                            0x1D, 
                            0x1E, 
                            0x1F, 
                            0x20, 
                            0x21, 
                            0x22, 
                            0x23, 
                            0x24, 
                            0x25, 
                            0x26, 
                            0x27, 
                            0x28, 
                            0x29, 
                            0x2A, 
                            0x2B, 
                            0x2C, 
                            0x2D, 
                            0x2E, 
                            0x2F, 
                            0x30, 
                            0x31, 
                            0x32, 
                            0x33, 
                            0x34, 
                            0x35, 
                            0x36, 
                            0x37, 
                            0x38, 
                            0x39, 
                            0x3A, 
                            0x3B, 
                            0x3C, 
                            0x3D, 
                            0x3E, 
                            0x3F, 
                            0x40, 
                            0x41, 
                            0x42, 
                            0x43, 
                            0x44, 
                            0x45, 
                            0x46, 
                            0x47, 
                            0x48, 
                            0x49, 
                            0x4A, 
                            0x4B, 
                            0x4C, 
                            0x4D, 
                            0x4E, 
                            0x4F, 
                            0x50, 
                            0x51, 
                            0x52, 
                            0x53, 
                            0x54, 
                            0x55, 
                            0x56, 
                            0x57, 
                            0x58, 
                            0x59, 
                            0x5A, 
                            0x5B, 
                            0x5C, 
                            0x5D, 
                            0x5E, 
                            0x5F, 
                            0x60, 
                            0x61, 
                            0x62, 
                            0x63, 
                            0x64
                        })
                    }
                    Else
                    {
                        Return (Package (0x67)
                        {
                            0x50, 
                            0x32, 
                            0x05, 
                            0x05, 
                            0x05, 
                            0x05, 
                            0x05, 
                            0x05, 
                            0x06, 
                            0x07, 
                            0x08, 
                            0x09, 
                            0x0A, 
                            0x0B, 
                            0x0C, 
                            0x0D, 
                            0x0E, 
                            0x0F, 
                            0x10, 
                            0x11, 
                            0x12, 
                            0x13, 
                            0x14, 
                            0x15, 
                            0x16, 
                            0x17, 
                            0x18, 
                            0x19, 
                            0x1A, 
                            0x1B, 
                            0x1C, 
                            0x1D, 
                            0x1E, 
                            0x1F, 
                            0x20, 
                            0x21, 
                            0x22, 
                            0x23, 
                            0x24, 
                            0x25, 
                            0x26, 
                            0x27, 
                            0x28, 
                            0x29, 
                            0x2A, 
                            0x2B, 
                            0x2C, 
                            0x2D, 
                            0x2E, 
                            0x2F, 
                            0x30, 
                            0x31, 
                            0x32, 
                            0x33, 
                            0x34, 
                            0x35, 
                            0x36, 
                            0x37, 
                            0x38, 
                            0x39, 
                            0x3A, 
                            0x3B, 
                            0x3C, 
                            0x3D, 
                            0x3E, 
                            0x3F, 
                            0x40, 
                            0x41, 
                            0x42, 
                            0x43, 
                            0x44, 
                            0x45, 
                            0x46, 
                            0x47, 
                            0x48, 
                            0x49, 
                            0x4A, 
                            0x4B, 
                            0x4C, 
                            0x4D, 
                            0x4E, 
                            0x4F, 
                            0x50, 
                            0x51, 
                            0x52, 
                            0x53, 
                            0x54, 
                            0x55, 
                            0x56, 
                            0x57, 
                            0x58, 
                            0x59, 
                            0x5A, 
                            0x5B, 
                            0x5C, 
                            0x5D, 
                            0x5E, 
                            0x5F, 
                            0x60, 
                            0x61, 
                            0x62, 
                            0x63, 
                            0x64
                        })
                    }
                }
                Else
                {
                    If (LEqual (OSID (), 0x40))
                    {
                        Return (Package (0x67)
                        {
                            0x50, 
                            0x32, 
                            0x05, 
                            0x05, 
                            0x05, 
                            0x05, 
                            0x05, 
                            0x05, 
                            0x06, 
                            0x07, 
                            0x08, 
                            0x09, 
                            0x0A, 
                            0x0B, 
                            0x0C, 
                            0x0D, 
                            0x0E, 
                            0x0F, 
                            0x10, 
                            0x11, 
                            0x12, 
                            0x13, 
                            0x14, 
                            0x15, 
                            0x16, 
                            0x17, 
                            0x18, 
                            0x19, 
                            0x1A, 
                            0x1B, 
                            0x1C, 
                            0x1D, 
                            0x1E, 
                            0x1F, 
                            0x20, 
                            0x21, 
                            0x22, 
                            0x23, 
                            0x24, 
                            0x25, 
                            0x26, 
                            0x27, 
                            0x28, 
                            0x29, 
                            0x2A, 
                            0x2B, 
                            0x2C, 
                            0x2D, 
                            0x2E, 
                            0x2F, 
                            0x30, 
                            0x31, 
                            0x32, 
                            0x33, 
                            0x34, 
                            0x35, 
                            0x36, 
                            0x37, 
                            0x38, 
                            0x39, 
                            0x3A, 
                            0x3B, 
                            0x3C, 
                            0x3D, 
                            0x3E, 
                            0x3F, 
                            0x40, 
                            0x41, 
                            0x42, 
                            0x43, 
                            0x44, 
                            0x45, 
                            0x46, 
                            0x47, 
                            0x48, 
                            0x49, 
                            0x4A, 
                            0x4B, 
                            0x4C, 
                            0x4D, 
                            0x4E, 
                            0x4F, 
                            0x50, 
                            0x51, 
                            0x52, 
                            0x53, 
                            0x54, 
                            0x55, 
                            0x56, 
                            0x57, 
                            0x58, 
                            0x59, 
                            0x5A, 
                            0x5B, 
                            0x5C, 
                            0x5D, 
                            0x5E, 
                            0x5F, 
                            0x60, 
                            0x61, 
                            0x62, 
                            0x63, 
                            0x64
                        })
                    }

                    Name (BRT1, Buffer (0x12) {})
                    CreateByteField (BRT1, 0x00, BRT2)
                    Store (0x01, BRT2)
                    Store (GENS (0x09, BRT1, SizeOf (BRT1)), Local2)
                    Store (0x00, Local0)
                    Store (0x12, Local1)
                    While (LLess (Local0, Local1))
                    {
                        Store (BBRD (Local2, Local0), Local3)
                        Store (Local3, Index (DBCL, Local0))
                        Increment (Local0)
                    }

                    Return (DBCL)
                }
            }

            Method (_BCM, 1, Serialized)
            {
                If (LGreater (OSID (), 0x10))
                {
                    OperationRegion (ATID, SystemMemory, 0xF8100000, 0x02)
                    Field (ATID, ByteAcc, NoLock, Preserve)
                    {
                        VVID,   16
                    }

                    If (LEqual (VVID, 0x1002))
                    {
                        Store (Arg0, BRTL)
                        \_SB.PCI0.PEG0.PEGP.AFN7 (Arg0)
                    }
                }

                Name (BRT3, Buffer (0x02) {})
                CreateByteField (BRT3, 0x00, BRT4)
                CreateByteField (BRT3, 0x01, BRT5)
                Store (0x02, BRT4)
                Store (Arg0, BRT5)
                Store (Arg0, BRT0)
                GENS (0x09, BRT3, SizeOf (BRT3))
            }

            Method (_BQC, 0, Serialized)
            {
                Store (GENS (0x09, 0x03, 0x00), Local0)
                Store (Local0, BRT0)
                Return (Local0)
            }
        }

        Device (DVI)
        {
            Method (_ADR, 0, NotSerialized)
            {
                Return (0x0210)
            }

            Method (_DCS, 0, NotSerialized)
            {
                Store (VDP1 (0x02, 0x08), Local0)
                Return (Local0)
            }

            Method (_DGS, 0, NotSerialized)
            {
                Store (VDP1 (0x03, 0x08), Local0)
                Return (Local0)
            }

            Method (_DSS, 1, NotSerialized)
            {
                VDP2 (0x08, Arg0)
            }
        }

        Device (DVI2)
        {
            Method (_ADR, 0, NotSerialized)
            {
                Return (0x0220)
            }

            Method (_DCS, 0, NotSerialized)
            {
                Store (VDP1 (0x02, 0x10), Local0)
                Return (Local0)
            }

            Method (_DGS, 0, NotSerialized)
            {
                Store (VDP1 (0x03, 0x10), Local0)
                Return (Local0)
            }

            Method (_DSS, 1, NotSerialized)
            {
                VDP2 (0x10, Arg0)
            }
        }

        Device (DVI3)
        {
            Method (_ADR, 0, NotSerialized)
            {
                Return (0x0250)
            }

            Method (_DCS, 0, NotSerialized)
            {
                Store (VDP1 (0x02, 0x80), Local0)
                Return (Local0)
            }

            Method (_DGS, 0, NotSerialized)
            {
                Store (VDP1 (0x03, 0x80), Local0)
                Return (Local0)
            }

            Method (_DSS, 1, NotSerialized)
            {
                VDP2 (0x80, Arg0)
            }
        }

        Device (DP)
        {
            Method (_ADR, 0, NotSerialized)
            {
                Return (0x0230)
            }

            Method (_DCS, 0, NotSerialized)
            {
                Store (VDP1 (0x02, 0x20), Local0)
                Return (Local0)
            }

            Method (_DGS, 0, NotSerialized)
            {
                Store (VDP1 (0x03, 0x20), Local0)
                Return (Local0)
            }

            Method (_DSS, 1, NotSerialized)
            {
                VDP2 (0x20, Arg0)
            }
        }

        Device (DP2)
        {
            Method (_ADR, 0, NotSerialized)
            {
                Return (0x0240)
            }

            Method (_DCS, 0, NotSerialized)
            {
                Store (VDP1 (0x02, 0x40), Local0)
                Return (Local0)
            }

            Method (_DGS, 0, NotSerialized)
            {
                Store (VDP1 (0x03, 0x40), Local0)
                Return (Local0)
            }

            Method (_DSS, 1, NotSerialized)
            {
                VDP2 (0x40, Arg0)
            }
        }

        Device (DP3)
        {
            Method (_ADR, 0, NotSerialized)
            {
                Return (0x0260)
            }

            Method (_DCS, 0, NotSerialized)
            {
                Store (VDP1 (0x02, 0x0100), Local0)
                And (Local0, 0xFFFF, Local0)
                Return (Local0)
            }

            Method (_DGS, 0, NotSerialized)
            {
                Store (VDP1 (0x03, 0x0100), Local0)
                And (Local0, 0xFFFF, Local0)
                Return (Local0)
            }

            Method (_DSS, 1, NotSerialized)
            {
                VDP2 (0x0100, Arg0)
            }
        }

        OperationRegion (AMDM, SystemMemory, AMDA, 0x0400)
        Field (AMDM, AnyAcc, NoLock, Preserve)
        {
            AASG,   128, 
            AASZ,   32, 
            AAVR,   32, 
            AAHO,   32, 
            Offset (0x100), 
            GACD,   16, 
            GATD,   16
        }

        Name (ATIB, Buffer (0x0100) {})
        Name (PSBR, Buffer (0x04)
        {
             0x00, 0x00, 0x00, 0x00
        })
        Name (MSKN, 0x00)
        Name (STHG, 0x00)
        Name (STHI, 0x00)
        Method (ATIF, 2, Serialized)
        {
            If (LEqual (Arg0, 0x00))
            {
                Return (AF00 ())
            }

            If (LEqual (Arg0, 0x01))
            {
                Return (AF01 ())
            }

            If (LEqual (Arg0, 0x02))
            {
                Return (AF02 ())
            }

            If (LEqual (Arg0, 0x03))
            {
                CreateWordField (Arg1, 0x02, SELD)
                CreateWordField (Arg1, 0x04, COND)
                Return (AF03 (SELD, COND))
            }

            If (LEqual (Arg0, 0x04))
            {
                Return (AF04 ())
            }
            Else
            {
                CreateWordField (ATIB, 0x00, SSZE)
                CreateWordField (ATIB, 0x02, VERN)
                CreateDWordField (ATIB, 0x04, NMSK)
                CreateDWordField (ATIB, 0x08, SFUN)
                Store (0x00, SSZE)
                Store (0x00, VERN)
                Store (0x00, NMSK)
                Store (0x00, SFUN)
                Return (ATIB)
            }
        }

        Method (AF00, 0, NotSerialized)
        {
            CreateWordField (ATIB, 0x00, SSZE)
            CreateWordField (ATIB, 0x02, VERN)
            CreateDWordField (ATIB, 0x04, NMSK)
            CreateDWordField (ATIB, 0x08, SFUN)
            Store (0x0C, SSZE)
            Store (0x01, VERN)
            Store (0x9D, NMSK)
            Store (NMSK, MSKN)
            Store (0x0F, SFUN)
            Return (ATIB)
        }

        Method (AF01, 0, NotSerialized)
        {
            CreateWordField (ATIB, 0x00, SSZE)
            CreateDWordField (ATIB, 0x02, VMSK)
            CreateDWordField (ATIB, 0x06, FLGS)
            Store (0x07, VMSK)
            Store (0x0B, SSZE)
            Store (0x06, FLGS)
            CreateDWordField (ATIB, 0x0A, NTFY)
            Store (0xD9, NTFY)
            Return (ATIB)
        }

        Method (AF02, 0, NotSerialized)
        {
            CreateBitField (PSBR, 0x00, PDSW)
            CreateBitField (PSBR, 0x01, PEXM)
            CreateBitField (PSBR, 0x02, PTHR)
            CreateBitField (PSBR, 0x03, PFPS)
            CreateBitField (PSBR, 0x04, PSPS)
            CreateBitField (PSBR, 0x05, PDCC)
            CreateBitField (PSBR, 0x06, PXPS)
            CreateBitField (PSBR, 0x07, PBRT)
            CreateWordField (ATIB, 0x00, SSZE)
            CreateDWordField (ATIB, 0x02, PSBI)
            CreateByteField (ATIB, 0x06, EXPM)
            CreateByteField (ATIB, 0x07, THRM)
            CreateByteField (ATIB, 0x08, THID)
            CreateByteField (ATIB, 0x09, FPWR)
            CreateByteField (ATIB, 0x0A, FPID)
            CreateByteField (ATIB, 0x0B, SPWR)
            CreateByteField (ATIB, 0x0C, F2BR)
            CreateWordField (ATIB, 0x0D, BKLT)
            Store (0x0D, SSZE)
            Store (PSBR, PSBI)
            If (PDSW)
            {
                Store (Zero, PDSW)
            }

            If (PTHR)
            {
                Store (STHG, THRM)
                Store (STHI, THID)
                Store (Zero, STHG)
                Store (Zero, STHI)
                Store (Zero, PTHR)
            }

            If (PBRT)
            {
                Store (BRTL, F2BR)
                Divide (Multiply (F2BR, 0xFF, BKLT), 0x64, , F2BR)
                Store (Zero, PBRT)
            }

            Return (ATIB)
        }

        Method (AF03, 2, NotSerialized)
        {
            Store (Arg0, \_SB.PCI0.PEG0.PEGP.GACD)
            Store (Arg1, \_SB.PCI0.PEG0.PEGP.GATD)
            CreateWordField (ATIB, 0x00, SSZE)
            CreateWordField (ATIB, 0x02, SSDP)
            Store (0x00, SSZE)
            Store (0x00, SSDP)
            Return (ATIB)
        }

        Method (AF04, 0, NotSerialized)
        {
            CreateWordField (ATIB, 0x00, SSZE)
            CreateByteField (ATIB, 0x02, LIDS)
            Store (0x03, SSZE)
            Store (\_SB.LID0._LID (), Local0)
            If (Local0)
            {
                Store (0x00, LIDS)
            }
            Else
            {
                Store (0x01, LIDS)
            }

            Return (ATIB)
        }

        Method (AFN0, 0, NotSerialized)
        {
            CreateBitField (PSBR, 0x00, PDSW)
            Store (One, PDSW)
            Notify (\_SB.PCI0.PEG0.PEGP, 0x80)
        }

        Method (AFN1, 1, NotSerialized)
        {
            If (And (MSKN, 0x04))
            {
                Store (Zero, STHG)
                Store (Arg0, STHI)
                CreateBitField (PSBR, 0x02, PTHR)
                Store (One, PTHR)
                Notify (\_SB.PCI0.PEG0.PEGP, 0xD9)
            }
        }

        Method (AFN7, 1, Serialized)
        {
            If (And (MSKN, 0x80))
            {
                CreateBitField (PSBR, 0x07, PBRT)
                Store (One, PBRT)
                Store (Arg0, BRTL)
                Notify (\_SB.PCI0.PEG0.PEGP, 0xD9)
            }
        }
    }
}

