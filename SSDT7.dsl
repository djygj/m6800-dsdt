/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20120420-32 [Apr 20 2012]
 * Copyright (c) 2000 - 2012 Intel Corporation
 * 
 * Disassembly of SSDT7.aml, Wed Nov 26 01:50:44 2014
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000003D3 (979)
 *     Revision         0x01
 *     Checksum         0xB3
 *     OEM ID           "PmRef"
 *     OEM Table ID     "Cpu0Cst"
 *     OEM Revision     0x00003001 (12289)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120711 (538052369)
 */

DefinitionBlock ("SSDT7.aml", "SSDT", 1, "PmRef", "Cpu0Cst", 0x00003001)
{
    External (CDMW, FieldUnitObj)
    External (C7MW, FieldUnitObj)
    External (C6MW, FieldUnitObj)
    External (C3MW, FieldUnitObj)
    External (PDC0, IntObj)
    External (CFGD, FieldUnitObj)
    External (CDLV, FieldUnitObj)
    External (CDPW, FieldUnitObj)
    External (CDLT, FieldUnitObj)
    External (C7LT, FieldUnitObj)
    External (C6LT, FieldUnitObj)
    External (C3LT, FieldUnitObj)
    External (\_PR_.CPU0, ProcessorObj)

    Scope (\_PR.CPU0)
    {
        Name (C1TM, Package (0x04)
        {
            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x00,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000000, // Address
                    ,)
            }, 

            One, 
            One, 
            0x03E8
        })
        Name (C3TM, Package (0x04)
        {
            ResourceTemplate ()
            {
                Register (SystemIO, 
                    0x08,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000001814, // Address
                    ,)
            }, 

            0x02, 
            Zero, 
            0x01F4
        })
        Name (C6TM, Package (0x04)
        {
            ResourceTemplate ()
            {
                Register (SystemIO, 
                    0x08,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000001815, // Address
                    ,)
            }, 

            0x02, 
            Zero, 
            0x015E
        })
        Name (C7TM, Package (0x04)
        {
            ResourceTemplate ()
            {
                Register (SystemIO, 
                    0x08,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000001816, // Address
                    ,)
            }, 

            0x02, 
            Zero, 
            0xC8
        })
        Name (CDTM, Package (0x04)
        {
            ResourceTemplate ()
            {
                Register (SystemIO, 
                    0x08,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000001816, // Address
                    ,)
            }, 

            0x03, 
            Zero, 
            Zero
        })
        Name (MWES, ResourceTemplate ()
        {
            Register (FFixedHW, 
                0x01,               // Bit Width
                0x02,               // Bit Offset
                0x0000000000000000, // Address
                0x01,               // Access Size
                )
        })
        Name (AC2V, Zero)
        Name (AC3V, Zero)
        Name (C3ST, Package (0x04)
        {
            0x03, 
            Package (0x00) {}, 
            Package (0x00) {}, 
            Package (0x00) {}
        })
        Name (C2ST, Package (0x03)
        {
            0x02, 
            Package (0x00) {}, 
            Package (0x00) {}
        })
        Name (C1ST, Package (0x02)
        {
            One, 
            Package (0x00) {}
        })
        Name (CSTF, Zero)
        Name (GEAR, Zero)
        Method (_CST, 0, Serialized)
        {
            If (LNot (CSTF))
            {
                Store (C3LT, Index (C3TM, 0x02))
                Store (C6LT, Index (C6TM, 0x02))
                Store (C7LT, Index (C7TM, 0x02))
                Store (CDLT, Index (CDTM, 0x02))
                Store (CDPW, Index (CDTM, 0x03))
                Store (CDLV, Index (DerefOf (Index (CDTM, Zero)), 0x07))
                If (LAnd (And (CFGD, 0x0800), And (PDC0, 0x0200)))
                {
                    Store (MWES, Index (C1TM, Zero))
                    Store (MWES, Index (C3TM, Zero))
                    Store (MWES, Index (C6TM, Zero))
                    Store (MWES, Index (C7TM, Zero))
                    Store (MWES, Index (CDTM, Zero))
                    Store (C3MW, Index (DerefOf (Index (C3TM, Zero)), 0x07))
                    Store (C6MW, Index (DerefOf (Index (C6TM, Zero)), 0x07))
                    Store (C7MW, Index (DerefOf (Index (C7TM, Zero)), 0x07))
                    Store (CDMW, Index (DerefOf (Index (CDTM, Zero)), 0x07))
                }
                Else
                {
                    If (LAnd (And (CFGD, 0x0800), And (PDC0, 0x0100)))
                    {
                        Store (MWES, Index (C1TM, Zero))
                    }
                }

                Store (Ones, CSTF)
            }

            Store (Zero, AC2V)
            Store (Zero, AC3V)
            Store (C1TM, Index (C3ST, One))
            If (And (CFGD, 0x20))
            {
                Store (C7TM, Index (C3ST, 0x02))
                Store (Ones, AC2V)
            }
            Else
            {
                If (And (CFGD, 0x10))
                {
                    Store (C6TM, Index (C3ST, 0x02))
                    Store (Ones, AC2V)
                }
                Else
                {
                    If (And (CFGD, 0x08))
                    {
                        Store (C3TM, Index (C3ST, 0x02))
                        Store (Ones, AC2V)
                    }
                }
            }

            If (And (CFGD, 0x4000))
            {
                Store (CDTM, Index (C3ST, 0x03))
                Store (Ones, AC3V)
            }

            If (LEqual (GEAR, One))
            {
                If (And (CFGD, 0x08))
                {
                    Store (C3TM, Index (C3ST, 0x02))
                    Store (Ones, AC2V)
                    Store (Zero, AC3V)
                }
                Else
                {
                    Store (Zero, AC2V)
                    Store (Zero, AC3V)
                }
            }

            If (LEqual (GEAR, 0x02))
            {
                Store (Zero, AC2V)
                Store (Zero, AC3V)
            }

            If (LAnd (AC2V, AC3V))
            {
                Return (C3ST)
            }
            Else
            {
                If (AC2V)
                {
                    Store (DerefOf (Index (C3ST, One)), Index (C2ST, One))
                    Store (DerefOf (Index (C3ST, 0x02)), Index (C2ST, 0x02))
                    Return (C2ST)
                }
                Else
                {
                    If (AC3V)
                    {
                        Store (DerefOf (Index (C3ST, One)), Index (C2ST, One))
                        Store (DerefOf (Index (C3ST, 0x03)), Index (C2ST, 0x02))
                        Store (0x02, Index (DerefOf (Index (C2ST, 0x02)), One))
                        Return (C2ST)
                    }
                    Else
                    {
                        Store (DerefOf (Index (C3ST, One)), Index (C1ST, One))
                        Return (C1ST)
                    }
                }
            }
        }
    }
}

