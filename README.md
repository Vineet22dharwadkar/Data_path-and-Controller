# Data_path-and-Controller
This design performs a sequence of arithmetic operations (like multiplication through repeated addition) using a modular Finite State Machine (FSM) approach. It’s a perfect example of how hardware control and computation work together!
 Why is Datapath and Controller Design Important?
In digital design, the datapath handles what to do with the data (e.g., operations like add, shift, load), while the controller decides when and how those operations happen.
This separation of concerns is the backbone of CPU architectures, DSP pipelines, and even custom accelerators.

🛠️ How I Built It:
Designed a datapath module that performs repeated addition by manipulating registers (A, B, Y, and temp).

Created a controller using a Moore FSM to generate control signals based on the current state.

Integrated both modules and tested using a clocked testbench in Vivado.

Used done signal to indicate completion and stop simulation dynamically when the operation finishes.

📈 How it Works:
The controller begins in an idle state, then sequences through loading inputs and performing repeated additions until a condition is met.

The datapath updates the result (Y) based on control signals and raises a done flag once complete.

Simulation results were tracked using $monitor, showing real-time output changes at each step.
![Image](https://github.com/user-attachments/assets/7360b03e-b5c8-4253-98fe-cb288506fed5)

![Image](https://github.com/user-attachments/assets/f1b35191-eea9-4e83-9cac-dcbfe22942c4)

![Image](https://github.com/user-attachments/assets/23df7dc7-6375-4c05-b286-dcda9e6dd62d)

![Image](https://github.com/user-attachments/assets/4a46d403-319d-427e-b339-31c55226d99c)

![Image](https://github.com/user-attachments/assets/63d0dfe7-c610-4083-8b4b-9a5456fc19fa)

