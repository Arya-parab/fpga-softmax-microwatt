# FPGA-Based Prototyping of Soft-Core Processor with Custom Softmax Instruction

Implementation of a custom softmax hardware accelerator integrated into the
**Microwatt** OpenPOWER soft-core processor on a Xilinx Arty A7-100T FPGA board.

## What is Softmax?
Softmax converts a vector of numbers into probabilities:
softmax(xᵢ) = eˣⁱ / Σ eˣʲ
Used widely in machine learning, especially in neural network output layers.

## How It Works in This Project
1. Inputs arrive via 64-bit register pairs (RA and RB)
2. CORDIC IP computes eˣ for each input using: eˣ = sinh(x) + cosh(x)
3. All exponentials are summed
4. Each exponential is divided by the sum using the div_gen IP
5. Results written back to output registers

## Test Case
- **Input values:** [0.75, 0.5, 0.25, 0.125]
- **Expected output:**
  - r3 = `000057A7 00004443`
  - r4 = `00003529 00002EEA`

## Fixed-Point Format
- Format: Signed Q16.16
- 1 sign bit, 15 integer bits, 16 fractional bits
- Two 32-bit values packed into one 64-bit general purpose register

## Tools and Hardware
| Item | Detail |
|------|--------|
| FPGA Board | Xilinx Arty A7-100T |
| FPGA Part | xc7a100tcsg324-1 |
| Tool | Xilinx Vivado |
| Language | VHDL |
| Processor | Microwatt OpenPOWER soft-core |

## IP Cores Used
### CORDIC v6.0 (`cordic_softmax.xci`)
- Functional Mode: Hyperbolic
- Output: Sinh and Cosh simultaneously
- Input Width: 20-bit
- Format: SignedFraction
- Pipelining: Maximum

### Divider Gen (`div_gen_softmax.xci`)
- Algorithm: Radix2
- Latency: 20 cycles
- Output Width: 112-bit

## Custom FSM States (inside execute1.vhdl)
| State | What Happens |
|-------|-------------|
| SM_IDLE | Waiting for softmax instruction |
| SM_LATCH | Latch inputs from RA and RB registers |
| SM_CORDIC | Send inputs to CORDIC IP |
| SM_WAIT | Wait for CORDIC pipeline latency |
| SM_DIV | Send values to divider IP |
| SM_WRITE1 | Write first output to register |
| SM_WRITE2 | Write second output to register |
| SM_DONE | Signal completion back to pipeline |

## Modified Microwatt Files
| File | What Was Changed |
|------|-----------------|
| `decode_types.vhdl` | Added OP_SOFTMAX and INSN_softmax enumerations |
| `predecode.vhdl` | Mapped primary opcode to INSN_softmax |
| `decode1.vhdl` | Added decode ROM row for softmax instruction |
| `execute1.vhdl` | Added FSM, CORDIC port map, div_gen port map, stall logic |

## Repository Structure
fpga-softmax-microwatt/

│

├── rtl/                        ← VHDL source files

│   ├── decode_types.vhdl

│   ├── predecode.vhdl

│   ├── decode1.vhdl

│   ├── execute1.vhdl

│   ├── cordic_softmax_stub.vhdl

│   └── div_gen_softmax_stub.vhdl

│

├── ip/                         ← Vivado IP configurations

│   ├── cordic_co.xci

│   ├── cordic_softmax.xci

│   └── div_gen_softmax.xci

│

├── sw/                         ← Software files

│   ├── softmax.c

│   └── head.S

│

├── constraints/                ← XDC files (to be added)
├── sim/                        ← Testbenches (to be added)

└── docs/                       ← Project report (to be added)
