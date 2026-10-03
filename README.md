# Verilog RTL Design & Verification Portfolio — HDLBits Solutions

![Language](https://img.shields.io/badge/Language-Verilog--2001-blue)
![Progress](https://img.shields.io/badge/Solved-XX%20%2F%20182-brightgreen)
![Focus](https://img.shields.io/badge/Focus-RTL%20Design%20%7C%20FSMs%20%7C%20Verification-orange)

This repository tracks my ongoing hardware design and verification solutions on **[HDLBits](https://hdlbits.01xz.net/wiki/Problem_sets)**. Each solution focuses on writing clean, synthesizable Verilog-2001 RTL with strict separation of combinational and sequential logic.

🔗 **Live Verifiable HDLBits Profile:** [View My Public HDLBits Stats](https://hdlbits.01xz.net/wiki/Special:VlgStats/YOUR_16_CHAR_HEX_ID)

---

## 📊 Overall Progress Tracker (XX / 182 Solved)

| # | Section / Category | Sub-Category | Solved | Total | Status |
|---|---|---|---|---|---|
| **01** | **Getting Started** | [01_Getting_Started](01_Getting_Started/) | 2 | 2 | ✅ Completed |
| **02** | **Verilog Language** | [01_Basics](./02_Verilog_Language/01_Basics/) | 0 | 8 | 🔄 In Progress |
| | | [02_Vectors](./02_Verilog_Language/02_Vectors/) | 0 | 9 | ⏳ Pending |
| | | [03_Modules_Hierarchy](./02_Verilog_Language/03_Modules_Hierarchy/) | 0 | 9 | ⏳ Pending |
| | | [04_Procedures](./02_Verilog_Language/04_Procedures/) | 0 | 8 | ⏳ Pending |
| | | [05_More_Verilog_Features](./02_Verilog_Language/05_More_Verilog_Features/) | 0 | 7 | ⏳ Pending |
| **03.1** | **Combinational Logic** | [01_Basic_Gates](./03_Circuits/01_Combinational_Logic/01_Basic_Gates/) | 0 | 17 | ⏳ Pending |
| | | [02_Multiplexers](./03_Circuits/01_Combinational_Logic/02_Multiplexers/) | 0 | 5 | ⏳ Pending |
| | | [03_Arithmetic_Circuits](./03_Circuits/01_Combinational_Logic/03_Arithmetic_Circuits/) | 0 | 7 | ⏳ Pending |
| | | [04_Karnaugh_Map_to_Circuit](./03_Circuits/01_Combinational_Logic/04_Karnaugh_Map_to_Circuit/) | 0 | 8 | ⏳ Pending |
| **03.2** | **Sequential Logic** | [01_Latches_and_Flip_Flops](./03_Circuits/02_Sequential_Logic/01_Latches_and_Flip_Flops/) | 0 | 18 | ⏳ Pending |
| | | [02_Counters](./03_Circuits/02_Sequential_Logic/02_Counters/) | 0 | 8 | ⏳ Pending |
| | | [03_Shift_Registers](./03_Circuits/02_Sequential_Logic/03_Shift_Registers/) | 0 | 9 | ⏳ Pending |
| | | [04_More_Circuits](./03_Circuits/02_Sequential_Logic/04_More_Circuits/) | 0 | 3 | ⏳ Pending |
| | | [05_Finite_State_Machines](./03_Circuits/02_Sequential_Logic/05_Finite_State_Machines/) | 0 | 33 | ⏳ Pending |
| **03.3** | **Larger Circuits** | [03_Building_Larger_Circuits](./03_Circuits/03_Building_Larger_Circuits/) | 0 | 7 | ⏳ Pending |
| **04** | **Reading Simulations** | [01_Finding_Bugs_in_Code](./04_Verification_Reading_Simulations/01_Finding_Bugs_in_Code/) | 0 | 5 | ⏳ Pending |
| | | [02_Build_Circuit_from_Waveform](./04_Verification_Reading_Simulations/02_Build_Circuit_from_Waveform/) | 0 | 10 | ⏳ Pending |
| **05** | **Writing Testbenches** | [05_Verification_Writing_Testbenches](./05_Verification_Writing_Testbenches/) | 0 | 5 | ⏳ Pending |
| **06** | **Computer Architecture** | [06_CS450_Computer_Architecture](./06_CS450_Computer_Architecture/) | 0 | 4 | ⏳ Pending |
| | **TOTAL** | | **2** | **182** | **1.1%** |

---

## ⭐ Featured Hardware Implementations (Quick Links for Reviewers)

Rather than browsing all 182 files, reviewers can inspect these representative RTL designs:

* **[100-Bit BCD Ripple-Carry Adder](./02_Verilog_Language/05_More_Verilog_Features/bcdadd100.v):** Parameterized structural instantiation using `generate for` loops.
* **[12-Hour BCD Clock with AM/PM Indicator](./03_Circuits/02_Sequential_Logic/02_Counters/count_clock.v):** Cascaded synchronous BCD counters handling roll-over corner cases (`11:59:59` to `12:00:00` and `12:59:59` to `01:00:00`).
* **[Conway's Game of Life on a 16x16 Toroidal Grid](./03_Circuits/02_Sequential_Logic/04_More_Circuits/conwaylife.v):** 2D neighbor-counting combinational array updating 256 synchronous flip-flops every clock cycle.
* **[Lemmings 4 FSM (Walk, Fall, Dig & Splat)](./03_Circuits/02_Sequential_Logic/05_Finite_State_Machines/lemmings4.v):** Multi-state Moore FSM integrated with a datapath cycle counter to track terminal velocity (>20 clock cycles).
* **[UART Serial Receiver with Parity Checking](./03_Circuits/02_Sequential_Logic/05_Finite_State_Machines/fsm_serialdp.v):** FSM controller + shift-register datapath + odd-parity verification module.
* **[Gshare Branch Predictor (CS450)](./06_CS450_Computer_Architecture/gshare.v):** 7-bit global history register XORed with PC to index a 128-entry 2-bit saturating counter Pattern History Table (PHT).

---

## 🛠️ RTL Coding Conventions Followed

1. **Zero Unintended Latches:** Every combinational `always @(*)` block assigns default values at the top of the procedure or defines all `case`/`if-else` branches explicitly.
2. **Blocking vs. Non-Blocking Discipline:** Strict use of blocking assignments (`=`) in combinational blocks (`always @(*)`) and non-blocking assignments (`<=`) in sequential clocked blocks (`always @(posedge clk)`).
3. **Explicit Multi-Block FSMs:** Finite State Machines separate next-state combinational decoding, sequential state register updates, and output logic into distinct blocks for clean synthesis and timing analysis.

---

## 📈 Completion Grid Snapshot

![HDLBits Completion Stats](./assets/hdlbits_stats_grid.png)
