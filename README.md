ALU_4bit – 4-bit Arithmetic Logic Unit in Verilog

🔧 Mô tả
Dự án này hiện thực một ALU 4-bit đơn giản bằng ngôn ngữ Verilog, có thể thực hiện các phép toán logic và số học cơ bản. Mô-đun được thiết kế theo kiểu combinational và có kèm theo testbench để kiểm thử bằng mô phỏng.

⚙️ Tính năng
| Opcode | Tên phép toán | Miêu tả            |
| ------ | ------------- | ------------------ |
| `000`  | AND           | `A & B`            |
| `001`  | OR            | `A / B`            |
| `010`  | ADD           | `A + B` (có carry) |
| `011`  | SUB           | `A - B`            |
| `100`  | XOR           | `A ^ B`            |
| `101`  | NOT           | `~A` (phủ định A)  |
| `110`  | INC           | `A + 1`            |
| `111`  | DEC           | `A - 1`            |


📤 Đầu vào
A[3:0]: toán hạng 1

B[3:0]: toán hạng 2

opcode[2:0]: mã lệnh để chọn phép toán

📥 Đầu ra
result[3:0]: kết quả của phép toán

carry_out: cờ báo tràn (chỉ áp dụng khi cộng)

zero_flag: cờ báo kết quả bằng 0

🧪 Testbench
Testbench (alu_4bit_tb.v) bao gồm các kịch bản kiểm thử cho từng opcode, in kết quả mô phỏng ra terminal.

🖼️ Hình ảnh minh họa
Hình dưới đây mô tả sơ đồ khối của ALU 4-bit, bao gồm các ngõ vào (A, B, opcode) và ngõ ra (result, carry_out, zero_flag). Tùy theo mã lệnh (opcode), ALU sẽ thực hiện các phép toán logic hoặc số học tương ứng.

<p align="center"> <img src="images/alu_block_diagram.png" alt="Sơ đồ khối ALU 4-bit" width="500"/> </p>
Hình 1: Sơ đồ khối chức năng của ALU 4-bit
