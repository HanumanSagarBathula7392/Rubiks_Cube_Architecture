# Rubik's Cube Architecture Project

## Overview

This repository contains the design and simulation code for a Rubik's Cube architecture, structured into separate modules for key components. The project includes:

- Computational Unit (CU)
- 4x1 Multiplexer (MUX 4x1)
- Face Module
- Overall design and test cases
## Directory Structure

- [CU_Module](https://github.com/HanumanSagarBathula7392/Rubiks_Cube_Architecture/tree/main/CU_Module) Contains the design and simulation files for the Control Unit.
- [Face_Module](https://github.com/HanumanSagarBathula7392/Rubiks_Cube_Architecture/tree/main/Face_Module) Contains the design and simulation files for the 4x1 Multiplexer.
- [MUX_Module](https://github.com/HanumanSagarBathula7392/Rubiks_Cube_Architecture/tree/main/MUX_Module) Contains the design and simulation files for the Face representations.
- [Overall_Design_Module](https://github.com/HanumanSagarBathula7392/Rubiks_Cube_Architecture/tree/main/Overall_Design_Module) Contains the complete integrated design along with test case documentation.
- [Test_Cases](https://github.com/HanumanSagarBathula7392/Rubiks_Cube_Architecture/tree/main/Test_Cases) Includes five PDF files detailing different test scenarios.
- [Project_Report](https://github.com/HanumanSagarBathula7392/Rubiks_Cube_Architecture/blob/main/Project_Report.pdf) 

## Project Details

This project implements a **3x3 Rubik’s Cube computation model** using VHDL. Each face consists of a 3x3 grid of Computational Units (CUs) identified by **CU(Face#, Row#, Column#)**. For example, `CU(1,1,2)` represents the CU on Face 1, Row 1, Column 2. CUs communicate with their immediate neighbors, and boundary CUs can transfer data across adjacent faces.

### Data Flow and Operations
- Inputs (3-bit wide) are provided to the top face CUs.
- Outputs are extracted from the bottom face CUs.
- Data propagates across faces via boundary connections.
- Specific CUs in the first row execute:
  - Multiplication
  - Addition
  - Rotate Shift Left
- Other CUs perform unique operations from the following set:
  - Addition, Subtraction, Multiplication
  - Logical, Arithmetic & Rotate Shifts (Left/Right)
  - NAND, NOR, XOR, XNOR
  - PASS Data A/B, No-OP

The design is tested for all the above operations and 5 test cases, which are the shortest paths from the inputs to the outputs. Deliverables include an **RTL schematic, simulation waveforms, VHDL codes, and testbench codes**.

## Usage

To simulate the design:

1. Navigate to the respective module folder.
2. Open the provided design files in your preferred HDL simulator.
3. Run the testbench provided to validate the functionality.

For the overall design:

1. Navigate to the [Overall_Design_Module](https://github.com/HanumanSagarBathula7392/Rubiks_Cube_Architecture/tree/main/Overall_Design_Module) directory.
2. Review the test cases in [Test_Cases](https://github.com/HanumanSagarBathula7392/Rubiks_Cube_Architecture/tree/main/Test_Cases) to understand the expected behavior.
3. Simulate the integrated design and compare results with the provided test cases.

## Requirements

- VHDL compatible simulator (e.g., Xilinx Vivado, ModelSim, Quartus Prime)
- HDL development environment

## Contributions

Contributions are welcome! Feel free to open issues or submit pull requests to improve the design or add more test cases.

## License

This project is open-source and available under the MIT License.

## Contact

For any inquiries or discussions, feel free to reach out via [GitHub Issues](https://github.com/HanumanSagarBathula7392/Rubiks_Cube_Architecture/issues).


