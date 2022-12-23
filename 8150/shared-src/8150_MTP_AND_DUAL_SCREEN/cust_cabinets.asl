//
// Copyright (c) 2021-2022 DuoWoA authors. All Rights Reserved.
//
// Module Name:
//
//     cust_cabinets.asl
//
// Abstract:
//
//     Contains Device Cabinet Definitions to inform the OS
//     about the specific Device Topology and enable specific
//     signature experiences for Dual Screen Hinged devices.
//
// Environment:
//
//     Advanced Configuration and Power Interface (ACPI)
//
// Revision History:
//
//     2022-12-23 - @gus33000 - Initial revision
//
// License:
//
//     SPDX-License-Identifier: MIT
//

Scope(\_SB) {
    // Left Side Physical Device Location
    Name (C3PL,
        Package(0x1) {
            Buffer(0x14) {
                0x02, 0x00, 0x00, 0x00, 0x5C, 0x03, 0x74, 0x04,
                0x21, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                0xBE, 0x00, 0x1E, 0x00
            }
        })

    // Right Side Physical Device Location
    Name(R2PL,
        Package(0x1) {
            Buffer(0x14) {
                0x02, 0x00, 0x00, 0x00, 0x5C, 0x03, 0x74, 0x04,
                0x21, 0x0C, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00,
                0xBE, 0x00, 0x0A, 0x00
            }
        })

    // Left Side Cabinet
    Device(CAB0) {
        Name(_HID, "PNP0000")
        Name(_CID, "PLD_CAB0")
        Name(_UID, 0x1)
        Name(_STR, Unicode("Primary Front"))
        Name(_PLD,
            Package(0x06) {
                Package(0x1) {
                    Buffer(0x14) {
                        0x02, 0x00, 0x00, 0x00, 0x84, 0x03, 0xF0, 0x05,
                        0x21, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00,
                        0x00, 0x00, 0x00, 0x00
                    }
                },
                Package(0x1) {
                    Buffer(0x14) {
                        0x02, 0x00, 0x00, 0x00, 0x84, 0x03, 0xF0, 0x05,
                        0x29, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00,
                        0x00, 0x00, 0x00, 0x00
                    }
                },
                Package(0x1) {
                    Buffer(0x14) {
                        0x02, 0x5C, 0x5C, 0x5C, 0x28, 0x00, 0xF0, 0x05,
                        0x11, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00,
                        0x00, 0x00, 0x00, 0x00
                    }
                },
                Package(0x1) {
                    Buffer(0x14) {
                        0x02, 0x5C, 0x5C, 0x5C, 0x28, 0x00, 0xF0, 0x05,
                        0x19, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00,
                        0x00, 0x00, 0x00, 0x00
                    }
                },
                Package(0x1) {
                    Buffer(0x14) {
                        0x02, 0x5C, 0x5C, 0x5C, 0x84, 0x03, 0x28, 0x00,
                        0x01, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00,
                        0x00, 0x00, 0x00, 0x00
                    }
                },
                Package(0x1) {
                    Buffer(0x14) {
                        0x02, 0x5C, 0x5C, 0x5C, 0x84, 0x03, 0x28, 0x00,
                        0x09, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00,
                        0x00, 0x00, 0x00, 0x00
                    }
                }
            })
    }

    // Right Side Cabinet
    Device(CAB1) {
        Name(_HID, "PNP0000")
        Name(_CID, "PLD_CAB1")
        Name(_UID, 0x0C)
        Name(_STR, Unicode("Secondary Front"))
        Name(_PLD,
            Package(0x06) {
                Package(0x03) {
                    // ACPI_PLD_BUFFER
                    Buffer(0x14) {
                        0x02, 0x00, 0x00, 0x00, 0x84, 0x03, 0xF0, 0x05,
                        0x21, 0x0C, 0x00, 0x00, 0x04, 0x00, 0x04, 0x00,
                        0x00, 0x00, 0x00, 0x00
                    },
                    // ACPI_PLD_JOINT_BUFFER_GUID
                    Buffer(0x10) {
                        0x40, 0xFC, 0x1C, 0xF0, 0x75, 0x3C, 0x23, 0x45,
                        0x9E, 0x44, 0x21, 0x5C, 0xB1, 0x54, 0xBD, 0xA6
                    },
                    // ACPI_PLD_JOINT_BUFFER
                    Buffer(0x10) {
                        0x41, 0x04, 0xC0, 0x01, 0xB4, 0x00, 0xB4, 0x00,
                        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                    }
                },
                Package(0x1) {
                    Buffer(0x14) {
                        0x02, 0x00, 0x00, 0x00, 0x84, 0x03, 0xF0, 0x05,
                        0x29, 0x0C, 0x00, 0x00, 0x04, 0x00, 0x04, 0x00,
                        0x00, 0x00, 0x00, 0x00
                    }
                },
                Package(0x1) {
                    Buffer(0x14) {
                        0x02, 0x5C, 0x5C, 0x5C, 0x28, 0x00, 0xF0, 0x05,
                        0x11, 0x0C, 0x00, 0x00, 0x04, 0x00, 0x04, 0x00,
                        0x00, 0x00, 0x00, 0x00
                    }
                },
                Package(0x1) {
                    Buffer(0x14) {
                        0x02, 0x5C, 0x5C, 0x5C, 0x28, 0x00, 0xF0, 0x05,
                        0x19, 0x0C, 0x00, 0x00, 0x04, 0x00, 0x04, 0x00,
                        0x00, 0x00, 0x00, 0x00
                    }
                },
                Package(0x1) {
                    Buffer(0x14) {
                        0x02, 0x5C, 0x5C, 0x5C, 0x84, 0x03, 0x28, 0x00,
                        0x01, 0x0C, 0x00, 0x00, 0x04, 0x00, 0x04, 0x00,
                        0x00, 0x00, 0x00, 0x00
                    }
                },
                Package(0x1) {
                    Buffer(0x14) {
                        0x02, 0x5C, 0x5C, 0x5C, 0x84, 0x03, 0x28, 0x00,
                        0x09, 0x0C, 0x00, 0x00, 0x04, 0x00, 0x04, 0x00,
                        0x00, 0x00, 0x00, 0x00
                    }
                }
            })
    }

    Scope(SEN2) {
        // Right
        Alias(\_SB.R2PL, _PLD)
    }
    Scope(SEN3) {
        // Left
        Alias(\_SB.C3PL, _PLD)
    }

    Scope(GPU0) {
        Scope(MON0) {
            // Left
            Alias(\_SB.C3PL, _PLD)
        }
        Scope(MON1) {
            // Right
            Alias(\_SB.R2PL, _PLD)
        }
    }

    Scope(BAT1) {
        // Right
        Alias(\_SB.R2PL, _PLD)
    }
    Scope(BAT2) {
        // Left
        Alias(\_SB.C3PL, _PLD)
    }

    Scope(GTCH) {
        Scope(PEN1) {
            // Right
            Alias(\_SB.R2PL, _PLD)
        }
        Scope(PEN2) {
            // Left
            Alias(\_SB.C3PL, _PLD)
        }
        Scope(TCH1) {
            // Right
            Alias(\_SB.R2PL, _PLD)
        }
        Scope(TCH2) {
            // Left
            Alias(\_SB.C3PL, _PLD)
        }
    }
}