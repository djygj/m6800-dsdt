/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20120420-32 [Apr 20 2012]
 * Copyright (c) 2000 - 2012 Intel Corporation
 * 
 * Disassembly of SSDT9.aml, Wed Nov 26 01:50:44 2014
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000119 (281)
 *     Revision         0x01
 *     Checksum         0xEF
 *     OEM ID           "PmRef"
 *     OEM Table ID     "ApCst"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120711 (538052369)
 */

DefinitionBlock ("SSDT9.aml", "SSDT", 1, "PmRef", "ApCst", 0x00003000)
{
    External (\_PR_.CPU7, ProcessorObj)
    External (\_PR_.CPU6, ProcessorObj)
    External (\_PR_.CPU5, ProcessorObj)
    External (\_PR_.CPU4, ProcessorObj)
    External (\_PR_.CPU3, ProcessorObj)
    External (\_PR_.CPU2, ProcessorObj)
    External (\_PR_.CPU1, ProcessorObj)
    External (\_PR_.CPU0._CST, MethodObj)    // 0 Arguments

    Scope (\_PR.CPU1)
    {
        Method (_CST, 0, NotSerialized)
        {
            Return (\_PR.CPU0._CST ())
        }
    }

    Scope (\_PR.CPU2)
    {
        Method (_CST, 0, NotSerialized)
        {
            Return (\_PR.CPU0._CST ())
        }
    }

    Scope (\_PR.CPU3)
    {
        Method (_CST, 0, NotSerialized)
        {
            Return (\_PR.CPU0._CST ())
        }
    }

    Scope (\_PR.CPU4)
    {
        Method (_CST, 0, NotSerialized)
        {
            Return (\_PR.CPU0._CST ())
        }
    }

    Scope (\_PR.CPU5)
    {
        Method (_CST, 0, NotSerialized)
        {
            Return (\_PR.CPU0._CST ())
        }
    }

    Scope (\_PR.CPU6)
    {
        Method (_CST, 0, NotSerialized)
        {
            Return (\_PR.CPU0._CST ())
        }
    }

    Scope (\_PR.CPU7)
    {
        Method (_CST, 0, NotSerialized)
        {
            Return (\_PR.CPU0._CST ())
        }
    }
}

