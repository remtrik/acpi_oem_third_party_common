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
//     signature experiences for Dual Screen Folio Hinged devices.
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
    // Left Monitor Physical Device Location
    Name (M0PL,
        Package(0x1) {
            Buffer(0x14) {
                0x02, 0xFF, 0x00, 0xFF, 0x7C, 0x0B, 0x94, 0x07,
                0x41, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                0x1E, 0x00, 0x1E, 0x00
            }
        })

    // Right Monitor Physical Device Location
    Name(M1PL,
        Package(0x1) {
            Buffer(0x14) {
                0x02, 0xFF, 0x00, 0xFF, 0x7C, 0x0B, 0x94, 0x07,
                0x61, 0x0D, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00,
                0x1E, 0x00, 0x1E, 0x00
            }
        })
    
    // Left Side Physical Device Location
    Name (C3PL,
        Package(0x1) {
            Buffer(0x14) {
                0x02, 0x00, 0x00, 0x00, 0xA4, 0x0B, 0xBC, 0x07,
                0x40, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                0x0A, 0x00, 0x0A, 0x00
            }
        })

    // Right Side Physical Device Location
    Name(R2PL,
        Package(0x1) {
            Buffer(0x14) {
                0x02, 0x00, 0x00, 0x00, 0xA4, 0x0B, 0xBC, 0x07,
                0x60, 0x0D, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00,
                0x0A, 0x00, 0x0A, 0x00
            }
        })

    // Keyboard + Occlusion Sensor
    Name(KBPL,
        Package(0x1) {
            Buffer(0x14) {
                0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00,
                0x80, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                0x0A, 0x00, 0x0A, 0x00
            }
        })

    // Keyboard Hinge Angle Sensor
    Name(KAPL,
        Package(0x1) {
            Buffer(0x14) {
                0x02, 0x00, 0x00, 0x00, 0xA4, 0x0B, 0xDE, 0x03,
                0x60, 0x0D, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00,
                0x0A, 0x00, 0x0A, 0x00
            }
        })

    Name(_PLD,
        Package(0x12) {
            Package(0x1) {
                Buffer(0x14) {
                    0x02, 0x00, 0x00, 0x00, 0xB8, 0x0B, 0xD0, 0x07,
                    0x41, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00,
                    0xFF, 0xFF, 0xFF, 0xFF
                }
            },
            Package(0x1) {
                Buffer(0x14) {
                    0x02, 0x00, 0x00, 0x00, 0xB8, 0x0B, 0xD0, 0x07,
                    0x49, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00,
                    0xFF, 0xFF, 0xFF, 0xFF
                }
            },
            Package(0x1) {
                Buffer(0x14) {
                    0x02, 0x00, 0x00, 0x00, 0xD0, 0x07, 0x3C, 0x00,
                    0x51, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00,
                    0xFF, 0xFF, 0xFF, 0xFF
                }
            },
            Package(0x1) {
                Buffer(0x14) {
                    0x02, 0x00, 0x00, 0x00, 0xD0, 0x07, 0x3C, 0x00,
                    0x59, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00,
                    0xFF, 0xFF, 0xFF, 0xFF
                }
            },
            Package(0x1) {
                Buffer(0x14) {
                    0x02, 0x00, 0x00, 0x00, 0xB8, 0x0B, 0x3C, 0x00,
                    0x61, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00,
                    0xFF, 0xFF, 0xFF, 0xFF
                }
            },
            Package(0x1) {
                Buffer(0x14) {
                    0x02, 0x00, 0x00, 0x00, 0xB8, 0x0B, 0x3C, 0x00,
                    0x69, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00,
                    0xFF, 0xFF, 0xFF, 0xFF
                }
            },
            Package(0x1) {
                Buffer(0x14) {
                    0x02, 0x00, 0x00, 0x00, 0xB8, 0x0B, 0x01, 0x00,
                    0x41, 0x0D, 0x00, 0x00, 0x04, 0x00, 0x04, 0x00,
                    0xFF, 0xFF, 0xFF, 0xFF
                }
            },
            Package(0x1) {
                Buffer(0x14) {
                    0x02, 0x00, 0x00, 0x00, 0xB8, 0x0B, 0x01, 0x00,
                    0x49, 0x0D, 0x00, 0x00, 0x04, 0x00, 0x04, 0x00,
                    0xFF, 0xFF, 0xFF, 0xFF
                }
            },
            Package(0x1) {
                Buffer(0x14) {
                    0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0xE8, 0x03,
                    0x51, 0x0D, 0x00, 0x00, 0x04, 0x00, 0x04, 0x00,
                    0xFF, 0xFF, 0xFF, 0xFF
                }
            },
            Package(0x1) {
                Buffer(0x14) {
                    0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0xE8, 0x03,
                    0x59, 0x0D, 0x00, 0x00, 0x04, 0x00, 0x04, 0x00,
                    0xFF, 0xFF, 0xFF, 0xFF
                }
            },
            Package(0x03) {
                Buffer(0x14) {
                    0x02, 0x00, 0x00, 0x00, 0xB8, 0x0B, 0xE8, 0x03,
                    0x61, 0x0D, 0x00, 0x00, 0x04, 0x00, 0x04, 0x00,
                    0xFF, 0xFF, 0xFF, 0xFF
                },
                // ACPI_PLD_JOINT_BUFFER_GUID
                Buffer(0x10) {
                    0x40, 0xFC, 0x1C, 0xF0, 0x75, 0x3C, 0x23, 0x45,
                    0x9E, 0x44, 0x21, 0x5C, 0xB1, 0x54, 0xBD, 0xA6
                },
                Buffer(0x10) {
                    0x41, 0x02, 0x00, 0x80, 0x5A, 0x00, 0x5A, 0x00,
                    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                }
            },
            Package(0x1) {
                Buffer(0x14) {
                    0x02, 0x00, 0x00, 0x00, 0xB8, 0x0B, 0xE8, 0x03,
                    0x69, 0x0D, 0x00, 0x00, 0x04, 0x00, 0x04, 0x00,
                    0xFF, 0xFF, 0xFF, 0xFF
                }
            },
            Package(0x1) {
                Buffer(0x14) {
                    0x02, 0x00, 0x00, 0x00, 0xB8, 0x0B, 0x3C, 0x00,
                    0x41, 0x0D, 0x00, 0x00, 0x08, 0x00, 0x04, 0x00,
                    0xFF, 0xFF, 0xFF, 0xFF
                }
            },
            Package(0x1) {
                Buffer(0x14) {
                    0x02, 0x00, 0x00, 0x00, 0xB8, 0x0B, 0x3C, 0x00,
                    0x49, 0x0D, 0x00, 0x00, 0x08, 0x00, 0x04, 0x00,
                    0xFF, 0xFF, 0xFF, 0xFF
                }
            },
            Package(0x1) {
                Buffer(0x14) {
                    0x02, 0x00, 0x00, 0x00, 0x3C, 0x00, 0xD0, 0x07,
                    0x51, 0x0D, 0x00, 0x00, 0x08, 0x00, 0x04, 0x00,
                    0xFF, 0xFF, 0xFF, 0xFF
                }
            },
            Package(0x1) {
                Buffer(0x14) {
                    0x02, 0x00, 0x00, 0x00, 0x3C, 0x00, 0xD0, 0x07,
                    0x59, 0x0D, 0x00, 0x00, 0x08, 0x00, 0x04, 0x00,
                    0xFF, 0xFF, 0xFF, 0xFF
                }
            },
            Package(0x03) {
                Buffer(0x14) {
                    0x02, 0x00, 0x00, 0x00, 0xB8, 0x0B, 0xD0, 0x07,
                    0x61, 0x0D, 0x00, 0x00, 0x08, 0x00, 0x04, 0x00,
                    0xE8, 0x03, 0x00, 0x00
                },
                // ACPI_PLD_JOINT_BUFFER_GUID
                Buffer(0x10) {
                    0x40, 0xFC, 0x1C, 0xF0, 0x75, 0x3C, 0x23, 0x45,
                    0x9E, 0x44, 0x21, 0x5C, 0xB1, 0x54, 0xBD, 0xA6
                },
                Buffer(0x10) {
                    0x41, 0x12, 0x50, 0x80, 0xB4, 0x00, 0x00, 0x00,
                    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                }
            },
            Package(0x1) {
                Buffer(0x14) {
                    0x02, 0x00, 0x00, 0x00, 0xB8, 0x0B, 0xD0, 0x07,
                    0x69, 0x0D, 0x00, 0x00, 0x08, 0x00, 0x04, 0x00,
                    0xFF, 0xFF, 0xFF, 0xFF
                }
            }
        })

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
            Alias(\_SB.M0PL, _PLD)
        }
        Scope(MON1) {
            // Right
            Alias(\_SB.M1PL, _PLD)
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