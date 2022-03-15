Exercise Instruction
=================
Install Modelsim on Windows:
1. Go to  https://vhdlwhiz.com/free-vhdl-simulator-alternatives/
2. Choose Intel Quartus Prime Lite Edition Design Software for Windows
3. Choose Questa-Intel FPGA Edition in Individual Files
4. Install the Starter Edition
5. Create the license from: https://licensing.intel.com/psg/s/sales-signup-evaluationlicenses
6. Note: check NIC ID based on the terminal command : ipconfig /all, find the physical address which shows the Ethernet adapter Ethernet N
7. More details from https://vhdlwhiz.com/free-vhdl-simulator-alternatives/


```
cd simulations
use advms_17.1
vsim -do run_simulation.do
```

<<<<<<< HEAD
<<<<<<< HEAD
* You can start developing! Make new entities and do-files if necessary. Don't
   forget to add, commit, and push your changes to the remote repository to
   save your progress. For example:
=======
4. Your new project is now visible online at
   version.aalto.fi/elec-e3540-exec/\<your-subgroup-name>

5. Intialize the instructions submodule
>>>>>>> 95a1fff (Readme changes)

```
git add vhdl/multiplexer.vhd
git add simulaitions/run_multiplexer.do
git commit -m "added new version of multiplexer"
git push 
```
<<<<<<< HEAD
=======
7. You can start developing! Make new entities and do-files if necessary. Don't
   forget to add, commit, and push your changes to the remote repository to
   save your progress.
<<<<<<< HEAD
>>>>>>> b044f80 (added placeholder files)
=======

7. Once your VHDL code works, you can use the QuestaSim do-file to run
   the simulation _(assuming you are logged in to Vspace)_
=======

6. (optional) You can try using the QuestaSim do-file to automatically compile
   the OR-gate example and run the simulation _(assuming you are logged in to
   Vspace)_
>>>>>>> 95a1fff (Readme changes)

```
cd simulations
use advms_17.1
vsim -do run_simulation.do
```
>>>>>>> e37ba31 (small edits, template can be cloned)

7. You can start developing! Make new entities and do-files if necessary. Don't
   forget to add, commit, and push your changes to the remote repository to
   save your progress.

