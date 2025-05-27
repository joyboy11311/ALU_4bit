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

![image](https://github.com/user-attachments/assets/211f135f-ffe9-4e09-bb82-b1e229c7c699)

Trường hợp A & B:
![image](https://github.com/user-attachments/assets/5fc58bcc-1537-4849-9abf-7d1bc29c1a4f)

Trường hợp A OR B:
![image](https://github.com/user-attachments/assets/6b02288c-4416-4814-9af4-f3f24142953f)

Trường hợp A + B:
![image](https://github.com/user-attachments/assets/4b9d092f-d00f-4243-aa59-bbccaabb4056)

Trường hợp A - B:
![image](https://github.com/user-attachments/assets/ffc74964-18b7-4645-925e-7780b2b815c3)

Trường hợp A ^ B:
![image](https://github.com/user-attachments/assets/535effd0-0fd2-4ef1-a72f-cae0e97c578c)

Trường hợp ~A:
![image](https://github.com/user-attachments/assets/4caed5eb-fb2e-4021-833b-8995a0b72d5c)

Trường hợp A + 1:
![image](https://github.com/user-attachments/assets/897a7c6d-e46b-4b14-bf63-ca3f5eb82bd9)

Trường hợp A - 1:
![image](https://github.com/user-attachments/assets/6a01ae5b-c1f4-45da-ad80-7ccd2f9d5104)









