
; ===== FUNCTION RESET @ CODE:0000 =====
CODE:0000  02 81 79                 LJMP 0x8179   ; XREF: Entry Point 

; ===== FUNCTION ISR_03 @ CODE:0003 =====
CODE:0003  02 7b 52                 LJMP 0x7b52   ; XREF: Entry Point 

; ===== FUNCTION FUN_CODE_0006 @ CODE:0006 =====
CODE:0006  53 b6 fd                 ANL 0xb6,#0xfd   ; XREF: CODE:0013 
CODE:0009  32                       RETI

; ===== FUNCTION FUN_CODE_000a @ CODE:000a =====
CODE:000a  32                       RETI   ; XREF: CODE:0043 

; ===== FUNCTION ISR_0B @ CODE:000b =====
CODE:000b  02 82 86                 LJMP 0x8286   ; XREF: Entry Point 

; ===== FUNCTION FUN_CODE_000e @ CODE:000e =====
CODE:000e  53 b6 fe                 ANL 0xb6,#0xfe   ; XREF: CODE:001b 
CODE:0011  32                       RETI

; ===== FUNCTION FUN_CODE_0012 @ CODE:0012 =====
CODE:0012  32                       RETI   ; XREF: CODE:004b 

; ===== FUNCTION ISR_13 @ CODE:0013 =====
CODE:0013  02 00 06                 LJMP 0x0006   ; XREF: Entry Point 

; ===== FUNCTION FUN_CODE_0016 @ CODE:0016 =====
CODE:0016  75 8f 01                 MOV 0x8f,#0x1   ; XREF: CODE:8109 
CODE:0019  22                       RET

; ===== FUNCTION FUN_CODE_001a @ CODE:001a =====
CODE:001a  32                       RETI   ; XREF: CODE:0053 

; ===== FUNCTION ISR_1B @ CODE:001b =====
CODE:001b  02 00 0e                 LJMP 0x000e   ; XREF: Entry Point 

; ===== FUNCTION FUN_CODE_001e @ CODE:001e =====
CODE:001e  e4                       CLR A   ; XREF: CODE:584f 
CODE:001f  90 02 40                 MOV DPTR,#0x240
CODE:0022  f0                       MOVX @DPTR,A

; ===== FUNCTION ISR_23 @ CODE:0023 =====
CODE:0023  90 01 ff                 MOV DPTR,#0x1ff   ; XREF: Entry Point 
CODE:0026  f0                       MOVX @DPTR,A
CODE:0027  90 02 81                 MOV DPTR,#0x281
CODE:002a  f0                       MOVX @DPTR,A

; ===== FUNCTION ISR_2B @ CODE:002b =====
CODE:002b  90 02 e4                 MOV DPTR,#0x2e4   ; XREF: Entry Point 
CODE:002e  f0                       MOVX @DPTR,A
CODE:002f  c2 00                    CLR 0x00
CODE:0031  c2 01                    CLR 0x01

; ===== FUNCTION ISR_33 @ CODE:0033 =====
CODE:0033  c2 02                    CLR 0x02   ; XREF: Entry Point 
CODE:0035  c2 03                    CLR 0x03
CODE:0037  c2 04                    CLR 0x04
CODE:0039  22                       RET

; ===== FUNCTION ISR_3B @ CODE:003b =====
CODE:003b  02 7c 46                 LJMP 0x7c46   ; XREF: Entry Point 

; ===== FUNCTION ISR_43 @ CODE:0043 =====
CODE:0043  02 00 0a                 LJMP 0x000a   ; XREF: Entry Point 

; ===== FUNCTION ISR_4B @ CODE:004b =====
CODE:004b  02 00 12                 LJMP 0x0012   ; XREF: Entry Point 

; ===== FUNCTION ISR_53 @ CODE:0053 =====
CODE:0053  02 00 1a                 LJMP 0x001a   ; XREF: Entry Point 

; ===== FUNCTION FUN_CODE_0056 @ CODE:0056 =====
CODE:0056  78 53                    MOV R0,#0x53   ; XREF: CODE:7b83 
CODE:0058  e6                       MOV A,@R0
CODE:0059  c3                       CLR CY
CODE:005a  94 17                    SUBB A,#0x17
CODE:005c  40 03                    JC 0x0061
CODE:005e  02 0e 57                 LJMP 0x0e57
LAB_CODE_0061:
CODE:0061  12 79 c4                 LCALL 0x79c4   ; XREF: CODE:005c 
CODE:0064  30 1a 03                 JNB 0x1a,0x006a
CODE:0067  02 38 b5                 LJMP 0x38b5
LAB_CODE_006a:
CODE:006a  78 76                    MOV R0,#0x76   ; XREF: CODE:0064 
CODE:006c  e6                       MOV A,@R0
CODE:006d  ff                       MOV R7,A
CODE:006e  64 02                    XRL A,#0x2
CODE:0070  60 03                    JZ 0x0075
CODE:0072  02 01 ca                 LJMP 0x01ca
LAB_CODE_0075:
CODE:0075  78 5a                    MOV R0,#0x5a   ; XREF: CODE:0070 
CODE:0077  e6                       MOV A,@R0
CODE:0078  fe                       MOV R6,A
CODE:0079  70 0d                    JNZ 0x0088

; ===== FUNCTION ISR_7B @ CODE:007b =====
CODE:007b  75 3f ff                 MOV 0x3f,#0xff   ; XREF: Entry Point 
CODE:007e  75 40 ff                 MOV 0x40,#0xff
CODE:0081  78 55                    MOV R0,#0x55
CODE:0083  e6                       MOV A,@R0
CODE:0084  f5 41                    MOV 0x41,A
CODE:0086  80 5c                    SJMP 0x00e4
LAB_CODE_0088:
CODE:0088  ee                       MOV A,R6   ; XREF: CODE:0079 
CODE:0089  b4 01 08                 CJNE A,#0x1,0x0094
CODE:008c  75 3f ff                 MOV 0x3f,#0xff
CODE:008f  78 55                    MOV R0,#0x55
CODE:0091  e6                       MOV A,@R0
CODE:0092  80 39                    SJMP 0x00cd
LAB_CODE_0094:
CODE:0094  78 5a                    MOV R0,#0x5a   ; XREF: CODE:0089 
CODE:0096  e6                       MOV A,@R0
CODE:0097  fe                       MOV R6,A
CODE:0098  b4 02 0a                 CJNE A,#0x2,0x00a5
CODE:009b  78 55                    MOV R0,#0x55
CODE:009d  e6                       MOV A,@R0
CODE:009e  f5 3f                    MOV 0x3f,A
CODE:00a0  75 40 ff                 MOV 0x40,#0xff
CODE:00a3  80 2a                    SJMP 0x00cf
LAB_CODE_00a5:
CODE:00a5  ee                       MOV A,R6   ; XREF: CODE:0098 
CODE:00a6  b4 03 08                 CJNE A,#0x3,0x00b1
CODE:00a9  75 3f ff                 MOV 0x3f,#0xff
CODE:00ac  78 55                    MOV R0,#0x55
CODE:00ae  e6                       MOV A,@R0
CODE:00af  80 2f                    SJMP 0x00e0
LAB_CODE_00b1:
CODE:00b1  78 5a                    MOV R0,#0x5a   ; XREF: CODE:00a6 
CODE:00b3  e6                       MOV A,@R0
CODE:00b4  fe                       MOV R6,A
CODE:00b5  b4 04 0c                 CJNE A,#0x4,0x00c4
CODE:00b8  78 55                    MOV R0,#0x55
CODE:00ba  e6                       MOV A,@R0
CODE:00bb  f5 3f                    MOV 0x3f,A
CODE:00bd  75 40 ff                 MOV 0x40,#0xff
CODE:00c0  f5 41                    MOV 0x41,A
CODE:00c2  80 20                    SJMP 0x00e4
LAB_CODE_00c4:
CODE:00c4  ee                       MOV A,R6   ; XREF: CODE:00b5 
CODE:00c5  b4 05 0c                 CJNE A,#0x5,0x00d4
CODE:00c8  78 55                    MOV R0,#0x55
CODE:00ca  e6                       MOV A,@R0
CODE:00cb  f5 3f                    MOV 0x3f,A
LAB_CODE_00cd:
CODE:00cd  f5 40                    MOV 0x40,A   ; XREF: CODE:0092 
LAB_CODE_00cf:
CODE:00cf  75 41 ff                 MOV 0x41,#0xff   ; XREF: CODE:00a3 
CODE:00d2  80 10                    SJMP 0x00e4
LAB_CODE_00d4:
CODE:00d4  78 5a                    MOV R0,#0x5a   ; XREF: CODE:00c5 
CODE:00d6  e6                       MOV A,@R0
CODE:00d7  b4 06 0a                 CJNE A,#0x6,0x00e4
CODE:00da  78 54                    MOV R0,#0x54
CODE:00dc  08                       INC R0
CODE:00dd  e6                       MOV A,@R0
CODE:00de  f5 3f                    MOV 0x3f,A
LAB_CODE_00e0:
CODE:00e0  f5 40                    MOV 0x40,A   ; XREF: CODE:00af 
CODE:00e2  f5 41                    MOV 0x41,A
LAB_CODE_00e4:
CODE:00e4  78 53                    MOV R0,#0x53   ; XREF: CODE:0086 CODE:00c2 CODE:00d2 CODE:00d7 
CODE:00e6  e6                       MOV A,@R0
CODE:00e7  fe                       MOV R6,A
CODE:00e8  24 00                    ADD A,#0x0
CODE:00ea  f5 82                    MOV DPL,A
CODE:00ec  e4                       CLR A
CODE:00ed  34 00                    ADDC A,#0x0
CODE:00ef  f5 83                    MOV DPH,A
CODE:00f1  e5 3f                    MOV A,0x3f
CODE:00f3  f0                       MOVX @DPTR,A
CODE:00f4  74 95                    MOV A,#0x95
CODE:00f6  2e                       ADD A,R6
CODE:00f7  f5 82                    MOV DPL,A
CODE:00f9  e4                       CLR A
CODE:00fa  34 00                    ADDC A,#0x0
CODE:00fc  f5 83                    MOV DPH,A
CODE:00fe  e5 40                    MOV A,0x40
EXT_CODE_0100:
CODE:0100  f0                       MOVX @DPTR,A   ; XREF: Entry Point 
CODE:0101  74 2a                    MOV A,#0x2a
CODE:0103  2e                       ADD A,R6
CODE:0104  f5 82                    MOV DPL,A
CODE:0106  e4                       CLR A
CODE:0107  34 01                    ADDC A,#0x1
CODE:0109  f5 83                    MOV DPH,A
CODE:010b  e5 41                    MOV A,0x41
CODE:010d  f0                       MOVX @DPTR,A
CODE:010e  74 17                    MOV A,#0x17
CODE:0110  2e                       ADD A,R6
CODE:0111  f5 82                    MOV DPL,A
CODE:0113  e4                       CLR A
CODE:0114  34 00                    ADDC A,#0x0
CODE:0116  f5 83                    MOV DPH,A
CODE:0118  e5 3f                    MOV A,0x3f
CODE:011a  f0                       MOVX @DPTR,A
CODE:011b  74 ac                    MOV A,#0xac
CODE:011d  2e                       ADD A,R6
CODE:011e  f5 82                    MOV DPL,A
CODE:0120  e4                       CLR A
CODE:0121  34 00                    ADDC A,#0x0
CODE:0123  f5 83                    MOV DPH,A
CODE:0125  e5 40                    MOV A,0x40
CODE:0127  f0                       MOVX @DPTR,A
CODE:0128  74 41                    MOV A,#0x41
CODE:012a  2e                       ADD A,R6
CODE:012b  f5 82                    MOV DPL,A
CODE:012d  e4                       CLR A
CODE:012e  34 01                    ADDC A,#0x1
CODE:0130  f5 83                    MOV DPH,A
CODE:0132  e5 41                    MOV A,0x41
CODE:0134  f0                       MOVX @DPTR,A
CODE:0135  74 2e                    MOV A,#0x2e
CODE:0137  2e                       ADD A,R6
CODE:0138  f5 82                    MOV DPL,A
CODE:013a  e4                       CLR A
CODE:013b  34 00                    ADDC A,#0x0
CODE:013d  f5 83                    MOV DPH,A
CODE:013f  e5 3f                    MOV A,0x3f
CODE:0141  f0                       MOVX @DPTR,A
CODE:0142  74 c3                    MOV A,#0xc3
CODE:0144  2e                       ADD A,R6
CODE:0145  f5 82                    MOV DPL,A
CODE:0147  e4                       CLR A
CODE:0148  34 00                    ADDC A,#0x0
CODE:014a  f5 83                    MOV DPH,A
CODE:014c  e5 40                    MOV A,0x40
CODE:014e  f0                       MOVX @DPTR,A
CODE:014f  74 58                    MOV A,#0x58
CODE:0151  2e                       ADD A,R6
CODE:0152  f5 82                    MOV DPL,A
CODE:0154  e4                       CLR A
CODE:0155  34 01                    ADDC A,#0x1
CODE:0157  f5 83                    MOV DPH,A
CODE:0159  e5 41                    MOV A,0x41
CODE:015b  f0                       MOVX @DPTR,A
CODE:015c  74 45                    MOV A,#0x45
CODE:015e  2e                       ADD A,R6
CODE:015f  f5 82                    MOV DPL,A
CODE:0161  e4                       CLR A
CODE:0162  34 00                    ADDC A,#0x0
CODE:0164  f5 83                    MOV DPH,A
CODE:0166  e5 3f                    MOV A,0x3f
CODE:0168  f0                       MOVX @DPTR,A
CODE:0169  74 da                    MOV A,#0xda
CODE:016b  2e                       ADD A,R6
CODE:016c  f5 82                    MOV DPL,A
CODE:016e  e4                       CLR A
CODE:016f  34 00                    ADDC A,#0x0
CODE:0171  f5 83                    MOV DPH,A
CODE:0173  e5 40                    MOV A,0x40
CODE:0175  f0                       MOVX @DPTR,A
CODE:0176  74 6f                    MOV A,#0x6f
CODE:0178  2e                       ADD A,R6
CODE:0179  f5 82                    MOV DPL,A
CODE:017b  e4                       CLR A
CODE:017c  34 01                    ADDC A,#0x1
CODE:017e  f5 83                    MOV DPH,A
CODE:0180  e5 41                    MOV A,0x41
CODE:0182  f0                       MOVX @DPTR,A
CODE:0183  74 5c                    MOV A,#0x5c
CODE:0185  2e                       ADD A,R6
CODE:0186  f5 82                    MOV DPL,A
CODE:0188  e4                       CLR A
CODE:0189  34 00                    ADDC A,#0x0
CODE:018b  f5 83                    MOV DPH,A
CODE:018d  e5 3f                    MOV A,0x3f
CODE:018f  f0                       MOVX @DPTR,A
CODE:0190  74 f1                    MOV A,#0xf1
CODE:0192  2e                       ADD A,R6
CODE:0193  f5 82                    MOV DPL,A
CODE:0195  e4                       CLR A
CODE:0196  34 00                    ADDC A,#0x0
CODE:0198  f5 83                    MOV DPH,A
CODE:019a  e5 40                    MOV A,0x40
CODE:019c  f0                       MOVX @DPTR,A
CODE:019d  74 86                    MOV A,#0x86
CODE:019f  2e                       ADD A,R6
CODE:01a0  f5 82                    MOV DPL,A
CODE:01a2  e4                       CLR A
CODE:01a3  34 01                    ADDC A,#0x1
CODE:01a5  f5 83                    MOV DPH,A
CODE:01a7  e5 41                    MOV A,0x41
CODE:01a9  f0                       MOVX @DPTR,A
CODE:01aa  74 73                    MOV A,#0x73
CODE:01ac  2e                       ADD A,R6
CODE:01ad  f5 82                    MOV DPL,A
CODE:01af  e4                       CLR A
CODE:01b0  34 00                    ADDC A,#0x0
CODE:01b2  f5 83                    MOV DPH,A
CODE:01b4  e5 3f                    MOV A,0x3f
CODE:01b6  f0                       MOVX @DPTR,A
CODE:01b7  74 08                    MOV A,#0x8
CODE:01b9  2e                       ADD A,R6
CODE:01ba  f5 82                    MOV DPL,A
CODE:01bc  e4                       CLR A
CODE:01bd  34 01                    ADDC A,#0x1
CODE:01bf  f5 83                    MOV DPH,A
CODE:01c1  e5 40                    MOV A,0x40
CODE:01c3  f0                       MOVX @DPTR,A
CODE:01c4  74 9d                    MOV A,#0x9d
CODE:01c6  2e                       ADD A,R6
CODE:01c7  02 03 3f                 LJMP 0x033f

; ===== FUNCTION FUN_CODE_01ca @ CODE:01ca =====
CODE:01ca  ef                       MOV A,R7   ; XREF: CODE:0072 
CODE:01cb  64 06                    XRL A,#0x6
CODE:01cd  60 03                    JZ 0x01d2
CODE:01cf  02 03 4c                 LJMP 0x034c
LAB_CODE_01d2:
CODE:01d2  78 5a                    MOV R0,#0x5a   ; XREF: CODE:01cd 
CODE:01d4  e6                       MOV A,@R0
CODE:01d5  ff                       MOV R7,A
CODE:01d6  70 11                    JNZ 0x01e9
CODE:01d8  75 3f ff                 MOV 0x3f,#0xff
CODE:01db  75 40 ff                 MOV 0x40,#0xff
CODE:01de  78 53                    MOV R0,#0x53
CODE:01e0  e6                       MOV A,@R0
CODE:01e1  24 5f                    ADD A,#0x5f
CODE:01e3  f8                       MOV R0,A
CODE:01e4  e6                       MOV A,@R0
CODE:01e5  f5 41                    MOV 0x41,A
CODE:01e7  80 73                    SJMP 0x025c
LAB_CODE_01e9:
CODE:01e9  ef                       MOV A,R7   ; XREF: CODE:01d6 
CODE:01ea  b4 01 0c                 CJNE A,#0x1,0x01f9
CODE:01ed  75 3f ff                 MOV 0x3f,#0xff
CODE:01f0  78 53                    MOV R0,#0x53
CODE:01f2  e6                       MOV A,@R0
CODE:01f3  24 5f                    ADD A,#0x5f
CODE:01f5  f8                       MOV R0,A
CODE:01f6  e6                       MOV A,@R0
CODE:01f7  80 49                    SJMP 0x0242
LAB_CODE_01f9:
CODE:01f9  78 5a                    MOV R0,#0x5a   ; XREF: CODE:01ea 
CODE:01fb  e6                       MOV A,@R0
CODE:01fc  ff                       MOV R7,A
CODE:01fd  b4 02 0e                 CJNE A,#0x2,0x020e
CODE:0200  78 53                    MOV R0,#0x53
CODE:0202  e6                       MOV A,@R0
CODE:0203  24 5f                    ADD A,#0x5f
CODE:0205  f8                       MOV R0,A
CODE:0206  e6                       MOV A,@R0
CODE:0207  f5 3f                    MOV 0x3f,A
CODE:0209  75 40 ff                 MOV 0x40,#0xff
CODE:020c  80 36                    SJMP 0x0244
LAB_CODE_020e:
CODE:020e  ef                       MOV A,R7   ; XREF: CODE:01fd 
CODE:020f  b4 03 10                 CJNE A,#0x3,0x0222
CODE:0212  78 53                    MOV R0,#0x53
CODE:0214  e6                       MOV A,@R0
CODE:0215  24 5f                    ADD A,#0x5f
CODE:0217  f8                       MOV R0,A
CODE:0218  e6                       MOV A,@R0
CODE:0219  f5 3f                    MOV 0x3f,A
CODE:021b  75 40 ff                 MOV 0x40,#0xff
CODE:021e  f5 41                    MOV 0x41,A
CODE:0220  80 3a                    SJMP 0x025c
LAB_CODE_0222:
CODE:0222  78 5a                    MOV R0,#0x5a   ; XREF: CODE:020f 
CODE:0224  e6                       MOV A,@R0
CODE:0225  ff                       MOV R7,A
CODE:0226  b4 04 0c                 CJNE A,#0x4,0x0235
CODE:0229  75 3f ff                 MOV 0x3f,#0xff
CODE:022c  78 53                    MOV R0,#0x53
CODE:022e  e6                       MOV A,@R0
CODE:022f  24 5f                    ADD A,#0x5f
CODE:0231  f8                       MOV R0,A
CODE:0232  e6                       MOV A,@R0
CODE:0233  80 23                    SJMP 0x0258
LAB_CODE_0235:
CODE:0235  ef                       MOV A,R7   ; XREF: CODE:0226 
CODE:0236  b4 05 10                 CJNE A,#0x5,0x0249
CODE:0239  78 53                    MOV R0,#0x53
CODE:023b  e6                       MOV A,@R0
CODE:023c  24 5f                    ADD A,#0x5f
CODE:023e  f8                       MOV R0,A
CODE:023f  e6                       MOV A,@R0
CODE:0240  f5 3f                    MOV 0x3f,A
LAB_CODE_0242:
CODE:0242  f5 40                    MOV 0x40,A   ; XREF: CODE:01f7 
LAB_CODE_0244:
CODE:0244  75 41 ff                 MOV 0x41,#0xff   ; XREF: CODE:020c 
CODE:0247  80 13                    SJMP 0x025c
LAB_CODE_0249:
CODE:0249  78 5a                    MOV R0,#0x5a   ; XREF: CODE:0236 
CODE:024b  e6                       MOV A,@R0
CODE:024c  b4 06 0d                 CJNE A,#0x6,0x025c
CODE:024f  78 53                    MOV R0,#0x53
CODE:0251  e6                       MOV A,@R0
CODE:0252  24 5f                    ADD A,#0x5f
CODE:0254  f8                       MOV R0,A
CODE:0255  e6                       MOV A,@R0
CODE:0256  f5 3f                    MOV 0x3f,A
LAB_CODE_0258:
CODE:0258  f5 40                    MOV 0x40,A   ; XREF: CODE:0233 
CODE:025a  f5 41                    MOV 0x41,A
LAB_CODE_025c:
CODE:025c  78 53                    MOV R0,#0x53   ; XREF: CODE:01e7 CODE:0220 CODE:0247 CODE:024c 
CODE:025e  e6                       MOV A,@R0
CODE:025f  ff                       MOV R7,A
CODE:0260  24 00                    ADD A,#0x0
CODE:0262  f5 82                    MOV DPL,A
CODE:0264  e4                       CLR A
CODE:0265  34 00                    ADDC A,#0x0
CODE:0267  f5 83                    MOV DPH,A
CODE:0269  e5 3f                    MOV A,0x3f
CODE:026b  f0                       MOVX @DPTR,A
CODE:026c  74 95                    MOV A,#0x95
CODE:026e  2f                       ADD A,R7
CODE:026f  f5 82                    MOV DPL,A
CODE:0271  e4                       CLR A
CODE:0272  34 00                    ADDC A,#0x0
CODE:0274  f5 83                    MOV DPH,A
CODE:0276  e5 40                    MOV A,0x40
CODE:0278  f0                       MOVX @DPTR,A
CODE:0279  74 2a                    MOV A,#0x2a
CODE:027b  2f                       ADD A,R7
CODE:027c  f5 82                    MOV DPL,A
CODE:027e  e4                       CLR A
CODE:027f  34 01                    ADDC A,#0x1
CODE:0281  f5 83                    MOV DPH,A
CODE:0283  e5 41                    MOV A,0x41
CODE:0285  f0                       MOVX @DPTR,A
CODE:0286  74 17                    MOV A,#0x17
CODE:0288  2f                       ADD A,R7
CODE:0289  f5 82                    MOV DPL,A
CODE:028b  e4                       CLR A
CODE:028c  34 00                    ADDC A,#0x0
CODE:028e  f5 83                    MOV DPH,A
CODE:0290  e5 3f                    MOV A,0x3f
CODE:0292  f0                       MOVX @DPTR,A
CODE:0293  74 ac                    MOV A,#0xac
CODE:0295  2f                       ADD A,R7
CODE:0296  f5 82                    MOV DPL,A
CODE:0298  e4                       CLR A
CODE:0299  34 00                    ADDC A,#0x0
CODE:029b  f5 83                    MOV DPH,A
CODE:029d  e5 40                    MOV A,0x40
CODE:029f  f0                       MOVX @DPTR,A
CODE:02a0  74 41                    MOV A,#0x41
CODE:02a2  2f                       ADD A,R7
CODE:02a3  f5 82                    MOV DPL,A
CODE:02a5  e4                       CLR A
CODE:02a6  34 01                    ADDC A,#0x1
CODE:02a8  f5 83                    MOV DPH,A
CODE:02aa  e5 41                    MOV A,0x41
CODE:02ac  f0                       MOVX @DPTR,A
CODE:02ad  74 2e                    MOV A,#0x2e
CODE:02af  2f                       ADD A,R7
CODE:02b0  f5 82                    MOV DPL,A
CODE:02b2  e4                       CLR A
CODE:02b3  34 00                    ADDC A,#0x0
CODE:02b5  f5 83                    MOV DPH,A
CODE:02b7  e5 3f                    MOV A,0x3f
CODE:02b9  f0                       MOVX @DPTR,A
CODE:02ba  74 c3                    MOV A,#0xc3
CODE:02bc  2f                       ADD A,R7
CODE:02bd  f5 82                    MOV DPL,A
CODE:02bf  e4                       CLR A
CODE:02c0  34 00                    ADDC A,#0x0
CODE:02c2  f5 83                    MOV DPH,A
CODE:02c4  e5 40                    MOV A,0x40
CODE:02c6  f0                       MOVX @DPTR,A
CODE:02c7  74 58                    MOV A,#0x58
CODE:02c9  2f                       ADD A,R7
CODE:02ca  f5 82                    MOV DPL,A
CODE:02cc  e4                       CLR A
CODE:02cd  34 01                    ADDC A,#0x1
CODE:02cf  f5 83                    MOV DPH,A
CODE:02d1  e5 41                    MOV A,0x41
CODE:02d3  f0                       MOVX @DPTR,A
CODE:02d4  74 45                    MOV A,#0x45
CODE:02d6  2f                       ADD A,R7
CODE:02d7  f5 82                    MOV DPL,A
CODE:02d9  e4                       CLR A
CODE:02da  34 00                    ADDC A,#0x0
CODE:02dc  f5 83                    MOV DPH,A
CODE:02de  e5 3f                    MOV A,0x3f
CODE:02e0  f0                       MOVX @DPTR,A
CODE:02e1  74 da                    MOV A,#0xda
CODE:02e3  2f                       ADD A,R7
CODE:02e4  f5 82                    MOV DPL,A
CODE:02e6  e4                       CLR A
CODE:02e7  34 00                    ADDC A,#0x0
CODE:02e9  f5 83                    MOV DPH,A
CODE:02eb  e5 40                    MOV A,0x40
CODE:02ed  f0                       MOVX @DPTR,A
CODE:02ee  74 6f                    MOV A,#0x6f
CODE:02f0  2f                       ADD A,R7
CODE:02f1  f5 82                    MOV DPL,A
CODE:02f3  e4                       CLR A
CODE:02f4  34 01                    ADDC A,#0x1
CODE:02f6  f5 83                    MOV DPH,A
CODE:02f8  e5 41                    MOV A,0x41
CODE:02fa  f0                       MOVX @DPTR,A
CODE:02fb  74 5c                    MOV A,#0x5c
CODE:02fd  2f                       ADD A,R7
CODE:02fe  f5 82                    MOV DPL,A
CODE:0300  e4                       CLR A
CODE:0301  34 00                    ADDC A,#0x0
CODE:0303  f5 83                    MOV DPH,A
CODE:0305  e5 3f                    MOV A,0x3f
CODE:0307  f0                       MOVX @DPTR,A
CODE:0308  74 f1                    MOV A,#0xf1
CODE:030a  2f                       ADD A,R7
CODE:030b  f5 82                    MOV DPL,A
CODE:030d  e4                       CLR A
CODE:030e  34 00                    ADDC A,#0x0
CODE:0310  f5 83                    MOV DPH,A
CODE:0312  e5 40                    MOV A,0x40
CODE:0314  f0                       MOVX @DPTR,A
CODE:0315  74 86                    MOV A,#0x86
CODE:0317  2f                       ADD A,R7
CODE:0318  f5 82                    MOV DPL,A
CODE:031a  e4                       CLR A
CODE:031b  34 01                    ADDC A,#0x1
CODE:031d  f5 83                    MOV DPH,A
CODE:031f  e5 41                    MOV A,0x41
CODE:0321  f0                       MOVX @DPTR,A
CODE:0322  74 73                    MOV A,#0x73
CODE:0324  2f                       ADD A,R7
CODE:0325  f5 82                    MOV DPL,A
CODE:0327  e4                       CLR A
CODE:0328  34 00                    ADDC A,#0x0
CODE:032a  f5 83                    MOV DPH,A
CODE:032c  e5 3f                    MOV A,0x3f
CODE:032e  f0                       MOVX @DPTR,A
CODE:032f  74 08                    MOV A,#0x8
CODE:0331  2f                       ADD A,R7
CODE:0332  f5 82                    MOV DPL,A
CODE:0334  e4                       CLR A
CODE:0335  34 01                    ADDC A,#0x1
CODE:0337  f5 83                    MOV DPH,A
CODE:0339  e5 40                    MOV A,0x40
CODE:033b  f0                       MOVX @DPTR,A
CODE:033c  74 9d                    MOV A,#0x9d
CODE:033e  2f                       ADD A,R7
LAB_CODE_033f:
CODE:033f  f5 82                    MOV DPL,A   ; XREF: CODE:01c7 
CODE:0341  e4                       CLR A
CODE:0342  34 01                    ADDC A,#0x1
CODE:0344  f5 83                    MOV DPH,A
CODE:0346  e5 41                    MOV A,0x41
CODE:0348  f0                       MOVX @DPTR,A
CODE:0349  02 0e 45                 LJMP 0x0e45
LAB_CODE_034c:
CODE:034c  78 76                    MOV R0,#0x76   ; XREF: CODE:01cf 
CODE:034e  e6                       MOV A,@R0
CODE:034f  ff                       MOV R7,A
CODE:0350  64 0a                    XRL A,#0xa
CODE:0352  60 03                    JZ 0x0357
CODE:0354  02 05 79                 LJMP 0x0579
LAB_CODE_0357:
CODE:0357  78 53                    MOV R0,#0x53   ; XREF: CODE:0352 
CODE:0359  e6                       MOV A,@R0
CODE:035a  fe                       MOV R6,A
CODE:035b  75 f0 03                 MOV B,#0x3
CODE:035e  a4                       MUL AB
CODE:035f  24 00                    ADD A,#0x0
CODE:0361  f5 82                    MOV DPL,A
CODE:0363  e5 f0                    MOV A,B
CODE:0365  34 ac                    ADDC A,#0xac
CODE:0367  f5 83                    MOV DPH,A
CODE:0369  e4                       CLR A
CODE:036a  93                       MOVC A,@A+DPTR
CODE:036b  fd                       MOV R5,A
CODE:036c  74 00                    MOV A,#0x0
CODE:036e  2e                       ADD A,R6
CODE:036f  f5 82                    MOV DPL,A
CODE:0371  e4                       CLR A
CODE:0372  34 00                    ADDC A,#0x0
CODE:0374  f5 83                    MOV DPH,A
CODE:0376  ed                       MOV A,R5
CODE:0377  f0                       MOVX @DPTR,A
CODE:0378  e6                       MOV A,@R0
CODE:0379  fe                       MOV R6,A
CODE:037a  75 f0 03                 MOV B,#0x3
CODE:037d  a4                       MUL AB
CODE:037e  24 01                    ADD A,#0x1
CODE:0380  f5 82                    MOV DPL,A
CODE:0382  e5 f0                    MOV A,B
CODE:0384  34 ac                    ADDC A,#0xac
CODE:0386  f5 83                    MOV DPH,A
CODE:0388  e4                       CLR A
CODE:0389  93                       MOVC A,@A+DPTR
CODE:038a  fd                       MOV R5,A
CODE:038b  74 95                    MOV A,#0x95
CODE:038d  2e                       ADD A,R6
CODE:038e  f5 82                    MOV DPL,A
CODE:0390  e4                       CLR A
CODE:0391  34 00                    ADDC A,#0x0
CODE:0393  f5 83                    MOV DPH,A
CODE:0395  ed                       MOV A,R5
CODE:0396  f0                       MOVX @DPTR,A
CODE:0397  e6                       MOV A,@R0
CODE:0398  fe                       MOV R6,A
CODE:0399  75 f0 03                 MOV B,#0x3
CODE:039c  a4                       MUL AB
CODE:039d  24 02                    ADD A,#0x2
CODE:039f  f5 82                    MOV DPL,A
CODE:03a1  e5 f0                    MOV A,B
CODE:03a3  34 ac                    ADDC A,#0xac
CODE:03a5  f5 83                    MOV DPH,A
CODE:03a7  e4                       CLR A
CODE:03a8  93                       MOVC A,@A+DPTR
CODE:03a9  fd                       MOV R5,A
CODE:03aa  74 2a                    MOV A,#0x2a
CODE:03ac  2e                       ADD A,R6
CODE:03ad  f5 82                    MOV DPL,A
CODE:03af  e4                       CLR A
CODE:03b0  34 01                    ADDC A,#0x1
CODE:03b2  f5 83                    MOV DPH,A
CODE:03b4  ed                       MOV A,R5
CODE:03b5  f0                       MOVX @DPTR,A
CODE:03b6  e6                       MOV A,@R0
CODE:03b7  fe                       MOV R6,A
CODE:03b8  75 f0 03                 MOV B,#0x3
CODE:03bb  a4                       MUL AB
CODE:03bc  24 45                    ADD A,#0x45
CODE:03be  f5 82                    MOV DPL,A
CODE:03c0  e5 f0                    MOV A,B
CODE:03c2  34 ac                    ADDC A,#0xac
CODE:03c4  f5 83                    MOV DPH,A
CODE:03c6  e4                       CLR A
CODE:03c7  93                       MOVC A,@A+DPTR
CODE:03c8  fd                       MOV R5,A
CODE:03c9  74 17                    MOV A,#0x17
CODE:03cb  2e                       ADD A,R6
CODE:03cc  f5 82                    MOV DPL,A
CODE:03ce  e4                       CLR A
CODE:03cf  34 00                    ADDC A,#0x0
CODE:03d1  f5 83                    MOV DPH,A
CODE:03d3  ed                       MOV A,R5
CODE:03d4  f0                       MOVX @DPTR,A
CODE:03d5  e6                       MOV A,@R0
CODE:03d6  fe                       MOV R6,A
CODE:03d7  75 f0 03                 MOV B,#0x3
CODE:03da  a4                       MUL AB
CODE:03db  24 46                    ADD A,#0x46
CODE:03dd  f5 82                    MOV DPL,A
CODE:03df  e5 f0                    MOV A,B
CODE:03e1  34 ac                    ADDC A,#0xac
CODE:03e3  f5 83                    MOV DPH,A
CODE:03e5  e4                       CLR A
CODE:03e6  93                       MOVC A,@A+DPTR
CODE:03e7  fd                       MOV R5,A
CODE:03e8  74 ac                    MOV A,#0xac
CODE:03ea  2e                       ADD A,R6
CODE:03eb  f5 82                    MOV DPL,A
CODE:03ed  e4                       CLR A
CODE:03ee  34 00                    ADDC A,#0x0
CODE:03f0  f5 83                    MOV DPH,A
CODE:03f2  ed                       MOV A,R5
CODE:03f3  f0                       MOVX @DPTR,A
CODE:03f4  e6                       MOV A,@R0
CODE:03f5  fe                       MOV R6,A
CODE:03f6  75 f0 03                 MOV B,#0x3
CODE:03f9  a4                       MUL AB
CODE:03fa  24 47                    ADD A,#0x47
CODE:03fc  f5 82                    MOV DPL,A
CODE:03fe  e5 f0                    MOV A,B
CODE:0400  34 ac                    ADDC A,#0xac
CODE:0402  f5 83                    MOV DPH,A
CODE:0404  e4                       CLR A
CODE:0405  93                       MOVC A,@A+DPTR
CODE:0406  fd                       MOV R5,A
CODE:0407  74 41                    MOV A,#0x41
CODE:0409  2e                       ADD A,R6
CODE:040a  f5 82                    MOV DPL,A
CODE:040c  e4                       CLR A
CODE:040d  34 01                    ADDC A,#0x1
CODE:040f  f5 83                    MOV DPH,A
CODE:0411  ed                       MOV A,R5
CODE:0412  f0                       MOVX @DPTR,A
CODE:0413  e6                       MOV A,@R0
CODE:0414  fe                       MOV R6,A
CODE:0415  75 f0 03                 MOV B,#0x3
CODE:0418  a4                       MUL AB
CODE:0419  24 8a                    ADD A,#0x8a
CODE:041b  f5 82                    MOV DPL,A
CODE:041d  e5 f0                    MOV A,B
CODE:041f  34 ac                    ADDC A,#0xac
CODE:0421  f5 83                    MOV DPH,A
CODE:0423  e4                       CLR A
CODE:0424  93                       MOVC A,@A+DPTR
CODE:0425  fd                       MOV R5,A
CODE:0426  74 2e                    MOV A,#0x2e
CODE:0428  2e                       ADD A,R6
CODE:0429  f5 82                    MOV DPL,A
CODE:042b  e4                       CLR A
CODE:042c  34 00                    ADDC A,#0x0
CODE:042e  f5 83                    MOV DPH,A
CODE:0430  ed                       MOV A,R5
CODE:0431  f0                       MOVX @DPTR,A
CODE:0432  e6                       MOV A,@R0
CODE:0433  fe                       MOV R6,A
CODE:0434  75 f0 03                 MOV B,#0x3
CODE:0437  a4                       MUL AB
CODE:0438  24 8b                    ADD A,#0x8b
CODE:043a  f5 82                    MOV DPL,A
CODE:043c  e5 f0                    MOV A,B
CODE:043e  34 ac                    ADDC A,#0xac
CODE:0440  f5 83                    MOV DPH,A
CODE:0442  e4                       CLR A
CODE:0443  93                       MOVC A,@A+DPTR
CODE:0444  fd                       MOV R5,A
CODE:0445  74 c3                    MOV A,#0xc3
CODE:0447  2e                       ADD A,R6
CODE:0448  f5 82                    MOV DPL,A
CODE:044a  e4                       CLR A
CODE:044b  34 00                    ADDC A,#0x0
CODE:044d  f5 83                    MOV DPH,A
CODE:044f  ed                       MOV A,R5
CODE:0450  f0                       MOVX @DPTR,A
CODE:0451  e6                       MOV A,@R0
CODE:0452  fe                       MOV R6,A
CODE:0453  75 f0 03                 MOV B,#0x3
CODE:0456  a4                       MUL AB
CODE:0457  24 8c                    ADD A,#0x8c
CODE:0459  f5 82                    MOV DPL,A
CODE:045b  e5 f0                    MOV A,B
CODE:045d  34 ac                    ADDC A,#0xac
CODE:045f  f5 83                    MOV DPH,A
CODE:0461  e4                       CLR A
CODE:0462  93                       MOVC A,@A+DPTR
CODE:0463  fd                       MOV R5,A
CODE:0464  74 58                    MOV A,#0x58
CODE:0466  2e                       ADD A,R6
CODE:0467  f5 82                    MOV DPL,A
CODE:0469  e4                       CLR A
CODE:046a  34 01                    ADDC A,#0x1
CODE:046c  f5 83                    MOV DPH,A
CODE:046e  ed                       MOV A,R5
CODE:046f  f0                       MOVX @DPTR,A
CODE:0470  e6                       MOV A,@R0
CODE:0471  fe                       MOV R6,A
CODE:0472  75 f0 03                 MOV B,#0x3
CODE:0475  a4                       MUL AB
CODE:0476  24 cf                    ADD A,#0xcf
CODE:0478  f5 82                    MOV DPL,A
CODE:047a  e5 f0                    MOV A,B
CODE:047c  34 ac                    ADDC A,#0xac

; ===== FUNCTION FUN_CODE_047f @ CODE:047f =====
CODE:047f  83                       MOVC A,@A+PC   ; XREF: Entry Point 
CODE:0480  e4                       CLR A
CODE:0481  93                       MOVC A,@A+DPTR
CODE:0482  fd                       MOV R5,A
CODE:0483  74 45                    MOV A,#0x45
CODE:0485  2e                       ADD A,R6
CODE:0486  f5 82                    MOV DPL,A
CODE:0488  e4                       CLR A
CODE:0489  34 00                    ADDC A,#0x0
CODE:048b  f5 83                    MOV DPH,A
CODE:048d  ed                       MOV A,R5
CODE:048e  f0                       MOVX @DPTR,A
CODE:048f  e6                       MOV A,@R0
CODE:0490  fe                       MOV R6,A
CODE:0491  75 f0 03                 MOV B,#0x3
CODE:0494  a4                       MUL AB
CODE:0495  24 d0                    ADD A,#0xd0
CODE:0497  f5 82                    MOV DPL,A
CODE:0499  e5 f0                    MOV A,B
CODE:049b  34 ac                    ADDC A,#0xac
CODE:049d  f5 83                    MOV DPH,A
CODE:049f  e4                       CLR A
CODE:04a0  93                       MOVC A,@A+DPTR
CODE:04a1  fd                       MOV R5,A
CODE:04a2  74 da                    MOV A,#0xda
CODE:04a4  2e                       ADD A,R6
CODE:04a5  f5 82                    MOV DPL,A
CODE:04a7  e4                       CLR A
CODE:04a8  34 00                    ADDC A,#0x0
CODE:04aa  f5 83                    MOV DPH,A
CODE:04ac  ed                       MOV A,R5
CODE:04ad  f0                       MOVX @DPTR,A
CODE:04ae  e6                       MOV A,@R0
CODE:04af  fe                       MOV R6,A
CODE:04b0  75 f0 03                 MOV B,#0x3
CODE:04b3  a4                       MUL AB
CODE:04b4  24 d1                    ADD A,#0xd1
CODE:04b6  f5 82                    MOV DPL,A
CODE:04b8  e5 f0                    MOV A,B
CODE:04ba  34 ac                    ADDC A,#0xac
CODE:04bc  f5 83                    MOV DPH,A
CODE:04be  e4                       CLR A
CODE:04bf  93                       MOVC A,@A+DPTR
CODE:04c0  fd                       MOV R5,A
CODE:04c1  74 6f                    MOV A,#0x6f
CODE:04c3  2e                       ADD A,R6
CODE:04c4  f5 82                    MOV DPL,A
CODE:04c6  e4                       CLR A
CODE:04c7  34 01                    ADDC A,#0x1
CODE:04c9  f5 83                    MOV DPH,A
CODE:04cb  ed                       MOV A,R5
CODE:04cc  f0                       MOVX @DPTR,A
CODE:04cd  e6                       MOV A,@R0
CODE:04ce  fe                       MOV R6,A
CODE:04cf  75 f0 03                 MOV B,#0x3
CODE:04d2  a4                       MUL AB
CODE:04d3  24 14                    ADD A,#0x14
CODE:04d5  f5 82                    MOV DPL,A
CODE:04d7  e5 f0                    MOV A,B
CODE:04d9  34 ad                    ADDC A,#0xad
CODE:04db  f5 83                    MOV DPH,A
CODE:04dd  e4                       CLR A
CODE:04de  93                       MOVC A,@A+DPTR
CODE:04df  fd                       MOV R5,A
CODE:04e0  74 5c                    MOV A,#0x5c
CODE:04e2  2e                       ADD A,R6
CODE:04e3  f5 82                    MOV DPL,A
CODE:04e5  e4                       CLR A
CODE:04e6  34 00                    ADDC A,#0x0
CODE:04e8  f5 83                    MOV DPH,A
CODE:04ea  ed                       MOV A,R5
CODE:04eb  f0                       MOVX @DPTR,A
CODE:04ec  e6                       MOV A,@R0
CODE:04ed  fe                       MOV R6,A
CODE:04ee  75 f0 03                 MOV B,#0x3
CODE:04f1  a4                       MUL AB
CODE:04f2  24 15                    ADD A,#0x15
CODE:04f4  f5 82                    MOV DPL,A
CODE:04f6  e5 f0                    MOV A,B
CODE:04f8  34 ad                    ADDC A,#0xad
CODE:04fa  f5 83                    MOV DPH,A
CODE:04fc  e4                       CLR A
CODE:04fd  93                       MOVC A,@A+DPTR
CODE:04fe  fd                       MOV R5,A
CODE:04ff  74 f1                    MOV A,#0xf1
CODE:0501  2e                       ADD A,R6
CODE:0502  f5 82                    MOV DPL,A
CODE:0504  e4                       CLR A
CODE:0505  34 00                    ADDC A,#0x0
CODE:0507  f5 83                    MOV DPH,A
CODE:0509  ed                       MOV A,R5
CODE:050a  f0                       MOVX @DPTR,A
CODE:050b  e6                       MOV A,@R0
CODE:050c  fe                       MOV R6,A
CODE:050d  75 f0 03                 MOV B,#0x3
CODE:0510  a4                       MUL AB
CODE:0511  24 16                    ADD A,#0x16
CODE:0513  f5 82                    MOV DPL,A
CODE:0515  e5 f0                    MOV A,B
CODE:0517  34 ad                    ADDC A,#0xad
CODE:0519  f5 83                    MOV DPH,A
CODE:051b  e4                       CLR A
CODE:051c  93                       MOVC A,@A+DPTR
CODE:051d  fd                       MOV R5,A
CODE:051e  74 86                    MOV A,#0x86
CODE:0520  2e                       ADD A,R6
CODE:0521  f5 82                    MOV DPL,A
CODE:0523  e4                       CLR A
CODE:0524  34 01                    ADDC A,#0x1
CODE:0526  f5 83                    MOV DPH,A
CODE:0528  ed                       MOV A,R5
CODE:0529  f0                       MOVX @DPTR,A
CODE:052a  e6                       MOV A,@R0
CODE:052b  fe                       MOV R6,A
CODE:052c  75 f0 03                 MOV B,#0x3
CODE:052f  a4                       MUL AB
CODE:0530  24 59                    ADD A,#0x59
CODE:0532  f5 82                    MOV DPL,A
CODE:0534  e5 f0                    MOV A,B
CODE:0536  34 ad                    ADDC A,#0xad
CODE:0538  f5 83                    MOV DPH,A
CODE:053a  e4                       CLR A
CODE:053b  93                       MOVC A,@A+DPTR
CODE:053c  fd                       MOV R5,A
CODE:053d  74 73                    MOV A,#0x73
CODE:053f  2e                       ADD A,R6
CODE:0540  f5 82                    MOV DPL,A
CODE:0542  e4                       CLR A
CODE:0543  34 00                    ADDC A,#0x0
CODE:0545  f5 83                    MOV DPH,A
CODE:0547  ed                       MOV A,R5
CODE:0548  f0                       MOVX @DPTR,A
CODE:0549  e6                       MOV A,@R0
CODE:054a  fe                       MOV R6,A
CODE:054b  75 f0 03                 MOV B,#0x3
CODE:054e  a4                       MUL AB
CODE:054f  24 5a                    ADD A,#0x5a
CODE:0551  f5 82                    MOV DPL,A
CODE:0553  e5 f0                    MOV A,B
CODE:0555  34 ad                    ADDC A,#0xad
CODE:0557  f5 83                    MOV DPH,A
CODE:0559  e4                       CLR A
CODE:055a  93                       MOVC A,@A+DPTR
CODE:055b  fd                       MOV R5,A
CODE:055c  74 08                    MOV A,#0x8
CODE:055e  2e                       ADD A,R6
CODE:055f  f5 82                    MOV DPL,A
CODE:0561  e4                       CLR A
CODE:0562  34 01                    ADDC A,#0x1
CODE:0564  f5 83                    MOV DPH,A
CODE:0566  ed                       MOV A,R5
CODE:0567  f0                       MOVX @DPTR,A
CODE:0568  e6                       MOV A,@R0
CODE:0569  fe                       MOV R6,A
CODE:056a  75 f0 03                 MOV B,#0x3
CODE:056d  a4                       MUL AB
CODE:056e  24 5b                    ADD A,#0x5b
CODE:0570  f5 82                    MOV DPL,A
CODE:0572  e5 f0                    MOV A,B
CODE:0574  34 ad                    ADDC A,#0xad
CODE:0576  02 09 cd                 LJMP 0x09cd

; ===== FUNCTION FUN_CODE_0579 @ CODE:0579 =====
CODE:0579  ef                       MOV A,R7   ; XREF: CODE:0354 
CODE:057a  64 10                    XRL A,#0x10
CODE:057c  60 03                    JZ 0x0581
CODE:057e  02 07 a3                 LJMP 0x07a3
LAB_CODE_0581:
CODE:0581  78 53                    MOV R0,#0x53   ; XREF: CODE:057c 
CODE:0583  e6                       MOV A,@R0
CODE:0584  ff                       MOV R7,A
CODE:0585  75 f0 03                 MOV B,#0x3
CODE:0588  a4                       MUL AB
CODE:0589  24 00                    ADD A,#0x0
CODE:058b  f5 82                    MOV DPL,A
CODE:058d  e5 f0                    MOV A,B
CODE:058f  34 ba                    ADDC A,#0xba
CODE:0591  f5 83                    MOV DPH,A
CODE:0593  e4                       CLR A
CODE:0594  93                       MOVC A,@A+DPTR
CODE:0595  fe                       MOV R6,A
CODE:0596  74 00                    MOV A,#0x0
CODE:0598  2f                       ADD A,R7
CODE:0599  f5 82                    MOV DPL,A
CODE:059b  e4                       CLR A
CODE:059c  34 00                    ADDC A,#0x0
CODE:059e  f5 83                    MOV DPH,A
CODE:05a0  ee                       MOV A,R6
CODE:05a1  f0                       MOVX @DPTR,A
CODE:05a2  e6                       MOV A,@R0
CODE:05a3  ff                       MOV R7,A
CODE:05a4  75 f0 03                 MOV B,#0x3
CODE:05a7  a4                       MUL AB
CODE:05a8  24 01                    ADD A,#0x1
CODE:05aa  f5 82                    MOV DPL,A
CODE:05ac  e5 f0                    MOV A,B
CODE:05ae  34 ba                    ADDC A,#0xba
CODE:05b0  f5 83                    MOV DPH,A
CODE:05b2  e4                       CLR A
CODE:05b3  93                       MOVC A,@A+DPTR
CODE:05b4  fe                       MOV R6,A
CODE:05b5  74 95                    MOV A,#0x95
CODE:05b7  2f                       ADD A,R7
CODE:05b8  f5 82                    MOV DPL,A
CODE:05ba  e4                       CLR A
CODE:05bb  34 00                    ADDC A,#0x0
CODE:05bd  f5 83                    MOV DPH,A
CODE:05bf  ee                       MOV A,R6
CODE:05c0  f0                       MOVX @DPTR,A
CODE:05c1  e6                       MOV A,@R0
CODE:05c2  ff                       MOV R7,A
CODE:05c3  75 f0 03                 MOV B,#0x3
CODE:05c6  a4                       MUL AB
CODE:05c7  24 02                    ADD A,#0x2
CODE:05c9  f5 82                    MOV DPL,A
CODE:05cb  e5 f0                    MOV A,B
CODE:05cd  34 ba                    ADDC A,#0xba
CODE:05cf  f5 83                    MOV DPH,A
CODE:05d1  e4                       CLR A
CODE:05d2  93                       MOVC A,@A+DPTR
CODE:05d3  fe                       MOV R6,A
CODE:05d4  74 2a                    MOV A,#0x2a
CODE:05d6  2f                       ADD A,R7
CODE:05d7  f5 82                    MOV DPL,A
CODE:05d9  e4                       CLR A
CODE:05da  34 01                    ADDC A,#0x1
CODE:05dc  f5 83                    MOV DPH,A
CODE:05de  ee                       MOV A,R6
CODE:05df  f0                       MOVX @DPTR,A
CODE:05e0  e6                       MOV A,@R0
CODE:05e1  ff                       MOV R7,A
CODE:05e2  75 f0 03                 MOV B,#0x3
CODE:05e5  a4                       MUL AB
CODE:05e6  24 45                    ADD A,#0x45
CODE:05e8  f5 82                    MOV DPL,A
CODE:05ea  e5 f0                    MOV A,B
CODE:05ec  34 ba                    ADDC A,#0xba
CODE:05ee  f5 83                    MOV DPH,A
CODE:05f0  e4                       CLR A
CODE:05f1  93                       MOVC A,@A+DPTR
CODE:05f2  fe                       MOV R6,A
CODE:05f3  74 17                    MOV A,#0x17
CODE:05f5  2f                       ADD A,R7
CODE:05f6  f5 82                    MOV DPL,A
CODE:05f8  e4                       CLR A
CODE:05f9  34 00                    ADDC A,#0x0
CODE:05fb  f5 83                    MOV DPH,A
CODE:05fd  ee                       MOV A,R6
CODE:05fe  f0                       MOVX @DPTR,A
CODE:05ff  e6                       MOV A,@R0
CODE:0600  ff                       MOV R7,A
CODE:0601  75 f0 03                 MOV B,#0x3
CODE:0604  a4                       MUL AB
CODE:0605  24 46                    ADD A,#0x46
CODE:0607  f5 82                    MOV DPL,A
CODE:0609  e5 f0                    MOV A,B
CODE:060b  34 ba                    ADDC A,#0xba
CODE:060d  f5 83                    MOV DPH,A
CODE:060f  e4                       CLR A
CODE:0610  93                       MOVC A,@A+DPTR
CODE:0611  fe                       MOV R6,A
CODE:0612  74 ac                    MOV A,#0xac
CODE:0614  2f                       ADD A,R7
CODE:0615  f5 82                    MOV DPL,A
CODE:0617  e4                       CLR A
CODE:0618  34 00                    ADDC A,#0x0
CODE:061a  f5 83                    MOV DPH,A
CODE:061c  ee                       MOV A,R6
CODE:061d  f0                       MOVX @DPTR,A
CODE:061e  e6                       MOV A,@R0
CODE:061f  ff                       MOV R7,A
CODE:0620  75 f0 03                 MOV B,#0x3
CODE:0623  a4                       MUL AB
CODE:0624  24 47                    ADD A,#0x47
CODE:0626  f5 82                    MOV DPL,A
CODE:0628  e5 f0                    MOV A,B
CODE:062a  34 ba                    ADDC A,#0xba
CODE:062c  f5 83                    MOV DPH,A
CODE:062e  e4                       CLR A
CODE:062f  93                       MOVC A,@A+DPTR
CODE:0630  fe                       MOV R6,A
CODE:0631  74 41                    MOV A,#0x41
CODE:0633  2f                       ADD A,R7
CODE:0634  f5 82                    MOV DPL,A
CODE:0636  e4                       CLR A
CODE:0637  34 01                    ADDC A,#0x1
CODE:0639  f5 83                    MOV DPH,A
CODE:063b  ee                       MOV A,R6
CODE:063c  f0                       MOVX @DPTR,A
CODE:063d  e6                       MOV A,@R0
CODE:063e  ff                       MOV R7,A
CODE:063f  75 f0 03                 MOV B,#0x3
CODE:0642  a4                       MUL AB
CODE:0643  24 8a                    ADD A,#0x8a
CODE:0645  f5 82                    MOV DPL,A
CODE:0647  e5 f0                    MOV A,B
CODE:0649  34 ba                    ADDC A,#0xba
CODE:064b  f5 83                    MOV DPH,A
CODE:064d  e4                       CLR A
CODE:064e  93                       MOVC A,@A+DPTR
CODE:064f  fe                       MOV R6,A
CODE:0650  74 2e                    MOV A,#0x2e
CODE:0652  2f                       ADD A,R7
CODE:0653  f5 82                    MOV DPL,A
CODE:0655  e4                       CLR A
CODE:0656  34 00                    ADDC A,#0x0
CODE:0658  f5 83                    MOV DPH,A
CODE:065a  ee                       MOV A,R6
CODE:065b  f0                       MOVX @DPTR,A
CODE:065c  e6                       MOV A,@R0
CODE:065d  ff                       MOV R7,A
CODE:065e  75 f0 03                 MOV B,#0x3
CODE:0661  a4                       MUL AB
CODE:0662  24 8b                    ADD A,#0x8b
CODE:0664  f5 82                    MOV DPL,A
CODE:0666  e5 f0                    MOV A,B
CODE:0668  34 ba                    ADDC A,#0xba
CODE:066a  f5 83                    MOV DPH,A
CODE:066c  e4                       CLR A
CODE:066d  93                       MOVC A,@A+DPTR
CODE:066e  fe                       MOV R6,A
CODE:066f  74 c3                    MOV A,#0xc3
CODE:0671  2f                       ADD A,R7
CODE:0672  f5 82                    MOV DPL,A
CODE:0674  e4                       CLR A
CODE:0675  34 00                    ADDC A,#0x0
CODE:0677  f5 83                    MOV DPH,A
CODE:0679  ee                       MOV A,R6
CODE:067a  f0                       MOVX @DPTR,A
CODE:067b  e6                       MOV A,@R0
CODE:067c  ff                       MOV R7,A
CODE:067d  75 f0 03                 MOV B,#0x3
CODE:0680  a4                       MUL AB
CODE:0681  24 8c                    ADD A,#0x8c
CODE:0683  f5 82                    MOV DPL,A
CODE:0685  e5 f0                    MOV A,B
CODE:0687  34 ba                    ADDC A,#0xba
CODE:0689  f5 83                    MOV DPH,A
CODE:068b  e4                       CLR A
CODE:068c  93                       MOVC A,@A+DPTR
CODE:068d  fe                       MOV R6,A
CODE:068e  74 58                    MOV A,#0x58
CODE:0690  2f                       ADD A,R7
CODE:0691  f5 82                    MOV DPL,A
CODE:0693  e4                       CLR A
CODE:0694  34 01                    ADDC A,#0x1
CODE:0696  f5 83                    MOV DPH,A
CODE:0698  ee                       MOV A,R6
CODE:0699  f0                       MOVX @DPTR,A
CODE:069a  e6                       MOV A,@R0
CODE:069b  ff                       MOV R7,A
CODE:069c  75 f0 03                 MOV B,#0x3
CODE:069f  a4                       MUL AB
CODE:06a0  24 cf                    ADD A,#0xcf
CODE:06a2  f5 82                    MOV DPL,A
CODE:06a4  e5 f0                    MOV A,B
CODE:06a6  34 ba                    ADDC A,#0xba
CODE:06a8  f5 83                    MOV DPH,A
CODE:06aa  e4                       CLR A
CODE:06ab  93                       MOVC A,@A+DPTR
CODE:06ac  fe                       MOV R6,A
CODE:06ad  74 45                    MOV A,#0x45
CODE:06af  2f                       ADD A,R7
CODE:06b0  f5 82                    MOV DPL,A
CODE:06b2  e4                       CLR A
CODE:06b3  34 00                    ADDC A,#0x0
CODE:06b5  f5 83                    MOV DPH,A
CODE:06b7  ee                       MOV A,R6
CODE:06b8  f0                       MOVX @DPTR,A
CODE:06b9  e6                       MOV A,@R0
CODE:06ba  ff                       MOV R7,A
CODE:06bb  75 f0 03                 MOV B,#0x3
CODE:06be  a4                       MUL AB
CODE:06bf  24 d0                    ADD A,#0xd0
CODE:06c1  f5 82                    MOV DPL,A
CODE:06c3  e5 f0                    MOV A,B
CODE:06c5  34 ba                    ADDC A,#0xba
CODE:06c7  f5 83                    MOV DPH,A
CODE:06c9  e4                       CLR A
CODE:06ca  93                       MOVC A,@A+DPTR
CODE:06cb  fe                       MOV R6,A
CODE:06cc  74 da                    MOV A,#0xda
CODE:06ce  2f                       ADD A,R7
CODE:06cf  f5 82                    MOV DPL,A
CODE:06d1  e4                       CLR A
CODE:06d2  34 00                    ADDC A,#0x0
CODE:06d4  f5 83                    MOV DPH,A
CODE:06d6  ee                       MOV A,R6
CODE:06d7  f0                       MOVX @DPTR,A
CODE:06d8  e6                       MOV A,@R0
CODE:06d9  ff                       MOV R7,A
CODE:06da  75 f0 03                 MOV B,#0x3
CODE:06dd  a4                       MUL AB
CODE:06de  24 d1                    ADD A,#0xd1
CODE:06e0  f5 82                    MOV DPL,A
CODE:06e2  e5 f0                    MOV A,B
CODE:06e4  34 ba                    ADDC A,#0xba
CODE:06e6  f5 83                    MOV DPH,A
CODE:06e8  e4                       CLR A
CODE:06e9  93                       MOVC A,@A+DPTR
CODE:06ea  fe                       MOV R6,A
CODE:06eb  74 6f                    MOV A,#0x6f
CODE:06ed  2f                       ADD A,R7
CODE:06ee  f5 82                    MOV DPL,A
CODE:06f0  e4                       CLR A
CODE:06f1  34 01                    ADDC A,#0x1
CODE:06f3  f5 83                    MOV DPH,A
CODE:06f5  ee                       MOV A,R6
CODE:06f6  f0                       MOVX @DPTR,A
CODE:06f7  e6                       MOV A,@R0
CODE:06f8  ff                       MOV R7,A
CODE:06f9  75 f0 03                 MOV B,#0x3
CODE:06fc  a4                       MUL AB
CODE:06fd  24 14                    ADD A,#0x14
CODE:06ff  f5 82                    MOV DPL,A
CODE:0701  e5 f0                    MOV A,B
CODE:0703  34 bb                    ADDC A,#0xbb
CODE:0705  f5 83                    MOV DPH,A
CODE:0707  e4                       CLR A
CODE:0708  93                       MOVC A,@A+DPTR
CODE:0709  fe                       MOV R6,A
CODE:070a  74 5c                    MOV A,#0x5c
CODE:070c  2f                       ADD A,R7
CODE:070d  f5 82                    MOV DPL,A
CODE:070f  e4                       CLR A
CODE:0710  34 00                    ADDC A,#0x0
CODE:0712  f5 83                    MOV DPH,A
CODE:0714  ee                       MOV A,R6
CODE:0715  f0                       MOVX @DPTR,A
CODE:0716  e6                       MOV A,@R0
CODE:0717  ff                       MOV R7,A
CODE:0718  75 f0 03                 MOV B,#0x3
CODE:071b  a4                       MUL AB
CODE:071c  24 15                    ADD A,#0x15
CODE:071e  f5 82                    MOV DPL,A
CODE:0720  e5 f0                    MOV A,B
CODE:0722  34 bb                    ADDC A,#0xbb
CODE:0724  f5 83                    MOV DPH,A
CODE:0726  e4                       CLR A
CODE:0727  93                       MOVC A,@A+DPTR
CODE:0728  fe                       MOV R6,A
CODE:0729  74 f1                    MOV A,#0xf1
CODE:072b  2f                       ADD A,R7
CODE:072c  f5 82                    MOV DPL,A
CODE:072e  e4                       CLR A
CODE:072f  34 00                    ADDC A,#0x0
CODE:0731  f5 83                    MOV DPH,A
CODE:0733  ee                       MOV A,R6
CODE:0734  f0                       MOVX @DPTR,A
CODE:0735  e6                       MOV A,@R0
CODE:0736  ff                       MOV R7,A
CODE:0737  75 f0 03                 MOV B,#0x3
CODE:073a  a4                       MUL AB
CODE:073b  24 16                    ADD A,#0x16
CODE:073d  f5 82                    MOV DPL,A
CODE:073f  e5 f0                    MOV A,B
CODE:0741  34 bb                    ADDC A,#0xbb
CODE:0743  f5 83                    MOV DPH,A
CODE:0745  e4                       CLR A
CODE:0746  93                       MOVC A,@A+DPTR
CODE:0747  fe                       MOV R6,A
CODE:0748  74 86                    MOV A,#0x86
CODE:074a  2f                       ADD A,R7
CODE:074b  f5 82                    MOV DPL,A
CODE:074d  e4                       CLR A
CODE:074e  34 01                    ADDC A,#0x1
CODE:0750  f5 83                    MOV DPH,A
CODE:0752  ee                       MOV A,R6
CODE:0753  f0                       MOVX @DPTR,A
CODE:0754  e6                       MOV A,@R0
CODE:0755  ff                       MOV R7,A
CODE:0756  75 f0 03                 MOV B,#0x3
CODE:0759  a4                       MUL AB
CODE:075a  24 59                    ADD A,#0x59
CODE:075c  f5 82                    MOV DPL,A
CODE:075e  e5 f0                    MOV A,B
CODE:0760  34 bb                    ADDC A,#0xbb
CODE:0762  f5 83                    MOV DPH,A
CODE:0764  e4                       CLR A
CODE:0765  93                       MOVC A,@A+DPTR
CODE:0766  fe                       MOV R6,A
CODE:0767  74 73                    MOV A,#0x73
CODE:0769  2f                       ADD A,R7
CODE:076a  f5 82                    MOV DPL,A
CODE:076c  e4                       CLR A
CODE:076d  34 00                    ADDC A,#0x0
CODE:076f  f5 83                    MOV DPH,A
CODE:0771  ee                       MOV A,R6
CODE:0772  f0                       MOVX @DPTR,A
CODE:0773  e6                       MOV A,@R0
CODE:0774  ff                       MOV R7,A
CODE:0775  75 f0 03                 MOV B,#0x3
CODE:0778  a4                       MUL AB
CODE:0779  24 5a                    ADD A,#0x5a
CODE:077b  f5 82                    MOV DPL,A
CODE:077d  e5 f0                    MOV A,B
CODE:077f  34 bb                    ADDC A,#0xbb
CODE:0781  f5 83                    MOV DPH,A
CODE:0783  e4                       CLR A
CODE:0784  93                       MOVC A,@A+DPTR
CODE:0785  fe                       MOV R6,A
CODE:0786  74 08                    MOV A,#0x8
CODE:0788  2f                       ADD A,R7
CODE:0789  f5 82                    MOV DPL,A
CODE:078b  e4                       CLR A
CODE:078c  34 01                    ADDC A,#0x1
CODE:078e  f5 83                    MOV DPH,A
CODE:0790  ee                       MOV A,R6
CODE:0791  f0                       MOVX @DPTR,A
CODE:0792  e6                       MOV A,@R0
CODE:0793  ff                       MOV R7,A
CODE:0794  75 f0 03                 MOV B,#0x3
CODE:0797  a4                       MUL AB
CODE:0798  24 5b                    ADD A,#0x5b
CODE:079a  f5 82                    MOV DPL,A
CODE:079c  e5 f0                    MOV A,B
CODE:079e  34 bb                    ADDC A,#0xbb
CODE:07a0  02 0e 34                 LJMP 0x0e34
LAB_CODE_07a3:
CODE:07a3  78 76                    MOV R0,#0x76   ; XREF: CODE:057e 
CODE:07a5  e6                       MOV A,@R0
CODE:07a6  ff                       MOV R7,A
CODE:07a7  64 11                    XRL A,#0x11
CODE:07a9  60 03                    JZ 0x07ae
CODE:07ab  02 09 e1                 LJMP 0x09e1
LAB_CODE_07ae:
CODE:07ae  78 53                    MOV R0,#0x53   ; XREF: CODE:07a9 
CODE:07b0  e6                       MOV A,@R0
CODE:07b1  fe                       MOV R6,A
CODE:07b2  75 f0 03                 MOV B,#0x3
CODE:07b5  a4                       MUL AB
CODE:07b6  24 00                    ADD A,#0x0
CODE:07b8  f5 82                    MOV DPL,A
CODE:07ba  e5 f0                    MOV A,B
CODE:07bc  34 bc                    ADDC A,#0xbc
CODE:07be  f5 83                    MOV DPH,A
CODE:07c0  e4                       CLR A
CODE:07c1  93                       MOVC A,@A+DPTR
CODE:07c2  fd                       MOV R5,A
CODE:07c3  74 00                    MOV A,#0x0
CODE:07c5  2e                       ADD A,R6
CODE:07c6  f5 82                    MOV DPL,A
CODE:07c8  e4                       CLR A
CODE:07c9  34 00                    ADDC A,#0x0
CODE:07cb  f5 83                    MOV DPH,A
CODE:07cd  ed                       MOV A,R5
CODE:07ce  f0                       MOVX @DPTR,A
CODE:07cf  e6                       MOV A,@R0
CODE:07d0  fe                       MOV R6,A
CODE:07d1  75 f0 03                 MOV B,#0x3
CODE:07d4  a4                       MUL AB
CODE:07d5  24 01                    ADD A,#0x1
CODE:07d7  f5 82                    MOV DPL,A
CODE:07d9  e5 f0                    MOV A,B
CODE:07db  34 bc                    ADDC A,#0xbc
CODE:07dd  f5 83                    MOV DPH,A
CODE:07df  e4                       CLR A
CODE:07e0  93                       MOVC A,@A+DPTR
CODE:07e1  fd                       MOV R5,A
CODE:07e2  74 95                    MOV A,#0x95
CODE:07e4  2e                       ADD A,R6
CODE:07e5  f5 82                    MOV DPL,A
CODE:07e7  e4                       CLR A
CODE:07e8  34 00                    ADDC A,#0x0
CODE:07ea  f5 83                    MOV DPH,A
CODE:07ec  ed                       MOV A,R5
CODE:07ed  f0                       MOVX @DPTR,A
CODE:07ee  e6                       MOV A,@R0
CODE:07ef  fe                       MOV R6,A
CODE:07f0  75 f0 03                 MOV B,#0x3
CODE:07f3  a4                       MUL AB
CODE:07f4  24 02                    ADD A,#0x2
CODE:07f6  f5 82                    MOV DPL,A
CODE:07f8  e5 f0                    MOV A,B
CODE:07fa  34 bc                    ADDC A,#0xbc
CODE:07fc  f5 83                    MOV DPH,A
CODE:07fe  e4                       CLR A
CODE:07ff  93                       MOVC A,@A+DPTR
CODE:0800  fd                       MOV R5,A
CODE:0801  74 2a                    MOV A,#0x2a
CODE:0803  2e                       ADD A,R6
CODE:0804  f5 82                    MOV DPL,A
CODE:0806  e4                       CLR A
CODE:0807  34 01                    ADDC A,#0x1
CODE:0809  f5 83                    MOV DPH,A
CODE:080b  ed                       MOV A,R5
CODE:080c  f0                       MOVX @DPTR,A
CODE:080d  e6                       MOV A,@R0
CODE:080e  fe                       MOV R6,A
CODE:080f  75 f0 03                 MOV B,#0x3
CODE:0812  a4                       MUL AB
CODE:0813  24 45                    ADD A,#0x45
CODE:0815  f5 82                    MOV DPL,A
CODE:0817  e5 f0                    MOV A,B
CODE:0819  34 bc                    ADDC A,#0xbc
CODE:081b  f5 83                    MOV DPH,A
CODE:081d  e4                       CLR A
CODE:081e  93                       MOVC A,@A+DPTR
CODE:081f  fd                       MOV R5,A
CODE:0820  74 17                    MOV A,#0x17
CODE:0822  2e                       ADD A,R6
CODE:0823  f5 82                    MOV DPL,A
CODE:0825  e4                       CLR A
CODE:0826  34 00                    ADDC A,#0x0
CODE:0828  f5 83                    MOV DPH,A
CODE:082a  ed                       MOV A,R5
CODE:082b  f0                       MOVX @DPTR,A
CODE:082c  e6                       MOV A,@R0
CODE:082d  fe                       MOV R6,A
CODE:082e  75 f0 03                 MOV B,#0x3
CODE:0831  a4                       MUL AB
CODE:0832  24 46                    ADD A,#0x46
CODE:0834  f5 82                    MOV DPL,A
CODE:0836  e5 f0                    MOV A,B
CODE:0838  34 bc                    ADDC A,#0xbc
CODE:083a  f5 83                    MOV DPH,A
CODE:083c  e4                       CLR A
CODE:083d  93                       MOVC A,@A+DPTR
CODE:083e  fd                       MOV R5,A
CODE:083f  74 ac                    MOV A,#0xac
CODE:0841  2e                       ADD A,R6
CODE:0842  f5 82                    MOV DPL,A
CODE:0844  e4                       CLR A
CODE:0845  34 00                    ADDC A,#0x0
CODE:0847  f5 83                    MOV DPH,A
CODE:0849  ed                       MOV A,R5
CODE:084a  f0                       MOVX @DPTR,A
CODE:084b  e6                       MOV A,@R0
CODE:084c  fe                       MOV R6,A
CODE:084d  75 f0 03                 MOV B,#0x3
CODE:0850  a4                       MUL AB
CODE:0851  24 47                    ADD A,#0x47
CODE:0853  f5 82                    MOV DPL,A
CODE:0855  e5 f0                    MOV A,B
CODE:0857  34 bc                    ADDC A,#0xbc
CODE:0859  f5 83                    MOV DPH,A
CODE:085b  e4                       CLR A
CODE:085c  93                       MOVC A,@A+DPTR
CODE:085d  fd                       MOV R5,A
CODE:085e  74 41                    MOV A,#0x41
CODE:0860  2e                       ADD A,R6
CODE:0861  f5 82                    MOV DPL,A
CODE:0863  e4                       CLR A
CODE:0864  34 01                    ADDC A,#0x1
CODE:0866  f5 83                    MOV DPH,A
CODE:0868  ed                       MOV A,R5
CODE:0869  f0                       MOVX @DPTR,A
CODE:086a  e6                       MOV A,@R0
CODE:086b  fe                       MOV R6,A
CODE:086c  75 f0 03                 MOV B,#0x3
CODE:086f  a4                       MUL AB
CODE:0870  24 8a                    ADD A,#0x8a
CODE:0872  f5 82                    MOV DPL,A
CODE:0874  e5 f0                    MOV A,B
CODE:0876  34 bc                    ADDC A,#0xbc
CODE:0878  f5 83                    MOV DPH,A
CODE:087a  e4                       CLR A
CODE:087b  93                       MOVC A,@A+DPTR
CODE:087c  fd                       MOV R5,A
CODE:087d  74 2e                    MOV A,#0x2e
CODE:087f  2e                       ADD A,R6
CODE:0880  f5 82                    MOV DPL,A
CODE:0882  e4                       CLR A
CODE:0883  34 00                    ADDC A,#0x0
CODE:0885  f5 83                    MOV DPH,A
CODE:0887  ed                       MOV A,R5
CODE:0888  f0                       MOVX @DPTR,A
CODE:0889  e6                       MOV A,@R0
CODE:088a  fe                       MOV R6,A
CODE:088b  75 f0 03                 MOV B,#0x3
CODE:088e  a4                       MUL AB

; ===== FUNCTION FUN_CODE_0890 @ CODE:0890 =====
CODE:0890  8b f5                    MOV 0xf5,R3   ; XREF: Entry Point 
CODE:0892  82 e5                    ANL CY,0xe5
CODE:0894  f0                       MOVX @DPTR,A
CODE:0895  34 bc                    ADDC A,#0xbc
CODE:0897  f5 83                    MOV DPH,A
CODE:0899  e4                       CLR A
CODE:089a  93                       MOVC A,@A+DPTR
CODE:089b  fd                       MOV R5,A
CODE:089c  74 c3                    MOV A,#0xc3
CODE:089e  2e                       ADD A,R6
CODE:089f  f5 82                    MOV DPL,A
CODE:08a1  e4                       CLR A
CODE:08a2  34 00                    ADDC A,#0x0
CODE:08a4  f5 83                    MOV DPH,A
CODE:08a6  ed                       MOV A,R5
CODE:08a7  f0                       MOVX @DPTR,A
CODE:08a8  e6                       MOV A,@R0
CODE:08a9  fe                       MOV R6,A
CODE:08aa  75 f0 03                 MOV B,#0x3
CODE:08ad  a4                       MUL AB
CODE:08ae  24 8c                    ADD A,#0x8c
CODE:08b0  f5 82                    MOV DPL,A
CODE:08b2  e5 f0                    MOV A,B
CODE:08b4  34 bc                    ADDC A,#0xbc
CODE:08b6  f5 83                    MOV DPH,A
CODE:08b8  e4                       CLR A
CODE:08b9  93                       MOVC A,@A+DPTR
CODE:08ba  fd                       MOV R5,A
CODE:08bb  74 58                    MOV A,#0x58
CODE:08bd  2e                       ADD A,R6
CODE:08be  f5 82                    MOV DPL,A
CODE:08c0  e4                       CLR A
CODE:08c1  34 01                    ADDC A,#0x1
CODE:08c3  f5 83                    MOV DPH,A
CODE:08c5  ed                       MOV A,R5
CODE:08c6  f0                       MOVX @DPTR,A
CODE:08c7  e6                       MOV A,@R0
CODE:08c8  fe                       MOV R6,A
CODE:08c9  75 f0 03                 MOV B,#0x3
CODE:08cc  a4                       MUL AB
CODE:08cd  24 cf                    ADD A,#0xcf
CODE:08cf  f5 82                    MOV DPL,A
CODE:08d1  e5 f0                    MOV A,B
CODE:08d3  34 bc                    ADDC A,#0xbc
CODE:08d5  f5 83                    MOV DPH,A
CODE:08d7  e4                       CLR A
CODE:08d8  93                       MOVC A,@A+DPTR
CODE:08d9  fd                       MOV R5,A
CODE:08da  74 45                    MOV A,#0x45
CODE:08dc  2e                       ADD A,R6
CODE:08dd  f5 82                    MOV DPL,A
CODE:08df  e4                       CLR A
CODE:08e0  34 00                    ADDC A,#0x0
CODE:08e2  f5 83                    MOV DPH,A
CODE:08e4  ed                       MOV A,R5
CODE:08e5  f0                       MOVX @DPTR,A
CODE:08e6  e6                       MOV A,@R0
CODE:08e7  fe                       MOV R6,A
CODE:08e8  75 f0 03                 MOV B,#0x3
CODE:08eb  a4                       MUL AB
CODE:08ec  24 d0                    ADD A,#0xd0
CODE:08ee  f5 82                    MOV DPL,A
CODE:08f0  e5 f0                    MOV A,B
CODE:08f2  34 bc                    ADDC A,#0xbc
CODE:08f4  f5 83                    MOV DPH,A
CODE:08f6  e4                       CLR A
CODE:08f7  93                       MOVC A,@A+DPTR
CODE:08f8  fd                       MOV R5,A
CODE:08f9  74 da                    MOV A,#0xda
CODE:08fb  2e                       ADD A,R6
CODE:08fc  f5 82                    MOV DPL,A
CODE:08fe  e4                       CLR A
CODE:08ff  34 00                    ADDC A,#0x0
CODE:0901  f5 83                    MOV DPH,A
CODE:0903  ed                       MOV A,R5
CODE:0904  f0                       MOVX @DPTR,A
CODE:0905  e6                       MOV A,@R0
CODE:0906  fe                       MOV R6,A
CODE:0907  75 f0 03                 MOV B,#0x3
CODE:090a  a4                       MUL AB
CODE:090b  24 d1                    ADD A,#0xd1
CODE:090d  f5 82                    MOV DPL,A
CODE:090f  e5 f0                    MOV A,B
CODE:0911  34 bc                    ADDC A,#0xbc
CODE:0913  f5 83                    MOV DPH,A
CODE:0915  e4                       CLR A
CODE:0916  93                       MOVC A,@A+DPTR
CODE:0917  fd                       MOV R5,A
CODE:0918  74 6f                    MOV A,#0x6f
CODE:091a  2e                       ADD A,R6
CODE:091b  f5 82                    MOV DPL,A
CODE:091d  e4                       CLR A
CODE:091e  34 01                    ADDC A,#0x1
CODE:0920  f5 83                    MOV DPH,A
CODE:0922  ed                       MOV A,R5
CODE:0923  f0                       MOVX @DPTR,A
CODE:0924  e6                       MOV A,@R0
CODE:0925  fe                       MOV R6,A
CODE:0926  75 f0 03                 MOV B,#0x3
CODE:0929  a4                       MUL AB
CODE:092a  24 14                    ADD A,#0x14
CODE:092c  f5 82                    MOV DPL,A
CODE:092e  e5 f0                    MOV A,B
CODE:0930  34 bd                    ADDC A,#0xbd
CODE:0932  f5 83                    MOV DPH,A
CODE:0934  e4                       CLR A
CODE:0935  93                       MOVC A,@A+DPTR
CODE:0936  fd                       MOV R5,A
CODE:0937  74 5c                    MOV A,#0x5c
CODE:0939  2e                       ADD A,R6
CODE:093a  f5 82                    MOV DPL,A
CODE:093c  e4                       CLR A
CODE:093d  34 00                    ADDC A,#0x0
CODE:093f  f5 83                    MOV DPH,A
CODE:0941  ed                       MOV A,R5
CODE:0942  f0                       MOVX @DPTR,A
CODE:0943  e6                       MOV A,@R0
CODE:0944  fe                       MOV R6,A
CODE:0945  75 f0 03                 MOV B,#0x3
CODE:0948  a4                       MUL AB
CODE:0949  24 15                    ADD A,#0x15
CODE:094b  f5 82                    MOV DPL,A
CODE:094d  e5 f0                    MOV A,B
CODE:094f  34 bd                    ADDC A,#0xbd
CODE:0951  f5 83                    MOV DPH,A
CODE:0953  e4                       CLR A
CODE:0954  93                       MOVC A,@A+DPTR
CODE:0955  fd                       MOV R5,A
CODE:0956  74 f1                    MOV A,#0xf1
CODE:0958  2e                       ADD A,R6
CODE:0959  f5 82                    MOV DPL,A
CODE:095b  e4                       CLR A
CODE:095c  34 00                    ADDC A,#0x0
CODE:095e  f5 83                    MOV DPH,A
CODE:0960  ed                       MOV A,R5
CODE:0961  f0                       MOVX @DPTR,A
CODE:0962  e6                       MOV A,@R0
CODE:0963  fe                       MOV R6,A
CODE:0964  75 f0 03                 MOV B,#0x3
CODE:0967  a4                       MUL AB
CODE:0968  24 16                    ADD A,#0x16
CODE:096a  f5 82                    MOV DPL,A
CODE:096c  e5 f0                    MOV A,B
CODE:096e  34 bd                    ADDC A,#0xbd
CODE:0970  f5 83                    MOV DPH,A
CODE:0972  e4                       CLR A
CODE:0973  93                       MOVC A,@A+DPTR
CODE:0974  fd                       MOV R5,A
CODE:0975  74 86                    MOV A,#0x86
CODE:0977  2e                       ADD A,R6
CODE:0978  f5 82                    MOV DPL,A
CODE:097a  e4                       CLR A
CODE:097b  34 01                    ADDC A,#0x1
CODE:097d  f5 83                    MOV DPH,A
CODE:097f  ed                       MOV A,R5
CODE:0980  f0                       MOVX @DPTR,A
CODE:0981  e6                       MOV A,@R0
CODE:0982  fe                       MOV R6,A
CODE:0983  75 f0 03                 MOV B,#0x3
CODE:0986  a4                       MUL AB
CODE:0987  24 59                    ADD A,#0x59
CODE:0989  f5 82                    MOV DPL,A
CODE:098b  e5 f0                    MOV A,B
CODE:098d  34 bd                    ADDC A,#0xbd
CODE:098f  f5 83                    MOV DPH,A
CODE:0991  e4                       CLR A
CODE:0992  93                       MOVC A,@A+DPTR
CODE:0993  fd                       MOV R5,A
CODE:0994  74 73                    MOV A,#0x73
CODE:0996  2e                       ADD A,R6
CODE:0997  f5 82                    MOV DPL,A
CODE:0999  e4                       CLR A
CODE:099a  34 00                    ADDC A,#0x0
CODE:099c  f5 83                    MOV DPH,A
CODE:099e  ed                       MOV A,R5
CODE:099f  f0                       MOVX @DPTR,A
CODE:09a0  e6                       MOV A,@R0
CODE:09a1  fe                       MOV R6,A
CODE:09a2  75 f0 03                 MOV B,#0x3
CODE:09a5  a4                       MUL AB
CODE:09a6  24 5a                    ADD A,#0x5a
CODE:09a8  f5 82                    MOV DPL,A
CODE:09aa  e5 f0                    MOV A,B
CODE:09ac  34 bd                    ADDC A,#0xbd
CODE:09ae  f5 83                    MOV DPH,A
CODE:09b0  e4                       CLR A
CODE:09b1  93                       MOVC A,@A+DPTR
CODE:09b2  fd                       MOV R5,A
CODE:09b3  74 08                    MOV A,#0x8
CODE:09b5  2e                       ADD A,R6
CODE:09b6  f5 82                    MOV DPL,A
CODE:09b8  e4                       CLR A
CODE:09b9  34 01                    ADDC A,#0x1
CODE:09bb  f5 83                    MOV DPH,A
CODE:09bd  ed                       MOV A,R5
CODE:09be  f0                       MOVX @DPTR,A
CODE:09bf  e6                       MOV A,@R0
CODE:09c0  fe                       MOV R6,A
CODE:09c1  75 f0 03                 MOV B,#0x3
CODE:09c4  a4                       MUL AB
CODE:09c5  24 5b                    ADD A,#0x5b
CODE:09c7  f5 82                    MOV DPL,A
CODE:09c9  e5 f0                    MOV A,B
CODE:09cb  34 bd                    ADDC A,#0xbd
LAB_CODE_09cd:
CODE:09cd  f5 83                    MOV DPH,A   ; XREF: CODE:0576 
CODE:09cf  e4                       CLR A
CODE:09d0  93                       MOVC A,@A+DPTR
CODE:09d1  fd                       MOV R5,A
CODE:09d2  74 9d                    MOV A,#0x9d
CODE:09d4  2e                       ADD A,R6
CODE:09d5  f5 82                    MOV DPL,A
CODE:09d7  e4                       CLR A
CODE:09d8  34 01                    ADDC A,#0x1
CODE:09da  f5 83                    MOV DPH,A
CODE:09dc  ed                       MOV A,R5
CODE:09dd  f0                       MOVX @DPTR,A
CODE:09de  02 0e 45                 LJMP 0x0e45

; ===== FUNCTION FUN_CODE_09e1 @ CODE:09e1 =====
CODE:09e1  ef                       MOV A,R7   ; XREF: CODE:07ab 
CODE:09e2  64 12                    XRL A,#0x12
CODE:09e4  60 03                    JZ 0x09e9
CODE:09e6  02 0c 0b                 LJMP 0x0c0b
LAB_CODE_09e9:
CODE:09e9  78 53                    MOV R0,#0x53   ; XREF: CODE:09e4 
CODE:09eb  e6                       MOV A,@R0
CODE:09ec  ff                       MOV R7,A
CODE:09ed  75 f0 03                 MOV B,#0x3
CODE:09f0  a4                       MUL AB
CODE:09f1  24 00                    ADD A,#0x0
CODE:09f3  f5 82                    MOV DPL,A
CODE:09f5  e5 f0                    MOV A,B
CODE:09f7  34 be                    ADDC A,#0xbe
CODE:09f9  f5 83                    MOV DPH,A
CODE:09fb  e4                       CLR A
CODE:09fc  93                       MOVC A,@A+DPTR
CODE:09fd  fe                       MOV R6,A
CODE:09fe  74 00                    MOV A,#0x0
CODE:0a00  2f                       ADD A,R7
CODE:0a01  f5 82                    MOV DPL,A
CODE:0a03  e4                       CLR A
CODE:0a04  34 00                    ADDC A,#0x0
CODE:0a06  f5 83                    MOV DPH,A
CODE:0a08  ee                       MOV A,R6
CODE:0a09  f0                       MOVX @DPTR,A
CODE:0a0a  e6                       MOV A,@R0
CODE:0a0b  ff                       MOV R7,A
CODE:0a0c  75 f0 03                 MOV B,#0x3
CODE:0a0f  a4                       MUL AB
CODE:0a10  24 01                    ADD A,#0x1
CODE:0a12  f5 82                    MOV DPL,A
CODE:0a14  e5 f0                    MOV A,B
CODE:0a16  34 be                    ADDC A,#0xbe
CODE:0a18  f5 83                    MOV DPH,A
CODE:0a1a  e4                       CLR A
CODE:0a1b  93                       MOVC A,@A+DPTR
CODE:0a1c  fe                       MOV R6,A
CODE:0a1d  74 95                    MOV A,#0x95
CODE:0a1f  2f                       ADD A,R7
CODE:0a20  f5 82                    MOV DPL,A
CODE:0a22  e4                       CLR A
CODE:0a23  34 00                    ADDC A,#0x0
CODE:0a25  f5 83                    MOV DPH,A
CODE:0a27  ee                       MOV A,R6
CODE:0a28  f0                       MOVX @DPTR,A
CODE:0a29  e6                       MOV A,@R0
CODE:0a2a  ff                       MOV R7,A
CODE:0a2b  75 f0 03                 MOV B,#0x3
CODE:0a2e  a4                       MUL AB
CODE:0a2f  24 02                    ADD A,#0x2
CODE:0a31  f5 82                    MOV DPL,A
CODE:0a33  e5 f0                    MOV A,B
CODE:0a35  34 be                    ADDC A,#0xbe
CODE:0a37  f5 83                    MOV DPH,A
CODE:0a39  e4                       CLR A
CODE:0a3a  93                       MOVC A,@A+DPTR
CODE:0a3b  fe                       MOV R6,A
CODE:0a3c  74 2a                    MOV A,#0x2a
CODE:0a3e  2f                       ADD A,R7
CODE:0a3f  f5 82                    MOV DPL,A
CODE:0a41  e4                       CLR A
CODE:0a42  34 01                    ADDC A,#0x1
CODE:0a44  f5 83                    MOV DPH,A
CODE:0a46  ee                       MOV A,R6
CODE:0a47  f0                       MOVX @DPTR,A
CODE:0a48  e6                       MOV A,@R0
CODE:0a49  ff                       MOV R7,A
CODE:0a4a  75 f0 03                 MOV B,#0x3
CODE:0a4d  a4                       MUL AB
CODE:0a4e  24 45                    ADD A,#0x45
CODE:0a50  f5 82                    MOV DPL,A
CODE:0a52  e5 f0                    MOV A,B
CODE:0a54  34 be                    ADDC A,#0xbe
CODE:0a56  f5 83                    MOV DPH,A
CODE:0a58  e4                       CLR A
CODE:0a59  93                       MOVC A,@A+DPTR
CODE:0a5a  fe                       MOV R6,A
CODE:0a5b  74 17                    MOV A,#0x17
CODE:0a5d  2f                       ADD A,R7
CODE:0a5e  f5 82                    MOV DPL,A
CODE:0a60  e4                       CLR A
CODE:0a61  34 00                    ADDC A,#0x0
CODE:0a63  f5 83                    MOV DPH,A
CODE:0a65  ee                       MOV A,R6
CODE:0a66  f0                       MOVX @DPTR,A
CODE:0a67  e6                       MOV A,@R0
CODE:0a68  ff                       MOV R7,A
CODE:0a69  75 f0 03                 MOV B,#0x3
CODE:0a6c  a4                       MUL AB
CODE:0a6d  24 46                    ADD A,#0x46
CODE:0a6f  f5 82                    MOV DPL,A
CODE:0a71  e5 f0                    MOV A,B
CODE:0a73  34 be                    ADDC A,#0xbe
CODE:0a75  f5 83                    MOV DPH,A
CODE:0a77  e4                       CLR A
CODE:0a78  93                       MOVC A,@A+DPTR
CODE:0a79  fe                       MOV R6,A
CODE:0a7a  74 ac                    MOV A,#0xac
CODE:0a7c  2f                       ADD A,R7
CODE:0a7d  f5 82                    MOV DPL,A
CODE:0a7f  e4                       CLR A
CODE:0a80  34 00                    ADDC A,#0x0
CODE:0a82  f5 83                    MOV DPH,A
CODE:0a84  ee                       MOV A,R6
CODE:0a85  f0                       MOVX @DPTR,A
CODE:0a86  e6                       MOV A,@R0
CODE:0a87  ff                       MOV R7,A
CODE:0a88  75 f0 03                 MOV B,#0x3
CODE:0a8b  a4                       MUL AB
CODE:0a8c  24 47                    ADD A,#0x47
CODE:0a8e  f5 82                    MOV DPL,A
CODE:0a90  e5 f0                    MOV A,B
CODE:0a92  34 be                    ADDC A,#0xbe
CODE:0a94  f5 83                    MOV DPH,A
CODE:0a96  e4                       CLR A
CODE:0a97  93                       MOVC A,@A+DPTR
CODE:0a98  fe                       MOV R6,A
CODE:0a99  74 41                    MOV A,#0x41
CODE:0a9b  2f                       ADD A,R7
CODE:0a9c  f5 82                    MOV DPL,A
CODE:0a9e  e4                       CLR A
CODE:0a9f  34 01                    ADDC A,#0x1
CODE:0aa1  f5 83                    MOV DPH,A
CODE:0aa3  ee                       MOV A,R6
CODE:0aa4  f0                       MOVX @DPTR,A
CODE:0aa5  e6                       MOV A,@R0
CODE:0aa6  ff                       MOV R7,A
CODE:0aa7  75 f0 03                 MOV B,#0x3
CODE:0aaa  a4                       MUL AB
CODE:0aab  24 8a                    ADD A,#0x8a
CODE:0aad  f5 82                    MOV DPL,A
CODE:0aaf  e5 f0                    MOV A,B
CODE:0ab1  34 be                    ADDC A,#0xbe
CODE:0ab3  f5 83                    MOV DPH,A
CODE:0ab5  e4                       CLR A
CODE:0ab6  93                       MOVC A,@A+DPTR
CODE:0ab7  fe                       MOV R6,A
CODE:0ab8  74 2e                    MOV A,#0x2e
CODE:0aba  2f                       ADD A,R7
CODE:0abb  f5 82                    MOV DPL,A
CODE:0abd  e4                       CLR A
CODE:0abe  34 00                    ADDC A,#0x0
CODE:0ac0  f5 83                    MOV DPH,A
CODE:0ac2  ee                       MOV A,R6
CODE:0ac3  f0                       MOVX @DPTR,A
CODE:0ac4  e6                       MOV A,@R0
CODE:0ac5  ff                       MOV R7,A
CODE:0ac6  75 f0 03                 MOV B,#0x3
CODE:0ac9  a4                       MUL AB
CODE:0aca  24 8b                    ADD A,#0x8b
CODE:0acc  f5 82                    MOV DPL,A
CODE:0ace  e5 f0                    MOV A,B
CODE:0ad0  34 be                    ADDC A,#0xbe
CODE:0ad2  f5 83                    MOV DPH,A
CODE:0ad4  e4                       CLR A
CODE:0ad5  93                       MOVC A,@A+DPTR
CODE:0ad6  fe                       MOV R6,A
CODE:0ad7  74 c3                    MOV A,#0xc3
CODE:0ad9  2f                       ADD A,R7
CODE:0ada  f5 82                    MOV DPL,A
CODE:0adc  e4                       CLR A
CODE:0add  34 00                    ADDC A,#0x0
CODE:0adf  f5 83                    MOV DPH,A
CODE:0ae1  ee                       MOV A,R6
CODE:0ae2  f0                       MOVX @DPTR,A
CODE:0ae3  e6                       MOV A,@R0
CODE:0ae4  ff                       MOV R7,A
CODE:0ae5  75 f0 03                 MOV B,#0x3
CODE:0ae8  a4                       MUL AB
CODE:0ae9  24 8c                    ADD A,#0x8c
CODE:0aeb  f5 82                    MOV DPL,A
CODE:0aed  e5 f0                    MOV A,B
CODE:0aef  34 be                    ADDC A,#0xbe
CODE:0af1  f5 83                    MOV DPH,A
CODE:0af3  e4                       CLR A
CODE:0af4  93                       MOVC A,@A+DPTR
CODE:0af5  fe                       MOV R6,A
CODE:0af6  74 58                    MOV A,#0x58
CODE:0af8  2f                       ADD A,R7
CODE:0af9  f5 82                    MOV DPL,A
CODE:0afb  e4                       CLR A
CODE:0afc  34 01                    ADDC A,#0x1
CODE:0afe  f5 83                    MOV DPH,A
CODE:0b00  ee                       MOV A,R6
CODE:0b01  f0                       MOVX @DPTR,A
CODE:0b02  e6                       MOV A,@R0
CODE:0b03  ff                       MOV R7,A
CODE:0b04  75 f0 03                 MOV B,#0x3
CODE:0b07  a4                       MUL AB
CODE:0b08  24 cf                    ADD A,#0xcf
CODE:0b0a  f5 82                    MOV DPL,A
CODE:0b0c  e5 f0                    MOV A,B
CODE:0b0e  34 be                    ADDC A,#0xbe
CODE:0b10  f5 83                    MOV DPH,A
CODE:0b12  e4                       CLR A
CODE:0b13  93                       MOVC A,@A+DPTR
CODE:0b14  fe                       MOV R6,A
CODE:0b15  74 45                    MOV A,#0x45
CODE:0b17  2f                       ADD A,R7
CODE:0b18  f5 82                    MOV DPL,A
CODE:0b1a  e4                       CLR A
CODE:0b1b  34 00                    ADDC A,#0x0
CODE:0b1d  f5 83                    MOV DPH,A
CODE:0b1f  ee                       MOV A,R6
CODE:0b20  f0                       MOVX @DPTR,A
CODE:0b21  e6                       MOV A,@R0
CODE:0b22  ff                       MOV R7,A
CODE:0b23  75 f0 03                 MOV B,#0x3
CODE:0b26  a4                       MUL AB
CODE:0b27  24 d0                    ADD A,#0xd0
CODE:0b29  f5 82                    MOV DPL,A
CODE:0b2b  e5 f0                    MOV A,B
CODE:0b2d  34 be                    ADDC A,#0xbe
CODE:0b2f  f5 83                    MOV DPH,A
CODE:0b31  e4                       CLR A
CODE:0b32  93                       MOVC A,@A+DPTR
CODE:0b33  fe                       MOV R6,A
CODE:0b34  74 da                    MOV A,#0xda
CODE:0b36  2f                       ADD A,R7
CODE:0b37  f5 82                    MOV DPL,A
CODE:0b39  e4                       CLR A
CODE:0b3a  34 00                    ADDC A,#0x0
CODE:0b3c  f5 83                    MOV DPH,A
CODE:0b3e  ee                       MOV A,R6
CODE:0b3f  f0                       MOVX @DPTR,A
CODE:0b40  e6                       MOV A,@R0
CODE:0b41  ff                       MOV R7,A
CODE:0b42  75 f0 03                 MOV B,#0x3
CODE:0b45  a4                       MUL AB
CODE:0b46  24 d1                    ADD A,#0xd1
CODE:0b48  f5 82                    MOV DPL,A
CODE:0b4a  e5 f0                    MOV A,B
CODE:0b4c  34 be                    ADDC A,#0xbe
CODE:0b4e  f5 83                    MOV DPH,A
CODE:0b50  e4                       CLR A
CODE:0b51  93                       MOVC A,@A+DPTR
CODE:0b52  fe                       MOV R6,A
CODE:0b53  74 6f                    MOV A,#0x6f
CODE:0b55  2f                       ADD A,R7
CODE:0b56  f5 82                    MOV DPL,A
CODE:0b58  e4                       CLR A
CODE:0b59  34 01                    ADDC A,#0x1
CODE:0b5b  f5 83                    MOV DPH,A
CODE:0b5d  ee                       MOV A,R6
CODE:0b5e  f0                       MOVX @DPTR,A
CODE:0b5f  e6                       MOV A,@R0
CODE:0b60  ff                       MOV R7,A
CODE:0b61  75 f0 03                 MOV B,#0x3
CODE:0b64  a4                       MUL AB
CODE:0b65  24 14                    ADD A,#0x14
CODE:0b67  f5 82                    MOV DPL,A
CODE:0b69  e5 f0                    MOV A,B
CODE:0b6b  34 bf                    ADDC A,#0xbf
CODE:0b6d  f5 83                    MOV DPH,A
CODE:0b6f  e4                       CLR A
CODE:0b70  93                       MOVC A,@A+DPTR
CODE:0b71  fe                       MOV R6,A
CODE:0b72  74 5c                    MOV A,#0x5c
CODE:0b74  2f                       ADD A,R7
CODE:0b75  f5 82                    MOV DPL,A
CODE:0b77  e4                       CLR A
CODE:0b78  34 00                    ADDC A,#0x0
CODE:0b7a  f5 83                    MOV DPH,A
CODE:0b7c  ee                       MOV A,R6
CODE:0b7d  f0                       MOVX @DPTR,A
CODE:0b7e  e6                       MOV A,@R0
CODE:0b7f  ff                       MOV R7,A
CODE:0b80  75 f0 03                 MOV B,#0x3
CODE:0b83  a4                       MUL AB
CODE:0b84  24 15                    ADD A,#0x15
CODE:0b86  f5 82                    MOV DPL,A
CODE:0b88  e5 f0                    MOV A,B
CODE:0b8a  34 bf                    ADDC A,#0xbf
CODE:0b8c  f5 83                    MOV DPH,A
CODE:0b8e  e4                       CLR A
CODE:0b8f  93                       MOVC A,@A+DPTR
CODE:0b90  fe                       MOV R6,A
CODE:0b91  74 f1                    MOV A,#0xf1
CODE:0b93  2f                       ADD A,R7
CODE:0b94  f5 82                    MOV DPL,A
CODE:0b96  e4                       CLR A
CODE:0b97  34 00                    ADDC A,#0x0
CODE:0b99  f5 83                    MOV DPH,A
CODE:0b9b  ee                       MOV A,R6
CODE:0b9c  f0                       MOVX @DPTR,A
CODE:0b9d  e6                       MOV A,@R0
CODE:0b9e  ff                       MOV R7,A
CODE:0b9f  75 f0 03                 MOV B,#0x3
CODE:0ba2  a4                       MUL AB
CODE:0ba3  24 16                    ADD A,#0x16
CODE:0ba5  f5 82                    MOV DPL,A
CODE:0ba7  e5 f0                    MOV A,B
CODE:0ba9  34 bf                    ADDC A,#0xbf
CODE:0bab  f5 83                    MOV DPH,A
CODE:0bad  e4                       CLR A
CODE:0bae  93                       MOVC A,@A+DPTR
CODE:0baf  fe                       MOV R6,A
CODE:0bb0  74 86                    MOV A,#0x86
CODE:0bb2  2f                       ADD A,R7
CODE:0bb3  f5 82                    MOV DPL,A
CODE:0bb5  e4                       CLR A
CODE:0bb6  34 01                    ADDC A,#0x1
CODE:0bb8  f5 83                    MOV DPH,A
CODE:0bba  ee                       MOV A,R6
CODE:0bbb  f0                       MOVX @DPTR,A
CODE:0bbc  e6                       MOV A,@R0
CODE:0bbd  ff                       MOV R7,A
CODE:0bbe  75 f0 03                 MOV B,#0x3
CODE:0bc1  a4                       MUL AB
CODE:0bc2  24 59                    ADD A,#0x59
CODE:0bc4  f5 82                    MOV DPL,A
CODE:0bc6  e5 f0                    MOV A,B
CODE:0bc8  34 bf                    ADDC A,#0xbf
CODE:0bca  f5 83                    MOV DPH,A
CODE:0bcc  e4                       CLR A
CODE:0bcd  93                       MOVC A,@A+DPTR
CODE:0bce  fe                       MOV R6,A
CODE:0bcf  74 73                    MOV A,#0x73
CODE:0bd1  2f                       ADD A,R7
CODE:0bd2  f5 82                    MOV DPL,A
CODE:0bd4  e4                       CLR A
CODE:0bd5  34 00                    ADDC A,#0x0
CODE:0bd7  f5 83                    MOV DPH,A
CODE:0bd9  ee                       MOV A,R6
CODE:0bda  f0                       MOVX @DPTR,A
CODE:0bdb  e6                       MOV A,@R0
CODE:0bdc  ff                       MOV R7,A
CODE:0bdd  75 f0 03                 MOV B,#0x3
CODE:0be0  a4                       MUL AB
CODE:0be1  24 5a                    ADD A,#0x5a
CODE:0be3  f5 82                    MOV DPL,A
CODE:0be5  e5 f0                    MOV A,B
CODE:0be7  34 bf                    ADDC A,#0xbf
CODE:0be9  f5 83                    MOV DPH,A
CODE:0beb  e4                       CLR A
CODE:0bec  93                       MOVC A,@A+DPTR
CODE:0bed  fe                       MOV R6,A
CODE:0bee  74 08                    MOV A,#0x8
CODE:0bf0  2f                       ADD A,R7
CODE:0bf1  f5 82                    MOV DPL,A
CODE:0bf3  e4                       CLR A
CODE:0bf4  34 01                    ADDC A,#0x1
CODE:0bf6  f5 83                    MOV DPH,A
CODE:0bf8  ee                       MOV A,R6
CODE:0bf9  f0                       MOVX @DPTR,A
CODE:0bfa  e6                       MOV A,@R0
CODE:0bfb  ff                       MOV R7,A
CODE:0bfc  75 f0 03                 MOV B,#0x3
CODE:0bff  a4                       MUL AB
CODE:0c00  24 5b                    ADD A,#0x5b
CODE:0c02  f5 82                    MOV DPL,A
CODE:0c04  e5 f0                    MOV A,B
CODE:0c06  34 bf                    ADDC A,#0xbf
CODE:0c08  02 0e 34                 LJMP 0x0e34
LAB_CODE_0c0b:
CODE:0c0b  78 76                    MOV R0,#0x76   ; XREF: CODE:09e6 
CODE:0c0d  e6                       MOV A,@R0
CODE:0c0e  64 13                    XRL A,#0x13
CODE:0c10  60 03                    JZ 0x0c15
CODE:0c12  02 0e 45                 LJMP 0x0e45
LAB_CODE_0c15:
CODE:0c15  78 53                    MOV R0,#0x53   ; XREF: CODE:0c10 
CODE:0c17  e6                       MOV A,@R0
CODE:0c18  ff                       MOV R7,A
CODE:0c19  75 f0 03                 MOV B,#0x3
CODE:0c1c  a4                       MUL AB
CODE:0c1d  24 00                    ADD A,#0x0
CODE:0c1f  f5 82                    MOV DPL,A
CODE:0c21  e5 f0                    MOV A,B
CODE:0c23  34 c0                    ADDC A,#0xc0
CODE:0c25  f5 83                    MOV DPH,A
CODE:0c27  e4                       CLR A
CODE:0c28  93                       MOVC A,@A+DPTR
CODE:0c29  fe                       MOV R6,A
CODE:0c2a  74 00                    MOV A,#0x0
CODE:0c2c  2f                       ADD A,R7
CODE:0c2d  f5 82                    MOV DPL,A
CODE:0c2f  e4                       CLR A
CODE:0c30  34 00                    ADDC A,#0x0
CODE:0c32  f5 83                    MOV DPH,A
CODE:0c34  ee                       MOV A,R6
CODE:0c35  f0                       MOVX @DPTR,A
CODE:0c36  e6                       MOV A,@R0
CODE:0c37  ff                       MOV R7,A
CODE:0c38  75 f0 03                 MOV B,#0x3
CODE:0c3b  a4                       MUL AB
CODE:0c3c  24 01                    ADD A,#0x1
CODE:0c3e  f5 82                    MOV DPL,A
CODE:0c40  e5 f0                    MOV A,B
CODE:0c42  34 c0                    ADDC A,#0xc0
CODE:0c44  f5 83                    MOV DPH,A
CODE:0c46  e4                       CLR A
CODE:0c47  93                       MOVC A,@A+DPTR
CODE:0c48  fe                       MOV R6,A
CODE:0c49  74 95                    MOV A,#0x95
CODE:0c4b  2f                       ADD A,R7
CODE:0c4c  f5 82                    MOV DPL,A
CODE:0c4e  e4                       CLR A
CODE:0c4f  34 00                    ADDC A,#0x0
CODE:0c51  f5 83                    MOV DPH,A
CODE:0c53  ee                       MOV A,R6
CODE:0c54  f0                       MOVX @DPTR,A
CODE:0c55  e6                       MOV A,@R0
CODE:0c56  ff                       MOV R7,A
CODE:0c57  75 f0 03                 MOV B,#0x3
CODE:0c5a  a4                       MUL AB
CODE:0c5b  24 02                    ADD A,#0x2
CODE:0c5d  f5 82                    MOV DPL,A
CODE:0c5f  e5 f0                    MOV A,B
CODE:0c61  34 c0                    ADDC A,#0xc0
CODE:0c63  f5 83                    MOV DPH,A
CODE:0c65  e4                       CLR A
CODE:0c66  93                       MOVC A,@A+DPTR
CODE:0c67  fe                       MOV R6,A
CODE:0c68  74 2a                    MOV A,#0x2a
CODE:0c6a  2f                       ADD A,R7
CODE:0c6b  f5 82                    MOV DPL,A
CODE:0c6d  e4                       CLR A
CODE:0c6e  34 01                    ADDC A,#0x1
CODE:0c70  f5 83                    MOV DPH,A
CODE:0c72  ee                       MOV A,R6
CODE:0c73  f0                       MOVX @DPTR,A
CODE:0c74  e6                       MOV A,@R0
CODE:0c75  ff                       MOV R7,A
CODE:0c76  75 f0 03                 MOV B,#0x3
CODE:0c79  a4                       MUL AB
CODE:0c7a  24 45                    ADD A,#0x45
CODE:0c7c  f5 82                    MOV DPL,A
CODE:0c7e  e5 f0                    MOV A,B
CODE:0c80  34 c0                    ADDC A,#0xc0
CODE:0c82  f5 83                    MOV DPH,A
CODE:0c84  e4                       CLR A
CODE:0c85  93                       MOVC A,@A+DPTR
CODE:0c86  fe                       MOV R6,A
CODE:0c87  74 17                    MOV A,#0x17
CODE:0c89  2f                       ADD A,R7
CODE:0c8a  f5 82                    MOV DPL,A
CODE:0c8c  e4                       CLR A
CODE:0c8d  34 00                    ADDC A,#0x0
CODE:0c8f  f5 83                    MOV DPH,A
CODE:0c91  ee                       MOV A,R6
CODE:0c92  f0                       MOVX @DPTR,A
CODE:0c93  e6                       MOV A,@R0
CODE:0c94  ff                       MOV R7,A
CODE:0c95  75 f0 03                 MOV B,#0x3
CODE:0c98  a4                       MUL AB
CODE:0c99  24 46                    ADD A,#0x46
CODE:0c9b  f5 82                    MOV DPL,A
CODE:0c9d  e5 f0                    MOV A,B
CODE:0c9f  34 c0                    ADDC A,#0xc0
CODE:0ca1  f5 83                    MOV DPH,A
CODE:0ca3  e4                       CLR A
CODE:0ca4  93                       MOVC A,@A+DPTR
CODE:0ca5  fe                       MOV R6,A
CODE:0ca6  74 ac                    MOV A,#0xac
CODE:0ca8  2f                       ADD A,R7
CODE:0ca9  f5 82                    MOV DPL,A
CODE:0cab  e4                       CLR A
CODE:0cac  34 00                    ADDC A,#0x0
CODE:0cae  f5 83                    MOV DPH,A
CODE:0cb0  ee                       MOV A,R6
CODE:0cb1  f0                       MOVX @DPTR,A
CODE:0cb2  e6                       MOV A,@R0
CODE:0cb3  ff                       MOV R7,A
CODE:0cb4  75 f0 03                 MOV B,#0x3
CODE:0cb7  a4                       MUL AB
CODE:0cb8  24 47                    ADD A,#0x47
CODE:0cba  f5 82                    MOV DPL,A
CODE:0cbc  e5 f0                    MOV A,B
CODE:0cbe  34 c0                    ADDC A,#0xc0
CODE:0cc0  f5 83                    MOV DPH,A
CODE:0cc2  e4                       CLR A
CODE:0cc3  93                       MOVC A,@A+DPTR
CODE:0cc4  fe                       MOV R6,A
CODE:0cc5  74 41                    MOV A,#0x41
CODE:0cc7  2f                       ADD A,R7
CODE:0cc8  f5 82                    MOV DPL,A
CODE:0cca  e4                       CLR A
CODE:0ccb  34 01                    ADDC A,#0x1
CODE:0ccd  f5 83                    MOV DPH,A
CODE:0ccf  ee                       MOV A,R6
CODE:0cd0  f0                       MOVX @DPTR,A
CODE:0cd1  e6                       MOV A,@R0
CODE:0cd2  ff                       MOV R7,A
CODE:0cd3  75 f0 03                 MOV B,#0x3
CODE:0cd6  a4                       MUL AB
CODE:0cd7  24 8a                    ADD A,#0x8a
CODE:0cd9  f5 82                    MOV DPL,A
CODE:0cdb  e5 f0                    MOV A,B
CODE:0cdd  34 c0                    ADDC A,#0xc0
CODE:0cdf  f5 83                    MOV DPH,A
CODE:0ce1  e4                       CLR A
CODE:0ce2  93                       MOVC A,@A+DPTR
CODE:0ce3  fe                       MOV R6,A
CODE:0ce4  74 2e                    MOV A,#0x2e
CODE:0ce6  2f                       ADD A,R7
CODE:0ce7  f5 82                    MOV DPL,A
CODE:0ce9  e4                       CLR A
CODE:0cea  34 00                    ADDC A,#0x0
CODE:0cec  f5 83                    MOV DPH,A
CODE:0cee  ee                       MOV A,R6
CODE:0cef  f0                       MOVX @DPTR,A
CODE:0cf0  e6                       MOV A,@R0
CODE:0cf1  ff                       MOV R7,A
CODE:0cf2  75 f0 03                 MOV B,#0x3
CODE:0cf5  a4                       MUL AB
CODE:0cf6  24 8b                    ADD A,#0x8b
CODE:0cf8  f5 82                    MOV DPL,A
CODE:0cfa  e5 f0                    MOV A,B
CODE:0cfc  34 c0                    ADDC A,#0xc0
CODE:0cfe  f5 83                    MOV DPH,A
CODE:0d00  e4                       CLR A
CODE:0d01  93                       MOVC A,@A+DPTR
CODE:0d02  fe                       MOV R6,A
CODE:0d03  74 c3                    MOV A,#0xc3
CODE:0d05  2f                       ADD A,R7
CODE:0d06  f5 82                    MOV DPL,A
CODE:0d08  e4                       CLR A
CODE:0d09  34 00                    ADDC A,#0x0
CODE:0d0b  f5 83                    MOV DPH,A
CODE:0d0d  ee                       MOV A,R6
CODE:0d0e  f0                       MOVX @DPTR,A
CODE:0d0f  e6                       MOV A,@R0
CODE:0d10  ff                       MOV R7,A
CODE:0d11  75 f0 03                 MOV B,#0x3
CODE:0d14  a4                       MUL AB
CODE:0d15  24 8c                    ADD A,#0x8c
CODE:0d17  f5 82                    MOV DPL,A
CODE:0d19  e5 f0                    MOV A,B
CODE:0d1b  34 c0                    ADDC A,#0xc0
CODE:0d1d  f5 83                    MOV DPH,A
CODE:0d1f  e4                       CLR A
CODE:0d20  93                       MOVC A,@A+DPTR
CODE:0d21  fe                       MOV R6,A
CODE:0d22  74 58                    MOV A,#0x58
CODE:0d24  2f                       ADD A,R7
CODE:0d25  f5 82                    MOV DPL,A
CODE:0d27  e4                       CLR A
CODE:0d28  34 01                    ADDC A,#0x1
CODE:0d2a  f5 83                    MOV DPH,A
CODE:0d2c  ee                       MOV A,R6
CODE:0d2d  f0                       MOVX @DPTR,A
CODE:0d2e  e6                       MOV A,@R0
CODE:0d2f  ff                       MOV R7,A
CODE:0d30  75 f0 03                 MOV B,#0x3
CODE:0d33  a4                       MUL AB
CODE:0d34  24 cf                    ADD A,#0xcf
CODE:0d36  f5 82                    MOV DPL,A
CODE:0d38  e5 f0                    MOV A,B
CODE:0d3a  34 c0                    ADDC A,#0xc0
CODE:0d3c  f5 83                    MOV DPH,A
CODE:0d3e  e4                       CLR A
CODE:0d3f  93                       MOVC A,@A+DPTR
CODE:0d40  fe                       MOV R6,A
CODE:0d41  74 45                    MOV A,#0x45
CODE:0d43  2f                       ADD A,R7
CODE:0d44  f5 82                    MOV DPL,A
CODE:0d46  e4                       CLR A
CODE:0d47  34 00                    ADDC A,#0x0
CODE:0d49  f5 83                    MOV DPH,A
CODE:0d4b  ee                       MOV A,R6
CODE:0d4c  f0                       MOVX @DPTR,A
CODE:0d4d  e6                       MOV A,@R0
CODE:0d4e  ff                       MOV R7,A
CODE:0d4f  75 f0 03                 MOV B,#0x3
CODE:0d52  a4                       MUL AB
CODE:0d53  24 d0                    ADD A,#0xd0
CODE:0d55  f5 82                    MOV DPL,A
CODE:0d57  e5 f0                    MOV A,B
CODE:0d59  34 c0                    ADDC A,#0xc0
CODE:0d5b  f5 83                    MOV DPH,A
CODE:0d5d  e4                       CLR A
CODE:0d5e  93                       MOVC A,@A+DPTR
CODE:0d5f  fe                       MOV R6,A
CODE:0d60  74 da                    MOV A,#0xda
CODE:0d62  2f                       ADD A,R7
CODE:0d63  f5 82                    MOV DPL,A
CODE:0d65  e4                       CLR A
CODE:0d66  34 00                    ADDC A,#0x0
CODE:0d68  f5 83                    MOV DPH,A
CODE:0d6a  ee                       MOV A,R6
CODE:0d6b  f0                       MOVX @DPTR,A
CODE:0d6c  e6                       MOV A,@R0
CODE:0d6d  ff                       MOV R7,A
CODE:0d6e  75 f0 03                 MOV B,#0x3
CODE:0d71  a4                       MUL AB
CODE:0d72  24 d1                    ADD A,#0xd1
CODE:0d74  f5 82                    MOV DPL,A
CODE:0d76  e5 f0                    MOV A,B
CODE:0d78  34 c0                    ADDC A,#0xc0
CODE:0d7a  f5 83                    MOV DPH,A
CODE:0d7c  e4                       CLR A
CODE:0d7d  93                       MOVC A,@A+DPTR
CODE:0d7e  fe                       MOV R6,A
CODE:0d7f  74 6f                    MOV A,#0x6f
CODE:0d81  2f                       ADD A,R7
CODE:0d82  f5 82                    MOV DPL,A
CODE:0d84  e4                       CLR A
CODE:0d85  34 01                    ADDC A,#0x1
CODE:0d87  f5 83                    MOV DPH,A
CODE:0d89  ee                       MOV A,R6
CODE:0d8a  f0                       MOVX @DPTR,A
CODE:0d8b  e6                       MOV A,@R0
CODE:0d8c  ff                       MOV R7,A
CODE:0d8d  75 f0 03                 MOV B,#0x3
CODE:0d90  a4                       MUL AB
CODE:0d91  24 14                    ADD A,#0x14
CODE:0d93  f5 82                    MOV DPL,A
CODE:0d95  e5 f0                    MOV A,B
CODE:0d97  34 c1                    ADDC A,#0xc1
CODE:0d99  f5 83                    MOV DPH,A
CODE:0d9b  e4                       CLR A
CODE:0d9c  93                       MOVC A,@A+DPTR
CODE:0d9d  fe                       MOV R6,A
CODE:0d9e  74 5c                    MOV A,#0x5c
CODE:0da0  2f                       ADD A,R7
CODE:0da1  f5 82                    MOV DPL,A
CODE:0da3  e4                       CLR A
CODE:0da4  34 00                    ADDC A,#0x0
CODE:0da6  f5 83                    MOV DPH,A
CODE:0da8  ee                       MOV A,R6
CODE:0da9  f0                       MOVX @DPTR,A
CODE:0daa  e6                       MOV A,@R0
CODE:0dab  ff                       MOV R7,A
CODE:0dac  75 f0 03                 MOV B,#0x3
CODE:0daf  a4                       MUL AB
CODE:0db0  24 15                    ADD A,#0x15
CODE:0db2  f5 82                    MOV DPL,A
CODE:0db4  e5 f0                    MOV A,B
CODE:0db6  34 c1                    ADDC A,#0xc1
CODE:0db8  f5 83                    MOV DPH,A
CODE:0dba  e4                       CLR A
CODE:0dbb  93                       MOVC A,@A+DPTR
CODE:0dbc  fe                       MOV R6,A
CODE:0dbd  74 f1                    MOV A,#0xf1
CODE:0dbf  2f                       ADD A,R7
CODE:0dc0  f5 82                    MOV DPL,A
CODE:0dc2  e4                       CLR A
CODE:0dc3  34 00                    ADDC A,#0x0
CODE:0dc5  f5 83                    MOV DPH,A
CODE:0dc7  ee                       MOV A,R6
CODE:0dc8  f0                       MOVX @DPTR,A
CODE:0dc9  e6                       MOV A,@R0
CODE:0dca  ff                       MOV R7,A
CODE:0dcb  75 f0 03                 MOV B,#0x3
CODE:0dce  a4                       MUL AB
CODE:0dcf  24 16                    ADD A,#0x16
CODE:0dd1  f5 82                    MOV DPL,A
CODE:0dd3  e5 f0                    MOV A,B
CODE:0dd5  34 c1                    ADDC A,#0xc1
CODE:0dd7  f5 83                    MOV DPH,A
CODE:0dd9  e4                       CLR A
CODE:0dda  93                       MOVC A,@A+DPTR
CODE:0ddb  fe                       MOV R6,A
CODE:0ddc  74 86                    MOV A,#0x86
CODE:0dde  2f                       ADD A,R7
CODE:0ddf  f5 82                    MOV DPL,A
CODE:0de1  e4                       CLR A
CODE:0de2  34 01                    ADDC A,#0x1
CODE:0de4  f5 83                    MOV DPH,A
CODE:0de6  ee                       MOV A,R6
CODE:0de7  f0                       MOVX @DPTR,A
CODE:0de8  e6                       MOV A,@R0
CODE:0de9  ff                       MOV R7,A
CODE:0dea  75 f0 03                 MOV B,#0x3
CODE:0ded  a4                       MUL AB
CODE:0dee  24 59                    ADD A,#0x59
CODE:0df0  f5 82                    MOV DPL,A
CODE:0df2  e5 f0                    MOV A,B
CODE:0df4  34 c1                    ADDC A,#0xc1
CODE:0df6  f5 83                    MOV DPH,A
CODE:0df8  e4                       CLR A
CODE:0df9  93                       MOVC A,@A+DPTR
CODE:0dfa  fe                       MOV R6,A
CODE:0dfb  74 73                    MOV A,#0x73
CODE:0dfd  2f                       ADD A,R7
CODE:0dfe  f5 82                    MOV DPL,A
CODE:0e00  e4                       CLR A
CODE:0e01  34 00                    ADDC A,#0x0
CODE:0e03  f5 83                    MOV DPH,A
CODE:0e05  ee                       MOV A,R6
CODE:0e06  f0                       MOVX @DPTR,A
CODE:0e07  e6                       MOV A,@R0
CODE:0e08  ff                       MOV R7,A
CODE:0e09  75 f0 03                 MOV B,#0x3
CODE:0e0c  a4                       MUL AB
CODE:0e0d  24 5a                    ADD A,#0x5a
CODE:0e0f  f5 82                    MOV DPL,A
CODE:0e11  e5 f0                    MOV A,B
CODE:0e13  34 c1                    ADDC A,#0xc1
CODE:0e15  f5 83                    MOV DPH,A
CODE:0e17  e4                       CLR A
CODE:0e18  93                       MOVC A,@A+DPTR
CODE:0e19  fe                       MOV R6,A
CODE:0e1a  74 08                    MOV A,#0x8
CODE:0e1c  2f                       ADD A,R7
CODE:0e1d  f5 82                    MOV DPL,A
CODE:0e1f  e4                       CLR A
CODE:0e20  34 01                    ADDC A,#0x1
CODE:0e22  f5 83                    MOV DPH,A
CODE:0e24  ee                       MOV A,R6
CODE:0e25  f0                       MOVX @DPTR,A
CODE:0e26  e6                       MOV A,@R0
CODE:0e27  ff                       MOV R7,A
CODE:0e28  75 f0 03                 MOV B,#0x3
CODE:0e2b  a4                       MUL AB
CODE:0e2c  24 5b                    ADD A,#0x5b
CODE:0e2e  f5 82                    MOV DPL,A
CODE:0e30  e5 f0                    MOV A,B
CODE:0e32  34 c1                    ADDC A,#0xc1
LAB_CODE_0e34:
CODE:0e34  f5 83                    MOV DPH,A   ; XREF: CODE:07a0 CODE:0c08 
CODE:0e36  e4                       CLR A
CODE:0e37  93                       MOVC A,@A+DPTR
CODE:0e38  fe                       MOV R6,A
CODE:0e39  74 9d                    MOV A,#0x9d
CODE:0e3b  2f                       ADD A,R7
CODE:0e3c  f5 82                    MOV DPL,A
CODE:0e3e  e4                       CLR A
CODE:0e3f  34 01                    ADDC A,#0x1
CODE:0e41  f5 83                    MOV DPH,A
CODE:0e43  ee                       MOV A,R6
CODE:0e44  f0                       MOVX @DPTR,A
LAB_CODE_0e45:
CODE:0e45  78 7a                    MOV R0,#0x7a   ; XREF: CODE:0349 CODE:09de CODE:0c12 
CODE:0e47  e6                       MOV A,@R0
CODE:0e48  70 03                    JNZ 0x0e4d
CODE:0e4a  02 38 aa                 LJMP 0x38aa
LAB_CODE_0e4d:
CODE:0e4d  78 53                    MOV R0,#0x53   ; XREF: CODE:0e48 
CODE:0e4f  e6                       MOV A,@R0
CODE:0e50  ff                       MOV R7,A
CODE:0e51  12 65 80                 LCALL 0x6580
CODE:0e54  02 38 aa                 LJMP 0x38aa

; ===== FUNCTION FUN_CODE_0e57 @ CODE:0e57 =====
CODE:0e57  78 53                    MOV R0,#0x53   ; XREF: CODE:005e 
CODE:0e59  e6                       MOV A,@R0
CODE:0e5a  64 17                    XRL A,#0x17
CODE:0e5c  70 3a                    JNZ 0x0e98
CODE:0e5e  d2 82                    SETB 0x82
CODE:0e60  75 cd f3                 MOV 0xcd,#0xf3
CODE:0e63  75 cc 7f                 MOV 0xcc,#0x7f
CODE:0e66  75 cb f3                 MOV 0xcb,#0xf3
CODE:0e69  75 ca 7f                 MOV 0xca,#0x7f
CODE:0e6c  12 79 d2                 LCALL 0x79d2
CODE:0e6f  c2 a0                    CLR 0xa0
CODE:0e71  c2 a1                    CLR 0xa1
CODE:0e73  c2 a2                    CLR 0xa2
CODE:0e75  c2 a3                    CLR 0xa3
CODE:0e77  c2 a4                    CLR 0xa4
CODE:0e79  c2 a5                    CLR 0xa5
CODE:0e7b  c2 98                    CLR 0x98
CODE:0e7d  c2 99                    CLR 0x99
CODE:0e7f  c2 9a                    CLR 0x9a
CODE:0e81  c2 9b                    CLR 0x9b
CODE:0e83  c2 9c                    CLR 0x9c
CODE:0e85  c2 9d                    CLR 0x9d
CODE:0e87  c2 90                    CLR 0x90
CODE:0e89  c2 91                    CLR 0x91
CODE:0e8b  c2 92                    CLR 0x92
CODE:0e8d  c2 93                    CLR 0x93
CODE:0e8f  c2 94                    CLR 0x94
CODE:0e91  c2 95                    CLR 0x95
CODE:0e93  d2 08                    SETB 0x08
CODE:0e95  02 38 aa                 LJMP 0x38aa
LAB_CODE_0e98:
CODE:0e98  78 53                    MOV R0,#0x53   ; XREF: CODE:0e5c 
CODE:0e9a  e6                       MOV A,@R0
CODE:0e9b  64 18                    XRL A,#0x18
CODE:0e9d  60 03                    JZ 0x0ea2
CODE:0e9f  02 0f 36                 LJMP 0x0f36
LAB_CODE_0ea2:
CODE:0ea2  75 cd fe                 MOV 0xcd,#0xfe   ; XREF: CODE:0e9d 
CODE:0ea5  75 cc 6f                 MOV 0xcc,#0x6f
CODE:0ea8  75 cb fe                 MOV 0xcb,#0xfe
CODE:0eab  75 ca 6f                 MOV 0xca,#0x6f
CODE:0eae  12 79 d2                 LCALL 0x79d2
CODE:0eb1  c2 82                    CLR 0x82
CODE:0eb3  30 15 12                 JNB 0x15,0x0ec8
CODE:0eb6  78 56                    MOV R0,#0x56
CODE:0eb8  06                       INC @R0
CODE:0eb9  e6                       MOV A,@R0
CODE:0eba  d3                       SETB CY
CODE:0ebb  94 32                    SUBB A,#0x32
CODE:0ebd  40 04                    JC 0x0ec3
CODE:0ebf  e4                       CLR A
CODE:0ec0  f6                       MOV @R0,A
CODE:0ec1  b2 22                    CPL 0x22
LAB_CODE_0ec3:
CODE:0ec3  30 22 2c                 JNB 0x22,0x0ef2   ; XREF: CODE:0ebd 
CODE:0ec6  80 1d                    SJMP 0x0ee5
LAB_CODE_0ec8:
CODE:0ec8  30 24 34                 JNB 0x24,0x0eff   ; XREF: CODE:0eb3 
CODE:0ecb  78 56                    MOV R0,#0x56
CODE:0ecd  06                       INC @R0
CODE:0ece  e6                       MOV A,@R0
CODE:0ecf  d3                       SETB CY
CODE:0ed0  94 0f                    SUBB A,#0xf
CODE:0ed2  40 0e                    JC 0x0ee2
CODE:0ed4  e4                       CLR A
CODE:0ed5  f6                       MOV @R0,A
CODE:0ed6  e5 1f                    MOV A,0x1f
CODE:0ed8  60 04                    JZ 0x0ede
CODE:0eda  15 1f                    DEC 0x1f
CODE:0edc  80 02                    SJMP 0x0ee0
LAB_CODE_0ede:
CODE:0ede  c2 24                    CLR 0x24   ; XREF: CODE:0ed8 
LAB_CODE_0ee0:
CODE:0ee0  b2 22                    CPL 0x22   ; XREF: CODE:0edc 
LAB_CODE_0ee2:
CODE:0ee2  30 22 0d                 JNB 0x22,0x0ef2   ; XREF: CODE:0ed2 
LAB_CODE_0ee5:
CODE:0ee5  c2 a0                    CLR 0xa0   ; XREF: CODE:0ec6 
CODE:0ee7  c2 a1                    CLR 0xa1
CODE:0ee9  c2 a2                    CLR 0xa2
CODE:0eeb  c2 a3                    CLR 0xa3
CODE:0eed  c2 a4                    CLR 0xa4
CODE:0eef  02 38 aa                 LJMP 0x38aa
LAB_CODE_0ef2:
CODE:0ef2  d2 a0                    SETB 0xa0   ; XREF: CODE:0ec3 CODE:0ee2 
CODE:0ef4  d2 a1                    SETB 0xa1
CODE:0ef6  d2 a2                    SETB 0xa2
CODE:0ef8  d2 a3                    SETB 0xa3
CODE:0efa  d2 a4                    SETB 0xa4
CODE:0efc  02 38 aa                 LJMP 0x38aa
LAB_CODE_0eff:
CODE:0eff  e5 18                    MOV A,0x18   ; XREF: CODE:0ec8 
CODE:0f01  30 e0 04                 JNB 0xe0,0x0f08
CODE:0f04  d2 a0                    SETB 0xa0
CODE:0f06  80 02                    SJMP 0x0f0a
LAB_CODE_0f08:
CODE:0f08  c2 a0                    CLR 0xa0   ; XREF: CODE:0f01 
LAB_CODE_0f0a:
CODE:0f0a  e5 18                    MOV A,0x18   ; XREF: CODE:0f06 
CODE:0f0c  30 e1 04                 JNB 0xe1,0x0f13
CODE:0f0f  d2 a1                    SETB 0xa1
CODE:0f11  80 02                    SJMP 0x0f15
LAB_CODE_0f13:
CODE:0f13  c2 a1                    CLR 0xa1   ; XREF: CODE:0f0c 
LAB_CODE_0f15:
CODE:0f15  e5 18                    MOV A,0x18   ; XREF: CODE:0f11 
CODE:0f17  30 e2 04                 JNB 0xe2,0x0f1e
CODE:0f1a  d2 a2                    SETB 0xa2
CODE:0f1c  80 02                    SJMP 0x0f20
LAB_CODE_0f1e:
CODE:0f1e  c2 a2                    CLR 0xa2   ; XREF: CODE:0f17 
LAB_CODE_0f20:
CODE:0f20  30 28 04                 JNB 0x28,0x0f27   ; XREF: CODE:0f1c 
CODE:0f23  d2 a3                    SETB 0xa3
CODE:0f25  80 02                    SJMP 0x0f29
LAB_CODE_0f27:
CODE:0f27  c2 a3                    CLR 0xa3   ; XREF: CODE:0f20 
LAB_CODE_0f29:
CODE:0f29  30 27 05                 JNB 0x27,0x0f31   ; XREF: CODE:0f25 
CODE:0f2c  d2 a4                    SETB 0xa4
CODE:0f2e  02 38 aa                 LJMP 0x38aa
LAB_CODE_0f31:
CODE:0f31  c2 a4                    CLR 0xa4   ; XREF: CODE:0f29 
CODE:0f33  02 38 aa                 LJMP 0x38aa
LAB_CODE_0f36:
CODE:0f36  78 53                    MOV R0,#0x53   ; XREF: CODE:0e9f 
CODE:0f38  e6                       MOV A,@R0
CODE:0f39  64 19                    XRL A,#0x19
CODE:0f3b  70 38                    JNZ 0x0f75
CODE:0f3d  d2 82                    SETB 0x82
CODE:0f3f  75 cd fe                 MOV 0xcd,#0xfe
CODE:0f42  75 cc 6f                 MOV 0xcc,#0x6f
CODE:0f45  75 cb fe                 MOV 0xcb,#0xfe
CODE:0f48  75 ca 6f                 MOV 0xca,#0x6f
CODE:0f4b  12 79 d2                 LCALL 0x79d2
CODE:0f4e  c2 a0                    CLR 0xa0
CODE:0f50  c2 a1                    CLR 0xa1
CODE:0f52  c2 a2                    CLR 0xa2
CODE:0f54  c2 a3                    CLR 0xa3
CODE:0f56  c2 a4                    CLR 0xa4
CODE:0f58  c2 a5                    CLR 0xa5
CODE:0f5a  c2 98                    CLR 0x98
CODE:0f5c  c2 99                    CLR 0x99
CODE:0f5e  c2 9a                    CLR 0x9a
CODE:0f60  c2 9b                    CLR 0x9b
CODE:0f62  c2 9c                    CLR 0x9c
CODE:0f64  c2 9d                    CLR 0x9d
CODE:0f66  c2 90                    CLR 0x90
CODE:0f68  c2 91                    CLR 0x91
CODE:0f6a  c2 92                    CLR 0x92
CODE:0f6c  c2 93                    CLR 0x93
CODE:0f6e  c2 94                    CLR 0x94
CODE:0f70  c2 95                    CLR 0x95
CODE:0f72  02 38 aa                 LJMP 0x38aa
LAB_CODE_0f75:
CODE:0f75  78 53                    MOV R0,#0x53   ; XREF: CODE:0f3b 
CODE:0f77  e6                       MOV A,@R0
CODE:0f78  64 1a                    XRL A,#0x1a
CODE:0f7a  60 03                    JZ 0x0f7f
CODE:0f7c  02 38 aa                 LJMP 0x38aa
LAB_CODE_0f7f:
CODE:0f7f  12 79 c4                 LCALL 0x79c4   ; XREF: CODE:0f7a 
CODE:0f82  78 76                    MOV R0,#0x76
CODE:0f84  e6                       MOV A,@R0
CODE:0f85  ff                       MOV R7,A
CODE:0f86  60 03                    JZ 0x0f8b
CODE:0f88  02 17 76                 LJMP 0x1776
LAB_CODE_0f8b:
CODE:0f8b  e5 1c                    MOV A,0x1c   ; XREF: CODE:0f86 
CODE:0f8d  70 05                    JNZ 0x0f94
CODE:0f8f  75 3f ff                 MOV 0x3f,#0xff
CODE:0f92  80 2b                    SJMP 0x0fbf
LAB_CODE_0f94:
CODE:0f94  e5 1c                    MOV A,0x1c   ; XREF: CODE:0f8d 
CODE:0f96  b4 01 06                 CJNE A,#0x1,0x0f9f
CODE:0f99  75 3f ff                 MOV 0x3f,#0xff
CODE:0f9c  e4                       CLR A
CODE:0f9d  80 2f                    SJMP 0x0fce
LAB_CODE_0f9f:
CODE:0f9f  e5 1c                    MOV A,0x1c   ; XREF: CODE:0f96 
CODE:0fa1  b4 02 08                 CJNE A,#0x2,0x0fac
CODE:0fa4  e4                       CLR A
CODE:0fa5  f5 3f                    MOV 0x3f,A
CODE:0fa7  75 40 ff                 MOV 0x40,#0xff
CODE:0faa  80 24                    SJMP 0x0fd0
LAB_CODE_0fac:
CODE:0fac  e5 1c                    MOV A,0x1c   ; XREF: CODE:0fa1 
CODE:0fae  b4 03 06                 CJNE A,#0x3,0x0fb7
CODE:0fb1  75 3f ff                 MOV 0x3f,#0xff
CODE:0fb4  e4                       CLR A
CODE:0fb5  80 26                    SJMP 0x0fdd
LAB_CODE_0fb7:
CODE:0fb7  e5 1c                    MOV A,0x1c   ; XREF: CODE:0fae 
CODE:0fb9  b4 04 0a                 CJNE A,#0x4,0x0fc6
CODE:0fbc  e4                       CLR A
CODE:0fbd  f5 3f                    MOV 0x3f,A
LAB_CODE_0fbf:
CODE:0fbf  75 40 ff                 MOV 0x40,#0xff   ; XREF: CODE:0f92 
CODE:0fc2  f5 41                    MOV 0x41,A
CODE:0fc4  80 1b                    SJMP 0x0fe1
LAB_CODE_0fc6:
CODE:0fc6  e5 1c                    MOV A,0x1c   ; XREF: CODE:0fb9 
CODE:0fc8  b4 05 0a                 CJNE A,#0x5,0x0fd5
CODE:0fcb  e4                       CLR A
CODE:0fcc  f5 3f                    MOV 0x3f,A
LAB_CODE_0fce:
CODE:0fce  f5 40                    MOV 0x40,A   ; XREF: CODE:0f9d 
LAB_CODE_0fd0:
CODE:0fd0  75 41 ff                 MOV 0x41,#0xff   ; XREF: CODE:0faa 
CODE:0fd3  80 0c                    SJMP 0x0fe1
LAB_CODE_0fd5:
CODE:0fd5  e5 1c                    MOV A,0x1c   ; XREF: CODE:0fc8 
CODE:0fd7  b4 06 07                 CJNE A,#0x6,0x0fe1
CODE:0fda  e4                       CLR A
CODE:0fdb  f5 3f                    MOV 0x3f,A
LAB_CODE_0fdd:
CODE:0fdd  f5 40                    MOV 0x40,A   ; XREF: CODE:0fb5 
CODE:0fdf  f5 41                    MOV 0x41,A
LAB_CODE_0fe1:
CODE:0fe1  78 57                    MOV R0,#0x57   ; XREF: CODE:0fc4 CODE:0fd3 CODE:0fd7 
CODE:0fe3  06                       INC @R0
CODE:0fe4  c3                       CLR CY
CODE:0fe5  74 05                    MOV A,#0x5
CODE:0fe7  78 77                    MOV R0,#0x77
CODE:0fe9  96                       SUBB A,@R0
CODE:0fea  fe                       MOV R6,A
CODE:0feb  78 57                    MOV R0,#0x57
CODE:0fed  e6                       MOV A,@R0
CODE:0fee  d3                       SETB CY
CODE:0fef  9e                       SUBB A,R6
CODE:0ff0  50 03                    JNC 0x0ff5
CODE:0ff2  02 38 aa                 LJMP 0x38aa
LAB_CODE_0ff5:
CODE:0ff5  e4                       CLR A   ; XREF: CODE:0ff0 
CODE:0ff6  f6                       MOV @R0,A
CODE:0ff7  78 5e                    MOV R0,#0x5e
CODE:0ff9  e6                       MOV A,@R0
CODE:0ffa  fe                       MOV R6,A
CODE:0ffb  94 0b                    SUBB A,#0xb
CODE:0ffd  40 03                    JC 0x1002
CODE:0fff  02 11 bb                 LJMP 0x11bb
LAB_CODE_1002:
CODE:1002  e6                       MOV A,@R0   ; XREF: CODE:0ffd 
CODE:1003  fd                       MOV R5,A
CODE:1004  24 00                    ADD A,#0x0
CODE:1006  f5 82                    MOV DPL,A
CODE:1008  e4                       CLR A
CODE:1009  34 00                    ADDC A,#0x0
CODE:100b  f5 83                    MOV DPH,A
CODE:100d  e5 3f                    MOV A,0x3f
CODE:100f  f0                       MOVX @DPTR,A
CODE:1010  74 95                    MOV A,#0x95
CODE:1012  2d                       ADD A,R5
CODE:1013  f5 82                    MOV DPL,A
CODE:1015  e4                       CLR A
CODE:1016  34 00                    ADDC A,#0x0
CODE:1018  f5 83                    MOV DPH,A
CODE:101a  e5 40                    MOV A,0x40
CODE:101c  f0                       MOVX @DPTR,A
CODE:101d  74 2a                    MOV A,#0x2a
CODE:101f  2d                       ADD A,R5
CODE:1020  f5 82                    MOV DPL,A
CODE:1022  e4                       CLR A
CODE:1023  34 01                    ADDC A,#0x1
CODE:1025  f5 83                    MOV DPH,A
CODE:1027  e5 41                    MOV A,0x41
CODE:1029  f0                       MOVX @DPTR,A
CODE:102a  74 17                    MOV A,#0x17
CODE:102c  2d                       ADD A,R5
CODE:102d  f5 82                    MOV DPL,A
CODE:102f  e4                       CLR A
CODE:1030  34 00                    ADDC A,#0x0
CODE:1032  f5 83                    MOV DPH,A
CODE:1034  74 ff                    MOV A,#0xff
CODE:1036  f0                       MOVX @DPTR,A
CODE:1037  74 ac                    MOV A,#0xac
CODE:1039  2d                       ADD A,R5
CODE:103a  f5 82                    MOV DPL,A
CODE:103c  e4                       CLR A
CODE:103d  34 00                    ADDC A,#0x0
CODE:103f  f5 83                    MOV DPH,A
CODE:1041  74 ff                    MOV A,#0xff
CODE:1043  f0                       MOVX @DPTR,A
CODE:1044  74 41                    MOV A,#0x41
CODE:1046  2d                       ADD A,R5
CODE:1047  f5 82                    MOV DPL,A
CODE:1049  e4                       CLR A
CODE:104a  34 01                    ADDC A,#0x1
CODE:104c  f5 83                    MOV DPH,A
CODE:104e  74 ff                    MOV A,#0xff
CODE:1050  f0                       MOVX @DPTR,A
CODE:1051  74 2e                    MOV A,#0x2e
CODE:1053  2d                       ADD A,R5
CODE:1054  f5 82                    MOV DPL,A
CODE:1056  e4                       CLR A
CODE:1057  34 00                    ADDC A,#0x0
CODE:1059  f5 83                    MOV DPH,A
CODE:105b  e5 3f                    MOV A,0x3f
CODE:105d  f0                       MOVX @DPTR,A
CODE:105e  74 c3                    MOV A,#0xc3
CODE:1060  2d                       ADD A,R5
CODE:1061  f5 82                    MOV DPL,A
CODE:1063  e4                       CLR A
CODE:1064  34 00                    ADDC A,#0x0
CODE:1066  f5 83                    MOV DPH,A
CODE:1068  e5 40                    MOV A,0x40
CODE:106a  f0                       MOVX @DPTR,A
CODE:106b  74 58                    MOV A,#0x58
CODE:106d  2d                       ADD A,R5
CODE:106e  f5 82                    MOV DPL,A
CODE:1070  e4                       CLR A
CODE:1071  34 01                    ADDC A,#0x1
CODE:1073  f5 83                    MOV DPH,A
CODE:1075  e5 41                    MOV A,0x41
CODE:1077  f0                       MOVX @DPTR,A
CODE:1078  74 45                    MOV A,#0x45
CODE:107a  2d                       ADD A,R5
CODE:107b  f5 82                    MOV DPL,A
CODE:107d  e4                       CLR A
CODE:107e  34 00                    ADDC A,#0x0
CODE:1080  f5 83                    MOV DPH,A
CODE:1082  74 ff                    MOV A,#0xff
CODE:1084  f0                       MOVX @DPTR,A
CODE:1085  74 da                    MOV A,#0xda
CODE:1087  2d                       ADD A,R5
CODE:1088  f5 82                    MOV DPL,A
CODE:108a  e4                       CLR A
CODE:108b  34 00                    ADDC A,#0x0
CODE:108d  f5 83                    MOV DPH,A
CODE:108f  74 ff                    MOV A,#0xff
CODE:1091  f0                       MOVX @DPTR,A
CODE:1092  74 6f                    MOV A,#0x6f
CODE:1094  2d                       ADD A,R5
CODE:1095  f5 82                    MOV DPL,A
CODE:1097  e4                       CLR A
CODE:1098  34 01                    ADDC A,#0x1
CODE:109a  f5 83                    MOV DPH,A
CODE:109c  74 ff                    MOV A,#0xff
CODE:109e  f0                       MOVX @DPTR,A
CODE:109f  74 5c                    MOV A,#0x5c
CODE:10a1  2d                       ADD A,R5
CODE:10a2  f5 82                    MOV DPL,A
CODE:10a4  e4                       CLR A
CODE:10a5  34 00                    ADDC A,#0x0
CODE:10a7  f5 83                    MOV DPH,A
CODE:10a9  e5 3f                    MOV A,0x3f
CODE:10ab  f0                       MOVX @DPTR,A
CODE:10ac  74 f1                    MOV A,#0xf1
CODE:10ae  2d                       ADD A,R5
CODE:10af  f5 82                    MOV DPL,A
CODE:10b1  e4                       CLR A
CODE:10b2  34 00                    ADDC A,#0x0
CODE:10b4  f5 83                    MOV DPH,A
CODE:10b6  e5 40                    MOV A,0x40
CODE:10b8  f0                       MOVX @DPTR,A
CODE:10b9  74 86                    MOV A,#0x86
CODE:10bb  2d                       ADD A,R5
CODE:10bc  f5 82                    MOV DPL,A
CODE:10be  e4                       CLR A
CODE:10bf  34 01                    ADDC A,#0x1
CODE:10c1  f5 83                    MOV DPH,A
CODE:10c3  e5 41                    MOV A,0x41
CODE:10c5  f0                       MOVX @DPTR,A
CODE:10c6  74 73                    MOV A,#0x73
CODE:10c8  2d                       ADD A,R5
CODE:10c9  f5 82                    MOV DPL,A
CODE:10cb  e4                       CLR A
CODE:10cc  34 00                    ADDC A,#0x0
CODE:10ce  f5 83                    MOV DPH,A
CODE:10d0  74 ff                    MOV A,#0xff
CODE:10d2  f0                       MOVX @DPTR,A
CODE:10d3  74 08                    MOV A,#0x8
CODE:10d5  2d                       ADD A,R5
CODE:10d6  f5 82                    MOV DPL,A
CODE:10d8  e4                       CLR A
CODE:10d9  34 01                    ADDC A,#0x1
CODE:10db  f5 83                    MOV DPH,A
CODE:10dd  74 ff                    MOV A,#0xff
CODE:10df  f0                       MOVX @DPTR,A
CODE:10e0  74 9d                    MOV A,#0x9d
CODE:10e2  2d                       ADD A,R5
CODE:10e3  f5 82                    MOV DPL,A
CODE:10e5  e4                       CLR A
CODE:10e6  34 01                    ADDC A,#0x1
CODE:10e8  f5 83                    MOV DPH,A
CODE:10ea  74 ff                    MOV A,#0xff
CODE:10ec  f0                       MOVX @DPTR,A
CODE:10ed  c3                       CLR CY
CODE:10ee  74 16                    MOV A,#0x16
CODE:10f0  9d                       SUBB A,R5
CODE:10f1  fd                       MOV R5,A
CODE:10f2  e4                       CLR A
CODE:10f3  94 00                    SUBB A,#0x0
CODE:10f5  fc                       MOV R4,A
CODE:10f6  74 00                    MOV A,#0x0
CODE:10f8  2d                       ADD A,R5
CODE:10f9  f5 82                    MOV DPL,A
CODE:10fb  74 00                    MOV A,#0x0
CODE:10fd  3c                       ADDC A,R4
CODE:10fe  f5 83                    MOV DPH,A
CODE:1100  74 ff                    MOV A,#0xff
CODE:1102  f0                       MOVX @DPTR,A
CODE:1103  74 95                    MOV A,#0x95
CODE:1105  2d                       ADD A,R5
CODE:1106  f5 82                    MOV DPL,A
CODE:1108  74 00                    MOV A,#0x0
CODE:110a  3c                       ADDC A,R4
CODE:110b  f5 83                    MOV DPH,A
CODE:110d  74 ff                    MOV A,#0xff
CODE:110f  f0                       MOVX @DPTR,A
CODE:1110  74 2a                    MOV A,#0x2a
CODE:1112  2d                       ADD A,R5
CODE:1113  f5 82                    MOV DPL,A
CODE:1115  74 01                    MOV A,#0x1
CODE:1117  3c                       ADDC A,R4
CODE:1118  f5 83                    MOV DPH,A
CODE:111a  74 ff                    MOV A,#0xff
CODE:111c  f0                       MOVX @DPTR,A
CODE:111d  74 17                    MOV A,#0x17
CODE:111f  2d                       ADD A,R5
CODE:1120  f5 82                    MOV DPL,A
CODE:1122  74 00                    MOV A,#0x0
CODE:1124  3c                       ADDC A,R4
CODE:1125  f5 83                    MOV DPH,A
CODE:1127  e5 3f                    MOV A,0x3f
CODE:1129  f0                       MOVX @DPTR,A
CODE:112a  74 ac                    MOV A,#0xac
CODE:112c  2d                       ADD A,R5
CODE:112d  f5 82                    MOV DPL,A
CODE:112f  74 00                    MOV A,#0x0
CODE:1131  3c                       ADDC A,R4
CODE:1132  f5 83                    MOV DPH,A
CODE:1134  e5 40                    MOV A,0x40
CODE:1136  f0                       MOVX @DPTR,A
CODE:1137  74 41                    MOV A,#0x41
CODE:1139  2d                       ADD A,R5
CODE:113a  f5 82                    MOV DPL,A
CODE:113c  74 01                    MOV A,#0x1
CODE:113e  3c                       ADDC A,R4
CODE:113f  f5 83                    MOV DPH,A
CODE:1141  e5 41                    MOV A,0x41
CODE:1143  f0                       MOVX @DPTR,A
CODE:1144  74 2e                    MOV A,#0x2e
CODE:1146  2d                       ADD A,R5
CODE:1147  f5 82                    MOV DPL,A
CODE:1149  74 00                    MOV A,#0x0
CODE:114b  3c                       ADDC A,R4
CODE:114c  f5 83                    MOV DPH,A
CODE:114e  74 ff                    MOV A,#0xff
CODE:1150  f0                       MOVX @DPTR,A
CODE:1151  74 c3                    MOV A,#0xc3
CODE:1153  2d                       ADD A,R5
CODE:1154  f5 82                    MOV DPL,A
CODE:1156  74 00                    MOV A,#0x0
CODE:1158  3c                       ADDC A,R4
CODE:1159  f5 83                    MOV DPH,A
CODE:115b  74 ff                    MOV A,#0xff
CODE:115d  f0                       MOVX @DPTR,A
CODE:115e  74 58                    MOV A,#0x58
CODE:1160  2d                       ADD A,R5
CODE:1161  f5 82                    MOV DPL,A
CODE:1163  74 01                    MOV A,#0x1
CODE:1165  3c                       ADDC A,R4
CODE:1166  f5 83                    MOV DPH,A
CODE:1168  74 ff                    MOV A,#0xff
CODE:116a  f0                       MOVX @DPTR,A
CODE:116b  74 45                    MOV A,#0x45
CODE:116d  2d                       ADD A,R5
CODE:116e  f5 82                    MOV DPL,A
CODE:1170  74 00                    MOV A,#0x0
CODE:1172  3c                       ADDC A,R4
CODE:1173  f5 83                    MOV DPH,A
CODE:1175  e5 3f                    MOV A,0x3f
CODE:1177  f0                       MOVX @DPTR,A
CODE:1178  74 da                    MOV A,#0xda
CODE:117a  2d                       ADD A,R5
CODE:117b  f5 82                    MOV DPL,A
CODE:117d  74 00                    MOV A,#0x0
CODE:117f  3c                       ADDC A,R4
CODE:1180  f5 83                    MOV DPH,A
CODE:1182  e5 40                    MOV A,0x40
CODE:1184  f0                       MOVX @DPTR,A
CODE:1185  74 6f                    MOV A,#0x6f
CODE:1187  2d                       ADD A,R5
CODE:1188  f5 82                    MOV DPL,A
CODE:118a  74 01                    MOV A,#0x1
CODE:118c  3c                       ADDC A,R4
CODE:118d  f5 83                    MOV DPH,A
CODE:118f  e5 41                    MOV A,0x41
CODE:1191  f0                       MOVX @DPTR,A
CODE:1192  74 5c                    MOV A,#0x5c
CODE:1194  2d                       ADD A,R5
CODE:1195  f5 82                    MOV DPL,A
CODE:1197  74 00                    MOV A,#0x0
CODE:1199  3c                       ADDC A,R4
CODE:119a  f5 83                    MOV DPH,A
CODE:119c  74 ff                    MOV A,#0xff
CODE:119e  f0                       MOVX @DPTR,A
CODE:119f  74 f1                    MOV A,#0xf1
CODE:11a1  2d                       ADD A,R5
CODE:11a2  f5 82                    MOV DPL,A
CODE:11a4  74 00                    MOV A,#0x0
CODE:11a6  3c                       ADDC A,R4
CODE:11a7  f5 83                    MOV DPH,A
CODE:11a9  74 ff                    MOV A,#0xff
CODE:11ab  f0                       MOVX @DPTR,A
CODE:11ac  74 86                    MOV A,#0x86
CODE:11ae  2d                       ADD A,R5
CODE:11af  f5 82                    MOV DPL,A
CODE:11b1  74 01                    MOV A,#0x1
CODE:11b3  3c                       ADDC A,R4
CODE:11b4  f5 83                    MOV DPH,A
CODE:11b6  74 ff                    MOV A,#0xff
CODE:11b8  02 13 7e                 LJMP 0x137e
LAB_CODE_11bb:
CODE:11bb  ee                       MOV A,R6   ; XREF: CODE:0fff 
CODE:11bc  c3                       CLR CY
CODE:11bd  94 17                    SUBB A,#0x17
CODE:11bf  40 03                    JC 0x11c4
CODE:11c1  02 13 a9                 LJMP 0x13a9
LAB_CODE_11c4:
CODE:11c4  78 5e                    MOV R0,#0x5e   ; XREF: CODE:11bf 
CODE:11c6  e6                       MOV A,@R0
CODE:11c7  fe                       MOV R6,A
CODE:11c8  24 00                    ADD A,#0x0
CODE:11ca  f5 82                    MOV DPL,A
CODE:11cc  e4                       CLR A
CODE:11cd  34 00                    ADDC A,#0x0
CODE:11cf  f5 83                    MOV DPH,A
CODE:11d1  e5 3f                    MOV A,0x3f
CODE:11d3  f0                       MOVX @DPTR,A
CODE:11d4  74 95                    MOV A,#0x95
CODE:11d6  2e                       ADD A,R6
CODE:11d7  f5 82                    MOV DPL,A
CODE:11d9  e4                       CLR A
CODE:11da  34 00                    ADDC A,#0x0
CODE:11dc  f5 83                    MOV DPH,A
CODE:11de  e5 40                    MOV A,0x40
CODE:11e0  f0                       MOVX @DPTR,A
CODE:11e1  74 2a                    MOV A,#0x2a
CODE:11e3  2e                       ADD A,R6
CODE:11e4  f5 82                    MOV DPL,A
CODE:11e6  e4                       CLR A
CODE:11e7  34 01                    ADDC A,#0x1
CODE:11e9  f5 83                    MOV DPH,A
CODE:11eb  e5 41                    MOV A,0x41
CODE:11ed  f0                       MOVX @DPTR,A
CODE:11ee  74 17                    MOV A,#0x17
CODE:11f0  2e                       ADD A,R6
CODE:11f1  f5 82                    MOV DPL,A
CODE:11f3  e4                       CLR A
CODE:11f4  34 00                    ADDC A,#0x0
CODE:11f6  f5 83                    MOV DPH,A
CODE:11f8  e5 3f                    MOV A,0x3f
CODE:11fa  f0                       MOVX @DPTR,A
CODE:11fb  74 ac                    MOV A,#0xac
CODE:11fd  2e                       ADD A,R6
CODE:11fe  f5 82                    MOV DPL,A
CODE:1200  e4                       CLR A
CODE:1201  34 00                    ADDC A,#0x0
CODE:1203  f5 83                    MOV DPH,A
CODE:1205  e5 40                    MOV A,0x40
CODE:1207  f0                       MOVX @DPTR,A
CODE:1208  74 41                    MOV A,#0x41
CODE:120a  2e                       ADD A,R6
CODE:120b  f5 82                    MOV DPL,A
CODE:120d  e4                       CLR A
CODE:120e  34 01                    ADDC A,#0x1
CODE:1210  f5 83                    MOV DPH,A
CODE:1212  e5 41                    MOV A,0x41
CODE:1214  f0                       MOVX @DPTR,A
CODE:1215  74 2e                    MOV A,#0x2e
CODE:1217  2e                       ADD A,R6
CODE:1218  f5 82                    MOV DPL,A
CODE:121a  e4                       CLR A
CODE:121b  34 00                    ADDC A,#0x0
CODE:121d  f5 83                    MOV DPH,A
CODE:121f  e5 3f                    MOV A,0x3f
CODE:1221  f0                       MOVX @DPTR,A
CODE:1222  74 c3                    MOV A,#0xc3
CODE:1224  2e                       ADD A,R6
CODE:1225  f5 82                    MOV DPL,A
CODE:1227  e4                       CLR A
CODE:1228  34 00                    ADDC A,#0x0
CODE:122a  f5 83                    MOV DPH,A
CODE:122c  e5 40                    MOV A,0x40
CODE:122e  f0                       MOVX @DPTR,A
CODE:122f  74 58                    MOV A,#0x58
CODE:1231  2e                       ADD A,R6
CODE:1232  f5 82                    MOV DPL,A
CODE:1234  e4                       CLR A
CODE:1235  34 01                    ADDC A,#0x1
CODE:1237  f5 83                    MOV DPH,A
CODE:1239  e5 41                    MOV A,0x41
CODE:123b  f0                       MOVX @DPTR,A
CODE:123c  74 45                    MOV A,#0x45
CODE:123e  2e                       ADD A,R6
CODE:123f  f5 82                    MOV DPL,A
CODE:1241  e4                       CLR A
CODE:1242  34 00                    ADDC A,#0x0
CODE:1244  f5 83                    MOV DPH,A
CODE:1246  e5 3f                    MOV A,0x3f
CODE:1248  f0                       MOVX @DPTR,A
CODE:1249  74 da                    MOV A,#0xda
CODE:124b  2e                       ADD A,R6
CODE:124c  f5 82                    MOV DPL,A
CODE:124e  e4                       CLR A
CODE:124f  34 00                    ADDC A,#0x0
CODE:1251  f5 83                    MOV DPH,A
CODE:1253  e5 40                    MOV A,0x40
CODE:1255  f0                       MOVX @DPTR,A
CODE:1256  74 6f                    MOV A,#0x6f
CODE:1258  2e                       ADD A,R6
CODE:1259  f5 82                    MOV DPL,A
CODE:125b  e4                       CLR A
CODE:125c  34 01                    ADDC A,#0x1
CODE:125e  f5 83                    MOV DPH,A
CODE:1260  e5 41                    MOV A,0x41
CODE:1262  f0                       MOVX @DPTR,A
CODE:1263  74 5c                    MOV A,#0x5c
CODE:1265  2e                       ADD A,R6
CODE:1266  f5 82                    MOV DPL,A
CODE:1268  e4                       CLR A
CODE:1269  34 00                    ADDC A,#0x0
CODE:126b  f5 83                    MOV DPH,A
CODE:126d  e5 3f                    MOV A,0x3f
CODE:126f  f0                       MOVX @DPTR,A
CODE:1270  74 f1                    MOV A,#0xf1
CODE:1272  2e                       ADD A,R6
CODE:1273  f5 82                    MOV DPL,A
CODE:1275  e4                       CLR A
CODE:1276  34 00                    ADDC A,#0x0
CODE:1278  f5 83                    MOV DPH,A
CODE:127a  e5 40                    MOV A,0x40
CODE:127c  f0                       MOVX @DPTR,A
CODE:127d  74 86                    MOV A,#0x86
CODE:127f  2e                       ADD A,R6
EXT_CODE_1280:
CODE:1280  f5 82                    MOV DPL,A   ; XREF: Entry Point 
CODE:1282  e4                       CLR A
CODE:1283  34 01                    ADDC A,#0x1
CODE:1285  f5 83                    MOV DPH,A
CODE:1287  e5 41                    MOV A,0x41
CODE:1289  f0                       MOVX @DPTR,A
CODE:128a  74 73                    MOV A,#0x73
CODE:128c  2e                       ADD A,R6
CODE:128d  f5 82                    MOV DPL,A
CODE:128f  e4                       CLR A
CODE:1290  34 00                    ADDC A,#0x0
CODE:1292  f5 83                    MOV DPH,A
CODE:1294  e5 3f                    MOV A,0x3f
CODE:1296  f0                       MOVX @DPTR,A
CODE:1297  74 08                    MOV A,#0x8
CODE:1299  2e                       ADD A,R6
CODE:129a  f5 82                    MOV DPL,A
CODE:129c  e4                       CLR A
CODE:129d  34 01                    ADDC A,#0x1
CODE:129f  f5 83                    MOV DPH,A
CODE:12a1  e5 40                    MOV A,0x40
CODE:12a3  f0                       MOVX @DPTR,A
CODE:12a4  74 9d                    MOV A,#0x9d
CODE:12a6  2e                       ADD A,R6
CODE:12a7  f5 82                    MOV DPL,A
CODE:12a9  e4                       CLR A
CODE:12aa  34 01                    ADDC A,#0x1
CODE:12ac  f5 83                    MOV DPH,A
CODE:12ae  e5 41                    MOV A,0x41
CODE:12b0  f0                       MOVX @DPTR,A
CODE:12b1  ee                       MOV A,R6
CODE:12b2  fd                       MOV R5,A
CODE:12b3  c3                       CLR CY
CODE:12b4  74 16                    MOV A,#0x16
CODE:12b6  9d                       SUBB A,R5
CODE:12b7  fd                       MOV R5,A
CODE:12b8  e4                       CLR A
CODE:12b9  94 00                    SUBB A,#0x0
CODE:12bb  fc                       MOV R4,A
CODE:12bc  74 00                    MOV A,#0x0
CODE:12be  2d                       ADD A,R5
CODE:12bf  f5 82                    MOV DPL,A
CODE:12c1  74 00                    MOV A,#0x0
CODE:12c3  3c                       ADDC A,R4
CODE:12c4  f5 83                    MOV DPH,A
CODE:12c6  e5 3f                    MOV A,0x3f
CODE:12c8  f0                       MOVX @DPTR,A
CODE:12c9  74 95                    MOV A,#0x95
CODE:12cb  2d                       ADD A,R5
CODE:12cc  f5 82                    MOV DPL,A
CODE:12ce  74 00                    MOV A,#0x0
CODE:12d0  3c                       ADDC A,R4
CODE:12d1  f5 83                    MOV DPH,A
CODE:12d3  e5 40                    MOV A,0x40
CODE:12d5  f0                       MOVX @DPTR,A
CODE:12d6  74 2a                    MOV A,#0x2a
CODE:12d8  2d                       ADD A,R5
CODE:12d9  f5 82                    MOV DPL,A
CODE:12db  74 01                    MOV A,#0x1
CODE:12dd  3c                       ADDC A,R4
CODE:12de  f5 83                    MOV DPH,A
CODE:12e0  e5 41                    MOV A,0x41
CODE:12e2  f0                       MOVX @DPTR,A
CODE:12e3  74 17                    MOV A,#0x17
CODE:12e5  2d                       ADD A,R5
CODE:12e6  f5 82                    MOV DPL,A
CODE:12e8  74 00                    MOV A,#0x0
CODE:12ea  3c                       ADDC A,R4
CODE:12eb  f5 83                    MOV DPH,A
CODE:12ed  e5 3f                    MOV A,0x3f
CODE:12ef  f0                       MOVX @DPTR,A
CODE:12f0  74 ac                    MOV A,#0xac
CODE:12f2  2d                       ADD A,R5
CODE:12f3  f5 82                    MOV DPL,A
CODE:12f5  74 00                    MOV A,#0x0
CODE:12f7  3c                       ADDC A,R4
CODE:12f8  f5 83                    MOV DPH,A
CODE:12fa  e5 40                    MOV A,0x40
CODE:12fc  f0                       MOVX @DPTR,A
CODE:12fd  74 41                    MOV A,#0x41
CODE:12ff  2d                       ADD A,R5
CODE:1300  f5 82                    MOV DPL,A
CODE:1302  74 01                    MOV A,#0x1
CODE:1304  3c                       ADDC A,R4
CODE:1305  f5 83                    MOV DPH,A
CODE:1307  e5 41                    MOV A,0x41
CODE:1309  f0                       MOVX @DPTR,A
CODE:130a  74 2e                    MOV A,#0x2e
CODE:130c  2d                       ADD A,R5
CODE:130d  f5 82                    MOV DPL,A
CODE:130f  74 00                    MOV A,#0x0
CODE:1311  3c                       ADDC A,R4
CODE:1312  f5 83                    MOV DPH,A
CODE:1314  e5 3f                    MOV A,0x3f
CODE:1316  f0                       MOVX @DPTR,A
CODE:1317  74 c3                    MOV A,#0xc3
CODE:1319  2d                       ADD A,R5
CODE:131a  f5 82                    MOV DPL,A
CODE:131c  74 00                    MOV A,#0x0
CODE:131e  3c                       ADDC A,R4
CODE:131f  f5 83                    MOV DPH,A
CODE:1321  e5 40                    MOV A,0x40
CODE:1323  f0                       MOVX @DPTR,A
CODE:1324  74 58                    MOV A,#0x58
CODE:1326  2d                       ADD A,R5
CODE:1327  f5 82                    MOV DPL,A
CODE:1329  74 01                    MOV A,#0x1
CODE:132b  3c                       ADDC A,R4
CODE:132c  f5 83                    MOV DPH,A
CODE:132e  e5 41                    MOV A,0x41
CODE:1330  f0                       MOVX @DPTR,A
CODE:1331  74 45                    MOV A,#0x45
CODE:1333  2d                       ADD A,R5
CODE:1334  f5 82                    MOV DPL,A
CODE:1336  74 00                    MOV A,#0x0
CODE:1338  3c                       ADDC A,R4
CODE:1339  f5 83                    MOV DPH,A
CODE:133b  e5 3f                    MOV A,0x3f
CODE:133d  f0                       MOVX @DPTR,A
CODE:133e  74 da                    MOV A,#0xda
CODE:1340  2d                       ADD A,R5
CODE:1341  f5 82                    MOV DPL,A
CODE:1343  74 00                    MOV A,#0x0
CODE:1345  3c                       ADDC A,R4
CODE:1346  f5 83                    MOV DPH,A
CODE:1348  e5 40                    MOV A,0x40
CODE:134a  f0                       MOVX @DPTR,A
CODE:134b  74 6f                    MOV A,#0x6f
CODE:134d  2d                       ADD A,R5
CODE:134e  f5 82                    MOV DPL,A
CODE:1350  74 01                    MOV A,#0x1
CODE:1352  3c                       ADDC A,R4
CODE:1353  f5 83                    MOV DPH,A
CODE:1355  e5 41                    MOV A,0x41
CODE:1357  f0                       MOVX @DPTR,A
CODE:1358  74 5c                    MOV A,#0x5c
CODE:135a  2d                       ADD A,R5
CODE:135b  f5 82                    MOV DPL,A
CODE:135d  74 00                    MOV A,#0x0
CODE:135f  3c                       ADDC A,R4
CODE:1360  f5 83                    MOV DPH,A
CODE:1362  e5 3f                    MOV A,0x3f
CODE:1364  f0                       MOVX @DPTR,A
CODE:1365  74 f1                    MOV A,#0xf1
CODE:1367  2d                       ADD A,R5
CODE:1368  f5 82                    MOV DPL,A
CODE:136a  74 00                    MOV A,#0x0
CODE:136c  3c                       ADDC A,R4
CODE:136d  f5 83                    MOV DPH,A
CODE:136f  e5 40                    MOV A,0x40
CODE:1371  f0                       MOVX @DPTR,A
CODE:1372  74 86                    MOV A,#0x86
CODE:1374  2d                       ADD A,R5
CODE:1375  f5 82                    MOV DPL,A
CODE:1377  74 01                    MOV A,#0x1
CODE:1379  3c                       ADDC A,R4
CODE:137a  f5 83                    MOV DPH,A
CODE:137c  e5 41                    MOV A,0x41
LAB_CODE_137e:
CODE:137e  f0                       MOVX @DPTR,A   ; XREF: CODE:11b8 
CODE:137f  74 73                    MOV A,#0x73
CODE:1381  2d                       ADD A,R5
CODE:1382  f5 82                    MOV DPL,A
CODE:1384  74 00                    MOV A,#0x0
CODE:1386  3c                       ADDC A,R4
CODE:1387  f5 83                    MOV DPH,A
CODE:1389  e5 3f                    MOV A,0x3f
CODE:138b  f0                       MOVX @DPTR,A
CODE:138c  74 08                    MOV A,#0x8
CODE:138e  2d                       ADD A,R5
CODE:138f  f5 82                    MOV DPL,A
CODE:1391  74 01                    MOV A,#0x1
CODE:1393  3c                       ADDC A,R4
CODE:1394  f5 83                    MOV DPH,A
CODE:1396  e5 40                    MOV A,0x40
CODE:1398  f0                       MOVX @DPTR,A
CODE:1399  74 9d                    MOV A,#0x9d
CODE:139b  2d                       ADD A,R5
CODE:139c  f5 82                    MOV DPL,A
CODE:139e  74 01                    MOV A,#0x1
CODE:13a0  3c                       ADDC A,R4
CODE:13a1  f5 83                    MOV DPH,A
CODE:13a3  e5 41                    MOV A,0x41
CODE:13a5  f0                       MOVX @DPTR,A
CODE:13a6  02 17 59                 LJMP 0x1759
LAB_CODE_13a9:
CODE:13a9  78 5e                    MOV R0,#0x5e   ; XREF: CODE:11c1 
CODE:13ab  e6                       MOV A,@R0
CODE:13ac  fe                       MOV R6,A
CODE:13ad  c3                       CLR CY
CODE:13ae  94 22                    SUBB A,#0x22
CODE:13b0  40 03                    JC 0x13b5
CODE:13b2  02 15 6e                 LJMP 0x156e
LAB_CODE_13b5:
CODE:13b5  e6                       MOV A,@R0   ; XREF: CODE:13b0 
CODE:13b6  fd                       MOV R5,A
CODE:13b7  24 e9                    ADD A,#0xe9
CODE:13b9  f5 82                    MOV DPL,A
CODE:13bb  e4                       CLR A
CODE:13bc  34 ff                    ADDC A,#0xff
CODE:13be  f5 83                    MOV DPH,A
CODE:13c0  74 ff                    MOV A,#0xff
CODE:13c2  f0                       MOVX @DPTR,A
CODE:13c3  74 7e                    MOV A,#0x7e
CODE:13c5  2d                       ADD A,R5
CODE:13c6  f5 82                    MOV DPL,A
CODE:13c8  e4                       CLR A
CODE:13c9  34 00                    ADDC A,#0x0
CODE:13cb  f5 83                    MOV DPH,A
CODE:13cd  74 ff                    MOV A,#0xff
CODE:13cf  f0                       MOVX @DPTR,A
CODE:13d0  74 13                    MOV A,#0x13
CODE:13d2  2d                       ADD A,R5
CODE:13d3  f5 82                    MOV DPL,A
CODE:13d5  e4                       CLR A
CODE:13d6  34 01                    ADDC A,#0x1
CODE:13d8  f5 83                    MOV DPH,A
CODE:13da  74 ff                    MOV A,#0xff
CODE:13dc  f0                       MOVX @DPTR,A
CODE:13dd  74 00                    MOV A,#0x0
CODE:13df  2d                       ADD A,R5
CODE:13e0  f5 82                    MOV DPL,A
CODE:13e2  e4                       CLR A
CODE:13e3  34 00                    ADDC A,#0x0
CODE:13e5  f5 83                    MOV DPH,A
CODE:13e7  e5 3f                    MOV A,0x3f
CODE:13e9  f0                       MOVX @DPTR,A
CODE:13ea  74 95                    MOV A,#0x95
CODE:13ec  2d                       ADD A,R5
CODE:13ed  f5 82                    MOV DPL,A
CODE:13ef  e4                       CLR A
CODE:13f0  34 00                    ADDC A,#0x0
CODE:13f2  f5 83                    MOV DPH,A
CODE:13f4  e5 40                    MOV A,0x40
CODE:13f6  f0                       MOVX @DPTR,A
CODE:13f7  74 2a                    MOV A,#0x2a
CODE:13f9  2d                       ADD A,R5
CODE:13fa  f5 82                    MOV DPL,A
CODE:13fc  e4                       CLR A
CODE:13fd  34 01                    ADDC A,#0x1
CODE:13ff  f5 83                    MOV DPH,A
CODE:1401  e5 41                    MOV A,0x41
CODE:1403  f0                       MOVX @DPTR,A
CODE:1404  74 17                    MOV A,#0x17
CODE:1406  2d                       ADD A,R5
CODE:1407  f5 82                    MOV DPL,A
CODE:1409  e4                       CLR A
CODE:140a  34 00                    ADDC A,#0x0
CODE:140c  f5 83                    MOV DPH,A
CODE:140e  74 ff                    MOV A,#0xff
CODE:1410  f0                       MOVX @DPTR,A
CODE:1411  74 ac                    MOV A,#0xac
CODE:1413  2d                       ADD A,R5
CODE:1414  f5 82                    MOV DPL,A
CODE:1416  e4                       CLR A
CODE:1417  34 00                    ADDC A,#0x0
CODE:1419  f5 83                    MOV DPH,A
CODE:141b  74 ff                    MOV A,#0xff
CODE:141d  f0                       MOVX @DPTR,A
CODE:141e  74 41                    MOV A,#0x41
CODE:1420  2d                       ADD A,R5
CODE:1421  f5 82                    MOV DPL,A
CODE:1423  e4                       CLR A
CODE:1424  34 01                    ADDC A,#0x1
CODE:1426  f5 83                    MOV DPH,A
CODE:1428  74 ff                    MOV A,#0xff
CODE:142a  f0                       MOVX @DPTR,A
CODE:142b  74 2e                    MOV A,#0x2e
CODE:142d  2d                       ADD A,R5
CODE:142e  f5 82                    MOV DPL,A
CODE:1430  e4                       CLR A
CODE:1431  34 00                    ADDC A,#0x0
CODE:1433  f5 83                    MOV DPH,A
CODE:1435  e5 3f                    MOV A,0x3f
CODE:1437  f0                       MOVX @DPTR,A
CODE:1438  74 c3                    MOV A,#0xc3
CODE:143a  2d                       ADD A,R5
CODE:143b  f5 82                    MOV DPL,A
CODE:143d  e4                       CLR A
CODE:143e  34 00                    ADDC A,#0x0
CODE:1440  f5 83                    MOV DPH,A
CODE:1442  e5 40                    MOV A,0x40
CODE:1444  f0                       MOVX @DPTR,A
CODE:1445  74 58                    MOV A,#0x58
CODE:1447  2d                       ADD A,R5
CODE:1448  f5 82                    MOV DPL,A
CODE:144a  e4                       CLR A
CODE:144b  34 01                    ADDC A,#0x1
CODE:144d  f5 83                    MOV DPH,A
CODE:144f  e5 41                    MOV A,0x41
CODE:1451  f0                       MOVX @DPTR,A
CODE:1452  74 45                    MOV A,#0x45
CODE:1454  2d                       ADD A,R5
CODE:1455  f5 82                    MOV DPL,A
CODE:1457  e4                       CLR A
CODE:1458  34 00                    ADDC A,#0x0
CODE:145a  f5 83                    MOV DPH,A
CODE:145c  74 ff                    MOV A,#0xff
CODE:145e  f0                       MOVX @DPTR,A
CODE:145f  74 da                    MOV A,#0xda
CODE:1461  2d                       ADD A,R5
CODE:1462  f5 82                    MOV DPL,A
CODE:1464  e4                       CLR A
CODE:1465  34 00                    ADDC A,#0x0
CODE:1467  f5 83                    MOV DPH,A
CODE:1469  74 ff                    MOV A,#0xff
CODE:146b  f0                       MOVX @DPTR,A
CODE:146c  74 6f                    MOV A,#0x6f
CODE:146e  2d                       ADD A,R5
CODE:146f  f5 82                    MOV DPL,A
CODE:1471  e4                       CLR A
CODE:1472  34 01                    ADDC A,#0x1
CODE:1474  f5 83                    MOV DPH,A
CODE:1476  74 ff                    MOV A,#0xff
CODE:1478  f0                       MOVX @DPTR,A
CODE:1479  74 5c                    MOV A,#0x5c
CODE:147b  2d                       ADD A,R5
CODE:147c  f5 82                    MOV DPL,A
CODE:147e  e4                       CLR A
CODE:147f  34 00                    ADDC A,#0x0
CODE:1481  f5 83                    MOV DPH,A
CODE:1483  e5 3f                    MOV A,0x3f
CODE:1485  f0                       MOVX @DPTR,A
CODE:1486  74 f1                    MOV A,#0xf1
CODE:1488  2d                       ADD A,R5
CODE:1489  f5 82                    MOV DPL,A
CODE:148b  e4                       CLR A
CODE:148c  34 00                    ADDC A,#0x0
CODE:148e  f5 83                    MOV DPH,A
CODE:1490  e5 40                    MOV A,0x40
CODE:1492  f0                       MOVX @DPTR,A
CODE:1493  74 86                    MOV A,#0x86
CODE:1495  2d                       ADD A,R5
CODE:1496  f5 82                    MOV DPL,A
CODE:1498  e4                       CLR A
CODE:1499  34 01                    ADDC A,#0x1
CODE:149b  f5 83                    MOV DPH,A
CODE:149d  e5 41                    MOV A,0x41
CODE:149f  f0                       MOVX @DPTR,A
CODE:14a0  c3                       CLR CY
CODE:14a1  74 2d                    MOV A,#0x2d
CODE:14a3  9d                       SUBB A,R5
CODE:14a4  fd                       MOV R5,A
CODE:14a5  e4                       CLR A
CODE:14a6  94 00                    SUBB A,#0x0
CODE:14a8  fc                       MOV R4,A
CODE:14a9  74 00                    MOV A,#0x0
CODE:14ab  2d                       ADD A,R5
CODE:14ac  f5 82                    MOV DPL,A
CODE:14ae  74 00                    MOV A,#0x0
CODE:14b0  3c                       ADDC A,R4
CODE:14b1  f5 83                    MOV DPH,A
CODE:14b3  e5 3f                    MOV A,0x3f
CODE:14b5  f0                       MOVX @DPTR,A
CODE:14b6  74 95                    MOV A,#0x95
CODE:14b8  2d                       ADD A,R5
CODE:14b9  f5 82                    MOV DPL,A
CODE:14bb  74 00                    MOV A,#0x0
CODE:14bd  3c                       ADDC A,R4
CODE:14be  f5 83                    MOV DPH,A
CODE:14c0  e5 40                    MOV A,0x40
CODE:14c2  f0                       MOVX @DPTR,A
CODE:14c3  74 2a                    MOV A,#0x2a
CODE:14c5  2d                       ADD A,R5
CODE:14c6  f5 82                    MOV DPL,A
CODE:14c8  74 01                    MOV A,#0x1
CODE:14ca  3c                       ADDC A,R4
CODE:14cb  f5 83                    MOV DPH,A
CODE:14cd  e5 41                    MOV A,0x41
CODE:14cf  f0                       MOVX @DPTR,A
CODE:14d0  74 17                    MOV A,#0x17
CODE:14d2  2d                       ADD A,R5
CODE:14d3  f5 82                    MOV DPL,A
CODE:14d5  74 00                    MOV A,#0x0
CODE:14d7  3c                       ADDC A,R4
CODE:14d8  f5 83                    MOV DPH,A
CODE:14da  74 ff                    MOV A,#0xff
CODE:14dc  f0                       MOVX @DPTR,A
CODE:14dd  74 ac                    MOV A,#0xac
CODE:14df  2d                       ADD A,R5
CODE:14e0  f5 82                    MOV DPL,A
CODE:14e2  74 00                    MOV A,#0x0
CODE:14e4  3c                       ADDC A,R4
CODE:14e5  f5 83                    MOV DPH,A
CODE:14e7  74 ff                    MOV A,#0xff
CODE:14e9  f0                       MOVX @DPTR,A
CODE:14ea  74 41                    MOV A,#0x41
CODE:14ec  2d                       ADD A,R5
CODE:14ed  f5 82                    MOV DPL,A
CODE:14ef  74 01                    MOV A,#0x1
CODE:14f1  3c                       ADDC A,R4
CODE:14f2  f5 83                    MOV DPH,A
CODE:14f4  74 ff                    MOV A,#0xff
CODE:14f6  f0                       MOVX @DPTR,A
CODE:14f7  74 2e                    MOV A,#0x2e
CODE:14f9  2d                       ADD A,R5
CODE:14fa  f5 82                    MOV DPL,A
CODE:14fc  74 00                    MOV A,#0x0
CODE:14fe  3c                       ADDC A,R4
CODE:14ff  f5 83                    MOV DPH,A
CODE:1501  e5 3f                    MOV A,0x3f
CODE:1503  f0                       MOVX @DPTR,A
CODE:1504  74 c3                    MOV A,#0xc3
CODE:1506  2d                       ADD A,R5
CODE:1507  f5 82                    MOV DPL,A
CODE:1509  74 00                    MOV A,#0x0
CODE:150b  3c                       ADDC A,R4
CODE:150c  f5 83                    MOV DPH,A
CODE:150e  e5 40                    MOV A,0x40
CODE:1510  f0                       MOVX @DPTR,A
CODE:1511  74 58                    MOV A,#0x58
CODE:1513  2d                       ADD A,R5
CODE:1514  f5 82                    MOV DPL,A
CODE:1516  74 01                    MOV A,#0x1
CODE:1518  3c                       ADDC A,R4
CODE:1519  f5 83                    MOV DPH,A
CODE:151b  e5 41                    MOV A,0x41
CODE:151d  f0                       MOVX @DPTR,A
CODE:151e  74 45                    MOV A,#0x45
CODE:1520  2d                       ADD A,R5
CODE:1521  f5 82                    MOV DPL,A
CODE:1523  74 00                    MOV A,#0x0
CODE:1525  3c                       ADDC A,R4
CODE:1526  f5 83                    MOV DPH,A
CODE:1528  74 ff                    MOV A,#0xff
CODE:152a  f0                       MOVX @DPTR,A
CODE:152b  74 da                    MOV A,#0xda
CODE:152d  2d                       ADD A,R5
CODE:152e  f5 82                    MOV DPL,A
CODE:1530  74 00                    MOV A,#0x0
CODE:1532  3c                       ADDC A,R4
CODE:1533  f5 83                    MOV DPH,A
CODE:1535  74 ff                    MOV A,#0xff
CODE:1537  f0                       MOVX @DPTR,A
CODE:1538  74 6f                    MOV A,#0x6f
CODE:153a  2d                       ADD A,R5
CODE:153b  f5 82                    MOV DPL,A
CODE:153d  74 01                    MOV A,#0x1
CODE:153f  3c                       ADDC A,R4
CODE:1540  f5 83                    MOV DPH,A
CODE:1542  74 ff                    MOV A,#0xff
CODE:1544  f0                       MOVX @DPTR,A
CODE:1545  74 5c                    MOV A,#0x5c
CODE:1547  2d                       ADD A,R5
CODE:1548  f5 82                    MOV DPL,A
CODE:154a  74 00                    MOV A,#0x0
CODE:154c  3c                       ADDC A,R4
CODE:154d  f5 83                    MOV DPH,A
CODE:154f  e5 3f                    MOV A,0x3f
CODE:1551  f0                       MOVX @DPTR,A
CODE:1552  74 f1                    MOV A,#0xf1
CODE:1554  2d                       ADD A,R5
CODE:1555  f5 82                    MOV DPL,A
CODE:1557  74 00                    MOV A,#0x0
CODE:1559  3c                       ADDC A,R4
CODE:155a  f5 83                    MOV DPH,A
CODE:155c  e5 40                    MOV A,0x40
CODE:155e  f0                       MOVX @DPTR,A
CODE:155f  74 86                    MOV A,#0x86
CODE:1561  2d                       ADD A,R5
CODE:1562  f5 82                    MOV DPL,A
CODE:1564  74 01                    MOV A,#0x1
CODE:1566  3c                       ADDC A,R4
CODE:1567  f5 83                    MOV DPH,A
CODE:1569  e5 41                    MOV A,0x41
CODE:156b  02 17 31                 LJMP 0x1731
LAB_CODE_156e:
CODE:156e  ee                       MOV A,R6   ; XREF: CODE:13b2 
CODE:156f  c3                       CLR CY
CODE:1570  94 2e                    SUBB A,#0x2e
CODE:1572  40 03                    JC 0x1577
CODE:1574  02 17 59                 LJMP 0x1759
LAB_CODE_1577:
CODE:1577  78 5e                    MOV R0,#0x5e   ; XREF: CODE:1572 
CODE:1579  e6                       MOV A,@R0
CODE:157a  fe                       MOV R6,A
CODE:157b  24 e9                    ADD A,#0xe9
CODE:157d  f5 82                    MOV DPL,A
CODE:157f  e4                       CLR A
CODE:1580  34 ff                    ADDC A,#0xff
CODE:1582  f5 83                    MOV DPH,A
CODE:1584  74 ff                    MOV A,#0xff
CODE:1586  f0                       MOVX @DPTR,A
CODE:1587  74 7e                    MOV A,#0x7e
CODE:1589  2e                       ADD A,R6
CODE:158a  f5 82                    MOV DPL,A
CODE:158c  e4                       CLR A
CODE:158d  34 00                    ADDC A,#0x0
CODE:158f  f5 83                    MOV DPH,A
CODE:1591  74 ff                    MOV A,#0xff
CODE:1593  f0                       MOVX @DPTR,A
CODE:1594  74 13                    MOV A,#0x13
CODE:1596  2e                       ADD A,R6
CODE:1597  f5 82                    MOV DPL,A
CODE:1599  e4                       CLR A
CODE:159a  34 01                    ADDC A,#0x1
CODE:159c  f5 83                    MOV DPH,A
CODE:159e  74 ff                    MOV A,#0xff
CODE:15a0  f0                       MOVX @DPTR,A
CODE:15a1  74 00                    MOV A,#0x0
CODE:15a3  2e                       ADD A,R6
CODE:15a4  f5 82                    MOV DPL,A
CODE:15a6  e4                       CLR A
CODE:15a7  34 00                    ADDC A,#0x0
CODE:15a9  f5 83                    MOV DPH,A
CODE:15ab  74 ff                    MOV A,#0xff
CODE:15ad  f0                       MOVX @DPTR,A
CODE:15ae  74 95                    MOV A,#0x95
CODE:15b0  2e                       ADD A,R6
CODE:15b1  f5 82                    MOV DPL,A
CODE:15b3  e4                       CLR A
CODE:15b4  34 00                    ADDC A,#0x0
CODE:15b6  f5 83                    MOV DPH,A
CODE:15b8  74 ff                    MOV A,#0xff
CODE:15ba  f0                       MOVX @DPTR,A
CODE:15bb  74 2a                    MOV A,#0x2a
CODE:15bd  2e                       ADD A,R6
CODE:15be  f5 82                    MOV DPL,A
CODE:15c0  e4                       CLR A
CODE:15c1  34 01                    ADDC A,#0x1
CODE:15c3  f5 83                    MOV DPH,A
CODE:15c5  74 ff                    MOV A,#0xff
CODE:15c7  f0                       MOVX @DPTR,A
CODE:15c8  74 17                    MOV A,#0x17
CODE:15ca  2e                       ADD A,R6
CODE:15cb  f5 82                    MOV DPL,A
CODE:15cd  e4                       CLR A
CODE:15ce  34 00                    ADDC A,#0x0
CODE:15d0  f5 83                    MOV DPH,A
CODE:15d2  74 ff                    MOV A,#0xff
CODE:15d4  f0                       MOVX @DPTR,A
CODE:15d5  74 ac                    MOV A,#0xac
CODE:15d7  2e                       ADD A,R6
CODE:15d8  f5 82                    MOV DPL,A
CODE:15da  e4                       CLR A
CODE:15db  34 00                    ADDC A,#0x0
CODE:15dd  f5 83                    MOV DPH,A
CODE:15df  74 ff                    MOV A,#0xff
CODE:15e1  f0                       MOVX @DPTR,A
CODE:15e2  74 41                    MOV A,#0x41
CODE:15e4  2e                       ADD A,R6
CODE:15e5  f5 82                    MOV DPL,A
CODE:15e7  e4                       CLR A
CODE:15e8  34 01                    ADDC A,#0x1
CODE:15ea  f5 83                    MOV DPH,A
CODE:15ec  74 ff                    MOV A,#0xff
CODE:15ee  f0                       MOVX @DPTR,A
CODE:15ef  74 2e                    MOV A,#0x2e
CODE:15f1  2e                       ADD A,R6
CODE:15f2  f5 82                    MOV DPL,A
CODE:15f4  e4                       CLR A
CODE:15f5  34 00                    ADDC A,#0x0
CODE:15f7  f5 83                    MOV DPH,A
CODE:15f9  74 ff                    MOV A,#0xff
CODE:15fb  f0                       MOVX @DPTR,A
CODE:15fc  74 c3                    MOV A,#0xc3
CODE:15fe  2e                       ADD A,R6
CODE:15ff  f5 82                    MOV DPL,A
CODE:1601  e4                       CLR A
CODE:1602  34 00                    ADDC A,#0x0
CODE:1604  f5 83                    MOV DPH,A
CODE:1606  74 ff                    MOV A,#0xff
CODE:1608  f0                       MOVX @DPTR,A
CODE:1609  74 58                    MOV A,#0x58
CODE:160b  2e                       ADD A,R6
CODE:160c  f5 82                    MOV DPL,A
CODE:160e  e4                       CLR A
CODE:160f  34 01                    ADDC A,#0x1
CODE:1611  f5 83                    MOV DPH,A
CODE:1613  74 ff                    MOV A,#0xff
CODE:1615  f0                       MOVX @DPTR,A
CODE:1616  74 45                    MOV A,#0x45
CODE:1618  2e                       ADD A,R6
CODE:1619  f5 82                    MOV DPL,A
CODE:161b  e4                       CLR A
CODE:161c  34 00                    ADDC A,#0x0
CODE:161e  f5 83                    MOV DPH,A
CODE:1620  74 ff                    MOV A,#0xff
CODE:1622  f0                       MOVX @DPTR,A
CODE:1623  74 da                    MOV A,#0xda
CODE:1625  2e                       ADD A,R6
CODE:1626  f5 82                    MOV DPL,A
CODE:1628  e4                       CLR A
CODE:1629  34 00                    ADDC A,#0x0
CODE:162b  f5 83                    MOV DPH,A
CODE:162d  74 ff                    MOV A,#0xff
CODE:162f  f0                       MOVX @DPTR,A
CODE:1630  74 6f                    MOV A,#0x6f
CODE:1632  2e                       ADD A,R6
CODE:1633  f5 82                    MOV DPL,A
CODE:1635  e4                       CLR A
CODE:1636  34 01                    ADDC A,#0x1
CODE:1638  f5 83                    MOV DPH,A
CODE:163a  74 ff                    MOV A,#0xff
CODE:163c  f0                       MOVX @DPTR,A
CODE:163d  74 5c                    MOV A,#0x5c
CODE:163f  2e                       ADD A,R6
CODE:1640  f5 82                    MOV DPL,A
CODE:1642  e4                       CLR A
CODE:1643  34 00                    ADDC A,#0x0
CODE:1645  f5 83                    MOV DPH,A
CODE:1647  74 ff                    MOV A,#0xff
CODE:1649  f0                       MOVX @DPTR,A
CODE:164a  74 f1                    MOV A,#0xf1
CODE:164c  2e                       ADD A,R6
CODE:164d  f5 82                    MOV DPL,A
CODE:164f  e4                       CLR A
CODE:1650  34 00                    ADDC A,#0x0
CODE:1652  f5 83                    MOV DPH,A
CODE:1654  74 ff                    MOV A,#0xff
CODE:1656  f0                       MOVX @DPTR,A
CODE:1657  74 86                    MOV A,#0x86
CODE:1659  2e                       ADD A,R6
CODE:165a  f5 82                    MOV DPL,A
CODE:165c  e4                       CLR A
CODE:165d  34 01                    ADDC A,#0x1
CODE:165f  f5 83                    MOV DPH,A
CODE:1661  74 ff                    MOV A,#0xff
CODE:1663  f0                       MOVX @DPTR,A
CODE:1664  ee                       MOV A,R6
CODE:1665  fd                       MOV R5,A
CODE:1666  c3                       CLR CY
CODE:1667  74 2d                    MOV A,#0x2d
CODE:1669  9d                       SUBB A,R5
CODE:166a  fd                       MOV R5,A
CODE:166b  e4                       CLR A
CODE:166c  94 00                    SUBB A,#0x0
CODE:166e  fc                       MOV R4,A
CODE:166f  74 00                    MOV A,#0x0
CODE:1671  2d                       ADD A,R5
CODE:1672  f5 82                    MOV DPL,A
CODE:1674  74 00                    MOV A,#0x0
CODE:1676  3c                       ADDC A,R4
CODE:1677  f5 83                    MOV DPH,A
CODE:1679  74 ff                    MOV A,#0xff
CODE:167b  f0                       MOVX @DPTR,A
CODE:167c  74 95                    MOV A,#0x95
CODE:167e  2d                       ADD A,R5
CODE:167f  f5 82                    MOV DPL,A
CODE:1681  74 00                    MOV A,#0x0
CODE:1683  3c                       ADDC A,R4
CODE:1684  f5 83                    MOV DPH,A
CODE:1686  74 ff                    MOV A,#0xff
CODE:1688  f0                       MOVX @DPTR,A
CODE:1689  74 2a                    MOV A,#0x2a
CODE:168b  2d                       ADD A,R5
CODE:168c  f5 82                    MOV DPL,A
CODE:168e  74 01                    MOV A,#0x1
CODE:1690  3c                       ADDC A,R4
CODE:1691  f5 83                    MOV DPH,A
CODE:1693  74 ff                    MOV A,#0xff
CODE:1695  f0                       MOVX @DPTR,A
CODE:1696  74 17                    MOV A,#0x17
CODE:1698  2d                       ADD A,R5
CODE:1699  f5 82                    MOV DPL,A
CODE:169b  74 00                    MOV A,#0x0
CODE:169d  3c                       ADDC A,R4
CODE:169e  f5 83                    MOV DPH,A
CODE:16a0  74 ff                    MOV A,#0xff
CODE:16a2  f0                       MOVX @DPTR,A
CODE:16a3  74 ac                    MOV A,#0xac
CODE:16a5  2d                       ADD A,R5
CODE:16a6  f5 82                    MOV DPL,A
CODE:16a8  74 00                    MOV A,#0x0
CODE:16aa  3c                       ADDC A,R4
CODE:16ab  f5 83                    MOV DPH,A
CODE:16ad  74 ff                    MOV A,#0xff
CODE:16af  f0                       MOVX @DPTR,A
CODE:16b0  74 41                    MOV A,#0x41
CODE:16b2  2d                       ADD A,R5
CODE:16b3  f5 82                    MOV DPL,A
CODE:16b5  74 01                    MOV A,#0x1
CODE:16b7  3c                       ADDC A,R4
CODE:16b8  f5 83                    MOV DPH,A
CODE:16ba  74 ff                    MOV A,#0xff
CODE:16bc  f0                       MOVX @DPTR,A
CODE:16bd  74 2e                    MOV A,#0x2e
CODE:16bf  2d                       ADD A,R5
CODE:16c0  f5 82                    MOV DPL,A
CODE:16c2  74 00                    MOV A,#0x0
CODE:16c4  3c                       ADDC A,R4
CODE:16c5  f5 83                    MOV DPH,A
CODE:16c7  74 ff                    MOV A,#0xff
CODE:16c9  f0                       MOVX @DPTR,A
CODE:16ca  74 c3                    MOV A,#0xc3
CODE:16cc  2d                       ADD A,R5
CODE:16cd  f5 82                    MOV DPL,A
CODE:16cf  74 00                    MOV A,#0x0
CODE:16d1  3c                       ADDC A,R4
CODE:16d2  f5 83                    MOV DPH,A
CODE:16d4  74 ff                    MOV A,#0xff
CODE:16d6  f0                       MOVX @DPTR,A
CODE:16d7  74 58                    MOV A,#0x58
CODE:16d9  2d                       ADD A,R5
CODE:16da  f5 82                    MOV DPL,A
CODE:16dc  74 01                    MOV A,#0x1
CODE:16de  3c                       ADDC A,R4
CODE:16df  f5 83                    MOV DPH,A
CODE:16e1  74 ff                    MOV A,#0xff
CODE:16e3  f0                       MOVX @DPTR,A
CODE:16e4  74 45                    MOV A,#0x45
CODE:16e6  2d                       ADD A,R5
CODE:16e7  f5 82                    MOV DPL,A
CODE:16e9  74 00                    MOV A,#0x0
CODE:16eb  3c                       ADDC A,R4
CODE:16ec  f5 83                    MOV DPH,A
CODE:16ee  74 ff                    MOV A,#0xff
CODE:16f0  f0                       MOVX @DPTR,A
CODE:16f1  74 da                    MOV A,#0xda
CODE:16f3  2d                       ADD A,R5
CODE:16f4  f5 82                    MOV DPL,A
CODE:16f6  74 00                    MOV A,#0x0
CODE:16f8  3c                       ADDC A,R4
CODE:16f9  f5 83                    MOV DPH,A
CODE:16fb  74 ff                    MOV A,#0xff
CODE:16fd  f0                       MOVX @DPTR,A
CODE:16fe  74 6f                    MOV A,#0x6f
CODE:1700  2d                       ADD A,R5
CODE:1701  f5 82                    MOV DPL,A
CODE:1703  74 01                    MOV A,#0x1
CODE:1705  3c                       ADDC A,R4
CODE:1706  f5 83                    MOV DPH,A
CODE:1708  74 ff                    MOV A,#0xff
CODE:170a  f0                       MOVX @DPTR,A
CODE:170b  74 5c                    MOV A,#0x5c
CODE:170d  2d                       ADD A,R5
CODE:170e  f5 82                    MOV DPL,A
CODE:1710  74 00                    MOV A,#0x0
CODE:1712  3c                       ADDC A,R4
CODE:1713  f5 83                    MOV DPH,A
CODE:1715  74 ff                    MOV A,#0xff
CODE:1717  f0                       MOVX @DPTR,A
CODE:1718  74 f1                    MOV A,#0xf1
CODE:171a  2d                       ADD A,R5
CODE:171b  f5 82                    MOV DPL,A
CODE:171d  74 00                    MOV A,#0x0
CODE:171f  3c                       ADDC A,R4
CODE:1720  f5 83                    MOV DPH,A
CODE:1722  74 ff                    MOV A,#0xff
CODE:1724  f0                       MOVX @DPTR,A
CODE:1725  74 86                    MOV A,#0x86
CODE:1727  2d                       ADD A,R5
CODE:1728  f5 82                    MOV DPL,A
CODE:172a  74 01                    MOV A,#0x1
CODE:172c  3c                       ADDC A,R4
CODE:172d  f5 83                    MOV DPH,A
CODE:172f  74 ff                    MOV A,#0xff
LAB_CODE_1731:
CODE:1731  f0                       MOVX @DPTR,A   ; XREF: CODE:156b 
CODE:1732  74 73                    MOV A,#0x73
CODE:1734  2d                       ADD A,R5
CODE:1735  f5 82                    MOV DPL,A
CODE:1737  74 00                    MOV A,#0x0
CODE:1739  3c                       ADDC A,R4
CODE:173a  f5 83                    MOV DPH,A
CODE:173c  74 ff                    MOV A,#0xff
CODE:173e  f0                       MOVX @DPTR,A
CODE:173f  74 08                    MOV A,#0x8
CODE:1741  2d                       ADD A,R5
CODE:1742  f5 82                    MOV DPL,A
CODE:1744  74 01                    MOV A,#0x1
CODE:1746  3c                       ADDC A,R4
CODE:1747  f5 83                    MOV DPH,A
CODE:1749  74 ff                    MOV A,#0xff
CODE:174b  f0                       MOVX @DPTR,A
CODE:174c  74 9d                    MOV A,#0x9d
CODE:174e  2d                       ADD A,R5
CODE:174f  f5 82                    MOV DPL,A
CODE:1751  74 01                    MOV A,#0x1
CODE:1753  3c                       ADDC A,R4
CODE:1754  f5 83                    MOV DPH,A
CODE:1756  74 ff                    MOV A,#0xff
CODE:1758  f0                       MOVX @DPTR,A
LAB_CODE_1759:
CODE:1759  78 5e                    MOV R0,#0x5e   ; XREF: CODE:13a6 CODE:1574 
CODE:175b  06                       INC @R0
CODE:175c  e6                       MOV A,@R0
CODE:175d  d3                       SETB CY
CODE:175e  94 2d                    SUBB A,#0x2d
CODE:1760  50 03                    JNC 0x1765
CODE:1762  02 38 aa                 LJMP 0x38aa
LAB_CODE_1765:
CODE:1765  e4                       CLR A   ; XREF: CODE:1760 
CODE:1766  f6                       MOV @R0,A
CODE:1767  05 1c                    INC 0x1c
CODE:1769  e5 1c                    MOV A,0x1c
CODE:176b  d3                       SETB CY
CODE:176c  94 06                    SUBB A,#0x6
CODE:176e  50 03                    JNC 0x1773
CODE:1770  02 38 aa                 LJMP 0x38aa
LAB_CODE_1773:
CODE:1773  02 38 a7                 LJMP 0x38a7   ; XREF: CODE:176e 
LAB_CODE_1776:
CODE:1776  ef                       MOV A,R7   ; XREF: CODE:0f88 
CODE:1777  64 01                    XRL A,#0x1
CODE:1779  60 03                    JZ 0x177e
CODE:177b  02 1e 99                 LJMP 0x1e99
LAB_CODE_177e:
CODE:177e  78 57                    MOV R0,#0x57   ; XREF: CODE:1779 
CODE:1780  06                       INC @R0
CODE:1781  c3                       CLR CY
CODE:1782  74 05                    MOV A,#0x5
CODE:1784  78 77                    MOV R0,#0x77
CODE:1786  96                       SUBB A,@R0
CODE:1787  ff                       MOV R7,A
CODE:1788  78 57                    MOV R0,#0x57
CODE:178a  e6                       MOV A,@R0
CODE:178b  d3                       SETB CY
CODE:178c  9f                       SUBB A,R7
CODE:178d  50 03                    JNC 0x1792
CODE:178f  02 38 aa                 LJMP 0x38aa
LAB_CODE_1792:
CODE:1792  e4                       CLR A   ; XREF: CODE:178d 
CODE:1793  f6                       MOV @R0,A
CODE:1794  e5 1d                    MOV A,0x1d
CODE:1796  d3                       SETB CY
CODE:1797  94 09                    SUBB A,#0x9
CODE:1799  40 05                    JC 0x17a0
CODE:179b  e4                       CLR A
CODE:179c  f5 3e                    MOV 0x3e,A
CODE:179e  80 07                    SJMP 0x17a7
LAB_CODE_17a0:
CODE:17a0  c3                       CLR CY   ; XREF: CODE:1799 
CODE:17a1  74 09                    MOV A,#0x9
CODE:17a3  95 1d                    SUBB A,0x1d
CODE:17a5  f5 3e                    MOV 0x3e,A
LAB_CODE_17a7:
CODE:17a7  85 1d 42                 MOV 0x42,0x1d   ; XREF: CODE:179e 
CODE:17aa  e5 1d                    MOV A,0x1d
CODE:17ac  c3                       CLR CY
CODE:17ad  94 17                    SUBB A,#0x17
CODE:17af  40 03                    JC 0x17b4
CODE:17b1  02 18 9b                 LJMP 0x189b
LAB_CODE_17b4:
CODE:17b4  78 5e                    MOV R0,#0x5e   ; XREF: CODE:17af 
CODE:17b6  76 0a                    MOV @R0,#0xa
LAB_CODE_17b8:
CODE:17b8  78 5e                    MOV R0,#0x5e   ; XREF: CODE:1893 
CODE:17ba  e6                       MOV A,@R0
CODE:17bb  ff                       MOV R7,A
CODE:17bc  d3                       SETB CY
CODE:17bd  95 3e                    SUBB A,0x3e
CODE:17bf  50 03                    JNC 0x17c4
CODE:17c1  02 18 96                 LJMP 0x1896
LAB_CODE_17c4:
CODE:17c4  74 5e                    MOV A,#0x5e   ; XREF: CODE:17bf 
CODE:17c6  2f                       ADD A,R7
CODE:17c7  f8                       MOV R0,A
CODE:17c8  e6                       MOV A,@R0
CODE:17c9  ff                       MOV R7,A
CODE:17ca  78 54                    MOV R0,#0x54
CODE:17cc  76 00                    MOV @R0,#0x0
CODE:17ce  08                       INC R0
CODE:17cf  a6 07                    MOV @R0,0x07
CODE:17d1  e5 1c                    MOV A,0x1c
CODE:17d3  70 0b                    JNZ 0x17e0
CODE:17d5  75 3f ff                 MOV 0x3f,#0xff
CODE:17d8  75 40 ff                 MOV 0x40,#0xff
CODE:17db  e6                       MOV A,@R0
CODE:17dc  f5 41                    MOV 0x41,A
CODE:17de  80 5a                    SJMP 0x183a
LAB_CODE_17e0:
CODE:17e0  e5 1c                    MOV A,0x1c   ; XREF: CODE:17d3 
CODE:17e2  b4 01 08                 CJNE A,#0x1,0x17ed
CODE:17e5  75 3f ff                 MOV 0x3f,#0xff
CODE:17e8  78 55                    MOV R0,#0x55
CODE:17ea  e6                       MOV A,@R0
CODE:17eb  80 37                    SJMP 0x1824
LAB_CODE_17ed:
CODE:17ed  e5 1c                    MOV A,0x1c   ; XREF: CODE:17e2 
CODE:17ef  b4 02 0a                 CJNE A,#0x2,0x17fc
CODE:17f2  78 55                    MOV R0,#0x55
CODE:17f4  e6                       MOV A,@R0
CODE:17f5  f5 3f                    MOV 0x3f,A
CODE:17f7  75 40 ff                 MOV 0x40,#0xff
CODE:17fa  80 2a                    SJMP 0x1826
LAB_CODE_17fc:
CODE:17fc  e5 1c                    MOV A,0x1c   ; XREF: CODE:17ef 
CODE:17fe  b4 03 08                 CJNE A,#0x3,0x1809
CODE:1801  75 3f ff                 MOV 0x3f,#0xff
CODE:1804  78 55                    MOV R0,#0x55
CODE:1806  e6                       MOV A,@R0
CODE:1807  80 2d                    SJMP 0x1836
LAB_CODE_1809:
CODE:1809  e5 1c                    MOV A,0x1c   ; XREF: CODE:17fe 
CODE:180b  b4 04 0c                 CJNE A,#0x4,0x181a
CODE:180e  78 55                    MOV R0,#0x55
CODE:1810  e6                       MOV A,@R0
CODE:1811  f5 3f                    MOV 0x3f,A
CODE:1813  75 40 ff                 MOV 0x40,#0xff
CODE:1816  f5 41                    MOV 0x41,A
CODE:1818  80 20                    SJMP 0x183a
LAB_CODE_181a:
CODE:181a  e5 1c                    MOV A,0x1c   ; XREF: CODE:180b 
CODE:181c  b4 05 0c                 CJNE A,#0x5,0x182b
CODE:181f  78 55                    MOV R0,#0x55
CODE:1821  e6                       MOV A,@R0
CODE:1822  f5 3f                    MOV 0x3f,A
LAB_CODE_1824:
CODE:1824  f5 40                    MOV 0x40,A   ; XREF: CODE:17eb 
LAB_CODE_1826:
CODE:1826  75 41 ff                 MOV 0x41,#0xff   ; XREF: CODE:17fa 
CODE:1829  80 0f                    SJMP 0x183a
LAB_CODE_182b:
CODE:182b  e5 1c                    MOV A,0x1c   ; XREF: CODE:181c 
CODE:182d  b4 06 0a                 CJNE A,#0x6,0x183a
CODE:1830  78 54                    MOV R0,#0x54
CODE:1832  08                       INC R0
CODE:1833  e6                       MOV A,@R0
CODE:1834  f5 3f                    MOV 0x3f,A
LAB_CODE_1836:
CODE:1836  f5 40                    MOV 0x40,A   ; XREF: CODE:1807 
CODE:1838  f5 41                    MOV 0x41,A
LAB_CODE_183a:
CODE:183a  74 00                    MOV A,#0x0   ; XREF: CODE:17de CODE:1818 CODE:1829 CODE:182d 
CODE:183c  25 42                    ADD A,0x42
CODE:183e  f5 82                    MOV DPL,A
CODE:1840  e4                       CLR A
CODE:1841  34 00                    ADDC A,#0x0
CODE:1843  f5 83                    MOV DPH,A
CODE:1845  e5 3f                    MOV A,0x3f
CODE:1847  f0                       MOVX @DPTR,A
CODE:1848  74 95                    MOV A,#0x95
CODE:184a  25 42                    ADD A,0x42
CODE:184c  f5 82                    MOV DPL,A
CODE:184e  e4                       CLR A
CODE:184f  34 00                    ADDC A,#0x0
CODE:1851  f5 83                    MOV DPH,A
CODE:1853  e5 40                    MOV A,0x40
CODE:1855  f0                       MOVX @DPTR,A
CODE:1856  74 2a                    MOV A,#0x2a
CODE:1858  25 42                    ADD A,0x42
CODE:185a  f5 82                    MOV DPL,A
CODE:185c  e4                       CLR A
CODE:185d  34 01                    ADDC A,#0x1
CODE:185f  f5 83                    MOV DPH,A
CODE:1861  e5 41                    MOV A,0x41
CODE:1863  f0                       MOVX @DPTR,A
CODE:1864  74 00                    MOV A,#0x0
CODE:1866  25 42                    ADD A,0x42
CODE:1868  f5 82                    MOV DPL,A
CODE:186a  e4                       CLR A
CODE:186b  34 00                    ADDC A,#0x0
CODE:186d  f5 83                    MOV DPH,A
CODE:186f  e5 3f                    MOV A,0x3f
CODE:1871  f0                       MOVX @DPTR,A
CODE:1872  74 95                    MOV A,#0x95
CODE:1874  25 42                    ADD A,0x42
CODE:1876  f5 82                    MOV DPL,A
CODE:1878  e4                       CLR A
CODE:1879  34 00                    ADDC A,#0x0
CODE:187b  f5 83                    MOV DPH,A
CODE:187d  e5 40                    MOV A,0x40
CODE:187f  f0                       MOVX @DPTR,A
CODE:1880  74 2a                    MOV A,#0x2a
CODE:1882  25 42                    ADD A,0x42
CODE:1884  f5 82                    MOV DPL,A
CODE:1886  e4                       CLR A
CODE:1887  34 01                    ADDC A,#0x1
CODE:1889  f5 83                    MOV DPH,A
CODE:188b  e5 41                    MOV A,0x41
CODE:188d  f0                       MOVX @DPTR,A
CODE:188e  15 42                    DEC 0x42
CODE:1890  78 5e                    MOV R0,#0x5e
CODE:1892  16                       DEC @R0
CODE:1893  02 17 b8                 LJMP 0x17b8
LAB_CODE_1896:
CODE:1896  05 1d                    INC 0x1d   ; XREF: CODE:17c1 
CODE:1898  02 38 aa                 LJMP 0x38aa
LAB_CODE_189b:
CODE:189b  e5 1d                    MOV A,0x1d   ; XREF: CODE:17b1 
CODE:189d  c3                       CLR CY
CODE:189e  94 2e                    SUBB A,#0x2e
CODE:18a0  40 03                    JC 0x18a5
CODE:18a2  02 19 96                 LJMP 0x1996
LAB_CODE_18a5:
CODE:18a5  78 5e                    MOV R0,#0x5e   ; XREF: CODE:18a0 
CODE:18a7  76 0a                    MOV @R0,#0xa
LAB_CODE_18a9:
CODE:18a9  78 5e                    MOV R0,#0x5e   ; XREF: CODE:198e 
CODE:18ab  e6                       MOV A,@R0
CODE:18ac  ff                       MOV R7,A
CODE:18ad  d3                       SETB CY
CODE:18ae  95 3e                    SUBB A,0x3e
CODE:18b0  50 03                    JNC 0x18b5
CODE:18b2  02 19 91                 LJMP 0x1991
LAB_CODE_18b5:
CODE:18b5  74 5e                    MOV A,#0x5e   ; XREF: CODE:18b0 
CODE:18b7  2f                       ADD A,R7
CODE:18b8  f8                       MOV R0,A
CODE:18b9  e6                       MOV A,@R0
CODE:18ba  ff                       MOV R7,A
CODE:18bb  78 54                    MOV R0,#0x54
CODE:18bd  76 00                    MOV @R0,#0x0
CODE:18bf  08                       INC R0
CODE:18c0  a6 07                    MOV @R0,0x07
CODE:18c2  e5 1c                    MOV A,0x1c
CODE:18c4  70 0b                    JNZ 0x18d1
CODE:18c6  75 3f ff                 MOV 0x3f,#0xff
CODE:18c9  75 40 ff                 MOV 0x40,#0xff
CODE:18cc  e6                       MOV A,@R0
CODE:18cd  f5 41                    MOV 0x41,A
CODE:18cf  80 5a                    SJMP 0x192b
LAB_CODE_18d1:
CODE:18d1  e5 1c                    MOV A,0x1c   ; XREF: CODE:18c4 
CODE:18d3  b4 01 08                 CJNE A,#0x1,0x18de
CODE:18d6  75 3f ff                 MOV 0x3f,#0xff
CODE:18d9  78 55                    MOV R0,#0x55
CODE:18db  e6                       MOV A,@R0
CODE:18dc  80 37                    SJMP 0x1915
LAB_CODE_18de:
CODE:18de  e5 1c                    MOV A,0x1c   ; XREF: CODE:18d3 
CODE:18e0  b4 02 0a                 CJNE A,#0x2,0x18ed
CODE:18e3  78 55                    MOV R0,#0x55
CODE:18e5  e6                       MOV A,@R0
CODE:18e6  f5 3f                    MOV 0x3f,A
CODE:18e8  75 40 ff                 MOV 0x40,#0xff
CODE:18eb  80 2a                    SJMP 0x1917
LAB_CODE_18ed:
CODE:18ed  e5 1c                    MOV A,0x1c   ; XREF: CODE:18e0 
CODE:18ef  b4 03 08                 CJNE A,#0x3,0x18fa
CODE:18f2  75 3f ff                 MOV 0x3f,#0xff
CODE:18f5  78 55                    MOV R0,#0x55
CODE:18f7  e6                       MOV A,@R0
CODE:18f8  80 2d                    SJMP 0x1927
LAB_CODE_18fa:
CODE:18fa  e5 1c                    MOV A,0x1c   ; XREF: CODE:18ef 
CODE:18fc  b4 04 0c                 CJNE A,#0x4,0x190b
CODE:18ff  78 55                    MOV R0,#0x55
CODE:1901  e6                       MOV A,@R0
CODE:1902  f5 3f                    MOV 0x3f,A
CODE:1904  75 40 ff                 MOV 0x40,#0xff
CODE:1907  f5 41                    MOV 0x41,A
CODE:1909  80 20                    SJMP 0x192b
LAB_CODE_190b:
CODE:190b  e5 1c                    MOV A,0x1c   ; XREF: CODE:18fc 
CODE:190d  b4 05 0c                 CJNE A,#0x5,0x191c
CODE:1910  78 55                    MOV R0,#0x55
CODE:1912  e6                       MOV A,@R0
CODE:1913  f5 3f                    MOV 0x3f,A
LAB_CODE_1915:
CODE:1915  f5 40                    MOV 0x40,A   ; XREF: CODE:18dc 
LAB_CODE_1917:
CODE:1917  75 41 ff                 MOV 0x41,#0xff   ; XREF: CODE:18eb 
CODE:191a  80 0f                    SJMP 0x192b
LAB_CODE_191c:
CODE:191c  e5 1c                    MOV A,0x1c   ; XREF: CODE:190d 
CODE:191e  b4 06 0a                 CJNE A,#0x6,0x192b
CODE:1921  78 54                    MOV R0,#0x54
CODE:1923  08                       INC R0
CODE:1924  e6                       MOV A,@R0
CODE:1925  f5 3f                    MOV 0x3f,A
LAB_CODE_1927:
CODE:1927  f5 40                    MOV 0x40,A   ; XREF: CODE:18f8 
CODE:1929  f5 41                    MOV 0x41,A
LAB_CODE_192b:
CODE:192b  e5 42                    MOV A,0x42   ; XREF: CODE:18cf CODE:1909 CODE:191a CODE:191e 
CODE:192d  d3                       SETB CY
CODE:192e  94 16                    SUBB A,#0x16
CODE:1930  40 2d                    JC 0x195f
CODE:1932  74 44                    MOV A,#0x44
CODE:1934  95 42                    SUBB A,0x42
CODE:1936  ff                       MOV R7,A
CODE:1937  e4                       CLR A
CODE:1938  94 00                    SUBB A,#0x0
CODE:193a  fe                       MOV R6,A
CODE:193b  74 00                    MOV A,#0x0
CODE:193d  2f                       ADD A,R7
CODE:193e  f5 82                    MOV DPL,A
CODE:1940  74 00                    MOV A,#0x0
CODE:1942  3e                       ADDC A,R6
CODE:1943  f5 83                    MOV DPH,A
CODE:1945  e5 3f                    MOV A,0x3f
CODE:1947  f0                       MOVX @DPTR,A
CODE:1948  74 95                    MOV A,#0x95
CODE:194a  2f                       ADD A,R7
CODE:194b  f5 82                    MOV DPL,A
CODE:194d  74 00                    MOV A,#0x0
CODE:194f  3e                       ADDC A,R6
CODE:1950  f5 83                    MOV DPH,A
CODE:1952  e5 40                    MOV A,0x40
CODE:1954  f0                       MOVX @DPTR,A
CODE:1955  74 2a                    MOV A,#0x2a
CODE:1957  2f                       ADD A,R7
CODE:1958  f5 82                    MOV DPL,A
CODE:195a  74 01                    MOV A,#0x1
CODE:195c  3e                       ADDC A,R6
CODE:195d  80 25                    SJMP 0x1984
LAB_CODE_195f:
CODE:195f  74 00                    MOV A,#0x0   ; XREF: CODE:1930 
CODE:1961  25 42                    ADD A,0x42
CODE:1963  f5 82                    MOV DPL,A
CODE:1965  e4                       CLR A
CODE:1966  34 00                    ADDC A,#0x0
CODE:1968  f5 83                    MOV DPH,A
CODE:196a  e5 3f                    MOV A,0x3f
CODE:196c  f0                       MOVX @DPTR,A
CODE:196d  74 95                    MOV A,#0x95
CODE:196f  25 42                    ADD A,0x42
CODE:1971  f5 82                    MOV DPL,A
CODE:1973  e4                       CLR A
CODE:1974  34 00                    ADDC A,#0x0
CODE:1976  f5 83                    MOV DPH,A
CODE:1978  e5 40                    MOV A,0x40
CODE:197a  f0                       MOVX @DPTR,A
CODE:197b  74 2a                    MOV A,#0x2a
CODE:197d  25 42                    ADD A,0x42
CODE:197f  f5 82                    MOV DPL,A
CODE:1981  e4                       CLR A
CODE:1982  34 01                    ADDC A,#0x1
LAB_CODE_1984:
CODE:1984  f5 83                    MOV DPH,A   ; XREF: CODE:195d 
CODE:1986  e5 41                    MOV A,0x41
CODE:1988  f0                       MOVX @DPTR,A
CODE:1989  15 42                    DEC 0x42
CODE:198b  78 5e                    MOV R0,#0x5e
CODE:198d  16                       DEC @R0
CODE:198e  02 18 a9                 LJMP 0x18a9
LAB_CODE_1991:
CODE:1991  05 1d                    INC 0x1d   ; XREF: CODE:18b2 
CODE:1993  02 38 aa                 LJMP 0x38aa
LAB_CODE_1996:
CODE:1996  e5 1d                    MOV A,0x1d   ; XREF: CODE:18a2 
CODE:1998  c3                       CLR CY
CODE:1999  94 45                    SUBB A,#0x45
CODE:199b  40 03                    JC 0x19a0
CODE:199d  02 1a 92                 LJMP 0x1a92
LAB_CODE_19a0:
CODE:19a0  78 5e                    MOV R0,#0x5e   ; XREF: CODE:199b 
CODE:19a2  76 0a                    MOV @R0,#0xa
LAB_CODE_19a4:
CODE:19a4  78 5e                    MOV R0,#0x5e   ; XREF: CODE:1a8a 
CODE:19a6  e6                       MOV A,@R0
CODE:19a7  ff                       MOV R7,A
CODE:19a8  d3                       SETB CY
CODE:19a9  95 3e                    SUBB A,0x3e
CODE:19ab  50 03                    JNC 0x19b0
CODE:19ad  02 1a 8d                 LJMP 0x1a8d
LAB_CODE_19b0:
CODE:19b0  74 5e                    MOV A,#0x5e   ; XREF: CODE:19ab 
CODE:19b2  2f                       ADD A,R7
CODE:19b3  f8                       MOV R0,A
CODE:19b4  e6                       MOV A,@R0
CODE:19b5  ff                       MOV R7,A
CODE:19b6  78 54                    MOV R0,#0x54
CODE:19b8  76 00                    MOV @R0,#0x0
CODE:19ba  08                       INC R0
CODE:19bb  a6 07                    MOV @R0,0x07
CODE:19bd  e5 1c                    MOV A,0x1c
CODE:19bf  70 0b                    JNZ 0x19cc
CODE:19c1  75 3f ff                 MOV 0x3f,#0xff
CODE:19c4  75 40 ff                 MOV 0x40,#0xff
CODE:19c7  e6                       MOV A,@R0
CODE:19c8  f5 41                    MOV 0x41,A
CODE:19ca  80 5a                    SJMP 0x1a26
LAB_CODE_19cc:
CODE:19cc  e5 1c                    MOV A,0x1c   ; XREF: CODE:19bf 
CODE:19ce  b4 01 08                 CJNE A,#0x1,0x19d9
CODE:19d1  75 3f ff                 MOV 0x3f,#0xff
CODE:19d4  78 55                    MOV R0,#0x55
CODE:19d6  e6                       MOV A,@R0
CODE:19d7  80 37                    SJMP 0x1a10
LAB_CODE_19d9:
CODE:19d9  e5 1c                    MOV A,0x1c   ; XREF: CODE:19ce 
CODE:19db  b4 02 0a                 CJNE A,#0x2,0x19e8
CODE:19de  78 55                    MOV R0,#0x55
CODE:19e0  e6                       MOV A,@R0
CODE:19e1  f5 3f                    MOV 0x3f,A
CODE:19e3  75 40 ff                 MOV 0x40,#0xff
CODE:19e6  80 2a                    SJMP 0x1a12
LAB_CODE_19e8:
CODE:19e8  e5 1c                    MOV A,0x1c   ; XREF: CODE:19db 
CODE:19ea  b4 03 08                 CJNE A,#0x3,0x19f5
CODE:19ed  75 3f ff                 MOV 0x3f,#0xff
CODE:19f0  78 55                    MOV R0,#0x55
CODE:19f2  e6                       MOV A,@R0
CODE:19f3  80 2d                    SJMP 0x1a22
LAB_CODE_19f5:
CODE:19f5  e5 1c                    MOV A,0x1c   ; XREF: CODE:19ea 
CODE:19f7  b4 04 0c                 CJNE A,#0x4,0x1a06
CODE:19fa  78 55                    MOV R0,#0x55
CODE:19fc  e6                       MOV A,@R0
CODE:19fd  f5 3f                    MOV 0x3f,A
CODE:19ff  75 40 ff                 MOV 0x40,#0xff
CODE:1a02  f5 41                    MOV 0x41,A
CODE:1a04  80 20                    SJMP 0x1a26
LAB_CODE_1a06:
CODE:1a06  e5 1c                    MOV A,0x1c   ; XREF: CODE:19f7 
CODE:1a08  b4 05 0c                 CJNE A,#0x5,0x1a17
CODE:1a0b  78 55                    MOV R0,#0x55
CODE:1a0d  e6                       MOV A,@R0
CODE:1a0e  f5 3f                    MOV 0x3f,A
LAB_CODE_1a10:
CODE:1a10  f5 40                    MOV 0x40,A   ; XREF: CODE:19d7 
LAB_CODE_1a12:
CODE:1a12  75 41 ff                 MOV 0x41,#0xff   ; XREF: CODE:19e6 
CODE:1a15  80 0f                    SJMP 0x1a26
LAB_CODE_1a17:
CODE:1a17  e5 1c                    MOV A,0x1c   ; XREF: CODE:1a08 
CODE:1a19  b4 06 0a                 CJNE A,#0x6,0x1a26
CODE:1a1c  78 54                    MOV R0,#0x54
CODE:1a1e  08                       INC R0
CODE:1a1f  e6                       MOV A,@R0
CODE:1a20  f5 3f                    MOV 0x3f,A
LAB_CODE_1a22:
CODE:1a22  f5 40                    MOV 0x40,A   ; XREF: CODE:19f3 
CODE:1a24  f5 41                    MOV 0x41,A
LAB_CODE_1a26:
CODE:1a26  e5 42                    MOV A,0x42   ; XREF: CODE:19ca CODE:1a04 CODE:1a15 CODE:1a19 
CODE:1a28  d3                       SETB CY
CODE:1a29  94 2d                    SUBB A,#0x2d
CODE:1a2b  40 27                    JC 0x1a54
CODE:1a2d  74 00                    MOV A,#0x0
CODE:1a2f  25 42                    ADD A,0x42
CODE:1a31  f5 82                    MOV DPL,A
CODE:1a33  e4                       CLR A
CODE:1a34  34 00                    ADDC A,#0x0
CODE:1a36  f5 83                    MOV DPH,A
CODE:1a38  e5 3f                    MOV A,0x3f
CODE:1a3a  f0                       MOVX @DPTR,A
CODE:1a3b  74 95                    MOV A,#0x95
CODE:1a3d  25 42                    ADD A,0x42
CODE:1a3f  f5 82                    MOV DPL,A
CODE:1a41  e4                       CLR A
CODE:1a42  34 00                    ADDC A,#0x0
CODE:1a44  f5 83                    MOV DPH,A
CODE:1a46  e5 40                    MOV A,0x40
CODE:1a48  f0                       MOVX @DPTR,A
CODE:1a49  74 2a                    MOV A,#0x2a
CODE:1a4b  25 42                    ADD A,0x42
CODE:1a4d  f5 82                    MOV DPL,A
CODE:1a4f  e4                       CLR A
CODE:1a50  34 01                    ADDC A,#0x1
CODE:1a52  80 2c                    SJMP 0x1a80
LAB_CODE_1a54:
CODE:1a54  c3                       CLR CY   ; XREF: CODE:1a2b 
CODE:1a55  74 44                    MOV A,#0x44
CODE:1a57  95 42                    SUBB A,0x42
CODE:1a59  ff                       MOV R7,A
CODE:1a5a  e4                       CLR A
CODE:1a5b  94 00                    SUBB A,#0x0
CODE:1a5d  fe                       MOV R6,A
CODE:1a5e  74 00                    MOV A,#0x0
CODE:1a60  2f                       ADD A,R7
CODE:1a61  f5 82                    MOV DPL,A
CODE:1a63  74 00                    MOV A,#0x0
CODE:1a65  3e                       ADDC A,R6
CODE:1a66  f5 83                    MOV DPH,A
CODE:1a68  e5 3f                    MOV A,0x3f
CODE:1a6a  f0                       MOVX @DPTR,A
CODE:1a6b  74 95                    MOV A,#0x95
CODE:1a6d  2f                       ADD A,R7
CODE:1a6e  f5 82                    MOV DPL,A
CODE:1a70  74 00                    MOV A,#0x0
CODE:1a72  3e                       ADDC A,R6
CODE:1a73  f5 83                    MOV DPH,A
CODE:1a75  e5 40                    MOV A,0x40
CODE:1a77  f0                       MOVX @DPTR,A
CODE:1a78  74 2a                    MOV A,#0x2a
CODE:1a7a  2f                       ADD A,R7
CODE:1a7b  f5 82                    MOV DPL,A
CODE:1a7d  74 01                    MOV A,#0x1
CODE:1a7f  3e                       ADDC A,R6
LAB_CODE_1a80:
CODE:1a80  f5 83                    MOV DPH,A   ; XREF: CODE:1a52 
CODE:1a82  e5 41                    MOV A,0x41
CODE:1a84  f0                       MOVX @DPTR,A
CODE:1a85  15 42                    DEC 0x42
CODE:1a87  78 5e                    MOV R0,#0x5e
CODE:1a89  16                       DEC @R0
CODE:1a8a  02 19 a4                 LJMP 0x19a4
LAB_CODE_1a8d:
CODE:1a8d  05 1d                    INC 0x1d   ; XREF: CODE:19ad 
CODE:1a8f  02 38 aa                 LJMP 0x38aa
LAB_CODE_1a92:
CODE:1a92  e5 1d                    MOV A,0x1d   ; XREF: CODE:199d 
CODE:1a94  c3                       CLR CY
CODE:1a95  94 5c                    SUBB A,#0x5c
CODE:1a97  40 03                    JC 0x1a9c
CODE:1a99  02 1b 8d                 LJMP 0x1b8d
LAB_CODE_1a9c:
CODE:1a9c  78 5e                    MOV R0,#0x5e   ; XREF: CODE:1a97 
CODE:1a9e  76 0a                    MOV @R0,#0xa
LAB_CODE_1aa0:
CODE:1aa0  78 5e                    MOV R0,#0x5e   ; XREF: CODE:1b85 
CODE:1aa2  e6                       MOV A,@R0
CODE:1aa3  ff                       MOV R7,A
CODE:1aa4  d3                       SETB CY
CODE:1aa5  95 3e                    SUBB A,0x3e
CODE:1aa7  50 03                    JNC 0x1aac
CODE:1aa9  02 1b 88                 LJMP 0x1b88
LAB_CODE_1aac:
CODE:1aac  74 5e                    MOV A,#0x5e   ; XREF: CODE:1aa7 
CODE:1aae  2f                       ADD A,R7
CODE:1aaf  f8                       MOV R0,A
CODE:1ab0  e6                       MOV A,@R0
CODE:1ab1  ff                       MOV R7,A
CODE:1ab2  78 54                    MOV R0,#0x54
CODE:1ab4  76 00                    MOV @R0,#0x0
CODE:1ab6  08                       INC R0
CODE:1ab7  a6 07                    MOV @R0,0x07
CODE:1ab9  e5 1c                    MOV A,0x1c
CODE:1abb  70 0b                    JNZ 0x1ac8
CODE:1abd  75 3f ff                 MOV 0x3f,#0xff
CODE:1ac0  75 40 ff                 MOV 0x40,#0xff
CODE:1ac3  e6                       MOV A,@R0
CODE:1ac4  f5 41                    MOV 0x41,A
CODE:1ac6  80 5a                    SJMP 0x1b22
LAB_CODE_1ac8:
CODE:1ac8  e5 1c                    MOV A,0x1c   ; XREF: CODE:1abb 
CODE:1aca  b4 01 08                 CJNE A,#0x1,0x1ad5
CODE:1acd  75 3f ff                 MOV 0x3f,#0xff
CODE:1ad0  78 55                    MOV R0,#0x55
CODE:1ad2  e6                       MOV A,@R0
CODE:1ad3  80 37                    SJMP 0x1b0c
LAB_CODE_1ad5:
CODE:1ad5  e5 1c                    MOV A,0x1c   ; XREF: CODE:1aca 
CODE:1ad7  b4 02 0a                 CJNE A,#0x2,0x1ae4
CODE:1ada  78 55                    MOV R0,#0x55
CODE:1adc  e6                       MOV A,@R0
CODE:1add  f5 3f                    MOV 0x3f,A
CODE:1adf  75 40 ff                 MOV 0x40,#0xff
CODE:1ae2  80 2a                    SJMP 0x1b0e
LAB_CODE_1ae4:
CODE:1ae4  e5 1c                    MOV A,0x1c   ; XREF: CODE:1ad7 
CODE:1ae6  b4 03 08                 CJNE A,#0x3,0x1af1
CODE:1ae9  75 3f ff                 MOV 0x3f,#0xff
CODE:1aec  78 55                    MOV R0,#0x55
CODE:1aee  e6                       MOV A,@R0
CODE:1aef  80 2d                    SJMP 0x1b1e
LAB_CODE_1af1:
CODE:1af1  e5 1c                    MOV A,0x1c   ; XREF: CODE:1ae6 
CODE:1af3  b4 04 0c                 CJNE A,#0x4,0x1b02
CODE:1af6  78 55                    MOV R0,#0x55
CODE:1af8  e6                       MOV A,@R0
CODE:1af9  f5 3f                    MOV 0x3f,A
CODE:1afb  75 40 ff                 MOV 0x40,#0xff
CODE:1afe  f5 41                    MOV 0x41,A
CODE:1b00  80 20                    SJMP 0x1b22
LAB_CODE_1b02:
CODE:1b02  e5 1c                    MOV A,0x1c   ; XREF: CODE:1af3 
CODE:1b04  b4 05 0c                 CJNE A,#0x5,0x1b13
CODE:1b07  78 55                    MOV R0,#0x55
CODE:1b09  e6                       MOV A,@R0
CODE:1b0a  f5 3f                    MOV 0x3f,A
LAB_CODE_1b0c:
CODE:1b0c  f5 40                    MOV 0x40,A   ; XREF: CODE:1ad3 
LAB_CODE_1b0e:
CODE:1b0e  75 41 ff                 MOV 0x41,#0xff   ; XREF: CODE:1ae2 
CODE:1b11  80 0f                    SJMP 0x1b22
LAB_CODE_1b13:
CODE:1b13  e5 1c                    MOV A,0x1c   ; XREF: CODE:1b04 
CODE:1b15  b4 06 0a                 CJNE A,#0x6,0x1b22
CODE:1b18  78 54                    MOV R0,#0x54
CODE:1b1a  08                       INC R0
CODE:1b1b  e6                       MOV A,@R0
CODE:1b1c  f5 3f                    MOV 0x3f,A
LAB_CODE_1b1e:
CODE:1b1e  f5 40                    MOV 0x40,A   ; XREF: CODE:1aef 
CODE:1b20  f5 41                    MOV 0x41,A
LAB_CODE_1b22:
CODE:1b22  e5 42                    MOV A,0x42   ; XREF: CODE:1ac6 CODE:1b00 CODE:1b11 CODE:1b15 
CODE:1b24  d3                       SETB CY
CODE:1b25  94 44                    SUBB A,#0x44
CODE:1b27  40 2d                    JC 0x1b56
CODE:1b29  74 a0                    MOV A,#0xa0
CODE:1b2b  95 42                    SUBB A,0x42
CODE:1b2d  ff                       MOV R7,A
CODE:1b2e  e4                       CLR A
CODE:1b2f  94 00                    SUBB A,#0x0
CODE:1b31  fe                       MOV R6,A
CODE:1b32  74 00                    MOV A,#0x0
CODE:1b34  2f                       ADD A,R7
CODE:1b35  f5 82                    MOV DPL,A
CODE:1b37  74 00                    MOV A,#0x0
CODE:1b39  3e                       ADDC A,R6
CODE:1b3a  f5 83                    MOV DPH,A
CODE:1b3c  e5 3f                    MOV A,0x3f
CODE:1b3e  f0                       MOVX @DPTR,A
CODE:1b3f  74 95                    MOV A,#0x95
CODE:1b41  2f                       ADD A,R7
CODE:1b42  f5 82                    MOV DPL,A
CODE:1b44  74 00                    MOV A,#0x0
CODE:1b46  3e                       ADDC A,R6
CODE:1b47  f5 83                    MOV DPH,A
CODE:1b49  e5 40                    MOV A,0x40
CODE:1b4b  f0                       MOVX @DPTR,A
CODE:1b4c  74 2a                    MOV A,#0x2a
CODE:1b4e  2f                       ADD A,R7
CODE:1b4f  f5 82                    MOV DPL,A
CODE:1b51  74 01                    MOV A,#0x1
CODE:1b53  3e                       ADDC A,R6
CODE:1b54  80 25                    SJMP 0x1b7b
LAB_CODE_1b56:
CODE:1b56  74 00                    MOV A,#0x0   ; XREF: CODE:1b27 
CODE:1b58  25 42                    ADD A,0x42
CODE:1b5a  f5 82                    MOV DPL,A
CODE:1b5c  e4                       CLR A
CODE:1b5d  34 00                    ADDC A,#0x0
CODE:1b5f  f5 83                    MOV DPH,A
CODE:1b61  e5 3f                    MOV A,0x3f
CODE:1b63  f0                       MOVX @DPTR,A
CODE:1b64  74 95                    MOV A,#0x95
CODE:1b66  25 42                    ADD A,0x42
CODE:1b68  f5 82                    MOV DPL,A
CODE:1b6a  e4                       CLR A
CODE:1b6b  34 00                    ADDC A,#0x0
CODE:1b6d  f5 83                    MOV DPH,A
CODE:1b6f  e5 40                    MOV A,0x40
CODE:1b71  f0                       MOVX @DPTR,A
CODE:1b72  74 2a                    MOV A,#0x2a
CODE:1b74  25 42                    ADD A,0x42
CODE:1b76  f5 82                    MOV DPL,A
CODE:1b78  e4                       CLR A
CODE:1b79  34 01                    ADDC A,#0x1
LAB_CODE_1b7b:
CODE:1b7b  f5 83                    MOV DPH,A   ; XREF: CODE:1b54 
CODE:1b7d  e5 41                    MOV A,0x41
CODE:1b7f  f0                       MOVX @DPTR,A
CODE:1b80  15 42                    DEC 0x42
CODE:1b82  78 5e                    MOV R0,#0x5e
CODE:1b84  16                       DEC @R0
CODE:1b85  02 1a a0                 LJMP 0x1aa0
LAB_CODE_1b88:
CODE:1b88  05 1d                    INC 0x1d   ; XREF: CODE:1aa9 
CODE:1b8a  02 38 aa                 LJMP 0x38aa
LAB_CODE_1b8d:
CODE:1b8d  e5 1d                    MOV A,0x1d   ; XREF: CODE:1a99 
CODE:1b8f  c3                       CLR CY
CODE:1b90  94 73                    SUBB A,#0x73
CODE:1b92  40 03                    JC 0x1b97
CODE:1b94  02 1c 89                 LJMP 0x1c89
LAB_CODE_1b97:
CODE:1b97  78 5e                    MOV R0,#0x5e   ; XREF: CODE:1b92 
CODE:1b99  76 0a                    MOV @R0,#0xa
LAB_CODE_1b9b:
CODE:1b9b  78 5e                    MOV R0,#0x5e   ; XREF: CODE:1c81 
CODE:1b9d  e6                       MOV A,@R0
CODE:1b9e  ff                       MOV R7,A
CODE:1b9f  d3                       SETB CY
CODE:1ba0  95 3e                    SUBB A,0x3e
CODE:1ba2  50 03                    JNC 0x1ba7
CODE:1ba4  02 1c 84                 LJMP 0x1c84
LAB_CODE_1ba7:
CODE:1ba7  74 5e                    MOV A,#0x5e   ; XREF: CODE:1ba2 
CODE:1ba9  2f                       ADD A,R7
CODE:1baa  f8                       MOV R0,A
CODE:1bab  e6                       MOV A,@R0
CODE:1bac  ff                       MOV R7,A
CODE:1bad  78 54                    MOV R0,#0x54
CODE:1baf  76 00                    MOV @R0,#0x0
CODE:1bb1  08                       INC R0
CODE:1bb2  a6 07                    MOV @R0,0x07
CODE:1bb4  e5 1c                    MOV A,0x1c
CODE:1bb6  70 0b                    JNZ 0x1bc3
CODE:1bb8  75 3f ff                 MOV 0x3f,#0xff
CODE:1bbb  75 40 ff                 MOV 0x40,#0xff
CODE:1bbe  e6                       MOV A,@R0
CODE:1bbf  f5 41                    MOV 0x41,A
CODE:1bc1  80 5a                    SJMP 0x1c1d
LAB_CODE_1bc3:
CODE:1bc3  e5 1c                    MOV A,0x1c   ; XREF: CODE:1bb6 
CODE:1bc5  b4 01 08                 CJNE A,#0x1,0x1bd0
CODE:1bc8  75 3f ff                 MOV 0x3f,#0xff
CODE:1bcb  78 55                    MOV R0,#0x55
CODE:1bcd  e6                       MOV A,@R0
CODE:1bce  80 37                    SJMP 0x1c07
LAB_CODE_1bd0:
CODE:1bd0  e5 1c                    MOV A,0x1c   ; XREF: CODE:1bc5 
CODE:1bd2  b4 02 0a                 CJNE A,#0x2,0x1bdf
CODE:1bd5  78 55                    MOV R0,#0x55
CODE:1bd7  e6                       MOV A,@R0
CODE:1bd8  f5 3f                    MOV 0x3f,A
CODE:1bda  75 40 ff                 MOV 0x40,#0xff
CODE:1bdd  80 2a                    SJMP 0x1c09
LAB_CODE_1bdf:
CODE:1bdf  e5 1c                    MOV A,0x1c   ; XREF: CODE:1bd2 
CODE:1be1  b4 03 08                 CJNE A,#0x3,0x1bec
CODE:1be4  75 3f ff                 MOV 0x3f,#0xff
CODE:1be7  78 55                    MOV R0,#0x55
CODE:1be9  e6                       MOV A,@R0
CODE:1bea  80 2d                    SJMP 0x1c19
LAB_CODE_1bec:
CODE:1bec  e5 1c                    MOV A,0x1c   ; XREF: CODE:1be1 
CODE:1bee  b4 04 0c                 CJNE A,#0x4,0x1bfd
CODE:1bf1  78 55                    MOV R0,#0x55
CODE:1bf3  e6                       MOV A,@R0
CODE:1bf4  f5 3f                    MOV 0x3f,A
CODE:1bf6  75 40 ff                 MOV 0x40,#0xff
CODE:1bf9  f5 41                    MOV 0x41,A
CODE:1bfb  80 20                    SJMP 0x1c1d
LAB_CODE_1bfd:
CODE:1bfd  e5 1c                    MOV A,0x1c   ; XREF: CODE:1bee 
CODE:1bff  b4 05 0c                 CJNE A,#0x5,0x1c0e
CODE:1c02  78 55                    MOV R0,#0x55
CODE:1c04  e6                       MOV A,@R0
CODE:1c05  f5 3f                    MOV 0x3f,A
LAB_CODE_1c07:
CODE:1c07  f5 40                    MOV 0x40,A   ; XREF: CODE:1bce 
LAB_CODE_1c09:
CODE:1c09  75 41 ff                 MOV 0x41,#0xff   ; XREF: CODE:1bdd 
CODE:1c0c  80 0f                    SJMP 0x1c1d
LAB_CODE_1c0e:
CODE:1c0e  e5 1c                    MOV A,0x1c   ; XREF: CODE:1bff 
CODE:1c10  b4 06 0a                 CJNE A,#0x6,0x1c1d
CODE:1c13  78 54                    MOV R0,#0x54
CODE:1c15  08                       INC R0
CODE:1c16  e6                       MOV A,@R0
CODE:1c17  f5 3f                    MOV 0x3f,A
LAB_CODE_1c19:
CODE:1c19  f5 40                    MOV 0x40,A   ; XREF: CODE:1bea 
CODE:1c1b  f5 41                    MOV 0x41,A
LAB_CODE_1c1d:
CODE:1c1d  e5 42                    MOV A,0x42   ; XREF: CODE:1bc1 CODE:1bfb CODE:1c0c CODE:1c10 
CODE:1c1f  d3                       SETB CY
CODE:1c20  94 5b                    SUBB A,#0x5b
CODE:1c22  40 27                    JC 0x1c4b
CODE:1c24  74 00                    MOV A,#0x0
CODE:1c26  25 42                    ADD A,0x42
CODE:1c28  f5 82                    MOV DPL,A
CODE:1c2a  e4                       CLR A
CODE:1c2b  34 00                    ADDC A,#0x0
CODE:1c2d  f5 83                    MOV DPH,A
CODE:1c2f  e5 3f                    MOV A,0x3f
CODE:1c31  f0                       MOVX @DPTR,A
CODE:1c32  74 95                    MOV A,#0x95
CODE:1c34  25 42                    ADD A,0x42
CODE:1c36  f5 82                    MOV DPL,A
CODE:1c38  e4                       CLR A
CODE:1c39  34 00                    ADDC A,#0x0
CODE:1c3b  f5 83                    MOV DPH,A
CODE:1c3d  e5 40                    MOV A,0x40
CODE:1c3f  f0                       MOVX @DPTR,A
CODE:1c40  74 2a                    MOV A,#0x2a
CODE:1c42  25 42                    ADD A,0x42
CODE:1c44  f5 82                    MOV DPL,A
CODE:1c46  e4                       CLR A
CODE:1c47  34 01                    ADDC A,#0x1
CODE:1c49  80 2c                    SJMP 0x1c77
LAB_CODE_1c4b:
CODE:1c4b  c3                       CLR CY   ; XREF: CODE:1c22 
CODE:1c4c  74 a0                    MOV A,#0xa0
CODE:1c4e  95 42                    SUBB A,0x42
CODE:1c50  ff                       MOV R7,A
CODE:1c51  e4                       CLR A
CODE:1c52  94 00                    SUBB A,#0x0
CODE:1c54  fe                       MOV R6,A
CODE:1c55  74 00                    MOV A,#0x0
CODE:1c57  2f                       ADD A,R7
CODE:1c58  f5 82                    MOV DPL,A
CODE:1c5a  74 00                    MOV A,#0x0
CODE:1c5c  3e                       ADDC A,R6
CODE:1c5d  f5 83                    MOV DPH,A
CODE:1c5f  e5 3f                    MOV A,0x3f
CODE:1c61  f0                       MOVX @DPTR,A
CODE:1c62  74 95                    MOV A,#0x95
CODE:1c64  2f                       ADD A,R7
CODE:1c65  f5 82                    MOV DPL,A
CODE:1c67  74 00                    MOV A,#0x0
CODE:1c69  3e                       ADDC A,R6
CODE:1c6a  f5 83                    MOV DPH,A
CODE:1c6c  e5 40                    MOV A,0x40
CODE:1c6e  f0                       MOVX @DPTR,A
CODE:1c6f  74 2a                    MOV A,#0x2a
CODE:1c71  2f                       ADD A,R7
CODE:1c72  f5 82                    MOV DPL,A
CODE:1c74  74 01                    MOV A,#0x1
CODE:1c76  3e                       ADDC A,R6
LAB_CODE_1c77:
CODE:1c77  f5 83                    MOV DPH,A   ; XREF: CODE:1c49 
CODE:1c79  e5 41                    MOV A,0x41
CODE:1c7b  f0                       MOVX @DPTR,A
CODE:1c7c  15 42                    DEC 0x42
CODE:1c7e  78 5e                    MOV R0,#0x5e
CODE:1c80  16                       DEC @R0
CODE:1c81  02 1b 9b                 LJMP 0x1b9b
LAB_CODE_1c84:
CODE:1c84  05 1d                    INC 0x1d   ; XREF: CODE:1ba4 
CODE:1c86  02 38 aa                 LJMP 0x38aa
LAB_CODE_1c89:
CODE:1c89  e5 1d                    MOV A,0x1d   ; XREF: CODE:1b94 
CODE:1c8b  c3                       CLR CY
CODE:1c8c  94 8a                    SUBB A,#0x8a
CODE:1c8e  40 03                    JC 0x1c93
CODE:1c90  02 1d 84                 LJMP 0x1d84
LAB_CODE_1c93:
CODE:1c93  78 5e                    MOV R0,#0x5e   ; XREF: CODE:1c8e 
CODE:1c95  76 0a                    MOV @R0,#0xa
LAB_CODE_1c97:
CODE:1c97  78 5e                    MOV R0,#0x5e   ; XREF: CODE:1d7c 
CODE:1c99  e6                       MOV A,@R0
CODE:1c9a  ff                       MOV R7,A
CODE:1c9b  d3                       SETB CY
CODE:1c9c  95 3e                    SUBB A,0x3e
CODE:1c9e  50 03                    JNC 0x1ca3
CODE:1ca0  02 1d 7f                 LJMP 0x1d7f
LAB_CODE_1ca3:
CODE:1ca3  74 5e                    MOV A,#0x5e   ; XREF: CODE:1c9e 
CODE:1ca5  2f                       ADD A,R7
CODE:1ca6  f8                       MOV R0,A
CODE:1ca7  e6                       MOV A,@R0
CODE:1ca8  ff                       MOV R7,A
CODE:1ca9  78 54                    MOV R0,#0x54
CODE:1cab  76 00                    MOV @R0,#0x0
CODE:1cad  08                       INC R0
CODE:1cae  a6 07                    MOV @R0,0x07
CODE:1cb0  e5 1c                    MOV A,0x1c
CODE:1cb2  70 0b                    JNZ 0x1cbf
CODE:1cb4  75 3f ff                 MOV 0x3f,#0xff
CODE:1cb7  75 40 ff                 MOV 0x40,#0xff
CODE:1cba  e6                       MOV A,@R0
CODE:1cbb  f5 41                    MOV 0x41,A
CODE:1cbd  80 5a                    SJMP 0x1d19
LAB_CODE_1cbf:
CODE:1cbf  e5 1c                    MOV A,0x1c   ; XREF: CODE:1cb2 
CODE:1cc1  b4 01 08                 CJNE A,#0x1,0x1ccc
CODE:1cc4  75 3f ff                 MOV 0x3f,#0xff
CODE:1cc7  78 55                    MOV R0,#0x55
CODE:1cc9  e6                       MOV A,@R0
CODE:1cca  80 37                    SJMP 0x1d03
LAB_CODE_1ccc:
CODE:1ccc  e5 1c                    MOV A,0x1c   ; XREF: CODE:1cc1 
CODE:1cce  b4 02 0a                 CJNE A,#0x2,0x1cdb
CODE:1cd1  78 55                    MOV R0,#0x55
CODE:1cd3  e6                       MOV A,@R0
CODE:1cd4  f5 3f                    MOV 0x3f,A
CODE:1cd6  75 40 ff                 MOV 0x40,#0xff
CODE:1cd9  80 2a                    SJMP 0x1d05
LAB_CODE_1cdb:
CODE:1cdb  e5 1c                    MOV A,0x1c   ; XREF: CODE:1cce 
CODE:1cdd  b4 03 08                 CJNE A,#0x3,0x1ce8
CODE:1ce0  75 3f ff                 MOV 0x3f,#0xff
CODE:1ce3  78 55                    MOV R0,#0x55
CODE:1ce5  e6                       MOV A,@R0
CODE:1ce6  80 2d                    SJMP 0x1d15
LAB_CODE_1ce8:
CODE:1ce8  e5 1c                    MOV A,0x1c   ; XREF: CODE:1cdd 
CODE:1cea  b4 04 0c                 CJNE A,#0x4,0x1cf9
CODE:1ced  78 55                    MOV R0,#0x55
CODE:1cef  e6                       MOV A,@R0
CODE:1cf0  f5 3f                    MOV 0x3f,A
CODE:1cf2  75 40 ff                 MOV 0x40,#0xff
CODE:1cf5  f5 41                    MOV 0x41,A
CODE:1cf7  80 20                    SJMP 0x1d19
LAB_CODE_1cf9:
CODE:1cf9  e5 1c                    MOV A,0x1c   ; XREF: CODE:1cea 
CODE:1cfb  b4 05 0c                 CJNE A,#0x5,0x1d0a
CODE:1cfe  78 55                    MOV R0,#0x55
CODE:1d00  e6                       MOV A,@R0
CODE:1d01  f5 3f                    MOV 0x3f,A
LAB_CODE_1d03:
CODE:1d03  f5 40                    MOV 0x40,A   ; XREF: CODE:1cca 
LAB_CODE_1d05:
CODE:1d05  75 41 ff                 MOV 0x41,#0xff   ; XREF: CODE:1cd9 
CODE:1d08  80 0f                    SJMP 0x1d19
LAB_CODE_1d0a:
CODE:1d0a  e5 1c                    MOV A,0x1c   ; XREF: CODE:1cfb 
CODE:1d0c  b4 06 0a                 CJNE A,#0x6,0x1d19
CODE:1d0f  78 54                    MOV R0,#0x54
CODE:1d11  08                       INC R0
CODE:1d12  e6                       MOV A,@R0
CODE:1d13  f5 3f                    MOV 0x3f,A
LAB_CODE_1d15:
CODE:1d15  f5 40                    MOV 0x40,A   ; XREF: CODE:1ce6 
CODE:1d17  f5 41                    MOV 0x41,A
LAB_CODE_1d19:
CODE:1d19  e5 42                    MOV A,0x42   ; XREF: CODE:1cbd CODE:1cf7 CODE:1d08 CODE:1d0c 
CODE:1d1b  d3                       SETB CY
CODE:1d1c  94 72                    SUBB A,#0x72
CODE:1d1e  40 2d                    JC 0x1d4d
CODE:1d20  74 fc                    MOV A,#0xfc
CODE:1d22  95 42                    SUBB A,0x42
CODE:1d24  ff                       MOV R7,A
CODE:1d25  e4                       CLR A
CODE:1d26  94 00                    SUBB A,#0x0
CODE:1d28  fe                       MOV R6,A
CODE:1d29  74 00                    MOV A,#0x0
CODE:1d2b  2f                       ADD A,R7
CODE:1d2c  f5 82                    MOV DPL,A
CODE:1d2e  74 00                    MOV A,#0x0
CODE:1d30  3e                       ADDC A,R6
CODE:1d31  f5 83                    MOV DPH,A
CODE:1d33  e5 3f                    MOV A,0x3f
CODE:1d35  f0                       MOVX @DPTR,A
CODE:1d36  74 95                    MOV A,#0x95
CODE:1d38  2f                       ADD A,R7
CODE:1d39  f5 82                    MOV DPL,A
CODE:1d3b  74 00                    MOV A,#0x0
CODE:1d3d  3e                       ADDC A,R6
CODE:1d3e  f5 83                    MOV DPH,A
CODE:1d40  e5 40                    MOV A,0x40
CODE:1d42  f0                       MOVX @DPTR,A
CODE:1d43  74 2a                    MOV A,#0x2a
CODE:1d45  2f                       ADD A,R7
CODE:1d46  f5 82                    MOV DPL,A
CODE:1d48  74 01                    MOV A,#0x1
CODE:1d4a  3e                       ADDC A,R6
CODE:1d4b  80 25                    SJMP 0x1d72
LAB_CODE_1d4d:
CODE:1d4d  74 00                    MOV A,#0x0   ; XREF: CODE:1d1e 
CODE:1d4f  25 42                    ADD A,0x42
CODE:1d51  f5 82                    MOV DPL,A
CODE:1d53  e4                       CLR A
CODE:1d54  34 00                    ADDC A,#0x0
CODE:1d56  f5 83                    MOV DPH,A
CODE:1d58  e5 3f                    MOV A,0x3f
CODE:1d5a  f0                       MOVX @DPTR,A
CODE:1d5b  74 95                    MOV A,#0x95
CODE:1d5d  25 42                    ADD A,0x42
CODE:1d5f  f5 82                    MOV DPL,A
CODE:1d61  e4                       CLR A
CODE:1d62  34 00                    ADDC A,#0x0
CODE:1d64  f5 83                    MOV DPH,A
CODE:1d66  e5 40                    MOV A,0x40
CODE:1d68  f0                       MOVX @DPTR,A
CODE:1d69  74 2a                    MOV A,#0x2a
CODE:1d6b  25 42                    ADD A,0x42
CODE:1d6d  f5 82                    MOV DPL,A
CODE:1d6f  e4                       CLR A
CODE:1d70  34 01                    ADDC A,#0x1
LAB_CODE_1d72:
CODE:1d72  f5 83                    MOV DPH,A   ; XREF: CODE:1d4b 
CODE:1d74  e5 41                    MOV A,0x41
CODE:1d76  f0                       MOVX @DPTR,A
CODE:1d77  15 42                    DEC 0x42
CODE:1d79  78 5e                    MOV R0,#0x5e
CODE:1d7b  16                       DEC @R0
CODE:1d7c  02 1c 97                 LJMP 0x1c97
LAB_CODE_1d7f:
CODE:1d7f  05 1d                    INC 0x1d   ; XREF: CODE:1ca0 
CODE:1d81  02 38 aa                 LJMP 0x38aa
LAB_CODE_1d84:
CODE:1d84  e5 1d                    MOV A,0x1d   ; XREF: CODE:1c90 
CODE:1d86  c3                       CLR CY
CODE:1d87  94 95                    SUBB A,#0x95
CODE:1d89  40 03                    JC 0x1d8e
CODE:1d8b  02 38 aa                 LJMP 0x38aa
LAB_CODE_1d8e:
CODE:1d8e  78 5e                    MOV R0,#0x5e   ; XREF: CODE:1d89 
CODE:1d90  76 0a                    MOV @R0,#0xa
LAB_CODE_1d92:
CODE:1d92  78 5e                    MOV R0,#0x5e   ; XREF: CODE:1e78 
CODE:1d94  e6                       MOV A,@R0
CODE:1d95  ff                       MOV R7,A
CODE:1d96  d3                       SETB CY
CODE:1d97  95 3e                    SUBB A,0x3e
CODE:1d99  50 03                    JNC 0x1d9e
CODE:1d9b  02 1e 7b                 LJMP 0x1e7b
LAB_CODE_1d9e:
CODE:1d9e  74 5e                    MOV A,#0x5e   ; XREF: CODE:1d99 
CODE:1da0  2f                       ADD A,R7
CODE:1da1  f8                       MOV R0,A
CODE:1da2  e6                       MOV A,@R0
CODE:1da3  ff                       MOV R7,A
CODE:1da4  78 54                    MOV R0,#0x54
CODE:1da6  76 00                    MOV @R0,#0x0
CODE:1da8  08                       INC R0
CODE:1da9  a6 07                    MOV @R0,0x07
CODE:1dab  e5 1c                    MOV A,0x1c
CODE:1dad  70 0b                    JNZ 0x1dba
CODE:1daf  75 3f ff                 MOV 0x3f,#0xff
CODE:1db2  75 40 ff                 MOV 0x40,#0xff
CODE:1db5  e6                       MOV A,@R0
CODE:1db6  f5 41                    MOV 0x41,A
CODE:1db8  80 5a                    SJMP 0x1e14
LAB_CODE_1dba:
CODE:1dba  e5 1c                    MOV A,0x1c   ; XREF: CODE:1dad 
CODE:1dbc  b4 01 08                 CJNE A,#0x1,0x1dc7
CODE:1dbf  75 3f ff                 MOV 0x3f,#0xff
CODE:1dc2  78 55                    MOV R0,#0x55
CODE:1dc4  e6                       MOV A,@R0
CODE:1dc5  80 37                    SJMP 0x1dfe
LAB_CODE_1dc7:
CODE:1dc7  e5 1c                    MOV A,0x1c   ; XREF: CODE:1dbc 
CODE:1dc9  b4 02 0a                 CJNE A,#0x2,0x1dd6
CODE:1dcc  78 55                    MOV R0,#0x55
CODE:1dce  e6                       MOV A,@R0
CODE:1dcf  f5 3f                    MOV 0x3f,A
CODE:1dd1  75 40 ff                 MOV 0x40,#0xff
CODE:1dd4  80 2a                    SJMP 0x1e00
LAB_CODE_1dd6:
CODE:1dd6  e5 1c                    MOV A,0x1c   ; XREF: CODE:1dc9 
CODE:1dd8  b4 03 08                 CJNE A,#0x3,0x1de3
CODE:1ddb  75 3f ff                 MOV 0x3f,#0xff
CODE:1dde  78 55                    MOV R0,#0x55
CODE:1de0  e6                       MOV A,@R0
CODE:1de1  80 2d                    SJMP 0x1e10
LAB_CODE_1de3:
CODE:1de3  e5 1c                    MOV A,0x1c   ; XREF: CODE:1dd8 
CODE:1de5  b4 04 0c                 CJNE A,#0x4,0x1df4
CODE:1de8  78 55                    MOV R0,#0x55
CODE:1dea  e6                       MOV A,@R0
CODE:1deb  f5 3f                    MOV 0x3f,A
CODE:1ded  75 40 ff                 MOV 0x40,#0xff
CODE:1df0  f5 41                    MOV 0x41,A
CODE:1df2  80 20                    SJMP 0x1e14
LAB_CODE_1df4:
CODE:1df4  e5 1c                    MOV A,0x1c   ; XREF: CODE:1de5 
CODE:1df6  b4 05 0c                 CJNE A,#0x5,0x1e05
CODE:1df9  78 55                    MOV R0,#0x55
CODE:1dfb  e6                       MOV A,@R0
CODE:1dfc  f5 3f                    MOV 0x3f,A
LAB_CODE_1dfe:
CODE:1dfe  f5 40                    MOV 0x40,A   ; XREF: CODE:1dc5 
LAB_CODE_1e00:
CODE:1e00  75 41 ff                 MOV 0x41,#0xff   ; XREF: CODE:1dd4 
CODE:1e03  80 0f                    SJMP 0x1e14
LAB_CODE_1e05:
CODE:1e05  e5 1c                    MOV A,0x1c   ; XREF: CODE:1df6 
CODE:1e07  b4 06 0a                 CJNE A,#0x6,0x1e14
CODE:1e0a  78 54                    MOV R0,#0x54
CODE:1e0c  08                       INC R0
CODE:1e0d  e6                       MOV A,@R0
CODE:1e0e  f5 3f                    MOV 0x3f,A
LAB_CODE_1e10:
CODE:1e10  f5 40                    MOV 0x40,A   ; XREF: CODE:1de1 
CODE:1e12  f5 41                    MOV 0x41,A
LAB_CODE_1e14:
CODE:1e14  e5 42                    MOV A,0x42   ; XREF: CODE:1db8 CODE:1df2 CODE:1e03 CODE:1e07 
CODE:1e16  d3                       SETB CY
CODE:1e17  94 8a                    SUBB A,#0x8a
CODE:1e19  40 27                    JC 0x1e42
CODE:1e1b  74 00                    MOV A,#0x0
CODE:1e1d  25 42                    ADD A,0x42
CODE:1e1f  f5 82                    MOV DPL,A
CODE:1e21  e4                       CLR A
CODE:1e22  34 00                    ADDC A,#0x0
CODE:1e24  f5 83                    MOV DPH,A
CODE:1e26  e5 3f                    MOV A,0x3f
CODE:1e28  f0                       MOVX @DPTR,A
CODE:1e29  74 95                    MOV A,#0x95
CODE:1e2b  25 42                    ADD A,0x42
CODE:1e2d  f5 82                    MOV DPL,A
CODE:1e2f  e4                       CLR A
CODE:1e30  34 00                    ADDC A,#0x0
CODE:1e32  f5 83                    MOV DPH,A
CODE:1e34  e5 40                    MOV A,0x40
CODE:1e36  f0                       MOVX @DPTR,A
CODE:1e37  74 2a                    MOV A,#0x2a
CODE:1e39  25 42                    ADD A,0x42
CODE:1e3b  f5 82                    MOV DPL,A
CODE:1e3d  e4                       CLR A
CODE:1e3e  34 01                    ADDC A,#0x1
CODE:1e40  80 2c                    SJMP 0x1e6e
LAB_CODE_1e42:
CODE:1e42  c3                       CLR CY   ; XREF: CODE:1e19 
CODE:1e43  74 fd                    MOV A,#0xfd
CODE:1e45  95 42                    SUBB A,0x42
CODE:1e47  ff                       MOV R7,A
CODE:1e48  e4                       CLR A
CODE:1e49  94 00                    SUBB A,#0x0
CODE:1e4b  fe                       MOV R6,A
CODE:1e4c  74 00                    MOV A,#0x0
CODE:1e4e  2f                       ADD A,R7
CODE:1e4f  f5 82                    MOV DPL,A
CODE:1e51  74 00                    MOV A,#0x0
CODE:1e53  3e                       ADDC A,R6
CODE:1e54  f5 83                    MOV DPH,A
CODE:1e56  e5 3f                    MOV A,0x3f
CODE:1e58  f0                       MOVX @DPTR,A
CODE:1e59  74 95                    MOV A,#0x95
CODE:1e5b  2f                       ADD A,R7
CODE:1e5c  f5 82                    MOV DPL,A
CODE:1e5e  74 00                    MOV A,#0x0
CODE:1e60  3e                       ADDC A,R6
CODE:1e61  f5 83                    MOV DPH,A
CODE:1e63  e5 40                    MOV A,0x40
CODE:1e65  f0                       MOVX @DPTR,A
CODE:1e66  74 2a                    MOV A,#0x2a
CODE:1e68  2f                       ADD A,R7
CODE:1e69  f5 82                    MOV DPL,A
CODE:1e6b  74 01                    MOV A,#0x1
CODE:1e6d  3e                       ADDC A,R6
LAB_CODE_1e6e:
CODE:1e6e  f5 83                    MOV DPH,A   ; XREF: CODE:1e40 
CODE:1e70  e5 41                    MOV A,0x41
CODE:1e72  f0                       MOVX @DPTR,A
CODE:1e73  15 42                    DEC 0x42
CODE:1e75  78 5e                    MOV R0,#0x5e
CODE:1e77  16                       DEC @R0
CODE:1e78  02 1d 92                 LJMP 0x1d92
LAB_CODE_1e7b:
CODE:1e7b  05 1d                    INC 0x1d   ; XREF: CODE:1d9b 
CODE:1e7d  e5 1d                    MOV A,0x1d
CODE:1e7f  d3                       SETB CY
CODE:1e80  94 94                    SUBB A,#0x94
CODE:1e82  50 03                    JNC 0x1e87
CODE:1e84  02 38 aa                 LJMP 0x38aa
LAB_CODE_1e87:
CODE:1e87  e4                       CLR A   ; XREF: CODE:1e82 
CODE:1e88  f5 1d                    MOV 0x1d,A
CODE:1e8a  05 1c                    INC 0x1c
CODE:1e8c  e5 1c                    MOV A,0x1c
CODE:1e8e  d3                       SETB CY
CODE:1e8f  94 06                    SUBB A,#0x6
CODE:1e91  50 03                    JNC 0x1e96
CODE:1e93  02 38 aa                 LJMP 0x38aa
LAB_CODE_1e96:
CODE:1e96  02 38 a7                 LJMP 0x38a7   ; XREF: CODE:1e91 
LAB_CODE_1e99:
CODE:1e99  78 76                    MOV R0,#0x76   ; XREF: CODE:177b 
CODE:1e9b  e6                       MOV A,@R0
CODE:1e9c  64 02                    XRL A,#0x2
CODE:1e9e  60 03                    JZ 0x1ea3
CODE:1ea0  02 1f fd                 LJMP 0x1ffd
LAB_CODE_1ea3:
CODE:1ea3  30 23 03                 JNB 0x23,0x1ea9   ; XREF: CODE:1e9e 
CODE:1ea6  02 1f 50                 LJMP 0x1f50
LAB_CODE_1ea9:
CODE:1ea9  78 77                    MOV R0,#0x77   ; XREF: CODE:1ea3 
CODE:1eab  e6                       MOV A,@R0
CODE:1eac  ff                       MOV R7,A
CODE:1ead  70 42                    JNZ 0x1ef1
CODE:1eaf  78 54                    MOV R0,#0x54
CODE:1eb1  e6                       MOV A,@R0
CODE:1eb2  fc                       MOV R4,A
CODE:1eb3  08                       INC R0
CODE:1eb4  e6                       MOV A,@R0
CODE:1eb5  fd                       MOV R5,A
CODE:1eb6  f4                       CPL A
CODE:1eb7  4c                       ORL A,R4
CODE:1eb8  70 17                    JNZ 0x1ed1
CODE:1eba  78 58                    MOV R0,#0x58
CODE:1ebc  06                       INC @R0
CODE:1ebd  e6                       MOV A,@R0
CODE:1ebe  d3                       SETB CY
CODE:1ebf  94 10                    SUBB A,#0x10
CODE:1ec1  40 04                    JC 0x1ec7
CODE:1ec3  e4                       CLR A
CODE:1ec4  f6                       MOV @R0,A
CODE:1ec5  80 47                    SJMP 0x1f0e
LAB_CODE_1ec7:
CODE:1ec7  78 55                    MOV R0,#0x55   ; XREF: CODE:1ec1 
CODE:1ec9  e6                       MOV A,@R0
CODE:1eca  16                       DEC @R0
CODE:1ecb  18                       DEC R0
CODE:1ecc  70 40                    JNZ 0x1f0e
CODE:1ece  16                       DEC @R0
CODE:1ecf  80 3d                    SJMP 0x1f0e
LAB_CODE_1ed1:
CODE:1ed1  d3                       SETB CY   ; XREF: CODE:1eb8 
CODE:1ed2  ed                       MOV A,R5
CODE:1ed3  94 0a                    SUBB A,#0xa
CODE:1ed5  ec                       MOV A,R4
CODE:1ed6  94 00                    SUBB A,#0x0
CODE:1ed8  40 34                    JC 0x1f0e
CODE:1eda  78 58                    MOV R0,#0x58
CODE:1edc  06                       INC @R0
CODE:1edd  e6                       MOV A,@R0
CODE:1ede  d3                       SETB CY
CODE:1edf  94 02                    SUBB A,#0x2
CODE:1ee1  40 04                    JC 0x1ee7
CODE:1ee3  e4                       CLR A
CODE:1ee4  f6                       MOV @R0,A
CODE:1ee5  80 27                    SJMP 0x1f0e
LAB_CODE_1ee7:
CODE:1ee7  78 55                    MOV R0,#0x55   ; XREF: CODE:1ee1 
CODE:1ee9  e6                       MOV A,@R0
CODE:1eea  16                       DEC @R0
CODE:1eeb  18                       DEC R0
CODE:1eec  70 01                    JNZ 0x1eef
CODE:1eee  16                       DEC @R0
LAB_CODE_1eef:
CODE:1eef  80 1d                    SJMP 0x1f0e   ; XREF: CODE:1eec 
LAB_CODE_1ef1:
CODE:1ef1  78 55                    MOV R0,#0x55   ; XREF: CODE:1ead 
CODE:1ef3  e6                       MOV A,@R0
CODE:1ef4  f4                       CPL A
CODE:1ef5  18                       DEC R0
CODE:1ef6  46                       ORL A,@R0
CODE:1ef7  70 15                    JNZ 0x1f0e
CODE:1ef9  78 58                    MOV R0,#0x58
CODE:1efb  06                       INC @R0
CODE:1efc  e6                       MOV A,@R0
CODE:1efd  d3                       SETB CY
CODE:1efe  94 10                    SUBB A,#0x10
CODE:1f00  40 04                    JC 0x1f06
CODE:1f02  e4                       CLR A
CODE:1f03  f6                       MOV @R0,A
CODE:1f04  80 08                    SJMP 0x1f0e
LAB_CODE_1f06:
CODE:1f06  78 55                    MOV R0,#0x55   ; XREF: CODE:1f00 
CODE:1f08  e6                       MOV A,@R0
CODE:1f09  16                       DEC @R0
CODE:1f0a  18                       DEC R0
CODE:1f0b  70 01                    JNZ 0x1f0e
CODE:1f0d  16                       DEC @R0
LAB_CODE_1f0e:
CODE:1f0e  ef                       MOV A,R7   ; XREF: CODE:1ec5 CODE:1ecc CODE:1ecf CODE:1ed8 CODE:1ee5 CODE:1eef CODE:1ef7 CODE:1f04 CODE:1f0b 
CODE:1f0f  d3                       SETB CY
CODE:1f10  94 01                    SUBB A,#0x1
CODE:1f12  40 0d                    JC 0x1f21
CODE:1f14  78 77                    MOV R0,#0x77
CODE:1f16  e6                       MOV A,@R0
CODE:1f17  78 55                    MOV R0,#0x55
CODE:1f19  26                       ADD A,@R0
CODE:1f1a  f6                       MOV @R0,A
CODE:1f1b  18                       DEC R0
CODE:1f1c  e4                       CLR A
CODE:1f1d  36                       ADDC A,@R0
CODE:1f1e  f6                       MOV @R0,A
CODE:1f1f  80 08                    SJMP 0x1f29
LAB_CODE_1f21:
CODE:1f21  78 55                    MOV R0,#0x55   ; XREF: CODE:1f12 
CODE:1f23  06                       INC @R0
CODE:1f24  e6                       MOV A,@R0
CODE:1f25  18                       DEC R0
CODE:1f26  70 01                    JNZ 0x1f29
CODE:1f28  06                       INC @R0
LAB_CODE_1f29:
CODE:1f29  d3                       SETB CY   ; XREF: CODE:1f1f CODE:1f26 
CODE:1f2a  78 55                    MOV R0,#0x55
CODE:1f2c  e6                       MOV A,@R0
CODE:1f2d  94 ff                    SUBB A,#0xff
CODE:1f2f  18                       DEC R0
CODE:1f30  e6                       MOV A,@R0
CODE:1f31  94 00                    SUBB A,#0x0
CODE:1f33  50 03                    JNC 0x1f38
CODE:1f35  02 38 aa                 LJMP 0x38aa
LAB_CODE_1f38:
CODE:1f38  76 00                    MOV @R0,#0x0   ; XREF: CODE:1f33 
CODE:1f3a  08                       INC R0
CODE:1f3b  76 ff                    MOV @R0,#0xff
CODE:1f3d  d2 23                    SETB 0x23
CODE:1f3f  78 5a                    MOV R0,#0x5a
CODE:1f41  06                       INC @R0
CODE:1f42  e6                       MOV A,@R0
CODE:1f43  d3                       SETB CY
CODE:1f44  94 06                    SUBB A,#0x6
CODE:1f46  50 03                    JNC 0x1f4b
CODE:1f48  02 38 aa                 LJMP 0x38aa
LAB_CODE_1f4b:
CODE:1f4b  e4                       CLR A   ; XREF: CODE:1f46 
CODE:1f4c  f6                       MOV @R0,A
CODE:1f4d  02 38 aa                 LJMP 0x38aa
LAB_CODE_1f50:
CODE:1f50  78 77                    MOV R0,#0x77   ; XREF: CODE:1ea6 
CODE:1f52  e6                       MOV A,@R0
CODE:1f53  ff                       MOV R7,A
CODE:1f54  70 42                    JNZ 0x1f98
CODE:1f56  78 54                    MOV R0,#0x54
CODE:1f58  e6                       MOV A,@R0
CODE:1f59  fc                       MOV R4,A
CODE:1f5a  08                       INC R0
CODE:1f5b  e6                       MOV A,@R0
CODE:1f5c  fd                       MOV R5,A
CODE:1f5d  f4                       CPL A
CODE:1f5e  4c                       ORL A,R4
CODE:1f5f  70 17                    JNZ 0x1f78
CODE:1f61  78 58                    MOV R0,#0x58
CODE:1f63  06                       INC @R0
CODE:1f64  e6                       MOV A,@R0
CODE:1f65  d3                       SETB CY
CODE:1f66  94 10                    SUBB A,#0x10
CODE:1f68  40 04                    JC 0x1f6e
CODE:1f6a  e4                       CLR A
CODE:1f6b  f6                       MOV @R0,A
CODE:1f6c  80 47                    SJMP 0x1fb5
LAB_CODE_1f6e:
CODE:1f6e  78 55                    MOV R0,#0x55   ; XREF: CODE:1f68 
CODE:1f70  e6                       MOV A,@R0
CODE:1f71  16                       DEC @R0
CODE:1f72  18                       DEC R0
CODE:1f73  70 40                    JNZ 0x1fb5
CODE:1f75  16                       DEC @R0
CODE:1f76  80 3d                    SJMP 0x1fb5
LAB_CODE_1f78:
CODE:1f78  d3                       SETB CY   ; XREF: CODE:1f5f 
CODE:1f79  ed                       MOV A,R5
CODE:1f7a  94 0a                    SUBB A,#0xa
CODE:1f7c  ec                       MOV A,R4
CODE:1f7d  94 00                    SUBB A,#0x0
CODE:1f7f  40 34                    JC 0x1fb5
CODE:1f81  78 58                    MOV R0,#0x58
CODE:1f83  06                       INC @R0
CODE:1f84  e6                       MOV A,@R0
CODE:1f85  d3                       SETB CY
CODE:1f86  94 02                    SUBB A,#0x2
CODE:1f88  40 04                    JC 0x1f8e
CODE:1f8a  e4                       CLR A
CODE:1f8b  f6                       MOV @R0,A
CODE:1f8c  80 27                    SJMP 0x1fb5
LAB_CODE_1f8e:
CODE:1f8e  78 55                    MOV R0,#0x55   ; XREF: CODE:1f88 
CODE:1f90  e6                       MOV A,@R0
CODE:1f91  16                       DEC @R0
CODE:1f92  18                       DEC R0
CODE:1f93  70 01                    JNZ 0x1f96
CODE:1f95  16                       DEC @R0
LAB_CODE_1f96:
CODE:1f96  80 1d                    SJMP 0x1fb5   ; XREF: CODE:1f93 
LAB_CODE_1f98:
CODE:1f98  78 55                    MOV R0,#0x55   ; XREF: CODE:1f54 
CODE:1f9a  e6                       MOV A,@R0
CODE:1f9b  f4                       CPL A
CODE:1f9c  18                       DEC R0
CODE:1f9d  46                       ORL A,@R0
CODE:1f9e  70 15                    JNZ 0x1fb5
CODE:1fa0  78 58                    MOV R0,#0x58
CODE:1fa2  06                       INC @R0
CODE:1fa3  e6                       MOV A,@R0
CODE:1fa4  d3                       SETB CY
CODE:1fa5  94 10                    SUBB A,#0x10
CODE:1fa7  40 04                    JC 0x1fad
CODE:1fa9  e4                       CLR A
CODE:1faa  f6                       MOV @R0,A
CODE:1fab  80 08                    SJMP 0x1fb5
LAB_CODE_1fad:
CODE:1fad  78 55                    MOV R0,#0x55   ; XREF: CODE:1fa7 
CODE:1faf  e6                       MOV A,@R0
CODE:1fb0  16                       DEC @R0
CODE:1fb1  18                       DEC R0
CODE:1fb2  70 01                    JNZ 0x1fb5
CODE:1fb4  16                       DEC @R0
LAB_CODE_1fb5:
CODE:1fb5  ef                       MOV A,R7   ; XREF: CODE:1f6c CODE:1f73 CODE:1f76 CODE:1f7f CODE:1f8c CODE:1f96 CODE:1f9e CODE:1fab CODE:1fb2 
CODE:1fb6  d3                       SETB CY
CODE:1fb7  94 01                    SUBB A,#0x1
CODE:1fb9  40 27                    JC 0x1fe2
CODE:1fbb  78 77                    MOV R0,#0x77
CODE:1fbd  e6                       MOV A,@R0
CODE:1fbe  ff                       MOV R7,A
CODE:1fbf  78 54                    MOV R0,#0x54
CODE:1fc1  e6                       MOV A,@R0
CODE:1fc2  fc                       MOV R4,A
CODE:1fc3  08                       INC R0
CODE:1fc4  e6                       MOV A,@R0
CODE:1fc5  fd                       MOV R5,A
CODE:1fc6  9f                       SUBB A,R7
CODE:1fc7  ec                       MOV A,R4
CODE:1fc8  94 00                    SUBB A,#0x0
CODE:1fca  40 0b                    JC 0x1fd7
CODE:1fcc  ed                       MOV A,R5
CODE:1fcd  9f                       SUBB A,R7
CODE:1fce  f6                       MOV @R0,A
CODE:1fcf  ec                       MOV A,R4
CODE:1fd0  94 00                    SUBB A,#0x0
CODE:1fd2  18                       DEC R0
CODE:1fd3  f6                       MOV @R0,A
CODE:1fd4  02 38 aa                 LJMP 0x38aa
LAB_CODE_1fd7:
CODE:1fd7  e4                       CLR A   ; XREF: CODE:1fca 
CODE:1fd8  78 54                    MOV R0,#0x54
CODE:1fda  f6                       MOV @R0,A
CODE:1fdb  08                       INC R0
CODE:1fdc  f6                       MOV @R0,A
CODE:1fdd  c2 23                    CLR 0x23
CODE:1fdf  02 38 aa                 LJMP 0x38aa
LAB_CODE_1fe2:
CODE:1fe2  d3                       SETB CY   ; XREF: CODE:1fb9 
CODE:1fe3  78 55                    MOV R0,#0x55
CODE:1fe5  e6                       MOV A,@R0
CODE:1fe6  94 00                    SUBB A,#0x0
CODE:1fe8  18                       DEC R0
CODE:1fe9  e6                       MOV A,@R0
CODE:1fea  94 00                    SUBB A,#0x0
CODE:1fec  40 0a                    JC 0x1ff8
CODE:1fee  08                       INC R0
CODE:1fef  e6                       MOV A,@R0
CODE:1ff0  16                       DEC @R0
CODE:1ff1  18                       DEC R0
CODE:1ff2  70 01                    JNZ 0x1ff5
CODE:1ff4  16                       DEC @R0
LAB_CODE_1ff5:
CODE:1ff5  02 38 aa                 LJMP 0x38aa   ; XREF: CODE:1ff2 
LAB_CODE_1ff8:
CODE:1ff8  c2 23                    CLR 0x23   ; XREF: CODE:1fec 
CODE:1ffa  02 38 aa                 LJMP 0x38aa
LAB_CODE_1ffd:
CODE:1ffd  78 76                    MOV R0,#0x76   ; XREF: CODE:1ea0 
CODE:1fff  e6                       MOV A,@R0
CODE:2000  ff                       MOV R7,A
CODE:2001  64 03                    XRL A,#0x3
CODE:2003  60 03                    JZ 0x2008
CODE:2005  02 27 2f                 LJMP 0x272f
LAB_CODE_2008:
CODE:2008  78 57                    MOV R0,#0x57   ; XREF: CODE:2003 
CODE:200a  06                       INC @R0
CODE:200b  c3                       CLR CY
CODE:200c  74 05                    MOV A,#0x5
CODE:200e  78 77                    MOV R0,#0x77
CODE:2010  96                       SUBB A,@R0
CODE:2011  fe                       MOV R6,A
CODE:2012  78 57                    MOV R0,#0x57
CODE:2014  e6                       MOV A,@R0
CODE:2015  d3                       SETB CY
CODE:2016  9e                       SUBB A,R6
CODE:2017  50 03                    JNC 0x201c
CODE:2019  02 38 aa                 LJMP 0x38aa
LAB_CODE_201c:
CODE:201c  e4                       CLR A   ; XREF: CODE:2017 
CODE:201d  f6                       MOV @R0,A
CODE:201e  e5 1d                    MOV A,0x1d
CODE:2020  d3                       SETB CY
CODE:2021  94 09                    SUBB A,#0x9
CODE:2023  40 05                    JC 0x202a
CODE:2025  e4                       CLR A
CODE:2026  f5 3e                    MOV 0x3e,A
CODE:2028  80 07                    SJMP 0x2031
LAB_CODE_202a:
CODE:202a  c3                       CLR CY   ; XREF: CODE:2023 
CODE:202b  74 09                    MOV A,#0x9
CODE:202d  95 1d                    SUBB A,0x1d
CODE:202f  f5 3e                    MOV 0x3e,A
LAB_CODE_2031:
CODE:2031  85 1d 42                 MOV 0x42,0x1d   ; XREF: CODE:2028 
CODE:2034  e5 1d                    MOV A,0x1d
CODE:2036  c3                       CLR CY
CODE:2037  94 17                    SUBB A,#0x17
CODE:2039  40 03                    JC 0x203e
CODE:203b  02 21 25                 LJMP 0x2125
LAB_CODE_203e:
CODE:203e  78 5e                    MOV R0,#0x5e   ; XREF: CODE:2039 
CODE:2040  76 0a                    MOV @R0,#0xa
LAB_CODE_2042:
CODE:2042  78 5e                    MOV R0,#0x5e   ; XREF: CODE:211d 
CODE:2044  e6                       MOV A,@R0
CODE:2045  fe                       MOV R6,A
CODE:2046  d3                       SETB CY
CODE:2047  95 3e                    SUBB A,0x3e
CODE:2049  50 03                    JNC 0x204e
CODE:204b  02 21 20                 LJMP 0x2120
LAB_CODE_204e:
CODE:204e  74 5e                    MOV A,#0x5e   ; XREF: CODE:2049 
CODE:2050  2e                       ADD A,R6
CODE:2051  f8                       MOV R0,A
CODE:2052  e6                       MOV A,@R0
CODE:2053  fd                       MOV R5,A
CODE:2054  78 54                    MOV R0,#0x54
CODE:2056  76 00                    MOV @R0,#0x0
CODE:2058  08                       INC R0
CODE:2059  a6 05                    MOV @R0,0x05
CODE:205b  e5 1c                    MOV A,0x1c
CODE:205d  70 0b                    JNZ 0x206a
CODE:205f  75 3f ff                 MOV 0x3f,#0xff
CODE:2062  75 40 ff                 MOV 0x40,#0xff
CODE:2065  e6                       MOV A,@R0
CODE:2066  f5 41                    MOV 0x41,A
CODE:2068  80 5a                    SJMP 0x20c4
LAB_CODE_206a:
CODE:206a  e5 1c                    MOV A,0x1c   ; XREF: CODE:205d 
CODE:206c  b4 01 08                 CJNE A,#0x1,0x2077
CODE:206f  75 3f ff                 MOV 0x3f,#0xff
CODE:2072  78 55                    MOV R0,#0x55
CODE:2074  e6                       MOV A,@R0
CODE:2075  80 37                    SJMP 0x20ae
LAB_CODE_2077:
CODE:2077  e5 1c                    MOV A,0x1c   ; XREF: CODE:206c 
CODE:2079  b4 02 0a                 CJNE A,#0x2,0x2086
CODE:207c  78 55                    MOV R0,#0x55
CODE:207e  e6                       MOV A,@R0
CODE:207f  f5 3f                    MOV 0x3f,A
CODE:2081  75 40 ff                 MOV 0x40,#0xff
CODE:2084  80 2a                    SJMP 0x20b0
LAB_CODE_2086:
CODE:2086  e5 1c                    MOV A,0x1c   ; XREF: CODE:2079 
CODE:2088  b4 03 08                 CJNE A,#0x3,0x2093
CODE:208b  75 3f ff                 MOV 0x3f,#0xff
CODE:208e  78 55                    MOV R0,#0x55
CODE:2090  e6                       MOV A,@R0
CODE:2091  80 2d                    SJMP 0x20c0
LAB_CODE_2093:
CODE:2093  e5 1c                    MOV A,0x1c   ; XREF: CODE:2088 
CODE:2095  b4 04 0c                 CJNE A,#0x4,0x20a4
CODE:2098  78 55                    MOV R0,#0x55
CODE:209a  e6                       MOV A,@R0
CODE:209b  f5 3f                    MOV 0x3f,A
CODE:209d  75 40 ff                 MOV 0x40,#0xff
CODE:20a0  f5 41                    MOV 0x41,A
CODE:20a2  80 20                    SJMP 0x20c4
LAB_CODE_20a4:
CODE:20a4  e5 1c                    MOV A,0x1c   ; XREF: CODE:2095 
CODE:20a6  b4 05 0c                 CJNE A,#0x5,0x20b5
CODE:20a9  78 55                    MOV R0,#0x55
CODE:20ab  e6                       MOV A,@R0
CODE:20ac  f5 3f                    MOV 0x3f,A
LAB_CODE_20ae:
CODE:20ae  f5 40                    MOV 0x40,A   ; XREF: CODE:2075 
LAB_CODE_20b0:
CODE:20b0  75 41 ff                 MOV 0x41,#0xff   ; XREF: CODE:2084 
CODE:20b3  80 0f                    SJMP 0x20c4
LAB_CODE_20b5:
CODE:20b5  e5 1c                    MOV A,0x1c   ; XREF: CODE:20a6 
CODE:20b7  b4 06 0a                 CJNE A,#0x6,0x20c4
CODE:20ba  78 54                    MOV R0,#0x54
CODE:20bc  08                       INC R0
CODE:20bd  e6                       MOV A,@R0
CODE:20be  f5 3f                    MOV 0x3f,A
LAB_CODE_20c0:
CODE:20c0  f5 40                    MOV 0x40,A   ; XREF: CODE:2091 
CODE:20c2  f5 41                    MOV 0x41,A
LAB_CODE_20c4:
CODE:20c4  74 00                    MOV A,#0x0   ; XREF: CODE:2068 CODE:20a2 CODE:20b3 CODE:20b7 
CODE:20c6  25 42                    ADD A,0x42
CODE:20c8  f5 82                    MOV DPL,A
CODE:20ca  e4                       CLR A
CODE:20cb  34 00                    ADDC A,#0x0
CODE:20cd  f5 83                    MOV DPH,A
CODE:20cf  e5 3f                    MOV A,0x3f
CODE:20d1  f0                       MOVX @DPTR,A
CODE:20d2  74 95                    MOV A,#0x95
CODE:20d4  25 42                    ADD A,0x42
CODE:20d6  f5 82                    MOV DPL,A
CODE:20d8  e4                       CLR A
CODE:20d9  34 00                    ADDC A,#0x0
CODE:20db  f5 83                    MOV DPH,A
CODE:20dd  e5 40                    MOV A,0x40
CODE:20df  f0                       MOVX @DPTR,A
CODE:20e0  74 2a                    MOV A,#0x2a
CODE:20e2  25 42                    ADD A,0x42
CODE:20e4  f5 82                    MOV DPL,A
CODE:20e6  e4                       CLR A
CODE:20e7  34 01                    ADDC A,#0x1
CODE:20e9  f5 83                    MOV DPH,A
CODE:20eb  e5 41                    MOV A,0x41
CODE:20ed  f0                       MOVX @DPTR,A
CODE:20ee  74 00                    MOV A,#0x0
CODE:20f0  25 42                    ADD A,0x42
CODE:20f2  f5 82                    MOV DPL,A
CODE:20f4  e4                       CLR A
CODE:20f5  34 00                    ADDC A,#0x0
CODE:20f7  f5 83                    MOV DPH,A
CODE:20f9  e5 3f                    MOV A,0x3f
CODE:20fb  f0                       MOVX @DPTR,A
CODE:20fc  74 95                    MOV A,#0x95
CODE:20fe  25 42                    ADD A,0x42
CODE:2100  f5 82                    MOV DPL,A
CODE:2102  e4                       CLR A
CODE:2103  34 00                    ADDC A,#0x0
CODE:2105  f5 83                    MOV DPH,A
CODE:2107  e5 40                    MOV A,0x40
CODE:2109  f0                       MOVX @DPTR,A

; ===== FUNCTION FUN_CODE_210b @ CODE:210b =====
CODE:210b  2a                       ADD A,R2   ; XREF: Entry Point 
CODE:210c  25 42                    ADD A,0x42
CODE:210e  f5 82                    MOV DPL,A
CODE:2110  e4                       CLR A
CODE:2111  34 01                    ADDC A,#0x1
CODE:2113  f5 83                    MOV DPH,A
CODE:2115  e5 41                    MOV A,0x41
CODE:2117  f0                       MOVX @DPTR,A
CODE:2118  15 42                    DEC 0x42
CODE:211a  78 5e                    MOV R0,#0x5e
CODE:211c  16                       DEC @R0
CODE:211d  02 20 42                 LJMP 0x2042

; ===== FUNCTION FUN_CODE_2120 @ CODE:2120 =====
CODE:2120  05 1d                    INC 0x1d   ; XREF: CODE:204b 
CODE:2122  02 38 aa                 LJMP 0x38aa

; ===== FUNCTION FUN_CODE_2125 @ CODE:2125 =====
CODE:2125  e5 1d                    MOV A,0x1d   ; XREF: CODE:203b 
CODE:2127  c3                       CLR CY
CODE:2128  94 2e                    SUBB A,#0x2e
CODE:212a  40 03                    JC 0x212f
CODE:212c  02 22 22                 LJMP 0x2222
LAB_CODE_212f:
CODE:212f  78 5e                    MOV R0,#0x5e   ; XREF: CODE:212a 
CODE:2131  76 0a                    MOV @R0,#0xa
LAB_CODE_2133:
CODE:2133  78 5e                    MOV R0,#0x5e   ; XREF: CODE:221a 
CODE:2135  e6                       MOV A,@R0
CODE:2136  fe                       MOV R6,A
CODE:2137  d3                       SETB CY
CODE:2138  95 3e                    SUBB A,0x3e
CODE:213a  50 03                    JNC 0x213f
CODE:213c  02 22 1d                 LJMP 0x221d
LAB_CODE_213f:
CODE:213f  74 5e                    MOV A,#0x5e   ; XREF: CODE:213a 
CODE:2141  2e                       ADD A,R6
CODE:2142  f8                       MOV R0,A
CODE:2143  e6                       MOV A,@R0
CODE:2144  fd                       MOV R5,A
CODE:2145  78 54                    MOV R0,#0x54
CODE:2147  76 00                    MOV @R0,#0x0
CODE:2149  08                       INC R0
CODE:214a  a6 05                    MOV @R0,0x05
CODE:214c  e5 1c                    MOV A,0x1c
CODE:214e  70 0b                    JNZ 0x215b
CODE:2150  75 3f ff                 MOV 0x3f,#0xff
CODE:2153  75 40 ff                 MOV 0x40,#0xff
CODE:2156  e6                       MOV A,@R0
CODE:2157  f5 41                    MOV 0x41,A
CODE:2159  80 5a                    SJMP 0x21b5
LAB_CODE_215b:
CODE:215b  e5 1c                    MOV A,0x1c   ; XREF: CODE:214e 
CODE:215d  b4 01 08                 CJNE A,#0x1,0x2168
CODE:2160  75 3f ff                 MOV 0x3f,#0xff
CODE:2163  78 55                    MOV R0,#0x55
CODE:2165  e6                       MOV A,@R0
CODE:2166  80 37                    SJMP 0x219f
LAB_CODE_2168:
CODE:2168  e5 1c                    MOV A,0x1c   ; XREF: CODE:215d 
CODE:216a  b4 02 0a                 CJNE A,#0x2,0x2177
CODE:216d  78 55                    MOV R0,#0x55
CODE:216f  e6                       MOV A,@R0
CODE:2170  f5 3f                    MOV 0x3f,A
CODE:2172  75 40 ff                 MOV 0x40,#0xff
CODE:2175  80 2a                    SJMP 0x21a1
LAB_CODE_2177:
CODE:2177  e5 1c                    MOV A,0x1c   ; XREF: CODE:216a 
CODE:2179  b4 03 08                 CJNE A,#0x3,0x2184
CODE:217c  75 3f ff                 MOV 0x3f,#0xff
CODE:217f  78 55                    MOV R0,#0x55
CODE:2181  e6                       MOV A,@R0
CODE:2182  80 2d                    SJMP 0x21b1
LAB_CODE_2184:
CODE:2184  e5 1c                    MOV A,0x1c   ; XREF: CODE:2179 
CODE:2186  b4 04 0c                 CJNE A,#0x4,0x2195
CODE:2189  78 55                    MOV R0,#0x55
CODE:218b  e6                       MOV A,@R0
CODE:218c  f5 3f                    MOV 0x3f,A
CODE:218e  75 40 ff                 MOV 0x40,#0xff
CODE:2191  f5 41                    MOV 0x41,A
CODE:2193  80 20                    SJMP 0x21b5
LAB_CODE_2195:
CODE:2195  e5 1c                    MOV A,0x1c   ; XREF: CODE:2186 
CODE:2197  b4 05 0c                 CJNE A,#0x5,0x21a6
CODE:219a  78 55                    MOV R0,#0x55
CODE:219c  e6                       MOV A,@R0
CODE:219d  f5 3f                    MOV 0x3f,A
LAB_CODE_219f:
CODE:219f  f5 40                    MOV 0x40,A   ; XREF: CODE:2166 
LAB_CODE_21a1:
CODE:21a1  75 41 ff                 MOV 0x41,#0xff   ; XREF: CODE:2175 
CODE:21a4  80 0f                    SJMP 0x21b5
LAB_CODE_21a6:
CODE:21a6  e5 1c                    MOV A,0x1c   ; XREF: CODE:2197 
CODE:21a8  b4 06 0a                 CJNE A,#0x6,0x21b5
CODE:21ab  78 54                    MOV R0,#0x54
CODE:21ad  08                       INC R0
CODE:21ae  e6                       MOV A,@R0
CODE:21af  f5 3f                    MOV 0x3f,A
LAB_CODE_21b1:
CODE:21b1  f5 40                    MOV 0x40,A   ; XREF: CODE:2182 
CODE:21b3  f5 41                    MOV 0x41,A
LAB_CODE_21b5:
CODE:21b5  e5 42                    MOV A,0x42   ; XREF: CODE:2159 CODE:2193 CODE:21a4 CODE:21a8 
CODE:21b7  d3                       SETB CY
CODE:21b8  94 16                    SUBB A,#0x16
CODE:21ba  40 2f                    JC 0x21eb
CODE:21bc  e5 42                    MOV A,0x42
CODE:21be  fd                       MOV R5,A
CODE:21bf  74 44                    MOV A,#0x44
CODE:21c1  9d                       SUBB A,R5
CODE:21c2  fd                       MOV R5,A
CODE:21c3  e4                       CLR A
CODE:21c4  94 00                    SUBB A,#0x0
CODE:21c6  fc                       MOV R4,A
CODE:21c7  74 00                    MOV A,#0x0
CODE:21c9  2d                       ADD A,R5
CODE:21ca  f5 82                    MOV DPL,A
CODE:21cc  74 00                    MOV A,#0x0
CODE:21ce  3c                       ADDC A,R4
CODE:21cf  f5 83                    MOV DPH,A
CODE:21d1  e5 3f                    MOV A,0x3f
CODE:21d3  f0                       MOVX @DPTR,A
CODE:21d4  74 95                    MOV A,#0x95
CODE:21d6  2d                       ADD A,R5
CODE:21d7  f5 82                    MOV DPL,A
CODE:21d9  74 00                    MOV A,#0x0
CODE:21db  3c                       ADDC A,R4
CODE:21dc  f5 83                    MOV DPH,A
CODE:21de  e5 40                    MOV A,0x40
CODE:21e0  f0                       MOVX @DPTR,A
CODE:21e1  74 2a                    MOV A,#0x2a
CODE:21e3  2d                       ADD A,R5
CODE:21e4  f5 82                    MOV DPL,A
CODE:21e6  74 01                    MOV A,#0x1
CODE:21e8  3c                       ADDC A,R4
CODE:21e9  80 25                    SJMP 0x2210
LAB_CODE_21eb:
CODE:21eb  74 00                    MOV A,#0x0   ; XREF: CODE:21ba 
CODE:21ed  25 42                    ADD A,0x42
CODE:21ef  f5 82                    MOV DPL,A
CODE:21f1  e4                       CLR A
CODE:21f2  34 00                    ADDC A,#0x0
CODE:21f4  f5 83                    MOV DPH,A
CODE:21f6  e5 3f                    MOV A,0x3f
CODE:21f8  f0                       MOVX @DPTR,A
CODE:21f9  74 95                    MOV A,#0x95
CODE:21fb  25 42                    ADD A,0x42
CODE:21fd  f5 82                    MOV DPL,A
CODE:21ff  e4                       CLR A
CODE:2200  34 00                    ADDC A,#0x0
CODE:2202  f5 83                    MOV DPH,A
CODE:2204  e5 40                    MOV A,0x40
CODE:2206  f0                       MOVX @DPTR,A
CODE:2207  74 2a                    MOV A,#0x2a
CODE:2209  25 42                    ADD A,0x42
CODE:220b  f5 82                    MOV DPL,A
CODE:220d  e4                       CLR A
CODE:220e  34 01                    ADDC A,#0x1
LAB_CODE_2210:
CODE:2210  f5 83                    MOV DPH,A   ; XREF: CODE:21e9 
CODE:2212  e5 41                    MOV A,0x41
CODE:2214  f0                       MOVX @DPTR,A
CODE:2215  15 42                    DEC 0x42
CODE:2217  78 5e                    MOV R0,#0x5e
CODE:2219  16                       DEC @R0
CODE:221a  02 21 33                 LJMP 0x2133
LAB_CODE_221d:
CODE:221d  05 1d                    INC 0x1d   ; XREF: CODE:213c 

; ===== FUNCTION FUN_CODE_2220 @ CODE:2220 =====
CODE:2220  38                       ADDC A,R0   ; XREF: Entry Point 
CODE:2221  aa e5                    MOV R2,0xe5
CODE:2223  1d                       DEC R5
CODE:2224  c3                       CLR CY
CODE:2225  94 45                    SUBB A,#0x45
CODE:2227  40 03                    JC 0x222c
CODE:2229  02 23 20                 LJMP 0x2320
LAB_CODE_222c:
CODE:222c  78 5e                    MOV R0,#0x5e   ; XREF: CODE:2227 
CODE:222e  76 0a                    MOV @R0,#0xa
LAB_CODE_2230:
CODE:2230  78 5e                    MOV R0,#0x5e   ; XREF: CODE:2318 
CODE:2232  e6                       MOV A,@R0
CODE:2233  fe                       MOV R6,A
CODE:2234  d3                       SETB CY
CODE:2235  95 3e                    SUBB A,0x3e
CODE:2237  50 03                    JNC 0x223c
CODE:2239  02 23 1b                 LJMP 0x231b
LAB_CODE_223c:
CODE:223c  74 5e                    MOV A,#0x5e   ; XREF: CODE:2237 
CODE:223e  2e                       ADD A,R6
CODE:223f  f8                       MOV R0,A
CODE:2240  e6                       MOV A,@R0
CODE:2241  fd                       MOV R5,A
CODE:2242  78 54                    MOV R0,#0x54
CODE:2244  76 00                    MOV @R0,#0x0
CODE:2246  08                       INC R0
CODE:2247  a6 05                    MOV @R0,0x05
CODE:2249  e5 1c                    MOV A,0x1c
CODE:224b  70 0b                    JNZ 0x2258
CODE:224d  75 3f ff                 MOV 0x3f,#0xff
CODE:2250  75 40 ff                 MOV 0x40,#0xff
CODE:2253  e6                       MOV A,@R0
CODE:2254  f5 41                    MOV 0x41,A
CODE:2256  80 5a                    SJMP 0x22b2
LAB_CODE_2258:
CODE:2258  e5 1c                    MOV A,0x1c   ; XREF: CODE:224b 
CODE:225a  b4 01 08                 CJNE A,#0x1,0x2265
CODE:225d  75 3f ff                 MOV 0x3f,#0xff
CODE:2260  78 55                    MOV R0,#0x55
CODE:2262  e6                       MOV A,@R0
CODE:2263  80 37                    SJMP 0x229c
LAB_CODE_2265:
CODE:2265  e5 1c                    MOV A,0x1c   ; XREF: CODE:225a 
CODE:2267  b4 02 0a                 CJNE A,#0x2,0x2274
CODE:226a  78 55                    MOV R0,#0x55
CODE:226c  e6                       MOV A,@R0
CODE:226d  f5 3f                    MOV 0x3f,A
CODE:226f  75 40 ff                 MOV 0x40,#0xff
CODE:2272  80 2a                    SJMP 0x229e
LAB_CODE_2274:
CODE:2274  e5 1c                    MOV A,0x1c   ; XREF: CODE:2267 
CODE:2276  b4 03 08                 CJNE A,#0x3,0x2281
CODE:2279  75 3f ff                 MOV 0x3f,#0xff
CODE:227c  78 55                    MOV R0,#0x55
CODE:227e  e6                       MOV A,@R0
CODE:227f  80 2d                    SJMP 0x22ae
LAB_CODE_2281:
CODE:2281  e5 1c                    MOV A,0x1c   ; XREF: CODE:2276 
CODE:2283  b4 04 0c                 CJNE A,#0x4,0x2292
CODE:2286  78 55                    MOV R0,#0x55
CODE:2288  e6                       MOV A,@R0
CODE:2289  f5 3f                    MOV 0x3f,A
CODE:228b  75 40 ff                 MOV 0x40,#0xff
CODE:228e  f5 41                    MOV 0x41,A
CODE:2290  80 20                    SJMP 0x22b2
LAB_CODE_2292:
CODE:2292  e5 1c                    MOV A,0x1c   ; XREF: CODE:2283 
CODE:2294  b4 05 0c                 CJNE A,#0x5,0x22a3
CODE:2297  78 55                    MOV R0,#0x55
CODE:2299  e6                       MOV A,@R0
CODE:229a  f5 3f                    MOV 0x3f,A
LAB_CODE_229c:
CODE:229c  f5 40                    MOV 0x40,A   ; XREF: CODE:2263 
LAB_CODE_229e:
CODE:229e  75 41 ff                 MOV 0x41,#0xff   ; XREF: CODE:2272 
CODE:22a1  80 0f                    SJMP 0x22b2
LAB_CODE_22a3:
CODE:22a3  e5 1c                    MOV A,0x1c   ; XREF: CODE:2294 
CODE:22a5  b4 06 0a                 CJNE A,#0x6,0x22b2
CODE:22a8  78 54                    MOV R0,#0x54
CODE:22aa  08                       INC R0
CODE:22ab  e6                       MOV A,@R0
CODE:22ac  f5 3f                    MOV 0x3f,A
LAB_CODE_22ae:
CODE:22ae  f5 40                    MOV 0x40,A   ; XREF: CODE:227f 
CODE:22b0  f5 41                    MOV 0x41,A
LAB_CODE_22b2:
CODE:22b2  e5 42                    MOV A,0x42   ; XREF: CODE:2256 CODE:2290 CODE:22a1 CODE:22a5 
CODE:22b4  d3                       SETB CY
CODE:22b5  94 2d                    SUBB A,#0x2d
CODE:22b7  40 27                    JC 0x22e0
CODE:22b9  74 00                    MOV A,#0x0
CODE:22bb  25 42                    ADD A,0x42
CODE:22bd  f5 82                    MOV DPL,A
CODE:22bf  e4                       CLR A
CODE:22c0  34 00                    ADDC A,#0x0
CODE:22c2  f5 83                    MOV DPH,A
CODE:22c4  e5 3f                    MOV A,0x3f
CODE:22c6  f0                       MOVX @DPTR,A
CODE:22c7  74 95                    MOV A,#0x95
CODE:22c9  25 42                    ADD A,0x42
CODE:22cb  f5 82                    MOV DPL,A
CODE:22cd  e4                       CLR A
CODE:22ce  34 00                    ADDC A,#0x0
CODE:22d0  f5 83                    MOV DPH,A
CODE:22d2  e5 40                    MOV A,0x40
CODE:22d4  f0                       MOVX @DPTR,A
CODE:22d5  74 2a                    MOV A,#0x2a
CODE:22d7  25 42                    ADD A,0x42
CODE:22d9  f5 82                    MOV DPL,A
CODE:22db  e4                       CLR A
CODE:22dc  34 01                    ADDC A,#0x1
CODE:22de  80 2e                    SJMP 0x230e
LAB_CODE_22e0:
CODE:22e0  e5 42                    MOV A,0x42   ; XREF: CODE:22b7 
CODE:22e2  fd                       MOV R5,A
CODE:22e3  c3                       CLR CY
CODE:22e4  74 44                    MOV A,#0x44
CODE:22e6  9d                       SUBB A,R5
CODE:22e7  fd                       MOV R5,A
CODE:22e8  e4                       CLR A
CODE:22e9  94 00                    SUBB A,#0x0
CODE:22eb  fc                       MOV R4,A
CODE:22ec  74 00                    MOV A,#0x0
CODE:22ee  2d                       ADD A,R5
CODE:22ef  f5 82                    MOV DPL,A
CODE:22f1  74 00                    MOV A,#0x0
CODE:22f3  3c                       ADDC A,R4
CODE:22f4  f5 83                    MOV DPH,A
CODE:22f6  e5 3f                    MOV A,0x3f
CODE:22f8  f0                       MOVX @DPTR,A
CODE:22f9  74 95                    MOV A,#0x95
CODE:22fb  2d                       ADD A,R5
CODE:22fc  f5 82                    MOV DPL,A
CODE:22fe  74 00                    MOV A,#0x0
CODE:2300  3c                       ADDC A,R4
CODE:2301  f5 83                    MOV DPH,A
CODE:2303  e5 40                    MOV A,0x40
CODE:2305  f0                       MOVX @DPTR,A
CODE:2306  74 2a                    MOV A,#0x2a
CODE:2308  2d                       ADD A,R5
CODE:2309  f5 82                    MOV DPL,A
CODE:230b  74 01                    MOV A,#0x1
CODE:230d  3c                       ADDC A,R4
LAB_CODE_230e:
CODE:230e  f5 83                    MOV DPH,A   ; XREF: CODE:22de 
CODE:2310  e5 41                    MOV A,0x41
CODE:2312  f0                       MOVX @DPTR,A
CODE:2313  15 42                    DEC 0x42
CODE:2315  78 5e                    MOV R0,#0x5e
CODE:2317  16                       DEC @R0
CODE:2318  02 22 30                 LJMP 0x2230
LAB_CODE_231b:
CODE:231b  05 1d                    INC 0x1d   ; XREF: CODE:2239 
CODE:231d  02 38 aa                 LJMP 0x38aa
LAB_CODE_2320:
CODE:2320  e5 1d                    MOV A,0x1d   ; XREF: CODE:2229 
CODE:2322  c3                       CLR CY
CODE:2323  94 5c                    SUBB A,#0x5c
CODE:2325  40 03                    JC 0x232a
CODE:2327  02 24 1d                 LJMP 0x241d
LAB_CODE_232a:
CODE:232a  78 5e                    MOV R0,#0x5e   ; XREF: CODE:2325 
CODE:232c  76 0a                    MOV @R0,#0xa
LAB_CODE_232e:
CODE:232e  78 5e                    MOV R0,#0x5e   ; XREF: CODE:2415 
CODE:2330  e6                       MOV A,@R0
CODE:2331  fe                       MOV R6,A
CODE:2332  d3                       SETB CY
CODE:2333  95 3e                    SUBB A,0x3e
CODE:2335  50 03                    JNC 0x233a
CODE:2337  02 24 18                 LJMP 0x2418
LAB_CODE_233a:
CODE:233a  74 5e                    MOV A,#0x5e   ; XREF: CODE:2335 
CODE:233c  2e                       ADD A,R6
CODE:233d  f8                       MOV R0,A
CODE:233e  e6                       MOV A,@R0
CODE:233f  fd                       MOV R5,A
CODE:2340  78 54                    MOV R0,#0x54
CODE:2342  76 00                    MOV @R0,#0x0
CODE:2344  08                       INC R0
CODE:2345  a6 05                    MOV @R0,0x05
CODE:2347  e5 1c                    MOV A,0x1c
CODE:2349  70 0b                    JNZ 0x2356
CODE:234b  75 3f ff                 MOV 0x3f,#0xff
CODE:234e  75 40 ff                 MOV 0x40,#0xff
CODE:2351  e6                       MOV A,@R0
CODE:2352  f5 41                    MOV 0x41,A
CODE:2354  80 5a                    SJMP 0x23b0
LAB_CODE_2356:
CODE:2356  e5 1c                    MOV A,0x1c   ; XREF: CODE:2349 
CODE:2358  b4 01 08                 CJNE A,#0x1,0x2363
CODE:235b  75 3f ff                 MOV 0x3f,#0xff
CODE:235e  78 55                    MOV R0,#0x55
CODE:2360  e6                       MOV A,@R0
CODE:2361  80 37                    SJMP 0x239a
LAB_CODE_2363:
CODE:2363  e5 1c                    MOV A,0x1c   ; XREF: CODE:2358 
CODE:2365  b4 02 0a                 CJNE A,#0x2,0x2372
CODE:2368  78 55                    MOV R0,#0x55
CODE:236a  e6                       MOV A,@R0
CODE:236b  f5 3f                    MOV 0x3f,A
CODE:236d  75 40 ff                 MOV 0x40,#0xff
CODE:2370  80 2a                    SJMP 0x239c
LAB_CODE_2372:
CODE:2372  e5 1c                    MOV A,0x1c   ; XREF: CODE:2365 
CODE:2374  b4 03 08                 CJNE A,#0x3,0x237f
CODE:2377  75 3f ff                 MOV 0x3f,#0xff
CODE:237a  78 55                    MOV R0,#0x55
CODE:237c  e6                       MOV A,@R0
CODE:237d  80 2d                    SJMP 0x23ac
LAB_CODE_237f:
CODE:237f  e5 1c                    MOV A,0x1c   ; XREF: CODE:2374 
CODE:2381  b4 04 0c                 CJNE A,#0x4,0x2390
CODE:2384  78 55                    MOV R0,#0x55
CODE:2386  e6                       MOV A,@R0
CODE:2387  f5 3f                    MOV 0x3f,A
CODE:2389  75 40 ff                 MOV 0x40,#0xff
CODE:238c  f5 41                    MOV 0x41,A
CODE:238e  80 20                    SJMP 0x23b0
LAB_CODE_2390:
CODE:2390  e5 1c                    MOV A,0x1c   ; XREF: CODE:2381 
CODE:2392  b4 05 0c                 CJNE A,#0x5,0x23a1
CODE:2395  78 55                    MOV R0,#0x55
CODE:2397  e6                       MOV A,@R0
CODE:2398  f5 3f                    MOV 0x3f,A
LAB_CODE_239a:
CODE:239a  f5 40                    MOV 0x40,A   ; XREF: CODE:2361 
LAB_CODE_239c:
CODE:239c  75 41 ff                 MOV 0x41,#0xff   ; XREF: CODE:2370 
CODE:239f  80 0f                    SJMP 0x23b0
LAB_CODE_23a1:
CODE:23a1  e5 1c                    MOV A,0x1c   ; XREF: CODE:2392 
CODE:23a3  b4 06 0a                 CJNE A,#0x6,0x23b0
CODE:23a6  78 54                    MOV R0,#0x54
CODE:23a8  08                       INC R0
CODE:23a9  e6                       MOV A,@R0
CODE:23aa  f5 3f                    MOV 0x3f,A
LAB_CODE_23ac:
CODE:23ac  f5 40                    MOV 0x40,A   ; XREF: CODE:237d 
CODE:23ae  f5 41                    MOV 0x41,A
LAB_CODE_23b0:
CODE:23b0  e5 42                    MOV A,0x42   ; XREF: CODE:2354 CODE:238e CODE:239f CODE:23a3 
CODE:23b2  d3                       SETB CY
CODE:23b3  94 44                    SUBB A,#0x44
CODE:23b5  40 2f                    JC 0x23e6
CODE:23b7  e5 42                    MOV A,0x42
CODE:23b9  fd                       MOV R5,A
CODE:23ba  74 a0                    MOV A,#0xa0
CODE:23bc  9d                       SUBB A,R5
CODE:23bd  fd                       MOV R5,A
CODE:23be  e4                       CLR A
CODE:23bf  94 00                    SUBB A,#0x0
CODE:23c1  fc                       MOV R4,A
CODE:23c2  74 00                    MOV A,#0x0
CODE:23c4  2d                       ADD A,R5
CODE:23c5  f5 82                    MOV DPL,A
CODE:23c7  74 00                    MOV A,#0x0
CODE:23c9  3c                       ADDC A,R4
CODE:23ca  f5 83                    MOV DPH,A
CODE:23cc  e5 3f                    MOV A,0x3f
CODE:23ce  f0                       MOVX @DPTR,A
CODE:23cf  74 95                    MOV A,#0x95
CODE:23d1  2d                       ADD A,R5
CODE:23d2  f5 82                    MOV DPL,A
CODE:23d4  74 00                    MOV A,#0x0
CODE:23d6  3c                       ADDC A,R4
CODE:23d7  f5 83                    MOV DPH,A
CODE:23d9  e5 40                    MOV A,0x40
CODE:23db  f0                       MOVX @DPTR,A
CODE:23dc  74 2a                    MOV A,#0x2a
CODE:23de  2d                       ADD A,R5
CODE:23df  f5 82                    MOV DPL,A
CODE:23e1  74 01                    MOV A,#0x1
CODE:23e3  3c                       ADDC A,R4
CODE:23e4  80 25                    SJMP 0x240b
LAB_CODE_23e6:
CODE:23e6  74 00                    MOV A,#0x0   ; XREF: CODE:23b5 
CODE:23e8  25 42                    ADD A,0x42
CODE:23ea  f5 82                    MOV DPL,A
CODE:23ec  e4                       CLR A
CODE:23ed  34 00                    ADDC A,#0x0
CODE:23ef  f5 83                    MOV DPH,A
CODE:23f1  e5 3f                    MOV A,0x3f
CODE:23f3  f0                       MOVX @DPTR,A
CODE:23f4  74 95                    MOV A,#0x95
CODE:23f6  25 42                    ADD A,0x42
CODE:23f8  f5 82                    MOV DPL,A
CODE:23fa  e4                       CLR A
CODE:23fb  34 00                    ADDC A,#0x0
CODE:23fd  f5 83                    MOV DPH,A
CODE:23ff  e5 40                    MOV A,0x40
CODE:2401  f0                       MOVX @DPTR,A
CODE:2402  74 2a                    MOV A,#0x2a
CODE:2404  25 42                    ADD A,0x42
CODE:2406  f5 82                    MOV DPL,A
CODE:2408  e4                       CLR A
CODE:2409  34 01                    ADDC A,#0x1
LAB_CODE_240b:
CODE:240b  f5 83                    MOV DPH,A   ; XREF: CODE:23e4 
CODE:240d  e5 41                    MOV A,0x41
CODE:240f  f0                       MOVX @DPTR,A
CODE:2410  15 42                    DEC 0x42
CODE:2412  78 5e                    MOV R0,#0x5e
CODE:2414  16                       DEC @R0
CODE:2415  02 23 2e                 LJMP 0x232e
LAB_CODE_2418:
CODE:2418  05 1d                    INC 0x1d   ; XREF: CODE:2337 
CODE:241a  02 38 aa                 LJMP 0x38aa
LAB_CODE_241d:
CODE:241d  e5 1d                    MOV A,0x1d   ; XREF: CODE:2327 
CODE:241f  c3                       CLR CY
CODE:2420  94 73                    SUBB A,#0x73
CODE:2422  40 03                    JC 0x2427
CODE:2424  02 25 1b                 LJMP 0x251b
LAB_CODE_2427:
CODE:2427  78 5e                    MOV R0,#0x5e   ; XREF: CODE:2422 
CODE:2429  76 0a                    MOV @R0,#0xa
LAB_CODE_242b:
CODE:242b  78 5e                    MOV R0,#0x5e   ; XREF: CODE:2513 
CODE:242d  e6                       MOV A,@R0
CODE:242e  fe                       MOV R6,A
CODE:242f  d3                       SETB CY
CODE:2430  95 3e                    SUBB A,0x3e
CODE:2432  50 03                    JNC 0x2437
CODE:2434  02 25 16                 LJMP 0x2516
LAB_CODE_2437:
CODE:2437  74 5e                    MOV A,#0x5e   ; XREF: CODE:2432 
CODE:2439  2e                       ADD A,R6
CODE:243a  f8                       MOV R0,A
CODE:243b  e6                       MOV A,@R0
CODE:243c  fd                       MOV R5,A
CODE:243d  78 54                    MOV R0,#0x54
CODE:243f  76 00                    MOV @R0,#0x0
CODE:2441  08                       INC R0
CODE:2442  a6 05                    MOV @R0,0x05
CODE:2444  e5 1c                    MOV A,0x1c
CODE:2446  70 0b                    JNZ 0x2453
CODE:2448  75 3f ff                 MOV 0x3f,#0xff
CODE:244b  75 40 ff                 MOV 0x40,#0xff
CODE:244e  e6                       MOV A,@R0
CODE:244f  f5 41                    MOV 0x41,A
CODE:2451  80 5a                    SJMP 0x24ad
LAB_CODE_2453:
CODE:2453  e5 1c                    MOV A,0x1c   ; XREF: CODE:2446 
CODE:2455  b4 01 08                 CJNE A,#0x1,0x2460
CODE:2458  75 3f ff                 MOV 0x3f,#0xff
CODE:245b  78 55                    MOV R0,#0x55
CODE:245d  e6                       MOV A,@R0
CODE:245e  80 37                    SJMP 0x2497
LAB_CODE_2460:
CODE:2460  e5 1c                    MOV A,0x1c   ; XREF: CODE:2455 
CODE:2462  b4 02 0a                 CJNE A,#0x2,0x246f
CODE:2465  78 55                    MOV R0,#0x55
CODE:2467  e6                       MOV A,@R0
CODE:2468  f5 3f                    MOV 0x3f,A
CODE:246a  75 40 ff                 MOV 0x40,#0xff
CODE:246d  80 2a                    SJMP 0x2499
LAB_CODE_246f:
CODE:246f  e5 1c                    MOV A,0x1c   ; XREF: CODE:2462 
CODE:2471  b4 03 08                 CJNE A,#0x3,0x247c
CODE:2474  75 3f ff                 MOV 0x3f,#0xff
CODE:2477  78 55                    MOV R0,#0x55
CODE:2479  e6                       MOV A,@R0
CODE:247a  80 2d                    SJMP 0x24a9
LAB_CODE_247c:
CODE:247c  e5 1c                    MOV A,0x1c   ; XREF: CODE:2471 
CODE:247e  b4 04 0c                 CJNE A,#0x4,0x248d
CODE:2481  78 55                    MOV R0,#0x55
CODE:2483  e6                       MOV A,@R0
CODE:2484  f5 3f                    MOV 0x3f,A
CODE:2486  75 40 ff                 MOV 0x40,#0xff
CODE:2489  f5 41                    MOV 0x41,A
CODE:248b  80 20                    SJMP 0x24ad
LAB_CODE_248d:
CODE:248d  e5 1c                    MOV A,0x1c   ; XREF: CODE:247e 
CODE:248f  b4 05 0c                 CJNE A,#0x5,0x249e
CODE:2492  78 55                    MOV R0,#0x55
CODE:2494  e6                       MOV A,@R0
CODE:2495  f5 3f                    MOV 0x3f,A
LAB_CODE_2497:
CODE:2497  f5 40                    MOV 0x40,A   ; XREF: CODE:245e 
LAB_CODE_2499:
CODE:2499  75 41 ff                 MOV 0x41,#0xff   ; XREF: CODE:246d 
CODE:249c  80 0f                    SJMP 0x24ad
LAB_CODE_249e:
CODE:249e  e5 1c                    MOV A,0x1c   ; XREF: CODE:248f 
CODE:24a0  b4 06 0a                 CJNE A,#0x6,0x24ad
CODE:24a3  78 54                    MOV R0,#0x54
CODE:24a5  08                       INC R0
CODE:24a6  e6                       MOV A,@R0
CODE:24a7  f5 3f                    MOV 0x3f,A
LAB_CODE_24a9:
CODE:24a9  f5 40                    MOV 0x40,A   ; XREF: CODE:247a 
CODE:24ab  f5 41                    MOV 0x41,A
LAB_CODE_24ad:
CODE:24ad  e5 42                    MOV A,0x42   ; XREF: CODE:2451 CODE:248b CODE:249c CODE:24a0 
CODE:24af  d3                       SETB CY
CODE:24b0  94 5b                    SUBB A,#0x5b
CODE:24b2  40 27                    JC 0x24db
CODE:24b4  74 00                    MOV A,#0x0
CODE:24b6  25 42                    ADD A,0x42
CODE:24b8  f5 82                    MOV DPL,A
CODE:24ba  e4                       CLR A
CODE:24bb  34 00                    ADDC A,#0x0
CODE:24bd  f5 83                    MOV DPH,A
CODE:24bf  e5 3f                    MOV A,0x3f
CODE:24c1  f0                       MOVX @DPTR,A
CODE:24c2  74 95                    MOV A,#0x95
CODE:24c4  25 42                    ADD A,0x42
CODE:24c6  f5 82                    MOV DPL,A
CODE:24c8  e4                       CLR A
CODE:24c9  34 00                    ADDC A,#0x0
CODE:24cb  f5 83                    MOV DPH,A
CODE:24cd  e5 40                    MOV A,0x40
CODE:24cf  f0                       MOVX @DPTR,A
CODE:24d0  74 2a                    MOV A,#0x2a
CODE:24d2  25 42                    ADD A,0x42
CODE:24d4  f5 82                    MOV DPL,A
CODE:24d6  e4                       CLR A
CODE:24d7  34 01                    ADDC A,#0x1
CODE:24d9  80 2e                    SJMP 0x2509
LAB_CODE_24db:
CODE:24db  e5 42                    MOV A,0x42   ; XREF: CODE:24b2 
CODE:24dd  fd                       MOV R5,A
CODE:24de  c3                       CLR CY
CODE:24df  74 a0                    MOV A,#0xa0
CODE:24e1  9d                       SUBB A,R5
CODE:24e2  fd                       MOV R5,A
CODE:24e3  e4                       CLR A
CODE:24e4  94 00                    SUBB A,#0x0
CODE:24e6  fc                       MOV R4,A
CODE:24e7  74 00                    MOV A,#0x0
CODE:24e9  2d                       ADD A,R5
CODE:24ea  f5 82                    MOV DPL,A
CODE:24ec  74 00                    MOV A,#0x0
CODE:24ee  3c                       ADDC A,R4
CODE:24ef  f5 83                    MOV DPH,A
CODE:24f1  e5 3f                    MOV A,0x3f
CODE:24f3  f0                       MOVX @DPTR,A
CODE:24f4  74 95                    MOV A,#0x95
CODE:24f6  2d                       ADD A,R5
CODE:24f7  f5 82                    MOV DPL,A
CODE:24f9  74 00                    MOV A,#0x0
CODE:24fb  3c                       ADDC A,R4
CODE:24fc  f5 83                    MOV DPH,A
CODE:24fe  e5 40                    MOV A,0x40
CODE:2500  f0                       MOVX @DPTR,A
CODE:2501  74 2a                    MOV A,#0x2a
CODE:2503  2d                       ADD A,R5
CODE:2504  f5 82                    MOV DPL,A
CODE:2506  74 01                    MOV A,#0x1
CODE:2508  3c                       ADDC A,R4
LAB_CODE_2509:
CODE:2509  f5 83                    MOV DPH,A   ; XREF: CODE:24d9 
CODE:250b  e5 41                    MOV A,0x41
CODE:250d  f0                       MOVX @DPTR,A
CODE:250e  15 42                    DEC 0x42
CODE:2510  78 5e                    MOV R0,#0x5e
CODE:2512  16                       DEC @R0
CODE:2513  02 24 2b                 LJMP 0x242b
LAB_CODE_2516:
CODE:2516  05 1d                    INC 0x1d   ; XREF: CODE:2434 
CODE:2518  02 38 aa                 LJMP 0x38aa
LAB_CODE_251b:
CODE:251b  e5 1d                    MOV A,0x1d   ; XREF: CODE:2424 
CODE:251d  c3                       CLR CY
CODE:251e  94 8a                    SUBB A,#0x8a
CODE:2520  40 03                    JC 0x2525
CODE:2522  02 26 18                 LJMP 0x2618
LAB_CODE_2525:
CODE:2525  78 5e                    MOV R0,#0x5e   ; XREF: CODE:2520 
CODE:2527  76 0a                    MOV @R0,#0xa
LAB_CODE_2529:
CODE:2529  78 5e                    MOV R0,#0x5e   ; XREF: CODE:2610 
CODE:252b  e6                       MOV A,@R0
CODE:252c  fe                       MOV R6,A
CODE:252d  d3                       SETB CY
CODE:252e  95 3e                    SUBB A,0x3e
CODE:2530  50 03                    JNC 0x2535
CODE:2532  02 26 13                 LJMP 0x2613
LAB_CODE_2535:
CODE:2535  74 5e                    MOV A,#0x5e   ; XREF: CODE:2530 
CODE:2537  2e                       ADD A,R6
CODE:2538  f8                       MOV R0,A
CODE:2539  e6                       MOV A,@R0
CODE:253a  fd                       MOV R5,A
CODE:253b  78 54                    MOV R0,#0x54
CODE:253d  76 00                    MOV @R0,#0x0
CODE:253f  08                       INC R0
CODE:2540  a6 05                    MOV @R0,0x05
CODE:2542  e5 1c                    MOV A,0x1c
CODE:2544  70 0b                    JNZ 0x2551
CODE:2546  75 3f ff                 MOV 0x3f,#0xff
CODE:2549  75 40 ff                 MOV 0x40,#0xff
CODE:254c  e6                       MOV A,@R0
CODE:254d  f5 41                    MOV 0x41,A
CODE:254f  80 5a                    SJMP 0x25ab
LAB_CODE_2551:
CODE:2551  e5 1c                    MOV A,0x1c   ; XREF: CODE:2544 
CODE:2553  b4 01 08                 CJNE A,#0x1,0x255e
CODE:2556  75 3f ff                 MOV 0x3f,#0xff
CODE:2559  78 55                    MOV R0,#0x55
CODE:255b  e6                       MOV A,@R0
CODE:255c  80 37                    SJMP 0x2595
LAB_CODE_255e:
CODE:255e  e5 1c                    MOV A,0x1c   ; XREF: CODE:2553 
CODE:2560  b4 02 0a                 CJNE A,#0x2,0x256d
CODE:2563  78 55                    MOV R0,#0x55
CODE:2565  e6                       MOV A,@R0
CODE:2566  f5 3f                    MOV 0x3f,A
CODE:2568  75 40 ff                 MOV 0x40,#0xff
CODE:256b  80 2a                    SJMP 0x2597
LAB_CODE_256d:
CODE:256d  e5 1c                    MOV A,0x1c   ; XREF: CODE:2560 
CODE:256f  b4 03 08                 CJNE A,#0x3,0x257a
CODE:2572  75 3f ff                 MOV 0x3f,#0xff
CODE:2575  78 55                    MOV R0,#0x55
CODE:2577  e6                       MOV A,@R0
CODE:2578  80 2d                    SJMP 0x25a7
LAB_CODE_257a:
CODE:257a  e5 1c                    MOV A,0x1c   ; XREF: CODE:256f 
CODE:257c  b4 04 0c                 CJNE A,#0x4,0x258b
CODE:257f  78 55                    MOV R0,#0x55
CODE:2581  e6                       MOV A,@R0
CODE:2582  f5 3f                    MOV 0x3f,A
CODE:2584  75 40 ff                 MOV 0x40,#0xff
CODE:2587  f5 41                    MOV 0x41,A
CODE:2589  80 20                    SJMP 0x25ab
LAB_CODE_258b:
CODE:258b  e5 1c                    MOV A,0x1c   ; XREF: CODE:257c 
CODE:258d  b4 05 0c                 CJNE A,#0x5,0x259c
CODE:2590  78 55                    MOV R0,#0x55
CODE:2592  e6                       MOV A,@R0
CODE:2593  f5 3f                    MOV 0x3f,A
LAB_CODE_2595:
CODE:2595  f5 40                    MOV 0x40,A   ; XREF: CODE:255c 
LAB_CODE_2597:
CODE:2597  75 41 ff                 MOV 0x41,#0xff   ; XREF: CODE:256b 
CODE:259a  80 0f                    SJMP 0x25ab
LAB_CODE_259c:
CODE:259c  e5 1c                    MOV A,0x1c   ; XREF: CODE:258d 
CODE:259e  b4 06 0a                 CJNE A,#0x6,0x25ab
CODE:25a1  78 54                    MOV R0,#0x54
CODE:25a3  08                       INC R0
CODE:25a4  e6                       MOV A,@R0
CODE:25a5  f5 3f                    MOV 0x3f,A
LAB_CODE_25a7:
CODE:25a7  f5 40                    MOV 0x40,A   ; XREF: CODE:2578 
CODE:25a9  f5 41                    MOV 0x41,A
LAB_CODE_25ab:
CODE:25ab  e5 42                    MOV A,0x42   ; XREF: CODE:254f CODE:2589 CODE:259a CODE:259e 
CODE:25ad  d3                       SETB CY
CODE:25ae  94 72                    SUBB A,#0x72
CODE:25b0  40 2f                    JC 0x25e1
CODE:25b2  e5 42                    MOV A,0x42
CODE:25b4  fd                       MOV R5,A
CODE:25b5  74 fc                    MOV A,#0xfc
CODE:25b7  9d                       SUBB A,R5
CODE:25b8  fd                       MOV R5,A
CODE:25b9  e4                       CLR A
CODE:25ba  94 00                    SUBB A,#0x0
CODE:25bc  fc                       MOV R4,A
CODE:25bd  74 00                    MOV A,#0x0
CODE:25bf  2d                       ADD A,R5
CODE:25c0  f5 82                    MOV DPL,A
CODE:25c2  74 00                    MOV A,#0x0
CODE:25c4  3c                       ADDC A,R4
CODE:25c5  f5 83                    MOV DPH,A
CODE:25c7  e5 3f                    MOV A,0x3f
CODE:25c9  f0                       MOVX @DPTR,A
CODE:25ca  74 95                    MOV A,#0x95
CODE:25cc  2d                       ADD A,R5
CODE:25cd  f5 82                    MOV DPL,A
CODE:25cf  74 00                    MOV A,#0x0
CODE:25d1  3c                       ADDC A,R4
CODE:25d2  f5 83                    MOV DPH,A
CODE:25d4  e5 40                    MOV A,0x40
CODE:25d6  f0                       MOVX @DPTR,A
CODE:25d7  74 2a                    MOV A,#0x2a
CODE:25d9  2d                       ADD A,R5
CODE:25da  f5 82                    MOV DPL,A
CODE:25dc  74 01                    MOV A,#0x1
CODE:25de  3c                       ADDC A,R4
CODE:25df  80 25                    SJMP 0x2606
LAB_CODE_25e1:
CODE:25e1  74 00                    MOV A,#0x0   ; XREF: CODE:25b0 
CODE:25e3  25 42                    ADD A,0x42
CODE:25e5  f5 82                    MOV DPL,A
CODE:25e7  e4                       CLR A
CODE:25e8  34 00                    ADDC A,#0x0
CODE:25ea  f5 83                    MOV DPH,A
CODE:25ec  e5 3f                    MOV A,0x3f
CODE:25ee  f0                       MOVX @DPTR,A
CODE:25ef  74 95                    MOV A,#0x95
CODE:25f1  25 42                    ADD A,0x42
CODE:25f3  f5 82                    MOV DPL,A
CODE:25f5  e4                       CLR A
CODE:25f6  34 00                    ADDC A,#0x0
CODE:25f8  f5 83                    MOV DPH,A
CODE:25fa  e5 40                    MOV A,0x40
CODE:25fc  f0                       MOVX @DPTR,A
CODE:25fd  74 2a                    MOV A,#0x2a
CODE:25ff  25 42                    ADD A,0x42
CODE:2601  f5 82                    MOV DPL,A
CODE:2603  e4                       CLR A
CODE:2604  34 01                    ADDC A,#0x1
LAB_CODE_2606:
CODE:2606  f5 83                    MOV DPH,A   ; XREF: CODE:25df 
CODE:2608  e5 41                    MOV A,0x41
CODE:260a  f0                       MOVX @DPTR,A
CODE:260b  15 42                    DEC 0x42
CODE:260d  78 5e                    MOV R0,#0x5e
CODE:260f  16                       DEC @R0
CODE:2610  02 25 29                 LJMP 0x2529
LAB_CODE_2613:
CODE:2613  05 1d                    INC 0x1d   ; XREF: CODE:2532 
CODE:2615  02 38 aa                 LJMP 0x38aa
LAB_CODE_2618:
CODE:2618  e5 1d                    MOV A,0x1d   ; XREF: CODE:2522 
CODE:261a  c3                       CLR CY
CODE:261b  94 95                    SUBB A,#0x95
CODE:261d  40 03                    JC 0x2622
CODE:261f  02 38 aa                 LJMP 0x38aa
LAB_CODE_2622:
CODE:2622  78 5e                    MOV R0,#0x5e   ; XREF: CODE:261d 
CODE:2624  76 0a                    MOV @R0,#0xa
LAB_CODE_2626:
CODE:2626  78 5e                    MOV R0,#0x5e   ; XREF: CODE:270e 
CODE:2628  e6                       MOV A,@R0
CODE:2629  fe                       MOV R6,A
CODE:262a  d3                       SETB CY
CODE:262b  95 3e                    SUBB A,0x3e
CODE:262d  50 03                    JNC 0x2632
CODE:262f  02 27 11                 LJMP 0x2711
LAB_CODE_2632:
CODE:2632  74 5e                    MOV A,#0x5e   ; XREF: CODE:262d 
CODE:2634  2e                       ADD A,R6
CODE:2635  f8                       MOV R0,A
CODE:2636  e6                       MOV A,@R0
CODE:2637  fd                       MOV R5,A
CODE:2638  78 54                    MOV R0,#0x54
CODE:263a  76 00                    MOV @R0,#0x0
CODE:263c  08                       INC R0
CODE:263d  a6 05                    MOV @R0,0x05
CODE:263f  e5 1c                    MOV A,0x1c
CODE:2641  70 0b                    JNZ 0x264e
CODE:2643  75 3f ff                 MOV 0x3f,#0xff
CODE:2646  75 40 ff                 MOV 0x40,#0xff
CODE:2649  e6                       MOV A,@R0
CODE:264a  f5 41                    MOV 0x41,A
CODE:264c  80 5a                    SJMP 0x26a8
LAB_CODE_264e:
CODE:264e  e5 1c                    MOV A,0x1c   ; XREF: CODE:2641 
CODE:2650  b4 01 08                 CJNE A,#0x1,0x265b
CODE:2653  75 3f ff                 MOV 0x3f,#0xff
CODE:2656  78 55                    MOV R0,#0x55
CODE:2658  e6                       MOV A,@R0
CODE:2659  80 37                    SJMP 0x2692
LAB_CODE_265b:
CODE:265b  e5 1c                    MOV A,0x1c   ; XREF: CODE:2650 
CODE:265d  b4 02 0a                 CJNE A,#0x2,0x266a
CODE:2660  78 55                    MOV R0,#0x55
CODE:2662  e6                       MOV A,@R0
CODE:2663  f5 3f                    MOV 0x3f,A
CODE:2665  75 40 ff                 MOV 0x40,#0xff
CODE:2668  80 2a                    SJMP 0x2694
LAB_CODE_266a:
CODE:266a  e5 1c                    MOV A,0x1c   ; XREF: CODE:265d 
CODE:266c  b4 03 08                 CJNE A,#0x3,0x2677
CODE:266f  75 3f ff                 MOV 0x3f,#0xff
CODE:2672  78 55                    MOV R0,#0x55
CODE:2674  e6                       MOV A,@R0
CODE:2675  80 2d                    SJMP 0x26a4
LAB_CODE_2677:
CODE:2677  e5 1c                    MOV A,0x1c   ; XREF: CODE:266c 
CODE:2679  b4 04 0c                 CJNE A,#0x4,0x2688
CODE:267c  78 55                    MOV R0,#0x55
CODE:267e  e6                       MOV A,@R0
CODE:267f  f5 3f                    MOV 0x3f,A
CODE:2681  75 40 ff                 MOV 0x40,#0xff
CODE:2684  f5 41                    MOV 0x41,A
CODE:2686  80 20                    SJMP 0x26a8
LAB_CODE_2688:
CODE:2688  e5 1c                    MOV A,0x1c   ; XREF: CODE:2679 
CODE:268a  b4 05 0c                 CJNE A,#0x5,0x2699
CODE:268d  78 55                    MOV R0,#0x55
CODE:268f  e6                       MOV A,@R0
CODE:2690  f5 3f                    MOV 0x3f,A
LAB_CODE_2692:
CODE:2692  f5 40                    MOV 0x40,A   ; XREF: CODE:2659 
LAB_CODE_2694:
CODE:2694  75 41 ff                 MOV 0x41,#0xff   ; XREF: CODE:2668 
CODE:2697  80 0f                    SJMP 0x26a8
LAB_CODE_2699:
CODE:2699  e5 1c                    MOV A,0x1c   ; XREF: CODE:268a 
CODE:269b  b4 06 0a                 CJNE A,#0x6,0x26a8
CODE:269e  78 54                    MOV R0,#0x54
CODE:26a0  08                       INC R0
CODE:26a1  e6                       MOV A,@R0
CODE:26a2  f5 3f                    MOV 0x3f,A
LAB_CODE_26a4:
CODE:26a4  f5 40                    MOV 0x40,A   ; XREF: CODE:2675 
CODE:26a6  f5 41                    MOV 0x41,A
LAB_CODE_26a8:
CODE:26a8  e5 42                    MOV A,0x42   ; XREF: CODE:264c CODE:2686 CODE:2697 CODE:269b 
CODE:26aa  d3                       SETB CY
CODE:26ab  94 8a                    SUBB A,#0x8a
CODE:26ad  40 27                    JC 0x26d6
CODE:26af  74 00                    MOV A,#0x0
CODE:26b1  25 42                    ADD A,0x42
CODE:26b3  f5 82                    MOV DPL,A
CODE:26b5  e4                       CLR A
CODE:26b6  34 00                    ADDC A,#0x0
CODE:26b8  f5 83                    MOV DPH,A
CODE:26ba  e5 3f                    MOV A,0x3f
CODE:26bc  f0                       MOVX @DPTR,A
CODE:26bd  74 95                    MOV A,#0x95
CODE:26bf  25 42                    ADD A,0x42
CODE:26c1  f5 82                    MOV DPL,A
CODE:26c3  e4                       CLR A
CODE:26c4  34 00                    ADDC A,#0x0
CODE:26c6  f5 83                    MOV DPH,A
CODE:26c8  e5 40                    MOV A,0x40
CODE:26ca  f0                       MOVX @DPTR,A
CODE:26cb  74 2a                    MOV A,#0x2a
CODE:26cd  25 42                    ADD A,0x42
CODE:26cf  f5 82                    MOV DPL,A
CODE:26d1  e4                       CLR A
CODE:26d2  34 01                    ADDC A,#0x1
CODE:26d4  80 2e                    SJMP 0x2704
LAB_CODE_26d6:
CODE:26d6  e5 42                    MOV A,0x42   ; XREF: CODE:26ad 
CODE:26d8  fd                       MOV R5,A
CODE:26d9  c3                       CLR CY
CODE:26da  74 fd                    MOV A,#0xfd
CODE:26dc  9d                       SUBB A,R5
CODE:26dd  fd                       MOV R5,A
CODE:26de  e4                       CLR A
CODE:26df  94 00                    SUBB A,#0x0
CODE:26e1  fc                       MOV R4,A
CODE:26e2  74 00                    MOV A,#0x0
CODE:26e4  2d                       ADD A,R5
CODE:26e5  f5 82                    MOV DPL,A
CODE:26e7  74 00                    MOV A,#0x0
CODE:26e9  3c                       ADDC A,R4
CODE:26ea  f5 83                    MOV DPH,A
CODE:26ec  e5 3f                    MOV A,0x3f
CODE:26ee  f0                       MOVX @DPTR,A
CODE:26ef  74 95                    MOV A,#0x95
CODE:26f1  2d                       ADD A,R5
CODE:26f2  f5 82                    MOV DPL,A
CODE:26f4  74 00                    MOV A,#0x0
CODE:26f6  3c                       ADDC A,R4
CODE:26f7  f5 83                    MOV DPH,A
CODE:26f9  e5 40                    MOV A,0x40
CODE:26fb  f0                       MOVX @DPTR,A
CODE:26fc  74 2a                    MOV A,#0x2a
CODE:26fe  2d                       ADD A,R5
CODE:26ff  f5 82                    MOV DPL,A
CODE:2701  74 01                    MOV A,#0x1
CODE:2703  3c                       ADDC A,R4
LAB_CODE_2704:
CODE:2704  f5 83                    MOV DPH,A   ; XREF: CODE:26d4 
CODE:2706  e5 41                    MOV A,0x41
CODE:2708  f0                       MOVX @DPTR,A
CODE:2709  15 42                    DEC 0x42
CODE:270b  78 5e                    MOV R0,#0x5e
CODE:270d  16                       DEC @R0
CODE:270e  02 26 26                 LJMP 0x2626
LAB_CODE_2711:
CODE:2711  05 1d                    INC 0x1d   ; XREF: CODE:262f 
CODE:2713  e5 1d                    MOV A,0x1d
CODE:2715  d3                       SETB CY
CODE:2716  94 94                    SUBB A,#0x94
CODE:2718  50 03                    JNC 0x271d
CODE:271a  02 38 aa                 LJMP 0x38aa
LAB_CODE_271d:
CODE:271d  e4                       CLR A   ; XREF: CODE:2718 
CODE:271e  f5 1d                    MOV 0x1d,A
CODE:2720  05 1c                    INC 0x1c
CODE:2722  e5 1c                    MOV A,0x1c
CODE:2724  d3                       SETB CY
CODE:2725  94 06                    SUBB A,#0x6
CODE:2727  50 03                    JNC 0x272c
CODE:2729  02 38 aa                 LJMP 0x38aa
LAB_CODE_272c:
CODE:272c  02 38 a7                 LJMP 0x38a7   ; XREF: CODE:2727 

; ===== FUNCTION FUN_CODE_272f @ CODE:272f =====
CODE:272f  ef                       MOV A,R7   ; XREF: CODE:2005 
CODE:2730  64 04                    XRL A,#0x4
CODE:2732  70 45                    JNZ 0x2779
CODE:2734  f5 3e                    MOV 0x3e,A
LAB_CODE_2736:
CODE:2736  90 b0 02                 MOV DPTR,#0xb002   ; XREF: CODE:2773 
CODE:2739  e4                       CLR A
CODE:273a  93                       MOVC A,@A+DPTR
CODE:273b  ff                       MOV R7,A
CODE:273c  74 00                    MOV A,#0x0
CODE:273e  25 3e                    ADD A,0x3e
CODE:2740  f5 82                    MOV DPL,A
CODE:2742  e4                       CLR A
CODE:2743  34 00                    ADDC A,#0x0
CODE:2745  f5 83                    MOV DPH,A
CODE:2747  ef                       MOV A,R7
CODE:2748  f0                       MOVX @DPTR,A
CODE:2749  90 b0 01                 MOV DPTR,#0xb001
CODE:274c  e4                       CLR A
CODE:274d  93                       MOVC A,@A+DPTR
CODE:274e  ff                       MOV R7,A
CODE:274f  74 95                    MOV A,#0x95
CODE:2751  25 3e                    ADD A,0x3e
CODE:2753  f5 82                    MOV DPL,A
CODE:2755  e4                       CLR A
CODE:2756  34 00                    ADDC A,#0x0
CODE:2758  f5 83                    MOV DPH,A
CODE:275a  ef                       MOV A,R7
CODE:275b  f0                       MOVX @DPTR,A
CODE:275c  90 b0 00                 MOV DPTR,#0xb000
CODE:275f  e4                       CLR A
CODE:2760  93                       MOVC A,@A+DPTR
CODE:2761  ff                       MOV R7,A
CODE:2762  74 2a                    MOV A,#0x2a
CODE:2764  25 3e                    ADD A,0x3e
CODE:2766  f5 82                    MOV DPL,A
CODE:2768  e4                       CLR A
CODE:2769  34 01                    ADDC A,#0x1
CODE:276b  f5 83                    MOV DPH,A
CODE:276d  ef                       MOV A,R7
CODE:276e  f0                       MOVX @DPTR,A
CODE:276f  05 3e                    INC 0x3e
CODE:2771  e5 3e                    MOV A,0x3e
CODE:2773  b4 8a c0                 CJNE A,#0x8a,0x2736
CODE:2776  02 38 aa                 LJMP 0x38aa
LAB_CODE_2779:
CODE:2779  78 76                    MOV R0,#0x76   ; XREF: CODE:2732 
CODE:277b  e6                       MOV A,@R0
CODE:277c  fe                       MOV R6,A
CODE:277d  64 05                    XRL A,#0x5
CODE:277f  60 03                    JZ 0x2784
CODE:2781  02 2e b8                 LJMP 0x2eb8
LAB_CODE_2784:
CODE:2784  e5 1c                    MOV A,0x1c   ; XREF: CODE:277f 
CODE:2786  70 05                    JNZ 0x278d
CODE:2788  75 3f ff                 MOV 0x3f,#0xff
CODE:278b  80 2b                    SJMP 0x27b8
LAB_CODE_278d:
CODE:278d  e5 1c                    MOV A,0x1c   ; XREF: CODE:2786 
CODE:278f  b4 01 06                 CJNE A,#0x1,0x2798
CODE:2792  75 3f ff                 MOV 0x3f,#0xff
CODE:2795  e4                       CLR A
CODE:2796  80 2f                    SJMP 0x27c7
LAB_CODE_2798:
CODE:2798  e5 1c                    MOV A,0x1c   ; XREF: CODE:278f 
CODE:279a  b4 02 08                 CJNE A,#0x2,0x27a5
CODE:279d  e4                       CLR A
CODE:279e  f5 3f                    MOV 0x3f,A
CODE:27a0  75 40 ff                 MOV 0x40,#0xff
CODE:27a3  80 24                    SJMP 0x27c9
LAB_CODE_27a5:
CODE:27a5  e5 1c                    MOV A,0x1c   ; XREF: CODE:279a 
CODE:27a7  b4 03 06                 CJNE A,#0x3,0x27b0
CODE:27aa  75 3f ff                 MOV 0x3f,#0xff
CODE:27ad  e4                       CLR A
CODE:27ae  80 26                    SJMP 0x27d6
LAB_CODE_27b0:
CODE:27b0  e5 1c                    MOV A,0x1c   ; XREF: CODE:27a7 
CODE:27b2  b4 04 0a                 CJNE A,#0x4,0x27bf
CODE:27b5  e4                       CLR A
CODE:27b6  f5 3f                    MOV 0x3f,A
LAB_CODE_27b8:
CODE:27b8  75 40 ff                 MOV 0x40,#0xff   ; XREF: CODE:278b 
CODE:27bb  f5 41                    MOV 0x41,A
CODE:27bd  80 1b                    SJMP 0x27da
LAB_CODE_27bf:
CODE:27bf  e5 1c                    MOV A,0x1c   ; XREF: CODE:27b2 
CODE:27c1  b4 05 0a                 CJNE A,#0x5,0x27ce
CODE:27c4  e4                       CLR A
CODE:27c5  f5 3f                    MOV 0x3f,A
LAB_CODE_27c7:
CODE:27c7  f5 40                    MOV 0x40,A   ; XREF: CODE:2796 
LAB_CODE_27c9:
CODE:27c9  75 41 ff                 MOV 0x41,#0xff   ; XREF: CODE:27a3 
CODE:27cc  80 0c                    SJMP 0x27da
LAB_CODE_27ce:
CODE:27ce  e5 1c                    MOV A,0x1c   ; XREF: CODE:27c1 
CODE:27d0  b4 06 07                 CJNE A,#0x6,0x27da
CODE:27d3  e4                       CLR A
CODE:27d4  f5 3f                    MOV 0x3f,A
LAB_CODE_27d6:
CODE:27d6  f5 40                    MOV 0x40,A   ; XREF: CODE:27ae 
CODE:27d8  f5 41                    MOV 0x41,A
LAB_CODE_27da:
CODE:27da  78 57                    MOV R0,#0x57   ; XREF: CODE:27bd CODE:27cc CODE:27d0 
CODE:27dc  06                       INC @R0
CODE:27dd  c3                       CLR CY
CODE:27de  74 05                    MOV A,#0x5
CODE:27e0  78 77                    MOV R0,#0x77
CODE:27e2  96                       SUBB A,@R0
CODE:27e3  ff                       MOV R7,A
CODE:27e4  78 57                    MOV R0,#0x57
CODE:27e6  e6                       MOV A,@R0
CODE:27e7  d3                       SETB CY
CODE:27e8  9f                       SUBB A,R7
CODE:27e9  50 03                    JNC 0x27ee
CODE:27eb  02 38 aa                 LJMP 0x38aa
LAB_CODE_27ee:
CODE:27ee  e4                       CLR A   ; XREF: CODE:27e9 
CODE:27ef  f6                       MOV @R0,A
CODE:27f0  78 5e                    MOV R0,#0x5e
CODE:27f2  e6                       MOV A,@R0
CODE:27f3  b4 0e 00                 CJNE A,#0xe,0x27f6
LAB_CODE_27f6:
CODE:27f6  40 03                    JC 0x27fb   ; XREF: CODE:27f3 
CODE:27f8  02 2e 9b                 LJMP 0x2e9b
LAB_CODE_27fb:
CODE:27fb  90 28 02                 MOV DPTR,#0x2802   ; XREF: CODE:27f6 
CODE:27fe  f8                       MOV R0,A
CODE:27ff  28                       ADD A,R0
CODE:2800  28                       ADD A,R0
CODE:2801  73                       JMP @A+DPTR

; ===== FUNCTION thunk_FUN_CODE_282c @ CODE:2802 =====
CODE:2802  02 28 2c                 LJMP 0x282c   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_2840 @ CODE:2805 =====
CODE:2805  02 28 40                 LJMP 0x2840   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_286c @ CODE:2808 =====
CODE:2808  02 28 6c                 LJMP 0x286c   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_28b3 @ CODE:280b =====
CODE:280b  02 28 b3                 LJMP 0x28b3   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_2913 @ CODE:280e =====
CODE:280e  02 29 13                 LJMP 0x2913   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_298b @ CODE:2811 =====
CODE:2811  02 29 8b                 LJMP 0x298b   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_2a1b @ CODE:2814 =====
CODE:2814  02 2a 1b                 LJMP 0x2a1b   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_2aab @ CODE:2817 =====
CODE:2817  02 2a ab                 LJMP 0x2aab   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_2b3b @ CODE:281a =====
CODE:281a  02 2b 3b                 LJMP 0x2b3b   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_2bcb @ CODE:281d =====
CODE:281d  02 2b cb                 LJMP 0x2bcb   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_2c5b @ CODE:2820 =====
CODE:2820  02 2c 5b                 LJMP 0x2c5b   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_2ceb @ CODE:2823 =====
CODE:2823  02 2c eb                 LJMP 0x2ceb   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_2d7b @ CODE:2826 =====
CODE:2826  02 2d 7b                 LJMP 0x2d7b   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_2e0b @ CODE:2829 =====
CODE:2829  02 2e 0b                 LJMP 0x2e0b   ; XREF: Entry Point 

; ===== FUNCTION FUN_CODE_282c @ CODE:282c =====
CODE:282c  85 41 46                 MOV 0x46,0x41   ; XREF: CODE:2802 Entry Point 
CODE:282f  7f 16                    MOV R7,#0x16
CODE:2831  12 80 77                 LCALL 0x8077
CODE:2834  85 41 46                 MOV 0x46,0x41
CODE:2837  ab 40                    MOV R3,0x40
CODE:2839  ad 3f                    MOV R5,0x3f
CODE:283b  7f 73                    MOV R7,#0x73
CODE:283d  02 2e 98                 LJMP 0x2e98

; ===== FUNCTION FUN_CODE_2840 @ CODE:2840 =====
CODE:2840  85 41 46                 MOV 0x46,0x41   ; XREF: CODE:2805 Entry Point 
CODE:2843  7f 15                    MOV R7,#0x15
CODE:2845  12 80 77                 LCALL 0x8077
CODE:2848  85 41 46                 MOV 0x46,0x41
CODE:284b  ab 40                    MOV R3,0x40
CODE:284d  ad 3f                    MOV R5,0x3f
CODE:284f  7f 2d                    MOV R7,#0x2d
CODE:2851  12 80 7b                 LCALL 0x807b
CODE:2854  85 41 46                 MOV 0x46,0x41
CODE:2857  ab 40                    MOV R3,0x40
CODE:2859  ad 3f                    MOV R5,0x3f
CODE:285b  7f 5c                    MOV R7,#0x5c
CODE:285d  12 80 7b                 LCALL 0x807b
CODE:2860  85 41 46                 MOV 0x46,0x41
CODE:2863  ab 40                    MOV R3,0x40
CODE:2865  ad 3f                    MOV R5,0x3f
CODE:2867  7f 74                    MOV R7,#0x74
CODE:2869  02 2e 98                 LJMP 0x2e98

; ===== FUNCTION FUN_CODE_286c @ CODE:286c =====
CODE:286c  85 41 46                 MOV 0x46,0x41   ; XREF: CODE:2808 Entry Point 
CODE:286f  ab 40                    MOV R3,0x40
CODE:2871  ad 3f                    MOV R5,0x3f
CODE:2873  7f 14                    MOV R7,#0x14
CODE:2875  12 80 7b                 LCALL 0x807b
CODE:2878  85 41 46                 MOV 0x46,0x41
CODE:287b  ab 40                    MOV R3,0x40
CODE:287d  ad 3f                    MOV R5,0x3f
CODE:287f  7f 2c                    MOV R7,#0x2c
CODE:2881  12 80 7b                 LCALL 0x807b
CODE:2884  85 41 46                 MOV 0x46,0x41
CODE:2887  ab 40                    MOV R3,0x40
CODE:2889  ad 3f                    MOV R5,0x3f
CODE:288b  7f 44                    MOV R7,#0x44
CODE:288d  12 80 7b                 LCALL 0x807b
CODE:2890  85 41 46                 MOV 0x46,0x41
CODE:2893  ab 40                    MOV R3,0x40
CODE:2895  ad 3f                    MOV R5,0x3f
CODE:2897  0f                       INC R7
CODE:2898  12 80 7b                 LCALL 0x807b
CODE:289b  85 41 46                 MOV 0x46,0x41
CODE:289e  ab 40                    MOV R3,0x40
CODE:28a0  ad 3f                    MOV R5,0x3f
CODE:28a2  7f 5d                    MOV R7,#0x5d
CODE:28a4  12 80 7b                 LCALL 0x807b
CODE:28a7  85 41 46                 MOV 0x46,0x41
CODE:28aa  ab 40                    MOV R3,0x40
CODE:28ac  ad 3f                    MOV R5,0x3f
CODE:28ae  7f 75                    MOV R7,#0x75
CODE:28b0  02 2e 98                 LJMP 0x2e98

; ===== FUNCTION FUN_CODE_28b3 @ CODE:28b3 =====
CODE:28b3  85 41 46                 MOV 0x46,0x41   ; XREF: CODE:280b Entry Point 
CODE:28b6  ab 40                    MOV R3,0x40
CODE:28b8  ad 3f                    MOV R5,0x3f
CODE:28ba  7f 13                    MOV R7,#0x13
CODE:28bc  12 80 7b                 LCALL 0x807b
CODE:28bf  85 41 46                 MOV 0x46,0x41
CODE:28c2  ab 40                    MOV R3,0x40
CODE:28c4  ad 3f                    MOV R5,0x3f
CODE:28c6  7f 2b                    MOV R7,#0x2b
CODE:28c8  12 80 7b                 LCALL 0x807b
CODE:28cb  85 41 46                 MOV 0x46,0x41
CODE:28ce  ab 40                    MOV R3,0x40
CODE:28d0  ad 3f                    MOV R5,0x3f
CODE:28d2  7f 43                    MOV R7,#0x43
CODE:28d4  12 80 7b                 LCALL 0x807b
CODE:28d7  85 41 46                 MOV 0x46,0x41
CODE:28da  ab 40                    MOV R3,0x40
CODE:28dc  ad 3f                    MOV R5,0x3f
CODE:28de  7f 5b                    MOV R7,#0x5b
CODE:28e0  12 80 7b                 LCALL 0x807b
CODE:28e3  85 41 46                 MOV 0x46,0x41
CODE:28e6  ab 40                    MOV R3,0x40
CODE:28e8  ad 3f                    MOV R5,0x3f
CODE:28ea  7f 2e                    MOV R7,#0x2e
CODE:28ec  12 80 7b                 LCALL 0x807b
CODE:28ef  85 41 46                 MOV 0x46,0x41
CODE:28f2  ab 40                    MOV R3,0x40
CODE:28f4  ad 3f                    MOV R5,0x3f
CODE:28f6  7f 46                    MOV R7,#0x46
CODE:28f8  12 80 7b                 LCALL 0x807b
CODE:28fb  85 41 46                 MOV 0x46,0x41
CODE:28fe  ab 40                    MOV R3,0x40
CODE:2900  ad 3f                    MOV R5,0x3f
CODE:2902  7f 5e                    MOV R7,#0x5e
CODE:2904  12 80 7b                 LCALL 0x807b
CODE:2907  85 41 46                 MOV 0x46,0x41
CODE:290a  ab 40                    MOV R3,0x40
CODE:290c  ad 3f                    MOV R5,0x3f
CODE:290e  7f 76                    MOV R7,#0x76
CODE:2910  02 2e 98                 LJMP 0x2e98

; ===== FUNCTION FUN_CODE_2913 @ CODE:2913 =====
CODE:2913  85 41 46                 MOV 0x46,0x41   ; XREF: CODE:280e Entry Point 
CODE:2916  ab 40                    MOV R3,0x40
CODE:2918  ad 3f                    MOV R5,0x3f
CODE:291a  7f 12                    MOV R7,#0x12
CODE:291c  12 80 7b                 LCALL 0x807b
CODE:291f  85 41 46                 MOV 0x46,0x41
CODE:2922  ab 40                    MOV R3,0x40
CODE:2924  ad 3f                    MOV R5,0x3f
CODE:2926  7f 2a                    MOV R7,#0x2a
CODE:2928  12 80 7b                 LCALL 0x807b
CODE:292b  85 41 46                 MOV 0x46,0x41
CODE:292e  ab 40                    MOV R3,0x40
CODE:2930  ad 3f                    MOV R5,0x3f
CODE:2932  7f 42                    MOV R7,#0x42
CODE:2934  12 80 7b                 LCALL 0x807b
CODE:2937  85 41 46                 MOV 0x46,0x41
CODE:293a  ab 40                    MOV R3,0x40
CODE:293c  ad 3f                    MOV R5,0x3f
CODE:293e  7f 5a                    MOV R7,#0x5a
CODE:2940  12 80 7b                 LCALL 0x807b
CODE:2943  85 41 46                 MOV 0x46,0x41
CODE:2946  ab 40                    MOV R3,0x40
CODE:2948  ad 3f                    MOV R5,0x3f
CODE:294a  7f 72                    MOV R7,#0x72
CODE:294c  12 80 7b                 LCALL 0x807b
CODE:294f  85 41 46                 MOV 0x46,0x41
CODE:2952  ab 40                    MOV R3,0x40
CODE:2954  ad 3f                    MOV R5,0x3f
CODE:2956  7f 17                    MOV R7,#0x17
CODE:2958  12 80 7b                 LCALL 0x807b
CODE:295b  85 41 46                 MOV 0x46,0x41
CODE:295e  ab 40                    MOV R3,0x40
CODE:2960  ad 3f                    MOV R5,0x3f
CODE:2962  7f 2f                    MOV R7,#0x2f
CODE:2964  12 80 7b                 LCALL 0x807b
CODE:2967  85 41 46                 MOV 0x46,0x41
CODE:296a  ab 40                    MOV R3,0x40
CODE:296c  ad 3f                    MOV R5,0x3f
CODE:296e  7f 47                    MOV R7,#0x47
CODE:2970  12 80 7b                 LCALL 0x807b
CODE:2973  85 41 46                 MOV 0x46,0x41
CODE:2976  ab 40                    MOV R3,0x40
CODE:2978  ad 3f                    MOV R5,0x3f
CODE:297a  7f 5f                    MOV R7,#0x5f
CODE:297c  12 80 7b                 LCALL 0x807b
CODE:297f  85 41 46                 MOV 0x46,0x41
CODE:2982  ab 40                    MOV R3,0x40
CODE:2984  ad 3f                    MOV R5,0x3f
CODE:2986  7f 77                    MOV R7,#0x77
CODE:2988  02 2e 98                 LJMP 0x2e98

; ===== FUNCTION FUN_CODE_298b @ CODE:298b =====
CODE:298b  85 41 46                 MOV 0x46,0x41   ; XREF: CODE:2811 Entry Point 
CODE:298e  ab 40                    MOV R3,0x40
CODE:2990  ad 3f                    MOV R5,0x3f
CODE:2992  7f 11                    MOV R7,#0x11
CODE:2994  12 80 7b                 LCALL 0x807b
CODE:2997  85 41 46                 MOV 0x46,0x41
CODE:299a  ab 40                    MOV R3,0x40
CODE:299c  ad 3f                    MOV R5,0x3f
CODE:299e  7f 29                    MOV R7,#0x29
CODE:29a0  12 80 7b                 LCALL 0x807b
CODE:29a3  85 41 46                 MOV 0x46,0x41
CODE:29a6  ab 40                    MOV R3,0x40
CODE:29a8  ad 3f                    MOV R5,0x3f
CODE:29aa  7f 41                    MOV R7,#0x41
CODE:29ac  12 80 7b                 LCALL 0x807b
CODE:29af  85 41 46                 MOV 0x46,0x41
CODE:29b2  ab 40                    MOV R3,0x40
CODE:29b4  ad 3f                    MOV R5,0x3f
CODE:29b6  7f 59                    MOV R7,#0x59
CODE:29b8  12 80 7b                 LCALL 0x807b
CODE:29bb  85 41 46                 MOV 0x46,0x41
CODE:29be  ab 40                    MOV R3,0x40
CODE:29c0  ad 3f                    MOV R5,0x3f
CODE:29c2  7f 71                    MOV R7,#0x71
CODE:29c4  12 80 7b                 LCALL 0x807b
CODE:29c7  85 41 46                 MOV 0x46,0x41
CODE:29ca  ab 40                    MOV R3,0x40
CODE:29cc  ad 3f                    MOV R5,0x3f
CODE:29ce  7f 89                    MOV R7,#0x89
CODE:29d0  12 80 7b                 LCALL 0x807b
CODE:29d3  85 41 46                 MOV 0x46,0x41
CODE:29d6  ab 40                    MOV R3,0x40
CODE:29d8  ad 3f                    MOV R5,0x3f
CODE:29da  e4                       CLR A
CODE:29db  ff                       MOV R7,A
CODE:29dc  12 80 7b                 LCALL 0x807b
CODE:29df  85 41 46                 MOV 0x46,0x41
CODE:29e2  ab 40                    MOV R3,0x40
CODE:29e4  ad 3f                    MOV R5,0x3f
CODE:29e6  7f 18                    MOV R7,#0x18
CODE:29e8  12 80 7b                 LCALL 0x807b
CODE:29eb  85 41 46                 MOV 0x46,0x41
CODE:29ee  ab 40                    MOV R3,0x40
CODE:29f0  ad 3f                    MOV R5,0x3f
CODE:29f2  7f 30                    MOV R7,#0x30
CODE:29f4  12 80 7b                 LCALL 0x807b
CODE:29f7  85 41 46                 MOV 0x46,0x41
CODE:29fa  ab 40                    MOV R3,0x40
CODE:29fc  ad 3f                    MOV R5,0x3f
CODE:29fe  7f 48                    MOV R7,#0x48
CODE:2a00  12 80 7b                 LCALL 0x807b
CODE:2a03  85 41 46                 MOV 0x46,0x41
CODE:2a06  ab 40                    MOV R3,0x40
CODE:2a08  ad 3f                    MOV R5,0x3f
CODE:2a0a  7f 60                    MOV R7,#0x60
CODE:2a0c  12 80 7b                 LCALL 0x807b
CODE:2a0f  85 41 46                 MOV 0x46,0x41
CODE:2a12  ab 40                    MOV R3,0x40
CODE:2a14  ad 3f                    MOV R5,0x3f
CODE:2a16  7f 78                    MOV R7,#0x78
CODE:2a18  02 2e 98                 LJMP 0x2e98

; ===== FUNCTION FUN_CODE_2a1b @ CODE:2a1b =====
CODE:2a1b  85 41 46                 MOV 0x46,0x41   ; XREF: CODE:2814 Entry Point 
CODE:2a1e  ab 40                    MOV R3,0x40
CODE:2a20  ad 3f                    MOV R5,0x3f
CODE:2a22  7f 10                    MOV R7,#0x10
CODE:2a24  12 80 7b                 LCALL 0x807b
CODE:2a27  85 41 46                 MOV 0x46,0x41
CODE:2a2a  ab 40                    MOV R3,0x40
CODE:2a2c  ad 3f                    MOV R5,0x3f
CODE:2a2e  7f 28                    MOV R7,#0x28
CODE:2a30  12 80 7b                 LCALL 0x807b
CODE:2a33  85 41 46                 MOV 0x46,0x41
CODE:2a36  ab 40                    MOV R3,0x40
CODE:2a38  ad 3f                    MOV R5,0x3f
CODE:2a3a  7f 40                    MOV R7,#0x40
CODE:2a3c  12 80 7b                 LCALL 0x807b
CODE:2a3f  85 41 46                 MOV 0x46,0x41
CODE:2a42  ab 40                    MOV R3,0x40
CODE:2a44  ad 3f                    MOV R5,0x3f
CODE:2a46  7f 58                    MOV R7,#0x58
CODE:2a48  12 80 7b                 LCALL 0x807b
CODE:2a4b  85 41 46                 MOV 0x46,0x41
CODE:2a4e  ab 40                    MOV R3,0x40
CODE:2a50  ad 3f                    MOV R5,0x3f
CODE:2a52  7f 70                    MOV R7,#0x70
CODE:2a54  12 80 7b                 LCALL 0x807b
CODE:2a57  85 41 46                 MOV 0x46,0x41
CODE:2a5a  ab 40                    MOV R3,0x40
CODE:2a5c  ad 3f                    MOV R5,0x3f
CODE:2a5e  7f 88                    MOV R7,#0x88
CODE:2a60  12 80 7b                 LCALL 0x807b
CODE:2a63  85 41 46                 MOV 0x46,0x41
CODE:2a66  ab 40                    MOV R3,0x40
CODE:2a68  ad 3f                    MOV R5,0x3f
CODE:2a6a  7f 01                    MOV R7,#0x1
CODE:2a6c  12 80 7b                 LCALL 0x807b
CODE:2a6f  85 41 46                 MOV 0x46,0x41
CODE:2a72  ab 40                    MOV R3,0x40
CODE:2a74  ad 3f                    MOV R5,0x3f
CODE:2a76  7f 19                    MOV R7,#0x19
CODE:2a78  12 80 7b                 LCALL 0x807b
CODE:2a7b  85 41 46                 MOV 0x46,0x41
CODE:2a7e  ab 40                    MOV R3,0x40
CODE:2a80  ad 3f                    MOV R5,0x3f
CODE:2a82  7f 31                    MOV R7,#0x31
CODE:2a84  12 80 7b                 LCALL 0x807b
CODE:2a87  85 41 46                 MOV 0x46,0x41
CODE:2a8a  ab 40                    MOV R3,0x40
CODE:2a8c  ad 3f                    MOV R5,0x3f
CODE:2a8e  7f 49                    MOV R7,#0x49
CODE:2a90  12 80 7b                 LCALL 0x807b
CODE:2a93  85 41 46                 MOV 0x46,0x41
CODE:2a96  ab 40                    MOV R3,0x40
CODE:2a98  ad 3f                    MOV R5,0x3f
CODE:2a9a  7f 61                    MOV R7,#0x61
CODE:2a9c  12 80 7b                 LCALL 0x807b
CODE:2a9f  85 41 46                 MOV 0x46,0x41
CODE:2aa2  ab 40                    MOV R3,0x40
CODE:2aa4  ad 3f                    MOV R5,0x3f
CODE:2aa6  7f 79                    MOV R7,#0x79
CODE:2aa8  02 2e 98                 LJMP 0x2e98

; ===== FUNCTION FUN_CODE_2aab @ CODE:2aab =====
CODE:2aab  85 41 46                 MOV 0x46,0x41   ; XREF: CODE:2817 Entry Point 
CODE:2aae  ab 40                    MOV R3,0x40
CODE:2ab0  ad 3f                    MOV R5,0x3f
CODE:2ab2  7f 0f                    MOV R7,#0xf
CODE:2ab4  12 80 7b                 LCALL 0x807b
CODE:2ab7  85 41 46                 MOV 0x46,0x41
CODE:2aba  ab 40                    MOV R3,0x40
CODE:2abc  ad 3f                    MOV R5,0x3f
CODE:2abe  7f 27                    MOV R7,#0x27
CODE:2ac0  12 80 7b                 LCALL 0x807b
CODE:2ac3  85 41 46                 MOV 0x46,0x41
CODE:2ac6  ab 40                    MOV R3,0x40
CODE:2ac8  ad 3f                    MOV R5,0x3f
CODE:2aca  7f 3f                    MOV R7,#0x3f
CODE:2acc  12 80 7b                 LCALL 0x807b
CODE:2acf  85 41 46                 MOV 0x46,0x41
CODE:2ad2  ab 40                    MOV R3,0x40
CODE:2ad4  ad 3f                    MOV R5,0x3f
CODE:2ad6  7f 57                    MOV R7,#0x57
CODE:2ad8  12 80 7b                 LCALL 0x807b
CODE:2adb  85 41 46                 MOV 0x46,0x41
CODE:2ade  ab 40                    MOV R3,0x40
CODE:2ae0  ad 3f                    MOV R5,0x3f
CODE:2ae2  7f 6f                    MOV R7,#0x6f
CODE:2ae4  12 80 7b                 LCALL 0x807b
CODE:2ae7  85 41 46                 MOV 0x46,0x41
CODE:2aea  ab 40                    MOV R3,0x40
CODE:2aec  ad 3f                    MOV R5,0x3f
CODE:2aee  7f 87                    MOV R7,#0x87
CODE:2af0  12 80 7b                 LCALL 0x807b
CODE:2af3  85 41 46                 MOV 0x46,0x41
CODE:2af6  ab 40                    MOV R3,0x40
CODE:2af8  ad 3f                    MOV R5,0x3f
CODE:2afa  7f 02                    MOV R7,#0x2
CODE:2afc  12 80 7b                 LCALL 0x807b
CODE:2aff  85 41 46                 MOV 0x46,0x41
CODE:2b02  ab 40                    MOV R3,0x40
CODE:2b04  ad 3f                    MOV R5,0x3f
CODE:2b06  7f 1a                    MOV R7,#0x1a
CODE:2b08  12 80 7b                 LCALL 0x807b
CODE:2b0b  85 41 46                 MOV 0x46,0x41
CODE:2b0e  ab 40                    MOV R3,0x40
CODE:2b10  ad 3f                    MOV R5,0x3f
CODE:2b12  7f 32                    MOV R7,#0x32
CODE:2b14  12 80 7b                 LCALL 0x807b
CODE:2b17  85 41 46                 MOV 0x46,0x41
CODE:2b1a  ab 40                    MOV R3,0x40
CODE:2b1c  ad 3f                    MOV R5,0x3f
CODE:2b1e  7f 4a                    MOV R7,#0x4a
CODE:2b20  12 80 7b                 LCALL 0x807b
CODE:2b23  85 41 46                 MOV 0x46,0x41
CODE:2b26  ab 40                    MOV R3,0x40
CODE:2b28  ad 3f                    MOV R5,0x3f
CODE:2b2a  7f 62                    MOV R7,#0x62
CODE:2b2c  12 80 7b                 LCALL 0x807b
CODE:2b2f  85 41 46                 MOV 0x46,0x41
CODE:2b32  ab 40                    MOV R3,0x40
CODE:2b34  ad 3f                    MOV R5,0x3f
CODE:2b36  7f 7a                    MOV R7,#0x7a
CODE:2b38  02 2e 98                 LJMP 0x2e98

; ===== FUNCTION FUN_CODE_2b3b @ CODE:2b3b =====
CODE:2b3b  85 41 46                 MOV 0x46,0x41   ; XREF: CODE:281a Entry Point 
CODE:2b3e  ab 40                    MOV R3,0x40
CODE:2b40  ad 3f                    MOV R5,0x3f
CODE:2b42  7f 0e                    MOV R7,#0xe
CODE:2b44  12 80 7b                 LCALL 0x807b
CODE:2b47  85 41 46                 MOV 0x46,0x41
CODE:2b4a  ab 40                    MOV R3,0x40
CODE:2b4c  ad 3f                    MOV R5,0x3f
CODE:2b4e  7f 26                    MOV R7,#0x26
CODE:2b50  12 80 7b                 LCALL 0x807b
CODE:2b53  85 41 46                 MOV 0x46,0x41
CODE:2b56  ab 40                    MOV R3,0x40
CODE:2b58  ad 3f                    MOV R5,0x3f
CODE:2b5a  7f 3e                    MOV R7,#0x3e
CODE:2b5c  12 80 7b                 LCALL 0x807b
CODE:2b5f  85 41 46                 MOV 0x46,0x41
CODE:2b62  ab 40                    MOV R3,0x40
CODE:2b64  ad 3f                    MOV R5,0x3f
CODE:2b66  7f 56                    MOV R7,#0x56
CODE:2b68  12 80 7b                 LCALL 0x807b
CODE:2b6b  85 41 46                 MOV 0x46,0x41
CODE:2b6e  ab 40                    MOV R3,0x40
CODE:2b70  ad 3f                    MOV R5,0x3f
CODE:2b72  7f 6e                    MOV R7,#0x6e
CODE:2b74  12 80 7b                 LCALL 0x807b
CODE:2b77  85 41 46                 MOV 0x46,0x41
CODE:2b7a  ab 40                    MOV R3,0x40
CODE:2b7c  ad 3f                    MOV R5,0x3f
CODE:2b7e  7f 86                    MOV R7,#0x86
CODE:2b80  12 80 7b                 LCALL 0x807b
CODE:2b83  85 41 46                 MOV 0x46,0x41
CODE:2b86  ab 40                    MOV R3,0x40
CODE:2b88  ad 3f                    MOV R5,0x3f
CODE:2b8a  7f 03                    MOV R7,#0x3
CODE:2b8c  12 80 7b                 LCALL 0x807b
CODE:2b8f  85 41 46                 MOV 0x46,0x41
CODE:2b92  ab 40                    MOV R3,0x40
CODE:2b94  ad 3f                    MOV R5,0x3f
CODE:2b96  7f 1b                    MOV R7,#0x1b
CODE:2b98  12 80 7b                 LCALL 0x807b
CODE:2b9b  85 41 46                 MOV 0x46,0x41
CODE:2b9e  ab 40                    MOV R3,0x40
CODE:2ba0  ad 3f                    MOV R5,0x3f
CODE:2ba2  7f 33                    MOV R7,#0x33
CODE:2ba4  12 80 7b                 LCALL 0x807b
CODE:2ba7  85 41 46                 MOV 0x46,0x41
CODE:2baa  ab 40                    MOV R3,0x40
CODE:2bac  ad 3f                    MOV R5,0x3f
CODE:2bae  7f 4b                    MOV R7,#0x4b
CODE:2bb0  12 80 7b                 LCALL 0x807b
CODE:2bb3  85 41 46                 MOV 0x46,0x41
CODE:2bb6  ab 40                    MOV R3,0x40
CODE:2bb8  ad 3f                    MOV R5,0x3f
CODE:2bba  7f 63                    MOV R7,#0x63
CODE:2bbc  12 80 7b                 LCALL 0x807b
CODE:2bbf  85 41 46                 MOV 0x46,0x41
CODE:2bc2  ab 40                    MOV R3,0x40
CODE:2bc4  ad 3f                    MOV R5,0x3f
CODE:2bc6  7f 7b                    MOV R7,#0x7b
CODE:2bc8  02 2e 98                 LJMP 0x2e98

; ===== FUNCTION FUN_CODE_2bcb @ CODE:2bcb =====
CODE:2bcb  85 41 46                 MOV 0x46,0x41   ; XREF: CODE:281d Entry Point 
CODE:2bce  ab 40                    MOV R3,0x40
CODE:2bd0  ad 3f                    MOV R5,0x3f
CODE:2bd2  7f 0d                    MOV R7,#0xd
CODE:2bd4  12 80 7b                 LCALL 0x807b
CODE:2bd7  85 41 46                 MOV 0x46,0x41
CODE:2bda  ab 40                    MOV R3,0x40
CODE:2bdc  ad 3f                    MOV R5,0x3f
CODE:2bde  7f 25                    MOV R7,#0x25
CODE:2be0  12 80 7b                 LCALL 0x807b
CODE:2be3  85 41 46                 MOV 0x46,0x41
CODE:2be6  ab 40                    MOV R3,0x40
CODE:2be8  ad 3f                    MOV R5,0x3f
CODE:2bea  7f 3d                    MOV R7,#0x3d
CODE:2bec  12 80 7b                 LCALL 0x807b
CODE:2bef  85 41 46                 MOV 0x46,0x41
CODE:2bf2  ab 40                    MOV R3,0x40
CODE:2bf4  ad 3f                    MOV R5,0x3f
CODE:2bf6  7f 55                    MOV R7,#0x55
CODE:2bf8  12 80 7b                 LCALL 0x807b
CODE:2bfb  85 41 46                 MOV 0x46,0x41
CODE:2bfe  ab 40                    MOV R3,0x40
CODE:2c00  ad 3f                    MOV R5,0x3f
CODE:2c02  7f 6d                    MOV R7,#0x6d
CODE:2c04  12 80 7b                 LCALL 0x807b
CODE:2c07  85 41 46                 MOV 0x46,0x41
CODE:2c0a  ab 40                    MOV R3,0x40
CODE:2c0c  ad 3f                    MOV R5,0x3f
CODE:2c0e  7f 85                    MOV R7,#0x85
CODE:2c10  12 80 7b                 LCALL 0x807b
CODE:2c13  85 41 46                 MOV 0x46,0x41
CODE:2c16  ab 40                    MOV R3,0x40
CODE:2c18  ad 3f                    MOV R5,0x3f
CODE:2c1a  7f 04                    MOV R7,#0x4
CODE:2c1c  12 80 7b                 LCALL 0x807b
CODE:2c1f  85 41 46                 MOV 0x46,0x41
CODE:2c22  ab 40                    MOV R3,0x40
CODE:2c24  ad 3f                    MOV R5,0x3f
CODE:2c26  7f 1c                    MOV R7,#0x1c
CODE:2c28  12 80 7b                 LCALL 0x807b
CODE:2c2b  85 41 46                 MOV 0x46,0x41
CODE:2c2e  ab 40                    MOV R3,0x40
CODE:2c30  ad 3f                    MOV R5,0x3f
CODE:2c32  7f 34                    MOV R7,#0x34
CODE:2c34  12 80 7b                 LCALL 0x807b
CODE:2c37  85 41 46                 MOV 0x46,0x41
CODE:2c3a  ab 40                    MOV R3,0x40
CODE:2c3c  ad 3f                    MOV R5,0x3f
CODE:2c3e  7f 4c                    MOV R7,#0x4c
CODE:2c40  12 80 7b                 LCALL 0x807b
CODE:2c43  85 41 46                 MOV 0x46,0x41
CODE:2c46  ab 40                    MOV R3,0x40
CODE:2c48  ad 3f                    MOV R5,0x3f
CODE:2c4a  7f 64                    MOV R7,#0x64
CODE:2c4c  12 80 7b                 LCALL 0x807b
CODE:2c4f  85 41 46                 MOV 0x46,0x41
CODE:2c52  ab 40                    MOV R3,0x40
CODE:2c54  ad 3f                    MOV R5,0x3f
CODE:2c56  7f 7c                    MOV R7,#0x7c
CODE:2c58  02 2e 98                 LJMP 0x2e98

; ===== FUNCTION FUN_CODE_2c5b @ CODE:2c5b =====
CODE:2c5b  85 41 46                 MOV 0x46,0x41   ; XREF: CODE:2820 Entry Point 
CODE:2c5e  ab 40                    MOV R3,0x40
CODE:2c60  ad 3f                    MOV R5,0x3f
CODE:2c62  7f 0c                    MOV R7,#0xc
CODE:2c64  12 80 7b                 LCALL 0x807b
CODE:2c67  85 41 46                 MOV 0x46,0x41
CODE:2c6a  ab 40                    MOV R3,0x40
CODE:2c6c  ad 3f                    MOV R5,0x3f
CODE:2c6e  7f 24                    MOV R7,#0x24
CODE:2c70  12 80 7b                 LCALL 0x807b
CODE:2c73  85 41 46                 MOV 0x46,0x41
CODE:2c76  ab 40                    MOV R3,0x40
CODE:2c78  ad 3f                    MOV R5,0x3f
CODE:2c7a  7f 3c                    MOV R7,#0x3c
CODE:2c7c  12 80 7b                 LCALL 0x807b
CODE:2c7f  85 41 46                 MOV 0x46,0x41
CODE:2c82  ab 40                    MOV R3,0x40
CODE:2c84  ad 3f                    MOV R5,0x3f
CODE:2c86  7f 54                    MOV R7,#0x54
CODE:2c88  12 80 7b                 LCALL 0x807b
CODE:2c8b  85 41 46                 MOV 0x46,0x41
CODE:2c8e  ab 40                    MOV R3,0x40
CODE:2c90  ad 3f                    MOV R5,0x3f
CODE:2c92  7f 6c                    MOV R7,#0x6c
CODE:2c94  12 80 7b                 LCALL 0x807b
CODE:2c97  85 41 46                 MOV 0x46,0x41
CODE:2c9a  ab 40                    MOV R3,0x40
CODE:2c9c  ad 3f                    MOV R5,0x3f
CODE:2c9e  7f 84                    MOV R7,#0x84
CODE:2ca0  12 80 7b                 LCALL 0x807b
CODE:2ca3  85 41 46                 MOV 0x46,0x41
CODE:2ca6  ab 40                    MOV R3,0x40
CODE:2ca8  ad 3f                    MOV R5,0x3f
CODE:2caa  7f 05                    MOV R7,#0x5
CODE:2cac  12 80 7b                 LCALL 0x807b
CODE:2caf  85 41 46                 MOV 0x46,0x41
CODE:2cb2  ab 40                    MOV R3,0x40
CODE:2cb4  ad 3f                    MOV R5,0x3f
CODE:2cb6  7f 1d                    MOV R7,#0x1d
CODE:2cb8  12 80 7b                 LCALL 0x807b
CODE:2cbb  85 41 46                 MOV 0x46,0x41
CODE:2cbe  ab 40                    MOV R3,0x40
CODE:2cc0  ad 3f                    MOV R5,0x3f
EXT_CODE_2cc2:
CODE:2cc2  7f 35                    MOV R7,#0x35   ; XREF: Entry Point 
CODE:2cc4  12 80 7b                 LCALL 0x807b
CODE:2cc7  85 41 46                 MOV 0x46,0x41
CODE:2cca  ab 40                    MOV R3,0x40
CODE:2ccc  ad 3f                    MOV R5,0x3f
CODE:2cce  7f 4d                    MOV R7,#0x4d
CODE:2cd0  12 80 7b                 LCALL 0x807b
CODE:2cd3  85 41 46                 MOV 0x46,0x41
CODE:2cd6  ab 40                    MOV R3,0x40
CODE:2cd8  ad 3f                    MOV R5,0x3f
CODE:2cda  7f 65                    MOV R7,#0x65
CODE:2cdc  12 80 7b                 LCALL 0x807b
CODE:2cdf  85 41 46                 MOV 0x46,0x41
CODE:2ce2  ab 40                    MOV R3,0x40
CODE:2ce4  ad 3f                    MOV R5,0x3f
CODE:2ce6  7f 7d                    MOV R7,#0x7d
CODE:2ce8  02 2e 98                 LJMP 0x2e98

; ===== FUNCTION FUN_CODE_2ceb @ CODE:2ceb =====
CODE:2ceb  85 41 46                 MOV 0x46,0x41   ; XREF: CODE:2823 Entry Point 
CODE:2cee  ab 40                    MOV R3,0x40
CODE:2cf0  ad 3f                    MOV R5,0x3f
CODE:2cf2  7f 0b                    MOV R7,#0xb
CODE:2cf4  12 80 7b                 LCALL 0x807b
CODE:2cf7  85 41 46                 MOV 0x46,0x41
CODE:2cfa  ab 40                    MOV R3,0x40
CODE:2cfc  ad 3f                    MOV R5,0x3f
CODE:2cfe  7f 23                    MOV R7,#0x23
CODE:2d00  12 80 7b                 LCALL 0x807b
CODE:2d03  85 41 46                 MOV 0x46,0x41
CODE:2d06  ab 40                    MOV R3,0x40
CODE:2d08  ad 3f                    MOV R5,0x3f
CODE:2d0a  7f 3b                    MOV R7,#0x3b
CODE:2d0c  12 80 7b                 LCALL 0x807b
CODE:2d0f  85 41 46                 MOV 0x46,0x41
CODE:2d12  ab 40                    MOV R3,0x40
CODE:2d14  ad 3f                    MOV R5,0x3f
CODE:2d16  7f 53                    MOV R7,#0x53
CODE:2d18  12 80 7b                 LCALL 0x807b
CODE:2d1b  85 41 46                 MOV 0x46,0x41
CODE:2d1e  ab 40                    MOV R3,0x40
CODE:2d20  ad 3f                    MOV R5,0x3f
CODE:2d22  7f 6b                    MOV R7,#0x6b
CODE:2d24  12 80 7b                 LCALL 0x807b
CODE:2d27  85 41 46                 MOV 0x46,0x41
CODE:2d2a  ab 40                    MOV R3,0x40
CODE:2d2c  ad 3f                    MOV R5,0x3f
CODE:2d2e  7f 83                    MOV R7,#0x83
CODE:2d30  12 80 7b                 LCALL 0x807b
CODE:2d33  85 41 46                 MOV 0x46,0x41
CODE:2d36  ab 40                    MOV R3,0x40
CODE:2d38  ad 3f                    MOV R5,0x3f
CODE:2d3a  7f 06                    MOV R7,#0x6
CODE:2d3c  12 80 7b                 LCALL 0x807b
CODE:2d3f  85 41 46                 MOV 0x46,0x41
CODE:2d42  ab 40                    MOV R3,0x40
CODE:2d44  ad 3f                    MOV R5,0x3f
CODE:2d46  7f 1e                    MOV R7,#0x1e
CODE:2d48  12 80 7b                 LCALL 0x807b
CODE:2d4b  85 41 46                 MOV 0x46,0x41
CODE:2d4e  ab 40                    MOV R3,0x40
CODE:2d50  ad 3f                    MOV R5,0x3f
CODE:2d52  7f 36                    MOV R7,#0x36
CODE:2d54  12 80 7b                 LCALL 0x807b
CODE:2d57  85 41 46                 MOV 0x46,0x41
CODE:2d5a  ab 40                    MOV R3,0x40
CODE:2d5c  ad 3f                    MOV R5,0x3f
CODE:2d5e  7f 4e                    MOV R7,#0x4e
CODE:2d60  12 80 7b                 LCALL 0x807b
CODE:2d63  85 41 46                 MOV 0x46,0x41
CODE:2d66  ab 40                    MOV R3,0x40
CODE:2d68  ad 3f                    MOV R5,0x3f
CODE:2d6a  7f 66                    MOV R7,#0x66
CODE:2d6c  12 80 7b                 LCALL 0x807b
CODE:2d6f  85 41 46                 MOV 0x46,0x41
CODE:2d72  ab 40                    MOV R3,0x40
CODE:2d74  ad 3f                    MOV R5,0x3f
CODE:2d76  7f 7e                    MOV R7,#0x7e
CODE:2d78  02 2e 98                 LJMP 0x2e98

; ===== FUNCTION FUN_CODE_2d7b @ CODE:2d7b =====
CODE:2d7b  85 41 46                 MOV 0x46,0x41   ; XREF: CODE:2826 Entry Point 
CODE:2d7e  ab 40                    MOV R3,0x40
CODE:2d80  ad 3f                    MOV R5,0x3f
CODE:2d82  7f 0a                    MOV R7,#0xa
CODE:2d84  12 80 7b                 LCALL 0x807b
CODE:2d87  85 41 46                 MOV 0x46,0x41
CODE:2d8a  ab 40                    MOV R3,0x40
CODE:2d8c  ad 3f                    MOV R5,0x3f
CODE:2d8e  7f 22                    MOV R7,#0x22
CODE:2d90  12 80 7b                 LCALL 0x807b
CODE:2d93  85 41 46                 MOV 0x46,0x41
CODE:2d96  ab 40                    MOV R3,0x40
CODE:2d98  ad 3f                    MOV R5,0x3f
CODE:2d9a  7f 3a                    MOV R7,#0x3a
CODE:2d9c  12 80 7b                 LCALL 0x807b
CODE:2d9f  85 41 46                 MOV 0x46,0x41
CODE:2da2  ab 40                    MOV R3,0x40
CODE:2da4  ad 3f                    MOV R5,0x3f
CODE:2da6  7f 52                    MOV R7,#0x52
CODE:2da8  12 80 7b                 LCALL 0x807b
CODE:2dab  85 41 46                 MOV 0x46,0x41
CODE:2dae  ab 40                    MOV R3,0x40
CODE:2db0  ad 3f                    MOV R5,0x3f
CODE:2db2  7f 6a                    MOV R7,#0x6a
CODE:2db4  12 80 7b                 LCALL 0x807b
CODE:2db7  85 41 46                 MOV 0x46,0x41
CODE:2dba  ab 40                    MOV R3,0x40
CODE:2dbc  ad 3f                    MOV R5,0x3f
CODE:2dbe  7f 82                    MOV R7,#0x82
CODE:2dc0  12 80 7b                 LCALL 0x807b
CODE:2dc3  85 41 46                 MOV 0x46,0x41
CODE:2dc6  ab 40                    MOV R3,0x40
CODE:2dc8  ad 3f                    MOV R5,0x3f
CODE:2dca  7f 07                    MOV R7,#0x7
CODE:2dcc  12 80 7b                 LCALL 0x807b
CODE:2dcf  85 41 46                 MOV 0x46,0x41
CODE:2dd2  ab 40                    MOV R3,0x40
CODE:2dd4  ad 3f                    MOV R5,0x3f
CODE:2dd6  7f 1f                    MOV R7,#0x1f
CODE:2dd8  12 80 7b                 LCALL 0x807b
CODE:2ddb  85 41 46                 MOV 0x46,0x41
CODE:2dde  ab 40                    MOV R3,0x40
CODE:2de0  ad 3f                    MOV R5,0x3f
CODE:2de2  7f 37                    MOV R7,#0x37
CODE:2de4  12 80 7b                 LCALL 0x807b
CODE:2de7  85 41 46                 MOV 0x46,0x41
CODE:2dea  ab 40                    MOV R3,0x40
CODE:2dec  ad 3f                    MOV R5,0x3f
CODE:2dee  7f 4f                    MOV R7,#0x4f
CODE:2df0  12 80 7b                 LCALL 0x807b
CODE:2df3  85 41 46                 MOV 0x46,0x41
CODE:2df6  ab 40                    MOV R3,0x40
CODE:2df8  ad 3f                    MOV R5,0x3f
CODE:2dfa  7f 67                    MOV R7,#0x67
CODE:2dfc  12 80 7b                 LCALL 0x807b
CODE:2dff  85 41 46                 MOV 0x46,0x41
CODE:2e02  ab 40                    MOV R3,0x40
CODE:2e04  ad 3f                    MOV R5,0x3f
CODE:2e06  7f 7f                    MOV R7,#0x7f
CODE:2e08  02 2e 98                 LJMP 0x2e98

; ===== FUNCTION FUN_CODE_2e0b @ CODE:2e0b =====
CODE:2e0b  85 41 46                 MOV 0x46,0x41   ; XREF: CODE:2829 Entry Point 
CODE:2e0e  ab 40                    MOV R3,0x40
CODE:2e10  ad 3f                    MOV R5,0x3f
CODE:2e12  7f 09                    MOV R7,#0x9
CODE:2e14  12 80 7b                 LCALL 0x807b
CODE:2e17  85 41 46                 MOV 0x46,0x41
CODE:2e1a  ab 40                    MOV R3,0x40
CODE:2e1c  ad 3f                    MOV R5,0x3f
CODE:2e1e  7f 21                    MOV R7,#0x21
CODE:2e20  12 80 7b                 LCALL 0x807b
CODE:2e23  85 41 46                 MOV 0x46,0x41
CODE:2e26  ab 40                    MOV R3,0x40
CODE:2e28  ad 3f                    MOV R5,0x3f
CODE:2e2a  7f 39                    MOV R7,#0x39
CODE:2e2c  12 80 7b                 LCALL 0x807b
CODE:2e2f  85 41 46                 MOV 0x46,0x41
CODE:2e32  ab 40                    MOV R3,0x40
CODE:2e34  ad 3f                    MOV R5,0x3f
CODE:2e36  7f 51                    MOV R7,#0x51
CODE:2e38  12 80 7b                 LCALL 0x807b
CODE:2e3b  85 41 46                 MOV 0x46,0x41
CODE:2e3e  ab 40                    MOV R3,0x40
CODE:2e40  ad 3f                    MOV R5,0x3f
CODE:2e42  7f 69                    MOV R7,#0x69
CODE:2e44  12 80 7b                 LCALL 0x807b
CODE:2e47  85 41 46                 MOV 0x46,0x41
CODE:2e4a  ab 40                    MOV R3,0x40
CODE:2e4c  ad 3f                    MOV R5,0x3f
CODE:2e4e  7f 81                    MOV R7,#0x81
CODE:2e50  12 80 7b                 LCALL 0x807b
CODE:2e53  85 41 46                 MOV 0x46,0x41
CODE:2e56  ab 40                    MOV R3,0x40
CODE:2e58  ad 3f                    MOV R5,0x3f
CODE:2e5a  7f 08                    MOV R7,#0x8
CODE:2e5c  12 80 7b                 LCALL 0x807b
CODE:2e5f  85 41 46                 MOV 0x46,0x41
CODE:2e62  ab 40                    MOV R3,0x40
CODE:2e64  ad 3f                    MOV R5,0x3f
CODE:2e66  7f 20                    MOV R7,#0x20
CODE:2e68  12 80 7b                 LCALL 0x807b
CODE:2e6b  85 41 46                 MOV 0x46,0x41
CODE:2e6e  ab 40                    MOV R3,0x40
CODE:2e70  ad 3f                    MOV R5,0x3f
CODE:2e72  7f 38                    MOV R7,#0x38
CODE:2e74  12 80 7b                 LCALL 0x807b
CODE:2e77  85 41 46                 MOV 0x46,0x41
CODE:2e7a  ab 40                    MOV R3,0x40
CODE:2e7c  ad 3f                    MOV R5,0x3f
CODE:2e7e  7f 50                    MOV R7,#0x50
CODE:2e80  12 80 7b                 LCALL 0x807b
CODE:2e83  85 41 46                 MOV 0x46,0x41
CODE:2e86  ab 40                    MOV R3,0x40
CODE:2e88  ad 3f                    MOV R5,0x3f
CODE:2e8a  7f 68                    MOV R7,#0x68
CODE:2e8c  12 80 7b                 LCALL 0x807b
CODE:2e8f  85 41 46                 MOV 0x46,0x41
CODE:2e92  ab 40                    MOV R3,0x40
CODE:2e94  ad 3f                    MOV R5,0x3f
CODE:2e96  7f 80                    MOV R7,#0x80
LAB_CODE_2e98:
CODE:2e98  12 80 7b                 LCALL 0x807b   ; XREF: CODE:283d CODE:2869 CODE:28b0 CODE:2910 CODE:2988 CODE:2a18 CODE:2aa8 CODE:2b38 CODE:2bc8 CODE:2c58 CODE:2ce8 CODE:2d78 CODE:2e08 
LAB_CODE_2e9b:
CODE:2e9b  78 5e                    MOV R0,#0x5e   ; XREF: CODE:27f8 
CODE:2e9d  06                       INC @R0
CODE:2e9e  e6                       MOV A,@R0
CODE:2e9f  d3                       SETB CY
CODE:2ea0  94 0d                    SUBB A,#0xd
CODE:2ea2  50 03                    JNC 0x2ea7
CODE:2ea4  02 38 aa                 LJMP 0x38aa
LAB_CODE_2ea7:
CODE:2ea7  e4                       CLR A   ; XREF: CODE:2ea2 
CODE:2ea8  f6                       MOV @R0,A
CODE:2ea9  05 1c                    INC 0x1c
CODE:2eab  e5 1c                    MOV A,0x1c
CODE:2ead  d3                       SETB CY
CODE:2eae  94 06                    SUBB A,#0x6
CODE:2eb0  50 03                    JNC 0x2eb5
CODE:2eb2  02 38 aa                 LJMP 0x38aa
LAB_CODE_2eb5:
CODE:2eb5  02 38 a7                 LJMP 0x38a7   ; XREF: CODE:2eb0 

; ===== FUNCTION FUN_CODE_2eb8 @ CODE:2eb8 =====
CODE:2eb8  ee                       MOV A,R6   ; XREF: CODE:2781 
CODE:2eb9  64 06                    XRL A,#0x6
CODE:2ebb  60 03                    JZ 0x2ec0
CODE:2ebd  02 30 8b                 LJMP 0x308b
LAB_CODE_2ec0:
CODE:2ec0  78 57                    MOV R0,#0x57   ; XREF: CODE:2ebb 
CODE:2ec2  06                       INC @R0
CODE:2ec3  c3                       CLR CY
CODE:2ec4  74 05                    MOV A,#0x5
CODE:2ec6  78 77                    MOV R0,#0x77
CODE:2ec8  96                       SUBB A,@R0
CODE:2ec9  ff                       MOV R7,A
CODE:2eca  78 57                    MOV R0,#0x57
CODE:2ecc  e6                       MOV A,@R0
CODE:2ecd  d3                       SETB CY
CODE:2ece  9f                       SUBB A,R7
CODE:2ecf  50 03                    JNC 0x2ed4
CODE:2ed1  02 38 aa                 LJMP 0x38aa
LAB_CODE_2ed4:
CODE:2ed4  e4                       CLR A   ; XREF: CODE:2ecf 
CODE:2ed5  f6                       MOV @R0,A
CODE:2ed6  f5 3e                    MOV 0x3e,A
LAB_CODE_2ed8:
CODE:2ed8  74 5f                    MOV A,#0x5f   ; XREF: CODE:2f5f 
CODE:2eda  25 3e                    ADD A,0x3e
CODE:2edc  f8                       MOV R0,A
CODE:2edd  e6                       MOV A,@R0
CODE:2ede  fd                       MOV R5,A
CODE:2edf  c3                       CLR CY
CODE:2ee0  94 f2                    SUBB A,#0xf2
CODE:2ee2  50 43                    JNC 0x2f27
CODE:2ee4  74 01                    MOV A,#0x1
CODE:2ee6  7e 00                    MOV R6,#0x0
CODE:2ee8  a8 3e                    MOV R0,0x3e
CODE:2eea  08                       INC R0
CODE:2eeb  80 05                    SJMP 0x2ef2
LAB_CODE_2eed:
CODE:2eed  c3                       CLR CY   ; XREF: CODE:2ef2 
CODE:2eee  33                       RLC A
CODE:2eef  ce                       XCH A,R6
CODE:2ef0  33                       RLC A
CODE:2ef1  ce                       XCH A,R6
LAB_CODE_2ef2:
CODE:2ef2  d8 f9                    DJNZ R0,0x2eed   ; XREF: CODE:2eeb 
CODE:2ef4  ff                       MOV R7,A
CODE:2ef5  e5 0c                    MOV A,0x0c
CODE:2ef7  fb                       MOV R3,A
CODE:2ef8  ef                       MOV A,R7
CODE:2ef9  5b                       ANL A,R3
CODE:2efa  60 20                    JZ 0x2f1c
CODE:2efc  ed                       MOV A,R5
CODE:2efd  c3                       CLR CY
CODE:2efe  94 0b                    SUBB A,#0xb
CODE:2f00  40 02                    JC 0x2f04
CODE:2f02  80 39                    SJMP 0x2f3d
LAB_CODE_2f04:
CODE:2f04  74 5f                    MOV A,#0x5f   ; XREF: CODE:2f00 
CODE:2f06  25 3e                    ADD A,0x3e
CODE:2f08  f8                       MOV R0,A
CODE:2f09  e4                       CLR A
CODE:2f0a  f6                       MOV @R0,A
CODE:2f0b  af 3e                    MOV R7,0x3e
CODE:2f0d  04                       INC A
CODE:2f0e  a8 07                    MOV R0,0x07
CODE:2f10  08                       INC R0
CODE:2f11  80 02                    SJMP 0x2f15
LAB_CODE_2f13:
CODE:2f13  c3                       CLR CY   ; XREF: CODE:2f15 
CODE:2f14  33                       RLC A
LAB_CODE_2f15:
CODE:2f15  d8 fc                    DJNZ R0,0x2f13   ; XREF: CODE:2f11 
CODE:2f17  f4                       CPL A
CODE:2f18  52 0c                    ANL 0x0c,A
CODE:2f1a  80 3b                    SJMP 0x2f57
LAB_CODE_2f1c:
CODE:2f1c  74 5f                    MOV A,#0x5f   ; XREF: CODE:2efa 
CODE:2f1e  25 3e                    ADD A,0x3e
CODE:2f20  f8                       MOV R0,A
CODE:2f21  74 0b                    MOV A,#0xb
CODE:2f23  26                       ADD A,@R0
CODE:2f24  f6                       MOV @R0,A
CODE:2f25  80 30                    SJMP 0x2f57
LAB_CODE_2f27:
CODE:2f27  74 01                    MOV A,#0x1   ; XREF: CODE:2ee2 
CODE:2f29  7e 00                    MOV R6,#0x0
CODE:2f2b  a8 3e                    MOV R0,0x3e
CODE:2f2d  08                       INC R0
CODE:2f2e  80 05                    SJMP 0x2f35
LAB_CODE_2f30:
CODE:2f30  c3                       CLR CY   ; XREF: CODE:2f35 
CODE:2f31  33                       RLC A
CODE:2f32  ce                       XCH A,R6
CODE:2f33  33                       RLC A
CODE:2f34  ce                       XCH A,R6
LAB_CODE_2f35:
CODE:2f35  d8 f9                    DJNZ R0,0x2f30   ; XREF: CODE:2f2e 
CODE:2f37  ff                       MOV R7,A
CODE:2f38  ef                       MOV A,R7
CODE:2f39  55 0c                    ANL A,0x0c
CODE:2f3b  60 0b                    JZ 0x2f48
LAB_CODE_2f3d:
CODE:2f3d  74 5f                    MOV A,#0x5f   ; XREF: CODE:2f02 
CODE:2f3f  25 3e                    ADD A,0x3e
CODE:2f41  f8                       MOV R0,A
CODE:2f42  74 f5                    MOV A,#0xf5
CODE:2f44  26                       ADD A,@R0
CODE:2f45  f6                       MOV @R0,A
CODE:2f46  80 0f                    SJMP 0x2f57
LAB_CODE_2f48:
CODE:2f48  af 3e                    MOV R7,0x3e   ; XREF: CODE:2f3b 
CODE:2f4a  74 01                    MOV A,#0x1
CODE:2f4c  a8 07                    MOV R0,0x07
CODE:2f4e  08                       INC R0
CODE:2f4f  80 02                    SJMP 0x2f53
LAB_CODE_2f51:
CODE:2f51  c3                       CLR CY   ; XREF: CODE:2f53 
CODE:2f52  33                       RLC A
LAB_CODE_2f53:
CODE:2f53  d8 fc                    DJNZ R0,0x2f51   ; XREF: CODE:2f4f 
CODE:2f55  42 0c                    ORL 0x0c,A
LAB_CODE_2f57:
CODE:2f57  05 3e                    INC 0x3e   ; XREF: CODE:2f1a CODE:2f25 CODE:2f46 
CODE:2f59  e5 3e                    MOV A,0x3e
CODE:2f5b  64 08                    XRL A,#0x8
CODE:2f5d  60 03                    JZ 0x2f62
CODE:2f5f  02 2e d8                 LJMP 0x2ed8
LAB_CODE_2f62:
CODE:2f62  75 3e 08                 MOV 0x3e,#0x8   ; XREF: CODE:2f5d 
LAB_CODE_2f65:
CODE:2f65  74 5f                    MOV A,#0x5f   ; XREF: CODE:2ff2 
CODE:2f67  25 3e                    ADD A,0x3e
CODE:2f69  f8                       MOV R0,A
CODE:2f6a  e6                       MOV A,@R0
CODE:2f6b  fd                       MOV R5,A
CODE:2f6c  c3                       CLR CY
CODE:2f6d  94 f2                    SUBB A,#0xf2
CODE:2f6f  50 44                    JNC 0x2fb5
CODE:2f71  e5 3e                    MOV A,0x3e
CODE:2f73  24 f8                    ADD A,#0xf8
CODE:2f75  fc                       MOV R4,A
CODE:2f76  74 01                    MOV A,#0x1
CODE:2f78  7e 00                    MOV R6,#0x0
CODE:2f7a  a8 04                    MOV R0,0x04
CODE:2f7c  08                       INC R0
CODE:2f7d  80 05                    SJMP 0x2f84
LAB_CODE_2f7f:
CODE:2f7f  c3                       CLR CY   ; XREF: CODE:2f84 
CODE:2f80  33                       RLC A
CODE:2f81  ce                       XCH A,R6
CODE:2f82  33                       RLC A
CODE:2f83  ce                       XCH A,R6
LAB_CODE_2f84:
CODE:2f84  d8 f9                    DJNZ R0,0x2f7f   ; XREF: CODE:2f7d 
CODE:2f86  ff                       MOV R7,A
CODE:2f87  ef                       MOV A,R7
CODE:2f88  55 0d                    ANL A,0x0d
CODE:2f8a  60 1e                    JZ 0x2faa
CODE:2f8c  ed                       MOV A,R5
CODE:2f8d  c3                       CLR CY
CODE:2f8e  94 0b                    SUBB A,#0xb
CODE:2f90  40 02                    JC 0x2f94
CODE:2f92  80 3e                    SJMP 0x2fd2
LAB_CODE_2f94:
CODE:2f94  74 5f                    MOV A,#0x5f   ; XREF: CODE:2f90 
CODE:2f96  25 3e                    ADD A,0x3e
CODE:2f98  f8                       MOV R0,A
CODE:2f99  e4                       CLR A
CODE:2f9a  f6                       MOV @R0,A
CODE:2f9b  04                       INC A
CODE:2f9c  a8 04                    MOV R0,0x04
CODE:2f9e  08                       INC R0
CODE:2f9f  80 02                    SJMP 0x2fa3
LAB_CODE_2fa1:
CODE:2fa1  c3                       CLR CY   ; XREF: CODE:2fa3 
CODE:2fa2  33                       RLC A
LAB_CODE_2fa3:
CODE:2fa3  d8 fc                    DJNZ R0,0x2fa1   ; XREF: CODE:2f9f 
CODE:2fa5  f4                       CPL A
CODE:2fa6  52 0d                    ANL 0x0d,A
CODE:2fa8  80 40                    SJMP 0x2fea
LAB_CODE_2faa:
CODE:2faa  74 5f                    MOV A,#0x5f   ; XREF: CODE:2f8a 
CODE:2fac  25 3e                    ADD A,0x3e
CODE:2fae  f8                       MOV R0,A
CODE:2faf  74 0b                    MOV A,#0xb
CODE:2fb1  26                       ADD A,@R0
CODE:2fb2  f6                       MOV @R0,A
CODE:2fb3  80 35                    SJMP 0x2fea
LAB_CODE_2fb5:
CODE:2fb5  e5 3e                    MOV A,0x3e   ; XREF: CODE:2f6f 
CODE:2fb7  24 f8                    ADD A,#0xf8
CODE:2fb9  fd                       MOV R5,A
CODE:2fba  74 01                    MOV A,#0x1
CODE:2fbc  7e 00                    MOV R6,#0x0
CODE:2fbe  a8 05                    MOV R0,0x05
CODE:2fc0  08                       INC R0
CODE:2fc1  80 05                    SJMP 0x2fc8
LAB_CODE_2fc3:
CODE:2fc3  c3                       CLR CY   ; XREF: CODE:2fc8 
CODE:2fc4  33                       RLC A
CODE:2fc5  ce                       XCH A,R6
CODE:2fc6  33                       RLC A
CODE:2fc7  ce                       XCH A,R6
LAB_CODE_2fc8:
CODE:2fc8  d8 f9                    DJNZ R0,0x2fc3   ; XREF: CODE:2fc1 
CODE:2fca  ff                       MOV R7,A
CODE:2fcb  e5 0d                    MOV A,0x0d
CODE:2fcd  fb                       MOV R3,A
CODE:2fce  ef                       MOV A,R7
CODE:2fcf  5b                       ANL A,R3
CODE:2fd0  60 0b                    JZ 0x2fdd
LAB_CODE_2fd2:
CODE:2fd2  74 5f                    MOV A,#0x5f   ; XREF: CODE:2f92 
CODE:2fd4  25 3e                    ADD A,0x3e
CODE:2fd6  f8                       MOV R0,A
CODE:2fd7  74 f5                    MOV A,#0xf5
CODE:2fd9  26                       ADD A,@R0
CODE:2fda  f6                       MOV @R0,A
CODE:2fdb  80 0d                    SJMP 0x2fea
LAB_CODE_2fdd:
CODE:2fdd  74 01                    MOV A,#0x1   ; XREF: CODE:2fd0 
CODE:2fdf  a8 05                    MOV R0,0x05
CODE:2fe1  08                       INC R0
CODE:2fe2  80 02                    SJMP 0x2fe6
LAB_CODE_2fe4:
CODE:2fe4  c3                       CLR CY   ; XREF: CODE:2fe6 
CODE:2fe5  33                       RLC A
LAB_CODE_2fe6:
CODE:2fe6  d8 fc                    DJNZ R0,0x2fe4   ; XREF: CODE:2fe2 
CODE:2fe8  42 0d                    ORL 0x0d,A
LAB_CODE_2fea:
CODE:2fea  05 3e                    INC 0x3e   ; XREF: CODE:2fa8 CODE:2fb3 CODE:2fdb 
CODE:2fec  e5 3e                    MOV A,0x3e
CODE:2fee  64 10                    XRL A,#0x10
CODE:2ff0  60 03                    JZ 0x2ff5
CODE:2ff2  02 2f 65                 LJMP 0x2f65
LAB_CODE_2ff5:
CODE:2ff5  75 3e 10                 MOV 0x3e,#0x10   ; XREF: CODE:2ff0 
LAB_CODE_2ff8:
CODE:2ff8  74 5f                    MOV A,#0x5f   ; XREF: CODE:3085 
CODE:2ffa  25 3e                    ADD A,0x3e
CODE:2ffc  f8                       MOV R0,A
CODE:2ffd  e6                       MOV A,@R0
CODE:2ffe  fd                       MOV R5,A
CODE:2fff  c3                       CLR CY
CODE:3000  94 f2                    SUBB A,#0xf2
CODE:3002  50 44                    JNC 0x3048
CODE:3004  e5 3e                    MOV A,0x3e
CODE:3006  24 f0                    ADD A,#0xf0
CODE:3008  fc                       MOV R4,A
CODE:3009  74 01                    MOV A,#0x1
CODE:300b  7e 00                    MOV R6,#0x0
CODE:300d  a8 04                    MOV R0,0x04
CODE:300f  08                       INC R0
CODE:3010  80 05                    SJMP 0x3017
LAB_CODE_3012:
CODE:3012  c3                       CLR CY   ; XREF: CODE:3017 
CODE:3013  33                       RLC A
CODE:3014  ce                       XCH A,R6
CODE:3015  33                       RLC A
CODE:3016  ce                       XCH A,R6
LAB_CODE_3017:
CODE:3017  d8 f9                    DJNZ R0,0x3012   ; XREF: CODE:3010 
CODE:3019  ff                       MOV R7,A
CODE:301a  ef                       MOV A,R7
CODE:301b  55 0e                    ANL A,0x0e
CODE:301d  60 1e                    JZ 0x303d
CODE:301f  ed                       MOV A,R5
CODE:3020  c3                       CLR CY
CODE:3021  94 0b                    SUBB A,#0xb
CODE:3023  40 02                    JC 0x3027
CODE:3025  80 3e                    SJMP 0x3065
LAB_CODE_3027:
CODE:3027  74 5f                    MOV A,#0x5f   ; XREF: CODE:3023 
CODE:3029  25 3e                    ADD A,0x3e
CODE:302b  f8                       MOV R0,A
CODE:302c  e4                       CLR A
CODE:302d  f6                       MOV @R0,A
CODE:302e  04                       INC A
CODE:302f  a8 04                    MOV R0,0x04
CODE:3031  08                       INC R0
CODE:3032  80 02                    SJMP 0x3036
LAB_CODE_3034:
CODE:3034  c3                       CLR CY   ; XREF: CODE:3036 
CODE:3035  33                       RLC A
LAB_CODE_3036:
CODE:3036  d8 fc                    DJNZ R0,0x3034   ; XREF: CODE:3032 
CODE:3038  f4                       CPL A
CODE:3039  52 0e                    ANL 0x0e,A
CODE:303b  80 40                    SJMP 0x307d
LAB_CODE_303d:
CODE:303d  74 5f                    MOV A,#0x5f   ; XREF: CODE:301d 
CODE:303f  25 3e                    ADD A,0x3e
CODE:3041  f8                       MOV R0,A
CODE:3042  74 0b                    MOV A,#0xb
CODE:3044  26                       ADD A,@R0
CODE:3045  f6                       MOV @R0,A
CODE:3046  80 35                    SJMP 0x307d
LAB_CODE_3048:
CODE:3048  e5 3e                    MOV A,0x3e   ; XREF: CODE:3002 
CODE:304a  24 f0                    ADD A,#0xf0
CODE:304c  fd                       MOV R5,A
CODE:304d  74 01                    MOV A,#0x1
CODE:304f  7e 00                    MOV R6,#0x0
CODE:3051  a8 05                    MOV R0,0x05
CODE:3053  08                       INC R0
CODE:3054  80 05                    SJMP 0x305b
LAB_CODE_3056:
CODE:3056  c3                       CLR CY   ; XREF: CODE:305b 
CODE:3057  33                       RLC A
CODE:3058  ce                       XCH A,R6
CODE:3059  33                       RLC A
CODE:305a  ce                       XCH A,R6
LAB_CODE_305b:
CODE:305b  d8 f9                    DJNZ R0,0x3056   ; XREF: CODE:3054 
CODE:305d  ff                       MOV R7,A
CODE:305e  e5 0e                    MOV A,0x0e
CODE:3060  fb                       MOV R3,A
CODE:3061  ef                       MOV A,R7
CODE:3062  5b                       ANL A,R3
CODE:3063  60 0b                    JZ 0x3070
LAB_CODE_3065:
CODE:3065  74 5f                    MOV A,#0x5f   ; XREF: CODE:3025 
CODE:3067  25 3e                    ADD A,0x3e
CODE:3069  f8                       MOV R0,A
CODE:306a  74 f5                    MOV A,#0xf5
CODE:306c  26                       ADD A,@R0
CODE:306d  f6                       MOV @R0,A
CODE:306e  80 0d                    SJMP 0x307d
LAB_CODE_3070:
CODE:3070  74 01                    MOV A,#0x1   ; XREF: CODE:3063 
CODE:3072  a8 05                    MOV R0,0x05
CODE:3074  08                       INC R0
CODE:3075  80 02                    SJMP 0x3079
LAB_CODE_3077:
CODE:3077  c3                       CLR CY   ; XREF: CODE:3079 
CODE:3078  33                       RLC A
LAB_CODE_3079:
CODE:3079  d8 fc                    DJNZ R0,0x3077   ; XREF: CODE:3075 
CODE:307b  42 0e                    ORL 0x0e,A
LAB_CODE_307d:
CODE:307d  05 3e                    INC 0x3e   ; XREF: CODE:303b CODE:3046 CODE:306e 
CODE:307f  e5 3e                    MOV A,0x3e
CODE:3081  64 17                    XRL A,#0x17
CODE:3083  60 03                    JZ 0x3088
CODE:3085  02 2f f8                 LJMP 0x2ff8
LAB_CODE_3088:
CODE:3088  02 38 aa                 LJMP 0x38aa   ; XREF: CODE:3083 
LAB_CODE_308b:
CODE:308b  78 76                    MOV R0,#0x76   ; XREF: CODE:2ebd 
CODE:308d  e6                       MOV A,@R0
CODE:308e  fd                       MOV R5,A
CODE:308f  64 07                    XRL A,#0x7
CODE:3091  60 03                    JZ 0x3096
CODE:3093  02 36 05                 LJMP 0x3605
LAB_CODE_3096:
CODE:3096  e5 1c                    MOV A,0x1c   ; XREF: CODE:3091 
CODE:3098  70 05                    JNZ 0x309f
CODE:309a  75 3f ff                 MOV 0x3f,#0xff
CODE:309d  80 2b                    SJMP 0x30ca
LAB_CODE_309f:
CODE:309f  e5 1c                    MOV A,0x1c   ; XREF: CODE:3098 
CODE:30a1  b4 01 06                 CJNE A,#0x1,0x30aa
CODE:30a4  75 3f ff                 MOV 0x3f,#0xff
CODE:30a7  e4                       CLR A
CODE:30a8  80 2f                    SJMP 0x30d9
LAB_CODE_30aa:
CODE:30aa  e5 1c                    MOV A,0x1c   ; XREF: CODE:30a1 
CODE:30ac  b4 02 08                 CJNE A,#0x2,0x30b7
CODE:30af  e4                       CLR A
CODE:30b0  f5 3f                    MOV 0x3f,A
CODE:30b2  75 40 ff                 MOV 0x40,#0xff
CODE:30b5  80 24                    SJMP 0x30db
LAB_CODE_30b7:
CODE:30b7  e5 1c                    MOV A,0x1c   ; XREF: CODE:30ac 
CODE:30b9  b4 03 06                 CJNE A,#0x3,0x30c2
CODE:30bc  75 3f ff                 MOV 0x3f,#0xff
CODE:30bf  e4                       CLR A
CODE:30c0  80 26                    SJMP 0x30e8
LAB_CODE_30c2:
CODE:30c2  e5 1c                    MOV A,0x1c   ; XREF: CODE:30b9 
CODE:30c4  b4 04 0a                 CJNE A,#0x4,0x30d1
CODE:30c7  e4                       CLR A
CODE:30c8  f5 3f                    MOV 0x3f,A
LAB_CODE_30ca:
CODE:30ca  75 40 ff                 MOV 0x40,#0xff   ; XREF: CODE:309d 
CODE:30cd  f5 41                    MOV 0x41,A
CODE:30cf  80 1b                    SJMP 0x30ec
LAB_CODE_30d1:
CODE:30d1  e5 1c                    MOV A,0x1c   ; XREF: CODE:30c4 
CODE:30d3  b4 05 0a                 CJNE A,#0x5,0x30e0
CODE:30d6  e4                       CLR A
CODE:30d7  f5 3f                    MOV 0x3f,A
LAB_CODE_30d9:
CODE:30d9  f5 40                    MOV 0x40,A   ; XREF: CODE:30a8 
LAB_CODE_30db:
CODE:30db  75 41 ff                 MOV 0x41,#0xff   ; XREF: CODE:30b5 
CODE:30de  80 0c                    SJMP 0x30ec
LAB_CODE_30e0:
CODE:30e0  e5 1c                    MOV A,0x1c   ; XREF: CODE:30d3 
CODE:30e2  b4 06 07                 CJNE A,#0x6,0x30ec
CODE:30e5  e4                       CLR A
CODE:30e6  f5 3f                    MOV 0x3f,A
LAB_CODE_30e8:
CODE:30e8  f5 40                    MOV 0x40,A   ; XREF: CODE:30c0 
CODE:30ea  f5 41                    MOV 0x41,A
LAB_CODE_30ec:
CODE:30ec  78 57                    MOV R0,#0x57   ; XREF: CODE:30cf CODE:30de CODE:30e2 
CODE:30ee  06                       INC @R0
CODE:30ef  78 77                    MOV R0,#0x77
CODE:30f1  e6                       MOV A,@R0
CODE:30f2  ff                       MOV R7,A
CODE:30f3  c3                       CLR CY
CODE:30f4  74 05                    MOV A,#0x5
CODE:30f6  9f                       SUBB A,R7
CODE:30f7  ff                       MOV R7,A
CODE:30f8  e4                       CLR A
CODE:30f9  94 00                    SUBB A,#0x0
CODE:30fb  fe                       MOV R6,A
CODE:30fc  ef                       MOV A,R7
CODE:30fd  78 02                    MOV R0,#0x2
LAB_CODE_30ff:
CODE:30ff  c3                       CLR CY   ; XREF: CODE:3104 
CODE:3100  33                       RLC A
CODE:3101  ce                       XCH A,R6
CODE:3102  33                       RLC A
CODE:3103  ce                       XCH A,R6
CODE:3104  d8 f9                    DJNZ R0,0x30ff
CODE:3106  ff                       MOV R7,A
CODE:3107  78 57                    MOV R0,#0x57
CODE:3109  e6                       MOV A,@R0
CODE:310a  d3                       SETB CY
CODE:310b  9f                       SUBB A,R7
CODE:310c  ee                       MOV A,R6
CODE:310d  64 80                    XRL A,#0x80
CODE:310f  f8                       MOV R0,A
CODE:3110  74 80                    MOV A,#0x80
CODE:3112  98                       SUBB A,R0
CODE:3113  50 03                    JNC 0x3118
CODE:3115  02 38 aa                 LJMP 0x38aa
LAB_CODE_3118:
CODE:3118  e4                       CLR A   ; XREF: CODE:3113 
CODE:3119  78 57                    MOV R0,#0x57
CODE:311b  f6                       MOV @R0,A
CODE:311c  75 3e 16                 MOV 0x3e,#0x16
LAB_CODE_311f:
CODE:311f  74 ff                    MOV A,#0xff   ; XREF: CODE:32fb 
CODE:3121  25 3e                    ADD A,0x3e
CODE:3123  f5 82                    MOV DPL,A
CODE:3125  e4                       CLR A
CODE:3126  34 ff                    ADDC A,#0xff
CODE:3128  f5 83                    MOV DPH,A
CODE:312a  e0                       MOVX A,@DPTR
CODE:312b  ff                       MOV R7,A
CODE:312c  74 00                    MOV A,#0x0
CODE:312e  25 3e                    ADD A,0x3e
CODE:3130  f5 82                    MOV DPL,A
CODE:3132  e4                       CLR A
CODE:3133  34 00                    ADDC A,#0x0
CODE:3135  f5 83                    MOV DPH,A
CODE:3137  ef                       MOV A,R7
CODE:3138  f0                       MOVX @DPTR,A
CODE:3139  74 94                    MOV A,#0x94
CODE:313b  25 3e                    ADD A,0x3e
CODE:313d  f5 82                    MOV DPL,A
CODE:313f  e4                       CLR A
CODE:3140  34 00                    ADDC A,#0x0
CODE:3142  f5 83                    MOV DPH,A
CODE:3144  e0                       MOVX A,@DPTR
CODE:3145  ff                       MOV R7,A
CODE:3146  74 95                    MOV A,#0x95
CODE:3148  25 3e                    ADD A,0x3e
CODE:314a  f5 82                    MOV DPL,A
CODE:314c  e4                       CLR A
CODE:314d  34 00                    ADDC A,#0x0
CODE:314f  f5 83                    MOV DPH,A
CODE:3151  ef                       MOV A,R7
CODE:3152  f0                       MOVX @DPTR,A
CODE:3153  74 29                    MOV A,#0x29
CODE:3155  25 3e                    ADD A,0x3e
CODE:3157  f5 82                    MOV DPL,A
CODE:3159  e4                       CLR A
CODE:315a  34 01                    ADDC A,#0x1
CODE:315c  f5 83                    MOV DPH,A
CODE:315e  e0                       MOVX A,@DPTR
CODE:315f  ff                       MOV R7,A
CODE:3160  74 2a                    MOV A,#0x2a
CODE:3162  25 3e                    ADD A,0x3e
CODE:3164  f5 82                    MOV DPL,A
CODE:3166  e4                       CLR A
CODE:3167  34 01                    ADDC A,#0x1
CODE:3169  f5 83                    MOV DPH,A
CODE:316b  ef                       MOV A,R7
CODE:316c  f0                       MOVX @DPTR,A
CODE:316d  74 16                    MOV A,#0x16
CODE:316f  25 3e                    ADD A,0x3e
CODE:3171  f5 82                    MOV DPL,A
CODE:3173  e4                       CLR A
CODE:3174  34 00                    ADDC A,#0x0
CODE:3176  f5 83                    MOV DPH,A
CODE:3178  e0                       MOVX A,@DPTR
CODE:3179  ff                       MOV R7,A
CODE:317a  74 17                    MOV A,#0x17
CODE:317c  25 3e                    ADD A,0x3e
CODE:317e  f5 82                    MOV DPL,A
CODE:3180  e4                       CLR A
CODE:3181  34 00                    ADDC A,#0x0
CODE:3183  f5 83                    MOV DPH,A
CODE:3185  ef                       MOV A,R7
CODE:3186  f0                       MOVX @DPTR,A
CODE:3187  74 ab                    MOV A,#0xab
CODE:3189  25 3e                    ADD A,0x3e
CODE:318b  f5 82                    MOV DPL,A
CODE:318d  e4                       CLR A
CODE:318e  34 00                    ADDC A,#0x0
CODE:3190  f5 83                    MOV DPH,A
CODE:3192  e0                       MOVX A,@DPTR
CODE:3193  ff                       MOV R7,A
CODE:3194  74 ac                    MOV A,#0xac
CODE:3196  25 3e                    ADD A,0x3e
CODE:3198  f5 82                    MOV DPL,A
CODE:319a  e4                       CLR A
CODE:319b  34 00                    ADDC A,#0x0
CODE:319d  f5 83                    MOV DPH,A
CODE:319f  ef                       MOV A,R7
CODE:31a0  f0                       MOVX @DPTR,A
CODE:31a1  74 40                    MOV A,#0x40
CODE:31a3  25 3e                    ADD A,0x3e
CODE:31a5  f5 82                    MOV DPL,A
CODE:31a7  e4                       CLR A
CODE:31a8  34 01                    ADDC A,#0x1
CODE:31aa  f5 83                    MOV DPH,A
CODE:31ac  e0                       MOVX A,@DPTR
CODE:31ad  ff                       MOV R7,A
CODE:31ae  74 41                    MOV A,#0x41
CODE:31b0  25 3e                    ADD A,0x3e
CODE:31b2  f5 82                    MOV DPL,A
CODE:31b4  e4                       CLR A
CODE:31b5  34 01                    ADDC A,#0x1
CODE:31b7  f5 83                    MOV DPH,A
CODE:31b9  ef                       MOV A,R7
CODE:31ba  f0                       MOVX @DPTR,A
CODE:31bb  74 2d                    MOV A,#0x2d
CODE:31bd  25 3e                    ADD A,0x3e
CODE:31bf  f5 82                    MOV DPL,A
CODE:31c1  e4                       CLR A
CODE:31c2  34 00                    ADDC A,#0x0
CODE:31c4  f5 83                    MOV DPH,A
CODE:31c6  e0                       MOVX A,@DPTR
CODE:31c7  ff                       MOV R7,A
CODE:31c8  74 2e                    MOV A,#0x2e
CODE:31ca  25 3e                    ADD A,0x3e
CODE:31cc  f5 82                    MOV DPL,A
CODE:31ce  e4                       CLR A
CODE:31cf  34 00                    ADDC A,#0x0
CODE:31d1  f5 83                    MOV DPH,A
CODE:31d3  ef                       MOV A,R7
CODE:31d4  f0                       MOVX @DPTR,A
CODE:31d5  74 c2                    MOV A,#0xc2
CODE:31d7  25 3e                    ADD A,0x3e
CODE:31d9  f5 82                    MOV DPL,A
CODE:31db  e4                       CLR A
CODE:31dc  34 00                    ADDC A,#0x0
CODE:31de  f5 83                    MOV DPH,A
CODE:31e0  e0                       MOVX A,@DPTR
CODE:31e1  ff                       MOV R7,A
CODE:31e2  74 c3                    MOV A,#0xc3
CODE:31e4  25 3e                    ADD A,0x3e
CODE:31e6  f5 82                    MOV DPL,A
CODE:31e8  e4                       CLR A
CODE:31e9  34 00                    ADDC A,#0x0
CODE:31eb  f5 83                    MOV DPH,A
CODE:31ed  ef                       MOV A,R7
CODE:31ee  f0                       MOVX @DPTR,A
CODE:31ef  74 57                    MOV A,#0x57
CODE:31f1  25 3e                    ADD A,0x3e
CODE:31f3  f5 82                    MOV DPL,A
CODE:31f5  e4                       CLR A
CODE:31f6  34 01                    ADDC A,#0x1
CODE:31f8  f5 83                    MOV DPH,A
CODE:31fa  e0                       MOVX A,@DPTR
CODE:31fb  ff                       MOV R7,A
CODE:31fc  74 58                    MOV A,#0x58
CODE:31fe  25 3e                    ADD A,0x3e
CODE:3200  f5 82                    MOV DPL,A
CODE:3202  e4                       CLR A
CODE:3203  34 01                    ADDC A,#0x1
CODE:3205  f5 83                    MOV DPH,A
CODE:3207  ef                       MOV A,R7
CODE:3208  f0                       MOVX @DPTR,A
CODE:3209  74 44                    MOV A,#0x44
CODE:320b  25 3e                    ADD A,0x3e
CODE:320d  f5 82                    MOV DPL,A
CODE:320f  e4                       CLR A
CODE:3210  34 00                    ADDC A,#0x0
CODE:3212  f5 83                    MOV DPH,A
CODE:3214  e0                       MOVX A,@DPTR
CODE:3215  ff                       MOV R7,A
CODE:3216  74 45                    MOV A,#0x45
CODE:3218  25 3e                    ADD A,0x3e
CODE:321a  f5 82                    MOV DPL,A
CODE:321c  e4                       CLR A
CODE:321d  34 00                    ADDC A,#0x0
CODE:321f  f5 83                    MOV DPH,A
CODE:3221  ef                       MOV A,R7
CODE:3222  f0                       MOVX @DPTR,A
CODE:3223  74 d9                    MOV A,#0xd9
CODE:3225  25 3e                    ADD A,0x3e
CODE:3227  f5 82                    MOV DPL,A
CODE:3229  e4                       CLR A
CODE:322a  34 00                    ADDC A,#0x0
CODE:322c  f5 83                    MOV DPH,A
CODE:322e  e0                       MOVX A,@DPTR
CODE:322f  ff                       MOV R7,A
CODE:3230  74 da                    MOV A,#0xda
CODE:3232  25 3e                    ADD A,0x3e
CODE:3234  f5 82                    MOV DPL,A
CODE:3236  e4                       CLR A
CODE:3237  34 00                    ADDC A,#0x0
CODE:3239  f5 83                    MOV DPH,A
CODE:323b  ef                       MOV A,R7
CODE:323c  f0                       MOVX @DPTR,A
CODE:323d  74 6e                    MOV A,#0x6e
CODE:323f  25 3e                    ADD A,0x3e
CODE:3241  f5 82                    MOV DPL,A
CODE:3243  e4                       CLR A
CODE:3244  34 01                    ADDC A,#0x1
CODE:3246  f5 83                    MOV DPH,A
CODE:3248  e0                       MOVX A,@DPTR
CODE:3249  ff                       MOV R7,A
CODE:324a  74 6f                    MOV A,#0x6f
CODE:324c  25 3e                    ADD A,0x3e
CODE:324e  f5 82                    MOV DPL,A
CODE:3250  e4                       CLR A
CODE:3251  34 01                    ADDC A,#0x1
CODE:3253  f5 83                    MOV DPH,A
CODE:3255  ef                       MOV A,R7
CODE:3256  f0                       MOVX @DPTR,A
CODE:3257  74 5b                    MOV A,#0x5b
CODE:3259  25 3e                    ADD A,0x3e
CODE:325b  f5 82                    MOV DPL,A
CODE:325d  e4                       CLR A
CODE:325e  34 00                    ADDC A,#0x0
CODE:3260  f5 83                    MOV DPH,A
CODE:3262  e0                       MOVX A,@DPTR
CODE:3263  ff                       MOV R7,A
CODE:3264  74 5c                    MOV A,#0x5c
CODE:3266  25 3e                    ADD A,0x3e
CODE:3268  f5 82                    MOV DPL,A
CODE:326a  e4                       CLR A
CODE:326b  34 00                    ADDC A,#0x0
CODE:326d  f5 83                    MOV DPH,A
CODE:326f  ef                       MOV A,R7
CODE:3270  f0                       MOVX @DPTR,A
CODE:3271  74 f0                    MOV A,#0xf0
CODE:3273  25 3e                    ADD A,0x3e
CODE:3275  f5 82                    MOV DPL,A
CODE:3277  e4                       CLR A
CODE:3278  34 00                    ADDC A,#0x0
CODE:327a  f5 83                    MOV DPH,A
CODE:327c  e0                       MOVX A,@DPTR
CODE:327d  ff                       MOV R7,A
CODE:327e  74 f1                    MOV A,#0xf1
CODE:3280  25 3e                    ADD A,0x3e
CODE:3282  f5 82                    MOV DPL,A
CODE:3284  e4                       CLR A
CODE:3285  34 00                    ADDC A,#0x0
CODE:3287  f5 83                    MOV DPH,A
CODE:3289  ef                       MOV A,R7
CODE:328a  f0                       MOVX @DPTR,A
CODE:328b  74 85                    MOV A,#0x85
CODE:328d  25 3e                    ADD A,0x3e
CODE:328f  f5 82                    MOV DPL,A
CODE:3291  e4                       CLR A
CODE:3292  34 01                    ADDC A,#0x1
CODE:3294  f5 83                    MOV DPH,A
CODE:3296  e0                       MOVX A,@DPTR
CODE:3297  ff                       MOV R7,A
CODE:3298  74 86                    MOV A,#0x86
CODE:329a  25 3e                    ADD A,0x3e
CODE:329c  f5 82                    MOV DPL,A
CODE:329e  e4                       CLR A
CODE:329f  34 01                    ADDC A,#0x1
CODE:32a1  f5 83                    MOV DPH,A
CODE:32a3  ef                       MOV A,R7
CODE:32a4  f0                       MOVX @DPTR,A
CODE:32a5  74 72                    MOV A,#0x72
CODE:32a7  25 3e                    ADD A,0x3e
CODE:32a9  f5 82                    MOV DPL,A
CODE:32ab  e4                       CLR A
CODE:32ac  34 00                    ADDC A,#0x0
CODE:32ae  f5 83                    MOV DPH,A
CODE:32b0  e0                       MOVX A,@DPTR
CODE:32b1  ff                       MOV R7,A
CODE:32b2  74 73                    MOV A,#0x73
CODE:32b4  25 3e                    ADD A,0x3e
CODE:32b6  f5 82                    MOV DPL,A
CODE:32b8  e4                       CLR A
CODE:32b9  34 00                    ADDC A,#0x0
CODE:32bb  f5 83                    MOV DPH,A
CODE:32bd  ef                       MOV A,R7
CODE:32be  f0                       MOVX @DPTR,A
CODE:32bf  74 07                    MOV A,#0x7
CODE:32c1  25 3e                    ADD A,0x3e
CODE:32c3  f5 82                    MOV DPL,A
CODE:32c5  e4                       CLR A
CODE:32c6  34 01                    ADDC A,#0x1
CODE:32c8  f5 83                    MOV DPH,A
CODE:32ca  e0                       MOVX A,@DPTR
CODE:32cb  ff                       MOV R7,A
CODE:32cc  74 08                    MOV A,#0x8
CODE:32ce  25 3e                    ADD A,0x3e
CODE:32d0  f5 82                    MOV DPL,A
CODE:32d2  e4                       CLR A
CODE:32d3  34 01                    ADDC A,#0x1
CODE:32d5  f5 83                    MOV DPH,A
CODE:32d7  ef                       MOV A,R7
CODE:32d8  f0                       MOVX @DPTR,A
CODE:32d9  74 9c                    MOV A,#0x9c
CODE:32db  25 3e                    ADD A,0x3e
CODE:32dd  f5 82                    MOV DPL,A
CODE:32df  e4                       CLR A
CODE:32e0  34 01                    ADDC A,#0x1
CODE:32e2  f5 83                    MOV DPH,A
CODE:32e4  e0                       MOVX A,@DPTR
CODE:32e5  ff                       MOV R7,A
CODE:32e6  74 9d                    MOV A,#0x9d
CODE:32e8  25 3e                    ADD A,0x3e
CODE:32ea  f5 82                    MOV DPL,A
CODE:32ec  e4                       CLR A
CODE:32ed  34 01                    ADDC A,#0x1
CODE:32ef  f5 83                    MOV DPH,A
CODE:32f1  ef                       MOV A,R7
CODE:32f2  f0                       MOVX @DPTR,A
CODE:32f3  15 3e                    DEC 0x3e
CODE:32f5  e5 3e                    MOV A,0x3e
CODE:32f7  64 0c                    XRL A,#0xc
CODE:32f9  60 03                    JZ 0x32fe
CODE:32fb  02 31 1f                 LJMP 0x311f
LAB_CODE_32fe:
CODE:32fe  e4                       CLR A   ; XREF: CODE:32f9 
CODE:32ff  f5 3e                    MOV 0x3e,A
LAB_CODE_3301:
CODE:3301  74 01                    MOV A,#0x1   ; XREF: CODE:34dd 
CODE:3303  25 3e                    ADD A,0x3e
CODE:3305  f5 82                    MOV DPL,A
CODE:3307  e4                       CLR A
CODE:3308  34 00                    ADDC A,#0x0
CODE:330a  f5 83                    MOV DPH,A
CODE:330c  e0                       MOVX A,@DPTR
CODE:330d  ff                       MOV R7,A
CODE:330e  74 00                    MOV A,#0x0
CODE:3310  25 3e                    ADD A,0x3e
CODE:3312  f5 82                    MOV DPL,A
CODE:3314  e4                       CLR A
CODE:3315  34 00                    ADDC A,#0x0
CODE:3317  f5 83                    MOV DPH,A
CODE:3319  ef                       MOV A,R7
CODE:331a  f0                       MOVX @DPTR,A
CODE:331b  74 96                    MOV A,#0x96
CODE:331d  25 3e                    ADD A,0x3e
CODE:331f  f5 82                    MOV DPL,A
CODE:3321  e4                       CLR A
CODE:3322  34 00                    ADDC A,#0x0
CODE:3324  f5 83                    MOV DPH,A
CODE:3326  e0                       MOVX A,@DPTR
CODE:3327  ff                       MOV R7,A
CODE:3328  74 95                    MOV A,#0x95
CODE:332a  25 3e                    ADD A,0x3e
CODE:332c  f5 82                    MOV DPL,A
CODE:332e  e4                       CLR A
CODE:332f  34 00                    ADDC A,#0x0
CODE:3331  f5 83                    MOV DPH,A
CODE:3333  ef                       MOV A,R7
CODE:3334  f0                       MOVX @DPTR,A
CODE:3335  74 2b                    MOV A,#0x2b
CODE:3337  25 3e                    ADD A,0x3e
CODE:3339  f5 82                    MOV DPL,A
CODE:333b  e4                       CLR A
CODE:333c  34 01                    ADDC A,#0x1
CODE:333e  f5 83                    MOV DPH,A
CODE:3340  e0                       MOVX A,@DPTR
CODE:3341  ff                       MOV R7,A
CODE:3342  74 2a                    MOV A,#0x2a
CODE:3344  25 3e                    ADD A,0x3e
CODE:3346  f5 82                    MOV DPL,A
CODE:3348  e4                       CLR A
CODE:3349  34 01                    ADDC A,#0x1
CODE:334b  f5 83                    MOV DPH,A
CODE:334d  ef                       MOV A,R7
CODE:334e  f0                       MOVX @DPTR,A
CODE:334f  74 18                    MOV A,#0x18
CODE:3351  25 3e                    ADD A,0x3e
CODE:3353  f5 82                    MOV DPL,A
CODE:3355  e4                       CLR A
CODE:3356  34 00                    ADDC A,#0x0
CODE:3358  f5 83                    MOV DPH,A
CODE:335a  e0                       MOVX A,@DPTR
CODE:335b  ff                       MOV R7,A
CODE:335c  74 17                    MOV A,#0x17
CODE:335e  25 3e                    ADD A,0x3e
CODE:3360  f5 82                    MOV DPL,A
CODE:3362  e4                       CLR A
CODE:3363  34 00                    ADDC A,#0x0
CODE:3365  f5 83                    MOV DPH,A
CODE:3367  ef                       MOV A,R7
CODE:3368  f0                       MOVX @DPTR,A
CODE:3369  74 ad                    MOV A,#0xad
CODE:336b  25 3e                    ADD A,0x3e
CODE:336d  f5 82                    MOV DPL,A
CODE:336f  e4                       CLR A
CODE:3370  34 00                    ADDC A,#0x0
CODE:3372  f5 83                    MOV DPH,A
CODE:3374  e0                       MOVX A,@DPTR
CODE:3375  ff                       MOV R7,A
CODE:3376  74 ac                    MOV A,#0xac
CODE:3378  25 3e                    ADD A,0x3e
CODE:337a  f5 82                    MOV DPL,A
CODE:337c  e4                       CLR A
CODE:337d  34 00                    ADDC A,#0x0
CODE:337f  f5 83                    MOV DPH,A
CODE:3381  ef                       MOV A,R7
CODE:3382  f0                       MOVX @DPTR,A
CODE:3383  74 42                    MOV A,#0x42
CODE:3385  25 3e                    ADD A,0x3e
CODE:3387  f5 82                    MOV DPL,A
CODE:3389  e4                       CLR A
CODE:338a  34 01                    ADDC A,#0x1
CODE:338c  f5 83                    MOV DPH,A
CODE:338e  e0                       MOVX A,@DPTR
CODE:338f  ff                       MOV R7,A
CODE:3390  74 41                    MOV A,#0x41
CODE:3392  25 3e                    ADD A,0x3e
CODE:3394  f5 82                    MOV DPL,A
CODE:3396  e4                       CLR A
CODE:3397  34 01                    ADDC A,#0x1
CODE:3399  f5 83                    MOV DPH,A
CODE:339b  ef                       MOV A,R7
CODE:339c  f0                       MOVX @DPTR,A
CODE:339d  74 2f                    MOV A,#0x2f
CODE:339f  25 3e                    ADD A,0x3e
CODE:33a1  f5 82                    MOV DPL,A
CODE:33a3  e4                       CLR A
CODE:33a4  34 00                    ADDC A,#0x0
CODE:33a6  f5 83                    MOV DPH,A
CODE:33a8  e0                       MOVX A,@DPTR
CODE:33a9  ff                       MOV R7,A
CODE:33aa  74 2e                    MOV A,#0x2e
CODE:33ac  25 3e                    ADD A,0x3e
CODE:33ae  f5 82                    MOV DPL,A
CODE:33b0  e4                       CLR A
CODE:33b1  34 00                    ADDC A,#0x0
CODE:33b3  f5 83                    MOV DPH,A
CODE:33b5  ef                       MOV A,R7
CODE:33b6  f0                       MOVX @DPTR,A
CODE:33b7  74 c4                    MOV A,#0xc4
CODE:33b9  25 3e                    ADD A,0x3e
CODE:33bb  f5 82                    MOV DPL,A
CODE:33bd  e4                       CLR A
CODE:33be  34 00                    ADDC A,#0x0
CODE:33c0  f5 83                    MOV DPH,A
CODE:33c2  e0                       MOVX A,@DPTR
CODE:33c3  ff                       MOV R7,A
CODE:33c4  74 c3                    MOV A,#0xc3
CODE:33c6  25 3e                    ADD A,0x3e
CODE:33c8  f5 82                    MOV DPL,A
CODE:33ca  e4                       CLR A
CODE:33cb  34 00                    ADDC A,#0x0
CODE:33cd  f5 83                    MOV DPH,A
CODE:33cf  ef                       MOV A,R7
CODE:33d0  f0                       MOVX @DPTR,A
CODE:33d1  74 59                    MOV A,#0x59
CODE:33d3  25 3e                    ADD A,0x3e
CODE:33d5  f5 82                    MOV DPL,A
CODE:33d7  e4                       CLR A
CODE:33d8  34 01                    ADDC A,#0x1
CODE:33da  f5 83                    MOV DPH,A
CODE:33dc  e0                       MOVX A,@DPTR
CODE:33dd  ff                       MOV R7,A
CODE:33de  74 58                    MOV A,#0x58
CODE:33e0  25 3e                    ADD A,0x3e
CODE:33e2  f5 82                    MOV DPL,A
CODE:33e4  e4                       CLR A
CODE:33e5  34 01                    ADDC A,#0x1
CODE:33e7  f5 83                    MOV DPH,A
CODE:33e9  ef                       MOV A,R7
CODE:33ea  f0                       MOVX @DPTR,A
CODE:33eb  74 46                    MOV A,#0x46
CODE:33ed  25 3e                    ADD A,0x3e
CODE:33ef  f5 82                    MOV DPL,A
CODE:33f1  e4                       CLR A
CODE:33f2  34 00                    ADDC A,#0x0
CODE:33f4  f5 83                    MOV DPH,A
CODE:33f6  e0                       MOVX A,@DPTR
CODE:33f7  ff                       MOV R7,A
CODE:33f8  74 45                    MOV A,#0x45
CODE:33fa  25 3e                    ADD A,0x3e
CODE:33fc  f5 82                    MOV DPL,A
CODE:33fe  e4                       CLR A
CODE:33ff  34 00                    ADDC A,#0x0
CODE:3401  f5 83                    MOV DPH,A
CODE:3403  ef                       MOV A,R7
CODE:3404  f0                       MOVX @DPTR,A
CODE:3405  74 db                    MOV A,#0xdb
CODE:3407  25 3e                    ADD A,0x3e
CODE:3409  f5 82                    MOV DPL,A
CODE:340b  e4                       CLR A
CODE:340c  34 00                    ADDC A,#0x0
CODE:340e  f5 83                    MOV DPH,A
CODE:3410  e0                       MOVX A,@DPTR
CODE:3411  ff                       MOV R7,A
CODE:3412  74 da                    MOV A,#0xda
CODE:3414  25 3e                    ADD A,0x3e
CODE:3416  f5 82                    MOV DPL,A
CODE:3418  e4                       CLR A
CODE:3419  34 00                    ADDC A,#0x0
CODE:341b  f5 83                    MOV DPH,A
CODE:341d  ef                       MOV A,R7
CODE:341e  f0                       MOVX @DPTR,A
CODE:341f  74 70                    MOV A,#0x70
CODE:3421  25 3e                    ADD A,0x3e
CODE:3423  f5 82                    MOV DPL,A
CODE:3425  e4                       CLR A
CODE:3426  34 01                    ADDC A,#0x1
CODE:3428  f5 83                    MOV DPH,A
CODE:342a  e0                       MOVX A,@DPTR
CODE:342b  ff                       MOV R7,A
CODE:342c  74 6f                    MOV A,#0x6f
CODE:342e  25 3e                    ADD A,0x3e
CODE:3430  f5 82                    MOV DPL,A
CODE:3432  e4                       CLR A
CODE:3433  34 01                    ADDC A,#0x1
CODE:3435  f5 83                    MOV DPH,A
CODE:3437  ef                       MOV A,R7
CODE:3438  f0                       MOVX @DPTR,A
CODE:3439  74 5d                    MOV A,#0x5d
CODE:343b  25 3e                    ADD A,0x3e
CODE:343d  f5 82                    MOV DPL,A
CODE:343f  e4                       CLR A
CODE:3440  34 00                    ADDC A,#0x0
CODE:3442  f5 83                    MOV DPH,A
CODE:3444  e0                       MOVX A,@DPTR
CODE:3445  ff                       MOV R7,A
CODE:3446  74 5c                    MOV A,#0x5c
CODE:3448  25 3e                    ADD A,0x3e
CODE:344a  f5 82                    MOV DPL,A
CODE:344c  e4                       CLR A
CODE:344d  34 00                    ADDC A,#0x0
CODE:344f  f5 83                    MOV DPH,A
CODE:3451  ef                       MOV A,R7
CODE:3452  f0                       MOVX @DPTR,A
CODE:3453  74 f2                    MOV A,#0xf2
CODE:3455  25 3e                    ADD A,0x3e
CODE:3457  f5 82                    MOV DPL,A
CODE:3459  e4                       CLR A
CODE:345a  34 00                    ADDC A,#0x0
CODE:345c  f5 83                    MOV DPH,A
CODE:345e  e0                       MOVX A,@DPTR
CODE:345f  ff                       MOV R7,A
CODE:3460  74 f1                    MOV A,#0xf1
CODE:3462  25 3e                    ADD A,0x3e
CODE:3464  f5 82                    MOV DPL,A
CODE:3466  e4                       CLR A
CODE:3467  34 00                    ADDC A,#0x0
CODE:3469  f5 83                    MOV DPH,A
CODE:346b  ef                       MOV A,R7
CODE:346c  f0                       MOVX @DPTR,A
CODE:346d  74 87                    MOV A,#0x87
CODE:346f  25 3e                    ADD A,0x3e
CODE:3471  f5 82                    MOV DPL,A
CODE:3473  e4                       CLR A
CODE:3474  34 01                    ADDC A,#0x1
CODE:3476  f5 83                    MOV DPH,A
CODE:3478  e0                       MOVX A,@DPTR
CODE:3479  ff                       MOV R7,A
CODE:347a  74 86                    MOV A,#0x86
CODE:347c  25 3e                    ADD A,0x3e
CODE:347e  f5 82                    MOV DPL,A
CODE:3480  e4                       CLR A
CODE:3481  34 01                    ADDC A,#0x1
CODE:3483  f5 83                    MOV DPH,A
CODE:3485  ef                       MOV A,R7
CODE:3486  f0                       MOVX @DPTR,A
CODE:3487  74 74                    MOV A,#0x74
CODE:3489  25 3e                    ADD A,0x3e
CODE:348b  f5 82                    MOV DPL,A
CODE:348d  e4                       CLR A
CODE:348e  34 00                    ADDC A,#0x0
CODE:3490  f5 83                    MOV DPH,A
CODE:3492  e0                       MOVX A,@DPTR
CODE:3493  ff                       MOV R7,A
CODE:3494  74 73                    MOV A,#0x73
CODE:3496  25 3e                    ADD A,0x3e
CODE:3498  f5 82                    MOV DPL,A
CODE:349a  e4                       CLR A
CODE:349b  34 00                    ADDC A,#0x0
CODE:349d  f5 83                    MOV DPH,A
CODE:349f  ef                       MOV A,R7
CODE:34a0  f0                       MOVX @DPTR,A
CODE:34a1  74 09                    MOV A,#0x9
CODE:34a3  25 3e                    ADD A,0x3e
CODE:34a5  f5 82                    MOV DPL,A
CODE:34a7  e4                       CLR A
CODE:34a8  34 01                    ADDC A,#0x1
CODE:34aa  f5 83                    MOV DPH,A
CODE:34ac  e0                       MOVX A,@DPTR
CODE:34ad  ff                       MOV R7,A
CODE:34ae  74 08                    MOV A,#0x8
CODE:34b0  25 3e                    ADD A,0x3e
CODE:34b2  f5 82                    MOV DPL,A
CODE:34b4  e4                       CLR A
CODE:34b5  34 01                    ADDC A,#0x1
CODE:34b7  f5 83                    MOV DPH,A
CODE:34b9  ef                       MOV A,R7
CODE:34ba  f0                       MOVX @DPTR,A
CODE:34bb  74 9e                    MOV A,#0x9e
CODE:34bd  25 3e                    ADD A,0x3e
CODE:34bf  f5 82                    MOV DPL,A
CODE:34c1  e4                       CLR A
CODE:34c2  34 01                    ADDC A,#0x1
CODE:34c4  f5 83                    MOV DPH,A
CODE:34c6  e0                       MOVX A,@DPTR
CODE:34c7  ff                       MOV R7,A
CODE:34c8  74 9d                    MOV A,#0x9d
CODE:34ca  25 3e                    ADD A,0x3e
CODE:34cc  f5 82                    MOV DPL,A
CODE:34ce  e4                       CLR A
CODE:34cf  34 01                    ADDC A,#0x1
CODE:34d1  f5 83                    MOV DPH,A
CODE:34d3  ef                       MOV A,R7
CODE:34d4  f0                       MOVX @DPTR,A
CODE:34d5  05 3e                    INC 0x3e
CODE:34d7  e5 3e                    MOV A,0x3e
CODE:34d9  64 0b                    XRL A,#0xb
CODE:34db  60 03                    JZ 0x34e0
CODE:34dd  02 33 01                 LJMP 0x3301
LAB_CODE_34e0:
CODE:34e0  90 00 0c                 MOV DPTR,#0xc   ; XREF: CODE:34db 
CODE:34e3  74 ff                    MOV A,#0xff
CODE:34e5  f0                       MOVX @DPTR,A
CODE:34e6  90 00 a1                 MOV DPTR,#0xa1
CODE:34e9  f0                       MOVX @DPTR,A
CODE:34ea  90 01 36                 MOV DPTR,#0x136
CODE:34ed  f0                       MOVX @DPTR,A
CODE:34ee  90 00 23                 MOV DPTR,#0x23
CODE:34f1  f0                       MOVX @DPTR,A
CODE:34f2  90 00 b8                 MOV DPTR,#0xb8
CODE:34f5  f0                       MOVX @DPTR,A
CODE:34f6  90 01 4d                 MOV DPTR,#0x14d
CODE:34f9  f0                       MOVX @DPTR,A
CODE:34fa  90 00 3a                 MOV DPTR,#0x3a
CODE:34fd  f0                       MOVX @DPTR,A
CODE:34fe  90 00 cf                 MOV DPTR,#0xcf
CODE:3501  f0                       MOVX @DPTR,A
CODE:3502  90 01 64                 MOV DPTR,#0x164
CODE:3505  f0                       MOVX @DPTR,A
CODE:3506  90 00 51                 MOV DPTR,#0x51
CODE:3509  f0                       MOVX @DPTR,A
CODE:350a  90 00 e6                 MOV DPTR,#0xe6
CODE:350d  f0                       MOVX @DPTR,A
CODE:350e  90 01 7b                 MOV DPTR,#0x17b
CODE:3511  f0                       MOVX @DPTR,A
CODE:3512  90 00 68                 MOV DPTR,#0x68
CODE:3515  f0                       MOVX @DPTR,A
CODE:3516  90 00 fd                 MOV DPTR,#0xfd
CODE:3519  f0                       MOVX @DPTR,A
CODE:351a  90 01 92                 MOV DPTR,#0x192
CODE:351d  f0                       MOVX @DPTR,A
CODE:351e  90 00 7f                 MOV DPTR,#0x7f
CODE:3521  f0                       MOVX @DPTR,A
CODE:3522  90 01 14                 MOV DPTR,#0x114
CODE:3525  f0                       MOVX @DPTR,A
CODE:3526  90 01 a9                 MOV DPTR,#0x1a9
CODE:3529  f0                       MOVX @DPTR,A
CODE:352a  90 00 0b                 MOV DPTR,#0xb
CODE:352d  f0                       MOVX @DPTR,A
CODE:352e  90 00 a0                 MOV DPTR,#0xa0
CODE:3531  f0                       MOVX @DPTR,A
CODE:3532  90 01 35                 MOV DPTR,#0x135
CODE:3535  f0                       MOVX @DPTR,A
CODE:3536  90 00 22                 MOV DPTR,#0x22
CODE:3539  f0                       MOVX @DPTR,A
CODE:353a  90 00 b7                 MOV DPTR,#0xb7
CODE:353d  f0                       MOVX @DPTR,A
CODE:353e  90 01 4c                 MOV DPTR,#0x14c
CODE:3541  f0                       MOVX @DPTR,A
CODE:3542  90 00 39                 MOV DPTR,#0x39
CODE:3545  f0                       MOVX @DPTR,A
CODE:3546  90 00 ce                 MOV DPTR,#0xce
CODE:3549  f0                       MOVX @DPTR,A
CODE:354a  90 01 63                 MOV DPTR,#0x163
CODE:354d  f0                       MOVX @DPTR,A
CODE:354e  90 00 50                 MOV DPTR,#0x50
CODE:3551  f0                       MOVX @DPTR,A
CODE:3552  90 00 e5                 MOV DPTR,#0xe5
CODE:3555  f0                       MOVX @DPTR,A
CODE:3556  90 01 7a                 MOV DPTR,#0x17a
CODE:3559  f0                       MOVX @DPTR,A
CODE:355a  90 00 67                 MOV DPTR,#0x67
CODE:355d  f0                       MOVX @DPTR,A
CODE:355e  90 00 fc                 MOV DPTR,#0xfc
CODE:3561  f0                       MOVX @DPTR,A
CODE:3562  90 01 91                 MOV DPTR,#0x191
CODE:3565  f0                       MOVX @DPTR,A
CODE:3566  90 00 7e                 MOV DPTR,#0x7e
CODE:3569  f0                       MOVX @DPTR,A
CODE:356a  90 01 13                 MOV DPTR,#0x113
CODE:356d  f0                       MOVX @DPTR,A
CODE:356e  90 01 a8                 MOV DPTR,#0x1a8
CODE:3571  f0                       MOVX @DPTR,A
CODE:3572  78 5e                    MOV R0,#0x5e
CODE:3574  e6                       MOV A,@R0
CODE:3575  ff                       MOV R7,A
CODE:3576  75 f0 17                 MOV B,#0x17
CODE:3579  a4                       MUL AB
CODE:357a  24 0c                    ADD A,#0xc
CODE:357c  f5 82                    MOV DPL,A
CODE:357e  e4                       CLR A
CODE:357f  34 00                    ADDC A,#0x0
CODE:3581  f5 83                    MOV DPH,A
CODE:3583  e5 3f                    MOV A,0x3f
CODE:3585  f0                       MOVX @DPTR,A
CODE:3586  ef                       MOV A,R7
CODE:3587  75 f0 17                 MOV B,#0x17
CODE:358a  a4                       MUL AB
CODE:358b  24 a1                    ADD A,#0xa1
CODE:358d  f5 82                    MOV DPL,A
CODE:358f  e4                       CLR A
CODE:3590  34 00                    ADDC A,#0x0
CODE:3592  f5 83                    MOV DPH,A
CODE:3594  e5 40                    MOV A,0x40
CODE:3596  f0                       MOVX @DPTR,A
CODE:3597  ef                       MOV A,R7
CODE:3598  75 f0 17                 MOV B,#0x17
CODE:359b  a4                       MUL AB
CODE:359c  24 36                    ADD A,#0x36
CODE:359e  f5 82                    MOV DPL,A
CODE:35a0  e4                       CLR A
CODE:35a1  34 01                    ADDC A,#0x1
CODE:35a3  f5 83                    MOV DPH,A
CODE:35a5  e5 41                    MOV A,0x41
CODE:35a7  f0                       MOVX @DPTR,A
CODE:35a8  ef                       MOV A,R7
CODE:35a9  75 f0 17                 MOV B,#0x17
CODE:35ac  a4                       MUL AB
CODE:35ad  24 0b                    ADD A,#0xb
CODE:35af  f5 82                    MOV DPL,A
CODE:35b1  e4                       CLR A
CODE:35b2  34 00                    ADDC A,#0x0
CODE:35b4  f5 83                    MOV DPH,A
CODE:35b6  e5 3f                    MOV A,0x3f
CODE:35b8  f0                       MOVX @DPTR,A
CODE:35b9  ef                       MOV A,R7
CODE:35ba  75 f0 17                 MOV B,#0x17
CODE:35bd  a4                       MUL AB
CODE:35be  24 a0                    ADD A,#0xa0
CODE:35c0  f5 82                    MOV DPL,A
CODE:35c2  e4                       CLR A
CODE:35c3  34 00                    ADDC A,#0x0
CODE:35c5  f5 83                    MOV DPH,A
CODE:35c7  e5 40                    MOV A,0x40
CODE:35c9  f0                       MOVX @DPTR,A
CODE:35ca  ef                       MOV A,R7
CODE:35cb  75 f0 17                 MOV B,#0x17
CODE:35ce  a4                       MUL AB
CODE:35cf  24 35                    ADD A,#0x35
CODE:35d1  f5 82                    MOV DPL,A
CODE:35d3  e4                       CLR A
CODE:35d4  34 01                    ADDC A,#0x1
CODE:35d6  f5 83                    MOV DPH,A
CODE:35d8  e5 41                    MOV A,0x41
CODE:35da  f0                       MOVX @DPTR,A
CODE:35db  20 25 0b                 JB 0x25,0x35e9
CODE:35de  06                       INC @R0
CODE:35df  e6                       MOV A,@R0
CODE:35e0  c3                       CLR CY
CODE:35e1  94 05                    SUBB A,#0x5
CODE:35e3  40 11                    JC 0x35f6
CODE:35e5  d2 25                    SETB 0x25
CODE:35e7  80 0d                    SJMP 0x35f6
LAB_CODE_35e9:
CODE:35e9  78 5e                    MOV R0,#0x5e   ; XREF: CODE:35db 
CODE:35eb  e6                       MOV A,@R0
CODE:35ec  d3                       SETB CY
CODE:35ed  94 00                    SUBB A,#0x0
CODE:35ef  40 03                    JC 0x35f4
CODE:35f1  16                       DEC @R0
CODE:35f2  80 02                    SJMP 0x35f6
LAB_CODE_35f4:
CODE:35f4  c2 25                    CLR 0x25   ; XREF: CODE:35ef 
LAB_CODE_35f6:
CODE:35f6  05 1c                    INC 0x1c   ; XREF: CODE:35e3 CODE:35e7 CODE:35f2 
CODE:35f8  e5 1c                    MOV A,0x1c
CODE:35fa  d3                       SETB CY
CODE:35fb  94 06                    SUBB A,#0x6
CODE:35fd  50 03                    JNC 0x3602
CODE:35ff  02 38 aa                 LJMP 0x38aa
LAB_CODE_3602:
CODE:3602  02 38 a7                 LJMP 0x38a7   ; XREF: CODE:35fd 
LAB_CODE_3605:
CODE:3605  ed                       MOV A,R5   ; XREF: CODE:3093 
CODE:3606  64 08                    XRL A,#0x8
CODE:3608  60 03                    JZ 0x360d
CODE:360a  02 37 e6                 LJMP 0x37e6
LAB_CODE_360d:
CODE:360d  78 57                    MOV R0,#0x57   ; XREF: CODE:3608 
CODE:360f  06                       INC @R0
CODE:3610  c3                       CLR CY
CODE:3611  74 05                    MOV A,#0x5
CODE:3613  78 77                    MOV R0,#0x77
CODE:3615  96                       SUBB A,@R0
CODE:3616  ff                       MOV R7,A
CODE:3617  78 57                    MOV R0,#0x57
CODE:3619  e6                       MOV A,@R0
CODE:361a  d3                       SETB CY
CODE:361b  9f                       SUBB A,R7
CODE:361c  50 03                    JNC 0x3621
CODE:361e  02 38 aa                 LJMP 0x38aa
LAB_CODE_3621:
CODE:3621  e4                       CLR A   ; XREF: CODE:361c 
CODE:3622  f6                       MOV @R0,A
CODE:3623  78 5b                    MOV R0,#0x5b
CODE:3625  e6                       MOV A,@R0
CODE:3626  fd                       MOV R5,A
CODE:3627  08                       INC R0
CODE:3628  e6                       MOV A,@R0
CODE:3629  fb                       MOV R3,A
CODE:362a  08                       INC R0
CODE:362b  e6                       MOV A,@R0
CODE:362c  f5 46                    MOV 0x46,A
CODE:362e  af 1e                    MOV R7,0x1e
CODE:3630  12 80 7b                 LCALL 0x807b
CODE:3633  e5 1e                    MOV A,0x1e
CODE:3635  24 0a                    ADD A,#0xa
CODE:3637  ff                       MOV R7,A
CODE:3638  e4                       CLR A
CODE:3639  33                       RLC A
CODE:363a  fe                       MOV R6,A
CODE:363b  d3                       SETB CY
CODE:363c  ef                       MOV A,R7
CODE:363d  94 89                    SUBB A,#0x89
CODE:363f  ee                       MOV A,R6
CODE:3640  64 80                    XRL A,#0x80
CODE:3642  94 80                    SUBB A,#0x80
CODE:3644  e5 1e                    MOV A,0x1e
CODE:3646  40 04                    JC 0x364c
CODE:3648  24 81                    ADD A,#0x81
CODE:364a  80 02                    SJMP 0x364e
LAB_CODE_364c:
CODE:364c  24 0a                    ADD A,#0xa   ; XREF: CODE:3646 
LAB_CODE_364e:
CODE:364e  ff                       MOV R7,A   ; XREF: CODE:364a 
CODE:364f  78 5b                    MOV R0,#0x5b
CODE:3651  e6                       MOV A,@R0
CODE:3652  24 0a                    ADD A,#0xa
CODE:3654  fd                       MOV R5,A
CODE:3655  08                       INC R0
CODE:3656  e6                       MOV A,@R0
CODE:3657  24 14                    ADD A,#0x14
CODE:3659  fb                       MOV R3,A
CODE:365a  08                       INC R0
CODE:365b  e6                       MOV A,@R0
CODE:365c  24 1e                    ADD A,#0x1e
CODE:365e  f5 46                    MOV 0x46,A
CODE:3660  12 80 7b                 LCALL 0x807b
CODE:3663  e5 1e                    MOV A,0x1e
CODE:3665  24 14                    ADD A,#0x14
CODE:3667  ff                       MOV R7,A
CODE:3668  e4                       CLR A
CODE:3669  33                       RLC A
CODE:366a  fe                       MOV R6,A
CODE:366b  d3                       SETB CY
CODE:366c  ef                       MOV A,R7
CODE:366d  94 89                    SUBB A,#0x89
CODE:366f  ee                       MOV A,R6
CODE:3670  64 80                    XRL A,#0x80
CODE:3672  94 80                    SUBB A,#0x80
CODE:3674  e5 1e                    MOV A,0x1e
CODE:3676  40 04                    JC 0x367c
CODE:3678  24 8b                    ADD A,#0x8b
CODE:367a  80 02                    SJMP 0x367e
LAB_CODE_367c:
CODE:367c  24 14                    ADD A,#0x14   ; XREF: CODE:3676 
LAB_CODE_367e:
CODE:367e  ff                       MOV R7,A   ; XREF: CODE:367a 
CODE:367f  78 5b                    MOV R0,#0x5b
CODE:3681  e6                       MOV A,@R0
CODE:3682  24 28                    ADD A,#0x28
CODE:3684  fd                       MOV R5,A
CODE:3685  08                       INC R0
CODE:3686  e6                       MOV A,@R0
CODE:3687  24 1e                    ADD A,#0x1e
CODE:3689  fb                       MOV R3,A
CODE:368a  08                       INC R0
CODE:368b  e6                       MOV A,@R0
CODE:368c  24 14                    ADD A,#0x14
CODE:368e  f5 46                    MOV 0x46,A
CODE:3690  12 80 7b                 LCALL 0x807b
CODE:3693  e5 1e                    MOV A,0x1e
CODE:3695  24 1e                    ADD A,#0x1e
CODE:3697  ff                       MOV R7,A
CODE:3698  e4                       CLR A
CODE:3699  33                       RLC A
CODE:369a  fe                       MOV R6,A
CODE:369b  d3                       SETB CY
CODE:369c  ef                       MOV A,R7
CODE:369d  94 89                    SUBB A,#0x89
CODE:369f  ee                       MOV A,R6
CODE:36a0  64 80                    XRL A,#0x80
CODE:36a2  94 80                    SUBB A,#0x80
CODE:36a4  e5 1e                    MOV A,0x1e
CODE:36a6  40 04                    JC 0x36ac
CODE:36a8  24 95                    ADD A,#0x95
CODE:36aa  80 02                    SJMP 0x36ae
LAB_CODE_36ac:
CODE:36ac  24 1e                    ADD A,#0x1e   ; XREF: CODE:36a6 
LAB_CODE_36ae:
CODE:36ae  ff                       MOV R7,A   ; XREF: CODE:36aa 
CODE:36af  78 5b                    MOV R0,#0x5b
CODE:36b1  e6                       MOV A,@R0
CODE:36b2  24 1e                    ADD A,#0x1e
CODE:36b4  fd                       MOV R5,A
CODE:36b5  08                       INC R0
CODE:36b6  e6                       MOV A,@R0
CODE:36b7  24 28                    ADD A,#0x28
CODE:36b9  fb                       MOV R3,A
CODE:36ba  08                       INC R0
CODE:36bb  e6                       MOV A,@R0
CODE:36bc  24 32                    ADD A,#0x32
CODE:36be  f5 46                    MOV 0x46,A
CODE:36c0  12 80 7b                 LCALL 0x807b
CODE:36c3  e5 1e                    MOV A,0x1e
CODE:36c5  24 28                    ADD A,#0x28
CODE:36c7  ff                       MOV R7,A
CODE:36c8  e4                       CLR A
CODE:36c9  33                       RLC A
CODE:36ca  fe                       MOV R6,A
CODE:36cb  d3                       SETB CY
CODE:36cc  ef                       MOV A,R7
CODE:36cd  94 89                    SUBB A,#0x89
CODE:36cf  ee                       MOV A,R6
CODE:36d0  64 80                    XRL A,#0x80
CODE:36d2  94 80                    SUBB A,#0x80
CODE:36d4  e5 1e                    MOV A,0x1e
CODE:36d6  40 04                    JC 0x36dc
CODE:36d8  24 9f                    ADD A,#0x9f
CODE:36da  80 02                    SJMP 0x36de
LAB_CODE_36dc:
CODE:36dc  24 28                    ADD A,#0x28   ; XREF: CODE:36d6 
LAB_CODE_36de:
CODE:36de  ff                       MOV R7,A   ; XREF: CODE:36da 
CODE:36df  78 5b                    MOV R0,#0x5b
CODE:36e1  e6                       MOV A,@R0
CODE:36e2  24 3c                    ADD A,#0x3c
CODE:36e4  fd                       MOV R5,A
CODE:36e5  08                       INC R0
CODE:36e6  e6                       MOV A,@R0
CODE:36e7  24 32                    ADD A,#0x32
CODE:36e9  fb                       MOV R3,A
CODE:36ea  08                       INC R0
CODE:36eb  e6                       MOV A,@R0
CODE:36ec  24 28                    ADD A,#0x28
CODE:36ee  f5 46                    MOV 0x46,A
CODE:36f0  12 80 7b                 LCALL 0x807b
CODE:36f3  e5 1e                    MOV A,0x1e
CODE:36f5  24 32                    ADD A,#0x32
CODE:36f7  ff                       MOV R7,A
CODE:36f8  e4                       CLR A
CODE:36f9  33                       RLC A
CODE:36fa  fe                       MOV R6,A
CODE:36fb  d3                       SETB CY
CODE:36fc  ef                       MOV A,R7
CODE:36fd  94 89                    SUBB A,#0x89
CODE:36ff  ee                       MOV A,R6
CODE:3700  64 80                    XRL A,#0x80
CODE:3702  94 80                    SUBB A,#0x80
CODE:3704  e5 1e                    MOV A,0x1e
CODE:3706  40 04                    JC 0x370c
CODE:3708  24 a9                    ADD A,#0xa9
CODE:370a  80 02                    SJMP 0x370e
LAB_CODE_370c:
CODE:370c  24 32                    ADD A,#0x32   ; XREF: CODE:3706 
LAB_CODE_370e:
CODE:370e  ff                       MOV R7,A   ; XREF: CODE:370a 
CODE:370f  78 5b                    MOV R0,#0x5b
CODE:3711  e6                       MOV A,@R0
CODE:3712  24 32                    ADD A,#0x32
CODE:3714  fd                       MOV R5,A
CODE:3715  08                       INC R0
CODE:3716  e6                       MOV A,@R0
CODE:3717  24 3c                    ADD A,#0x3c
CODE:3719  fb                       MOV R3,A
CODE:371a  08                       INC R0
CODE:371b  e6                       MOV A,@R0
CODE:371c  24 46                    ADD A,#0x46
CODE:371e  f5 46                    MOV 0x46,A
CODE:3720  12 80 7b                 LCALL 0x807b
CODE:3723  e5 1e                    MOV A,0x1e
CODE:3725  24 3c                    ADD A,#0x3c
CODE:3727  ff                       MOV R7,A
CODE:3728  e4                       CLR A
CODE:3729  33                       RLC A
CODE:372a  fe                       MOV R6,A
CODE:372b  d3                       SETB CY
CODE:372c  ef                       MOV A,R7
CODE:372d  94 89                    SUBB A,#0x89
CODE:372f  ee                       MOV A,R6
CODE:3730  64 80                    XRL A,#0x80
CODE:3732  94 80                    SUBB A,#0x80
CODE:3734  e5 1e                    MOV A,0x1e
CODE:3736  40 04                    JC 0x373c
CODE:3738  24 b3                    ADD A,#0xb3
CODE:373a  80 02                    SJMP 0x373e
LAB_CODE_373c:
CODE:373c  24 3c                    ADD A,#0x3c   ; XREF: CODE:3736 
LAB_CODE_373e:
CODE:373e  ff                       MOV R7,A   ; XREF: CODE:373a 
CODE:373f  78 5b                    MOV R0,#0x5b
CODE:3741  e6                       MOV A,@R0
CODE:3742  24 50                    ADD A,#0x50
CODE:3744  fd                       MOV R5,A
CODE:3745  08                       INC R0
CODE:3746  e6                       MOV A,@R0
CODE:3747  24 46                    ADD A,#0x46
CODE:3749  fb                       MOV R3,A
CODE:374a  08                       INC R0
CODE:374b  e6                       MOV A,@R0
CODE:374c  24 3c                    ADD A,#0x3c
CODE:374e  f5 46                    MOV 0x46,A
CODE:3750  12 80 7b                 LCALL 0x807b
CODE:3753  e5 1e                    MOV A,0x1e
CODE:3755  24 46                    ADD A,#0x46
CODE:3757  ff                       MOV R7,A
CODE:3758  e4                       CLR A
CODE:3759  33                       RLC A
CODE:375a  fe                       MOV R6,A
CODE:375b  d3                       SETB CY
CODE:375c  ef                       MOV A,R7
CODE:375d  94 89                    SUBB A,#0x89
CODE:375f  ee                       MOV A,R6
CODE:3760  64 80                    XRL A,#0x80
CODE:3762  94 80                    SUBB A,#0x80
CODE:3764  e5 1e                    MOV A,0x1e
CODE:3766  40 04                    JC 0x376c
CODE:3768  24 bd                    ADD A,#0xbd
CODE:376a  80 02                    SJMP 0x376e
LAB_CODE_376c:
CODE:376c  24 46                    ADD A,#0x46   ; XREF: CODE:3766 
LAB_CODE_376e:
CODE:376e  ff                       MOV R7,A   ; XREF: CODE:376a 
CODE:376f  78 5b                    MOV R0,#0x5b
CODE:3771  e6                       MOV A,@R0
CODE:3772  24 46                    ADD A,#0x46
CODE:3774  fd                       MOV R5,A
CODE:3775  08                       INC R0
CODE:3776  e6                       MOV A,@R0
CODE:3777  24 50                    ADD A,#0x50
CODE:3779  fb                       MOV R3,A
CODE:377a  08                       INC R0
CODE:377b  e6                       MOV A,@R0
CODE:377c  24 5a                    ADD A,#0x5a
CODE:377e  f5 46                    MOV 0x46,A
CODE:3780  12 80 7b                 LCALL 0x807b
CODE:3783  e5 1e                    MOV A,0x1e
CODE:3785  24 50                    ADD A,#0x50
CODE:3787  ff                       MOV R7,A
CODE:3788  e4                       CLR A
CODE:3789  33                       RLC A
CODE:378a  fe                       MOV R6,A
CODE:378b  d3                       SETB CY
CODE:378c  ef                       MOV A,R7
CODE:378d  94 89                    SUBB A,#0x89
CODE:378f  ee                       MOV A,R6
CODE:3790  64 80                    XRL A,#0x80
CODE:3792  94 80                    SUBB A,#0x80
CODE:3794  e5 1e                    MOV A,0x1e
CODE:3796  40 04                    JC 0x379c
CODE:3798  24 c7                    ADD A,#0xc7
CODE:379a  80 02                    SJMP 0x379e
LAB_CODE_379c:
CODE:379c  24 50                    ADD A,#0x50   ; XREF: CODE:3796 
LAB_CODE_379e:
CODE:379e  ff                       MOV R7,A   ; XREF: CODE:379a 
CODE:379f  78 5b                    MOV R0,#0x5b
CODE:37a1  e6                       MOV A,@R0
CODE:37a2  24 64                    ADD A,#0x64
CODE:37a4  fd                       MOV R5,A
CODE:37a5  08                       INC R0
CODE:37a6  e6                       MOV A,@R0
CODE:37a7  24 5a                    ADD A,#0x5a
CODE:37a9  fb                       MOV R3,A
CODE:37aa  08                       INC R0
CODE:37ab  e6                       MOV A,@R0
CODE:37ac  24 50                    ADD A,#0x50
CODE:37ae  f5 46                    MOV 0x46,A
CODE:37b0  12 80 7b                 LCALL 0x807b
CODE:37b3  e5 1e                    MOV A,0x1e
CODE:37b5  24 5a                    ADD A,#0x5a
CODE:37b7  ff                       MOV R7,A
CODE:37b8  e4                       CLR A
CODE:37b9  33                       RLC A
CODE:37ba  fe                       MOV R6,A
CODE:37bb  d3                       SETB CY
CODE:37bc  ef                       MOV A,R7
CODE:37bd  94 89                    SUBB A,#0x89
CODE:37bf  ee                       MOV A,R6
CODE:37c0  64 80                    XRL A,#0x80
CODE:37c2  94 80                    SUBB A,#0x80
CODE:37c4  e5 1e                    MOV A,0x1e
CODE:37c6  40 04                    JC 0x37cc
CODE:37c8  24 d1                    ADD A,#0xd1
CODE:37ca  80 02                    SJMP 0x37ce
LAB_CODE_37cc:
CODE:37cc  24 5a                    ADD A,#0x5a   ; XREF: CODE:37c6 
LAB_CODE_37ce:
CODE:37ce  ff                       MOV R7,A   ; XREF: CODE:37ca 
CODE:37cf  78 5b                    MOV R0,#0x5b
CODE:37d1  e6                       MOV A,@R0
CODE:37d2  24 5a                    ADD A,#0x5a
CODE:37d4  fd                       MOV R5,A
CODE:37d5  08                       INC R0
CODE:37d6  e6                       MOV A,@R0
CODE:37d7  24 64                    ADD A,#0x64
CODE:37d9  fb                       MOV R3,A
CODE:37da  08                       INC R0
CODE:37db  e6                       MOV A,@R0
CODE:37dc  24 6e                    ADD A,#0x6e
CODE:37de  f5 46                    MOV 0x46,A
CODE:37e0  12 80 7b                 LCALL 0x807b
CODE:37e3  02 38 aa                 LJMP 0x38aa
LAB_CODE_37e6:
CODE:37e6  78 76                    MOV R0,#0x76   ; XREF: CODE:360a 
CODE:37e8  e6                       MOV A,@R0
CODE:37e9  64 09                    XRL A,#0x9
CODE:37eb  60 03                    JZ 0x37f0
CODE:37ed  02 38 aa                 LJMP 0x38aa
LAB_CODE_37f0:
CODE:37f0  e5 1c                    MOV A,0x1c   ; XREF: CODE:37eb 
CODE:37f2  70 05                    JNZ 0x37f9
CODE:37f4  75 3f ff                 MOV 0x3f,#0xff
CODE:37f7  80 2b                    SJMP 0x3824
LAB_CODE_37f9:
CODE:37f9  e5 1c                    MOV A,0x1c   ; XREF: CODE:37f2 
CODE:37fb  b4 01 06                 CJNE A,#0x1,0x3804
CODE:37fe  75 3f ff                 MOV 0x3f,#0xff
CODE:3801  e4                       CLR A
CODE:3802  80 2f                    SJMP 0x3833
LAB_CODE_3804:
CODE:3804  e5 1c                    MOV A,0x1c   ; XREF: CODE:37fb 
CODE:3806  b4 02 08                 CJNE A,#0x2,0x3811
CODE:3809  e4                       CLR A
CODE:380a  f5 3f                    MOV 0x3f,A
CODE:380c  75 40 ff                 MOV 0x40,#0xff
CODE:380f  80 24                    SJMP 0x3835
LAB_CODE_3811:
CODE:3811  e5 1c                    MOV A,0x1c   ; XREF: CODE:3806 
CODE:3813  b4 03 06                 CJNE A,#0x3,0x381c
CODE:3816  75 3f ff                 MOV 0x3f,#0xff
CODE:3819  e4                       CLR A
CODE:381a  80 26                    SJMP 0x3842
LAB_CODE_381c:
CODE:381c  e5 1c                    MOV A,0x1c   ; XREF: CODE:3813 
CODE:381e  b4 04 0a                 CJNE A,#0x4,0x382b
CODE:3821  e4                       CLR A
CODE:3822  f5 3f                    MOV 0x3f,A
LAB_CODE_3824:
CODE:3824  75 40 ff                 MOV 0x40,#0xff   ; XREF: CODE:37f7 
CODE:3827  f5 41                    MOV 0x41,A
CODE:3829  80 1b                    SJMP 0x3846
LAB_CODE_382b:
CODE:382b  e5 1c                    MOV A,0x1c   ; XREF: CODE:381e 
CODE:382d  b4 05 0a                 CJNE A,#0x5,0x383a
CODE:3830  e4                       CLR A
CODE:3831  f5 3f                    MOV 0x3f,A
LAB_CODE_3833:
CODE:3833  f5 40                    MOV 0x40,A   ; XREF: CODE:3802 
LAB_CODE_3835:
CODE:3835  75 41 ff                 MOV 0x41,#0xff   ; XREF: CODE:380f 
CODE:3838  80 0c                    SJMP 0x3846
LAB_CODE_383a:
CODE:383a  e5 1c                    MOV A,0x1c   ; XREF: CODE:382d 
CODE:383c  b4 06 07                 CJNE A,#0x6,0x3846
CODE:383f  e4                       CLR A
CODE:3840  f5 3f                    MOV 0x3f,A
LAB_CODE_3842:
CODE:3842  f5 40                    MOV 0x40,A   ; XREF: CODE:381a 
CODE:3844  f5 41                    MOV 0x41,A
LAB_CODE_3846:
CODE:3846  78 57                    MOV R0,#0x57   ; XREF: CODE:3829 CODE:3838 CODE:383c 
CODE:3848  06                       INC @R0
CODE:3849  c3                       CLR CY
CODE:384a  74 05                    MOV A,#0x5
CODE:384c  78 77                    MOV R0,#0x77
CODE:384e  96                       SUBB A,@R0
CODE:384f  ff                       MOV R7,A
CODE:3850  78 57                    MOV R0,#0x57
CODE:3852  e6                       MOV A,@R0
CODE:3853  d3                       SETB CY
CODE:3854  9f                       SUBB A,R7
CODE:3855  40 53                    JC 0x38aa
CODE:3857  e4                       CLR A
CODE:3858  f6                       MOV @R0,A
CODE:3859  78 5e                    MOV R0,#0x5e
CODE:385b  e6                       MOV A,@R0
CODE:385c  ff                       MOV R7,A
CODE:385d  85 41 46                 MOV 0x46,0x41
CODE:3860  12 80 77                 LCALL 0x8077
CODE:3863  e6                       MOV A,@R0
CODE:3864  24 17                    ADD A,#0x17
CODE:3866  ff                       MOV R7,A
CODE:3867  85 41 46                 MOV 0x46,0x41
CODE:386a  12 80 77                 LCALL 0x8077
CODE:386d  e6                       MOV A,@R0
CODE:386e  24 2e                    ADD A,#0x2e
CODE:3870  ff                       MOV R7,A
CODE:3871  85 41 46                 MOV 0x46,0x41
CODE:3874  12 80 77                 LCALL 0x8077
CODE:3877  e6                       MOV A,@R0
CODE:3878  24 45                    ADD A,#0x45
CODE:387a  ff                       MOV R7,A
CODE:387b  85 41 46                 MOV 0x46,0x41
CODE:387e  12 80 77                 LCALL 0x8077
CODE:3881  e6                       MOV A,@R0
CODE:3882  24 5c                    ADD A,#0x5c
CODE:3884  ff                       MOV R7,A
CODE:3885  85 41 46                 MOV 0x46,0x41
CODE:3888  12 80 77                 LCALL 0x8077
CODE:388b  e6                       MOV A,@R0
CODE:388c  24 73                    ADD A,#0x73
CODE:388e  ff                       MOV R7,A
CODE:388f  85 41 46                 MOV 0x46,0x41
CODE:3892  12 80 77                 LCALL 0x8077
CODE:3895  06                       INC @R0
CODE:3896  e6                       MOV A,@R0
CODE:3897  d3                       SETB CY
CODE:3898  94 16                    SUBB A,#0x16
CODE:389a  40 0e                    JC 0x38aa
CODE:389c  e4                       CLR A
CODE:389d  f6                       MOV @R0,A
CODE:389e  05 1c                    INC 0x1c
CODE:38a0  e5 1c                    MOV A,0x1c
CODE:38a2  d3                       SETB CY
CODE:38a3  94 06                    SUBB A,#0x6
CODE:38a5  40 03                    JC 0x38aa
LAB_CODE_38a7:
CODE:38a7  e4                       CLR A   ; XREF: CODE:1773 CODE:272c CODE:2eb5 CODE:1e96 CODE:3602 
CODE:38a8  f5 1c                    MOV 0x1c,A
LAB_CODE_38aa:
CODE:38aa  78 53                    MOV R0,#0x53   ; XREF: CODE:0e4a CODE:0e54 CODE:1762 CODE:1770 CODE:2122 CODE:231d CODE:241a CODE:2518 CODE:2615 CODE:261f CODE:271a CODE:2729 CODE:2ea4 CODE:2eb2 CODE:0f7c CODE:0e95 CODE:0eef CODE:0efc CODE:0f2e CODE:0f33 CODE:0f72 CODE:0ff2 CODE:178f CODE:1898 CODE:1993 CODE:1a8f CODE:1b8a CODE:1c86 CODE:1d81 CODE:1d8b CODE:1e84 CODE:1e93 CODE:1f35 CODE:1f48 CODE:1f4d CODE:1fd4 CODE:1fdf CODE:1ff5 CODE:1ffa CODE:2019 CODE:2776 CODE:27eb CODE:2ed1 CODE:3088 CODE:3115 CODE:35ff CODE:361e CODE:37e3 CODE:37ed CODE:3855 CODE:389a CODE:38a5 
CODE:38ac  06                       INC @R0
CODE:38ad  e6                       MOV A,@R0
CODE:38ae  c3                       CLR CY
CODE:38af  94 1b                    SUBB A,#0x1b
CODE:38b1  40 02                    JC 0x38b5
CODE:38b3  e4                       CLR A
CODE:38b4  f6                       MOV @R0,A
LAB_CODE_38b5:
CODE:38b5  22                       RET   ; XREF: CODE:38b1 CODE:0067 

; ===== FUNCTION FUN_CODE_38b6 @ CODE:38b6 =====
CODE:38b6  8f 2f                    MOV 0x2f,R7   ; XREF: Entry Point CODE:8300 
CODE:38b8  e4                       CLR A
CODE:38b9  f5 35                    MOV 0x35,A
LAB_CODE_38bb:
CODE:38bb  e5 35                    MOV A,0x35   ; XREF: CODE:4dfd 
CODE:38bd  c3                       CLR CY
CODE:38be  94 17                    SUBB A,#0x17
CODE:38c0  40 03                    JC 0x38c5
CODE:38c2  02 4e 00                 LJMP 0x4e00
LAB_CODE_38c5:
CODE:38c5  af 33                    MOV R7,0x33   ; XREF: CODE:38c0 
CODE:38c7  ae 32                    MOV R6,0x32
CODE:38c9  ad 31                    MOV R5,0x31
CODE:38cb  ac 30                    MOV R4,0x30
CODE:38cd  a9 35                    MOV R1,0x35
CODE:38cf  a8 01                    MOV R0,0x01
CODE:38d1  12 7a 53                 LCALL 0x7a53
CODE:38d4  ef                       MOV A,R7
CODE:38d5  54 01                    ANL A,#0x1
CODE:38d7  70 03                    JNZ 0x38dc
CODE:38d9  02 4d fb                 LJMP 0x4dfb
LAB_CODE_38dc:
CODE:38dc  e5 2f                    MOV A,0x2f   ; XREF: CODE:38d7 
CODE:38de  25 e0                    ADD A,A
CODE:38e0  25 e0                    ADD A,A
CODE:38e2  24 fe                    ADD A,#0xfe
CODE:38e4  f5 82                    MOV DPL,A
CODE:38e6  e4                       CLR A
CODE:38e7  34 02                    ADDC A,#0x2
CODE:38e9  f5 83                    MOV DPH,A
CODE:38eb  e0                       MOVX A,@DPTR
CODE:38ec  fc                       MOV R4,A
CODE:38ed  a3                       INC DPTR
CODE:38ee  e0                       MOVX A,@DPTR
CODE:38ef  fd                       MOV R5,A
CODE:38f0  a3                       INC DPTR
CODE:38f1  e0                       MOVX A,@DPTR
CODE:38f2  fe                       MOV R6,A
CODE:38f3  a3                       INC DPTR
CODE:38f4  e0                       MOVX A,@DPTR
CODE:38f5  ff                       MOV R7,A
CODE:38f6  a8 01                    MOV R0,0x01
CODE:38f8  12 7a 53                 LCALL 0x7a53
CODE:38fb  ef                       MOV A,R7
CODE:38fc  54 01                    ANL A,#0x1
CODE:38fe  70 04                    JNZ 0x3904
CODE:3900  c2 00                    CLR 0x00
CODE:3902  80 02                    SJMP 0x3906
LAB_CODE_3904:
CODE:3904  d2 00                    SETB 0x00   ; XREF: CODE:38fe 
LAB_CODE_3906:
CODE:3906  e5 2f                    MOV A,0x2f   ; XREF: CODE:3902 
CODE:3908  64 01                    XRL A,#0x1
CODE:390a  60 03                    JZ 0x390f
CODE:390c  02 3a ab                 LJMP 0x3aab
LAB_CODE_390f:
CODE:390f  e5 35                    MOV A,0x35   ; XREF: CODE:390a 
CODE:3911  64 11                    XRL A,#0x11
CODE:3913  60 03                    JZ 0x3918
CODE:3915  02 3a ab                 LJMP 0x3aab
LAB_CODE_3918:
CODE:3918  20 10 03                 JB 0x10,0x391e   ; XREF: CODE:3913 
CODE:391b  02 3a ab                 LJMP 0x3aab
LAB_CODE_391e:
CODE:391e  20 00 03                 JB 0x00,0x3924   ; XREF: CODE:3918 
CODE:3921  02 4e 00                 LJMP 0x4e00
LAB_CODE_3924:
CODE:3924  78 76                    MOV R0,#0x76   ; XREF: CODE:391e 
CODE:3926  e6                       MOV A,@R0
CODE:3927  ff                       MOV R7,A
CODE:3928  d3                       SETB CY
CODE:3929  94 0f                    SUBB A,#0xf
CODE:392b  40 4f                    JC 0x397c
CODE:392d  ef                       MOV A,R7
CODE:392e  94 14                    SUBB A,#0x14
CODE:3930  50 4a                    JNC 0x397c
CODE:3932  30 15 03                 JNB 0x15,0x3938
CODE:3935  02 4e 00                 LJMP 0x4e00
LAB_CODE_3938:
CODE:3938  d2 15                    SETB 0x15   ; XREF: CODE:3932 
CODE:393a  e4                       CLR A
CODE:393b  78 56                    MOV R0,#0x56
CODE:393d  f6                       MOV @R0,A
CODE:393e  c2 22                    CLR 0x22
CODE:3940  8f 11                    MOV 0x11,R7
CODE:3942  12 6d 2e                 LCALL 0x6d2e
CODE:3945  e5 11                    MOV A,0x11
CODE:3947  b4 10 08                 CJNE A,#0x10,0x3952
CODE:394a  90 02 83                 MOV DPTR,#0x283
CODE:394d  74 ba                    MOV A,#0xba
CODE:394f  f0                       MOVX @DPTR,A
CODE:3950  80 25                    SJMP 0x3977
LAB_CODE_3952:
CODE:3952  e5 11                    MOV A,0x11   ; XREF: CODE:3947 
CODE:3954  b4 11 08                 CJNE A,#0x11,0x395f
CODE:3957  90 02 83                 MOV DPTR,#0x283
CODE:395a  74 bc                    MOV A,#0xbc
CODE:395c  f0                       MOVX @DPTR,A
CODE:395d  80 18                    SJMP 0x3977
LAB_CODE_395f:
CODE:395f  e5 11                    MOV A,0x11   ; XREF: CODE:3954 
CODE:3961  b4 12 08                 CJNE A,#0x12,0x396c
CODE:3964  90 02 83                 MOV DPTR,#0x283
CODE:3967  74 be                    MOV A,#0xbe
CODE:3969  f0                       MOVX @DPTR,A
CODE:396a  80 0b                    SJMP 0x3977
LAB_CODE_396c:
CODE:396c  e5 11                    MOV A,0x11   ; XREF: CODE:3961 
CODE:396e  b4 13 06                 CJNE A,#0x13,0x3977
CODE:3971  90 02 83                 MOV DPTR,#0x283
CODE:3974  74 c0                    MOV A,#0xc0
CODE:3976  f0                       MOVX @DPTR,A
LAB_CODE_3977:
CODE:3977  78 76                    MOV R0,#0x76   ; XREF: CODE:3950 CODE:395d CODE:396a CODE:396e 
CODE:3979  76 14                    MOV @R0,#0x14
CODE:397b  22                       RET
LAB_CODE_397c:
CODE:397c  78 76                    MOV R0,#0x76   ; XREF: CODE:392b CODE:3930 
CODE:397e  e6                       MOV A,@R0
CODE:397f  64 14                    XRL A,#0x14
CODE:3981  60 03                    JZ 0x3986
CODE:3983  02 4e 00                 LJMP 0x4e00
LAB_CODE_3986:
CODE:3986  e5 11                    MOV A,0x11   ; XREF: CODE:3981 
CODE:3988  b4 10 04                 CJNE A,#0x10,0x398f
CODE:398b  7f ba                    MOV R7,#0xba
CODE:398d  80 19                    SJMP 0x39a8
LAB_CODE_398f:
CODE:398f  e5 11                    MOV A,0x11   ; XREF: CODE:3988 
CODE:3991  b4 11 04                 CJNE A,#0x11,0x3998
CODE:3994  7f bc                    MOV R7,#0xbc
CODE:3996  80 10                    SJMP 0x39a8
LAB_CODE_3998:
CODE:3998  e5 11                    MOV A,0x11   ; XREF: CODE:3991 
CODE:399a  b4 12 04                 CJNE A,#0x12,0x39a1
CODE:399d  7f be                    MOV R7,#0xbe
CODE:399f  80 07                    SJMP 0x39a8
LAB_CODE_39a1:
CODE:39a1  e5 11                    MOV A,0x11   ; XREF: CODE:399a 
CODE:39a3  b4 13 05                 CJNE A,#0x13,0x39ab
CODE:39a6  7f c0                    MOV R7,#0xc0
LAB_CODE_39a8:
CODE:39a8  12 7f 93                 LCALL 0x7f93   ; XREF: CODE:398d CODE:3996 CODE:399f 
LAB_CODE_39ab:
CODE:39ab  e4                       CLR A   ; XREF: CODE:39a3 
CODE:39ac  f5 37                    MOV 0x37,A
LAB_CODE_39ae:
CODE:39ae  90 02 83                 MOV DPTR,#0x283   ; XREF: CODE:3a0c 
CODE:39b1  e0                       MOVX A,@DPTR
CODE:39b2  ff                       MOV R7,A
CODE:39b3  e5 37                    MOV A,0x37
CODE:39b5  75 f0 03                 MOV B,#0x3
CODE:39b8  a4                       MUL AB
CODE:39b9  fd                       MOV R5,A
CODE:39ba  74 00                    MOV A,#0x0
CODE:39bc  25 37                    ADD A,0x37
CODE:39be  f5 82                    MOV DPL,A
CODE:39c0  e4                       CLR A
CODE:39c1  34 00                    ADDC A,#0x0
CODE:39c3  f5 83                    MOV DPH,A
CODE:39c5  e0                       MOVX A,@DPTR
CODE:39c6  fb                       MOV R3,A
CODE:39c7  12 7e ca                 LCALL 0x7eca
CODE:39ca  90 02 83                 MOV DPTR,#0x283
CODE:39cd  e0                       MOVX A,@DPTR
CODE:39ce  ff                       MOV R7,A
CODE:39cf  e5 37                    MOV A,0x37
CODE:39d1  75 f0 03                 MOV B,#0x3
CODE:39d4  a4                       MUL AB
CODE:39d5  04                       INC A
CODE:39d6  fd                       MOV R5,A
CODE:39d7  74 95                    MOV A,#0x95
CODE:39d9  25 37                    ADD A,0x37
CODE:39db  f5 82                    MOV DPL,A
CODE:39dd  e4                       CLR A
CODE:39de  34 00                    ADDC A,#0x0
CODE:39e0  f5 83                    MOV DPH,A
CODE:39e2  e0                       MOVX A,@DPTR
CODE:39e3  fb                       MOV R3,A
CODE:39e4  12 7e ca                 LCALL 0x7eca
CODE:39e7  90 02 83                 MOV DPTR,#0x283
CODE:39ea  e0                       MOVX A,@DPTR
CODE:39eb  ff                       MOV R7,A
CODE:39ec  e5 37                    MOV A,0x37
CODE:39ee  75 f0 03                 MOV B,#0x3
CODE:39f1  a4                       MUL AB
CODE:39f2  24 02                    ADD A,#0x2
CODE:39f4  fd                       MOV R5,A
CODE:39f5  74 2a                    MOV A,#0x2a
CODE:39f7  25 37                    ADD A,0x37
CODE:39f9  f5 82                    MOV DPL,A
CODE:39fb  e4                       CLR A
CODE:39fc  34 01                    ADDC A,#0x1
CODE:39fe  f5 83                    MOV DPH,A
CODE:3a00  e0                       MOVX A,@DPTR
CODE:3a01  fb                       MOV R3,A
CODE:3a02  12 7e ca                 LCALL 0x7eca
CODE:3a05  05 37                    INC 0x37
CODE:3a07  e5 37                    MOV A,0x37
CODE:3a09  c3                       CLR CY
CODE:3a0a  94 55                    SUBB A,#0x55
CODE:3a0c  40 a0                    JC 0x39ae
CODE:3a0e  90 02 83                 MOV DPTR,#0x283
CODE:3a11  e0                       MOVX A,@DPTR
CODE:3a12  ff                       MOV R7,A
CODE:3a13  90 00 55                 MOV DPTR,#0x55
CODE:3a16  e0                       MOVX A,@DPTR
CODE:3a17  fb                       MOV R3,A
CODE:3a18  7d ff                    MOV R5,#0xff
CODE:3a1a  12 7e ca                 LCALL 0x7eca
CODE:3a1d  90 02 83                 MOV DPTR,#0x283
CODE:3a20  e0                       MOVX A,@DPTR
CODE:3a21  04                       INC A
CODE:3a22  ff                       MOV R7,A
CODE:3a23  90 00 ea                 MOV DPTR,#0xea
CODE:3a26  e0                       MOVX A,@DPTR
CODE:3a27  fb                       MOV R3,A
CODE:3a28  e4                       CLR A
CODE:3a29  fd                       MOV R5,A
CODE:3a2a  12 7e ca                 LCALL 0x7eca
CODE:3a2d  90 02 83                 MOV DPTR,#0x283
CODE:3a30  e0                       MOVX A,@DPTR
CODE:3a31  04                       INC A
CODE:3a32  ff                       MOV R7,A
CODE:3a33  90 01 7f                 MOV DPTR,#0x17f
CODE:3a36  e0                       MOVX A,@DPTR
CODE:3a37  fb                       MOV R3,A
CODE:3a38  7d 01                    MOV R5,#0x1
CODE:3a3a  12 7e ca                 LCALL 0x7eca
CODE:3a3d  75 37 56                 MOV 0x37,#0x56
LAB_CODE_3a40:
CODE:3a40  90 02 83                 MOV DPTR,#0x283   ; XREF: CODE:3aa2 
CODE:3a43  e0                       MOVX A,@DPTR
CODE:3a44  04                       INC A
CODE:3a45  ff                       MOV R7,A
CODE:3a46  e5 37                    MOV A,0x37
CODE:3a48  75 f0 03                 MOV B,#0x3
CODE:3a4b  a4                       MUL AB
CODE:3a4c  fe                       MOV R6,A
CODE:3a4d  fd                       MOV R5,A
CODE:3a4e  74 00                    MOV A,#0x0
CODE:3a50  25 37                    ADD A,0x37
CODE:3a52  f5 82                    MOV DPL,A
CODE:3a54  e4                       CLR A
CODE:3a55  34 00                    ADDC A,#0x0
CODE:3a57  f5 83                    MOV DPH,A
CODE:3a59  e0                       MOVX A,@DPTR
CODE:3a5a  fb                       MOV R3,A
CODE:3a5b  12 7e ca                 LCALL 0x7eca
CODE:3a5e  90 02 83                 MOV DPTR,#0x283
CODE:3a61  e0                       MOVX A,@DPTR
CODE:3a62  04                       INC A
CODE:3a63  ff                       MOV R7,A
CODE:3a64  e5 37                    MOV A,0x37
CODE:3a66  75 f0 03                 MOV B,#0x3
CODE:3a69  a4                       MUL AB
CODE:3a6a  04                       INC A
CODE:3a6b  fd                       MOV R5,A
CODE:3a6c  74 95                    MOV A,#0x95
CODE:3a6e  25 37                    ADD A,0x37
CODE:3a70  f5 82                    MOV DPL,A
CODE:3a72  e4                       CLR A
CODE:3a73  34 00                    ADDC A,#0x0
CODE:3a75  f5 83                    MOV DPH,A
CODE:3a77  e0                       MOVX A,@DPTR
CODE:3a78  fb                       MOV R3,A
CODE:3a79  12 7e ca                 LCALL 0x7eca
CODE:3a7c  90 02 83                 MOV DPTR,#0x283
CODE:3a7f  e0                       MOVX A,@DPTR
CODE:3a80  04                       INC A
CODE:3a81  ff                       MOV R7,A
CODE:3a82  e5 37                    MOV A,0x37
CODE:3a84  75 f0 03                 MOV B,#0x3
CODE:3a87  a4                       MUL AB
CODE:3a88  24 02                    ADD A,#0x2
CODE:3a8a  fd                       MOV R5,A
CODE:3a8b  74 2a                    MOV A,#0x2a
CODE:3a8d  25 37                    ADD A,0x37
CODE:3a8f  f5 82                    MOV DPL,A
CODE:3a91  e4                       CLR A
CODE:3a92  34 01                    ADDC A,#0x1
CODE:3a94  f5 83                    MOV DPH,A
CODE:3a96  e0                       MOVX A,@DPTR
CODE:3a97  fb                       MOV R3,A
CODE:3a98  12 7e ca                 LCALL 0x7eca
CODE:3a9b  05 37                    INC 0x37
CODE:3a9d  e5 37                    MOV A,0x37
CODE:3a9f  c3                       CLR CY
CODE:3aa0  94 8a                    SUBB A,#0x8a
CODE:3aa2  40 9c                    JC 0x3a40
CODE:3aa4  c2 15                    CLR 0x15
CODE:3aa6  78 76                    MOV R0,#0x76
CODE:3aa8  a6 11                    MOV @R0,0x11
CODE:3aaa  22                       RET
LAB_CODE_3aab:
CODE:3aab  e5 2f                    MOV A,0x2f   ; XREF: CODE:390c CODE:3915 CODE:391b 
CODE:3aad  64 05                    XRL A,#0x5
CODE:3aaf  70 49                    JNZ 0x3afa
CODE:3ab1  e5 35                    MOV A,0x35
CODE:3ab3  64 0a                    XRL A,#0xa
CODE:3ab5  70 43                    JNZ 0x3afa
CODE:3ab7  30 00 1d                 JNB 0x00,0x3ad7
CODE:3aba  f5 34                    MOV 0x34,A
LAB_CODE_3abc:
CODE:3abc  74 00                    MOV A,#0x0   ; XREF: CODE:3ad1 
CODE:3abe  25 34                    ADD A,0x34
CODE:3ac0  f5 82                    MOV DPL,A
CODE:3ac2  e4                       CLR A
CODE:3ac3  34 02                    ADDC A,#0x2
CODE:3ac5  f5 83                    MOV DPH,A
CODE:3ac7  e0                       MOVX A,@DPTR
CODE:3ac8  60 03                    JZ 0x3acd
CODE:3aca  02 4e 00                 LJMP 0x4e00
LAB_CODE_3acd:
CODE:3acd  05 34                    INC 0x34   ; XREF: CODE:3ac8 
CODE:3acf  e5 34                    MOV A,0x34
CODE:3ad1  b4 10 e8                 CJNE A,#0x10,0x3abc
CODE:3ad4  d2 10                    SETB 0x10
CODE:3ad6  22                       RET
LAB_CODE_3ad7:
CODE:3ad7  e4                       CLR A   ; XREF: CODE:3ab7 
CODE:3ad8  78 78                    MOV R0,#0x78
CODE:3ada  f6                       MOV @R0,A
CODE:3adb  08                       INC R0
CODE:3adc  f6                       MOV @R0,A
CODE:3add  c2 17                    CLR 0x17
CODE:3adf  c2 10                    CLR 0x10
CODE:3ae1  f5 34                    MOV 0x34,A
LAB_CODE_3ae3:
CODE:3ae3  74 00                    MOV A,#0x0   ; XREF: CODE:3af4 
CODE:3ae5  25 34                    ADD A,0x34
CODE:3ae7  f5 82                    MOV DPL,A
CODE:3ae9  e4                       CLR A
CODE:3aea  34 02                    ADDC A,#0x2
CODE:3aec  f5 83                    MOV DPH,A
CODE:3aee  e4                       CLR A
CODE:3aef  f0                       MOVX @DPTR,A
CODE:3af0  05 34                    INC 0x34
CODE:3af2  e5 34                    MOV A,0x34
CODE:3af4  b4 10 ec                 CJNE A,#0x10,0x3ae3
CODE:3af7  d2 12                    SETB 0x12
CODE:3af9  22                       RET
LAB_CODE_3afa:
CODE:3afa  20 15 03                 JB 0x15,0x3b00   ; XREF: CODE:3aaf CODE:3ab5 
CODE:3afd  02 3f 4f                 LJMP 0x3f4f
LAB_CODE_3b00:
CODE:3b00  20 00 03                 JB 0x00,0x3b06   ; XREF: CODE:3afa 
CODE:3b03  02 4d fb                 LJMP 0x4dfb
LAB_CODE_3b06:
CODE:3b06  75 f0 17                 MOV B,#0x17   ; XREF: CODE:3b00 
CODE:3b09  e5 2f                    MOV A,0x2f
CODE:3b0b  a4                       MUL AB
CODE:3b0c  25 35                    ADD A,0x35
CODE:3b0e  f5 82                    MOV DPL,A
CODE:3b10  e4                       CLR A
CODE:3b11  35 f0                    ADDC A,B
CODE:3b13  f5 83                    MOV DPH,A
CODE:3b15  e5 82                    MOV A,DPL
CODE:3b17  24 00                    ADD A,#0x0
CODE:3b19  f5 82                    MOV DPL,A
CODE:3b1b  e5 83                    MOV A,DPH
CODE:3b1d  34 00                    ADDC A,#0x0
CODE:3b1f  f5 83                    MOV DPH,A
CODE:3b21  e0                       MOVX A,@DPTR
CODE:3b22  ff                       MOV R7,A
CODE:3b23  f4                       CPL A
CODE:3b24  70 5e                    JNZ 0x3b84
CODE:3b26  75 f0 17                 MOV B,#0x17
CODE:3b29  e5 2f                    MOV A,0x2f
CODE:3b2b  a4                       MUL AB
CODE:3b2c  25 35                    ADD A,0x35
CODE:3b2e  f5 82                    MOV DPL,A
CODE:3b30  e4                       CLR A
CODE:3b31  35 f0                    ADDC A,B
CODE:3b33  f5 83                    MOV DPH,A
CODE:3b35  e5 82                    MOV A,DPL
CODE:3b37  24 95                    ADD A,#0x95
CODE:3b39  f5 82                    MOV DPL,A
CODE:3b3b  e5 83                    MOV A,DPH
CODE:3b3d  34 00                    ADDC A,#0x0
CODE:3b3f  f5 83                    MOV DPH,A
CODE:3b41  e0                       MOVX A,@DPTR
CODE:3b42  f4                       CPL A
CODE:3b43  70 3f                    JNZ 0x3b84
CODE:3b45  75 f0 17                 MOV B,#0x17
CODE:3b48  e5 2f                    MOV A,0x2f
CODE:3b4a  a4                       MUL AB
CODE:3b4b  25 35                    ADD A,0x35
CODE:3b4d  f5 82                    MOV DPL,A
CODE:3b4f  e4                       CLR A
CODE:3b50  35 f0                    ADDC A,B
CODE:3b52  f5 83                    MOV DPH,A
CODE:3b54  e5 82                    MOV A,DPL
CODE:3b56  24 2a                    ADD A,#0x2a
CODE:3b58  f5 82                    MOV DPL,A
CODE:3b5a  e5 83                    MOV A,DPH
CODE:3b5c  34 01                    ADDC A,#0x1
CODE:3b5e  f5 83                    MOV DPH,A
CODE:3b60  e0                       MOVX A,@DPTR
CODE:3b61  f4                       CPL A
CODE:3b62  70 20                    JNZ 0x3b84
CODE:3b64  75 f0 17                 MOV B,#0x17
CODE:3b67  e5 2f                    MOV A,0x2f
CODE:3b69  a4                       MUL AB
CODE:3b6a  25 35                    ADD A,0x35
CODE:3b6c  f5 82                    MOV DPL,A
CODE:3b6e  e4                       CLR A
CODE:3b6f  35 f0                    ADDC A,B
CODE:3b71  f5 83                    MOV DPH,A
CODE:3b73  e5 82                    MOV A,DPL
CODE:3b75  24 00                    ADD A,#0x0
CODE:3b77  f5 82                    MOV DPL,A
CODE:3b79  e5 83                    MOV A,DPH
CODE:3b7b  34 00                    ADDC A,#0x0
CODE:3b7d  f5 83                    MOV DPH,A
CODE:3b7f  74 ff                    MOV A,#0xff
CODE:3b81  02 3d d1                 LJMP 0x3dd1
LAB_CODE_3b84:
CODE:3b84  ef                       MOV A,R7   ; XREF: CODE:3b24 CODE:3b43 CODE:3b62 
CODE:3b85  70 5c                    JNZ 0x3be3
CODE:3b87  75 f0 17                 MOV B,#0x17
CODE:3b8a  e5 2f                    MOV A,0x2f
CODE:3b8c  a4                       MUL AB
CODE:3b8d  25 35                    ADD A,0x35
CODE:3b8f  f5 82                    MOV DPL,A
CODE:3b91  e4                       CLR A
CODE:3b92  35 f0                    ADDC A,B
CODE:3b94  f5 83                    MOV DPH,A
CODE:3b96  e5 82                    MOV A,DPL
CODE:3b98  24 95                    ADD A,#0x95
CODE:3b9a  f5 82                    MOV DPL,A
CODE:3b9c  e5 83                    MOV A,DPH
CODE:3b9e  34 00                    ADDC A,#0x0
CODE:3ba0  f5 83                    MOV DPH,A
CODE:3ba2  e0                       MOVX A,@DPTR
CODE:3ba3  70 3e                    JNZ 0x3be3
CODE:3ba5  75 f0 17                 MOV B,#0x17
CODE:3ba8  e5 2f                    MOV A,0x2f
CODE:3baa  a4                       MUL AB
CODE:3bab  25 35                    ADD A,0x35
CODE:3bad  f5 82                    MOV DPL,A
CODE:3baf  e4                       CLR A
CODE:3bb0  35 f0                    ADDC A,B
CODE:3bb2  f5 83                    MOV DPH,A
CODE:3bb4  e5 82                    MOV A,DPL
CODE:3bb6  24 2a                    ADD A,#0x2a
CODE:3bb8  f5 82                    MOV DPL,A
CODE:3bba  e5 83                    MOV A,DPH
CODE:3bbc  34 01                    ADDC A,#0x1
CODE:3bbe  f5 83                    MOV DPH,A
CODE:3bc0  e0                       MOVX A,@DPTR
CODE:3bc1  70 20                    JNZ 0x3be3
CODE:3bc3  75 f0 17                 MOV B,#0x17
CODE:3bc6  e5 2f                    MOV A,0x2f
CODE:3bc8  a4                       MUL AB
CODE:3bc9  25 35                    ADD A,0x35
CODE:3bcb  f5 82                    MOV DPL,A
CODE:3bcd  e4                       CLR A
CODE:3bce  35 f0                    ADDC A,B
CODE:3bd0  f5 83                    MOV DPH,A
CODE:3bd2  e5 82                    MOV A,DPL
CODE:3bd4  24 00                    ADD A,#0x0
CODE:3bd6  f5 82                    MOV DPL,A
CODE:3bd8  e5 83                    MOV A,DPH
CODE:3bda  34 00                    ADDC A,#0x0
CODE:3bdc  f5 83                    MOV DPH,A
CODE:3bde  74 ff                    MOV A,#0xff
CODE:3be0  02 3c d8                 LJMP 0x3cd8
LAB_CODE_3be3:
CODE:3be3  75 f0 17                 MOV B,#0x17   ; XREF: CODE:3b85 CODE:3ba3 CODE:3bc1 
CODE:3be6  e5 2f                    MOV A,0x2f
CODE:3be8  a4                       MUL AB
CODE:3be9  25 35                    ADD A,0x35
CODE:3beb  f5 82                    MOV DPL,A
CODE:3bed  e4                       CLR A
CODE:3bee  35 f0                    ADDC A,B
CODE:3bf0  f5 83                    MOV DPH,A
CODE:3bf2  e5 82                    MOV A,DPL
CODE:3bf4  24 00                    ADD A,#0x0
CODE:3bf6  f5 82                    MOV DPL,A
CODE:3bf8  e5 83                    MOV A,DPH
CODE:3bfa  34 00                    ADDC A,#0x0
CODE:3bfc  f5 83                    MOV DPH,A
CODE:3bfe  e0                       MOVX A,@DPTR
CODE:3bff  f4                       CPL A
CODE:3c00  70 5d                    JNZ 0x3c5f
CODE:3c02  75 f0 17                 MOV B,#0x17
CODE:3c05  e5 2f                    MOV A,0x2f
CODE:3c07  a4                       MUL AB
CODE:3c08  25 35                    ADD A,0x35
CODE:3c0a  f5 82                    MOV DPL,A
CODE:3c0c  e4                       CLR A
CODE:3c0d  35 f0                    ADDC A,B
CODE:3c0f  f5 83                    MOV DPH,A
CODE:3c11  e5 82                    MOV A,DPL
CODE:3c13  24 95                    ADD A,#0x95
CODE:3c15  f5 82                    MOV DPL,A
CODE:3c17  e5 83                    MOV A,DPH
CODE:3c19  34 00                    ADDC A,#0x0
CODE:3c1b  f5 83                    MOV DPH,A
CODE:3c1d  e0                       MOVX A,@DPTR
CODE:3c1e  f4                       CPL A
CODE:3c1f  70 3e                    JNZ 0x3c5f
CODE:3c21  75 f0 17                 MOV B,#0x17
CODE:3c24  e5 2f                    MOV A,0x2f
CODE:3c26  a4                       MUL AB
CODE:3c27  25 35                    ADD A,0x35
CODE:3c29  f5 82                    MOV DPL,A
CODE:3c2b  e4                       CLR A
CODE:3c2c  35 f0                    ADDC A,B
CODE:3c2e  f5 83                    MOV DPH,A
CODE:3c30  e5 82                    MOV A,DPL
CODE:3c32  24 2a                    ADD A,#0x2a
CODE:3c34  f5 82                    MOV DPL,A
CODE:3c36  e5 83                    MOV A,DPH
CODE:3c38  34 01                    ADDC A,#0x1
CODE:3c3a  f5 83                    MOV DPH,A
CODE:3c3c  e0                       MOVX A,@DPTR
CODE:3c3d  70 20                    JNZ 0x3c5f
CODE:3c3f  75 f0 17                 MOV B,#0x17
CODE:3c42  e5 2f                    MOV A,0x2f
CODE:3c44  a4                       MUL AB
CODE:3c45  25 35                    ADD A,0x35
CODE:3c47  f5 82                    MOV DPL,A
CODE:3c49  e4                       CLR A
CODE:3c4a  35 f0                    ADDC A,B
CODE:3c4c  f5 83                    MOV DPH,A
CODE:3c4e  e5 82                    MOV A,DPL
CODE:3c50  24 00                    ADD A,#0x0
CODE:3c52  f5 82                    MOV DPL,A
CODE:3c54  e5 83                    MOV A,DPH
CODE:3c56  34 00                    ADDC A,#0x0
CODE:3c58  f5 83                    MOV DPH,A
CODE:3c5a  74 ff                    MOV A,#0xff
CODE:3c5c  02 3e 6d                 LJMP 0x3e6d
LAB_CODE_3c5f:
CODE:3c5f  75 f0 17                 MOV B,#0x17   ; XREF: CODE:3c00 CODE:3c1f CODE:3c3d 
CODE:3c62  e5 2f                    MOV A,0x2f
CODE:3c64  a4                       MUL AB
CODE:3c65  25 35                    ADD A,0x35
CODE:3c67  f5 82                    MOV DPL,A
CODE:3c69  e4                       CLR A
CODE:3c6a  35 f0                    ADDC A,B
CODE:3c6c  f5 83                    MOV DPH,A
CODE:3c6e  e5 82                    MOV A,DPL
CODE:3c70  24 00                    ADD A,#0x0
CODE:3c72  f5 82                    MOV DPL,A
CODE:3c74  e5 83                    MOV A,DPH
CODE:3c76  34 00                    ADDC A,#0x0
CODE:3c78  f5 83                    MOV DPH,A
CODE:3c7a  e0                       MOVX A,@DPTR
CODE:3c7b  ff                       MOV R7,A
CODE:3c7c  f4                       CPL A
CODE:3c7d  70 7a                    JNZ 0x3cf9
CODE:3c7f  75 f0 17                 MOV B,#0x17
CODE:3c82  e5 2f                    MOV A,0x2f
CODE:3c84  a4                       MUL AB
CODE:3c85  25 35                    ADD A,0x35
CODE:3c87  f5 82                    MOV DPL,A
CODE:3c89  e4                       CLR A
CODE:3c8a  35 f0                    ADDC A,B
CODE:3c8c  f5 83                    MOV DPH,A
CODE:3c8e  e5 82                    MOV A,DPL
CODE:3c90  24 95                    ADD A,#0x95
CODE:3c92  f5 82                    MOV DPL,A
CODE:3c94  e5 83                    MOV A,DPH
CODE:3c96  34 00                    ADDC A,#0x0
CODE:3c98  f5 83                    MOV DPH,A
CODE:3c9a  e0                       MOVX A,@DPTR
CODE:3c9b  70 5c                    JNZ 0x3cf9
CODE:3c9d  75 f0 17                 MOV B,#0x17
CODE:3ca0  e5 2f                    MOV A,0x2f
CODE:3ca2  a4                       MUL AB
CODE:3ca3  25 35                    ADD A,0x35
CODE:3ca5  f5 82                    MOV DPL,A
CODE:3ca7  e4                       CLR A
CODE:3ca8  35 f0                    ADDC A,B
CODE:3caa  f5 83                    MOV DPH,A
CODE:3cac  e5 82                    MOV A,DPL
CODE:3cae  24 2a                    ADD A,#0x2a
CODE:3cb0  f5 82                    MOV DPL,A
CODE:3cb2  e5 83                    MOV A,DPH
CODE:3cb4  34 01                    ADDC A,#0x1
CODE:3cb6  f5 83                    MOV DPH,A
CODE:3cb8  e0                       MOVX A,@DPTR
CODE:3cb9  f4                       CPL A
CODE:3cba  70 3d                    JNZ 0x3cf9
CODE:3cbc  75 f0 17                 MOV B,#0x17
CODE:3cbf  e5 2f                    MOV A,0x2f
CODE:3cc1  a4                       MUL AB
CODE:3cc2  25 35                    ADD A,0x35
CODE:3cc4  f5 82                    MOV DPL,A
CODE:3cc6  e4                       CLR A
CODE:3cc7  35 f0                    ADDC A,B
CODE:3cc9  f5 83                    MOV DPH,A
CODE:3ccb  e5 82                    MOV A,DPL
CODE:3ccd  24 00                    ADD A,#0x0
CODE:3ccf  f5 82                    MOV DPL,A
CODE:3cd1  e5 83                    MOV A,DPH
CODE:3cd3  34 00                    ADDC A,#0x0
CODE:3cd5  f5 83                    MOV DPH,A
CODE:3cd7  e4                       CLR A
LAB_CODE_3cd8:
CODE:3cd8  f0                       MOVX @DPTR,A   ; XREF: CODE:3be0 
CODE:3cd9  75 f0 17                 MOV B,#0x17
CODE:3cdc  e5 2f                    MOV A,0x2f
CODE:3cde  a4                       MUL AB
CODE:3cdf  25 35                    ADD A,0x35
CODE:3ce1  f5 82                    MOV DPL,A
CODE:3ce3  e4                       CLR A
CODE:3ce4  35 f0                    ADDC A,B
CODE:3ce6  f5 83                    MOV DPH,A
CODE:3ce8  e5 82                    MOV A,DPL
CODE:3cea  24 95                    ADD A,#0x95
CODE:3cec  f5 82                    MOV DPL,A
CODE:3cee  e5 83                    MOV A,DPH
CODE:3cf0  34 00                    ADDC A,#0x0
CODE:3cf2  f5 83                    MOV DPH,A
CODE:3cf4  74 ff                    MOV A,#0xff
CODE:3cf6  02 3e 8a                 LJMP 0x3e8a
LAB_CODE_3cf9:
CODE:3cf9  ef                       MOV A,R7   ; XREF: CODE:3c7d CODE:3c9b CODE:3cba 
CODE:3cfa  70 5e                    JNZ 0x3d5a
CODE:3cfc  75 f0 17                 MOV B,#0x17
CODE:3cff  e5 2f                    MOV A,0x2f
CODE:3d01  a4                       MUL AB
CODE:3d02  25 35                    ADD A,0x35
CODE:3d04  f5 82                    MOV DPL,A
CODE:3d06  e4                       CLR A
CODE:3d07  35 f0                    ADDC A,B
CODE:3d09  f5 83                    MOV DPH,A
CODE:3d0b  e5 82                    MOV A,DPL
CODE:3d0d  24 95                    ADD A,#0x95
CODE:3d0f  f5 82                    MOV DPL,A
CODE:3d11  e5 83                    MOV A,DPH
CODE:3d13  34 00                    ADDC A,#0x0
CODE:3d15  f5 83                    MOV DPH,A
CODE:3d17  e0                       MOVX A,@DPTR
CODE:3d18  f4                       CPL A
CODE:3d19  70 3f                    JNZ 0x3d5a
CODE:3d1b  75 f0 17                 MOV B,#0x17
CODE:3d1e  e5 2f                    MOV A,0x2f
CODE:3d20  a4                       MUL AB
CODE:3d21  25 35                    ADD A,0x35
CODE:3d23  f5 82                    MOV DPL,A
CODE:3d25  e4                       CLR A
CODE:3d26  35 f0                    ADDC A,B
CODE:3d28  f5 83                    MOV DPH,A
CODE:3d2a  e5 82                    MOV A,DPL
CODE:3d2c  24 2a                    ADD A,#0x2a
CODE:3d2e  f5 82                    MOV DPL,A
CODE:3d30  e5 83                    MOV A,DPH
CODE:3d32  34 01                    ADDC A,#0x1
CODE:3d34  f5 83                    MOV DPH,A
CODE:3d36  e0                       MOVX A,@DPTR
CODE:3d37  f4                       CPL A
CODE:3d38  70 20                    JNZ 0x3d5a
CODE:3d3a  75 f0 17                 MOV B,#0x17
CODE:3d3d  e5 2f                    MOV A,0x2f
CODE:3d3f  a4                       MUL AB
CODE:3d40  25 35                    ADD A,0x35
CODE:3d42  f5 82                    MOV DPL,A
CODE:3d44  e4                       CLR A
CODE:3d45  35 f0                    ADDC A,B
CODE:3d47  f5 83                    MOV DPH,A
CODE:3d49  e5 82                    MOV A,DPL
CODE:3d4b  24 00                    ADD A,#0x0
CODE:3d4d  f5 82                    MOV DPL,A
CODE:3d4f  e5 83                    MOV A,DPH
CODE:3d51  34 00                    ADDC A,#0x0
CODE:3d53  f5 83                    MOV DPH,A
CODE:3d55  74 ff                    MOV A,#0xff
CODE:3d57  02 3f 11                 LJMP 0x3f11
LAB_CODE_3d5a:
CODE:3d5a  75 f0 17                 MOV B,#0x17   ; XREF: CODE:3cfa CODE:3d19 CODE:3d38 
CODE:3d5d  e5 2f                    MOV A,0x2f
CODE:3d5f  a4                       MUL AB
CODE:3d60  25 35                    ADD A,0x35
CODE:3d62  f5 82                    MOV DPL,A
CODE:3d64  e4                       CLR A
CODE:3d65  35 f0                    ADDC A,B
CODE:3d67  f5 83                    MOV DPH,A
CODE:3d69  e5 82                    MOV A,DPL
CODE:3d6b  24 00                    ADD A,#0x0
CODE:3d6d  f5 82                    MOV DPL,A
CODE:3d6f  e5 83                    MOV A,DPH
CODE:3d71  34 00                    ADDC A,#0x0
CODE:3d73  f5 83                    MOV DPH,A
CODE:3d75  e0                       MOVX A,@DPTR
CODE:3d76  f4                       CPL A
CODE:3d77  70 79                    JNZ 0x3df2
CODE:3d79  75 f0 17                 MOV B,#0x17
CODE:3d7c  e5 2f                    MOV A,0x2f
CODE:3d7e  a4                       MUL AB
CODE:3d7f  25 35                    ADD A,0x35
CODE:3d81  f5 82                    MOV DPL,A
CODE:3d83  e4                       CLR A
CODE:3d84  35 f0                    ADDC A,B
CODE:3d86  f5 83                    MOV DPH,A
CODE:3d88  e5 82                    MOV A,DPL
CODE:3d8a  24 95                    ADD A,#0x95
CODE:3d8c  f5 82                    MOV DPL,A
CODE:3d8e  e5 83                    MOV A,DPH
CODE:3d90  34 00                    ADDC A,#0x0
CODE:3d92  f5 83                    MOV DPH,A
CODE:3d94  e0                       MOVX A,@DPTR
CODE:3d95  70 5b                    JNZ 0x3df2
CODE:3d97  75 f0 17                 MOV B,#0x17
CODE:3d9a  e5 2f                    MOV A,0x2f
CODE:3d9c  a4                       MUL AB
CODE:3d9d  25 35                    ADD A,0x35
CODE:3d9f  f5 82                    MOV DPL,A
CODE:3da1  e4                       CLR A
CODE:3da2  35 f0                    ADDC A,B
CODE:3da4  f5 83                    MOV DPH,A
CODE:3da6  e5 82                    MOV A,DPL
CODE:3da8  24 2a                    ADD A,#0x2a
CODE:3daa  f5 82                    MOV DPL,A
CODE:3dac  e5 83                    MOV A,DPH
CODE:3dae  34 01                    ADDC A,#0x1
CODE:3db0  f5 83                    MOV DPH,A
CODE:3db2  e0                       MOVX A,@DPTR
CODE:3db3  70 3d                    JNZ 0x3df2
CODE:3db5  75 f0 17                 MOV B,#0x17
CODE:3db8  e5 2f                    MOV A,0x2f
CODE:3dba  a4                       MUL AB
CODE:3dbb  25 35                    ADD A,0x35
CODE:3dbd  f5 82                    MOV DPL,A
CODE:3dbf  e4                       CLR A
CODE:3dc0  35 f0                    ADDC A,B
CODE:3dc2  f5 83                    MOV DPH,A
CODE:3dc4  e5 82                    MOV A,DPL
CODE:3dc6  24 00                    ADD A,#0x0
CODE:3dc8  f5 82                    MOV DPL,A
CODE:3dca  e5 83                    MOV A,DPH
CODE:3dcc  34 00                    ADDC A,#0x0
CODE:3dce  f5 83                    MOV DPH,A
CODE:3dd0  e4                       CLR A
LAB_CODE_3dd1:
CODE:3dd1  f0                       MOVX @DPTR,A   ; XREF: CODE:3b81 
CODE:3dd2  75 f0 17                 MOV B,#0x17
CODE:3dd5  e5 2f                    MOV A,0x2f
CODE:3dd7  a4                       MUL AB
CODE:3dd8  25 35                    ADD A,0x35
CODE:3dda  f5 82                    MOV DPL,A
CODE:3ddc  e4                       CLR A
CODE:3ddd  35 f0                    ADDC A,B
CODE:3ddf  f5 83                    MOV DPH,A
CODE:3de1  e5 82                    MOV A,DPL
CODE:3de3  24 95                    ADD A,#0x95
CODE:3de5  f5 82                    MOV DPL,A
CODE:3de7  e5 83                    MOV A,DPH
CODE:3de9  34 00                    ADDC A,#0x0
CODE:3deb  f5 83                    MOV DPH,A
CODE:3ded  74 ff                    MOV A,#0xff
CODE:3def  02 3f 2e                 LJMP 0x3f2e
LAB_CODE_3df2:
CODE:3df2  75 f0 17                 MOV B,#0x17   ; XREF: CODE:3d77 CODE:3d95 CODE:3db3 
CODE:3df5  e5 2f                    MOV A,0x2f
CODE:3df7  a4                       MUL AB
CODE:3df8  25 35                    ADD A,0x35
CODE:3dfa  f5 82                    MOV DPL,A
CODE:3dfc  e4                       CLR A
CODE:3dfd  35 f0                    ADDC A,B
CODE:3dff  f5 83                    MOV DPH,A
CODE:3e01  e5 82                    MOV A,DPL
CODE:3e03  24 00                    ADD A,#0x0
CODE:3e05  f5 82                    MOV DPL,A
CODE:3e07  e5 83                    MOV A,DPH
CODE:3e09  34 00                    ADDC A,#0x0
CODE:3e0b  f5 83                    MOV DPH,A
CODE:3e0d  e0                       MOVX A,@DPTR
CODE:3e0e  ff                       MOV R7,A
CODE:3e0f  60 03                    JZ 0x3e14
CODE:3e11  02 3e ac                 LJMP 0x3eac
LAB_CODE_3e14:
CODE:3e14  75 f0 17                 MOV B,#0x17   ; XREF: CODE:3e0f 
CODE:3e17  e5 2f                    MOV A,0x2f
CODE:3e19  a4                       MUL AB
CODE:3e1a  25 35                    ADD A,0x35
CODE:3e1c  f5 82                    MOV DPL,A
CODE:3e1e  e4                       CLR A
CODE:3e1f  35 f0                    ADDC A,B
CODE:3e21  f5 83                    MOV DPH,A
CODE:3e23  e5 82                    MOV A,DPL
CODE:3e25  24 95                    ADD A,#0x95
CODE:3e27  f5 82                    MOV DPL,A
CODE:3e29  e5 83                    MOV A,DPH
CODE:3e2b  34 00                    ADDC A,#0x0
CODE:3e2d  f5 83                    MOV DPH,A
CODE:3e2f  e0                       MOVX A,@DPTR
CODE:3e30  f4                       CPL A
CODE:3e31  70 79                    JNZ 0x3eac
CODE:3e33  75 f0 17                 MOV B,#0x17
CODE:3e36  e5 2f                    MOV A,0x2f
CODE:3e38  a4                       MUL AB
CODE:3e39  25 35                    ADD A,0x35
CODE:3e3b  f5 82                    MOV DPL,A
CODE:3e3d  e4                       CLR A
CODE:3e3e  35 f0                    ADDC A,B
CODE:3e40  f5 83                    MOV DPH,A
CODE:3e42  e5 82                    MOV A,DPL
CODE:3e44  24 2a                    ADD A,#0x2a
CODE:3e46  f5 82                    MOV DPL,A
CODE:3e48  e5 83                    MOV A,DPH
CODE:3e4a  34 01                    ADDC A,#0x1
CODE:3e4c  f5 83                    MOV DPH,A
CODE:3e4e  e0                       MOVX A,@DPTR
CODE:3e4f  70 5b                    JNZ 0x3eac
CODE:3e51  75 f0 17                 MOV B,#0x17
CODE:3e54  e5 2f                    MOV A,0x2f
CODE:3e56  a4                       MUL AB
CODE:3e57  25 35                    ADD A,0x35
CODE:3e59  f5 82                    MOV DPL,A
CODE:3e5b  e4                       CLR A
CODE:3e5c  35 f0                    ADDC A,B
CODE:3e5e  f5 83                    MOV DPH,A
CODE:3e60  e5 82                    MOV A,DPL
CODE:3e62  24 00                    ADD A,#0x0
CODE:3e64  f5 82                    MOV DPL,A
CODE:3e66  e5 83                    MOV A,DPH
CODE:3e68  34 00                    ADDC A,#0x0
CODE:3e6a  f5 83                    MOV DPH,A
CODE:3e6c  e4                       CLR A
LAB_CODE_3e6d:
CODE:3e6d  f0                       MOVX @DPTR,A   ; XREF: CODE:3c5c 
CODE:3e6e  75 f0 17                 MOV B,#0x17
CODE:3e71  e5 2f                    MOV A,0x2f
CODE:3e73  a4                       MUL AB
CODE:3e74  25 35                    ADD A,0x35
CODE:3e76  f5 82                    MOV DPL,A
CODE:3e78  e4                       CLR A
CODE:3e79  35 f0                    ADDC A,B
CODE:3e7b  f5 83                    MOV DPH,A
CODE:3e7d  e5 82                    MOV A,DPL
CODE:3e7f  24 95                    ADD A,#0x95
CODE:3e81  f5 82                    MOV DPL,A
CODE:3e83  e5 83                    MOV A,DPH
CODE:3e85  34 00                    ADDC A,#0x0
CODE:3e87  f5 83                    MOV DPH,A
CODE:3e89  e4                       CLR A
LAB_CODE_3e8a:
CODE:3e8a  f0                       MOVX @DPTR,A   ; XREF: CODE:3cf6 
CODE:3e8b  75 f0 17                 MOV B,#0x17
CODE:3e8e  e5 2f                    MOV A,0x2f
CODE:3e90  a4                       MUL AB
CODE:3e91  25 35                    ADD A,0x35
CODE:3e93  f5 82                    MOV DPL,A
CODE:3e95  e4                       CLR A
CODE:3e96  35 f0                    ADDC A,B
CODE:3e98  f5 83                    MOV DPH,A
CODE:3e9a  e5 82                    MOV A,DPL
CODE:3e9c  24 2a                    ADD A,#0x2a
CODE:3e9e  f5 82                    MOV DPL,A
CODE:3ea0  e5 83                    MOV A,DPH
CODE:3ea2  34 01                    ADDC A,#0x1
CODE:3ea4  f5 83                    MOV DPH,A
CODE:3ea6  74 ff                    MOV A,#0xff
CODE:3ea8  f0                       MOVX @DPTR,A
CODE:3ea9  02 4d fb                 LJMP 0x4dfb
LAB_CODE_3eac:
CODE:3eac  ef                       MOV A,R7   ; XREF: CODE:3e11 CODE:3e31 CODE:3e4f 
CODE:3ead  60 03                    JZ 0x3eb2
CODE:3eaf  02 4d fb                 LJMP 0x4dfb
LAB_CODE_3eb2:
CODE:3eb2  75 f0 17                 MOV B,#0x17   ; XREF: CODE:3ead 
CODE:3eb5  e5 2f                    MOV A,0x2f
CODE:3eb7  a4                       MUL AB
CODE:3eb8  25 35                    ADD A,0x35
CODE:3eba  f5 82                    MOV DPL,A
CODE:3ebc  e4                       CLR A
CODE:3ebd  35 f0                    ADDC A,B
CODE:3ebf  f5 83                    MOV DPH,A
CODE:3ec1  e5 82                    MOV A,DPL
CODE:3ec3  24 95                    ADD A,#0x95
CODE:3ec5  f5 82                    MOV DPL,A
CODE:3ec7  e5 83                    MOV A,DPH
CODE:3ec9  34 00                    ADDC A,#0x0
CODE:3ecb  f5 83                    MOV DPH,A
CODE:3ecd  e0                       MOVX A,@DPTR
CODE:3ece  60 03                    JZ 0x3ed3
CODE:3ed0  02 4d fb                 LJMP 0x4dfb
LAB_CODE_3ed3:
CODE:3ed3  75 f0 17                 MOV B,#0x17   ; XREF: CODE:3ece 
CODE:3ed6  e5 2f                    MOV A,0x2f
CODE:3ed8  a4                       MUL AB
CODE:3ed9  25 35                    ADD A,0x35
CODE:3edb  f5 82                    MOV DPL,A
CODE:3edd  e4                       CLR A
CODE:3ede  35 f0                    ADDC A,B
CODE:3ee0  f5 83                    MOV DPH,A
CODE:3ee2  e5 82                    MOV A,DPL
CODE:3ee4  24 2a                    ADD A,#0x2a
CODE:3ee6  f5 82                    MOV DPL,A
CODE:3ee8  e5 83                    MOV A,DPH
CODE:3eea  34 01                    ADDC A,#0x1
CODE:3eec  f5 83                    MOV DPH,A
CODE:3eee  e0                       MOVX A,@DPTR
CODE:3eef  f4                       CPL A
CODE:3ef0  60 03                    JZ 0x3ef5
CODE:3ef2  02 4d fb                 LJMP 0x4dfb
LAB_CODE_3ef5:
CODE:3ef5  75 f0 17                 MOV B,#0x17   ; XREF: CODE:3ef0 
CODE:3ef8  e5 2f                    MOV A,0x2f
CODE:3efa  a4                       MUL AB
CODE:3efb  25 35                    ADD A,0x35
CODE:3efd  f5 82                    MOV DPL,A
CODE:3eff  e4                       CLR A
CODE:3f00  35 f0                    ADDC A,B
CODE:3f02  f5 83                    MOV DPH,A
CODE:3f04  e5 82                    MOV A,DPL
CODE:3f06  24 00                    ADD A,#0x0
CODE:3f08  f5 82                    MOV DPL,A
CODE:3f0a  e5 83                    MOV A,DPH
CODE:3f0c  34 00                    ADDC A,#0x0
CODE:3f0e  f5 83                    MOV DPH,A
CODE:3f10  e4                       CLR A
LAB_CODE_3f11:
CODE:3f11  f0                       MOVX @DPTR,A   ; XREF: CODE:3d57 
CODE:3f12  75 f0 17                 MOV B,#0x17
CODE:3f15  e5 2f                    MOV A,0x2f
CODE:3f17  a4                       MUL AB
CODE:3f18  25 35                    ADD A,0x35
CODE:3f1a  f5 82                    MOV DPL,A
CODE:3f1c  e4                       CLR A
CODE:3f1d  35 f0                    ADDC A,B
CODE:3f1f  f5 83                    MOV DPH,A
CODE:3f21  e5 82                    MOV A,DPL
CODE:3f23  24 95                    ADD A,#0x95
CODE:3f25  f5 82                    MOV DPL,A
CODE:3f27  e5 83                    MOV A,DPH
CODE:3f29  34 00                    ADDC A,#0x0
CODE:3f2b  f5 83                    MOV DPH,A
CODE:3f2d  e4                       CLR A
LAB_CODE_3f2e:
CODE:3f2e  f0                       MOVX @DPTR,A   ; XREF: CODE:3def 
CODE:3f2f  75 f0 17                 MOV B,#0x17
CODE:3f32  e5 2f                    MOV A,0x2f
CODE:3f34  a4                       MUL AB
CODE:3f35  25 35                    ADD A,0x35
CODE:3f37  f5 82                    MOV DPL,A
CODE:3f39  e4                       CLR A
CODE:3f3a  35 f0                    ADDC A,B
CODE:3f3c  f5 83                    MOV DPH,A
CODE:3f3e  e5 82                    MOV A,DPL
CODE:3f40  24 2a                    ADD A,#0x2a
CODE:3f42  f5 82                    MOV DPL,A
CODE:3f44  e5 83                    MOV A,DPH
CODE:3f46  34 01                    ADDC A,#0x1
CODE:3f48  f5 83                    MOV DPH,A
CODE:3f4a  e4                       CLR A
CODE:3f4b  f0                       MOVX @DPTR,A
CODE:3f4c  02 4d fb                 LJMP 0x4dfb
LAB_CODE_3f4f:
CODE:3f4f  e5 2f                    MOV A,0x2f   ; XREF: CODE:3afd 
CODE:3f51  70 2e                    JNZ 0x3f81
CODE:3f53  e5 35                    MOV A,0x35
CODE:3f55  64 12                    XRL A,#0x12
CODE:3f57  70 28                    JNZ 0x3f81
CODE:3f59  30 10 25                 JNB 0x10,0x3f81
CODE:3f5c  30 00 02                 JNB 0x00,0x3f61
CODE:3f5f  b2 18                    CPL 0x18
LAB_CODE_3f61:
CODE:3f61  20 18 03                 JB 0x18,0x3f67   ; XREF: CODE:3f5c 
CODE:3f64  02 4e 00                 LJMP 0x4e00
LAB_CODE_3f67:
CODE:3f67  e4                       CLR A   ; XREF: CODE:3f61 
CODE:3f68  f5 34                    MOV 0x34,A
LAB_CODE_3f6a:
CODE:3f6a  74 00                    MOV A,#0x0   ; XREF: CODE:3f7b 
CODE:3f6c  25 34                    ADD A,0x34
CODE:3f6e  f5 82                    MOV DPL,A
CODE:3f70  e4                       CLR A
CODE:3f71  34 02                    ADDC A,#0x2
CODE:3f73  f5 83                    MOV DPH,A
CODE:3f75  e4                       CLR A
CODE:3f76  f0                       MOVX @DPTR,A
CODE:3f77  05 34                    INC 0x34
CODE:3f79  e5 34                    MOV A,0x34
CODE:3f7b  b4 10 ec                 CJNE A,#0x10,0x3f6a
CODE:3f7e  d2 02                    SETB 0x02
CODE:3f80  22                       RET
LAB_CODE_3f81:
CODE:3f81  30 18 03                 JNB 0x18,0x3f87   ; XREF: CODE:3f51 CODE:3f57 CODE:3f59 
CODE:3f84  02 4e 00                 LJMP 0x4e00
LAB_CODE_3f87:
CODE:3f87  e5 2f                    MOV A,0x2f   ; XREF: CODE:3f81 
CODE:3f89  b4 05 1d                 CJNE A,#0x5,0x3fa9
CODE:3f8c  e5 35                    MOV A,0x35
CODE:3f8e  b4 0d 18                 CJNE A,#0xd,0x3fa9
CODE:3f91  30 10 15                 JNB 0x10,0x3fa9
CODE:3f94  20 00 03                 JB 0x00,0x3f9a
CODE:3f97  02 4e 00                 LJMP 0x4e00
LAB_CODE_3f9a:
CODE:3f9a  78 5a                    MOV R0,#0x5a   ; XREF: CODE:3f94 
CODE:3f9c  06                       INC @R0
CODE:3f9d  e6                       MOV A,@R0
CODE:3f9e  d3                       SETB CY
CODE:3f9f  94 06                    SUBB A,#0x6
CODE:3fa1  50 03                    JNC 0x3fa6
CODE:3fa3  02 4e 00                 LJMP 0x4e00
LAB_CODE_3fa6:
CODE:3fa6  e4                       CLR A   ; XREF: CODE:3fa1 
CODE:3fa7  f6                       MOV @R0,A
CODE:3fa8  22                       RET
LAB_CODE_3fa9:
CODE:3fa9  e5 2f                    MOV A,0x2f   ; XREF: CODE:3f89 CODE:3f8e CODE:3f91 
CODE:3fab  b4 02 11                 CJNE A,#0x2,0x3fbf
CODE:3fae  e5 35                    MOV A,0x35
CODE:3fb0  b4 03 0c                 CJNE A,#0x3,0x3fbf
CODE:3fb3  30 10 09                 JNB 0x10,0x3fbf
CODE:3fb6  20 00 03                 JB 0x00,0x3fbc
CODE:3fb9  02 4e 00                 LJMP 0x4e00
LAB_CODE_3fbc:
CODE:3fbc  b2 14                    CPL 0x14   ; XREF: CODE:3fb6 
CODE:3fbe  22                       RET
LAB_CODE_3fbf:
CODE:3fbf  e5 2f                    MOV A,0x2f   ; XREF: CODE:3fab CODE:3fb0 CODE:3fb3 
CODE:3fc1  60 03                    JZ 0x3fc6
CODE:3fc3  02 41 7a                 LJMP 0x417a
LAB_CODE_3fc6:
CODE:3fc6  e5 35                    MOV A,0x35   ; XREF: CODE:3fc1 
CODE:3fc8  64 11                    XRL A,#0x11
CODE:3fca  60 03                    JZ 0x3fcf
CODE:3fcc  02 41 7a                 LJMP 0x417a
LAB_CODE_3fcf:
CODE:3fcf  20 10 03                 JB 0x10,0x3fd5   ; XREF: CODE:3fca 
CODE:3fd2  02 41 7a                 LJMP 0x417a
LAB_CODE_3fd5:
CODE:3fd5  20 00 03                 JB 0x00,0x3fdb   ; XREF: CODE:3fcf 
CODE:3fd8  02 4e 00                 LJMP 0x4e00
LAB_CODE_3fdb:
CODE:3fdb  78 76                    MOV R0,#0x76   ; XREF: CODE:3fd5 
CODE:3fdd  06                       INC @R0
CODE:3fde  e6                       MOV A,@R0
CODE:3fdf  d3                       SETB CY
CODE:3fe0  94 0a                    SUBB A,#0xa
CODE:3fe2  40 02                    JC 0x3fe6
CODE:3fe4  e4                       CLR A
CODE:3fe5  f6                       MOV @R0,A
LAB_CODE_3fe6:
CODE:3fe6  e4                       CLR A   ; XREF: CODE:3fe2 
CODE:3fe7  f5 36                    MOV 0x36,A
LAB_CODE_3fe9:
CODE:3fe9  74 00                    MOV A,#0x0   ; XREF: CODE:4017 
CODE:3feb  25 36                    ADD A,0x36
CODE:3fed  f5 82                    MOV DPL,A
CODE:3fef  e4                       CLR A
CODE:3ff0  34 00                    ADDC A,#0x0
CODE:3ff2  f5 83                    MOV DPH,A
CODE:3ff4  74 ff                    MOV A,#0xff
CODE:3ff6  f0                       MOVX @DPTR,A
CODE:3ff7  74 95                    MOV A,#0x95
CODE:3ff9  25 36                    ADD A,0x36
CODE:3ffb  f5 82                    MOV DPL,A
CODE:3ffd  e4                       CLR A
CODE:3ffe  34 00                    ADDC A,#0x0
CODE:4000  f5 83                    MOV DPH,A
CODE:4002  74 ff                    MOV A,#0xff
CODE:4004  f0                       MOVX @DPTR,A
CODE:4005  74 2a                    MOV A,#0x2a
CODE:4007  25 36                    ADD A,0x36
CODE:4009  f5 82                    MOV DPL,A
CODE:400b  e4                       CLR A
CODE:400c  34 01                    ADDC A,#0x1
CODE:400e  f5 83                    MOV DPH,A
CODE:4010  74 ff                    MOV A,#0xff
CODE:4012  f0                       MOVX @DPTR,A
CODE:4013  05 36                    INC 0x36
CODE:4015  e5 36                    MOV A,0x36
CODE:4017  b4 8a cf                 CJNE A,#0x8a,0x3fe9
CODE:401a  78 76                    MOV R0,#0x76
CODE:401c  e6                       MOV A,@R0
CODE:401d  ff                       MOV R7,A
CODE:401e  70 03                    JNZ 0x4023
CODE:4020  02 41 74                 LJMP 0x4174
LAB_CODE_4023:
CODE:4023  ef                       MOV A,R7   ; XREF: CODE:401e 
CODE:4024  b4 01 21                 CJNE A,#0x1,0x4048
CODE:4027  e4                       CLR A
CODE:4028  78 68                    MOV R0,#0x68
CODE:402a  f6                       MOV @R0,A
CODE:402b  18                       DEC R0
CODE:402c  76 1c                    MOV @R0,#0x1c
CODE:402e  18                       DEC R0
CODE:402f  76 38                    MOV @R0,#0x38
CODE:4031  18                       DEC R0
CODE:4032  76 54                    MOV @R0,#0x54
CODE:4034  18                       DEC R0
CODE:4035  76 70                    MOV @R0,#0x70
CODE:4037  18                       DEC R0
CODE:4038  76 8c                    MOV @R0,#0x8c
CODE:403a  18                       DEC R0
CODE:403b  76 a8                    MOV @R0,#0xa8
CODE:403d  18                       DEC R0
CODE:403e  76 c4                    MOV @R0,#0xc4
CODE:4040  18                       DEC R0
CODE:4041  76 e0                    MOV @R0,#0xe0
CODE:4043  18                       DEC R0
CODE:4044  76 ff                    MOV @R0,#0xff
CODE:4046  80 1a                    SJMP 0x4062
LAB_CODE_4048:
CODE:4048  ef                       MOV A,R7   ; XREF: CODE:4024 
CODE:4049  b4 03 1b                 CJNE A,#0x3,0x4067
CODE:404c  e4                       CLR A
CODE:404d  78 68                    MOV R0,#0x68
CODE:404f  f6                       MOV @R0,A
CODE:4050  18                       DEC R0
CODE:4051  f6                       MOV @R0,A
CODE:4052  18                       DEC R0
CODE:4053  f6                       MOV @R0,A
CODE:4054  18                       DEC R0
CODE:4055  f6                       MOV @R0,A
CODE:4056  18                       DEC R0
CODE:4057  f6                       MOV @R0,A
CODE:4058  18                       DEC R0
CODE:4059  f6                       MOV @R0,A
CODE:405a  18                       DEC R0
CODE:405b  f6                       MOV @R0,A
CODE:405c  18                       DEC R0
CODE:405d  f6                       MOV @R0,A
CODE:405e  18                       DEC R0
CODE:405f  f6                       MOV @R0,A
CODE:4060  18                       DEC R0
CODE:4061  f6                       MOV @R0,A
LAB_CODE_4062:
CODE:4062  f5 1d                    MOV 0x1d,A   ; XREF: CODE:4046 
CODE:4064  f5 1c                    MOV 0x1c,A
CODE:4066  22                       RET
LAB_CODE_4067:
CODE:4067  ef                       MOV A,R7   ; XREF: CODE:4049 
CODE:4068  b4 07 07                 CJNE A,#0x7,0x4072
CODE:406b  e4                       CLR A
CODE:406c  78 5e                    MOV R0,#0x5e
CODE:406e  f6                       MOV @R0,A
CODE:406f  c2 25                    CLR 0x25
CODE:4071  22                       RET
LAB_CODE_4072:
CODE:4072  ef                       MOV A,R7   ; XREF: CODE:4068 
CODE:4073  64 06                    XRL A,#0x6
CODE:4075  70 51                    JNZ 0x40c8
CODE:4077  78 5e                    MOV R0,#0x5e
CODE:4079  f6                       MOV @R0,A
CODE:407a  f5 1c                    MOV 0x1c,A
CODE:407c  78 75                    MOV R0,#0x75
CODE:407e  f6                       MOV @R0,A
CODE:407f  18                       DEC R0
CODE:4080  76 0b                    MOV @R0,#0xb
CODE:4082  18                       DEC R0
CODE:4083  76 16                    MOV @R0,#0x16
CODE:4085  18                       DEC R0
CODE:4086  76 21                    MOV @R0,#0x21
CODE:4088  18                       DEC R0
CODE:4089  76 2c                    MOV @R0,#0x2c
CODE:408b  18                       DEC R0
CODE:408c  76 37                    MOV @R0,#0x37
CODE:408e  18                       DEC R0
CODE:408f  76 42                    MOV @R0,#0x42
CODE:4091  18                       DEC R0
CODE:4092  76 4d                    MOV @R0,#0x4d
CODE:4094  18                       DEC R0
CODE:4095  76 58                    MOV @R0,#0x58
CODE:4097  18                       DEC R0
CODE:4098  76 63                    MOV @R0,#0x63
CODE:409a  18                       DEC R0
CODE:409b  76 6e                    MOV @R0,#0x6e
CODE:409d  18                       DEC R0
CODE:409e  76 79                    MOV @R0,#0x79
CODE:40a0  18                       DEC R0
CODE:40a1  76 84                    MOV @R0,#0x84
CODE:40a3  18                       DEC R0
CODE:40a4  76 8f                    MOV @R0,#0x8f
CODE:40a6  18                       DEC R0
CODE:40a7  76 9a                    MOV @R0,#0x9a
CODE:40a9  18                       DEC R0
CODE:40aa  76 a5                    MOV @R0,#0xa5
CODE:40ac  18                       DEC R0
CODE:40ad  76 b0                    MOV @R0,#0xb0
CODE:40af  18                       DEC R0
CODE:40b0  76 bb                    MOV @R0,#0xbb
CODE:40b2  18                       DEC R0
CODE:40b3  76 c6                    MOV @R0,#0xc6
CODE:40b5  18                       DEC R0
CODE:40b6  76 d1                    MOV @R0,#0xd1
CODE:40b8  18                       DEC R0
CODE:40b9  76 dc                    MOV @R0,#0xdc
CODE:40bb  18                       DEC R0
CODE:40bc  76 e7                    MOV @R0,#0xe7
CODE:40be  18                       DEC R0
CODE:40bf  76 f2                    MOV @R0,#0xf2
CODE:40c1  f5 0c                    MOV 0x0c,A
CODE:40c3  f5 0d                    MOV 0x0d,A
CODE:40c5  f5 0e                    MOV 0x0e,A
CODE:40c7  22                       RET
LAB_CODE_40c8:
CODE:40c8  ef                       MOV A,R7   ; XREF: CODE:4075 
CODE:40c9  64 08                    XRL A,#0x8
CODE:40cb  60 03                    JZ 0x40d0
CODE:40cd  02 41 6a                 LJMP 0x416a
LAB_CODE_40d0:
CODE:40d0  f5 36                    MOV 0x36,A   ; XREF: CODE:40cb 
LAB_CODE_40d2:
CODE:40d2  e5 1c                    MOV A,0x1c   ; XREF: CODE:4166 
CODE:40d4  70 05                    JNZ 0x40db
CODE:40d6  75 38 ff                 MOV 0x38,#0xff
CODE:40d9  80 2b                    SJMP 0x4106
LAB_CODE_40db:
CODE:40db  e5 1c                    MOV A,0x1c   ; XREF: CODE:40d4 
CODE:40dd  b4 01 06                 CJNE A,#0x1,0x40e6
CODE:40e0  75 38 ff                 MOV 0x38,#0xff
CODE:40e3  e4                       CLR A
CODE:40e4  80 2f                    SJMP 0x4115
LAB_CODE_40e6:
CODE:40e6  e5 1c                    MOV A,0x1c   ; XREF: CODE:40dd 
CODE:40e8  b4 02 08                 CJNE A,#0x2,0x40f3
CODE:40eb  e4                       CLR A
CODE:40ec  f5 38                    MOV 0x38,A
CODE:40ee  75 39 ff                 MOV 0x39,#0xff
CODE:40f1  80 24                    SJMP 0x4117
LAB_CODE_40f3:
CODE:40f3  e5 1c                    MOV A,0x1c   ; XREF: CODE:40e8 
CODE:40f5  b4 03 06                 CJNE A,#0x3,0x40fe
CODE:40f8  75 38 ff                 MOV 0x38,#0xff
CODE:40fb  e4                       CLR A
CODE:40fc  80 26                    SJMP 0x4124
LAB_CODE_40fe:
CODE:40fe  e5 1c                    MOV A,0x1c   ; XREF: CODE:40f5 
CODE:4100  b4 04 0a                 CJNE A,#0x4,0x410d
CODE:4103  e4                       CLR A
CODE:4104  f5 38                    MOV 0x38,A
LAB_CODE_4106:
CODE:4106  75 39 ff                 MOV 0x39,#0xff   ; XREF: CODE:40d9 
CODE:4109  f5 3a                    MOV 0x3a,A
CODE:410b  80 1b                    SJMP 0x4128
LAB_CODE_410d:
CODE:410d  e5 1c                    MOV A,0x1c   ; XREF: CODE:4100 
CODE:410f  b4 05 0a                 CJNE A,#0x5,0x411c
CODE:4112  e4                       CLR A
CODE:4113  f5 38                    MOV 0x38,A
LAB_CODE_4115:
CODE:4115  f5 39                    MOV 0x39,A   ; XREF: CODE:40e4 
LAB_CODE_4117:
CODE:4117  75 3a ff                 MOV 0x3a,#0xff   ; XREF: CODE:40f1 
CODE:411a  80 0c                    SJMP 0x4128
LAB_CODE_411c:
CODE:411c  e5 1c                    MOV A,0x1c   ; XREF: CODE:410f 
CODE:411e  b4 06 07                 CJNE A,#0x6,0x4128
CODE:4121  e4                       CLR A
CODE:4122  f5 38                    MOV 0x38,A
LAB_CODE_4124:
CODE:4124  f5 39                    MOV 0x39,A   ; XREF: CODE:40fc 
CODE:4126  f5 3a                    MOV 0x3a,A
LAB_CODE_4128:
CODE:4128  74 00                    MOV A,#0x0   ; XREF: CODE:410b CODE:411a CODE:411e 
CODE:412a  25 36                    ADD A,0x36
CODE:412c  f5 82                    MOV DPL,A
CODE:412e  e4                       CLR A
CODE:412f  34 00                    ADDC A,#0x0
CODE:4131  f5 83                    MOV DPH,A
CODE:4133  e5 38                    MOV A,0x38
CODE:4135  f0                       MOVX @DPTR,A
CODE:4136  74 95                    MOV A,#0x95
CODE:4138  25 36                    ADD A,0x36
CODE:413a  f5 82                    MOV DPL,A
CODE:413c  e4                       CLR A
CODE:413d  34 00                    ADDC A,#0x0
CODE:413f  f5 83                    MOV DPH,A
CODE:4141  e5 39                    MOV A,0x39
CODE:4143  f0                       MOVX @DPTR,A
CODE:4144  74 2a                    MOV A,#0x2a
CODE:4146  25 36                    ADD A,0x36
CODE:4148  f5 82                    MOV DPL,A
CODE:414a  e4                       CLR A
CODE:414b  34 01                    ADDC A,#0x1
CODE:414d  f5 83                    MOV DPH,A
CODE:414f  e5 3a                    MOV A,0x3a
CODE:4151  f0                       MOVX @DPTR,A
CODE:4152  05 1c                    INC 0x1c
CODE:4154  e5 1c                    MOV A,0x1c
CODE:4156  d3                       SETB CY
CODE:4157  94 06                    SUBB A,#0x6
CODE:4159  40 03                    JC 0x415e
CODE:415b  e4                       CLR A
CODE:415c  f5 1c                    MOV 0x1c,A
LAB_CODE_415e:
CODE:415e  05 36                    INC 0x36   ; XREF: CODE:4159 
CODE:4160  e5 36                    MOV A,0x36
CODE:4162  64 8a                    XRL A,#0x8a
CODE:4164  60 03                    JZ 0x4169
CODE:4166  02 40 d2                 LJMP 0x40d2
LAB_CODE_4169:
CODE:4169  22                       RET   ; XREF: CODE:4164 
LAB_CODE_416a:
CODE:416a  78 76                    MOV R0,#0x76   ; XREF: CODE:40cd 
CODE:416c  e6                       MOV A,@R0
CODE:416d  64 09                    XRL A,#0x9
CODE:416f  60 03                    JZ 0x4174
CODE:4171  02 4e 00                 LJMP 0x4e00
LAB_CODE_4174:
CODE:4174  78 5e                    MOV R0,#0x5e   ; XREF: CODE:4020 CODE:416f 
CODE:4176  f6                       MOV @R0,A
CODE:4177  f5 1c                    MOV 0x1c,A
CODE:4179  22                       RET
LAB_CODE_417a:
CODE:417a  e5 2f                    MOV A,0x2f   ; XREF: CODE:3fc3 CODE:3fcc CODE:3fd2 
CODE:417c  64 02                    XRL A,#0x2
CODE:417e  70 5c                    JNZ 0x41dc
CODE:4180  e5 35                    MOV A,0x35
CODE:4182  64 10                    XRL A,#0x10
CODE:4184  70 56                    JNZ 0x41dc
CODE:4186  30 10 53                 JNB 0x10,0x41dc
CODE:4189  20 00 03                 JB 0x00,0x418f
CODE:418c  02 4e 00                 LJMP 0x4e00
LAB_CODE_418f:
CODE:418f  f5 36                    MOV 0x36,A   ; XREF: CODE:4189 
LAB_CODE_4191:
CODE:4191  74 00                    MOV A,#0x0   ; XREF: CODE:41bf 
CODE:4193  25 36                    ADD A,0x36
CODE:4195  f5 82                    MOV DPL,A
CODE:4197  e4                       CLR A
CODE:4198  34 00                    ADDC A,#0x0
CODE:419a  f5 83                    MOV DPH,A
CODE:419c  74 ff                    MOV A,#0xff
CODE:419e  f0                       MOVX @DPTR,A
CODE:419f  74 95                    MOV A,#0x95
CODE:41a1  25 36                    ADD A,0x36
CODE:41a3  f5 82                    MOV DPL,A
CODE:41a5  e4                       CLR A
CODE:41a6  34 00                    ADDC A,#0x0
CODE:41a8  f5 83                    MOV DPH,A
CODE:41aa  74 ff                    MOV A,#0xff
CODE:41ac  f0                       MOVX @DPTR,A
CODE:41ad  74 2a                    MOV A,#0x2a
CODE:41af  25 36                    ADD A,0x36
CODE:41b1  f5 82                    MOV DPL,A
CODE:41b3  e4                       CLR A
CODE:41b4  34 01                    ADDC A,#0x1
CODE:41b6  f5 83                    MOV DPH,A
CODE:41b8  74 ff                    MOV A,#0xff
CODE:41ba  f0                       MOVX @DPTR,A
CODE:41bb  05 36                    INC 0x36
CODE:41bd  e5 36                    MOV A,0x36
CODE:41bf  b4 8a cf                 CJNE A,#0x8a,0x4191
CODE:41c2  78 76                    MOV R0,#0x76
CODE:41c4  e6                       MOV A,@R0
CODE:41c5  c3                       CLR CY
CODE:41c6  94 10                    SUBB A,#0x10
CODE:41c8  50 03                    JNC 0x41cd
CODE:41ca  76 10                    MOV @R0,#0x10
CODE:41cc  22                       RET
LAB_CODE_41cd:
CODE:41cd  78 76                    MOV R0,#0x76   ; XREF: CODE:41c8 
CODE:41cf  06                       INC @R0
CODE:41d0  e6                       MOV A,@R0
CODE:41d1  d3                       SETB CY
CODE:41d2  94 13                    SUBB A,#0x13
CODE:41d4  50 03                    JNC 0x41d9
CODE:41d6  02 4e 00                 LJMP 0x4e00
LAB_CODE_41d9:
CODE:41d9  76 10                    MOV @R0,#0x10   ; XREF: CODE:41d4 
CODE:41db  22                       RET
LAB_CODE_41dc:
CODE:41dc  e5 2f                    MOV A,0x2f   ; XREF: CODE:417e CODE:4184 CODE:4186 
CODE:41de  64 04                    XRL A,#0x4
CODE:41e0  70 44                    JNZ 0x4226
CODE:41e2  e5 35                    MOV A,0x35
CODE:41e4  64 11                    XRL A,#0x11
CODE:41e6  70 3e                    JNZ 0x4226
CODE:41e8  30 10 3b                 JNB 0x10,0x4226
CODE:41eb  20 00 03                 JB 0x00,0x41f1
CODE:41ee  02 4e 00                 LJMP 0x4e00
LAB_CODE_41f1:
CODE:41f1  78 7a                    MOV R0,#0x7a   ; XREF: CODE:41eb 
CODE:41f3  06                       INC @R0
CODE:41f4  e6                       MOV A,@R0
CODE:41f5  d3                       SETB CY
CODE:41f6  94 04                    SUBB A,#0x4
CODE:41f8  40 02                    JC 0x41fc
CODE:41fa  76 04                    MOV @R0,#0x4
LAB_CODE_41fc:
CODE:41fc  78 7a                    MOV R0,#0x7a   ; XREF: CODE:41f8 
CODE:41fe  e6                       MOV A,@R0
CODE:41ff  ff                       MOV R7,A
CODE:4200  b4 04 09                 CJNE A,#0x4,0x420c
CODE:4203  d2 24                    SETB 0x24
CODE:4205  75 1f 09                 MOV 0x1f,#0x9
CODE:4208  d2 22                    SETB 0x22
CODE:420a  80 3f                    SJMP 0x424b
LAB_CODE_420c:
CODE:420c  ef                       MOV A,R7   ; XREF: CODE:4200 
CODE:420d  b4 03 02                 CJNE A,#0x3,0x4212
CODE:4210  80 45                    SJMP 0x4257
LAB_CODE_4212:
CODE:4212  ef                       MOV A,R7   ; XREF: CODE:420d 
CODE:4213  b4 02 02                 CJNE A,#0x2,0x4218
CODE:4216  80 50                    SJMP 0x4268
LAB_CODE_4218:
CODE:4218  ef                       MOV A,R7   ; XREF: CODE:4213 
CODE:4219  b4 01 02                 CJNE A,#0x1,0x421e
CODE:421c  80 5b                    SJMP 0x4279
LAB_CODE_421e:
CODE:421e  ef                       MOV A,R7   ; XREF: CODE:4219 
CODE:421f  60 03                    JZ 0x4224
CODE:4221  02 4e 00                 LJMP 0x4e00
LAB_CODE_4224:
CODE:4224  80 6d                    SJMP 0x4293   ; XREF: CODE:421f 
LAB_CODE_4226:
CODE:4226  e5 2f                    MOV A,0x2f   ; XREF: CODE:41e0 CODE:41e6 CODE:41e8 
CODE:4228  64 05                    XRL A,#0x5
CODE:422a  70 6a                    JNZ 0x4296
CODE:422c  e5 35                    MOV A,0x35
CODE:422e  64 11                    XRL A,#0x11
CODE:4230  70 64                    JNZ 0x4296
CODE:4232  30 10 61                 JNB 0x10,0x4296
CODE:4235  20 00 03                 JB 0x00,0x423b
CODE:4238  02 4e 00                 LJMP 0x4e00
LAB_CODE_423b:
CODE:423b  78 7a                    MOV R0,#0x7a   ; XREF: CODE:4235 
CODE:423d  e6                       MOV A,@R0
CODE:423e  d3                       SETB CY
CODE:423f  94 00                    SUBB A,#0x0
CODE:4241  40 01                    JC 0x4244
CODE:4243  16                       DEC @R0
LAB_CODE_4244:
CODE:4244  78 7a                    MOV R0,#0x7a   ; XREF: CODE:4241 
CODE:4246  e6                       MOV A,@R0
CODE:4247  ff                       MOV R7,A
CODE:4248  b4 04 08                 CJNE A,#0x4,0x4253
LAB_CODE_424b:
CODE:424b  90 ff 95                 MOV DPTR,#0xff95   ; XREF: CODE:420a 
CODE:424e  e4                       CLR A
CODE:424f  f0                       MOVX @DPTR,A
CODE:4250  c2 b7                    CLR 0xb7
CODE:4252  22                       RET
LAB_CODE_4253:
CODE:4253  ef                       MOV A,R7   ; XREF: CODE:4248 
CODE:4254  b4 03 0d                 CJNE A,#0x3,0x4264
LAB_CODE_4257:
CODE:4257  90 ff 95                 MOV DPTR,#0xff95   ; XREF: CODE:4210 
CODE:425a  74 08                    MOV A,#0x8
CODE:425c  f0                       MOVX @DPTR,A
CODE:425d  90 ff b5                 MOV DPTR,#0xffb5
CODE:4260  74 80                    MOV A,#0x80
CODE:4262  f0                       MOVX @DPTR,A
CODE:4263  22                       RET
LAB_CODE_4264:
CODE:4264  ef                       MOV A,R7   ; XREF: CODE:4254 
CODE:4265  b4 02 0d                 CJNE A,#0x2,0x4275
LAB_CODE_4268:
CODE:4268  90 ff 95                 MOV DPTR,#0xff95   ; XREF: CODE:4216 
CODE:426b  74 08                    MOV A,#0x8
CODE:426d  f0                       MOVX @DPTR,A
CODE:426e  90 ff b5                 MOV DPTR,#0xffb5
CODE:4271  74 b4                    MOV A,#0xb4
CODE:4273  f0                       MOVX @DPTR,A
CODE:4274  22                       RET
LAB_CODE_4275:
CODE:4275  ef                       MOV A,R7   ; XREF: CODE:4265 
CODE:4276  b4 01 0d                 CJNE A,#0x1,0x4286
LAB_CODE_4279:
CODE:4279  90 ff 95                 MOV DPTR,#0xff95   ; XREF: CODE:421c 
CODE:427c  74 08                    MOV A,#0x8
CODE:427e  f0                       MOVX @DPTR,A
CODE:427f  90 ff b5                 MOV DPTR,#0xffb5
CODE:4282  74 e6                    MOV A,#0xe6
CODE:4284  f0                       MOVX @DPTR,A
CODE:4285  22                       RET
LAB_CODE_4286:
CODE:4286  ef                       MOV A,R7   ; XREF: CODE:4276 
CODE:4287  60 03                    JZ 0x428c
CODE:4289  02 4e 00                 LJMP 0x4e00
LAB_CODE_428c:
CODE:428c  d2 24                    SETB 0x24   ; XREF: CODE:4287 
CODE:428e  75 1f 09                 MOV 0x1f,#0x9
CODE:4291  d2 22                    SETB 0x22
LAB_CODE_4293:
CODE:4293  02 79 d2                 LJMP 0x79d2   ; XREF: CODE:4224 
LAB_CODE_4296:
CODE:4296  e5 2f                    MOV A,0x2f   ; XREF: CODE:422a CODE:4230 CODE:4232 
CODE:4298  64 05                    XRL A,#0x5
CODE:429a  70 51                    JNZ 0x42ed
CODE:429c  e5 35                    MOV A,0x35
CODE:429e  64 12                    XRL A,#0x12
CODE:42a0  70 4b                    JNZ 0x42ed
CODE:42a2  30 10 48                 JNB 0x10,0x42ed
CODE:42a5  78 76                    MOV R0,#0x76
CODE:42a7  e6                       MOV A,@R0
CODE:42a8  ff                       MOV R7,A
CODE:42a9  64 04                    XRL A,#0x4
CODE:42ab  70 03                    JNZ 0x42b0
CODE:42ad  02 4e 00                 LJMP 0x4e00
LAB_CODE_42b0:
CODE:42b0  ef                       MOV A,R7   ; XREF: CODE:42ab 
CODE:42b1  64 10                    XRL A,#0x10
CODE:42b3  70 03                    JNZ 0x42b8
CODE:42b5  02 4e 00                 LJMP 0x4e00
LAB_CODE_42b8:
CODE:42b8  ef                       MOV A,R7   ; XREF: CODE:42b3 
CODE:42b9  64 11                    XRL A,#0x11
CODE:42bb  70 03                    JNZ 0x42c0
CODE:42bd  02 4e 00                 LJMP 0x4e00
LAB_CODE_42c0:
CODE:42c0  ef                       MOV A,R7   ; XREF: CODE:42bb 
CODE:42c1  64 12                    XRL A,#0x12
CODE:42c3  70 03                    JNZ 0x42c8
CODE:42c5  02 4e 00                 LJMP 0x4e00
LAB_CODE_42c8:
CODE:42c8  ef                       MOV A,R7   ; XREF: CODE:42c3 
CODE:42c9  64 13                    XRL A,#0x13
CODE:42cb  70 03                    JNZ 0x42d0
CODE:42cd  02 4e 00                 LJMP 0x4e00
LAB_CODE_42d0:
CODE:42d0  20 00 03                 JB 0x00,0x42d6   ; XREF: CODE:42cb 
CODE:42d3  02 4e 00                 LJMP 0x4e00
LAB_CODE_42d6:
CODE:42d6  78 77                    MOV R0,#0x77   ; XREF: CODE:42d0 
CODE:42d8  06                       INC @R0
CODE:42d9  e6                       MOV A,@R0
CODE:42da  d3                       SETB CY
CODE:42db  94 04                    SUBB A,#0x4
CODE:42dd  40 02                    JC 0x42e1
CODE:42df  76 04                    MOV @R0,#0x4
LAB_CODE_42e1:
CODE:42e1  78 77                    MOV R0,#0x77   ; XREF: CODE:42dd 
CODE:42e3  e6                       MOV A,@R0
CODE:42e4  64 04                    XRL A,#0x4
CODE:42e6  60 03                    JZ 0x42eb
CODE:42e8  02 4e 00                 LJMP 0x4e00
LAB_CODE_42eb:
CODE:42eb  80 51                    SJMP 0x433e   ; XREF: CODE:42e6 
LAB_CODE_42ed:
CODE:42ed  e5 2f                    MOV A,0x2f   ; XREF: CODE:429a CODE:42a0 CODE:42a2 
CODE:42ef  64 05                    XRL A,#0x5
CODE:42f1  70 53                    JNZ 0x4346
CODE:42f3  e5 35                    MOV A,0x35
CODE:42f5  64 10                    XRL A,#0x10
CODE:42f7  70 4d                    JNZ 0x4346
CODE:42f9  30 10 4a                 JNB 0x10,0x4346
CODE:42fc  78 76                    MOV R0,#0x76
CODE:42fe  e6                       MOV A,@R0
CODE:42ff  ff                       MOV R7,A
CODE:4300  64 04                    XRL A,#0x4
CODE:4302  70 03                    JNZ 0x4307
CODE:4304  02 4e 00                 LJMP 0x4e00
LAB_CODE_4307:
CODE:4307  ef                       MOV A,R7   ; XREF: CODE:4302 
CODE:4308  64 10                    XRL A,#0x10
CODE:430a  70 03                    JNZ 0x430f
CODE:430c  02 4e 00                 LJMP 0x4e00
LAB_CODE_430f:
CODE:430f  ef                       MOV A,R7   ; XREF: CODE:430a 
CODE:4310  64 11                    XRL A,#0x11
CODE:4312  70 03                    JNZ 0x4317
CODE:4314  02 4e 00                 LJMP 0x4e00
LAB_CODE_4317:
CODE:4317  ef                       MOV A,R7   ; XREF: CODE:4312 
CODE:4318  64 12                    XRL A,#0x12
CODE:431a  70 03                    JNZ 0x431f
CODE:431c  02 4e 00                 LJMP 0x4e00
LAB_CODE_431f:
CODE:431f  ef                       MOV A,R7   ; XREF: CODE:431a 
CODE:4320  64 13                    XRL A,#0x13
CODE:4322  70 03                    JNZ 0x4327
CODE:4324  02 4e 00                 LJMP 0x4e00
LAB_CODE_4327:
CODE:4327  20 00 03                 JB 0x00,0x432d   ; XREF: CODE:4322 
CODE:432a  02 4e 00                 LJMP 0x4e00
LAB_CODE_432d:
CODE:432d  78 77                    MOV R0,#0x77   ; XREF: CODE:4327 
CODE:432f  e6                       MOV A,@R0
CODE:4330  d3                       SETB CY
CODE:4331  94 00                    SUBB A,#0x0
CODE:4333  40 01                    JC 0x4336
CODE:4335  16                       DEC @R0
LAB_CODE_4336:
CODE:4336  78 77                    MOV R0,#0x77   ; XREF: CODE:4333 
CODE:4338  e6                       MOV A,@R0
CODE:4339  60 03                    JZ 0x433e
CODE:433b  02 4e 00                 LJMP 0x4e00
LAB_CODE_433e:
CODE:433e  d2 24                    SETB 0x24   ; XREF: CODE:42eb CODE:4339 
CODE:4340  75 1f 09                 MOV 0x1f,#0x9
CODE:4343  d2 22                    SETB 0x22
CODE:4345  22                       RET
LAB_CODE_4346:
CODE:4346  e5 2f                    MOV A,0x2f   ; XREF: CODE:42f1 CODE:42f7 CODE:42f9 
CODE:4348  64 05                    XRL A,#0x5
CODE:434a  70 36                    JNZ 0x4382
CODE:434c  e5 35                    MOV A,0x35
CODE:434e  64 0b                    XRL A,#0xb
CODE:4350  70 30                    JNZ 0x4382
CODE:4352  30 10 2d                 JNB 0x10,0x4382
CODE:4355  20 00 03                 JB 0x00,0x435b
CODE:4358  02 4e 00                 LJMP 0x4e00
LAB_CODE_435b:
CODE:435b  78 7b                    MOV R0,#0x7b   ; XREF: CODE:4355 
CODE:435d  06                       INC @R0
CODE:435e  e6                       MOV A,@R0
CODE:435f  d3                       SETB CY
CODE:4360  94 02                    SUBB A,#0x2
CODE:4362  40 02                    JC 0x4366
CODE:4364  e4                       CLR A
CODE:4365  f6                       MOV @R0,A
LAB_CODE_4366:
CODE:4366  78 7b                    MOV R0,#0x7b   ; XREF: CODE:4362 
CODE:4368  e6                       MOV A,@R0
CODE:4369  ff                       MOV R7,A
CODE:436a  70 07                    JNZ 0x4373
CODE:436c  90 ff 94                 MOV DPTR,#0xff94
CODE:436f  f0                       MOVX @DPTR,A
CODE:4370  d2 ff                    SETB 0xff
CODE:4372  22                       RET
LAB_CODE_4373:
CODE:4373  ef                       MOV A,R7   ; XREF: CODE:436a 
CODE:4374  64 01                    XRL A,#0x1
CODE:4376  60 03                    JZ 0x437b
CODE:4378  02 4e 00                 LJMP 0x4e00
LAB_CODE_437b:
CODE:437b  90 ff 94                 MOV DPTR,#0xff94   ; XREF: CODE:4376 
CODE:437e  f0                       MOVX @DPTR,A
CODE:437f  c2 ff                    CLR 0xff
CODE:4381  22                       RET
LAB_CODE_4382:
CODE:4382  e5 2f                    MOV A,0x2f   ; XREF: CODE:434a CODE:4350 CODE:4352 
CODE:4384  70 42                    JNZ 0x43c8
CODE:4386  e5 35                    MOV A,0x35
CODE:4388  64 10                    XRL A,#0x10
CODE:438a  70 3c                    JNZ 0x43c8
CODE:438c  30 10 39                 JNB 0x10,0x43c8
CODE:438f  f5 34                    MOV 0x34,A
LAB_CODE_4391:
CODE:4391  74 00                    MOV A,#0x0   ; XREF: CODE:43a6 
CODE:4393  25 34                    ADD A,0x34
CODE:4395  f5 82                    MOV DPL,A
CODE:4397  e4                       CLR A
CODE:4398  34 02                    ADDC A,#0x2
CODE:439a  f5 83                    MOV DPH,A
CODE:439c  e0                       MOVX A,@DPTR
CODE:439d  60 03                    JZ 0x43a2
CODE:439f  02 4e 00                 LJMP 0x4e00
LAB_CODE_43a2:
CODE:43a2  05 34                    INC 0x34   ; XREF: CODE:439d 
CODE:43a4  e5 34                    MOV A,0x34
CODE:43a6  b4 10 e8                 CJNE A,#0x10,0x4391
CODE:43a9  30 00 02                 JNB 0x00,0x43ae
CODE:43ac  b2 27                    CPL 0x27
LAB_CODE_43ae:
CODE:43ae  e4                       CLR A   ; XREF: CODE:43a9 
CODE:43af  f5 34                    MOV 0x34,A
LAB_CODE_43b1:
CODE:43b1  74 00                    MOV A,#0x0   ; XREF: CODE:43c2 
CODE:43b3  25 34                    ADD A,0x34
CODE:43b5  f5 82                    MOV DPL,A
CODE:43b7  e4                       CLR A
CODE:43b8  34 02                    ADDC A,#0x2
CODE:43ba  f5 83                    MOV DPH,A
CODE:43bc  e4                       CLR A
CODE:43bd  f0                       MOVX @DPTR,A
CODE:43be  05 34                    INC 0x34
CODE:43c0  e5 34                    MOV A,0x34
CODE:43c2  b4 10 ec                 CJNE A,#0x10,0x43b1
CODE:43c5  d2 12                    SETB 0x12
CODE:43c7  22                       RET
LAB_CODE_43c8:
CODE:43c8  e5 2f                    MOV A,0x2f   ; XREF: CODE:4384 CODE:438a CODE:438c 
CODE:43ca  64 01                    XRL A,#0x1
CODE:43cc  70 3b                    JNZ 0x4409
CODE:43ce  e5 35                    MOV A,0x35
CODE:43d0  64 02                    XRL A,#0x2
CODE:43d2  70 35                    JNZ 0x4409
CODE:43d4  30 10 32                 JNB 0x10,0x4409
CODE:43d7  20 00 03                 JB 0x00,0x43dd
CODE:43da  02 4e 00                 LJMP 0x4e00
LAB_CODE_43dd:
CODE:43dd  90 03 32                 MOV DPTR,#0x332   ; XREF: CODE:43d7 
CODE:43e0  f0                       MOVX @DPTR,A
CODE:43e1  75 1a 11                 MOV 0x1a,#0x11
CODE:43e4  75 1b 80                 MOV 0x1b,#0x80
CODE:43e7  85 1b 82                 MOV DPL,0x1b
CODE:43ea  85 1a 83                 MOV DPH,0x1a
CODE:43ed  74 0d                    MOV A,#0xd
CODE:43ef  f0                       MOVX @DPTR,A
CODE:43f0  a3                       INC DPTR
CODE:43f1  74 03                    MOV A,#0x3
CODE:43f3  f0                       MOVX @DPTR,A
CODE:43f4  85 1b 82                 MOV DPL,0x1b
CODE:43f7  85 1a 83                 MOV DPH,0x1a
CODE:43fa  a3                       INC DPTR
CODE:43fb  a3                       INC DPTR
CODE:43fc  e4                       CLR A
CODE:43fd  f0                       MOVX @DPTR,A
CODE:43fe  85 1b 82                 MOV DPL,0x1b
CODE:4401  85 1a 83                 MOV DPH,0x1a
CODE:4404  a3                       INC DPTR
CODE:4405  a3                       INC DPTR
CODE:4406  a3                       INC DPTR
CODE:4407  80 42                    SJMP 0x444b
LAB_CODE_4409:
CODE:4409  e5 2f                    MOV A,0x2f   ; XREF: CODE:43cc CODE:43d2 CODE:43d4 
CODE:440b  64 01                    XRL A,#0x1
CODE:440d  70 78                    JNZ 0x4487
CODE:440f  e5 35                    MOV A,0x35
CODE:4411  64 03                    XRL A,#0x3
CODE:4413  70 72                    JNZ 0x4487
CODE:4415  30 10 6f                 JNB 0x10,0x4487
CODE:4418  20 00 03                 JB 0x00,0x441e
CODE:441b  02 4e 00                 LJMP 0x4e00
LAB_CODE_441e:
CODE:441e  90 03 32                 MOV DPTR,#0x332   ; XREF: CODE:4418 
CODE:4421  04                       INC A
CODE:4422  f0                       MOVX @DPTR,A
CODE:4423  75 1a 11                 MOV 0x1a,#0x11
CODE:4426  75 1b 80                 MOV 0x1b,#0x80
CODE:4429  85 1b 82                 MOV DPL,0x1b
CODE:442c  85 1a 83                 MOV DPH,0x1a
CODE:442f  74 0d                    MOV A,#0xd
CODE:4431  f0                       MOVX @DPTR,A
CODE:4432  a3                       INC DPTR
CODE:4433  74 03                    MOV A,#0x3
CODE:4435  f0                       MOVX @DPTR,A
CODE:4436  85 1b 82                 MOV DPL,0x1b
CODE:4439  85 1a 83                 MOV DPH,0x1a
CODE:443c  a3                       INC DPTR
CODE:443d  a3                       INC DPTR
CODE:443e  74 01                    MOV A,#0x1
CODE:4440  f0                       MOVX @DPTR,A
CODE:4441  85 1b 82                 MOV DPL,0x1b
CODE:4444  85 1a 83                 MOV DPH,0x1a
CODE:4447  a3                       INC DPTR
CODE:4448  a3                       INC DPTR
CODE:4449  a3                       INC DPTR
CODE:444a  e4                       CLR A
LAB_CODE_444b:
CODE:444b  f0                       MOVX @DPTR,A   ; XREF: CODE:4407 
CODE:444c  e5 1b                    MOV A,0x1b
CODE:444e  24 04                    ADD A,#0x4
CODE:4450  f5 82                    MOV DPL,A
CODE:4452  e4                       CLR A
CODE:4453  35 1a                    ADDC A,0x1a
CODE:4455  f5 83                    MOV DPH,A
CODE:4457  e4                       CLR A
CODE:4458  f0                       MOVX @DPTR,A
CODE:4459  e5 1b                    MOV A,0x1b
CODE:445b  24 05                    ADD A,#0x5
CODE:445d  f5 82                    MOV DPL,A
CODE:445f  e4                       CLR A
CODE:4460  35 1a                    ADDC A,0x1a
CODE:4462  f5 83                    MOV DPH,A
CODE:4464  e4                       CLR A
CODE:4465  f0                       MOVX @DPTR,A
CODE:4466  e5 1b                    MOV A,0x1b
CODE:4468  24 06                    ADD A,#0x6
CODE:446a  f5 82                    MOV DPL,A
CODE:446c  e4                       CLR A
CODE:446d  35 1a                    ADDC A,0x1a
CODE:446f  f5 83                    MOV DPH,A
CODE:4471  e4                       CLR A
CODE:4472  f0                       MOVX @DPTR,A
CODE:4473  e5 1b                    MOV A,0x1b
CODE:4475  24 07                    ADD A,#0x7
CODE:4477  f5 82                    MOV DPL,A
CODE:4479  e4                       CLR A
CODE:447a  35 1a                    ADDC A,0x1a
CODE:447c  f5 83                    MOV DPH,A
CODE:447e  e4                       CLR A
CODE:447f  f0                       MOVX @DPTR,A
CODE:4480  75 9d 08                 MOV 0x9d,#0x8
CODE:4483  43 9a 04                 ORL 0x9a,#0x4
CODE:4486  22                       RET
LAB_CODE_4487:
CODE:4487  e5 2f                    MOV A,0x2f   ; XREF: CODE:440d CODE:4413 CODE:4415 
CODE:4489  70 1a                    JNZ 0x44a5
CODE:448b  e5 35                    MOV A,0x35
CODE:448d  b4 01 15                 CJNE A,#0x1,0x44a5
CODE:4490  30 10 12                 JNB 0x10,0x44a5
CODE:4493  e4                       CLR A
CODE:4494  78 78                    MOV R0,#0x78
CODE:4496  30 00 06                 JNB 0x00,0x449f
CODE:4499  f6                       MOV @R0,A
CODE:449a  08                       INC R0
CODE:449b  f6                       MOV @R0,A
CODE:449c  d2 17                    SETB 0x17
CODE:449e  22                       RET
LAB_CODE_449f:
CODE:449f  f6                       MOV @R0,A   ; XREF: CODE:4496 
CODE:44a0  08                       INC R0
CODE:44a1  f6                       MOV @R0,A
CODE:44a2  c2 17                    CLR 0x17
CODE:44a4  22                       RET
LAB_CODE_44a5:
CODE:44a5  e5 2f                    MOV A,0x2f   ; XREF: CODE:4489 CODE:448d CODE:4490 
CODE:44a7  70 31                    JNZ 0x44da
CODE:44a9  e5 35                    MOV A,0x35
CODE:44ab  64 03                    XRL A,#0x3
CODE:44ad  70 2b                    JNZ 0x44da
CODE:44af  30 10 18                 JNB 0x10,0x44ca
CODE:44b2  30 00 0c                 JNB 0x00,0x44c1
CODE:44b5  90 02 a5                 MOV DPTR,#0x2a5
CODE:44b8  74 23                    MOV A,#0x23
CODE:44ba  f0                       MOVX @DPTR,A
CODE:44bb  a3                       INC DPTR
CODE:44bc  74 02                    MOV A,#0x2
CODE:44be  02 46 39                 LJMP 0x4639
LAB_CODE_44c1:
CODE:44c1  e4                       CLR A   ; XREF: CODE:44b2 
CODE:44c2  90 02 a5                 MOV DPTR,#0x2a5
CODE:44c5  f0                       MOVX @DPTR,A
CODE:44c6  a3                       INC DPTR
CODE:44c7  02 46 39                 LJMP 0x4639
LAB_CODE_44ca:
CODE:44ca  20 00 0d                 JB 0x00,0x44da   ; XREF: CODE:44af 
CODE:44cd  90 02 a5                 MOV DPTR,#0x2a5
CODE:44d0  e0                       MOVX A,@DPTR
CODE:44d1  b4 23 06                 CJNE A,#0x23,0x44da
CODE:44d4  e4                       CLR A
CODE:44d5  f0                       MOVX @DPTR,A
CODE:44d6  a3                       INC DPTR
CODE:44d7  02 46 39                 LJMP 0x4639
LAB_CODE_44da:
CODE:44da  e5 2f                    MOV A,0x2f   ; XREF: CODE:44a7 CODE:44ad CODE:44ca CODE:44d1 
CODE:44dc  70 31                    JNZ 0x450f
CODE:44de  e5 35                    MOV A,0x35
CODE:44e0  64 04                    XRL A,#0x4
CODE:44e2  70 2b                    JNZ 0x450f
CODE:44e4  30 10 18                 JNB 0x10,0x44ff
CODE:44e7  30 00 0c                 JNB 0x00,0x44f6
CODE:44ea  90 02 a5                 MOV DPTR,#0x2a5
CODE:44ed  74 94                    MOV A,#0x94
CODE:44ef  f0                       MOVX @DPTR,A
CODE:44f0  a3                       INC DPTR
CODE:44f1  74 01                    MOV A,#0x1
CODE:44f3  02 46 39                 LJMP 0x4639
LAB_CODE_44f6:
CODE:44f6  e4                       CLR A   ; XREF: CODE:44e7 
CODE:44f7  90 02 a5                 MOV DPTR,#0x2a5
CODE:44fa  f0                       MOVX @DPTR,A
CODE:44fb  a3                       INC DPTR
CODE:44fc  02 46 39                 LJMP 0x4639
LAB_CODE_44ff:
CODE:44ff  20 00 0d                 JB 0x00,0x450f   ; XREF: CODE:44e4 
CODE:4502  90 02 a5                 MOV DPTR,#0x2a5
CODE:4505  e0                       MOVX A,@DPTR
CODE:4506  b4 94 06                 CJNE A,#0x94,0x450f
CODE:4509  e4                       CLR A
CODE:450a  f0                       MOVX @DPTR,A
CODE:450b  a3                       INC DPTR
CODE:450c  02 46 39                 LJMP 0x4639
LAB_CODE_450f:
CODE:450f  e5 2f                    MOV A,0x2f   ; XREF: CODE:44dc CODE:44e2 CODE:44ff CODE:4506 
CODE:4511  70 31                    JNZ 0x4544
CODE:4513  e5 35                    MOV A,0x35
CODE:4515  64 05                    XRL A,#0x5
CODE:4517  70 2b                    JNZ 0x4544
CODE:4519  30 10 18                 JNB 0x10,0x4534
CODE:451c  30 00 0c                 JNB 0x00,0x452b
CODE:451f  90 02 a5                 MOV DPTR,#0x2a5
CODE:4522  74 8a                    MOV A,#0x8a
CODE:4524  f0                       MOVX @DPTR,A
CODE:4525  a3                       INC DPTR
CODE:4526  74 01                    MOV A,#0x1
CODE:4528  02 46 39                 LJMP 0x4639
LAB_CODE_452b:
CODE:452b  e4                       CLR A   ; XREF: CODE:451c 
CODE:452c  90 02 a5                 MOV DPTR,#0x2a5
CODE:452f  f0                       MOVX @DPTR,A
CODE:4530  a3                       INC DPTR
CODE:4531  02 46 39                 LJMP 0x4639
LAB_CODE_4534:
CODE:4534  20 00 0d                 JB 0x00,0x4544   ; XREF: CODE:4519 
CODE:4537  90 02 a5                 MOV DPTR,#0x2a5
CODE:453a  e0                       MOVX A,@DPTR
CODE:453b  b4 8a 06                 CJNE A,#0x8a,0x4544
CODE:453e  e4                       CLR A
CODE:453f  f0                       MOVX @DPTR,A
CODE:4540  a3                       INC DPTR
CODE:4541  02 46 39                 LJMP 0x4639
LAB_CODE_4544:
CODE:4544  e5 2f                    MOV A,0x2f   ; XREF: CODE:4511 CODE:4517 CODE:4534 CODE:453b 
CODE:4546  70 31                    JNZ 0x4579
CODE:4548  e5 35                    MOV A,0x35
CODE:454a  64 06                    XRL A,#0x6
CODE:454c  70 2b                    JNZ 0x4579
CODE:454e  30 10 18                 JNB 0x10,0x4569
CODE:4551  30 00 0c                 JNB 0x00,0x4560
CODE:4554  90 02 a5                 MOV DPTR,#0x2a5
CODE:4557  74 83                    MOV A,#0x83
CODE:4559  f0                       MOVX @DPTR,A
CODE:455a  a3                       INC DPTR
CODE:455b  74 01                    MOV A,#0x1
CODE:455d  02 46 39                 LJMP 0x4639
LAB_CODE_4560:
CODE:4560  e4                       CLR A   ; XREF: CODE:4551 
CODE:4561  90 02 a5                 MOV DPTR,#0x2a5
CODE:4564  f0                       MOVX @DPTR,A
CODE:4565  a3                       INC DPTR
CODE:4566  02 46 39                 LJMP 0x4639
LAB_CODE_4569:
CODE:4569  20 00 0d                 JB 0x00,0x4579   ; XREF: CODE:454e 
CODE:456c  90 02 a5                 MOV DPTR,#0x2a5
CODE:456f  e0                       MOVX A,@DPTR
CODE:4570  b4 83 06                 CJNE A,#0x83,0x4579
CODE:4573  e4                       CLR A
CODE:4574  f0                       MOVX @DPTR,A
CODE:4575  a3                       INC DPTR
CODE:4576  02 46 39                 LJMP 0x4639
LAB_CODE_4579:
CODE:4579  e5 2f                    MOV A,0x2f   ; XREF: CODE:4546 CODE:454c CODE:4569 CODE:4570 
CODE:457b  70 2e                    JNZ 0x45ab
CODE:457d  e5 35                    MOV A,0x35
CODE:457f  64 07                    XRL A,#0x7
CODE:4581  70 28                    JNZ 0x45ab
CODE:4583  30 10 15                 JNB 0x10,0x459b
CODE:4586  30 00 09                 JNB 0x00,0x4592
CODE:4589  90 02 a5                 MOV DPTR,#0x2a5
CODE:458c  74 b6                    MOV A,#0xb6
CODE:458e  f0                       MOVX @DPTR,A
CODE:458f  e4                       CLR A
CODE:4590  80 05                    SJMP 0x4597
LAB_CODE_4592:
CODE:4592  e4                       CLR A   ; XREF: CODE:4586 
CODE:4593  90 02 a5                 MOV DPTR,#0x2a5
CODE:4596  f0                       MOVX @DPTR,A
LAB_CODE_4597:
CODE:4597  a3                       INC DPTR   ; XREF: CODE:4590 
CODE:4598  02 46 39                 LJMP 0x4639
LAB_CODE_459b:
CODE:459b  20 00 0d                 JB 0x00,0x45ab   ; XREF: CODE:4583 
CODE:459e  90 02 a5                 MOV DPTR,#0x2a5
CODE:45a1  e0                       MOVX A,@DPTR
CODE:45a2  b4 b6 06                 CJNE A,#0xb6,0x45ab
CODE:45a5  e4                       CLR A
CODE:45a6  f0                       MOVX @DPTR,A
CODE:45a7  a3                       INC DPTR
CODE:45a8  02 46 39                 LJMP 0x4639
LAB_CODE_45ab:
CODE:45ab  e5 2f                    MOV A,0x2f   ; XREF: CODE:457b CODE:4581 CODE:459b CODE:45a2 
CODE:45ad  70 2c                    JNZ 0x45db
CODE:45af  e5 35                    MOV A,0x35
CODE:45b1  64 08                    XRL A,#0x8
CODE:45b3  70 26                    JNZ 0x45db
CODE:45b5  30 10 14                 JNB 0x10,0x45cc
CODE:45b8  30 00 09                 JNB 0x00,0x45c4
CODE:45bb  90 02 a5                 MOV DPTR,#0x2a5
CODE:45be  74 b5                    MOV A,#0xb5
CODE:45c0  f0                       MOVX @DPTR,A
CODE:45c1  e4                       CLR A
CODE:45c2  80 05                    SJMP 0x45c9
LAB_CODE_45c4:
CODE:45c4  e4                       CLR A   ; XREF: CODE:45b8 
CODE:45c5  90 02 a5                 MOV DPTR,#0x2a5
CODE:45c8  f0                       MOVX @DPTR,A
LAB_CODE_45c9:
CODE:45c9  a3                       INC DPTR   ; XREF: CODE:45c2 
CODE:45ca  80 6d                    SJMP 0x4639
LAB_CODE_45cc:
CODE:45cc  20 00 0c                 JB 0x00,0x45db   ; XREF: CODE:45b5 
CODE:45cf  90 02 a5                 MOV DPTR,#0x2a5
CODE:45d2  e0                       MOVX A,@DPTR
CODE:45d3  b4 b5 05                 CJNE A,#0xb5,0x45db
CODE:45d6  e4                       CLR A
CODE:45d7  f0                       MOVX @DPTR,A
CODE:45d8  a3                       INC DPTR
CODE:45d9  80 5e                    SJMP 0x4639
LAB_CODE_45db:
CODE:45db  e5 2f                    MOV A,0x2f   ; XREF: CODE:45ad CODE:45b3 CODE:45cc CODE:45d3 
CODE:45dd  70 2c                    JNZ 0x460b
CODE:45df  e5 35                    MOV A,0x35
CODE:45e1  64 09                    XRL A,#0x9
CODE:45e3  70 26                    JNZ 0x460b
CODE:45e5  30 10 14                 JNB 0x10,0x45fc
CODE:45e8  30 00 09                 JNB 0x00,0x45f4
CODE:45eb  90 02 a5                 MOV DPTR,#0x2a5
CODE:45ee  74 cd                    MOV A,#0xcd
CODE:45f0  f0                       MOVX @DPTR,A
CODE:45f1  e4                       CLR A
CODE:45f2  80 05                    SJMP 0x45f9
LAB_CODE_45f4:
CODE:45f4  e4                       CLR A   ; XREF: CODE:45e8 
CODE:45f5  90 02 a5                 MOV DPTR,#0x2a5
CODE:45f8  f0                       MOVX @DPTR,A
LAB_CODE_45f9:
CODE:45f9  a3                       INC DPTR   ; XREF: CODE:45f2 
CODE:45fa  80 3d                    SJMP 0x4639
LAB_CODE_45fc:
CODE:45fc  20 00 0c                 JB 0x00,0x460b   ; XREF: CODE:45e5 
CODE:45ff  90 02 a5                 MOV DPTR,#0x2a5
CODE:4602  e0                       MOVX A,@DPTR
CODE:4603  b4 cd 05                 CJNE A,#0xcd,0x460b
CODE:4606  e4                       CLR A
CODE:4607  f0                       MOVX @DPTR,A
CODE:4608  a3                       INC DPTR
CODE:4609  80 2e                    SJMP 0x4639
LAB_CODE_460b:
CODE:460b  e5 2f                    MOV A,0x2f   ; XREF: CODE:45dd CODE:45e3 CODE:45fc CODE:4603 
CODE:460d  70 2e                    JNZ 0x463d
CODE:460f  e5 35                    MOV A,0x35
CODE:4611  64 0a                    XRL A,#0xa
CODE:4613  70 28                    JNZ 0x463d
CODE:4615  30 10 14                 JNB 0x10,0x462c
CODE:4618  30 00 09                 JNB 0x00,0x4624
CODE:461b  90 02 a5                 MOV DPTR,#0x2a5
CODE:461e  74 b7                    MOV A,#0xb7
CODE:4620  f0                       MOVX @DPTR,A
CODE:4621  e4                       CLR A
CODE:4622  80 05                    SJMP 0x4629
LAB_CODE_4624:
CODE:4624  e4                       CLR A   ; XREF: CODE:4618 
CODE:4625  90 02 a5                 MOV DPTR,#0x2a5
CODE:4628  f0                       MOVX @DPTR,A
LAB_CODE_4629:
CODE:4629  a3                       INC DPTR   ; XREF: CODE:4622 
CODE:462a  80 0d                    SJMP 0x4639
LAB_CODE_462c:
CODE:462c  20 00 0e                 JB 0x00,0x463d   ; XREF: CODE:4615 
CODE:462f  90 02 a5                 MOV DPTR,#0x2a5
CODE:4632  e0                       MOVX A,@DPTR
CODE:4633  b4 b7 07                 CJNE A,#0xb7,0x463d
CODE:4636  e4                       CLR A
CODE:4637  f0                       MOVX @DPTR,A
CODE:4638  a3                       INC DPTR
LAB_CODE_4639:
CODE:4639  f0                       MOVX @DPTR,A   ; XREF: CODE:44be CODE:44c7 CODE:44d7 CODE:44f3 CODE:44fc CODE:450c CODE:4528 CODE:4531 CODE:4541 CODE:455d CODE:4566 CODE:4576 CODE:4598 CODE:45a8 CODE:45ca CODE:45d9 CODE:45fa CODE:4609 CODE:462a 
CODE:463a  d2 03                    SETB 0x03
CODE:463c  22                       RET
LAB_CODE_463d:
CODE:463d  e5 2f                    MOV A,0x2f   ; XREF: CODE:460d CODE:4613 CODE:462c CODE:4633 
CODE:463f  75 f0 17                 MOV B,#0x17
CODE:4642  a4                       MUL AB
CODE:4643  25 35                    ADD A,0x35
CODE:4645  90 02 82                 MOV DPTR,#0x282
CODE:4648  f0                       MOVX @DPTR,A
CODE:4649  20 14 03                 JB 0x14,0x464f
CODE:464c  02 47 cc                 LJMP 0x47cc
LAB_CODE_464f:
CODE:464f  e5 2f                    MOV A,0x2f   ; XREF: CODE:4649 
CODE:4651  b4 02 0c                 CJNE A,#0x2,0x4660
CODE:4654  e5 35                    MOV A,0x35
CODE:4656  b4 03 07                 CJNE A,#0x3,0x4660
CODE:4659  90 02 9f                 MOV DPTR,#0x29f
CODE:465c  74 52                    MOV A,#0x52
CODE:465e  80 75                    SJMP 0x46d5
LAB_CODE_4660:
CODE:4660  e5 2f                    MOV A,0x2f   ; XREF: CODE:4651 CODE:4656 
CODE:4662  b4 03 0c                 CJNE A,#0x3,0x4671
CODE:4665  e5 35                    MOV A,0x35
CODE:4667  b4 02 07                 CJNE A,#0x2,0x4671
CODE:466a  90 02 9f                 MOV DPTR,#0x29f
CODE:466d  74 50                    MOV A,#0x50
CODE:466f  80 64                    SJMP 0x46d5
LAB_CODE_4671:
CODE:4671  e5 2f                    MOV A,0x2f   ; XREF: CODE:4662 CODE:4667 
CODE:4673  b4 03 0c                 CJNE A,#0x3,0x4682
CODE:4676  e5 35                    MOV A,0x35
CODE:4678  b4 03 07                 CJNE A,#0x3,0x4682
CODE:467b  90 02 9f                 MOV DPTR,#0x29f
CODE:467e  74 51                    MOV A,#0x51
CODE:4680  80 53                    SJMP 0x46d5
LAB_CODE_4682:
CODE:4682  e5 2f                    MOV A,0x2f   ; XREF: CODE:4673 CODE:4678 
CODE:4684  b4 03 0c                 CJNE A,#0x3,0x4693
CODE:4687  e5 35                    MOV A,0x35
CODE:4689  b4 04 07                 CJNE A,#0x4,0x4693
CODE:468c  90 02 9f                 MOV DPTR,#0x29f
CODE:468f  74 4f                    MOV A,#0x4f
CODE:4691  80 42                    SJMP 0x46d5
LAB_CODE_4693:
CODE:4693  e5 2f                    MOV A,0x2f   ; XREF: CODE:4684 CODE:4689 
CODE:4695  b4 04 0c                 CJNE A,#0x4,0x46a4
CODE:4698  e5 35                    MOV A,0x35
CODE:469a  b4 11 07                 CJNE A,#0x11,0x46a4
CODE:469d  90 02 9f                 MOV DPTR,#0x29f
CODE:46a0  74 1a                    MOV A,#0x1a
CODE:46a2  80 31                    SJMP 0x46d5
LAB_CODE_46a4:
CODE:46a4  e5 2f                    MOV A,0x2f   ; XREF: CODE:4695 CODE:469a 
CODE:46a6  b4 05 0c                 CJNE A,#0x5,0x46b5
CODE:46a9  e5 35                    MOV A,0x35
CODE:46ab  b4 10 07                 CJNE A,#0x10,0x46b5
CODE:46ae  90 02 9f                 MOV DPTR,#0x29f
CODE:46b1  74 04                    MOV A,#0x4
CODE:46b3  80 20                    SJMP 0x46d5
LAB_CODE_46b5:
CODE:46b5  e5 2f                    MOV A,0x2f   ; XREF: CODE:46a6 CODE:46ab 
CODE:46b7  b4 05 0c                 CJNE A,#0x5,0x46c6
CODE:46ba  e5 35                    MOV A,0x35
CODE:46bc  b4 11 07                 CJNE A,#0x11,0x46c6
CODE:46bf  90 02 9f                 MOV DPTR,#0x29f
CODE:46c2  74 16                    MOV A,#0x16
CODE:46c4  80 0f                    SJMP 0x46d5
LAB_CODE_46c6:
CODE:46c6  e5 2f                    MOV A,0x2f   ; XREF: CODE:46b7 CODE:46bc 
CODE:46c8  b4 05 0e                 CJNE A,#0x5,0x46d9
CODE:46cb  e5 35                    MOV A,0x35
CODE:46cd  b4 12 09                 CJNE A,#0x12,0x46d9
CODE:46d0  90 02 9f                 MOV DPTR,#0x29f
CODE:46d3  74 07                    MOV A,#0x7
LAB_CODE_46d5:
CODE:46d5  f0                       MOVX @DPTR,A   ; XREF: CODE:465e CODE:466f CODE:4680 CODE:4691 CODE:46a2 CODE:46b3 CODE:46c4 
CODE:46d6  02 4d d1                 LJMP 0x4dd1
LAB_CODE_46d9:
CODE:46d9  90 03 32                 MOV DPTR,#0x332   ; XREF: CODE:46c8 CODE:46cd 
CODE:46dc  e0                       MOVX A,@DPTR
CODE:46dd  70 61                    JNZ 0x4740
CODE:46df  e5 2f                    MOV A,0x2f
CODE:46e1  75 f0 17                 MOV B,#0x17
CODE:46e4  a4                       MUL AB
CODE:46e5  7c 00                    MOV R4,#0x0
CODE:46e7  25 35                    ADD A,0x35
CODE:46e9  ff                       MOV R7,A
CODE:46ea  ec                       MOV A,R4
CODE:46eb  35 f0                    ADDC A,B
CODE:46ed  fe                       MOV R6,A
CODE:46ee  ef                       MOV A,R7
CODE:46ef  78 02                    MOV R0,#0x2
LAB_CODE_46f1:
CODE:46f1  c3                       CLR CY   ; XREF: CODE:46f6 
CODE:46f2  33                       RLC A
CODE:46f3  ce                       XCH A,R6
CODE:46f4  33                       RLC A
CODE:46f5  ce                       XCH A,R6
CODE:46f6  d8 f9                    DJNZ R0,0x46f1
CODE:46f8  fb                       MOV R3,A
CODE:46f9  aa 06                    MOV R2,0x06
CODE:46fb  24 bc                    ADD A,#0xbc
CODE:46fd  f5 82                    MOV DPL,A
CODE:46ff  74 67                    MOV A,#0x67
CODE:4701  3a                       ADDC A,R2
CODE:4702  f5 83                    MOV DPH,A
CODE:4704  12 7a 79                 LCALL 0x7a79
CODE:4707  90 02 9f                 MOV DPTR,#0x29f
CODE:470a  ef                       MOV A,R7
CODE:470b  f0                       MOVX @DPTR,A
CODE:470c  74 bc                    MOV A,#0xbc
CODE:470e  2b                       ADD A,R3
CODE:470f  f5 82                    MOV DPL,A
CODE:4711  74 67                    MOV A,#0x67
CODE:4713  3a                       ADDC A,R2
CODE:4714  f5 83                    MOV DPH,A
CODE:4716  12 7a 79                 LCALL 0x7a79
CODE:4719  78 08                    MOV R0,#0x8
CODE:471b  12 7a 53                 LCALL 0x7a53
CODE:471e  e4                       CLR A
CODE:471f  90 02 a0                 MOV DPTR,#0x2a0
CODE:4722  ef                       MOV A,R7
CODE:4723  f0                       MOVX @DPTR,A
CODE:4724  e5 2f                    MOV A,0x2f
CODE:4726  75 f0 17                 MOV B,#0x17
CODE:4729  a4                       MUL AB
CODE:472a  7c 00                    MOV R4,#0x0
CODE:472c  25 35                    ADD A,0x35
CODE:472e  ff                       MOV R7,A
CODE:472f  ec                       MOV A,R4
CODE:4730  35 f0                    ADDC A,B
CODE:4732  fe                       MOV R6,A
CODE:4733  ef                       MOV A,R7
CODE:4734  78 02                    MOV R0,#0x2
LAB_CODE_4736:
CODE:4736  c3                       CLR CY   ; XREF: CODE:473b 
CODE:4737  33                       RLC A
CODE:4738  ce                       XCH A,R6
CODE:4739  33                       RLC A
CODE:473a  ce                       XCH A,R6
CODE:473b  d8 f9                    DJNZ R0,0x4736
CODE:473d  02 48 3c                 LJMP 0x483c
LAB_CODE_4740:
CODE:4740  90 03 32                 MOV DPTR,#0x332   ; XREF: CODE:46dd 
CODE:4743  e0                       MOVX A,@DPTR
CODE:4744  64 01                    XRL A,#0x1
CODE:4746  60 03                    JZ 0x474b
CODE:4748  02 4d fb                 LJMP 0x4dfb
LAB_CODE_474b:
CODE:474b  e5 2f                    MOV A,0x2f   ; XREF: CODE:4746 
CODE:474d  75 f0 17                 MOV B,#0x17
CODE:4750  a4                       MUL AB
CODE:4751  7c 00                    MOV R4,#0x0
CODE:4753  25 35                    ADD A,0x35
CODE:4755  ff                       MOV R7,A
CODE:4756  ec                       MOV A,R4
CODE:4757  35 f0                    ADDC A,B
CODE:4759  fe                       MOV R6,A
CODE:475a  ef                       MOV A,R7
CODE:475b  78 02                    MOV R0,#0x2
LAB_CODE_475d:
CODE:475d  c3                       CLR CY   ; XREF: CODE:4762 
CODE:475e  33                       RLC A
CODE:475f  ce                       XCH A,R6
CODE:4760  33                       RLC A
CODE:4761  ce                       XCH A,R6
CODE:4762  d8 f9                    DJNZ R0,0x475d
CODE:4764  fb                       MOV R3,A
CODE:4765  aa 06                    MOV R2,0x06
CODE:4767  24 00                    ADD A,#0x0
CODE:4769  f5 82                    MOV DPL,A
CODE:476b  74 c8                    MOV A,#0xc8
CODE:476d  3a                       ADDC A,R2
CODE:476e  f5 83                    MOV DPH,A
CODE:4770  12 7a 79                 LCALL 0x7a79
CODE:4773  90 02 9f                 MOV DPTR,#0x29f
CODE:4776  ef                       MOV A,R7
CODE:4777  f0                       MOVX @DPTR,A
CODE:4778  74 00                    MOV A,#0x0
CODE:477a  2b                       ADD A,R3
CODE:477b  f5 82                    MOV DPL,A
CODE:477d  74 c8                    MOV A,#0xc8
CODE:477f  3a                       ADDC A,R2
CODE:4780  f5 83                    MOV DPH,A
CODE:4782  12 7a 79                 LCALL 0x7a79
CODE:4785  78 08                    MOV R0,#0x8
CODE:4787  12 7a 53                 LCALL 0x7a53
CODE:478a  e4                       CLR A
CODE:478b  90 02 a0                 MOV DPTR,#0x2a0
CODE:478e  ef                       MOV A,R7
CODE:478f  f0                       MOVX @DPTR,A
CODE:4790  e5 2f                    MOV A,0x2f
CODE:4792  75 f0 17                 MOV B,#0x17
CODE:4795  a4                       MUL AB
CODE:4796  7c 00                    MOV R4,#0x0
CODE:4798  25 35                    ADD A,0x35
CODE:479a  ff                       MOV R7,A
CODE:479b  ec                       MOV A,R4
CODE:479c  35 f0                    ADDC A,B
CODE:479e  fe                       MOV R6,A
CODE:479f  ef                       MOV A,R7
CODE:47a0  78 02                    MOV R0,#0x2
LAB_CODE_47a2:
CODE:47a2  c3                       CLR CY   ; XREF: CODE:47a7 
CODE:47a3  33                       RLC A
CODE:47a4  ce                       XCH A,R6
CODE:47a5  33                       RLC A
CODE:47a6  ce                       XCH A,R6
CODE:47a7  d8 f9                    DJNZ R0,0x47a2
CODE:47a9  fb                       MOV R3,A
CODE:47aa  aa 06                    MOV R2,0x06
CODE:47ac  24 00                    ADD A,#0x0
CODE:47ae  f5 82                    MOV DPL,A
CODE:47b0  74 c8                    MOV A,#0xc8
CODE:47b2  3a                       ADDC A,R2
CODE:47b3  f5 83                    MOV DPH,A
CODE:47b5  12 7a 79                 LCALL 0x7a79
CODE:47b8  78 10                    MOV R0,#0x10
CODE:47ba  12 7a 53                 LCALL 0x7a53
CODE:47bd  90 02 a1                 MOV DPTR,#0x2a1
CODE:47c0  ef                       MOV A,R7
CODE:47c1  f0                       MOVX @DPTR,A
CODE:47c2  74 00                    MOV A,#0x0
CODE:47c4  2b                       ADD A,R3
CODE:47c5  f5 82                    MOV DPL,A
CODE:47c7  74 c8                    MOV A,#0xc8
CODE:47c9  02 4b bd                 LJMP 0x4bbd
LAB_CODE_47cc:
CODE:47cc  e5 2f                    MOV A,0x2f   ; XREF: CODE:464c 
CODE:47ce  64 04                    XRL A,#0x4
CODE:47d0  60 03                    JZ 0x47d5
CODE:47d2  02 48 5f                 LJMP 0x485f
LAB_CODE_47d5:
CODE:47d5  e5 35                    MOV A,0x35   ; XREF: CODE:47d0 
CODE:47d7  64 02                    XRL A,#0x2
CODE:47d9  60 03                    JZ 0x47de
CODE:47db  02 48 5f                 LJMP 0x485f
LAB_CODE_47de:
CODE:47de  e5 2f                    MOV A,0x2f   ; XREF: CODE:47d9 
CODE:47e0  75 f0 17                 MOV B,#0x17
CODE:47e3  a4                       MUL AB
CODE:47e4  7c 00                    MOV R4,#0x0
CODE:47e6  25 35                    ADD A,0x35
CODE:47e8  ff                       MOV R7,A
CODE:47e9  ec                       MOV A,R4
CODE:47ea  35 f0                    ADDC A,B
CODE:47ec  fe                       MOV R6,A
CODE:47ed  ef                       MOV A,R7
CODE:47ee  78 02                    MOV R0,#0x2
LAB_CODE_47f0:
CODE:47f0  c3                       CLR CY   ; XREF: CODE:47f5 
CODE:47f1  33                       RLC A
CODE:47f2  ce                       XCH A,R6
CODE:47f3  33                       RLC A
CODE:47f4  ce                       XCH A,R6
CODE:47f5  d8 f9                    DJNZ R0,0x47f0
CODE:47f7  fb                       MOV R3,A
CODE:47f8  aa 06                    MOV R2,0x06
CODE:47fa  24 bc                    ADD A,#0xbc
CODE:47fc  f5 82                    MOV DPL,A
CODE:47fe  74 67                    MOV A,#0x67
CODE:4800  3a                       ADDC A,R2
CODE:4801  f5 83                    MOV DPH,A
CODE:4803  12 7a 79                 LCALL 0x7a79
CODE:4806  90 02 9f                 MOV DPTR,#0x29f
CODE:4809  ef                       MOV A,R7
CODE:480a  f0                       MOVX @DPTR,A
CODE:480b  74 bc                    MOV A,#0xbc
CODE:480d  2b                       ADD A,R3
CODE:480e  f5 82                    MOV DPL,A
CODE:4810  74 67                    MOV A,#0x67
CODE:4812  3a                       ADDC A,R2
CODE:4813  f5 83                    MOV DPH,A
CODE:4815  12 7a 79                 LCALL 0x7a79
CODE:4818  78 08                    MOV R0,#0x8
CODE:481a  12 7a 53                 LCALL 0x7a53
CODE:481d  e4                       CLR A
CODE:481e  90 02 a0                 MOV DPTR,#0x2a0
CODE:4821  ef                       MOV A,R7
CODE:4822  f0                       MOVX @DPTR,A
CODE:4823  e5 2f                    MOV A,0x2f
CODE:4825  75 f0 17                 MOV B,#0x17
CODE:4828  a4                       MUL AB
CODE:4829  7c 00                    MOV R4,#0x0
CODE:482b  25 35                    ADD A,0x35
CODE:482d  ff                       MOV R7,A
CODE:482e  ec                       MOV A,R4
CODE:482f  35 f0                    ADDC A,B
CODE:4831  fe                       MOV R6,A
CODE:4832  ef                       MOV A,R7
CODE:4833  78 02                    MOV R0,#0x2
LAB_CODE_4835:
CODE:4835  c3                       CLR CY   ; XREF: CODE:483a 
CODE:4836  33                       RLC A
CODE:4837  ce                       XCH A,R6
CODE:4838  33                       RLC A
CODE:4839  ce                       XCH A,R6
CODE:483a  d8 f9                    DJNZ R0,0x4835
LAB_CODE_483c:
CODE:483c  fb                       MOV R3,A   ; XREF: CODE:473d 
CODE:483d  aa 06                    MOV R2,0x06
CODE:483f  24 bc                    ADD A,#0xbc
CODE:4841  f5 82                    MOV DPL,A
CODE:4843  74 67                    MOV A,#0x67
CODE:4845  3a                       ADDC A,R2
CODE:4846  f5 83                    MOV DPH,A
CODE:4848  12 7a 79                 LCALL 0x7a79
CODE:484b  78 10                    MOV R0,#0x10
CODE:484d  12 7a 53                 LCALL 0x7a53
CODE:4850  90 02 a1                 MOV DPTR,#0x2a1
CODE:4853  ef                       MOV A,R7
CODE:4854  f0                       MOVX @DPTR,A
CODE:4855  74 bc                    MOV A,#0xbc
CODE:4857  2b                       ADD A,R3
CODE:4858  f5 82                    MOV DPL,A
CODE:485a  74 67                    MOV A,#0x67
CODE:485c  02 4b bd                 LJMP 0x4bbd
LAB_CODE_485f:
CODE:485f  e5 2f                    MOV A,0x2f   ; XREF: CODE:47d2 CODE:47db 
CODE:4861  64 03                    XRL A,#0x3
CODE:4863  60 03                    JZ 0x4868
CODE:4865  02 48 f2                 LJMP 0x48f2
LAB_CODE_4868:
CODE:4868  e5 35                    MOV A,0x35   ; XREF: CODE:4863 
CODE:486a  64 0d                    XRL A,#0xd
CODE:486c  60 03                    JZ 0x4871
CODE:486e  02 48 f2                 LJMP 0x48f2
LAB_CODE_4871:
CODE:4871  e5 2f                    MOV A,0x2f   ; XREF: CODE:486c 
CODE:4873  75 f0 17                 MOV B,#0x17
CODE:4876  a4                       MUL AB
CODE:4877  7c 00                    MOV R4,#0x0
CODE:4879  25 35                    ADD A,0x35
CODE:487b  ff                       MOV R7,A
CODE:487c  ec                       MOV A,R4
CODE:487d  35 f0                    ADDC A,B
CODE:487f  fe                       MOV R6,A
CODE:4880  ef                       MOV A,R7
CODE:4881  78 02                    MOV R0,#0x2
LAB_CODE_4883:
CODE:4883  c3                       CLR CY   ; XREF: CODE:4888 
CODE:4884  33                       RLC A
CODE:4885  ce                       XCH A,R6
CODE:4886  33                       RLC A
CODE:4887  ce                       XCH A,R6
CODE:4888  d8 f9                    DJNZ R0,0x4883
CODE:488a  fb                       MOV R3,A
CODE:488b  aa 06                    MOV R2,0x06
CODE:488d  24 bc                    ADD A,#0xbc
CODE:488f  f5 82                    MOV DPL,A
CODE:4891  74 67                    MOV A,#0x67
CODE:4893  3a                       ADDC A,R2
CODE:4894  f5 83                    MOV DPH,A
CODE:4896  12 7a 79                 LCALL 0x7a79
CODE:4899  90 02 9f                 MOV DPTR,#0x29f
CODE:489c  ef                       MOV A,R7
CODE:489d  f0                       MOVX @DPTR,A
CODE:489e  74 bc                    MOV A,#0xbc
CODE:48a0  2b                       ADD A,R3
CODE:48a1  f5 82                    MOV DPL,A
CODE:48a3  74 67                    MOV A,#0x67
CODE:48a5  3a                       ADDC A,R2
CODE:48a6  f5 83                    MOV DPH,A
CODE:48a8  12 7a 79                 LCALL 0x7a79
CODE:48ab  78 08                    MOV R0,#0x8
CODE:48ad  12 7a 53                 LCALL 0x7a53
CODE:48b0  e4                       CLR A
CODE:48b1  90 02 a0                 MOV DPTR,#0x2a0
CODE:48b4  ef                       MOV A,R7
CODE:48b5  f0                       MOVX @DPTR,A
CODE:48b6  e5 2f                    MOV A,0x2f
CODE:48b8  75 f0 17                 MOV B,#0x17
CODE:48bb  a4                       MUL AB
CODE:48bc  7c 00                    MOV R4,#0x0
CODE:48be  25 35                    ADD A,0x35
CODE:48c0  ff                       MOV R7,A
CODE:48c1  ec                       MOV A,R4
CODE:48c2  35 f0                    ADDC A,B
CODE:48c4  fe                       MOV R6,A
CODE:48c5  ef                       MOV A,R7
CODE:48c6  78 02                    MOV R0,#0x2
LAB_CODE_48c8:
CODE:48c8  c3                       CLR CY   ; XREF: CODE:48cd 
CODE:48c9  33                       RLC A
CODE:48ca  ce                       XCH A,R6
CODE:48cb  33                       RLC A
CODE:48cc  ce                       XCH A,R6
CODE:48cd  d8 f9                    DJNZ R0,0x48c8
CODE:48cf  fb                       MOV R3,A
CODE:48d0  aa 06                    MOV R2,0x06
CODE:48d2  24 bc                    ADD A,#0xbc
CODE:48d4  f5 82                    MOV DPL,A
CODE:48d6  74 67                    MOV A,#0x67
CODE:48d8  3a                       ADDC A,R2
CODE:48d9  f5 83                    MOV DPH,A
CODE:48db  12 7a 79                 LCALL 0x7a79
CODE:48de  78 10                    MOV R0,#0x10
CODE:48e0  12 7a 53                 LCALL 0x7a53
CODE:48e3  90 02 a1                 MOV DPTR,#0x2a1
CODE:48e6  ef                       MOV A,R7
CODE:48e7  f0                       MOVX @DPTR,A
CODE:48e8  74 bc                    MOV A,#0xbc
CODE:48ea  2b                       ADD A,R3
CODE:48eb  f5 82                    MOV DPL,A
CODE:48ed  74 67                    MOV A,#0x67
CODE:48ef  02 4b bd                 LJMP 0x4bbd
LAB_CODE_48f2:
CODE:48f2  e5 2f                    MOV A,0x2f   ; XREF: CODE:4865 CODE:486e 
CODE:48f4  60 03                    JZ 0x48f9
CODE:48f6  02 49 83                 LJMP 0x4983
LAB_CODE_48f9:
CODE:48f9  e5 35                    MOV A,0x35   ; XREF: CODE:48f4 
CODE:48fb  64 13                    XRL A,#0x13
CODE:48fd  60 03                    JZ 0x4902
CODE:48ff  02 49 83                 LJMP 0x4983
LAB_CODE_4902:
CODE:4902  e5 2f                    MOV A,0x2f   ; XREF: CODE:48fd 
CODE:4904  75 f0 17                 MOV B,#0x17
CODE:4907  a4                       MUL AB
CODE:4908  7c 00                    MOV R4,#0x0
CODE:490a  25 35                    ADD A,0x35
CODE:490c  ff                       MOV R7,A
CODE:490d  ec                       MOV A,R4
CODE:490e  35 f0                    ADDC A,B
CODE:4910  fe                       MOV R6,A
CODE:4911  ef                       MOV A,R7
CODE:4912  78 02                    MOV R0,#0x2
LAB_CODE_4914:
CODE:4914  c3                       CLR CY   ; XREF: CODE:4919 
CODE:4915  33                       RLC A
CODE:4916  ce                       XCH A,R6
CODE:4917  33                       RLC A
CODE:4918  ce                       XCH A,R6
CODE:4919  d8 f9                    DJNZ R0,0x4914
CODE:491b  fb                       MOV R3,A
CODE:491c  aa 06                    MOV R2,0x06
CODE:491e  24 bc                    ADD A,#0xbc
CODE:4920  f5 82                    MOV DPL,A
CODE:4922  74 67                    MOV A,#0x67
CODE:4924  3a                       ADDC A,R2
CODE:4925  f5 83                    MOV DPH,A
CODE:4927  12 7a 79                 LCALL 0x7a79
CODE:492a  90 02 9f                 MOV DPTR,#0x29f
CODE:492d  ef                       MOV A,R7
CODE:492e  f0                       MOVX @DPTR,A
CODE:492f  74 bc                    MOV A,#0xbc
CODE:4931  2b                       ADD A,R3
CODE:4932  f5 82                    MOV DPL,A
CODE:4934  74 67                    MOV A,#0x67
CODE:4936  3a                       ADDC A,R2
CODE:4937  f5 83                    MOV DPH,A
CODE:4939  12 7a 79                 LCALL 0x7a79
CODE:493c  78 08                    MOV R0,#0x8
CODE:493e  12 7a 53                 LCALL 0x7a53
CODE:4941  e4                       CLR A
CODE:4942  90 02 a0                 MOV DPTR,#0x2a0
CODE:4945  ef                       MOV A,R7
CODE:4946  f0                       MOVX @DPTR,A
CODE:4947  e5 2f                    MOV A,0x2f
CODE:4949  75 f0 17                 MOV B,#0x17
CODE:494c  a4                       MUL AB
CODE:494d  7c 00                    MOV R4,#0x0
CODE:494f  25 35                    ADD A,0x35
CODE:4951  ff                       MOV R7,A
CODE:4952  ec                       MOV A,R4
CODE:4953  35 f0                    ADDC A,B
CODE:4955  fe                       MOV R6,A
CODE:4956  ef                       MOV A,R7
CODE:4957  78 02                    MOV R0,#0x2
LAB_CODE_4959:
CODE:4959  c3                       CLR CY   ; XREF: CODE:495e 
CODE:495a  33                       RLC A
CODE:495b  ce                       XCH A,R6
CODE:495c  33                       RLC A
CODE:495d  ce                       XCH A,R6
CODE:495e  d8 f9                    DJNZ R0,0x4959
CODE:4960  fb                       MOV R3,A
CODE:4961  aa 06                    MOV R2,0x06
CODE:4963  24 bc                    ADD A,#0xbc
CODE:4965  f5 82                    MOV DPL,A
CODE:4967  74 67                    MOV A,#0x67
CODE:4969  3a                       ADDC A,R2
CODE:496a  f5 83                    MOV DPH,A
CODE:496c  12 7a 79                 LCALL 0x7a79
CODE:496f  78 10                    MOV R0,#0x10
CODE:4971  12 7a 53                 LCALL 0x7a53
CODE:4974  90 02 a1                 MOV DPTR,#0x2a1
CODE:4977  ef                       MOV A,R7
CODE:4978  f0                       MOVX @DPTR,A
CODE:4979  74 bc                    MOV A,#0xbc
CODE:497b  2b                       ADD A,R3
CODE:497c  f5 82                    MOV DPL,A
CODE:497e  74 67                    MOV A,#0x67
CODE:4980  02 4b bd                 LJMP 0x4bbd
LAB_CODE_4983:
CODE:4983  e5 2f                    MOV A,0x2f   ; XREF: CODE:48f6 CODE:48ff 
CODE:4985  60 03                    JZ 0x498a
CODE:4987  02 4a 14                 LJMP 0x4a14
LAB_CODE_498a:
CODE:498a  e5 35                    MOV A,0x35   ; XREF: CODE:4985 
CODE:498c  64 14                    XRL A,#0x14
CODE:498e  60 03                    JZ 0x4993
CODE:4990  02 4a 14                 LJMP 0x4a14
LAB_CODE_4993:
CODE:4993  e5 2f                    MOV A,0x2f   ; XREF: CODE:498e 
CODE:4995  75 f0 17                 MOV B,#0x17
CODE:4998  a4                       MUL AB
CODE:4999  7c 00                    MOV R4,#0x0
CODE:499b  25 35                    ADD A,0x35
CODE:499d  ff                       MOV R7,A
CODE:499e  ec                       MOV A,R4
CODE:499f  35 f0                    ADDC A,B
CODE:49a1  fe                       MOV R6,A
CODE:49a2  ef                       MOV A,R7
CODE:49a3  78 02                    MOV R0,#0x2
LAB_CODE_49a5:
CODE:49a5  c3                       CLR CY   ; XREF: CODE:49aa 
CODE:49a6  33                       RLC A
CODE:49a7  ce                       XCH A,R6
CODE:49a8  33                       RLC A
CODE:49a9  ce                       XCH A,R6
CODE:49aa  d8 f9                    DJNZ R0,0x49a5
CODE:49ac  fb                       MOV R3,A
CODE:49ad  aa 06                    MOV R2,0x06
CODE:49af  24 bc                    ADD A,#0xbc
CODE:49b1  f5 82                    MOV DPL,A
CODE:49b3  74 67                    MOV A,#0x67
CODE:49b5  3a                       ADDC A,R2
CODE:49b6  f5 83                    MOV DPH,A
CODE:49b8  12 7a 79                 LCALL 0x7a79
CODE:49bb  90 02 9f                 MOV DPTR,#0x29f
CODE:49be  ef                       MOV A,R7
CODE:49bf  f0                       MOVX @DPTR,A
CODE:49c0  74 bc                    MOV A,#0xbc
CODE:49c2  2b                       ADD A,R3
CODE:49c3  f5 82                    MOV DPL,A
CODE:49c5  74 67                    MOV A,#0x67
CODE:49c7  3a                       ADDC A,R2
CODE:49c8  f5 83                    MOV DPH,A
CODE:49ca  12 7a 79                 LCALL 0x7a79
CODE:49cd  78 08                    MOV R0,#0x8
CODE:49cf  12 7a 53                 LCALL 0x7a53
CODE:49d2  e4                       CLR A
CODE:49d3  90 02 a0                 MOV DPTR,#0x2a0
CODE:49d6  ef                       MOV A,R7
CODE:49d7  f0                       MOVX @DPTR,A
CODE:49d8  e5 2f                    MOV A,0x2f
CODE:49da  75 f0 17                 MOV B,#0x17
CODE:49dd  a4                       MUL AB
CODE:49de  7c 00                    MOV R4,#0x0
CODE:49e0  25 35                    ADD A,0x35
CODE:49e2  ff                       MOV R7,A
CODE:49e3  ec                       MOV A,R4
CODE:49e4  35 f0                    ADDC A,B
CODE:49e6  fe                       MOV R6,A
CODE:49e7  ef                       MOV A,R7
CODE:49e8  78 02                    MOV R0,#0x2
LAB_CODE_49ea:
CODE:49ea  c3                       CLR CY   ; XREF: CODE:49ef 
CODE:49eb  33                       RLC A
CODE:49ec  ce                       XCH A,R6
CODE:49ed  33                       RLC A
CODE:49ee  ce                       XCH A,R6
CODE:49ef  d8 f9                    DJNZ R0,0x49ea
CODE:49f1  fb                       MOV R3,A
CODE:49f2  aa 06                    MOV R2,0x06
CODE:49f4  24 bc                    ADD A,#0xbc
CODE:49f6  f5 82                    MOV DPL,A
CODE:49f8  74 67                    MOV A,#0x67
CODE:49fa  3a                       ADDC A,R2
CODE:49fb  f5 83                    MOV DPH,A
CODE:49fd  12 7a 79                 LCALL 0x7a79
CODE:4a00  78 10                    MOV R0,#0x10
CODE:4a02  12 7a 53                 LCALL 0x7a53
CODE:4a05  90 02 a1                 MOV DPTR,#0x2a1
CODE:4a08  ef                       MOV A,R7
CODE:4a09  f0                       MOVX @DPTR,A
CODE:4a0a  74 bc                    MOV A,#0xbc
CODE:4a0c  2b                       ADD A,R3
CODE:4a0d  f5 82                    MOV DPL,A
CODE:4a0f  74 67                    MOV A,#0x67
CODE:4a11  02 4b bd                 LJMP 0x4bbd
LAB_CODE_4a14:
CODE:4a14  e5 2f                    MOV A,0x2f   ; XREF: CODE:4987 CODE:4990 
CODE:4a16  60 03                    JZ 0x4a1b
CODE:4a18  02 4a a5                 LJMP 0x4aa5
LAB_CODE_4a1b:
CODE:4a1b  e5 35                    MOV A,0x35   ; XREF: CODE:4a16 
CODE:4a1d  64 15                    XRL A,#0x15
CODE:4a1f  60 03                    JZ 0x4a24
CODE:4a21  02 4a a5                 LJMP 0x4aa5
LAB_CODE_4a24:
CODE:4a24  e5 2f                    MOV A,0x2f   ; XREF: CODE:4a1f 
CODE:4a26  75 f0 17                 MOV B,#0x17
CODE:4a29  a4                       MUL AB
CODE:4a2a  7c 00                    MOV R4,#0x0
CODE:4a2c  25 35                    ADD A,0x35
CODE:4a2e  ff                       MOV R7,A
CODE:4a2f  ec                       MOV A,R4
CODE:4a30  35 f0                    ADDC A,B
CODE:4a32  fe                       MOV R6,A
CODE:4a33  ef                       MOV A,R7
CODE:4a34  78 02                    MOV R0,#0x2
LAB_CODE_4a36:
CODE:4a36  c3                       CLR CY   ; XREF: CODE:4a3b 
CODE:4a37  33                       RLC A
CODE:4a38  ce                       XCH A,R6
CODE:4a39  33                       RLC A
CODE:4a3a  ce                       XCH A,R6
CODE:4a3b  d8 f9                    DJNZ R0,0x4a36
CODE:4a3d  fb                       MOV R3,A
CODE:4a3e  aa 06                    MOV R2,0x06
CODE:4a40  24 bc                    ADD A,#0xbc
CODE:4a42  f5 82                    MOV DPL,A
CODE:4a44  74 67                    MOV A,#0x67
CODE:4a46  3a                       ADDC A,R2
CODE:4a47  f5 83                    MOV DPH,A
CODE:4a49  12 7a 79                 LCALL 0x7a79
CODE:4a4c  90 02 9f                 MOV DPTR,#0x29f
CODE:4a4f  ef                       MOV A,R7
CODE:4a50  f0                       MOVX @DPTR,A
CODE:4a51  74 bc                    MOV A,#0xbc
CODE:4a53  2b                       ADD A,R3
CODE:4a54  f5 82                    MOV DPL,A
CODE:4a56  74 67                    MOV A,#0x67
CODE:4a58  3a                       ADDC A,R2
CODE:4a59  f5 83                    MOV DPH,A
CODE:4a5b  12 7a 79                 LCALL 0x7a79
CODE:4a5e  78 08                    MOV R0,#0x8
CODE:4a60  12 7a 53                 LCALL 0x7a53
CODE:4a63  e4                       CLR A
CODE:4a64  90 02 a0                 MOV DPTR,#0x2a0
CODE:4a67  ef                       MOV A,R7
CODE:4a68  f0                       MOVX @DPTR,A
CODE:4a69  e5 2f                    MOV A,0x2f
CODE:4a6b  75 f0 17                 MOV B,#0x17
CODE:4a6e  a4                       MUL AB
CODE:4a6f  7c 00                    MOV R4,#0x0
CODE:4a71  25 35                    ADD A,0x35
CODE:4a73  ff                       MOV R7,A
CODE:4a74  ec                       MOV A,R4
CODE:4a75  35 f0                    ADDC A,B
CODE:4a77  fe                       MOV R6,A
CODE:4a78  ef                       MOV A,R7
CODE:4a79  78 02                    MOV R0,#0x2
LAB_CODE_4a7b:
CODE:4a7b  c3                       CLR CY   ; XREF: CODE:4a80 
CODE:4a7c  33                       RLC A
CODE:4a7d  ce                       XCH A,R6
CODE:4a7e  33                       RLC A
CODE:4a7f  ce                       XCH A,R6
CODE:4a80  d8 f9                    DJNZ R0,0x4a7b
CODE:4a82  fb                       MOV R3,A
CODE:4a83  aa 06                    MOV R2,0x06
CODE:4a85  24 bc                    ADD A,#0xbc
CODE:4a87  f5 82                    MOV DPL,A
CODE:4a89  74 67                    MOV A,#0x67
CODE:4a8b  3a                       ADDC A,R2
CODE:4a8c  f5 83                    MOV DPH,A
CODE:4a8e  12 7a 79                 LCALL 0x7a79
CODE:4a91  78 10                    MOV R0,#0x10
CODE:4a93  12 7a 53                 LCALL 0x7a53
CODE:4a96  90 02 a1                 MOV DPTR,#0x2a1
CODE:4a99  ef                       MOV A,R7
CODE:4a9a  f0                       MOVX @DPTR,A
CODE:4a9b  74 bc                    MOV A,#0xbc
CODE:4a9d  2b                       ADD A,R3
CODE:4a9e  f5 82                    MOV DPL,A
CODE:4aa0  74 67                    MOV A,#0x67
CODE:4aa2  02 4b bd                 LJMP 0x4bbd
LAB_CODE_4aa5:
CODE:4aa5  e5 2f                    MOV A,0x2f   ; XREF: CODE:4a18 CODE:4a21 
CODE:4aa7  60 03                    JZ 0x4aac
CODE:4aa9  02 4b 36                 LJMP 0x4b36
LAB_CODE_4aac:
CODE:4aac  e5 35                    MOV A,0x35   ; XREF: CODE:4aa7 
CODE:4aae  64 16                    XRL A,#0x16
CODE:4ab0  60 03                    JZ 0x4ab5
CODE:4ab2  02 4b 36                 LJMP 0x4b36
LAB_CODE_4ab5:
CODE:4ab5  e5 2f                    MOV A,0x2f   ; XREF: CODE:4ab0 
CODE:4ab7  75 f0 17                 MOV B,#0x17
CODE:4aba  a4                       MUL AB
CODE:4abb  7c 00                    MOV R4,#0x0
CODE:4abd  25 35                    ADD A,0x35
CODE:4abf  ff                       MOV R7,A
CODE:4ac0  ec                       MOV A,R4
CODE:4ac1  35 f0                    ADDC A,B
CODE:4ac3  fe                       MOV R6,A
CODE:4ac4  ef                       MOV A,R7
CODE:4ac5  78 02                    MOV R0,#0x2
LAB_CODE_4ac7:
CODE:4ac7  c3                       CLR CY   ; XREF: CODE:4acc 
CODE:4ac8  33                       RLC A
CODE:4ac9  ce                       XCH A,R6
CODE:4aca  33                       RLC A
CODE:4acb  ce                       XCH A,R6
CODE:4acc  d8 f9                    DJNZ R0,0x4ac7
CODE:4ace  fb                       MOV R3,A
CODE:4acf  aa 06                    MOV R2,0x06
CODE:4ad1  24 bc                    ADD A,#0xbc
CODE:4ad3  f5 82                    MOV DPL,A
CODE:4ad5  74 67                    MOV A,#0x67
CODE:4ad7  3a                       ADDC A,R2
CODE:4ad8  f5 83                    MOV DPH,A
CODE:4ada  12 7a 79                 LCALL 0x7a79
CODE:4add  90 02 9f                 MOV DPTR,#0x29f
CODE:4ae0  ef                       MOV A,R7
CODE:4ae1  f0                       MOVX @DPTR,A
CODE:4ae2  74 bc                    MOV A,#0xbc
CODE:4ae4  2b                       ADD A,R3
CODE:4ae5  f5 82                    MOV DPL,A
CODE:4ae7  74 67                    MOV A,#0x67
CODE:4ae9  3a                       ADDC A,R2
CODE:4aea  f5 83                    MOV DPH,A
CODE:4aec  12 7a 79                 LCALL 0x7a79
CODE:4aef  78 08                    MOV R0,#0x8
CODE:4af1  12 7a 53                 LCALL 0x7a53
CODE:4af4  e4                       CLR A
CODE:4af5  90 02 a0                 MOV DPTR,#0x2a0
CODE:4af8  ef                       MOV A,R7
CODE:4af9  f0                       MOVX @DPTR,A
CODE:4afa  e5 2f                    MOV A,0x2f
CODE:4afc  75 f0 17                 MOV B,#0x17
CODE:4aff  a4                       MUL AB
CODE:4b00  7c 00                    MOV R4,#0x0
CODE:4b02  25 35                    ADD A,0x35
CODE:4b04  ff                       MOV R7,A
CODE:4b05  ec                       MOV A,R4
CODE:4b06  35 f0                    ADDC A,B
CODE:4b08  fe                       MOV R6,A
CODE:4b09  ef                       MOV A,R7
CODE:4b0a  78 02                    MOV R0,#0x2
LAB_CODE_4b0c:
CODE:4b0c  c3                       CLR CY   ; XREF: CODE:4b11 
CODE:4b0d  33                       RLC A
CODE:4b0e  ce                       XCH A,R6
CODE:4b0f  33                       RLC A
CODE:4b10  ce                       XCH A,R6
CODE:4b11  d8 f9                    DJNZ R0,0x4b0c
CODE:4b13  fb                       MOV R3,A
CODE:4b14  aa 06                    MOV R2,0x06
CODE:4b16  24 bc                    ADD A,#0xbc
CODE:4b18  f5 82                    MOV DPL,A
CODE:4b1a  74 67                    MOV A,#0x67
CODE:4b1c  3a                       ADDC A,R2
CODE:4b1d  f5 83                    MOV DPH,A
CODE:4b1f  12 7a 79                 LCALL 0x7a79
CODE:4b22  78 10                    MOV R0,#0x10
CODE:4b24  12 7a 53                 LCALL 0x7a53
CODE:4b27  90 02 a1                 MOV DPTR,#0x2a1
CODE:4b2a  ef                       MOV A,R7
CODE:4b2b  f0                       MOVX @DPTR,A
CODE:4b2c  74 bc                    MOV A,#0xbc
CODE:4b2e  2b                       ADD A,R3
CODE:4b2f  f5 82                    MOV DPL,A
CODE:4b31  74 67                    MOV A,#0x67
CODE:4b33  02 4b bd                 LJMP 0x4bbd
LAB_CODE_4b36:
CODE:4b36  90 03 32                 MOV DPTR,#0x332   ; XREF: CODE:4aa9 CODE:4ab2 
CODE:4b39  e0                       MOVX A,@DPTR
CODE:4b3a  60 03                    JZ 0x4b3f
CODE:4b3c  02 4b d1                 LJMP 0x4bd1
LAB_CODE_4b3f:
CODE:4b3f  e5 2f                    MOV A,0x2f   ; XREF: CODE:4b3a 
CODE:4b41  75 f0 17                 MOV B,#0x17
CODE:4b44  a4                       MUL AB
CODE:4b45  7c 00                    MOV R4,#0x0
CODE:4b47  25 35                    ADD A,0x35
CODE:4b49  ff                       MOV R7,A
CODE:4b4a  ec                       MOV A,R4
CODE:4b4b  35 f0                    ADDC A,B
CODE:4b4d  fe                       MOV R6,A
CODE:4b4e  ef                       MOV A,R7
CODE:4b4f  78 02                    MOV R0,#0x2
LAB_CODE_4b51:
CODE:4b51  c3                       CLR CY   ; XREF: CODE:4b56 
CODE:4b52  33                       RLC A
CODE:4b53  ce                       XCH A,R6
CODE:4b54  33                       RLC A
CODE:4b55  ce                       XCH A,R6
CODE:4b56  d8 f9                    DJNZ R0,0x4b51
CODE:4b58  fb                       MOV R3,A
CODE:4b59  aa 06                    MOV R2,0x06
CODE:4b5b  24 bc                    ADD A,#0xbc
CODE:4b5d  f5 82                    MOV DPL,A
CODE:4b5f  74 67                    MOV A,#0x67
CODE:4b61  3a                       ADDC A,R2
CODE:4b62  f5 83                    MOV DPH,A
CODE:4b64  12 7a 79                 LCALL 0x7a79
CODE:4b67  90 02 9f                 MOV DPTR,#0x29f
CODE:4b6a  ef                       MOV A,R7
CODE:4b6b  f0                       MOVX @DPTR,A
CODE:4b6c  74 bc                    MOV A,#0xbc
CODE:4b6e  2b                       ADD A,R3
CODE:4b6f  f5 82                    MOV DPL,A
CODE:4b71  74 67                    MOV A,#0x67
CODE:4b73  3a                       ADDC A,R2
CODE:4b74  f5 83                    MOV DPH,A
CODE:4b76  12 7a 79                 LCALL 0x7a79
CODE:4b79  78 08                    MOV R0,#0x8
CODE:4b7b  12 7a 53                 LCALL 0x7a53
CODE:4b7e  e4                       CLR A
CODE:4b7f  90 02 a0                 MOV DPTR,#0x2a0
CODE:4b82  ef                       MOV A,R7
CODE:4b83  f0                       MOVX @DPTR,A
CODE:4b84  e5 2f                    MOV A,0x2f
CODE:4b86  75 f0 17                 MOV B,#0x17
CODE:4b89  a4                       MUL AB
CODE:4b8a  7c 00                    MOV R4,#0x0
CODE:4b8c  25 35                    ADD A,0x35
CODE:4b8e  ff                       MOV R7,A
CODE:4b8f  ec                       MOV A,R4
CODE:4b90  35 f0                    ADDC A,B
CODE:4b92  fe                       MOV R6,A
CODE:4b93  ef                       MOV A,R7
CODE:4b94  78 02                    MOV R0,#0x2
LAB_CODE_4b96:
CODE:4b96  c3                       CLR CY   ; XREF: CODE:4b9b 
CODE:4b97  33                       RLC A
CODE:4b98  ce                       XCH A,R6
CODE:4b99  33                       RLC A
CODE:4b9a  ce                       XCH A,R6
CODE:4b9b  d8 f9                    DJNZ R0,0x4b96
CODE:4b9d  fb                       MOV R3,A
CODE:4b9e  aa 06                    MOV R2,0x06
CODE:4ba0  24 bc                    ADD A,#0xbc
CODE:4ba2  f5 82                    MOV DPL,A
CODE:4ba4  74 67                    MOV A,#0x67
CODE:4ba6  3a                       ADDC A,R2
CODE:4ba7  f5 83                    MOV DPH,A
CODE:4ba9  12 7a 79                 LCALL 0x7a79
CODE:4bac  78 10                    MOV R0,#0x10
CODE:4bae  12 7a 53                 LCALL 0x7a53
CODE:4bb1  90 02 a1                 MOV DPTR,#0x2a1
CODE:4bb4  ef                       MOV A,R7
CODE:4bb5  f0                       MOVX @DPTR,A
CODE:4bb6  74 bc                    MOV A,#0xbc
CODE:4bb8  2b                       ADD A,R3
CODE:4bb9  f5 82                    MOV DPL,A
CODE:4bbb  74 67                    MOV A,#0x67
LAB_CODE_4bbd:
CODE:4bbd  3a                       ADDC A,R2   ; XREF: CODE:47c9 CODE:485c CODE:48ef CODE:4980 CODE:4a11 CODE:4aa2 CODE:4b33 
CODE:4bbe  f5 83                    MOV DPH,A
CODE:4bc0  12 7a 79                 LCALL 0x7a79
CODE:4bc3  78 18                    MOV R0,#0x18
CODE:4bc5  12 7a 53                 LCALL 0x7a53
CODE:4bc8  e4                       CLR A
CODE:4bc9  90 02 a2                 MOV DPTR,#0x2a2
CODE:4bcc  ef                       MOV A,R7
CODE:4bcd  f0                       MOVX @DPTR,A
CODE:4bce  02 4d f8                 LJMP 0x4df8
LAB_CODE_4bd1:
CODE:4bd1  90 03 32                 MOV DPTR,#0x332   ; XREF: CODE:4b3c 
CODE:4bd4  e0                       MOVX A,@DPTR
CODE:4bd5  64 01                    XRL A,#0x1
CODE:4bd7  60 03                    JZ 0x4bdc
CODE:4bd9  02 4d fb                 LJMP 0x4dfb
LAB_CODE_4bdc:
CODE:4bdc  e5 2f                    MOV A,0x2f   ; XREF: CODE:4bd7 
CODE:4bde  75 f0 17                 MOV B,#0x17
CODE:4be1  a4                       MUL AB
CODE:4be2  7c 00                    MOV R4,#0x0
CODE:4be4  25 35                    ADD A,0x35
CODE:4be6  ff                       MOV R7,A
CODE:4be7  ec                       MOV A,R4
CODE:4be8  35 f0                    ADDC A,B
CODE:4bea  fe                       MOV R6,A
CODE:4beb  ef                       MOV A,R7
CODE:4bec  78 02                    MOV R0,#0x2
LAB_CODE_4bee:
CODE:4bee  c3                       CLR CY   ; XREF: CODE:4bf3 
CODE:4bef  33                       RLC A
CODE:4bf0  ce                       XCH A,R6
CODE:4bf1  33                       RLC A
CODE:4bf2  ce                       XCH A,R6
CODE:4bf3  d8 f9                    DJNZ R0,0x4bee
CODE:4bf5  fb                       MOV R3,A
CODE:4bf6  aa 06                    MOV R2,0x06
CODE:4bf8  24 00                    ADD A,#0x0
CODE:4bfa  f5 82                    MOV DPL,A
CODE:4bfc  74 c8                    MOV A,#0xc8
CODE:4bfe  3a                       ADDC A,R2
CODE:4bff  f5 83                    MOV DPH,A
CODE:4c01  12 7a 79                 LCALL 0x7a79
CODE:4c04  90 02 9f                 MOV DPTR,#0x29f
CODE:4c07  ef                       MOV A,R7
CODE:4c08  f0                       MOVX @DPTR,A
CODE:4c09  74 00                    MOV A,#0x0
CODE:4c0b  2b                       ADD A,R3
CODE:4c0c  f5 82                    MOV DPL,A
CODE:4c0e  74 c8                    MOV A,#0xc8
CODE:4c10  3a                       ADDC A,R2
CODE:4c11  f5 83                    MOV DPH,A
CODE:4c13  12 7a 79                 LCALL 0x7a79
CODE:4c16  78 08                    MOV R0,#0x8
CODE:4c18  12 7a 53                 LCALL 0x7a53
CODE:4c1b  e4                       CLR A
CODE:4c1c  90 02 a0                 MOV DPTR,#0x2a0
CODE:4c1f  ef                       MOV A,R7
CODE:4c20  f0                       MOVX @DPTR,A
CODE:4c21  e5 2f                    MOV A,0x2f
CODE:4c23  75 f0 17                 MOV B,#0x17
CODE:4c26  a4                       MUL AB
CODE:4c27  7c 00                    MOV R4,#0x0
CODE:4c29  25 35                    ADD A,0x35
CODE:4c2b  ff                       MOV R7,A
CODE:4c2c  ec                       MOV A,R4
CODE:4c2d  35 f0                    ADDC A,B
CODE:4c2f  fe                       MOV R6,A
CODE:4c30  ef                       MOV A,R7
CODE:4c31  78 02                    MOV R0,#0x2
LAB_CODE_4c33:
CODE:4c33  c3                       CLR CY   ; XREF: CODE:4c38 
CODE:4c34  33                       RLC A
CODE:4c35  ce                       XCH A,R6
CODE:4c36  33                       RLC A
CODE:4c37  ce                       XCH A,R6
CODE:4c38  d8 f9                    DJNZ R0,0x4c33
CODE:4c3a  fb                       MOV R3,A
CODE:4c3b  aa 06                    MOV R2,0x06
CODE:4c3d  24 00                    ADD A,#0x0
CODE:4c3f  f5 82                    MOV DPL,A
CODE:4c41  74 c8                    MOV A,#0xc8
CODE:4c43  3a                       ADDC A,R2
CODE:4c44  f5 83                    MOV DPH,A
CODE:4c46  12 7a 79                 LCALL 0x7a79
CODE:4c49  78 10                    MOV R0,#0x10
CODE:4c4b  12 7a 53                 LCALL 0x7a53
CODE:4c4e  90 02 a1                 MOV DPTR,#0x2a1
CODE:4c51  ef                       MOV A,R7
CODE:4c52  f0                       MOVX @DPTR,A
CODE:4c53  74 00                    MOV A,#0x0
CODE:4c55  2b                       ADD A,R3
CODE:4c56  f5 82                    MOV DPL,A
CODE:4c58  74 c8                    MOV A,#0xc8
CODE:4c5a  3a                       ADDC A,R2
CODE:4c5b  f5 83                    MOV DPH,A
CODE:4c5d  12 7a 79                 LCALL 0x7a79
CODE:4c60  78 18                    MOV R0,#0x18
CODE:4c62  12 7a 53                 LCALL 0x7a53
CODE:4c65  90 02 a2                 MOV DPTR,#0x2a2
CODE:4c68  ef                       MOV A,R7
CODE:4c69  f0                       MOVX @DPTR,A
CODE:4c6a  90 02 9f                 MOV DPTR,#0x29f
CODE:4c6d  e0                       MOVX A,@DPTR
CODE:4c6e  64 cd                    XRL A,#0xcd
CODE:4c70  60 03                    JZ 0x4c75
CODE:4c72  02 4d d6                 LJMP 0x4dd6
LAB_CODE_4c75:
CODE:4c75  20 00 03                 JB 0x00,0x4c7b   ; XREF: CODE:4c70 
CODE:4c78  02 4d bb                 LJMP 0x4dbb
LAB_CODE_4c7b:
CODE:4c7b  85 2f 13                 MOV 0x13,0x2f   ; XREF: CODE:4c75 
CODE:4c7e  85 35 12                 MOV 0x12,0x35
CODE:4c81  f5 0f                    MOV 0x0f,A
CODE:4c83  e5 13                    MOV A,0x13
CODE:4c85  75 f0 17                 MOV B,#0x17
CODE:4c88  a4                       MUL AB
CODE:4c89  7c 00                    MOV R4,#0x0
CODE:4c8b  25 12                    ADD A,0x12
CODE:4c8d  ff                       MOV R7,A
CODE:4c8e  ec                       MOV A,R4
CODE:4c8f  35 f0                    ADDC A,B
CODE:4c91  fe                       MOV R6,A
CODE:4c92  7d f2                    MOV R5,#0xf2
CODE:4c94  12 7a 30                 LCALL 0x7a30
CODE:4c97  ef                       MOV A,R7
CODE:4c98  24 04                    ADD A,#0x4
CODE:4c9a  ff                       MOV R7,A
CODE:4c9b  e4                       CLR A
CODE:4c9c  3e                       ADDC A,R6
CODE:4c9d  fe                       MOV R6,A
CODE:4c9e  12 7a 9b                 LCALL 0x7a9b
CODE:4ca1  85 50 10                 MOV 0x10,0x50
CODE:4ca4  e5 10                    MOV A,0x10
CODE:4ca6  70 03                    JNZ 0x4cab
CODE:4ca8  02 4d fb                 LJMP 0x4dfb
LAB_CODE_4cab:
CODE:4cab  f4                       CPL A   ; XREF: CODE:4ca6 
CODE:4cac  70 03                    JNZ 0x4cb1
CODE:4cae  02 4d fb                 LJMP 0x4dfb
LAB_CODE_4cb1:
CODE:4cb1  d2 11                    SETB 0x11   ; XREF: CODE:4cac 
CODE:4cb3  7f 0a                    MOV R7,#0xa
CODE:4cb5  7e 00                    MOV R6,#0x0
CODE:4cb7  12 7e 37                 LCALL 0x7e37
CODE:4cba  e5 13                    MOV A,0x13
CODE:4cbc  75 f0 17                 MOV B,#0x17
CODE:4cbf  a4                       MUL AB
CODE:4cc0  7c 00                    MOV R4,#0x0
CODE:4cc2  25 12                    ADD A,0x12
CODE:4cc4  ff                       MOV R7,A
CODE:4cc5  ec                       MOV A,R4
CODE:4cc6  35 f0                    ADDC A,B
CODE:4cc8  fe                       MOV R6,A
CODE:4cc9  7d f2                    MOV R5,#0xf2
CODE:4ccb  12 7a 30                 LCALL 0x7a30
CODE:4cce  12 7a 9b                 LCALL 0x7a9b
CODE:4cd1  90 02 9c                 MOV DPTR,#0x29c
CODE:4cd4  e5 50                    MOV A,0x50
CODE:4cd6  f0                       MOVX @DPTR,A
CODE:4cd7  7f 0a                    MOV R7,#0xa
CODE:4cd9  7e 00                    MOV R6,#0x0
CODE:4cdb  12 7e 37                 LCALL 0x7e37
CODE:4cde  e5 13                    MOV A,0x13
CODE:4ce0  75 f0 17                 MOV B,#0x17
CODE:4ce3  a4                       MUL AB
CODE:4ce4  7c 00                    MOV R4,#0x0
CODE:4ce6  25 12                    ADD A,0x12
CODE:4ce8  ff                       MOV R7,A
CODE:4ce9  ec                       MOV A,R4
CODE:4cea  35 f0                    ADDC A,B
CODE:4cec  fe                       MOV R6,A
CODE:4ced  7d f2                    MOV R5,#0xf2
CODE:4cef  12 7a 30                 LCALL 0x7a30
CODE:4cf2  ef                       MOV A,R7
CODE:4cf3  24 01                    ADD A,#0x1
CODE:4cf5  ff                       MOV R7,A
CODE:4cf6  e4                       CLR A
CODE:4cf7  3e                       ADDC A,R6
CODE:4cf8  fe                       MOV R6,A
CODE:4cf9  12 7a 9b                 LCALL 0x7a9b
CODE:4cfc  90 02 9d                 MOV DPTR,#0x29d
CODE:4cff  e5 50                    MOV A,0x50
CODE:4d01  f0                       MOVX @DPTR,A
CODE:4d02  7f 0a                    MOV R7,#0xa
CODE:4d04  7e 00                    MOV R6,#0x0
CODE:4d06  12 7e 37                 LCALL 0x7e37
CODE:4d09  e5 13                    MOV A,0x13
CODE:4d0b  75 f0 17                 MOV B,#0x17
CODE:4d0e  a4                       MUL AB
CODE:4d0f  7c 00                    MOV R4,#0x0
CODE:4d11  25 12                    ADD A,0x12
CODE:4d13  ff                       MOV R7,A
CODE:4d14  ec                       MOV A,R4
CODE:4d15  35 f0                    ADDC A,B
CODE:4d17  fe                       MOV R6,A
CODE:4d18  7d f2                    MOV R5,#0xf2
CODE:4d1a  12 7a 30                 LCALL 0x7a30
CODE:4d1d  ef                       MOV A,R7
CODE:4d1e  24 02                    ADD A,#0x2
CODE:4d20  ff                       MOV R7,A
CODE:4d21  e4                       CLR A
CODE:4d22  3e                       ADDC A,R6
CODE:4d23  fe                       MOV R6,A
CODE:4d24  12 7a 9b                 LCALL 0x7a9b
CODE:4d27  90 02 9e                 MOV DPTR,#0x29e
CODE:4d2a  e5 50                    MOV A,0x50
CODE:4d2c  f0                       MOVX @DPTR,A
CODE:4d2d  7f 0a                    MOV R7,#0xa
CODE:4d2f  7e 00                    MOV R6,#0x0
CODE:4d31  12 7e 37                 LCALL 0x7e37
CODE:4d34  e5 13                    MOV A,0x13
CODE:4d36  75 f0 17                 MOV B,#0x17
CODE:4d39  a4                       MUL AB
CODE:4d3a  7c 00                    MOV R4,#0x0
CODE:4d3c  25 12                    ADD A,0x12
CODE:4d3e  ff                       MOV R7,A
CODE:4d3f  ec                       MOV A,R4
CODE:4d40  35 f0                    ADDC A,B
CODE:4d42  fe                       MOV R6,A
CODE:4d43  7d f2                    MOV R5,#0xf2
CODE:4d45  12 7a 30                 LCALL 0x7a30
CODE:4d48  ef                       MOV A,R7
CODE:4d49  24 03                    ADD A,#0x3
CODE:4d4b  ff                       MOV R7,A
CODE:4d4c  e4                       CLR A
CODE:4d4d  3e                       ADDC A,R6
CODE:4d4e  fe                       MOV R6,A
CODE:4d4f  12 7a 9b                 LCALL 0x7a9b
CODE:4d52  90 02 a3                 MOV DPTR,#0x2a3
CODE:4d55  e5 50                    MOV A,0x50
CODE:4d57  f0                       MOVX @DPTR,A
CODE:4d58  e4                       CLR A
CODE:4d59  f5 08                    MOV 0x08,A
CODE:4d5b  f5 09                    MOV 0x09,A
CODE:4d5d  90 02 9d                 MOV DPTR,#0x29d
CODE:4d60  e0                       MOVX A,@DPTR
CODE:4d61  75 08 00                 MOV 0x08,#0x0
CODE:4d64  f5 09                    MOV 0x09,A
CODE:4d66  90 02 9c                 MOV DPTR,#0x29c
CODE:4d69  e0                       MOVX A,@DPTR
CODE:4d6a  fe                       MOV R6,A
CODE:4d6b  ee                       MOV A,R6
CODE:4d6c  42 08                    ORL 0x08,A
CODE:4d6e  e5 09                    MOV A,0x09
CODE:4d70  b4 ff 09                 CJNE A,#0xff,0x4d7c
CODE:4d73  e5 08                    MOV A,0x08
CODE:4d75  b4 ff 04                 CJNE A,#0xff,0x4d7c
CODE:4d78  d2 13                    SETB 0x13
CODE:4d7a  80 02                    SJMP 0x4d7e
LAB_CODE_4d7c:
CODE:4d7c  c2 13                    CLR 0x13   ; XREF: CODE:4d70 CODE:4d75 
LAB_CODE_4d7e:
CODE:4d7e  e5 09                    MOV A,0x09   ; XREF: CODE:4d7a 
CODE:4d80  45 08                    ORL A,0x08
CODE:4d82  70 0a                    JNZ 0x4d8e
CODE:4d84  d2 16                    SETB 0x16
CODE:4d86  74 ff                    MOV A,#0xff
CODE:4d88  f5 08                    MOV 0x08,A
CODE:4d8a  f5 09                    MOV 0x09,A
CODE:4d8c  80 02                    SJMP 0x4d90
LAB_CODE_4d8e:
CODE:4d8e  c2 16                    CLR 0x16   ; XREF: CODE:4d82 
LAB_CODE_4d90:
CODE:4d90  e4                       CLR A   ; XREF: CODE:4d8c 
CODE:4d91  f5 0a                    MOV 0x0a,A
CODE:4d93  f5 0b                    MOV 0x0b,A
CODE:4d95  90 02 a3                 MOV DPTR,#0x2a3
CODE:4d98  e0                       MOVX A,@DPTR
CODE:4d99  75 0a 00                 MOV 0x0a,#0x0
CODE:4d9c  f5 0b                    MOV 0x0b,A
CODE:4d9e  90 02 9e                 MOV DPTR,#0x29e
CODE:4da1  e0                       MOVX A,@DPTR
CODE:4da2  54 7f                    ANL A,#0x7f
CODE:4da4  fe                       MOV R6,A
CODE:4da5  ee                       MOV A,R6
CODE:4da6  42 0a                    ORL 0x0a,A
CODE:4da8  e4                       CLR A
CODE:4da9  ff                       MOV R7,A
LAB_CODE_4daa:
CODE:4daa  e5 1b                    MOV A,0x1b   ; XREF: CODE:4db7 
CODE:4dac  2f                       ADD A,R7
CODE:4dad  f5 82                    MOV DPL,A
CODE:4daf  e4                       CLR A
CODE:4db0  35 1a                    ADDC A,0x1a
CODE:4db2  f5 83                    MOV DPH,A
CODE:4db4  e4                       CLR A
CODE:4db5  f0                       MOVX @DPTR,A
CODE:4db6  0f                       INC R7
CODE:4db7  bf 10 f0                 CJNE R7,#0x10,0x4daa
CODE:4dba  22                       RET
LAB_CODE_4dbb:
CODE:4dbb  30 13 3d                 JNB 0x13,0x4dfb   ; XREF: CODE:4c78 
CODE:4dbe  c2 13                    CLR 0x13
CODE:4dc0  e4                       CLR A
CODE:4dc1  f5 08                    MOV 0x08,A
CODE:4dc3  f5 09                    MOV 0x09,A
CODE:4dc5  c2 11                    CLR 0x11
CODE:4dc7  90 02 9f                 MOV DPTR,#0x29f
CODE:4dca  e5 10                    MOV A,0x10
CODE:4dcc  f0                       MOVX @DPTR,A
CODE:4dcd  d2 02                    SETB 0x02
CODE:4dcf  c2 00                    CLR 0x00
LAB_CODE_4dd1:
CODE:4dd1  12 6e c8                 LCALL 0x6ec8   ; XREF: CODE:46d6 
CODE:4dd4  80 25                    SJMP 0x4dfb
LAB_CODE_4dd6:
CODE:4dd6  30 16 1f                 JNB 0x16,0x4df8   ; XREF: CODE:4c72 
CODE:4dd9  c2 16                    CLR 0x16
CODE:4ddb  e4                       CLR A
CODE:4ddc  f5 08                    MOV 0x08,A
CODE:4dde  f5 09                    MOV 0x09,A
CODE:4de0  c2 11                    CLR 0x11
CODE:4de2  f5 34                    MOV 0x34,A
LAB_CODE_4de4:
CODE:4de4  74 00                    MOV A,#0x0   ; XREF: CODE:4df5 
CODE:4de6  25 34                    ADD A,0x34
CODE:4de8  f5 82                    MOV DPL,A
CODE:4dea  e4                       CLR A
CODE:4deb  34 02                    ADDC A,#0x2
CODE:4ded  f5 83                    MOV DPH,A
CODE:4def  e4                       CLR A
CODE:4df0  f0                       MOVX @DPTR,A
CODE:4df1  05 34                    INC 0x34
CODE:4df3  e5 34                    MOV A,0x34
CODE:4df5  b4 0f ec                 CJNE A,#0xf,0x4de4
LAB_CODE_4df8:
CODE:4df8  12 74 65                 LCALL 0x7465   ; XREF: CODE:4bce CODE:4dd6 
LAB_CODE_4dfb:
CODE:4dfb  05 35                    INC 0x35   ; XREF: CODE:38d9 CODE:3b03 CODE:3ea9 CODE:3eaf CODE:3ed0 CODE:3ef2 CODE:3f4c CODE:4748 CODE:4bd9 CODE:4ca8 CODE:4cae CODE:4dbb CODE:4dd4 
CODE:4dfd  02 38 bb                 LJMP 0x38bb
LAB_CODE_4e00:
CODE:4e00  22                       RET   ; XREF: CODE:38c2 CODE:3921 CODE:3935 CODE:3983 CODE:3aca CODE:3f64 CODE:3f84 CODE:3f97 CODE:3fa3 CODE:3fb9 CODE:3fd8 CODE:4171 CODE:418c CODE:41d6 CODE:41ee CODE:4221 CODE:4238 CODE:4289 CODE:42ad CODE:42b5 CODE:42bd CODE:42c5 CODE:42cd CODE:42d3 CODE:42e8 CODE:4304 CODE:430c CODE:4314 CODE:431c CODE:4324 CODE:432a CODE:433b CODE:4358 CODE:4378 CODE:439f CODE:43da CODE:441b 

; ===== FUNCTION FUN_CODE_4e01 @ CODE:4e01 =====
CODE:4e01  90 03 3b                 MOV DPTR,#0x33b   ; XREF: Entry Point CODE:8306 
CODE:4e04  e0                       MOVX A,@DPTR
CODE:4e05  ff                       MOV R7,A
CODE:4e06  b4 04 13                 CJNE A,#0x4,0x4e1c
CODE:4e09  e4                       CLR A
CODE:4e0a  f0                       MOVX @DPTR,A
CODE:4e0b  75 1a 11                 MOV 0x1a,#0x11
CODE:4e0e  f5 1b                    MOV 0x1b,A
CODE:4e10  85 1b 82                 MOV DPL,0x1b
CODE:4e13  85 1a 83                 MOV DPH,0x1a
CODE:4e16  e0                       MOVX A,@DPTR
CODE:4e17  f5 18                    MOV 0x18,A
CODE:4e19  02 58 36                 LJMP 0x5836
LAB_CODE_4e1c:
CODE:4e1c  ef                       MOV A,R7   ; XREF: CODE:4e06 
CODE:4e1d  b4 06 08                 CJNE A,#0x6,0x4e28
CODE:4e20  e4                       CLR A
CODE:4e21  90 03 3b                 MOV DPTR,#0x33b
CODE:4e24  f0                       MOVX @DPTR,A
CODE:4e25  02 58 36                 LJMP 0x5836
LAB_CODE_4e28:
CODE:4e28  90 03 3b                 MOV DPTR,#0x33b   ; XREF: CODE:4e1d 
CODE:4e2b  e0                       MOVX A,@DPTR
CODE:4e2c  64 09                    XRL A,#0x9
CODE:4e2e  70 20                    JNZ 0x4e50
CODE:4e30  f0                       MOVX @DPTR,A
CODE:4e31  75 1a 11                 MOV 0x1a,#0x11
CODE:4e34  f5 1b                    MOV 0x1b,A
CODE:4e36  85 1b 82                 MOV DPL,0x1b
CODE:4e39  85 1a 83                 MOV DPH,0x1a
CODE:4e3c  e0                       MOVX A,@DPTR
CODE:4e3d  64 05                    XRL A,#0x5
CODE:4e3f  60 03                    JZ 0x4e44
CODE:4e41  02 58 3c                 LJMP 0x583c
LAB_CODE_4e44:
CODE:4e44  a3                       INC DPTR   ; XREF: CODE:4e3f 
CODE:4e45  e0                       MOVX A,@DPTR
CODE:4e46  24 8b                    ADD A,#0x8b
CODE:4e48  60 03                    JZ 0x4e4d
CODE:4e4a  02 58 3c                 LJMP 0x583c
LAB_CODE_4e4d:
CODE:4e4d  02 82 66                 LJMP 0x8266   ; XREF: CODE:4e48 
LAB_CODE_4e50:
CODE:4e50  90 03 3b                 MOV DPTR,#0x33b   ; XREF: CODE:4e2e 
CODE:4e53  e0                       MOVX A,@DPTR
CODE:4e54  64 0a                    XRL A,#0xa
CODE:4e56  60 03                    JZ 0x4e5b
CODE:4e58  02 53 9a                 LJMP 0x539a
LAB_CODE_4e5b:
CODE:4e5b  f0                       MOVX @DPTR,A   ; XREF: CODE:4e56 
CODE:4e5c  75 1a 11                 MOV 0x1a,#0x11
CODE:4e5f  f5 1b                    MOV 0x1b,A
CODE:4e61  90 03 1f                 MOV DPTR,#0x31f
CODE:4e64  f0                       MOVX @DPTR,A
CODE:4e65  85 1b 82                 MOV DPL,0x1b
CODE:4e68  85 1a 83                 MOV DPH,0x1a
CODE:4e6b  a3                       INC DPTR
CODE:4e6c  e0                       MOVX A,@DPTR
CODE:4e6d  ff                       MOV R7,A
CODE:4e6e  b4 80 09                 CJNE A,#0x80,0x4e7a
CODE:4e71  90 03 1f                 MOV DPTR,#0x31f
CODE:4e74  74 01                    MOV A,#0x1
CODE:4e76  f0                       MOVX @DPTR,A
CODE:4e77  02 53 97                 LJMP 0x5397
LAB_CODE_4e7a:
CODE:4e7a  ef                       MOV A,R7   ; XREF: CODE:4e6e 
CODE:4e7b  64 03                    XRL A,#0x3
CODE:4e7d  60 03                    JZ 0x4e82
CODE:4e7f  02 4f 3e                 LJMP 0x4f3e
LAB_CODE_4e82:
CODE:4e82  90 03 1f                 MOV DPTR,#0x31f   ; XREF: CODE:4e7d 
CODE:4e85  74 03                    MOV A,#0x3
CODE:4e87  f0                       MOVX @DPTR,A
CODE:4e88  85 1b 82                 MOV DPL,0x1b
CODE:4e8b  85 1a 83                 MOV DPH,0x1a
CODE:4e8e  a3                       INC DPTR
CODE:4e8f  a3                       INC DPTR
CODE:4e90  e0                       MOVX A,@DPTR
CODE:4e91  ff                       MOV R7,A
CODE:4e92  90 03 32                 MOV DPTR,#0x332
CODE:4e95  f0                       MOVX @DPTR,A
CODE:4e96  85 1b 82                 MOV DPL,0x1b
CODE:4e99  85 1a 83                 MOV DPH,0x1a
CODE:4e9c  a3                       INC DPTR
CODE:4e9d  a3                       INC DPTR
CODE:4e9e  a3                       INC DPTR
CODE:4e9f  e0                       MOVX A,@DPTR
CODE:4ea0  90 03 2d                 MOV DPTR,#0x32d
CODE:4ea3  f0                       MOVX @DPTR,A
CODE:4ea4  ef                       MOV A,R7
CODE:4ea5  64 01                    XRL A,#0x1
CODE:4ea7  60 03                    JZ 0x4eac
CODE:4ea9  02 53 97                 LJMP 0x5397
LAB_CODE_4eac:
CODE:4eac  e0                       MOVX A,@DPTR   ; XREF: CODE:4ea7 
CODE:4ead  64 01                    XRL A,#0x1
CODE:4eaf  60 03                    JZ 0x4eb4
CODE:4eb1  02 53 97                 LJMP 0x5397
LAB_CODE_4eb4:
CODE:4eb4  7f c8                    MOV R7,#0xc8   ; XREF: CODE:4eaf 
CODE:4eb6  12 7f 93                 LCALL 0x7f93
CODE:4eb9  7f ca                    MOV R7,#0xca
CODE:4ebb  12 7f 93                 LCALL 0x7f93
CODE:4ebe  e4                       CLR A
CODE:4ebf  f5 47                    MOV 0x47,A
CODE:4ec1  f5 48                    MOV 0x48,A
LAB_CODE_4ec3:
CODE:4ec3  ad 48                    MOV R5,0x48   ; XREF: CODE:4ee5 
CODE:4ec5  e4                       CLR A
CODE:4ec6  25 48                    ADD A,0x48
CODE:4ec8  f5 82                    MOV DPL,A
CODE:4eca  74 dc                    MOV A,#0xdc
CODE:4ecc  35 47                    ADDC A,0x47
CODE:4ece  f5 83                    MOV DPH,A
CODE:4ed0  e4                       CLR A
CODE:4ed1  93                       MOVC A,@A+DPTR
CODE:4ed2  fb                       MOV R3,A
CODE:4ed3  7f c8                    MOV R7,#0xc8
CODE:4ed5  12 7e ca                 LCALL 0x7eca
CODE:4ed8  05 48                    INC 0x48
CODE:4eda  e5 48                    MOV A,0x48
CODE:4edc  70 02                    JNZ 0x4ee0
CODE:4ede  05 47                    INC 0x47
LAB_CODE_4ee0:
CODE:4ee0  c3                       CLR CY   ; XREF: CODE:4edc 
CODE:4ee1  e5 47                    MOV A,0x47
CODE:4ee3  94 01                    SUBB A,#0x1
CODE:4ee5  40 dc                    JC 0x4ec3
CODE:4ee7  e4                       CLR A
CODE:4ee8  f5 47                    MOV 0x47,A
CODE:4eea  f5 48                    MOV 0x48,A
LAB_CODE_4eec:
CODE:4eec  ad 48                    MOV R5,0x48   ; XREF: CODE:4f0e 
CODE:4eee  e4                       CLR A
CODE:4eef  25 48                    ADD A,0x48
CODE:4ef1  f5 82                    MOV DPL,A
CODE:4ef3  74 dd                    MOV A,#0xdd
CODE:4ef5  35 47                    ADDC A,0x47
CODE:4ef7  f5 83                    MOV DPH,A
CODE:4ef9  e4                       CLR A
CODE:4efa  93                       MOVC A,@A+DPTR
CODE:4efb  fb                       MOV R3,A
CODE:4efc  7f c9                    MOV R7,#0xc9
CODE:4efe  12 7e ca                 LCALL 0x7eca
CODE:4f01  05 48                    INC 0x48
CODE:4f03  e5 48                    MOV A,0x48
CODE:4f05  70 02                    JNZ 0x4f09
CODE:4f07  05 47                    INC 0x47
LAB_CODE_4f09:
CODE:4f09  c3                       CLR CY   ; XREF: CODE:4f05 
CODE:4f0a  e5 47                    MOV A,0x47
CODE:4f0c  94 01                    SUBB A,#0x1
CODE:4f0e  40 dc                    JC 0x4eec
CODE:4f10  e4                       CLR A
CODE:4f11  f5 47                    MOV 0x47,A
CODE:4f13  f5 48                    MOV 0x48,A
LAB_CODE_4f15:
CODE:4f15  ad 48                    MOV R5,0x48   ; XREF: CODE:4f39 
CODE:4f17  e4                       CLR A
CODE:4f18  25 48                    ADD A,0x48
CODE:4f1a  f5 82                    MOV DPL,A
CODE:4f1c  74 de                    MOV A,#0xde
CODE:4f1e  35 47                    ADDC A,0x47
CODE:4f20  f5 83                    MOV DPH,A
CODE:4f22  e4                       CLR A
CODE:4f23  93                       MOVC A,@A+DPTR
CODE:4f24  fb                       MOV R3,A
CODE:4f25  7f ca                    MOV R7,#0xca
CODE:4f27  12 7e ca                 LCALL 0x7eca
CODE:4f2a  05 48                    INC 0x48
CODE:4f2c  e5 48                    MOV A,0x48
CODE:4f2e  70 02                    JNZ 0x4f32
CODE:4f30  05 47                    INC 0x47
LAB_CODE_4f32:
CODE:4f32  c3                       CLR CY   ; XREF: CODE:4f2e 
CODE:4f33  94 28                    SUBB A,#0x28
CODE:4f35  e5 47                    MOV A,0x47
CODE:4f37  94 00                    SUBB A,#0x0
CODE:4f39  40 da                    JC 0x4f15
CODE:4f3b  02 53 97                 LJMP 0x5397
LAB_CODE_4f3e:
CODE:4f3e  85 1b 82                 MOV DPL,0x1b   ; XREF: CODE:4e7f 
CODE:4f41  85 1a 83                 MOV DPH,0x1a
CODE:4f44  a3                       INC DPTR
CODE:4f45  e0                       MOVX A,@DPTR
CODE:4f46  b4 04 27                 CJNE A,#0x4,0x4f70
CODE:4f49  90 03 1f                 MOV DPTR,#0x31f
CODE:4f4c  74 04                    MOV A,#0x4
CODE:4f4e  f0                       MOVX @DPTR,A
CODE:4f4f  85 1b 82                 MOV DPL,0x1b
CODE:4f52  85 1a 83                 MOV DPH,0x1a
CODE:4f55  a3                       INC DPTR
CODE:4f56  a3                       INC DPTR
CODE:4f57  e0                       MOVX A,@DPTR
CODE:4f58  90 03 1e                 MOV DPTR,#0x31e
CODE:4f5b  f0                       MOVX @DPTR,A
CODE:4f5c  64 01                    XRL A,#0x1
CODE:4f5e  60 03                    JZ 0x4f63
CODE:4f60  02 53 97                 LJMP 0x5397
LAB_CODE_4f63:
CODE:4f63  7f c8                    MOV R7,#0xc8   ; XREF: CODE:4f5e 
CODE:4f65  12 7f 93                 LCALL 0x7f93
CODE:4f68  7f ca                    MOV R7,#0xca
CODE:4f6a  12 7f 93                 LCALL 0x7f93
CODE:4f6d  02 53 97                 LJMP 0x5397
LAB_CODE_4f70:
CODE:4f70  85 1b 82                 MOV DPL,0x1b   ; XREF: CODE:4f46 
CODE:4f73  85 1a 83                 MOV DPH,0x1a
CODE:4f76  a3                       INC DPTR
CODE:4f77  e0                       MOVX A,@DPTR
CODE:4f78  64 05                    XRL A,#0x5
CODE:4f7a  70 47                    JNZ 0x4fc3
CODE:4f7c  90 03 1f                 MOV DPTR,#0x31f
CODE:4f7f  74 05                    MOV A,#0x5
CODE:4f81  f0                       MOVX @DPTR,A
CODE:4f82  85 1b 82                 MOV DPL,0x1b
CODE:4f85  85 1a 83                 MOV DPH,0x1a
CODE:4f88  a3                       INC DPTR
CODE:4f89  a3                       INC DPTR
CODE:4f8a  e0                       MOVX A,@DPTR
CODE:4f8b  90 03 1e                 MOV DPTR,#0x31e
CODE:4f8e  f0                       MOVX @DPTR,A
CODE:4f8f  85 1b 82                 MOV DPL,0x1b
CODE:4f92  85 1a 83                 MOV DPH,0x1a
CODE:4f95  a3                       INC DPTR
CODE:4f96  a3                       INC DPTR
CODE:4f97  a3                       INC DPTR
CODE:4f98  e0                       MOVX A,@DPTR
CODE:4f99  90 03 3c                 MOV DPTR,#0x33c
CODE:4f9c  f0                       MOVX @DPTR,A
CODE:4f9d  e5 1b                    MOV A,0x1b
CODE:4f9f  24 04                    ADD A,#0x4
CODE:4fa1  f5 82                    MOV DPL,A
CODE:4fa3  e4                       CLR A
CODE:4fa4  35 1a                    ADDC A,0x1a
CODE:4fa6  f5 83                    MOV DPH,A
CODE:4fa8  e0                       MOVX A,@DPTR
CODE:4fa9  90 03 31                 MOV DPTR,#0x331
CODE:4fac  f0                       MOVX @DPTR,A
CODE:4fad  64 01                    XRL A,#0x1
CODE:4faf  60 03                    JZ 0x4fb4
CODE:4fb1  02 53 97                 LJMP 0x5397
LAB_CODE_4fb4:
CODE:4fb4  f5 14                    MOV 0x14,A   ; XREF: CODE:4faf 
CODE:4fb6  f5 15                    MOV 0x15,A
CODE:4fb8  d2 20                    SETB 0x20
CODE:4fba  53 a8 fe                 ANL 0xa8,#0xfe
CODE:4fbd  12 79 d2                 LCALL 0x79d2
CODE:4fc0  02 53 97                 LJMP 0x5397
LAB_CODE_4fc3:
CODE:4fc3  85 1b 82                 MOV DPL,0x1b   ; XREF: CODE:4f7a 
CODE:4fc6  85 1a 83                 MOV DPH,0x1a
CODE:4fc9  a3                       INC DPTR
CODE:4fca  e0                       MOVX A,@DPTR
CODE:4fcb  64 0a                    XRL A,#0xa
CODE:4fcd  60 03                    JZ 0x4fd2
CODE:4fcf  02 51 8f                 LJMP 0x518f
LAB_CODE_4fd2:
CODE:4fd2  85 1b 82                 MOV DPL,0x1b   ; XREF: CODE:4fcd 
CODE:4fd5  85 1a 83                 MOV DPH,0x1a
CODE:4fd8  a3                       INC DPTR
CODE:4fd9  a3                       INC DPTR
CODE:4fda  a3                       INC DPTR
CODE:4fdb  e0                       MOVX A,@DPTR
CODE:4fdc  78 76                    MOV R0,#0x76
CODE:4fde  f6                       MOV @R0,A
CODE:4fdf  e4                       CLR A
CODE:4fe0  ff                       MOV R7,A
LAB_CODE_4fe1:
CODE:4fe1  74 00                    MOV A,#0x0   ; XREF: CODE:5009 
CODE:4fe3  2f                       ADD A,R7
CODE:4fe4  f5 82                    MOV DPL,A
CODE:4fe6  e4                       CLR A
CODE:4fe7  34 00                    ADDC A,#0x0
CODE:4fe9  f5 83                    MOV DPH,A
CODE:4feb  74 ff                    MOV A,#0xff
CODE:4fed  f0                       MOVX @DPTR,A
CODE:4fee  74 95                    MOV A,#0x95
CODE:4ff0  2f                       ADD A,R7
CODE:4ff1  f5 82                    MOV DPL,A
CODE:4ff3  e4                       CLR A
CODE:4ff4  34 00                    ADDC A,#0x0
CODE:4ff6  f5 83                    MOV DPH,A
CODE:4ff8  74 ff                    MOV A,#0xff
CODE:4ffa  f0                       MOVX @DPTR,A
CODE:4ffb  74 2a                    MOV A,#0x2a
CODE:4ffd  2f                       ADD A,R7
CODE:4ffe  f5 82                    MOV DPL,A
CODE:5000  e4                       CLR A
CODE:5001  34 01                    ADDC A,#0x1
CODE:5003  f5 83                    MOV DPH,A
CODE:5005  74 ff                    MOV A,#0xff
CODE:5007  f0                       MOVX @DPTR,A
CODE:5008  0f                       INC R7
CODE:5009  bf 8a d5                 CJNE R7,#0x8a,0x4fe1
CODE:500c  78 76                    MOV R0,#0x76
CODE:500e  e6                       MOV A,@R0
CODE:500f  fe                       MOV R6,A
CODE:5010  70 03                    JNZ 0x5015
CODE:5012  02 51 66                 LJMP 0x5166
LAB_CODE_5015:
CODE:5015  ee                       MOV A,R6   ; XREF: CODE:5010 
CODE:5016  b4 01 21                 CJNE A,#0x1,0x503a
CODE:5019  e4                       CLR A
CODE:501a  78 68                    MOV R0,#0x68
CODE:501c  f6                       MOV @R0,A
CODE:501d  18                       DEC R0
CODE:501e  76 1c                    MOV @R0,#0x1c
CODE:5020  18                       DEC R0
CODE:5021  76 38                    MOV @R0,#0x38
CODE:5023  18                       DEC R0
CODE:5024  76 54                    MOV @R0,#0x54
CODE:5026  18                       DEC R0
CODE:5027  76 70                    MOV @R0,#0x70
CODE:5029  18                       DEC R0
CODE:502a  76 8c                    MOV @R0,#0x8c
CODE:502c  18                       DEC R0
CODE:502d  76 a8                    MOV @R0,#0xa8
CODE:502f  18                       DEC R0
CODE:5030  76 c4                    MOV @R0,#0xc4
CODE:5032  18                       DEC R0
CODE:5033  76 e0                    MOV @R0,#0xe0
CODE:5035  18                       DEC R0
CODE:5036  76 ff                    MOV @R0,#0xff
CODE:5038  80 1a                    SJMP 0x5054
LAB_CODE_503a:
CODE:503a  ee                       MOV A,R6   ; XREF: CODE:5016 
CODE:503b  b4 03 1d                 CJNE A,#0x3,0x505b
CODE:503e  e4                       CLR A
CODE:503f  78 68                    MOV R0,#0x68
CODE:5041  f6                       MOV @R0,A
CODE:5042  18                       DEC R0
CODE:5043  f6                       MOV @R0,A
CODE:5044  18                       DEC R0
CODE:5045  f6                       MOV @R0,A
CODE:5046  18                       DEC R0
CODE:5047  f6                       MOV @R0,A
CODE:5048  18                       DEC R0
CODE:5049  f6                       MOV @R0,A
CODE:504a  18                       DEC R0
CODE:504b  f6                       MOV @R0,A
CODE:504c  18                       DEC R0
CODE:504d  f6                       MOV @R0,A
CODE:504e  18                       DEC R0
CODE:504f  f6                       MOV @R0,A
CODE:5050  18                       DEC R0
CODE:5051  f6                       MOV @R0,A
CODE:5052  18                       DEC R0
CODE:5053  f6                       MOV @R0,A
LAB_CODE_5054:
CODE:5054  f5 1d                    MOV 0x1d,A   ; XREF: CODE:5038 
CODE:5056  f5 1c                    MOV 0x1c,A
CODE:5058  02 53 97                 LJMP 0x5397
LAB_CODE_505b:
CODE:505b  ee                       MOV A,R6   ; XREF: CODE:503b 
CODE:505c  b4 07 09                 CJNE A,#0x7,0x5068
CODE:505f  e4                       CLR A
CODE:5060  78 5e                    MOV R0,#0x5e
CODE:5062  f6                       MOV @R0,A
CODE:5063  c2 25                    CLR 0x25
CODE:5065  02 53 97                 LJMP 0x5397
LAB_CODE_5068:
CODE:5068  ee                       MOV A,R6   ; XREF: CODE:505c 
CODE:5069  64 06                    XRL A,#0x6
CODE:506b  70 53                    JNZ 0x50c0
CODE:506d  78 5e                    MOV R0,#0x5e
CODE:506f  f6                       MOV @R0,A
CODE:5070  f5 1c                    MOV 0x1c,A
CODE:5072  78 75                    MOV R0,#0x75
CODE:5074  f6                       MOV @R0,A
CODE:5075  18                       DEC R0
CODE:5076  76 0b                    MOV @R0,#0xb
CODE:5078  18                       DEC R0
CODE:5079  76 16                    MOV @R0,#0x16
CODE:507b  18                       DEC R0
CODE:507c  76 21                    MOV @R0,#0x21
CODE:507e  18                       DEC R0
CODE:507f  76 2c                    MOV @R0,#0x2c
CODE:5081  18                       DEC R0
CODE:5082  76 37                    MOV @R0,#0x37
CODE:5084  18                       DEC R0
CODE:5085  76 42                    MOV @R0,#0x42
CODE:5087  18                       DEC R0
CODE:5088  76 4d                    MOV @R0,#0x4d
CODE:508a  18                       DEC R0
CODE:508b  76 58                    MOV @R0,#0x58
CODE:508d  18                       DEC R0
CODE:508e  76 63                    MOV @R0,#0x63
CODE:5090  18                       DEC R0
CODE:5091  76 6e                    MOV @R0,#0x6e
CODE:5093  18                       DEC R0
CODE:5094  76 79                    MOV @R0,#0x79
CODE:5096  18                       DEC R0
CODE:5097  76 84                    MOV @R0,#0x84
CODE:5099  18                       DEC R0
CODE:509a  76 8f                    MOV @R0,#0x8f
CODE:509c  18                       DEC R0
CODE:509d  76 9a                    MOV @R0,#0x9a
CODE:509f  18                       DEC R0
CODE:50a0  76 a5                    MOV @R0,#0xa5
CODE:50a2  18                       DEC R0
CODE:50a3  76 b0                    MOV @R0,#0xb0
CODE:50a5  18                       DEC R0
CODE:50a6  76 bb                    MOV @R0,#0xbb
CODE:50a8  18                       DEC R0
CODE:50a9  76 c6                    MOV @R0,#0xc6
CODE:50ab  18                       DEC R0
CODE:50ac  76 d1                    MOV @R0,#0xd1
CODE:50ae  18                       DEC R0
CODE:50af  76 dc                    MOV @R0,#0xdc
CODE:50b1  18                       DEC R0
CODE:50b2  76 e7                    MOV @R0,#0xe7
CODE:50b4  18                       DEC R0
CODE:50b5  76 f2                    MOV @R0,#0xf2
CODE:50b7  f5 0c                    MOV 0x0c,A
CODE:50b9  f5 0d                    MOV 0x0d,A
CODE:50bb  f5 0e                    MOV 0x0e,A
CODE:50bd  02 53 97                 LJMP 0x5397
LAB_CODE_50c0:
CODE:50c0  ee                       MOV A,R6   ; XREF: CODE:506b 
CODE:50c1  64 08                    XRL A,#0x8
CODE:50c3  60 03                    JZ 0x50c8
CODE:50c5  02 51 5e                 LJMP 0x515e
LAB_CODE_50c8:
CODE:50c8  ff                       MOV R7,A   ; XREF: CODE:50c3 
LAB_CODE_50c9:
CODE:50c9  e5 1c                    MOV A,0x1c   ; XREF: CODE:5158 
CODE:50cb  70 05                    JNZ 0x50d2
CODE:50cd  75 49 ff                 MOV 0x49,#0xff
CODE:50d0  80 2b                    SJMP 0x50fd
LAB_CODE_50d2:
CODE:50d2  e5 1c                    MOV A,0x1c   ; XREF: CODE:50cb 
CODE:50d4  b4 01 06                 CJNE A,#0x1,0x50dd
CODE:50d7  75 49 ff                 MOV 0x49,#0xff
CODE:50da  e4                       CLR A
CODE:50db  80 2f                    SJMP 0x510c
LAB_CODE_50dd:
CODE:50dd  e5 1c                    MOV A,0x1c   ; XREF: CODE:50d4 
CODE:50df  b4 02 08                 CJNE A,#0x2,0x50ea
CODE:50e2  e4                       CLR A
CODE:50e3  f5 49                    MOV 0x49,A
CODE:50e5  75 4a ff                 MOV 0x4a,#0xff
CODE:50e8  80 24                    SJMP 0x510e
LAB_CODE_50ea:
CODE:50ea  e5 1c                    MOV A,0x1c   ; XREF: CODE:50df 
CODE:50ec  b4 03 06                 CJNE A,#0x3,0x50f5
CODE:50ef  75 49 ff                 MOV 0x49,#0xff
CODE:50f2  e4                       CLR A
CODE:50f3  80 26                    SJMP 0x511b
LAB_CODE_50f5:
CODE:50f5  e5 1c                    MOV A,0x1c   ; XREF: CODE:50ec 
CODE:50f7  b4 04 0a                 CJNE A,#0x4,0x5104
CODE:50fa  e4                       CLR A
CODE:50fb  f5 49                    MOV 0x49,A
LAB_CODE_50fd:
CODE:50fd  75 4a ff                 MOV 0x4a,#0xff   ; XREF: CODE:50d0 
CODE:5100  f5 4b                    MOV 0x4b,A
CODE:5102  80 1b                    SJMP 0x511f
LAB_CODE_5104:
CODE:5104  e5 1c                    MOV A,0x1c   ; XREF: CODE:50f7 
CODE:5106  b4 05 0a                 CJNE A,#0x5,0x5113
CODE:5109  e4                       CLR A
CODE:510a  f5 49                    MOV 0x49,A
LAB_CODE_510c:
CODE:510c  f5 4a                    MOV 0x4a,A   ; XREF: CODE:50db 
LAB_CODE_510e:
CODE:510e  75 4b ff                 MOV 0x4b,#0xff   ; XREF: CODE:50e8 
CODE:5111  80 0c                    SJMP 0x511f
LAB_CODE_5113:
CODE:5113  e5 1c                    MOV A,0x1c   ; XREF: CODE:5106 
CODE:5115  b4 06 07                 CJNE A,#0x6,0x511f
CODE:5118  e4                       CLR A
CODE:5119  f5 49                    MOV 0x49,A
LAB_CODE_511b:
CODE:511b  f5 4a                    MOV 0x4a,A   ; XREF: CODE:50f3 
CODE:511d  f5 4b                    MOV 0x4b,A
LAB_CODE_511f:
CODE:511f  74 00                    MOV A,#0x0   ; XREF: CODE:5102 CODE:5111 CODE:5115 
CODE:5121  2f                       ADD A,R7
CODE:5122  f5 82                    MOV DPL,A
CODE:5124  e4                       CLR A
CODE:5125  34 00                    ADDC A,#0x0
CODE:5127  f5 83                    MOV DPH,A
CODE:5129  e5 49                    MOV A,0x49
CODE:512b  f0                       MOVX @DPTR,A
CODE:512c  74 95                    MOV A,#0x95
CODE:512e  2f                       ADD A,R7
CODE:512f  f5 82                    MOV DPL,A
CODE:5131  e4                       CLR A
CODE:5132  34 00                    ADDC A,#0x0
CODE:5134  f5 83                    MOV DPH,A
CODE:5136  e5 4a                    MOV A,0x4a
CODE:5138  f0                       MOVX @DPTR,A
CODE:5139  74 2a                    MOV A,#0x2a
CODE:513b  2f                       ADD A,R7
CODE:513c  f5 82                    MOV DPL,A
CODE:513e  e4                       CLR A
CODE:513f  34 01                    ADDC A,#0x1
CODE:5141  f5 83                    MOV DPH,A
CODE:5143  e5 4b                    MOV A,0x4b
CODE:5145  f0                       MOVX @DPTR,A
CODE:5146  05 1c                    INC 0x1c
CODE:5148  e5 1c                    MOV A,0x1c
CODE:514a  d3                       SETB CY
CODE:514b  94 06                    SUBB A,#0x6
CODE:514d  40 03                    JC 0x5152
CODE:514f  e4                       CLR A
CODE:5150  f5 1c                    MOV 0x1c,A
LAB_CODE_5152:
CODE:5152  0f                       INC R7   ; XREF: CODE:514d 
CODE:5153  ef                       MOV A,R7
CODE:5154  64 8a                    XRL A,#0x8a
CODE:5156  60 03                    JZ 0x515b
CODE:5158  02 50 c9                 LJMP 0x50c9
LAB_CODE_515b:
CODE:515b  02 53 97                 LJMP 0x5397   ; XREF: CODE:5156 
LAB_CODE_515e:
CODE:515e  78 76                    MOV R0,#0x76   ; XREF: CODE:50c5 
CODE:5160  e6                       MOV A,@R0
CODE:5161  ff                       MOV R7,A
CODE:5162  b4 09 09                 CJNE A,#0x9,0x516e
CODE:5165  e4                       CLR A
LAB_CODE_5166:
CODE:5166  78 5e                    MOV R0,#0x5e   ; XREF: CODE:5012 
CODE:5168  f6                       MOV @R0,A
CODE:5169  f5 1c                    MOV 0x1c,A
CODE:516b  02 53 97                 LJMP 0x5397
LAB_CODE_516e:
CODE:516e  ef                       MOV A,R7   ; XREF: CODE:5162 
CODE:516f  64 0a                    XRL A,#0xa
CODE:5171  60 03                    JZ 0x5176
CODE:5173  02 53 97                 LJMP 0x5397
LAB_CODE_5176:
CODE:5176  12 79 d2                 LCALL 0x79d2   ; XREF: CODE:5171 
CODE:5179  e4                       CLR A
CODE:517a  78 53                    MOV R0,#0x53
CODE:517c  f6                       MOV @R0,A
CODE:517d  7f ac                    MOV R7,#0xac
CODE:517f  12 7f 93                 LCALL 0x7f93
CODE:5182  7f ae                    MOV R7,#0xae
CODE:5184  12 7f 93                 LCALL 0x7f93
CODE:5187  d2 1a                    SETB 0x1a
CODE:5189  e4                       CLR A
CODE:518a  f5 b1                    MOV 0xb1,A
CODE:518c  02 53 97                 LJMP 0x5397
LAB_CODE_518f:
CODE:518f  85 1b 82                 MOV DPL,0x1b   ; XREF: CODE:4fcf 
CODE:5192  85 1a 83                 MOV DPH,0x1a
CODE:5195  a3                       INC DPTR
CODE:5196  e0                       MOVX A,@DPTR
CODE:5197  64 0b                    XRL A,#0xb
CODE:5199  70 51                    JNZ 0x51ec
CODE:519b  12 79 d2                 LCALL 0x79d2
CODE:519e  e4                       CLR A
CODE:519f  78 53                    MOV R0,#0x53
CODE:51a1  f6                       MOV @R0,A
CODE:51a2  7f b0                    MOV R7,#0xb0
CODE:51a4  12 7f 93                 LCALL 0x7f93
CODE:51a7  e4                       CLR A
CODE:51a8  f5 b1                    MOV 0xb1,A
CODE:51aa  e5 1b                    MOV A,0x1b
CODE:51ac  24 04                    ADD A,#0x4
CODE:51ae  f5 82                    MOV DPL,A
CODE:51b0  e4                       CLR A
CODE:51b1  35 1a                    ADDC A,0x1a
CODE:51b3  f5 83                    MOV DPH,A
CODE:51b5  e0                       MOVX A,@DPTR
CODE:51b6  f4                       CPL A
CODE:51b7  fb                       MOV R3,A
CODE:51b8  e4                       CLR A
CODE:51b9  fd                       MOV R5,A
CODE:51ba  7f b0                    MOV R7,#0xb0
CODE:51bc  12 7e ca                 LCALL 0x7eca
CODE:51bf  e5 1b                    MOV A,0x1b
CODE:51c1  24 05                    ADD A,#0x5
CODE:51c3  f5 82                    MOV DPL,A
CODE:51c5  e4                       CLR A
CODE:51c6  35 1a                    ADDC A,0x1a
CODE:51c8  f5 83                    MOV DPH,A
CODE:51ca  e0                       MOVX A,@DPTR
CODE:51cb  f4                       CPL A
CODE:51cc  fb                       MOV R3,A
CODE:51cd  7d 01                    MOV R5,#0x1
CODE:51cf  7f b0                    MOV R7,#0xb0
CODE:51d1  12 7e ca                 LCALL 0x7eca
CODE:51d4  e5 1b                    MOV A,0x1b
CODE:51d6  24 06                    ADD A,#0x6
CODE:51d8  f5 82                    MOV DPL,A
CODE:51da  e4                       CLR A
CODE:51db  35 1a                    ADDC A,0x1a
CODE:51dd  f5 83                    MOV DPH,A
CODE:51df  e0                       MOVX A,@DPTR
CODE:51e0  f4                       CPL A
CODE:51e1  fb                       MOV R3,A
CODE:51e2  7d 02                    MOV R5,#0x2
CODE:51e4  7f b0                    MOV R7,#0xb0
CODE:51e6  12 7e ca                 LCALL 0x7eca
CODE:51e9  02 53 97                 LJMP 0x5397
LAB_CODE_51ec:
CODE:51ec  85 1b 82                 MOV DPL,0x1b   ; XREF: CODE:5199 
CODE:51ef  85 1a 83                 MOV DPH,0x1a
CODE:51f2  a3                       INC DPTR
CODE:51f3  e0                       MOVX A,@DPTR
CODE:51f4  64 0c                    XRL A,#0xc
CODE:51f6  60 03                    JZ 0x51fb
CODE:51f8  02 53 8a                 LJMP 0x538a
LAB_CODE_51fb:
CODE:51fb  12 79 d2                 LCALL 0x79d2   ; XREF: CODE:51f6 
CODE:51fe  e4                       CLR A
CODE:51ff  78 53                    MOV R0,#0x53
CODE:5201  f6                       MOV @R0,A
CODE:5202  f5 b1                    MOV 0xb1,A
CODE:5204  85 1b 82                 MOV DPL,0x1b
CODE:5207  85 1a 83                 MOV DPH,0x1a
CODE:520a  a3                       INC DPTR
CODE:520b  a3                       INC DPTR
CODE:520c  a3                       INC DPTR
CODE:520d  e0                       MOVX A,@DPTR
CODE:520e  90 03 2d                 MOV DPTR,#0x32d
CODE:5211  f0                       MOVX @DPTR,A
CODE:5212  c3                       CLR CY
CODE:5213  94 56                    SUBB A,#0x56
CODE:5215  50 52                    JNC 0x5269
CODE:5217  e0                       MOVX A,@DPTR
CODE:5218  75 f0 03                 MOV B,#0x3
CODE:521b  a4                       MUL AB
CODE:521c  14                       DEC A
CODE:521d  fd                       MOV R5,A
CODE:521e  e5 1b                    MOV A,0x1b
CODE:5220  24 04                    ADD A,#0x4
CODE:5222  f5 82                    MOV DPL,A
CODE:5224  e4                       CLR A
CODE:5225  35 1a                    ADDC A,0x1a
CODE:5227  f5 83                    MOV DPH,A
CODE:5229  e0                       MOVX A,@DPTR
CODE:522a  f4                       CPL A
CODE:522b  fb                       MOV R3,A
CODE:522c  7f ac                    MOV R7,#0xac
CODE:522e  12 7e ca                 LCALL 0x7eca
CODE:5231  90 03 2d                 MOV DPTR,#0x32d
CODE:5234  e0                       MOVX A,@DPTR
CODE:5235  75 f0 03                 MOV B,#0x3
CODE:5238  a4                       MUL AB
CODE:5239  24 fe                    ADD A,#0xfe
CODE:523b  fd                       MOV R5,A
CODE:523c  e5 1b                    MOV A,0x1b
CODE:523e  24 05                    ADD A,#0x5
CODE:5240  f5 82                    MOV DPL,A
CODE:5242  e4                       CLR A
CODE:5243  35 1a                    ADDC A,0x1a
CODE:5245  f5 83                    MOV DPH,A
CODE:5247  e0                       MOVX A,@DPTR
CODE:5248  f4                       CPL A
CODE:5249  fb                       MOV R3,A
CODE:524a  7f ac                    MOV R7,#0xac
CODE:524c  12 7e ca                 LCALL 0x7eca
CODE:524f  90 03 2d                 MOV DPTR,#0x32d
CODE:5252  e0                       MOVX A,@DPTR
CODE:5253  14                       DEC A
CODE:5254  75 f0 03                 MOV B,#0x3
CODE:5257  a4                       MUL AB
CODE:5258  fd                       MOV R5,A
CODE:5259  e5 1b                    MOV A,0x1b
CODE:525b  24 06                    ADD A,#0x6
CODE:525d  f5 82                    MOV DPL,A
CODE:525f  e4                       CLR A
CODE:5260  35 1a                    ADDC A,0x1a
CODE:5262  f5 83                    MOV DPH,A
CODE:5264  e0                       MOVX A,@DPTR
CODE:5265  f4                       CPL A
CODE:5266  fb                       MOV R3,A
CODE:5267  80 42                    SJMP 0x52ab
LAB_CODE_5269:
CODE:5269  90 03 2d                 MOV DPTR,#0x32d   ; XREF: CODE:5215 
CODE:526c  e0                       MOVX A,@DPTR
CODE:526d  64 56                    XRL A,#0x56
CODE:526f  70 3e                    JNZ 0x52af
CODE:5271  e5 1b                    MOV A,0x1b
CODE:5273  24 04                    ADD A,#0x4
CODE:5275  f5 82                    MOV DPL,A
CODE:5277  e4                       CLR A
CODE:5278  35 1a                    ADDC A,0x1a
CODE:527a  f5 83                    MOV DPH,A
CODE:527c  e0                       MOVX A,@DPTR
CODE:527d  f4                       CPL A
CODE:527e  fb                       MOV R3,A
CODE:527f  7d 01                    MOV R5,#0x1
CODE:5281  7f ad                    MOV R7,#0xad
CODE:5283  12 7e ca                 LCALL 0x7eca
CODE:5286  e5 1b                    MOV A,0x1b
CODE:5288  24 05                    ADD A,#0x5
CODE:528a  f5 82                    MOV DPL,A
CODE:528c  e4                       CLR A
CODE:528d  35 1a                    ADDC A,0x1a
CODE:528f  f5 83                    MOV DPH,A
CODE:5291  e0                       MOVX A,@DPTR
CODE:5292  f4                       CPL A
CODE:5293  fb                       MOV R3,A
CODE:5294  e4                       CLR A
CODE:5295  fd                       MOV R5,A
CODE:5296  7f ad                    MOV R7,#0xad
CODE:5298  12 7e ca                 LCALL 0x7eca
CODE:529b  e5 1b                    MOV A,0x1b
CODE:529d  24 06                    ADD A,#0x6
CODE:529f  f5 82                    MOV DPL,A
CODE:52a1  e4                       CLR A
CODE:52a2  35 1a                    ADDC A,0x1a
CODE:52a4  f5 83                    MOV DPH,A
CODE:52a6  e0                       MOVX A,@DPTR
CODE:52a7  f4                       CPL A
CODE:52a8  fb                       MOV R3,A
CODE:52a9  7d ff                    MOV R5,#0xff
LAB_CODE_52ab:
CODE:52ab  7f ac                    MOV R7,#0xac   ; XREF: CODE:5267 
CODE:52ad  80 5d                    SJMP 0x530c
LAB_CODE_52af:
CODE:52af  90 03 2d                 MOV DPTR,#0x32d   ; XREF: CODE:526f 
CODE:52b2  e0                       MOVX A,@DPTR
CODE:52b3  ff                       MOV R7,A
CODE:52b4  c3                       CLR CY
CODE:52b5  94 8b                    SUBB A,#0x8b
CODE:52b7  50 56                    JNC 0x530f
CODE:52b9  ef                       MOV A,R7
CODE:52ba  75 f0 03                 MOV B,#0x3
CODE:52bd  a4                       MUL AB
CODE:52be  14                       DEC A
CODE:52bf  fd                       MOV R5,A
CODE:52c0  e5 1b                    MOV A,0x1b
CODE:52c2  24 04                    ADD A,#0x4
CODE:52c4  f5 82                    MOV DPL,A
CODE:52c6  e4                       CLR A
CODE:52c7  35 1a                    ADDC A,0x1a
CODE:52c9  f5 83                    MOV DPH,A
CODE:52cb  e0                       MOVX A,@DPTR
CODE:52cc  f4                       CPL A
CODE:52cd  fb                       MOV R3,A
CODE:52ce  7f ad                    MOV R7,#0xad
CODE:52d0  12 7e ca                 LCALL 0x7eca
CODE:52d3  90 03 2d                 MOV DPTR,#0x32d
CODE:52d6  e0                       MOVX A,@DPTR
CODE:52d7  24 aa                    ADD A,#0xaa
CODE:52d9  75 f0 03                 MOV B,#0x3
CODE:52dc  a4                       MUL AB
CODE:52dd  fd                       MOV R5,A
CODE:52de  e5 1b                    MOV A,0x1b
CODE:52e0  24 05                    ADD A,#0x5
CODE:52e2  f5 82                    MOV DPL,A
CODE:52e4  e4                       CLR A
CODE:52e5  35 1a                    ADDC A,0x1a
CODE:52e7  f5 83                    MOV DPH,A
CODE:52e9  e0                       MOVX A,@DPTR
CODE:52ea  f4                       CPL A
CODE:52eb  fb                       MOV R3,A
CODE:52ec  7f ad                    MOV R7,#0xad
CODE:52ee  12 7e ca                 LCALL 0x7eca
CODE:52f1  90 03 2d                 MOV DPTR,#0x32d
CODE:52f4  e0                       MOVX A,@DPTR
CODE:52f5  75 f0 03                 MOV B,#0x3
CODE:52f8  a4                       MUL AB
CODE:52f9  24 fd                    ADD A,#0xfd
CODE:52fb  fd                       MOV R5,A
CODE:52fc  e5 1b                    MOV A,0x1b
CODE:52fe  24 06                    ADD A,#0x6
CODE:5300  f5 82                    MOV DPL,A
CODE:5302  e4                       CLR A
CODE:5303  35 1a                    ADDC A,0x1a
CODE:5305  f5 83                    MOV DPH,A
CODE:5307  e0                       MOVX A,@DPTR
CODE:5308  f4                       CPL A
CODE:5309  fb                       MOV R3,A
CODE:530a  7f ad                    MOV R7,#0xad
LAB_CODE_530c:
CODE:530c  12 7e ca                 LCALL 0x7eca   ; XREF: CODE:52ad 
LAB_CODE_530f:
CODE:530f  90 03 2d                 MOV DPTR,#0x32d   ; XREF: CODE:52b7 
CODE:5312  e0                       MOVX A,@DPTR
CODE:5313  64 8a                    XRL A,#0x8a
CODE:5315  60 03                    JZ 0x531a
CODE:5317  02 53 97                 LJMP 0x5397
LAB_CODE_531a:
CODE:531a  7b ff                    MOV R3,#0xff   ; XREF: CODE:5315 
CODE:531c  7d 39                    MOV R5,#0x39
CODE:531e  7f ac                    MOV R7,#0xac
CODE:5320  12 7e ca                 LCALL 0x7eca
CODE:5323  7b ff                    MOV R3,#0xff
CODE:5325  7d 3a                    MOV R5,#0x3a
CODE:5327  7f ac                    MOV R7,#0xac
CODE:5329  12 7e ca                 LCALL 0x7eca
CODE:532c  7b ff                    MOV R3,#0xff
CODE:532e  7d 3b                    MOV R5,#0x3b
CODE:5330  7f ac                    MOV R7,#0xac
CODE:5332  12 7e ca                 LCALL 0x7eca
CODE:5335  7b ff                    MOV R3,#0xff
CODE:5337  7d 3c                    MOV R5,#0x3c
CODE:5339  7f ac                    MOV R7,#0xac
CODE:533b  12 7e ca                 LCALL 0x7eca
CODE:533e  7b ff                    MOV R3,#0xff
CODE:5340  7d 3d                    MOV R5,#0x3d
CODE:5342  7f ac                    MOV R7,#0xac
CODE:5344  12 7e ca                 LCALL 0x7eca
CODE:5347  7b ff                    MOV R3,#0xff
CODE:5349  7d 3e                    MOV R5,#0x3e
CODE:534b  7f ac                    MOV R7,#0xac
CODE:534d  12 7e ca                 LCALL 0x7eca
CODE:5350  7b ff                    MOV R3,#0xff
CODE:5352  7d 3f                    MOV R5,#0x3f
CODE:5354  7f ac                    MOV R7,#0xac
CODE:5356  12 7e ca                 LCALL 0x7eca
CODE:5359  7b ff                    MOV R3,#0xff
CODE:535b  7d 40                    MOV R5,#0x40
CODE:535d  7f ac                    MOV R7,#0xac
CODE:535f  12 7e ca                 LCALL 0x7eca
CODE:5362  7b ff                    MOV R3,#0xff
CODE:5364  7d 41                    MOV R5,#0x41
CODE:5366  7f ac                    MOV R7,#0xac
CODE:5368  12 7e ca                 LCALL 0x7eca
CODE:536b  7b ff                    MOV R3,#0xff
CODE:536d  7d 42                    MOV R5,#0x42
CODE:536f  7f ac                    MOV R7,#0xac
CODE:5371  12 7e ca                 LCALL 0x7eca
CODE:5374  7b ff                    MOV R3,#0xff
CODE:5376  7d 43                    MOV R5,#0x43
CODE:5378  7f ac                    MOV R7,#0xac
CODE:537a  12 7e ca                 LCALL 0x7eca
CODE:537d  7b ff                    MOV R3,#0xff
CODE:537f  7d 44                    MOV R5,#0x44
CODE:5381  7f ac                    MOV R7,#0xac
CODE:5383  12 7e ca                 LCALL 0x7eca
CODE:5386  c2 1a                    CLR 0x1a
CODE:5388  80 0d                    SJMP 0x5397
LAB_CODE_538a:
CODE:538a  85 1b 82                 MOV DPL,0x1b   ; XREF: CODE:51f8 
CODE:538d  85 1a 83                 MOV DPH,0x1a
CODE:5390  a3                       INC DPTR
CODE:5391  e0                       MOVX A,@DPTR
CODE:5392  b4 0f 02                 CJNE A,#0xf,0x5397
CODE:5395  d2 21                    SETB 0x21
LAB_CODE_5397:
CODE:5397  02 58 36                 LJMP 0x5836   ; XREF: CODE:4e77 CODE:4ea9 CODE:4eb1 CODE:4f3b CODE:4f60 CODE:4f6d CODE:4fb1 CODE:4fc0 CODE:5058 CODE:5065 CODE:50bd CODE:515b CODE:516b CODE:5173 CODE:518c CODE:51e9 CODE:5317 CODE:5388 CODE:5392 
LAB_CODE_539a:
CODE:539a  90 03 3b                 MOV DPTR,#0x33b   ; XREF: CODE:4e58 
CODE:539d  e0                       MOVX A,@DPTR
CODE:539e  64 0b                    XRL A,#0xb
CODE:53a0  60 03                    JZ 0x53a5
CODE:53a2  02 56 99                 LJMP 0x5699
LAB_CODE_53a5:
CODE:53a5  f0                       MOVX @DPTR,A   ; XREF: CODE:53a0 
CODE:53a6  75 1a 11                 MOV 0x1a,#0x11
CODE:53a9  f5 1b                    MOV 0x1b,A
CODE:53ab  85 1b 82                 MOV DPL,0x1b
CODE:53ae  85 1a 83                 MOV DPH,0x1a
CODE:53b1  a3                       INC DPTR
CODE:53b2  e0                       MOVX A,@DPTR
CODE:53b3  90 03 2d                 MOV DPTR,#0x32d
CODE:53b6  f0                       MOVX @DPTR,A
CODE:53b7  90 03 1e                 MOV DPTR,#0x31e
CODE:53ba  e0                       MOVX A,@DPTR
CODE:53bb  64 01                    XRL A,#0x1
CODE:53bd  60 03                    JZ 0x53c2
CODE:53bf  02 56 96                 LJMP 0x5696
LAB_CODE_53c2:
CODE:53c2  90 03 2d                 MOV DPTR,#0x32d   ; XREF: CODE:53bd 
CODE:53c5  e0                       MOVX A,@DPTR
CODE:53c6  ff                       MOV R7,A
CODE:53c7  c3                       CLR CY
CODE:53c8  94 0b                    SUBB A,#0xb
CODE:53ca  40 03                    JC 0x53cf
CODE:53cc  02 54 74                 LJMP 0x5474
LAB_CODE_53cf:
CODE:53cf  ef                       MOV A,R7   ; XREF: CODE:53ca 
CODE:53d0  75 f0 18                 MOV B,#0x18
CODE:53d3  a4                       MUL AB
CODE:53d4  24 eb                    ADD A,#0xeb
CODE:53d6  fd                       MOV R5,A
CODE:53d7  85 1b 82                 MOV DPL,0x1b
CODE:53da  85 1a 83                 MOV DPH,0x1a
CODE:53dd  a3                       INC DPTR
CODE:53de  a3                       INC DPTR
CODE:53df  e0                       MOVX A,@DPTR
CODE:53e0  fb                       MOV R3,A
CODE:53e1  7f c8                    MOV R7,#0xc8
CODE:53e3  12 7e ca                 LCALL 0x7eca
CODE:53e6  90 03 2d                 MOV DPTR,#0x32d
CODE:53e9  e0                       MOVX A,@DPTR
CODE:53ea  75 f0 18                 MOV B,#0x18
CODE:53ed  a4                       MUL AB
CODE:53ee  24 ef                    ADD A,#0xef
CODE:53f0  fd                       MOV R5,A
CODE:53f1  85 1b 82                 MOV DPL,0x1b
CODE:53f4  85 1a 83                 MOV DPH,0x1a
CODE:53f7  a3                       INC DPTR
CODE:53f8  a3                       INC DPTR
CODE:53f9  a3                       INC DPTR
CODE:53fa  e0                       MOVX A,@DPTR
CODE:53fb  fb                       MOV R3,A
CODE:53fc  7f c8                    MOV R7,#0xc8
CODE:53fe  12 7e ca                 LCALL 0x7eca
CODE:5401  90 03 2d                 MOV DPTR,#0x32d
CODE:5404  e0                       MOVX A,@DPTR
CODE:5405  75 f0 18                 MOV B,#0x18
CODE:5408  a4                       MUL AB
CODE:5409  24 f3                    ADD A,#0xf3
CODE:540b  fd                       MOV R5,A
CODE:540c  e5 1b                    MOV A,0x1b
CODE:540e  24 04                    ADD A,#0x4
CODE:5410  f5 82                    MOV DPL,A
CODE:5412  e4                       CLR A
CODE:5413  35 1a                    ADDC A,0x1a
CODE:5415  f5 83                    MOV DPH,A
CODE:5417  e0                       MOVX A,@DPTR
CODE:5418  fb                       MOV R3,A
CODE:5419  7f c8                    MOV R7,#0xc8
CODE:541b  12 7e ca                 LCALL 0x7eca
CODE:541e  90 03 2d                 MOV DPTR,#0x32d
CODE:5421  e0                       MOVX A,@DPTR
CODE:5422  75 f0 18                 MOV B,#0x18
CODE:5425  a4                       MUL AB
CODE:5426  24 f7                    ADD A,#0xf7
CODE:5428  fd                       MOV R5,A
CODE:5429  e5 1b                    MOV A,0x1b
CODE:542b  24 05                    ADD A,#0x5
CODE:542d  f5 82                    MOV DPL,A
CODE:542f  e4                       CLR A
CODE:5430  35 1a                    ADDC A,0x1a
CODE:5432  f5 83                    MOV DPH,A
CODE:5434  e0                       MOVX A,@DPTR
CODE:5435  fb                       MOV R3,A
CODE:5436  7f c8                    MOV R7,#0xc8
CODE:5438  12 7e ca                 LCALL 0x7eca
CODE:543b  90 03 2d                 MOV DPTR,#0x32d
CODE:543e  e0                       MOVX A,@DPTR
CODE:543f  75 f0 18                 MOV B,#0x18
CODE:5442  a4                       MUL AB
CODE:5443  24 fb                    ADD A,#0xfb
CODE:5445  fd                       MOV R5,A
CODE:5446  e5 1b                    MOV A,0x1b
CODE:5448  24 06                    ADD A,#0x6
CODE:544a  f5 82                    MOV DPL,A
CODE:544c  e4                       CLR A
CODE:544d  35 1a                    ADDC A,0x1a
CODE:544f  f5 83                    MOV DPH,A
CODE:5451  e0                       MOVX A,@DPTR
CODE:5452  fb                       MOV R3,A
CODE:5453  7f c8                    MOV R7,#0xc8
CODE:5455  12 7e ca                 LCALL 0x7eca
CODE:5458  90 03 2d                 MOV DPTR,#0x32d
CODE:545b  e0                       MOVX A,@DPTR
CODE:545c  75 f0 18                 MOV B,#0x18
CODE:545f  a4                       MUL AB
CODE:5460  14                       DEC A
CODE:5461  fd                       MOV R5,A
CODE:5462  e5 1b                    MOV A,0x1b
CODE:5464  24 07                    ADD A,#0x7
CODE:5466  f5 82                    MOV DPL,A
CODE:5468  e4                       CLR A
CODE:5469  35 1a                    ADDC A,0x1a
CODE:546b  f5 83                    MOV DPH,A
CODE:546d  e0                       MOVX A,@DPTR
CODE:546e  fb                       MOV R3,A
CODE:546f  7f c8                    MOV R7,#0xc8
CODE:5471  02 56 93                 LJMP 0x5693
LAB_CODE_5474:
CODE:5474  90 03 2d                 MOV DPTR,#0x32d   ; XREF: CODE:53cc 
CODE:5477  e0                       MOVX A,@DPTR
CODE:5478  64 0b                    XRL A,#0xb
CODE:547a  70 73                    JNZ 0x54ef
CODE:547c  85 1b 82                 MOV DPL,0x1b
CODE:547f  85 1a 83                 MOV DPH,0x1a
CODE:5482  a3                       INC DPTR
CODE:5483  a3                       INC DPTR
CODE:5484  e0                       MOVX A,@DPTR
CODE:5485  fb                       MOV R3,A
CODE:5486  7d f3                    MOV R5,#0xf3
CODE:5488  7f c8                    MOV R7,#0xc8
CODE:548a  12 7e ca                 LCALL 0x7eca
CODE:548d  85 1b 82                 MOV DPL,0x1b
CODE:5490  85 1a 83                 MOV DPH,0x1a
CODE:5493  a3                       INC DPTR
CODE:5494  a3                       INC DPTR
CODE:5495  a3                       INC DPTR
CODE:5496  e0                       MOVX A,@DPTR
CODE:5497  fb                       MOV R3,A
CODE:5498  7d f7                    MOV R5,#0xf7
CODE:549a  7f c8                    MOV R7,#0xc8
CODE:549c  12 7e ca                 LCALL 0x7eca
CODE:549f  e5 1b                    MOV A,0x1b
CODE:54a1  24 04                    ADD A,#0x4
CODE:54a3  f5 82                    MOV DPL,A
CODE:54a5  e4                       CLR A
CODE:54a6  35 1a                    ADDC A,0x1a
CODE:54a8  f5 83                    MOV DPH,A
CODE:54aa  e0                       MOVX A,@DPTR
CODE:54ab  fb                       MOV R3,A
CODE:54ac  7d fb                    MOV R5,#0xfb
CODE:54ae  7f c8                    MOV R7,#0xc8
CODE:54b0  12 7e ca                 LCALL 0x7eca
CODE:54b3  e5 1b                    MOV A,0x1b
CODE:54b5  24 05                    ADD A,#0x5
CODE:54b7  f5 82                    MOV DPL,A
CODE:54b9  e4                       CLR A
CODE:54ba  35 1a                    ADDC A,0x1a
CODE:54bc  f5 83                    MOV DPH,A
CODE:54be  e0                       MOVX A,@DPTR
CODE:54bf  fb                       MOV R3,A
CODE:54c0  7d ff                    MOV R5,#0xff
CODE:54c2  7f c8                    MOV R7,#0xc8
CODE:54c4  12 7e ca                 LCALL 0x7eca
CODE:54c7  e5 1b                    MOV A,0x1b
CODE:54c9  24 06                    ADD A,#0x6
CODE:54cb  f5 82                    MOV DPL,A
CODE:54cd  e4                       CLR A
CODE:54ce  35 1a                    ADDC A,0x1a
CODE:54d0  f5 83                    MOV DPH,A
CODE:54d2  e0                       MOVX A,@DPTR
CODE:54d3  fb                       MOV R3,A
CODE:54d4  7d 03                    MOV R5,#0x3
CODE:54d6  7f c9                    MOV R7,#0xc9
CODE:54d8  12 7e ca                 LCALL 0x7eca
CODE:54db  e5 1b                    MOV A,0x1b
CODE:54dd  24 07                    ADD A,#0x7
CODE:54df  f5 82                    MOV DPL,A
CODE:54e1  e4                       CLR A
CODE:54e2  35 1a                    ADDC A,0x1a
CODE:54e4  f5 83                    MOV DPH,A
CODE:54e6  e0                       MOVX A,@DPTR
CODE:54e7  fb                       MOV R3,A
CODE:54e8  7d 07                    MOV R5,#0x7
CODE:54ea  7f c9                    MOV R7,#0xc9
CODE:54ec  02 56 93                 LJMP 0x5693
LAB_CODE_54ef:
CODE:54ef  90 03 2d                 MOV DPTR,#0x32d   ; XREF: CODE:547a 
CODE:54f2  e0                       MOVX A,@DPTR
CODE:54f3  ff                       MOV R7,A
CODE:54f4  c3                       CLR CY
CODE:54f5  94 16                    SUBB A,#0x16
CODE:54f7  40 03                    JC 0x54fc
CODE:54f9  02 55 a1                 LJMP 0x55a1
LAB_CODE_54fc:
CODE:54fc  ef                       MOV A,R7   ; XREF: CODE:54f7 
CODE:54fd  75 f0 18                 MOV B,#0x18
CODE:5500  a4                       MUL AB
CODE:5501  24 eb                    ADD A,#0xeb
CODE:5503  fd                       MOV R5,A
CODE:5504  85 1b 82                 MOV DPL,0x1b
CODE:5507  85 1a 83                 MOV DPH,0x1a
CODE:550a  a3                       INC DPTR
CODE:550b  a3                       INC DPTR
CODE:550c  e0                       MOVX A,@DPTR
CODE:550d  fb                       MOV R3,A
CODE:550e  7f c9                    MOV R7,#0xc9
CODE:5510  12 7e ca                 LCALL 0x7eca
CODE:5513  90 03 2d                 MOV DPTR,#0x32d
CODE:5516  e0                       MOVX A,@DPTR
CODE:5517  75 f0 18                 MOV B,#0x18
CODE:551a  a4                       MUL AB
CODE:551b  24 ef                    ADD A,#0xef
CODE:551d  fd                       MOV R5,A
CODE:551e  85 1b 82                 MOV DPL,0x1b
CODE:5521  85 1a 83                 MOV DPH,0x1a
CODE:5524  a3                       INC DPTR
CODE:5525  a3                       INC DPTR
CODE:5526  a3                       INC DPTR
CODE:5527  e0                       MOVX A,@DPTR
CODE:5528  fb                       MOV R3,A
CODE:5529  7f c9                    MOV R7,#0xc9
CODE:552b  12 7e ca                 LCALL 0x7eca
CODE:552e  90 03 2d                 MOV DPTR,#0x32d
CODE:5531  e0                       MOVX A,@DPTR
CODE:5532  75 f0 18                 MOV B,#0x18
CODE:5535  a4                       MUL AB
CODE:5536  24 f3                    ADD A,#0xf3
CODE:5538  fd                       MOV R5,A
CODE:5539  e5 1b                    MOV A,0x1b
CODE:553b  24 04                    ADD A,#0x4
CODE:553d  f5 82                    MOV DPL,A
CODE:553f  e4                       CLR A
CODE:5540  35 1a                    ADDC A,0x1a
CODE:5542  f5 83                    MOV DPH,A
CODE:5544  e0                       MOVX A,@DPTR
CODE:5545  fb                       MOV R3,A
CODE:5546  7f c9                    MOV R7,#0xc9
CODE:5548  12 7e ca                 LCALL 0x7eca
CODE:554b  90 03 2d                 MOV DPTR,#0x32d
CODE:554e  e0                       MOVX A,@DPTR
CODE:554f  75 f0 18                 MOV B,#0x18
CODE:5552  a4                       MUL AB
CODE:5553  24 f7                    ADD A,#0xf7
CODE:5555  fd                       MOV R5,A
CODE:5556  e5 1b                    MOV A,0x1b
CODE:5558  24 05                    ADD A,#0x5
CODE:555a  f5 82                    MOV DPL,A
CODE:555c  e4                       CLR A
CODE:555d  35 1a                    ADDC A,0x1a
CODE:555f  f5 83                    MOV DPH,A
CODE:5561  e0                       MOVX A,@DPTR
CODE:5562  fb                       MOV R3,A
CODE:5563  7f c9                    MOV R7,#0xc9
CODE:5565  12 7e ca                 LCALL 0x7eca
CODE:5568  90 03 2d                 MOV DPTR,#0x32d
CODE:556b  e0                       MOVX A,@DPTR
CODE:556c  75 f0 18                 MOV B,#0x18
CODE:556f  a4                       MUL AB
CODE:5570  24 fb                    ADD A,#0xfb
CODE:5572  fd                       MOV R5,A
CODE:5573  e5 1b                    MOV A,0x1b
CODE:5575  24 06                    ADD A,#0x6
CODE:5577  f5 82                    MOV DPL,A
CODE:5579  e4                       CLR A
CODE:557a  35 1a                    ADDC A,0x1a
CODE:557c  f5 83                    MOV DPH,A
CODE:557e  e0                       MOVX A,@DPTR
CODE:557f  fb                       MOV R3,A
CODE:5580  7f c9                    MOV R7,#0xc9
CODE:5582  12 7e ca                 LCALL 0x7eca
CODE:5585  90 03 2d                 MOV DPTR,#0x32d
CODE:5588  e0                       MOVX A,@DPTR
CODE:5589  75 f0 18                 MOV B,#0x18
CODE:558c  a4                       MUL AB
CODE:558d  14                       DEC A
CODE:558e  fd                       MOV R5,A
CODE:558f  e5 1b                    MOV A,0x1b
CODE:5591  24 07                    ADD A,#0x7
CODE:5593  f5 82                    MOV DPL,A
CODE:5595  e4                       CLR A
CODE:5596  35 1a                    ADDC A,0x1a
CODE:5598  f5 83                    MOV DPH,A
CODE:559a  e0                       MOVX A,@DPTR
CODE:559b  fb                       MOV R3,A
CODE:559c  7f c9                    MOV R7,#0xc9
CODE:559e  02 56 93                 LJMP 0x5693
LAB_CODE_55a1:
CODE:55a1  90 03 2d                 MOV DPTR,#0x32d   ; XREF: CODE:54f9 
CODE:55a4  e0                       MOVX A,@DPTR
CODE:55a5  64 16                    XRL A,#0x16
CODE:55a7  70 72                    JNZ 0x561b
CODE:55a9  85 1b 82                 MOV DPL,0x1b
CODE:55ac  85 1a 83                 MOV DPH,0x1a
CODE:55af  a3                       INC DPTR
CODE:55b0  a3                       INC DPTR
CODE:55b1  e0                       MOVX A,@DPTR
CODE:55b2  fb                       MOV R3,A
CODE:55b3  7d fb                    MOV R5,#0xfb
CODE:55b5  7f c9                    MOV R7,#0xc9
CODE:55b7  12 7e ca                 LCALL 0x7eca
CODE:55ba  85 1b 82                 MOV DPL,0x1b
CODE:55bd  85 1a 83                 MOV DPH,0x1a
CODE:55c0  a3                       INC DPTR
CODE:55c1  a3                       INC DPTR
CODE:55c2  a3                       INC DPTR
CODE:55c3  e0                       MOVX A,@DPTR
CODE:55c4  fb                       MOV R3,A
CODE:55c5  7d ff                    MOV R5,#0xff
CODE:55c7  7f c9                    MOV R7,#0xc9
CODE:55c9  12 7e ca                 LCALL 0x7eca
CODE:55cc  e5 1b                    MOV A,0x1b
CODE:55ce  24 04                    ADD A,#0x4
CODE:55d0  f5 82                    MOV DPL,A
CODE:55d2  e4                       CLR A
CODE:55d3  35 1a                    ADDC A,0x1a
CODE:55d5  f5 83                    MOV DPH,A
CODE:55d7  e0                       MOVX A,@DPTR
CODE:55d8  fb                       MOV R3,A
CODE:55d9  7d 03                    MOV R5,#0x3
CODE:55db  7f ca                    MOV R7,#0xca
CODE:55dd  12 7e ca                 LCALL 0x7eca
CODE:55e0  e5 1b                    MOV A,0x1b
CODE:55e2  24 05                    ADD A,#0x5
CODE:55e4  f5 82                    MOV DPL,A
CODE:55e6  e4                       CLR A
CODE:55e7  35 1a                    ADDC A,0x1a
CODE:55e9  f5 83                    MOV DPH,A
CODE:55eb  e0                       MOVX A,@DPTR
CODE:55ec  fb                       MOV R3,A
CODE:55ed  7d 07                    MOV R5,#0x7
CODE:55ef  7f ca                    MOV R7,#0xca
CODE:55f1  12 7e ca                 LCALL 0x7eca
CODE:55f4  e5 1b                    MOV A,0x1b
CODE:55f6  24 06                    ADD A,#0x6
CODE:55f8  f5 82                    MOV DPL,A
CODE:55fa  e4                       CLR A
CODE:55fb  35 1a                    ADDC A,0x1a
CODE:55fd  f5 83                    MOV DPH,A
CODE:55ff  e0                       MOVX A,@DPTR
CODE:5600  fb                       MOV R3,A
CODE:5601  7d 0b                    MOV R5,#0xb
CODE:5603  7f ca                    MOV R7,#0xca
CODE:5605  12 7e ca                 LCALL 0x7eca
CODE:5608  e5 1b                    MOV A,0x1b
CODE:560a  24 07                    ADD A,#0x7
CODE:560c  f5 82                    MOV DPL,A
CODE:560e  e4                       CLR A
CODE:560f  35 1a                    ADDC A,0x1a
CODE:5611  f5 83                    MOV DPH,A
CODE:5613  e0                       MOVX A,@DPTR
CODE:5614  fb                       MOV R3,A
CODE:5615  7d 0f                    MOV R5,#0xf
CODE:5617  7f ca                    MOV R7,#0xca
CODE:5619  80 78                    SJMP 0x5693
LAB_CODE_561b:
CODE:561b  90 03 2d                 MOV DPTR,#0x32d   ; XREF: CODE:55a7 
CODE:561e  e0                       MOVX A,@DPTR
CODE:561f  64 17                    XRL A,#0x17
CODE:5621  70 73                    JNZ 0x5696
CODE:5623  85 1b 82                 MOV DPL,0x1b
CODE:5626  85 1a 83                 MOV DPH,0x1a
CODE:5629  a3                       INC DPTR
CODE:562a  a3                       INC DPTR
CODE:562b  e0                       MOVX A,@DPTR
CODE:562c  fb                       MOV R3,A
CODE:562d  7d 13                    MOV R5,#0x13
CODE:562f  7f ca                    MOV R7,#0xca
CODE:5631  12 7e ca                 LCALL 0x7eca
CODE:5634  85 1b 82                 MOV DPL,0x1b
CODE:5637  85 1a 83                 MOV DPH,0x1a
CODE:563a  a3                       INC DPTR
CODE:563b  a3                       INC DPTR
CODE:563c  a3                       INC DPTR
CODE:563d  e0                       MOVX A,@DPTR
CODE:563e  fb                       MOV R3,A
CODE:563f  7d 17                    MOV R5,#0x17
CODE:5641  7f ca                    MOV R7,#0xca
CODE:5643  12 7e ca                 LCALL 0x7eca
CODE:5646  e5 1b                    MOV A,0x1b
CODE:5648  24 04                    ADD A,#0x4
CODE:564a  f5 82                    MOV DPL,A
CODE:564c  e4                       CLR A
CODE:564d  35 1a                    ADDC A,0x1a
CODE:564f  f5 83                    MOV DPH,A
CODE:5651  e0                       MOVX A,@DPTR
CODE:5652  fb                       MOV R3,A
CODE:5653  7d 1b                    MOV R5,#0x1b
CODE:5655  7f ca                    MOV R7,#0xca
CODE:5657  12 7e ca                 LCALL 0x7eca
CODE:565a  e5 1b                    MOV A,0x1b
CODE:565c  24 05                    ADD A,#0x5
CODE:565e  f5 82                    MOV DPL,A
CODE:5660  e4                       CLR A
CODE:5661  35 1a                    ADDC A,0x1a
CODE:5663  f5 83                    MOV DPH,A
CODE:5665  e0                       MOVX A,@DPTR
CODE:5666  fb                       MOV R3,A
CODE:5667  7d 1f                    MOV R5,#0x1f
CODE:5669  7f ca                    MOV R7,#0xca
CODE:566b  12 7e ca                 LCALL 0x7eca
CODE:566e  e5 1b                    MOV A,0x1b
CODE:5670  24 06                    ADD A,#0x6
CODE:5672  f5 82                    MOV DPL,A
CODE:5674  e4                       CLR A
CODE:5675  35 1a                    ADDC A,0x1a
CODE:5677  f5 83                    MOV DPH,A
CODE:5679  e0                       MOVX A,@DPTR
CODE:567a  fb                       MOV R3,A
CODE:567b  7d 23                    MOV R5,#0x23
CODE:567d  7f ca                    MOV R7,#0xca
CODE:567f  12 7e ca                 LCALL 0x7eca
CODE:5682  e5 1b                    MOV A,0x1b
CODE:5684  24 07                    ADD A,#0x7
CODE:5686  f5 82                    MOV DPL,A
CODE:5688  e4                       CLR A
CODE:5689  35 1a                    ADDC A,0x1a
CODE:568b  f5 83                    MOV DPH,A
CODE:568d  e0                       MOVX A,@DPTR
CODE:568e  fb                       MOV R3,A
CODE:568f  7d 27                    MOV R5,#0x27
CODE:5691  7f ca                    MOV R7,#0xca
LAB_CODE_5693:
CODE:5693  12 7e ca                 LCALL 0x7eca   ; XREF: CODE:5471 CODE:54ec CODE:559e CODE:5619 
LAB_CODE_5696:
CODE:5696  02 58 36                 LJMP 0x5836   ; XREF: CODE:53bf CODE:5621 
LAB_CODE_5699:
CODE:5699  90 03 3b                 MOV DPTR,#0x33b   ; XREF: CODE:53a2 
CODE:569c  e0                       MOVX A,@DPTR
CODE:569d  64 0c                    XRL A,#0xc
CODE:569f  60 03                    JZ 0x56a4
CODE:56a1  02 58 31                 LJMP 0x5831
LAB_CODE_56a4:
CODE:56a4  f0                       MOVX @DPTR,A   ; XREF: CODE:569f 
CODE:56a5  75 1a 11                 MOV 0x1a,#0x11
CODE:56a8  f5 1b                    MOV 0x1b,A
CODE:56aa  85 1b 82                 MOV DPL,0x1b
CODE:56ad  85 1a 83                 MOV DPH,0x1a
CODE:56b0  a3                       INC DPTR
CODE:56b1  e0                       MOVX A,@DPTR
CODE:56b2  90 03 2d                 MOV DPTR,#0x32d
CODE:56b5  f0                       MOVX @DPTR,A
CODE:56b6  e4                       CLR A
CODE:56b7  f5 14                    MOV 0x14,A
CODE:56b9  f5 15                    MOV 0x15,A
CODE:56bb  90 03 31                 MOV DPTR,#0x331
CODE:56be  e0                       MOVX A,@DPTR
CODE:56bf  64 01                    XRL A,#0x1
CODE:56c1  60 03                    JZ 0x56c6
CODE:56c3  02 58 2f                 LJMP 0x582f
LAB_CODE_56c6:
CODE:56c6  90 03 3c                 MOV DPTR,#0x33c   ; XREF: CODE:56c1 
CODE:56c9  e0                       MOVX A,@DPTR
CODE:56ca  ff                       MOV R7,A
CODE:56cb  7e 00                    MOV R6,#0x0
CODE:56cd  7c 00                    MOV R4,#0x0
CODE:56cf  7d f2                    MOV R5,#0xf2
CODE:56d1  12 7a 30                 LCALL 0x7a30
CODE:56d4  ac 06                    MOV R4,0x06
CODE:56d6  ad 07                    MOV R5,0x07
CODE:56d8  90 03 2d                 MOV DPTR,#0x32d
CODE:56db  e0                       MOVX A,@DPTR
CODE:56dc  75 f0 06                 MOV B,#0x6
CODE:56df  a4                       MUL AB
CODE:56e0  2d                       ADD A,R5
CODE:56e1  ff                       MOV R7,A
CODE:56e2  ec                       MOV A,R4
CODE:56e3  35 f0                    ADDC A,B
CODE:56e5  cf                       XCH A,R7
CODE:56e6  24 08                    ADD A,#0x8
CODE:56e8  cf                       XCH A,R7
CODE:56e9  34 ff                    ADDC A,#0xff
CODE:56eb  fe                       MOV R6,A
CODE:56ec  85 1b 82                 MOV DPL,0x1b
CODE:56ef  85 1a 83                 MOV DPH,0x1a
CODE:56f2  a3                       INC DPTR
CODE:56f3  a3                       INC DPTR
CODE:56f4  e0                       MOVX A,@DPTR
CODE:56f5  fd                       MOV R5,A
CODE:56f6  12 80 c3                 LCALL 0x80c3
CODE:56f9  7f d0                    MOV R7,#0xd0
CODE:56fb  7e 07                    MOV R6,#0x7
CODE:56fd  12 7e 37                 LCALL 0x7e37
CODE:5700  90 03 3c                 MOV DPTR,#0x33c
CODE:5703  e0                       MOVX A,@DPTR
CODE:5704  ff                       MOV R7,A
CODE:5705  7e 00                    MOV R6,#0x0
CODE:5707  7c 00                    MOV R4,#0x0
CODE:5709  7d f2                    MOV R5,#0xf2
CODE:570b  12 7a 30                 LCALL 0x7a30
CODE:570e  ac 06                    MOV R4,0x06
CODE:5710  ad 07                    MOV R5,0x07
CODE:5712  90 03 2d                 MOV DPTR,#0x32d
CODE:5715  e0                       MOVX A,@DPTR
CODE:5716  75 f0 06                 MOV B,#0x6
CODE:5719  a4                       MUL AB
CODE:571a  2d                       ADD A,R5
CODE:571b  ff                       MOV R7,A
CODE:571c  ec                       MOV A,R4
CODE:571d  35 f0                    ADDC A,B
CODE:571f  cf                       XCH A,R7
CODE:5720  24 09                    ADD A,#0x9
CODE:5722  cf                       XCH A,R7
CODE:5723  34 ff                    ADDC A,#0xff
CODE:5725  fe                       MOV R6,A
CODE:5726  85 1b 82                 MOV DPL,0x1b
CODE:5729  85 1a 83                 MOV DPH,0x1a
CODE:572c  a3                       INC DPTR
CODE:572d  a3                       INC DPTR
CODE:572e  a3                       INC DPTR
CODE:572f  e0                       MOVX A,@DPTR
CODE:5730  fd                       MOV R5,A
CODE:5731  12 80 c3                 LCALL 0x80c3
CODE:5734  7f d0                    MOV R7,#0xd0
CODE:5736  7e 07                    MOV R6,#0x7
CODE:5738  12 7e 37                 LCALL 0x7e37
CODE:573b  90 03 3c                 MOV DPTR,#0x33c
CODE:573e  e0                       MOVX A,@DPTR
CODE:573f  ff                       MOV R7,A
CODE:5740  7e 00                    MOV R6,#0x0
CODE:5742  7c 00                    MOV R4,#0x0
CODE:5744  7d f2                    MOV R5,#0xf2
CODE:5746  12 7a 30                 LCALL 0x7a30
CODE:5749  ac 06                    MOV R4,0x06
CODE:574b  ad 07                    MOV R5,0x07
CODE:574d  90 03 2d                 MOV DPTR,#0x32d
CODE:5750  e0                       MOVX A,@DPTR
CODE:5751  75 f0 06                 MOV B,#0x6
CODE:5754  a4                       MUL AB
CODE:5755  2d                       ADD A,R5
CODE:5756  ff                       MOV R7,A
CODE:5757  ec                       MOV A,R4
CODE:5758  35 f0                    ADDC A,B
CODE:575a  cf                       XCH A,R7
CODE:575b  24 0a                    ADD A,#0xa
CODE:575d  cf                       XCH A,R7
CODE:575e  34 ff                    ADDC A,#0xff
CODE:5760  fe                       MOV R6,A
CODE:5761  e5 1b                    MOV A,0x1b
CODE:5763  24 04                    ADD A,#0x4
CODE:5765  f5 82                    MOV DPL,A
CODE:5767  e4                       CLR A
CODE:5768  35 1a                    ADDC A,0x1a
CODE:576a  f5 83                    MOV DPH,A
CODE:576c  e0                       MOVX A,@DPTR
CODE:576d  fd                       MOV R5,A
CODE:576e  12 80 c3                 LCALL 0x80c3
CODE:5771  7f d0                    MOV R7,#0xd0
CODE:5773  7e 07                    MOV R6,#0x7
CODE:5775  12 7e 37                 LCALL 0x7e37
CODE:5778  90 03 3c                 MOV DPTR,#0x33c
CODE:577b  e0                       MOVX A,@DPTR
CODE:577c  ff                       MOV R7,A
CODE:577d  7e 00                    MOV R6,#0x0
CODE:577f  7c 00                    MOV R4,#0x0
CODE:5781  7d f2                    MOV R5,#0xf2
CODE:5783  12 7a 30                 LCALL 0x7a30
CODE:5786  ac 06                    MOV R4,0x06
CODE:5788  ad 07                    MOV R5,0x07
CODE:578a  90 03 2d                 MOV DPTR,#0x32d
CODE:578d  e0                       MOVX A,@DPTR
CODE:578e  75 f0 06                 MOV B,#0x6
CODE:5791  a4                       MUL AB
CODE:5792  2d                       ADD A,R5
CODE:5793  ff                       MOV R7,A
CODE:5794  ec                       MOV A,R4
CODE:5795  35 f0                    ADDC A,B
CODE:5797  cf                       XCH A,R7
CODE:5798  24 0b                    ADD A,#0xb
CODE:579a  cf                       XCH A,R7
CODE:579b  34 ff                    ADDC A,#0xff
CODE:579d  fe                       MOV R6,A
CODE:579e  e5 1b                    MOV A,0x1b
CODE:57a0  24 05                    ADD A,#0x5
CODE:57a2  f5 82                    MOV DPL,A
CODE:57a4  e4                       CLR A
CODE:57a5  35 1a                    ADDC A,0x1a
CODE:57a7  f5 83                    MOV DPH,A
CODE:57a9  e0                       MOVX A,@DPTR
CODE:57aa  fd                       MOV R5,A
CODE:57ab  12 80 c3                 LCALL 0x80c3
CODE:57ae  7f d0                    MOV R7,#0xd0
CODE:57b0  7e 07                    MOV R6,#0x7
CODE:57b2  12 7e 37                 LCALL 0x7e37
CODE:57b5  90 03 3c                 MOV DPTR,#0x33c
CODE:57b8  e0                       MOVX A,@DPTR
CODE:57b9  ff                       MOV R7,A
CODE:57ba  7e 00                    MOV R6,#0x0
CODE:57bc  7c 00                    MOV R4,#0x0
CODE:57be  7d f2                    MOV R5,#0xf2
CODE:57c0  12 7a 30                 LCALL 0x7a30
CODE:57c3  ac 06                    MOV R4,0x06
CODE:57c5  ad 07                    MOV R5,0x07
CODE:57c7  90 03 2d                 MOV DPTR,#0x32d
CODE:57ca  e0                       MOVX A,@DPTR
CODE:57cb  75 f0 06                 MOV B,#0x6
CODE:57ce  a4                       MUL AB
CODE:57cf  2d                       ADD A,R5
CODE:57d0  ff                       MOV R7,A
CODE:57d1  ec                       MOV A,R4
CODE:57d2  35 f0                    ADDC A,B
CODE:57d4  cf                       XCH A,R7
CODE:57d5  24 0c                    ADD A,#0xc
CODE:57d7  cf                       XCH A,R7
CODE:57d8  34 ff                    ADDC A,#0xff
CODE:57da  fe                       MOV R6,A
CODE:57db  e5 1b                    MOV A,0x1b
CODE:57dd  24 06                    ADD A,#0x6
CODE:57df  f5 82                    MOV DPL,A
CODE:57e1  e4                       CLR A
CODE:57e2  35 1a                    ADDC A,0x1a
CODE:57e4  f5 83                    MOV DPH,A
CODE:57e6  e0                       MOVX A,@DPTR
CODE:57e7  fd                       MOV R5,A
CODE:57e8  12 80 c3                 LCALL 0x80c3
CODE:57eb  7f d0                    MOV R7,#0xd0
CODE:57ed  7e 07                    MOV R6,#0x7
CODE:57ef  12 7e 37                 LCALL 0x7e37
CODE:57f2  90 03 3c                 MOV DPTR,#0x33c
CODE:57f5  e0                       MOVX A,@DPTR
CODE:57f6  ff                       MOV R7,A
CODE:57f7  7e 00                    MOV R6,#0x0
CODE:57f9  7c 00                    MOV R4,#0x0
CODE:57fb  7d f2                    MOV R5,#0xf2
CODE:57fd  12 7a 30                 LCALL 0x7a30
CODE:5800  ac 06                    MOV R4,0x06
CODE:5802  ad 07                    MOV R5,0x07
CODE:5804  90 03 2d                 MOV DPTR,#0x32d
CODE:5807  e0                       MOVX A,@DPTR
CODE:5808  75 f0 06                 MOV B,#0x6
CODE:580b  a4                       MUL AB
CODE:580c  2d                       ADD A,R5
CODE:580d  ff                       MOV R7,A
CODE:580e  ec                       MOV A,R4
CODE:580f  35 f0                    ADDC A,B
CODE:5811  cf                       XCH A,R7
CODE:5812  24 0d                    ADD A,#0xd
CODE:5814  cf                       XCH A,R7
CODE:5815  34 ff                    ADDC A,#0xff
CODE:5817  fe                       MOV R6,A
CODE:5818  e5 1b                    MOV A,0x1b
CODE:581a  24 07                    ADD A,#0x7
CODE:581c  f5 82                    MOV DPL,A
CODE:581e  e4                       CLR A
CODE:581f  35 1a                    ADDC A,0x1a
CODE:5821  f5 83                    MOV DPH,A
CODE:5823  e0                       MOVX A,@DPTR
CODE:5824  fd                       MOV R5,A
CODE:5825  12 80 c3                 LCALL 0x80c3
CODE:5828  7f d0                    MOV R7,#0xd0
CODE:582a  7e 07                    MOV R6,#0x7
CODE:582c  12 7e 37                 LCALL 0x7e37
LAB_CODE_582f:
CODE:582f  80 05                    SJMP 0x5836   ; XREF: CODE:56c3 
LAB_CODE_5831:
CODE:5831  e4                       CLR A   ; XREF: CODE:56a1 
CODE:5832  90 03 3b                 MOV DPTR,#0x33b
CODE:5835  f0                       MOVX @DPTR,A
LAB_CODE_5836:
CODE:5836  53 9b f0                 ANL 0x9b,#0xf0   ; XREF: CODE:4e19 CODE:4e25 CODE:5397 CODE:5696 CODE:582f 
CODE:5839  43 97 04                 ORL 0x97,#0x4
LAB_CODE_583c:
CODE:583c  22                       RET   ; XREF: CODE:4e41 CODE:4e4a 

; ===== FUNCTION FUN_CODE_583d @ CODE:583d =====
CODE:583d  e4                       CLR A   ; XREF: CODE:8190 
CODE:583e  f5 b1                    MOV 0xb1,A
CODE:5840  c2 af                    CLR 0xaf
CODE:5842  d2 b7                    SETB 0xb7
CODE:5844  12 81 06                 LCALL 0x8106
CODE:5847  12 82 71                 LCALL 0x8271
CODE:584a  12 7b f7                 LCALL 0x7bf7
CODE:584d  d2 84                    SETB 0x84
CODE:584f  12 00 1e                 LCALL 0x001e
CODE:5852  d2 27                    SETB 0x27
CODE:5854  d2 83                    SETB 0x83
CODE:5856  c2 18                    CLR 0x18
CODE:5858  c2 14                    CLR 0x14
CODE:585a  c2 28                    CLR 0x28
CODE:585c  12 83 0c                 LCALL 0x830c
CODE:585f  00                       NOP
CODE:5860  d2 af                    SETB 0xaf
LAB_CODE_5862:
CODE:5862  e4                       CLR A   ; XREF: CODE:5d95 CODE:5d9b 
CODE:5863  f5 b1                    MOV 0xb1,A
CODE:5865  05 1e                    INC 0x1e
CODE:5867  e5 1e                    MOV A,0x1e
CODE:5869  d3                       SETB CY
CODE:586a  94 89                    SUBB A,#0x89
CODE:586c  40 03                    JC 0x5871
CODE:586e  e4                       CLR A
CODE:586f  f5 1e                    MOV 0x1e,A
LAB_CODE_5871:
CODE:5871  78 5c                    MOV R0,#0x5c   ; XREF: CODE:586c 
CODE:5873  06                       INC @R0
CODE:5874  e6                       MOV A,@R0
CODE:5875  d3                       SETB CY
CODE:5876  94 fe                    SUBB A,#0xfe
CODE:5878  40 02                    JC 0x587c
CODE:587a  e4                       CLR A
CODE:587b  f6                       MOV @R0,A
LAB_CODE_587c:
CODE:587c  30 1d 06                 JNB 0x1d,0x5885   ; XREF: CODE:5878 
CODE:587f  12 72 90                 LCALL 0x7290
CODE:5882  12 75 e2                 LCALL 0x75e2
LAB_CODE_5885:
CODE:5885  20 1b 03                 JB 0x1b,0x588b   ; XREF: CODE:587c 
CODE:5888  02 5a f0                 LJMP 0x5af0
LAB_CODE_588b:
CODE:588b  c2 1b                    CLR 0x1b   ; XREF: CODE:5885 
CODE:588d  53 a8 fe                 ANL 0xa8,#0xfe
CODE:5890  12 79 d2                 LCALL 0x79d2
CODE:5893  d2 27                    SETB 0x27
CODE:5895  c2 14                    CLR 0x14
CODE:5897  c2 28                    CLR 0x28
CODE:5899  e4                       CLR A
CODE:589a  78 7b                    MOV R0,#0x7b
CODE:589c  f6                       MOV @R0,A
CODE:589d  78 76                    MOV R0,#0x76
CODE:589f  f6                       MOV @R0,A
CODE:58a0  f5 26                    MOV 0x26,A
CODE:58a2  f5 27                    MOV 0x27,A
LAB_CODE_58a4:
CODE:58a4  e4                       CLR A   ; XREF: CODE:58cc 
CODE:58a5  f5 b1                    MOV 0xb1,A
CODE:58a7  e5 27                    MOV A,0x27
CODE:58a9  ae 26                    MOV R6,0x26
CODE:58ab  78 07                    MOV R0,#0x7
LAB_CODE_58ad:
CODE:58ad  c3                       CLR CY   ; XREF: CODE:58b2 
CODE:58ae  33                       RLC A
CODE:58af  ce                       XCH A,R6
CODE:58b0  33                       RLC A
CODE:58b1  ce                       XCH A,R6
CODE:58b2  d8 f9                    DJNZ R0,0x58ad
CODE:58b4  ff                       MOV R7,A
CODE:58b5  12 7e fd                 LCALL 0x7efd
CODE:58b8  7f d0                    MOV R7,#0xd0
CODE:58ba  7e 07                    MOV R6,#0x7
CODE:58bc  12 7e 37                 LCALL 0x7e37
CODE:58bf  05 27                    INC 0x27
CODE:58c1  e5 27                    MOV A,0x27
CODE:58c3  70 02                    JNZ 0x58c7
CODE:58c5  05 26                    INC 0x26
LAB_CODE_58c7:
CODE:58c7  c3                       CLR CY   ; XREF: CODE:58c3 
CODE:58c8  e5 26                    MOV A,0x26
CODE:58ca  94 02                    SUBB A,#0x2
CODE:58cc  40 d6                    JC 0x58a4
CODE:58ce  7f ac                    MOV R7,#0xac
CODE:58d0  12 7f 93                 LCALL 0x7f93
CODE:58d3  7f b0                    MOV R7,#0xb0
CODE:58d5  12 7f 93                 LCALL 0x7f93
CODE:58d8  7f ba                    MOV R7,#0xba
CODE:58da  12 7f 93                 LCALL 0x7f93
CODE:58dd  7f bc                    MOV R7,#0xbc
CODE:58df  12 7f 93                 LCALL 0x7f93
CODE:58e2  7f be                    MOV R7,#0xbe
CODE:58e4  12 7f 93                 LCALL 0x7f93
CODE:58e7  7f c0                    MOV R7,#0xc0
CODE:58e9  12 7f 93                 LCALL 0x7f93
CODE:58ec  7f c8                    MOV R7,#0xc8
CODE:58ee  12 7f 93                 LCALL 0x7f93
CODE:58f1  7f ca                    MOV R7,#0xca
CODE:58f3  12 7f 93                 LCALL 0x7f93
CODE:58f6  e4                       CLR A
CODE:58f7  f5 b1                    MOV 0xb1,A
CODE:58f9  fb                       MOV R3,A
CODE:58fa  fd                       MOV R5,A
CODE:58fb  7f b0                    MOV R7,#0xb0
CODE:58fd  12 7e ca                 LCALL 0x7eca
CODE:5900  7b ff                    MOV R3,#0xff
CODE:5902  7d 01                    MOV R5,#0x1
CODE:5904  7f b0                    MOV R7,#0xb0
CODE:5906  12 7e ca                 LCALL 0x7eca
CODE:5909  7b ff                    MOV R3,#0xff
CODE:590b  7d 02                    MOV R5,#0x2
CODE:590d  7f b0                    MOV R7,#0xb0
CODE:590f  12 7e ca                 LCALL 0x7eca
CODE:5912  e4                       CLR A
CODE:5913  f5 28                    MOV 0x28,A
CODE:5915  f5 29                    MOV 0x29,A
LAB_CODE_5917:
CODE:5917  e4                       CLR A   ; XREF: CODE:593b 
CODE:5918  f5 b1                    MOV 0xb1,A
CODE:591a  ad 29                    MOV R5,0x29
CODE:591c  25 29                    ADD A,0x29
CODE:591e  f5 82                    MOV DPL,A
CODE:5920  74 b2                    MOV A,#0xb2
CODE:5922  35 28                    ADDC A,0x28
CODE:5924  f5 83                    MOV DPH,A
CODE:5926  e4                       CLR A
CODE:5927  93                       MOVC A,@A+DPTR
CODE:5928  fb                       MOV R3,A
CODE:5929  7f ba                    MOV R7,#0xba
CODE:592b  12 7e ca                 LCALL 0x7eca
CODE:592e  05 29                    INC 0x29
CODE:5930  e5 29                    MOV A,0x29
CODE:5932  70 02                    JNZ 0x5936
CODE:5934  05 28                    INC 0x28
LAB_CODE_5936:
CODE:5936  c3                       CLR CY   ; XREF: CODE:5932 
CODE:5937  e5 28                    MOV A,0x28
CODE:5939  94 01                    SUBB A,#0x1
CODE:593b  40 da                    JC 0x5917
CODE:593d  e4                       CLR A
CODE:593e  f5 28                    MOV 0x28,A
CODE:5940  f5 29                    MOV 0x29,A
LAB_CODE_5942:
CODE:5942  e4                       CLR A   ; XREF: CODE:5966 
CODE:5943  f5 b1                    MOV 0xb1,A
CODE:5945  ad 29                    MOV R5,0x29
CODE:5947  25 29                    ADD A,0x29
CODE:5949  f5 82                    MOV DPL,A
CODE:594b  74 b3                    MOV A,#0xb3
CODE:594d  35 28                    ADDC A,0x28
CODE:594f  f5 83                    MOV DPH,A
CODE:5951  e4                       CLR A
CODE:5952  93                       MOVC A,@A+DPTR
CODE:5953  fb                       MOV R3,A
CODE:5954  7f bb                    MOV R7,#0xbb
CODE:5956  12 7e ca                 LCALL 0x7eca
CODE:5959  05 29                    INC 0x29
CODE:595b  e5 29                    MOV A,0x29
CODE:595d  70 02                    JNZ 0x5961
CODE:595f  05 28                    INC 0x28
LAB_CODE_5961:
CODE:5961  c3                       CLR CY   ; XREF: CODE:595d 
CODE:5962  e5 28                    MOV A,0x28
CODE:5964  94 01                    SUBB A,#0x1
CODE:5966  40 da                    JC 0x5942
CODE:5968  e4                       CLR A
CODE:5969  f5 28                    MOV 0x28,A
CODE:596b  f5 29                    MOV 0x29,A
LAB_CODE_596d:
CODE:596d  e4                       CLR A   ; XREF: CODE:5991 
CODE:596e  f5 b1                    MOV 0xb1,A
CODE:5970  ad 29                    MOV R5,0x29
CODE:5972  25 29                    ADD A,0x29
CODE:5974  f5 82                    MOV DPL,A
CODE:5976  74 b4                    MOV A,#0xb4
CODE:5978  35 28                    ADDC A,0x28
CODE:597a  f5 83                    MOV DPH,A
CODE:597c  e4                       CLR A
CODE:597d  93                       MOVC A,@A+DPTR
CODE:597e  fb                       MOV R3,A
CODE:597f  7f bc                    MOV R7,#0xbc
CODE:5981  12 7e ca                 LCALL 0x7eca
CODE:5984  05 29                    INC 0x29
CODE:5986  e5 29                    MOV A,0x29
CODE:5988  70 02                    JNZ 0x598c
CODE:598a  05 28                    INC 0x28
LAB_CODE_598c:
CODE:598c  c3                       CLR CY   ; XREF: CODE:5988 
CODE:598d  e5 28                    MOV A,0x28
CODE:598f  94 01                    SUBB A,#0x1
CODE:5991  40 da                    JC 0x596d
CODE:5993  e4                       CLR A
CODE:5994  f5 28                    MOV 0x28,A
CODE:5996  f5 29                    MOV 0x29,A
LAB_CODE_5998:
CODE:5998  e4                       CLR A   ; XREF: CODE:59bc 
CODE:5999  f5 b1                    MOV 0xb1,A
CODE:599b  ad 29                    MOV R5,0x29
CODE:599d  25 29                    ADD A,0x29
CODE:599f  f5 82                    MOV DPL,A
CODE:59a1  74 b5                    MOV A,#0xb5
CODE:59a3  35 28                    ADDC A,0x28
CODE:59a5  f5 83                    MOV DPH,A
CODE:59a7  e4                       CLR A
CODE:59a8  93                       MOVC A,@A+DPTR
CODE:59a9  fb                       MOV R3,A
CODE:59aa  7f bd                    MOV R7,#0xbd
CODE:59ac  12 7e ca                 LCALL 0x7eca
CODE:59af  05 29                    INC 0x29
CODE:59b1  e5 29                    MOV A,0x29
CODE:59b3  70 02                    JNZ 0x59b7
CODE:59b5  05 28                    INC 0x28
LAB_CODE_59b7:
CODE:59b7  c3                       CLR CY   ; XREF: CODE:59b3 
CODE:59b8  e5 28                    MOV A,0x28
CODE:59ba  94 01                    SUBB A,#0x1
CODE:59bc  40 da                    JC 0x5998
CODE:59be  e4                       CLR A
CODE:59bf  f5 28                    MOV 0x28,A
CODE:59c1  f5 29                    MOV 0x29,A
LAB_CODE_59c3:
CODE:59c3  e4                       CLR A   ; XREF: CODE:59e7 
CODE:59c4  f5 b1                    MOV 0xb1,A
CODE:59c6  ad 29                    MOV R5,0x29
CODE:59c8  25 29                    ADD A,0x29
CODE:59ca  f5 82                    MOV DPL,A
CODE:59cc  74 b6                    MOV A,#0xb6
CODE:59ce  35 28                    ADDC A,0x28
CODE:59d0  f5 83                    MOV DPH,A
CODE:59d2  e4                       CLR A
CODE:59d3  93                       MOVC A,@A+DPTR
CODE:59d4  fb                       MOV R3,A
CODE:59d5  7f be                    MOV R7,#0xbe
CODE:59d7  12 7e ca                 LCALL 0x7eca
CODE:59da  05 29                    INC 0x29
CODE:59dc  e5 29                    MOV A,0x29
CODE:59de  70 02                    JNZ 0x59e2
CODE:59e0  05 28                    INC 0x28
LAB_CODE_59e2:
CODE:59e2  c3                       CLR CY   ; XREF: CODE:59de 
CODE:59e3  e5 28                    MOV A,0x28
CODE:59e5  94 01                    SUBB A,#0x1
CODE:59e7  40 da                    JC 0x59c3
CODE:59e9  e4                       CLR A
CODE:59ea  f5 28                    MOV 0x28,A
CODE:59ec  f5 29                    MOV 0x29,A
LAB_CODE_59ee:
CODE:59ee  e4                       CLR A   ; XREF: CODE:5a12 
CODE:59ef  f5 b1                    MOV 0xb1,A
CODE:59f1  ad 29                    MOV R5,0x29
CODE:59f3  25 29                    ADD A,0x29
CODE:59f5  f5 82                    MOV DPL,A
CODE:59f7  74 b7                    MOV A,#0xb7
CODE:59f9  35 28                    ADDC A,0x28
CODE:59fb  f5 83                    MOV DPH,A
CODE:59fd  e4                       CLR A
CODE:59fe  93                       MOVC A,@A+DPTR
CODE:59ff  fb                       MOV R3,A
CODE:5a00  7f bf                    MOV R7,#0xbf
CODE:5a02  12 7e ca                 LCALL 0x7eca
CODE:5a05  05 29                    INC 0x29
CODE:5a07  e5 29                    MOV A,0x29
CODE:5a09  70 02                    JNZ 0x5a0d
CODE:5a0b  05 28                    INC 0x28
LAB_CODE_5a0d:
CODE:5a0d  c3                       CLR CY   ; XREF: CODE:5a09 
CODE:5a0e  e5 28                    MOV A,0x28
CODE:5a10  94 01                    SUBB A,#0x1
CODE:5a12  40 da                    JC 0x59ee
CODE:5a14  e4                       CLR A
CODE:5a15  f5 28                    MOV 0x28,A
CODE:5a17  f5 29                    MOV 0x29,A
LAB_CODE_5a19:
CODE:5a19  e4                       CLR A   ; XREF: CODE:5a3d 
CODE:5a1a  f5 b1                    MOV 0xb1,A
CODE:5a1c  ad 29                    MOV R5,0x29
CODE:5a1e  25 29                    ADD A,0x29
CODE:5a20  f5 82                    MOV DPL,A
CODE:5a22  74 b8                    MOV A,#0xb8
CODE:5a24  35 28                    ADDC A,0x28
CODE:5a26  f5 83                    MOV DPH,A
CODE:5a28  e4                       CLR A
CODE:5a29  93                       MOVC A,@A+DPTR
CODE:5a2a  fb                       MOV R3,A
CODE:5a2b  7f c0                    MOV R7,#0xc0
CODE:5a2d  12 7e ca                 LCALL 0x7eca
CODE:5a30  05 29                    INC 0x29
CODE:5a32  e5 29                    MOV A,0x29
CODE:5a34  70 02                    JNZ 0x5a38
CODE:5a36  05 28                    INC 0x28
LAB_CODE_5a38:
CODE:5a38  c3                       CLR CY   ; XREF: CODE:5a34 
CODE:5a39  e5 28                    MOV A,0x28
CODE:5a3b  94 01                    SUBB A,#0x1
CODE:5a3d  40 da                    JC 0x5a19
CODE:5a3f  e4                       CLR A
CODE:5a40  f5 28                    MOV 0x28,A
CODE:5a42  f5 29                    MOV 0x29,A
LAB_CODE_5a44:
CODE:5a44  e4                       CLR A   ; XREF: CODE:5a68 
CODE:5a45  f5 b1                    MOV 0xb1,A
CODE:5a47  ad 29                    MOV R5,0x29
CODE:5a49  25 29                    ADD A,0x29
CODE:5a4b  f5 82                    MOV DPL,A
CODE:5a4d  74 b9                    MOV A,#0xb9
CODE:5a4f  35 28                    ADDC A,0x28
CODE:5a51  f5 83                    MOV DPH,A
CODE:5a53  e4                       CLR A
CODE:5a54  93                       MOVC A,@A+DPTR
CODE:5a55  fb                       MOV R3,A
CODE:5a56  7f c1                    MOV R7,#0xc1
CODE:5a58  12 7e ca                 LCALL 0x7eca
CODE:5a5b  05 29                    INC 0x29
CODE:5a5d  e5 29                    MOV A,0x29
CODE:5a5f  70 02                    JNZ 0x5a63
CODE:5a61  05 28                    INC 0x28
LAB_CODE_5a63:
CODE:5a63  c3                       CLR CY   ; XREF: CODE:5a5f 
CODE:5a64  e5 28                    MOV A,0x28
CODE:5a66  94 01                    SUBB A,#0x1
CODE:5a68  40 da                    JC 0x5a44
CODE:5a6a  e4                       CLR A
CODE:5a6b  f5 28                    MOV 0x28,A
CODE:5a6d  f5 29                    MOV 0x29,A
LAB_CODE_5a6f:
CODE:5a6f  e4                       CLR A   ; XREF: CODE:5a93 
CODE:5a70  f5 b1                    MOV 0xb1,A
CODE:5a72  ad 29                    MOV R5,0x29
CODE:5a74  25 29                    ADD A,0x29
CODE:5a76  f5 82                    MOV DPL,A
CODE:5a78  74 dc                    MOV A,#0xdc
CODE:5a7a  35 28                    ADDC A,0x28
CODE:5a7c  f5 83                    MOV DPH,A
CODE:5a7e  e4                       CLR A
CODE:5a7f  93                       MOVC A,@A+DPTR
CODE:5a80  fb                       MOV R3,A
CODE:5a81  7f c8                    MOV R7,#0xc8
CODE:5a83  12 7e ca                 LCALL 0x7eca
CODE:5a86  05 29                    INC 0x29
CODE:5a88  e5 29                    MOV A,0x29
CODE:5a8a  70 02                    JNZ 0x5a8e
CODE:5a8c  05 28                    INC 0x28
LAB_CODE_5a8e:
CODE:5a8e  c3                       CLR CY   ; XREF: CODE:5a8a 
CODE:5a8f  e5 28                    MOV A,0x28
CODE:5a91  94 01                    SUBB A,#0x1
CODE:5a93  40 da                    JC 0x5a6f
CODE:5a95  e4                       CLR A
CODE:5a96  f5 28                    MOV 0x28,A
CODE:5a98  f5 29                    MOV 0x29,A
LAB_CODE_5a9a:
CODE:5a9a  e4                       CLR A   ; XREF: CODE:5abe 
CODE:5a9b  f5 b1                    MOV 0xb1,A
CODE:5a9d  ad 29                    MOV R5,0x29
CODE:5a9f  25 29                    ADD A,0x29
CODE:5aa1  f5 82                    MOV DPL,A
CODE:5aa3  74 dd                    MOV A,#0xdd
CODE:5aa5  35 28                    ADDC A,0x28
CODE:5aa7  f5 83                    MOV DPH,A
CODE:5aa9  e4                       CLR A
CODE:5aaa  93                       MOVC A,@A+DPTR
CODE:5aab  fb                       MOV R3,A
CODE:5aac  7f c9                    MOV R7,#0xc9
CODE:5aae  12 7e ca                 LCALL 0x7eca
CODE:5ab1  05 29                    INC 0x29
CODE:5ab3  e5 29                    MOV A,0x29
CODE:5ab5  70 02                    JNZ 0x5ab9
CODE:5ab7  05 28                    INC 0x28
LAB_CODE_5ab9:
CODE:5ab9  c3                       CLR CY   ; XREF: CODE:5ab5 
CODE:5aba  e5 28                    MOV A,0x28
CODE:5abc  94 01                    SUBB A,#0x1
CODE:5abe  40 da                    JC 0x5a9a
CODE:5ac0  e4                       CLR A
CODE:5ac1  f5 28                    MOV 0x28,A
CODE:5ac3  f5 29                    MOV 0x29,A
LAB_CODE_5ac5:
CODE:5ac5  e4                       CLR A   ; XREF: CODE:5aeb 
CODE:5ac6  f5 b1                    MOV 0xb1,A
CODE:5ac8  ad 29                    MOV R5,0x29
CODE:5aca  25 29                    ADD A,0x29
CODE:5acc  f5 82                    MOV DPL,A
CODE:5ace  74 de                    MOV A,#0xde
CODE:5ad0  35 28                    ADDC A,0x28
CODE:5ad2  f5 83                    MOV DPH,A
CODE:5ad4  e4                       CLR A
CODE:5ad5  93                       MOVC A,@A+DPTR
CODE:5ad6  fb                       MOV R3,A
CODE:5ad7  7f ca                    MOV R7,#0xca
CODE:5ad9  12 7e ca                 LCALL 0x7eca
CODE:5adc  05 29                    INC 0x29
CODE:5ade  e5 29                    MOV A,0x29
CODE:5ae0  70 02                    JNZ 0x5ae4
CODE:5ae2  05 28                    INC 0x28
LAB_CODE_5ae4:
CODE:5ae4  c3                       CLR CY   ; XREF: CODE:5ae0 
CODE:5ae5  94 28                    SUBB A,#0x28
CODE:5ae7  e5 28                    MOV A,0x28
CODE:5ae9  94 00                    SUBB A,#0x0
CODE:5aeb  40 d8                    JC 0x5ac5
CODE:5aed  43 a8 01                 ORL 0xa8,#0x1
LAB_CODE_5af0:
CODE:5af0  30 21 3a                 JNB 0x21,0x5b2d   ; XREF: CODE:5888 
CODE:5af3  53 a8 fe                 ANL 0xa8,#0xfe
CODE:5af6  12 79 d2                 LCALL 0x79d2
CODE:5af9  e4                       CLR A
CODE:5afa  f5 26                    MOV 0x26,A
CODE:5afc  f5 27                    MOV 0x27,A
LAB_CODE_5afe:
CODE:5afe  e4                       CLR A   ; XREF: CODE:5b26 
CODE:5aff  f5 b1                    MOV 0xb1,A
CODE:5b01  e5 27                    MOV A,0x27
CODE:5b03  ae 26                    MOV R6,0x26
CODE:5b05  78 07                    MOV R0,#0x7
LAB_CODE_5b07:
CODE:5b07  c3                       CLR CY   ; XREF: CODE:5b0c 
CODE:5b08  33                       RLC A
CODE:5b09  ce                       XCH A,R6
CODE:5b0a  33                       RLC A
CODE:5b0b  ce                       XCH A,R6
CODE:5b0c  d8 f9                    DJNZ R0,0x5b07
CODE:5b0e  ff                       MOV R7,A
CODE:5b0f  12 7e fd                 LCALL 0x7efd
CODE:5b12  7f d0                    MOV R7,#0xd0
CODE:5b14  7e 07                    MOV R6,#0x7
CODE:5b16  12 7e 37                 LCALL 0x7e37
CODE:5b19  05 27                    INC 0x27
CODE:5b1b  e5 27                    MOV A,0x27
CODE:5b1d  70 02                    JNZ 0x5b21
CODE:5b1f  05 26                    INC 0x26
LAB_CODE_5b21:
CODE:5b21  c3                       CLR CY   ; XREF: CODE:5b1d 
CODE:5b22  e5 26                    MOV A,0x26
CODE:5b24  94 02                    SUBB A,#0x2
CODE:5b26  40 d6                    JC 0x5afe
CODE:5b28  43 a8 01                 ORL 0xa8,#0x1
CODE:5b2b  c2 21                    CLR 0x21
LAB_CODE_5b2d:
CODE:5b2d  30 08 05                 JNB 0x08,0x5b35   ; XREF: CODE:5af0 
CODE:5b30  c2 08                    CLR 0x08
CODE:5b32  12 76 89                 LCALL 0x7689
LAB_CODE_5b35:
CODE:5b35  30 01 05                 JNB 0x01,0x5b3d   ; XREF: CODE:5b2d 
CODE:5b38  c2 01                    CLR 0x01
CODE:5b3a  12 73 93                 LCALL 0x7393
LAB_CODE_5b3d:
CODE:5b3d  20 11 03                 JB 0x11,0x5b43   ; XREF: CODE:5b35 
CODE:5b40  02 5d 92                 LJMP 0x5d92
LAB_CODE_5b43:
CODE:5b43  e5 0b                    MOV A,0x0b   ; XREF: CODE:5b3d 
CODE:5b45  45 0a                    ORL A,0x0a
CODE:5b47  60 03                    JZ 0x5b4c
CODE:5b49  02 5d 92                 LJMP 0x5d92
LAB_CODE_5b4c:
CODE:5b4c  20 1f 03                 JB 0x1f,0x5b52   ; XREF: CODE:5b47 
CODE:5b4f  02 5d 92                 LJMP 0x5d92
LAB_CODE_5b52:
CODE:5b52  c2 1f                    CLR 0x1f   ; XREF: CODE:5b4c 
CODE:5b54  e5 0f                    MOV A,0x0f
CODE:5b56  c3                       CLR CY
CODE:5b57  94 4f                    SUBB A,#0x4f
CODE:5b59  50 03                    JNC 0x5b5e
CODE:5b5b  02 5c 09                 LJMP 0x5c09
LAB_CODE_5b5e:
CODE:5b5e  90 02 9f                 MOV DPTR,#0x29f   ; XREF: CODE:5b59 
CODE:5b61  e5 10                    MOV A,0x10
CODE:5b63  f0                       MOVX @DPTR,A
CODE:5b64  d2 02                    SETB 0x02
CODE:5b66  c2 00                    CLR 0x00
CODE:5b68  12 6e c8                 LCALL 0x6ec8
CODE:5b6b  d3                       SETB CY
CODE:5b6c  e5 09                    MOV A,0x09
CODE:5b6e  94 01                    SUBB A,#0x1
CODE:5b70  e5 08                    MOV A,0x08
CODE:5b72  94 00                    SUBB A,#0x0
CODE:5b74  50 03                    JNC 0x5b79
CODE:5b76  02 5c 01                 LJMP 0x5c01
LAB_CODE_5b79:
CODE:5b79  30 16 06                 JNB 0x16,0x5b82   ; XREF: CODE:5b74 
CODE:5b7c  74 ff                    MOV A,#0xff
CODE:5b7e  f5 08                    MOV 0x08,A
CODE:5b80  f5 09                    MOV 0x09,A
LAB_CODE_5b82:
CODE:5b82  e5 09                    MOV A,0x09   ; XREF: CODE:5b79 
CODE:5b84  15 09                    DEC 0x09
CODE:5b86  70 02                    JNZ 0x5b8a
CODE:5b88  15 08                    DEC 0x08
LAB_CODE_5b8a:
CODE:5b8a  e4                       CLR A   ; XREF: CODE:5b86 
CODE:5b8b  f5 0f                    MOV 0x0f,A
CODE:5b8d  e5 13                    MOV A,0x13
CODE:5b8f  75 f0 17                 MOV B,#0x17
CODE:5b92  a4                       MUL AB
CODE:5b93  7c 00                    MOV R4,#0x0
CODE:5b95  25 12                    ADD A,0x12
CODE:5b97  ff                       MOV R7,A
CODE:5b98  ec                       MOV A,R4
CODE:5b99  35 f0                    ADDC A,B
CODE:5b9b  fe                       MOV R6,A
CODE:5b9c  7d f2                    MOV R5,#0xf2
CODE:5b9e  12 7a 30                 LCALL 0x7a30
CODE:5ba1  ef                       MOV A,R7
CODE:5ba2  24 02                    ADD A,#0x2
CODE:5ba4  ff                       MOV R7,A
CODE:5ba5  e4                       CLR A
CODE:5ba6  3e                       ADDC A,R6
CODE:5ba7  fe                       MOV R6,A
CODE:5ba8  12 7a 9b                 LCALL 0x7a9b
CODE:5bab  12 7e 2d                 LCALL 0x7e2d
CODE:5bae  e5 13                    MOV A,0x13
CODE:5bb0  75 f0 17                 MOV B,#0x17
CODE:5bb3  a4                       MUL AB
CODE:5bb4  7c 00                    MOV R4,#0x0
CODE:5bb6  25 12                    ADD A,0x12
CODE:5bb8  ff                       MOV R7,A
CODE:5bb9  ec                       MOV A,R4
CODE:5bba  35 f0                    ADDC A,B
CODE:5bbc  fe                       MOV R6,A
CODE:5bbd  7d f2                    MOV R5,#0xf2
CODE:5bbf  12 7a 30                 LCALL 0x7a30
CODE:5bc2  ef                       MOV A,R7
CODE:5bc3  24 03                    ADD A,#0x3
CODE:5bc5  ff                       MOV R7,A
CODE:5bc6  e4                       CLR A
CODE:5bc7  3e                       ADDC A,R6
CODE:5bc8  fe                       MOV R6,A
CODE:5bc9  12 7a 9b                 LCALL 0x7a9b
CODE:5bcc  90 02 a3                 MOV DPTR,#0x2a3
CODE:5bcf  12 7e 30                 LCALL 0x7e30
CODE:5bd2  e5 13                    MOV A,0x13
CODE:5bd4  75 f0 17                 MOV B,#0x17
CODE:5bd7  a4                       MUL AB
CODE:5bd8  7c 00                    MOV R4,#0x0
CODE:5bda  25 12                    ADD A,0x12
CODE:5bdc  ff                       MOV R7,A
CODE:5bdd  ec                       MOV A,R4
CODE:5bde  35 f0                    ADDC A,B
CODE:5be0  fe                       MOV R6,A
CODE:5be1  7d f2                    MOV R5,#0xf2
CODE:5be3  12 7a 30                 LCALL 0x7a30
CODE:5be6  ef                       MOV A,R7
CODE:5be7  24 04                    ADD A,#0x4
CODE:5be9  ff                       MOV R7,A
CODE:5bea  e4                       CLR A
CODE:5beb  3e                       ADDC A,R6
CODE:5bec  fe                       MOV R6,A
CODE:5bed  12 7a 9b                 LCALL 0x7a9b
CODE:5bf0  85 50 10                 MOV 0x10,0x50
CODE:5bf3  90 02 9e                 MOV DPTR,#0x29e
CODE:5bf6  e0                       MOVX A,@DPTR
CODE:5bf7  ff                       MOV R7,A
CODE:5bf8  20 e7 03                 JB 0xe7,0x5bfe
CODE:5bfb  02 5d 92                 LJMP 0x5d92
LAB_CODE_5bfe:
CODE:5bfe  02 5c a6                 LJMP 0x5ca6   ; XREF: CODE:5bf8 
LAB_CODE_5c01:
CODE:5c01  e4                       CLR A   ; XREF: CODE:5b76 
CODE:5c02  f5 0f                    MOV 0x0f,A
CODE:5c04  c2 11                    CLR 0x11
CODE:5c06  02 5d 92                 LJMP 0x5d92
LAB_CODE_5c09:
CODE:5c09  e5 10                    MOV A,0x10   ; XREF: CODE:5b5b 
CODE:5c0b  60 06                    JZ 0x5c13
CODE:5c0d  f4                       CPL A
CODE:5c0e  60 03                    JZ 0x5c13
CODE:5c10  02 5c c8                 LJMP 0x5cc8
LAB_CODE_5c13:
CODE:5c13  d3                       SETB CY   ; XREF: CODE:5c0b CODE:5c0e 
CODE:5c14  e5 09                    MOV A,0x09
CODE:5c16  94 01                    SUBB A,#0x1
CODE:5c18  e5 08                    MOV A,0x08
CODE:5c1a  94 00                    SUBB A,#0x0
CODE:5c1c  50 03                    JNC 0x5c21
CODE:5c1e  02 5c be                 LJMP 0x5cbe
LAB_CODE_5c21:
CODE:5c21  30 16 06                 JNB 0x16,0x5c2a   ; XREF: CODE:5c1c 
CODE:5c24  74 ff                    MOV A,#0xff
CODE:5c26  f5 08                    MOV 0x08,A
CODE:5c28  f5 09                    MOV 0x09,A
LAB_CODE_5c2a:
CODE:5c2a  e5 09                    MOV A,0x09   ; XREF: CODE:5c21 
CODE:5c2c  15 09                    DEC 0x09
CODE:5c2e  70 02                    JNZ 0x5c32
CODE:5c30  15 08                    DEC 0x08
LAB_CODE_5c32:
CODE:5c32  e4                       CLR A   ; XREF: CODE:5c2e 
CODE:5c33  f5 0f                    MOV 0x0f,A
CODE:5c35  e5 13                    MOV A,0x13
CODE:5c37  75 f0 17                 MOV B,#0x17
CODE:5c3a  a4                       MUL AB
CODE:5c3b  7c 00                    MOV R4,#0x0
CODE:5c3d  25 12                    ADD A,0x12
CODE:5c3f  ff                       MOV R7,A
CODE:5c40  ec                       MOV A,R4
CODE:5c41  35 f0                    ADDC A,B
CODE:5c43  fe                       MOV R6,A
CODE:5c44  7d f2                    MOV R5,#0xf2
CODE:5c46  12 7a 30                 LCALL 0x7a30
CODE:5c49  ef                       MOV A,R7
CODE:5c4a  24 02                    ADD A,#0x2
CODE:5c4c  ff                       MOV R7,A
CODE:5c4d  e4                       CLR A
CODE:5c4e  3e                       ADDC A,R6
CODE:5c4f  fe                       MOV R6,A
CODE:5c50  12 7a 9b                 LCALL 0x7a9b
CODE:5c53  12 7e 2d                 LCALL 0x7e2d
CODE:5c56  e5 13                    MOV A,0x13
CODE:5c58  75 f0 17                 MOV B,#0x17
CODE:5c5b  a4                       MUL AB
CODE:5c5c  7c 00                    MOV R4,#0x0
CODE:5c5e  25 12                    ADD A,0x12
CODE:5c60  ff                       MOV R7,A
CODE:5c61  ec                       MOV A,R4
CODE:5c62  35 f0                    ADDC A,B
CODE:5c64  fe                       MOV R6,A
CODE:5c65  7d f2                    MOV R5,#0xf2
CODE:5c67  12 7a 30                 LCALL 0x7a30
CODE:5c6a  ef                       MOV A,R7
CODE:5c6b  24 03                    ADD A,#0x3
CODE:5c6d  ff                       MOV R7,A
CODE:5c6e  e4                       CLR A
CODE:5c6f  3e                       ADDC A,R6
CODE:5c70  fe                       MOV R6,A
CODE:5c71  12 7a 9b                 LCALL 0x7a9b
CODE:5c74  90 02 a3                 MOV DPTR,#0x2a3
CODE:5c77  12 7e 30                 LCALL 0x7e30
CODE:5c7a  e5 13                    MOV A,0x13
CODE:5c7c  75 f0 17                 MOV B,#0x17
CODE:5c7f  a4                       MUL AB
CODE:5c80  7c 00                    MOV R4,#0x0
CODE:5c82  25 12                    ADD A,0x12
CODE:5c84  ff                       MOV R7,A
CODE:5c85  ec                       MOV A,R4
CODE:5c86  35 f0                    ADDC A,B
CODE:5c88  fe                       MOV R6,A
CODE:5c89  7d f2                    MOV R5,#0xf2
CODE:5c8b  12 7a 30                 LCALL 0x7a30
CODE:5c8e  ef                       MOV A,R7
CODE:5c8f  24 04                    ADD A,#0x4
CODE:5c91  ff                       MOV R7,A
CODE:5c92  e4                       CLR A
CODE:5c93  3e                       ADDC A,R6
CODE:5c94  fe                       MOV R6,A
CODE:5c95  12 7a 9b                 LCALL 0x7a9b
CODE:5c98  85 50 10                 MOV 0x10,0x50
CODE:5c9b  90 02 9e                 MOV DPTR,#0x29e
CODE:5c9e  e0                       MOVX A,@DPTR
CODE:5c9f  ff                       MOV R7,A
CODE:5ca0  20 e7 03                 JB 0xe7,0x5ca6
CODE:5ca3  02 5d 92                 LJMP 0x5d92
LAB_CODE_5ca6:
CODE:5ca6  e4                       CLR A   ; XREF: CODE:5bfe CODE:5ca0 
CODE:5ca7  f5 0a                    MOV 0x0a,A
CODE:5ca9  f5 0b                    MOV 0x0b,A
CODE:5cab  90 02 a3                 MOV DPTR,#0x2a3
CODE:5cae  e0                       MOVX A,@DPTR
CODE:5caf  75 0a 00                 MOV 0x0a,#0x0
CODE:5cb2  f5 0b                    MOV 0x0b,A
CODE:5cb4  ef                       MOV A,R7
CODE:5cb5  54 7f                    ANL A,#0x7f
CODE:5cb7  fe                       MOV R6,A
CODE:5cb8  ee                       MOV A,R6
CODE:5cb9  42 0a                    ORL 0x0a,A
CODE:5cbb  02 5d 92                 LJMP 0x5d92
LAB_CODE_5cbe:
CODE:5cbe  e4                       CLR A   ; XREF: CODE:5c1e 
CODE:5cbf  f5 0f                    MOV 0x0f,A
CODE:5cc1  c2 11                    CLR 0x11
CODE:5cc3  c2 08                    CLR 0x08
CODE:5cc5  02 5d 92                 LJMP 0x5d92
LAB_CODE_5cc8:
CODE:5cc8  90 02 9e                 MOV DPTR,#0x29e   ; XREF: CODE:5c10 
CODE:5ccb  e0                       MOVX A,@DPTR
CODE:5ccc  90 02 9f                 MOV DPTR,#0x29f
CODE:5ccf  30 e7 09                 JNB 0xe7,0x5cdb
CODE:5cd2  e5 10                    MOV A,0x10
CODE:5cd4  f0                       MOVX @DPTR,A
CODE:5cd5  d2 02                    SETB 0x02
CODE:5cd7  d2 00                    SETB 0x00
CODE:5cd9  80 07                    SJMP 0x5ce2
LAB_CODE_5cdb:
CODE:5cdb  e5 10                    MOV A,0x10   ; XREF: CODE:5ccf 
CODE:5cdd  f0                       MOVX @DPTR,A
CODE:5cde  d2 02                    SETB 0x02
CODE:5ce0  c2 00                    CLR 0x00
LAB_CODE_5ce2:
CODE:5ce2  12 6e c8                 LCALL 0x6ec8   ; XREF: CODE:5cd9 
CODE:5ce5  e5 13                    MOV A,0x13
CODE:5ce7  75 f0 17                 MOV B,#0x17
CODE:5cea  a4                       MUL AB
CODE:5ceb  7c 00                    MOV R4,#0x0
CODE:5ced  25 12                    ADD A,0x12
CODE:5cef  ff                       MOV R7,A
CODE:5cf0  ec                       MOV A,R4
CODE:5cf1  35 f0                    ADDC A,B
CODE:5cf3  fe                       MOV R6,A
CODE:5cf4  7d f2                    MOV R5,#0xf2
CODE:5cf6  12 7a 30                 LCALL 0x7a30
CODE:5cf9  ac 06                    MOV R4,0x06
CODE:5cfb  ad 07                    MOV R5,0x07
CODE:5cfd  e5 0f                    MOV A,0x0f
CODE:5cff  75 f0 03                 MOV B,#0x3
CODE:5d02  a4                       MUL AB
CODE:5d03  2d                       ADD A,R5
CODE:5d04  ff                       MOV R7,A
CODE:5d05  ec                       MOV A,R4
CODE:5d06  35 f0                    ADDC A,B
CODE:5d08  cf                       XCH A,R7
CODE:5d09  24 05                    ADD A,#0x5
CODE:5d0b  cf                       XCH A,R7
CODE:5d0c  34 00                    ADDC A,#0x0
CODE:5d0e  fe                       MOV R6,A
CODE:5d0f  12 7a 9b                 LCALL 0x7a9b
CODE:5d12  12 7e 2d                 LCALL 0x7e2d
CODE:5d15  e5 13                    MOV A,0x13
CODE:5d17  75 f0 17                 MOV B,#0x17
CODE:5d1a  a4                       MUL AB
CODE:5d1b  7c 00                    MOV R4,#0x0
CODE:5d1d  25 12                    ADD A,0x12
CODE:5d1f  ff                       MOV R7,A
CODE:5d20  ec                       MOV A,R4
CODE:5d21  35 f0                    ADDC A,B
CODE:5d23  fe                       MOV R6,A
CODE:5d24  7d f2                    MOV R5,#0xf2
CODE:5d26  12 7a 30                 LCALL 0x7a30
CODE:5d29  ac 06                    MOV R4,0x06
CODE:5d2b  ad 07                    MOV R5,0x07
CODE:5d2d  e5 0f                    MOV A,0x0f
CODE:5d2f  75 f0 03                 MOV B,#0x3
CODE:5d32  a4                       MUL AB
CODE:5d33  2d                       ADD A,R5
CODE:5d34  ff                       MOV R7,A
CODE:5d35  ec                       MOV A,R4
CODE:5d36  35 f0                    ADDC A,B
CODE:5d38  cf                       XCH A,R7
CODE:5d39  24 06                    ADD A,#0x6
CODE:5d3b  cf                       XCH A,R7
CODE:5d3c  34 00                    ADDC A,#0x0
CODE:5d3e  fe                       MOV R6,A
CODE:5d3f  12 7a 9b                 LCALL 0x7a9b
CODE:5d42  90 02 a3                 MOV DPTR,#0x2a3
CODE:5d45  12 7e 30                 LCALL 0x7e30
CODE:5d48  e5 13                    MOV A,0x13
CODE:5d4a  75 f0 17                 MOV B,#0x17
CODE:5d4d  a4                       MUL AB
CODE:5d4e  7c 00                    MOV R4,#0x0
CODE:5d50  25 12                    ADD A,0x12
CODE:5d52  ff                       MOV R7,A
CODE:5d53  ec                       MOV A,R4
CODE:5d54  35 f0                    ADDC A,B
CODE:5d56  fe                       MOV R6,A
CODE:5d57  7d f2                    MOV R5,#0xf2
CODE:5d59  12 7a 30                 LCALL 0x7a30
CODE:5d5c  ac 06                    MOV R4,0x06
CODE:5d5e  ad 07                    MOV R5,0x07
CODE:5d60  e5 0f                    MOV A,0x0f
CODE:5d62  75 f0 03                 MOV B,#0x3
CODE:5d65  a4                       MUL AB
CODE:5d66  2d                       ADD A,R5
CODE:5d67  ff                       MOV R7,A
CODE:5d68  ec                       MOV A,R4
CODE:5d69  35 f0                    ADDC A,B
CODE:5d6b  cf                       XCH A,R7
CODE:5d6c  24 07                    ADD A,#0x7
CODE:5d6e  cf                       XCH A,R7
CODE:5d6f  34 00                    ADDC A,#0x0
CODE:5d71  fe                       MOV R6,A
CODE:5d72  12 7a 9b                 LCALL 0x7a9b
CODE:5d75  85 50 10                 MOV 0x10,0x50
CODE:5d78  e4                       CLR A
CODE:5d79  f5 0a                    MOV 0x0a,A
CODE:5d7b  f5 0b                    MOV 0x0b,A
CODE:5d7d  90 02 a3                 MOV DPTR,#0x2a3
CODE:5d80  e0                       MOVX A,@DPTR
CODE:5d81  75 0a 00                 MOV 0x0a,#0x0
CODE:5d84  f5 0b                    MOV 0x0b,A
CODE:5d86  90 02 9e                 MOV DPTR,#0x29e
CODE:5d89  e0                       MOVX A,@DPTR
CODE:5d8a  54 7f                    ANL A,#0x7f
CODE:5d8c  fe                       MOV R6,A
CODE:5d8d  ee                       MOV A,R6
CODE:5d8e  42 0a                    ORL 0x0a,A
CODE:5d90  05 0f                    INC 0x0f
LAB_CODE_5d92:
CODE:5d92  20 1e 03                 JB 0x1e,0x5d98   ; XREF: CODE:5b40 CODE:5b49 CODE:5b4f CODE:5bfb CODE:5c06 CODE:5ca3 CODE:5cbb CODE:5cc5 
CODE:5d95  02 58 62                 LJMP 0x5862
LAB_CODE_5d98:
CODE:5d98  12 70 50                 LCALL 0x7050   ; XREF: CODE:5d92 
CODE:5d9b  02 58 62                 LJMP 0x5862

; ===== FUNCTION FUN_CODE_6003 @ CODE:6003 =====
CODE:6003  e0                       MOVX A,@DPTR   ; XREF: Entry Point 
CODE:6004  fd                       MOV R5,A
CODE:6005  ed                       MOV A,R5
CODE:6006  ff                       MOV R7,A
CODE:6007  90 03 26                 MOV DPTR,#0x326
CODE:600a  ee                       MOV A,R6
CODE:600b  f0                       MOVX @DPTR,A
CODE:600c  a3                       INC DPTR
CODE:600d  ef                       MOV A,R7
CODE:600e  f0                       MOVX @DPTR,A
CODE:600f  c3                       CLR CY
CODE:6010  94 d5                    SUBB A,#0xd5
CODE:6012  ee                       MOV A,R6
CODE:6013  94 00                    SUBB A,#0x0
CODE:6015  50 05                    JNC 0x601c
CODE:6017  90 03 26                 MOV DPTR,#0x326
CODE:601a  80 03                    SJMP 0x601f
LAB_CODE_601c:
CODE:601c  90 03 28                 MOV DPTR,#0x328   ; XREF: CODE:6015 
LAB_CODE_601f:
CODE:601f  e0                       MOVX A,@DPTR   ; XREF: CODE:601a 
CODE:6020  fe                       MOV R6,A
CODE:6021  a3                       INC DPTR
CODE:6022  e0                       MOVX A,@DPTR
CODE:6023  ff                       MOV R7,A
CODE:6024  02 60 b9                 LJMP 0x60b9
LAB_CODE_60b9:
CODE:60b9  90 03 28                 MOV DPTR,#0x328   ; XREF: CODE:6024 
CODE:60bc  ee                       MOV A,R6
CODE:60bd  f0                       MOVX @DPTR,A
CODE:60be  a3                       INC DPTR
CODE:60bf  ef                       MOV A,R7
CODE:60c0  f0                       MOVX @DPTR,A
CODE:60c1  80 05                    SJMP 0x60c8
LAB_CODE_60c8:
CODE:60c8  12 78 57                 LCALL 0x7857   ; XREF: CODE:60c1 
CODE:60cb  43 97 04                 ORL 0x97,#0x4
CODE:60ce  22                       RET

; ===== FUNCTION FUN_CODE_60cf @ CODE:60cf =====
CODE:60cf  90 ff 80                 MOV DPTR,#0xff80   ; XREF: Entry Point CODE:8119 
CODE:60d2  74 f8                    MOV A,#0xf8
CODE:60d4  f0                       MOVX @DPTR,A
CODE:60d5  a3                       INC DPTR
CODE:60d6  e4                       CLR A
CODE:60d7  f0                       MOVX @DPTR,A
CODE:60d8  a3                       INC DPTR
CODE:60d9  f0                       MOVX @DPTR,A
CODE:60da  a3                       INC DPTR
CODE:60db  f0                       MOVX @DPTR,A
CODE:60dc  a3                       INC DPTR
CODE:60dd  f0                       MOVX @DPTR,A
CODE:60de  a3                       INC DPTR
CODE:60df  f0                       MOVX @DPTR,A
CODE:60e0  90 ff 9c                 MOV DPTR,#0xff9c
CODE:60e3  f0                       MOVX @DPTR,A
CODE:60e4  90 ff 98                 MOV DPTR,#0xff98
CODE:60e7  74 ff                    MOV A,#0xff
CODE:60e9  f0                       MOVX @DPTR,A
CODE:60ea  90 ff b8                 MOV DPTR,#0xffb8
CODE:60ed  e4                       CLR A
CODE:60ee  f0                       MOVX @DPTR,A
CODE:60ef  90 ff a0                 MOV DPTR,#0xffa0
CODE:60f2  74 ff                    MOV A,#0xff
CODE:60f4  f0                       MOVX @DPTR,A
CODE:60f5  90 ff e8                 MOV DPTR,#0xffe8
CODE:60f8  e4                       CLR A
CODE:60f9  f0                       MOVX @DPTR,A
CODE:60fa  90 ff d0                 MOV DPTR,#0xffd0
CODE:60fd  74 ff                    MOV A,#0xff
CODE:60ff  f0                       MOVX @DPTR,A
CODE:6100  90 ff b9                 MOV DPTR,#0xffb9
CODE:6103  e4                       CLR A
CODE:6104  f0                       MOVX @DPTR,A
CODE:6105  90 ff a1                 MOV DPTR,#0xffa1
CODE:6108  74 ff                    MOV A,#0xff
CODE:610a  f0                       MOVX @DPTR,A
CODE:610b  90 ff e9                 MOV DPTR,#0xffe9
CODE:610e  e4                       CLR A
CODE:610f  f0                       MOVX @DPTR,A
CODE:6110  90 ff d1                 MOV DPTR,#0xffd1
CODE:6113  74 ff                    MOV A,#0xff
CODE:6115  f0                       MOVX @DPTR,A
CODE:6116  90 ff ba                 MOV DPTR,#0xffba
CODE:6119  e4                       CLR A
CODE:611a  f0                       MOVX @DPTR,A
CODE:611b  90 ff a2                 MOV DPTR,#0xffa2
CODE:611e  74 ff                    MOV A,#0xff
CODE:6120  f0                       MOVX @DPTR,A
CODE:6121  90 ff ea                 MOV DPTR,#0xffea
CODE:6124  e4                       CLR A
CODE:6125  f0                       MOVX @DPTR,A
CODE:6126  90 ff d2                 MOV DPTR,#0xffd2
CODE:6129  74 ff                    MOV A,#0xff
CODE:612b  f0                       MOVX @DPTR,A
CODE:612c  90 ff bb                 MOV DPTR,#0xffbb
CODE:612f  e4                       CLR A
CODE:6130  f0                       MOVX @DPTR,A
CODE:6131  90 ff a3                 MOV DPTR,#0xffa3
CODE:6134  74 ff                    MOV A,#0xff
CODE:6136  f0                       MOVX @DPTR,A
CODE:6137  90 ff eb                 MOV DPTR,#0xffeb
CODE:613a  e4                       CLR A
CODE:613b  f0                       MOVX @DPTR,A
CODE:613c  90 ff d3                 MOV DPTR,#0xffd3
CODE:613f  74 ff                    MOV A,#0xff
CODE:6141  f0                       MOVX @DPTR,A
CODE:6142  90 ff bc                 MOV DPTR,#0xffbc
CODE:6145  e4                       CLR A
CODE:6146  f0                       MOVX @DPTR,A
CODE:6147  90 ff a4                 MOV DPTR,#0xffa4
CODE:614a  74 ff                    MOV A,#0xff
CODE:614c  f0                       MOVX @DPTR,A
CODE:614d  90 ff ec                 MOV DPTR,#0xffec
CODE:6150  e4                       CLR A
CODE:6151  f0                       MOVX @DPTR,A
CODE:6152  90 ff d4                 MOV DPTR,#0xffd4
CODE:6155  74 ff                    MOV A,#0xff
CODE:6157  f0                       MOVX @DPTR,A
CODE:6158  90 ff bd                 MOV DPTR,#0xffbd
CODE:615b  e4                       CLR A
CODE:615c  f0                       MOVX @DPTR,A
CODE:615d  90 ff a5                 MOV DPTR,#0xffa5
CODE:6160  74 ff                    MOV A,#0xff
CODE:6162  f0                       MOVX @DPTR,A
CODE:6163  90 ff ed                 MOV DPTR,#0xffed
CODE:6166  e4                       CLR A
CODE:6167  f0                       MOVX @DPTR,A
CODE:6168  90 ff d5                 MOV DPTR,#0xffd5
CODE:616b  74 ff                    MOV A,#0xff
CODE:616d  f0                       MOVX @DPTR,A
CODE:616e  90 ff 86                 MOV DPTR,#0xff86
CODE:6171  74 80                    MOV A,#0x80
CODE:6173  f0                       MOVX @DPTR,A
CODE:6174  a3                       INC DPTR
CODE:6175  e4                       CLR A
CODE:6176  f0                       MOVX @DPTR,A
CODE:6177  a3                       INC DPTR
CODE:6178  f0                       MOVX @DPTR,A
CODE:6179  a3                       INC DPTR
CODE:617a  f0                       MOVX @DPTR,A
CODE:617b  a3                       INC DPTR
CODE:617c  f0                       MOVX @DPTR,A
CODE:617d  a3                       INC DPTR
CODE:617e  f0                       MOVX @DPTR,A
CODE:617f  90 ff 9d                 MOV DPTR,#0xff9d
CODE:6182  f0                       MOVX @DPTR,A
CODE:6183  90 ff 99                 MOV DPTR,#0xff99
CODE:6186  74 ff                    MOV A,#0xff
CODE:6188  f0                       MOVX @DPTR,A
CODE:6189  90 ff be                 MOV DPTR,#0xffbe
CODE:618c  e4                       CLR A
CODE:618d  f0                       MOVX @DPTR,A
CODE:618e  90 ff a6                 MOV DPTR,#0xffa6
CODE:6191  74 ff                    MOV A,#0xff
CODE:6193  f0                       MOVX @DPTR,A
CODE:6194  90 ff ee                 MOV DPTR,#0xffee
CODE:6197  e4                       CLR A
CODE:6198  f0                       MOVX @DPTR,A
CODE:6199  90 ff d6                 MOV DPTR,#0xffd6
CODE:619c  74 ff                    MOV A,#0xff
CODE:619e  f0                       MOVX @DPTR,A
CODE:619f  90 ff bf                 MOV DPTR,#0xffbf
CODE:61a2  e4                       CLR A
CODE:61a3  f0                       MOVX @DPTR,A
CODE:61a4  90 ff a7                 MOV DPTR,#0xffa7
CODE:61a7  74 ff                    MOV A,#0xff
CODE:61a9  f0                       MOVX @DPTR,A
CODE:61aa  90 ff ef                 MOV DPTR,#0xffef
CODE:61ad  e4                       CLR A
CODE:61ae  f0                       MOVX @DPTR,A
CODE:61af  90 ff d7                 MOV DPTR,#0xffd7
CODE:61b2  74 ff                    MOV A,#0xff
CODE:61b4  f0                       MOVX @DPTR,A
CODE:61b5  90 ff c0                 MOV DPTR,#0xffc0
CODE:61b8  e4                       CLR A
CODE:61b9  f0                       MOVX @DPTR,A
CODE:61ba  90 ff a8                 MOV DPTR,#0xffa8
CODE:61bd  74 ff                    MOV A,#0xff
CODE:61bf  f0                       MOVX @DPTR,A
CODE:61c0  90 ff f0                 MOV DPTR,#0xfff0
CODE:61c3  e4                       CLR A
CODE:61c4  f0                       MOVX @DPTR,A
CODE:61c5  90 ff d8                 MOV DPTR,#0xffd8
CODE:61c8  74 ff                    MOV A,#0xff
CODE:61ca  f0                       MOVX @DPTR,A
CODE:61cb  90 ff c1                 MOV DPTR,#0xffc1
CODE:61ce  e4                       CLR A
CODE:61cf  f0                       MOVX @DPTR,A
CODE:61d0  90 ff a9                 MOV DPTR,#0xffa9
CODE:61d3  74 ff                    MOV A,#0xff
CODE:61d5  f0                       MOVX @DPTR,A
CODE:61d6  90 ff f1                 MOV DPTR,#0xfff1
CODE:61d9  e4                       CLR A
CODE:61da  f0                       MOVX @DPTR,A
CODE:61db  90 ff d9                 MOV DPTR,#0xffd9
CODE:61de  74 ff                    MOV A,#0xff
CODE:61e0  f0                       MOVX @DPTR,A
CODE:61e1  90 ff c2                 MOV DPTR,#0xffc2
CODE:61e4  e4                       CLR A
CODE:61e5  f0                       MOVX @DPTR,A
CODE:61e6  90 ff aa                 MOV DPTR,#0xffaa
CODE:61e9  74 ff                    MOV A,#0xff
CODE:61eb  f0                       MOVX @DPTR,A
CODE:61ec  90 ff f2                 MOV DPTR,#0xfff2
CODE:61ef  e4                       CLR A
CODE:61f0  f0                       MOVX @DPTR,A
CODE:61f1  90 ff da                 MOV DPTR,#0xffda
CODE:61f4  74 ff                    MOV A,#0xff
CODE:61f6  f0                       MOVX @DPTR,A
CODE:61f7  90 ff c3                 MOV DPTR,#0xffc3
CODE:61fa  e4                       CLR A
CODE:61fb  f0                       MOVX @DPTR,A
CODE:61fc  90 ff ab                 MOV DPTR,#0xffab
CODE:61ff  74 ff                    MOV A,#0xff
CODE:6201  f0                       MOVX @DPTR,A
CODE:6202  90 ff f3                 MOV DPTR,#0xfff3
CODE:6205  e4                       CLR A
CODE:6206  f0                       MOVX @DPTR,A
CODE:6207  90 ff db                 MOV DPTR,#0xffdb
CODE:620a  74 ff                    MOV A,#0xff
CODE:620c  f0                       MOVX @DPTR,A
CODE:620d  90 ff 8c                 MOV DPTR,#0xff8c
CODE:6210  74 80                    MOV A,#0x80
CODE:6212  f0                       MOVX @DPTR,A
CODE:6213  a3                       INC DPTR
CODE:6214  e4                       CLR A
CODE:6215  f0                       MOVX @DPTR,A
CODE:6216  a3                       INC DPTR
CODE:6217  f0                       MOVX @DPTR,A
CODE:6218  a3                       INC DPTR
CODE:6219  f0                       MOVX @DPTR,A
CODE:621a  a3                       INC DPTR
CODE:621b  f0                       MOVX @DPTR,A
CODE:621c  a3                       INC DPTR
CODE:621d  f0                       MOVX @DPTR,A
CODE:621e  90 ff 9e                 MOV DPTR,#0xff9e
CODE:6221  f0                       MOVX @DPTR,A
CODE:6222  90 ff 9a                 MOV DPTR,#0xff9a
CODE:6225  74 ff                    MOV A,#0xff
CODE:6227  f0                       MOVX @DPTR,A
CODE:6228  90 ff c4                 MOV DPTR,#0xffc4
CODE:622b  e4                       CLR A
CODE:622c  f0                       MOVX @DPTR,A
CODE:622d  90 ff ac                 MOV DPTR,#0xffac
CODE:6230  74 ff                    MOV A,#0xff
CODE:6232  f0                       MOVX @DPTR,A
CODE:6233  90 ff f4                 MOV DPTR,#0xfff4
CODE:6236  e4                       CLR A
CODE:6237  f0                       MOVX @DPTR,A
CODE:6238  90 ff dc                 MOV DPTR,#0xffdc
CODE:623b  74 ff                    MOV A,#0xff
CODE:623d  f0                       MOVX @DPTR,A
CODE:623e  90 ff c5                 MOV DPTR,#0xffc5
CODE:6241  e4                       CLR A
CODE:6242  f0                       MOVX @DPTR,A
CODE:6243  90 ff ad                 MOV DPTR,#0xffad
CODE:6246  74 ff                    MOV A,#0xff
CODE:6248  f0                       MOVX @DPTR,A
CODE:6249  90 ff f5                 MOV DPTR,#0xfff5
CODE:624c  e4                       CLR A
CODE:624d  f0                       MOVX @DPTR,A
CODE:624e  90 ff dd                 MOV DPTR,#0xffdd
CODE:6251  74 ff                    MOV A,#0xff
CODE:6253  f0                       MOVX @DPTR,A
CODE:6254  90 ff c6                 MOV DPTR,#0xffc6
CODE:6257  e4                       CLR A
CODE:6258  f0                       MOVX @DPTR,A
CODE:6259  90 ff ae                 MOV DPTR,#0xffae
CODE:625c  74 ff                    MOV A,#0xff
CODE:625e  f0                       MOVX @DPTR,A
CODE:625f  90 ff f6                 MOV DPTR,#0xfff6
CODE:6262  e4                       CLR A
CODE:6263  f0                       MOVX @DPTR,A
CODE:6264  90 ff de                 MOV DPTR,#0xffde
CODE:6267  74 ff                    MOV A,#0xff
CODE:6269  f0                       MOVX @DPTR,A
CODE:626a  90 ff c7                 MOV DPTR,#0xffc7
CODE:626d  e4                       CLR A
CODE:626e  f0                       MOVX @DPTR,A
CODE:626f  90 ff af                 MOV DPTR,#0xffaf
CODE:6272  74 ff                    MOV A,#0xff
CODE:6274  f0                       MOVX @DPTR,A
CODE:6275  90 ff f7                 MOV DPTR,#0xfff7
CODE:6278  e4                       CLR A
CODE:6279  f0                       MOVX @DPTR,A
CODE:627a  90 ff df                 MOV DPTR,#0xffdf
CODE:627d  74 ff                    MOV A,#0xff
CODE:627f  f0                       MOVX @DPTR,A
CODE:6280  90 ff c8                 MOV DPTR,#0xffc8
CODE:6283  e4                       CLR A
CODE:6284  f0                       MOVX @DPTR,A
CODE:6285  90 ff b0                 MOV DPTR,#0xffb0
CODE:6288  74 ff                    MOV A,#0xff
CODE:628a  f0                       MOVX @DPTR,A
CODE:628b  90 ff f8                 MOV DPTR,#0xfff8
CODE:628e  e4                       CLR A
CODE:628f  f0                       MOVX @DPTR,A
CODE:6290  90 ff e0                 MOV DPTR,#0xffe0
CODE:6293  74 ff                    MOV A,#0xff
CODE:6295  f0                       MOVX @DPTR,A
CODE:6296  90 ff c9                 MOV DPTR,#0xffc9
CODE:6299  e4                       CLR A
CODE:629a  f0                       MOVX @DPTR,A
CODE:629b  90 ff b1                 MOV DPTR,#0xffb1
CODE:629e  74 ff                    MOV A,#0xff
CODE:62a0  f0                       MOVX @DPTR,A
CODE:62a1  90 ff f9                 MOV DPTR,#0xfff9
CODE:62a4  e4                       CLR A
CODE:62a5  f0                       MOVX @DPTR,A
CODE:62a6  90 ff e1                 MOV DPTR,#0xffe1
CODE:62a9  74 ff                    MOV A,#0xff
CODE:62ab  f0                       MOVX @DPTR,A
CODE:62ac  90 ff 92                 MOV DPTR,#0xff92
CODE:62af  74 80                    MOV A,#0x80
CODE:62b1  f0                       MOVX @DPTR,A
CODE:62b2  a3                       INC DPTR
CODE:62b3  e4                       CLR A
CODE:62b4  f0                       MOVX @DPTR,A
CODE:62b5  a3                       INC DPTR
CODE:62b6  f0                       MOVX @DPTR,A
CODE:62b7  a3                       INC DPTR
CODE:62b8  f0                       MOVX @DPTR,A
CODE:62b9  90 ff 9f                 MOV DPTR,#0xff9f
CODE:62bc  f0                       MOVX @DPTR,A
CODE:62bd  90 ff 9b                 MOV DPTR,#0xff9b
CODE:62c0  74 ff                    MOV A,#0xff
CODE:62c2  f0                       MOVX @DPTR,A
CODE:62c3  90 ff ca                 MOV DPTR,#0xffca
CODE:62c6  e4                       CLR A
CODE:62c7  f0                       MOVX @DPTR,A
CODE:62c8  90 ff b2                 MOV DPTR,#0xffb2
CODE:62cb  f0                       MOVX @DPTR,A
CODE:62cc  90 ff fa                 MOV DPTR,#0xfffa
CODE:62cf  f0                       MOVX @DPTR,A
CODE:62d0  90 ff e2                 MOV DPTR,#0xffe2
CODE:62d3  f0                       MOVX @DPTR,A
CODE:62d4  90 ff cb                 MOV DPTR,#0xffcb
CODE:62d7  f0                       MOVX @DPTR,A
CODE:62d8  90 ff b3                 MOV DPTR,#0xffb3
CODE:62db  f0                       MOVX @DPTR,A
CODE:62dc  90 ff fb                 MOV DPTR,#0xfffb
CODE:62df  f0                       MOVX @DPTR,A
CODE:62e0  90 ff e3                 MOV DPTR,#0xffe3
CODE:62e3  f0                       MOVX @DPTR,A
CODE:62e4  90 ff cc                 MOV DPTR,#0xffcc
CODE:62e7  f0                       MOVX @DPTR,A
CODE:62e8  90 ff b4                 MOV DPTR,#0xffb4
CODE:62eb  f0                       MOVX @DPTR,A
CODE:62ec  90 ff fc                 MOV DPTR,#0xfffc
CODE:62ef  f0                       MOVX @DPTR,A
CODE:62f0  90 ff e4                 MOV DPTR,#0xffe4
CODE:62f3  f0                       MOVX @DPTR,A
CODE:62f4  90 ff cd                 MOV DPTR,#0xffcd
CODE:62f7  f0                       MOVX @DPTR,A
CODE:62f8  90 ff b5                 MOV DPTR,#0xffb5
CODE:62fb  f0                       MOVX @DPTR,A
CODE:62fc  90 ff fd                 MOV DPTR,#0xfffd
CODE:62ff  f0                       MOVX @DPTR,A
CODE:6300  90 ff e5                 MOV DPTR,#0xffe5
CODE:6303  f0                       MOVX @DPTR,A
CODE:6304  75 da 02                 MOV 0xda,#0x2
CODE:6307  f5 db                    MOV 0xdb,A
CODE:6309  f5 dc                    MOV 0xdc,A
CODE:630b  f5 de                    MOV 0xde,A
CODE:630d  75 dd 64                 MOV 0xdd,#0x64
CODE:6310  f5 d5                    MOV 0xd5,A
CODE:6312  f5 d2                    MOV 0xd2,A
CODE:6314  f5 c3                    MOV 0xc3,A
CODE:6316  75 ce 32                 MOV 0xce,#0x32
CODE:6319  f5 d6                    MOV 0xd6,A
CODE:631b  f5 d3                    MOV 0xd3,A
CODE:631d  f5 c4                    MOV 0xc4,A
CODE:631f  75 c1 32                 MOV 0xc1,#0x32
CODE:6322  f5 d7                    MOV 0xd7,A
CODE:6324  f5 d4                    MOV 0xd4,A
CODE:6326  f5 c5                    MOV 0xc5,A
CODE:6328  75 c2 32                 MOV 0xc2,#0x32
CODE:632b  22                       RET

; ===== FUNCTION FUN_CODE_6580 @ CODE:6580 =====
CODE:6580  8f 43                    MOV 0x43,R7   ; XREF: CODE:0e51 Entry Point 
CODE:6582  c2 b1                    CLR 0xb1
CODE:6584  c2 c0                    CLR 0xc0
CODE:6586  c2 c1                    CLR 0xc1
CODE:6588  c2 c2                    CLR 0xc2
CODE:658a  c2 c3                    CLR 0xc3
CODE:658c  c2 c4                    CLR 0xc4
CODE:658e  c2 c5                    CLR 0xc5
CODE:6590  c2 c6                    CLR 0xc6
CODE:6592  c2 c7                    CLR 0xc7
CODE:6594  c2 88                    CLR 0x88
CODE:6596  c2 89                    CLR 0x89
CODE:6598  c2 8a                    CLR 0x8a
CODE:659a  c2 8f                    CLR 0x8f
CODE:659c  c2 b0                    CLR 0xb0
CODE:659e  c2 b4                    CLR 0xb4
CODE:65a0  c2 b2                    CLR 0xb2
CODE:65a2  c2 b3                    CLR 0xb3
CODE:65a4  c2 b5                    CLR 0xb5
CODE:65a6  c2 b6                    CLR 0xb6
CODE:65a8  c2 fc                    CLR 0xfc
CODE:65aa  c2 85                    CLR 0x85
CODE:65ac  c2 86                    CLR 0x86
CODE:65ae  c2 87                    CLR 0x87
CODE:65b0  74 00                    MOV A,#0x0
CODE:65b2  2f                       ADD A,R7
CODE:65b3  f5 82                    MOV DPL,A
CODE:65b5  e4                       CLR A
CODE:65b6  34 00                    ADDC A,#0x0
CODE:65b8  f5 83                    MOV DPH,A
CODE:65ba  e0                       MOVX A,@DPTR
CODE:65bb  90 ff a0                 MOV DPTR,#0xffa0
CODE:65be  f0                       MOVX @DPTR,A
CODE:65bf  74 95                    MOV A,#0x95
CODE:65c1  2f                       ADD A,R7
CODE:65c2  f5 82                    MOV DPL,A
CODE:65c4  e4                       CLR A
CODE:65c5  34 00                    ADDC A,#0x0
CODE:65c7  f5 83                    MOV DPH,A
CODE:65c9  e0                       MOVX A,@DPTR
CODE:65ca  90 ff a1                 MOV DPTR,#0xffa1
CODE:65cd  f0                       MOVX @DPTR,A
CODE:65ce  74 2a                    MOV A,#0x2a
CODE:65d0  2f                       ADD A,R7
CODE:65d1  f5 82                    MOV DPL,A
CODE:65d3  e4                       CLR A
CODE:65d4  34 01                    ADDC A,#0x1
CODE:65d6  f5 83                    MOV DPH,A
CODE:65d8  e0                       MOVX A,@DPTR
CODE:65d9  90 ff a2                 MOV DPTR,#0xffa2
CODE:65dc  f0                       MOVX @DPTR,A
CODE:65dd  74 17                    MOV A,#0x17
CODE:65df  2f                       ADD A,R7
CODE:65e0  f5 82                    MOV DPL,A
CODE:65e2  e4                       CLR A
CODE:65e3  34 00                    ADDC A,#0x0
CODE:65e5  f5 83                    MOV DPH,A
CODE:65e7  e0                       MOVX A,@DPTR
CODE:65e8  90 ff a3                 MOV DPTR,#0xffa3
CODE:65eb  f0                       MOVX @DPTR,A
CODE:65ec  74 ac                    MOV A,#0xac
CODE:65ee  2f                       ADD A,R7
CODE:65ef  f5 82                    MOV DPL,A
CODE:65f1  e4                       CLR A
CODE:65f2  34 00                    ADDC A,#0x0
CODE:65f4  f5 83                    MOV DPH,A
CODE:65f6  e0                       MOVX A,@DPTR
CODE:65f7  90 ff a4                 MOV DPTR,#0xffa4
CODE:65fa  f0                       MOVX @DPTR,A
CODE:65fb  74 41                    MOV A,#0x41
CODE:65fd  2f                       ADD A,R7
CODE:65fe  f5 82                    MOV DPL,A
CODE:6600  e4                       CLR A
CODE:6601  34 01                    ADDC A,#0x1
CODE:6603  f5 83                    MOV DPH,A
CODE:6605  e0                       MOVX A,@DPTR
CODE:6606  90 ff a5                 MOV DPTR,#0xffa5
CODE:6609  f0                       MOVX @DPTR,A
CODE:660a  74 2e                    MOV A,#0x2e
CODE:660c  2f                       ADD A,R7
CODE:660d  f5 82                    MOV DPL,A
CODE:660f  e4                       CLR A
CODE:6610  34 00                    ADDC A,#0x0
CODE:6612  f5 83                    MOV DPH,A
CODE:6614  e0                       MOVX A,@DPTR
CODE:6615  90 ff a6                 MOV DPTR,#0xffa6
CODE:6618  f0                       MOVX @DPTR,A
CODE:6619  74 c3                    MOV A,#0xc3
CODE:661b  2f                       ADD A,R7
CODE:661c  f5 82                    MOV DPL,A
CODE:661e  e4                       CLR A
CODE:661f  34 00                    ADDC A,#0x0
CODE:6621  f5 83                    MOV DPH,A
CODE:6623  e0                       MOVX A,@DPTR
CODE:6624  90 ff a7                 MOV DPTR,#0xffa7
CODE:6627  f0                       MOVX @DPTR,A
CODE:6628  74 58                    MOV A,#0x58
CODE:662a  2f                       ADD A,R7
CODE:662b  f5 82                    MOV DPL,A
CODE:662d  e4                       CLR A
CODE:662e  34 01                    ADDC A,#0x1
CODE:6630  f5 83                    MOV DPH,A
CODE:6632  e0                       MOVX A,@DPTR
CODE:6633  90 ff a8                 MOV DPTR,#0xffa8
CODE:6636  f0                       MOVX @DPTR,A
CODE:6637  74 45                    MOV A,#0x45
CODE:6639  2f                       ADD A,R7
CODE:663a  f5 82                    MOV DPL,A
CODE:663c  e4                       CLR A
CODE:663d  34 00                    ADDC A,#0x0
CODE:663f  f5 83                    MOV DPH,A
CODE:6641  e0                       MOVX A,@DPTR
CODE:6642  90 ff a9                 MOV DPTR,#0xffa9
CODE:6645  f0                       MOVX @DPTR,A
CODE:6646  74 da                    MOV A,#0xda
CODE:6648  2f                       ADD A,R7
CODE:6649  f5 82                    MOV DPL,A
CODE:664b  e4                       CLR A
CODE:664c  34 00                    ADDC A,#0x0
CODE:664e  f5 83                    MOV DPH,A
CODE:6650  e0                       MOVX A,@DPTR
CODE:6651  90 ff aa                 MOV DPTR,#0xffaa
CODE:6654  f0                       MOVX @DPTR,A
CODE:6655  74 6f                    MOV A,#0x6f
CODE:6657  2f                       ADD A,R7
CODE:6658  f5 82                    MOV DPL,A
CODE:665a  e4                       CLR A
CODE:665b  34 01                    ADDC A,#0x1
CODE:665d  f5 83                    MOV DPH,A
CODE:665f  e0                       MOVX A,@DPTR
CODE:6660  90 ff ab                 MOV DPTR,#0xffab
CODE:6663  f0                       MOVX @DPTR,A
CODE:6664  74 5c                    MOV A,#0x5c
CODE:6666  2f                       ADD A,R7
CODE:6667  f5 82                    MOV DPL,A
CODE:6669  e4                       CLR A
CODE:666a  34 00                    ADDC A,#0x0
CODE:666c  f5 83                    MOV DPH,A
CODE:666e  e0                       MOVX A,@DPTR
CODE:666f  90 ff ac                 MOV DPTR,#0xffac
CODE:6672  f0                       MOVX @DPTR,A
CODE:6673  74 f1                    MOV A,#0xf1
CODE:6675  2f                       ADD A,R7
CODE:6676  f5 82                    MOV DPL,A
CODE:6678  e4                       CLR A
CODE:6679  34 00                    ADDC A,#0x0
CODE:667b  f5 83                    MOV DPH,A
CODE:667d  e0                       MOVX A,@DPTR
CODE:667e  90 ff ad                 MOV DPTR,#0xffad
CODE:6681  f0                       MOVX @DPTR,A
CODE:6682  74 86                    MOV A,#0x86
CODE:6684  2f                       ADD A,R7
CODE:6685  f5 82                    MOV DPL,A
CODE:6687  e4                       CLR A
CODE:6688  34 01                    ADDC A,#0x1
CODE:668a  f5 83                    MOV DPH,A
CODE:668c  e0                       MOVX A,@DPTR
CODE:668d  90 ff ae                 MOV DPTR,#0xffae
CODE:6690  f0                       MOVX @DPTR,A
CODE:6691  74 73                    MOV A,#0x73
CODE:6693  2f                       ADD A,R7
CODE:6694  f5 82                    MOV DPL,A
CODE:6696  e4                       CLR A
CODE:6697  34 00                    ADDC A,#0x0
CODE:6699  f5 83                    MOV DPH,A
CODE:669b  e0                       MOVX A,@DPTR
CODE:669c  90 ff af                 MOV DPTR,#0xffaf
CODE:669f  f0                       MOVX @DPTR,A
CODE:66a0  74 08                    MOV A,#0x8
CODE:66a2  2f                       ADD A,R7
CODE:66a3  f5 82                    MOV DPL,A
CODE:66a5  e4                       CLR A
CODE:66a6  34 01                    ADDC A,#0x1
CODE:66a8  f5 83                    MOV DPH,A
CODE:66aa  e0                       MOVX A,@DPTR
CODE:66ab  90 ff b0                 MOV DPTR,#0xffb0
CODE:66ae  f0                       MOVX @DPTR,A
CODE:66af  74 9d                    MOV A,#0x9d
CODE:66b1  2f                       ADD A,R7
CODE:66b2  f5 82                    MOV DPL,A
CODE:66b4  e4                       CLR A
CODE:66b5  34 01                    ADDC A,#0x1
CODE:66b7  f5 83                    MOV DPH,A
CODE:66b9  e0                       MOVX A,@DPTR
CODE:66ba  90 ff b1                 MOV DPTR,#0xffb1
CODE:66bd  f0                       MOVX @DPTR,A
CODE:66be  7f 0a                    MOV R7,#0xa
CODE:66c0  7e 00                    MOV R6,#0x0
CODE:66c2  12 7e 37                 LCALL 0x7e37
CODE:66c5  12 7e 97                 LCALL 0x7e97
CODE:66c8  e5 43                    MOV A,0x43
CODE:66ca  b4 17 00                 CJNE A,#0x17,0x66cd
LAB_CODE_66cd:
CODE:66cd  40 03                    JC 0x66d2   ; XREF: CODE:66ca 
CODE:66cf  02 67 78                 LJMP 0x6778
LAB_CODE_66d2:
CODE:66d2  90 66 d9                 MOV DPTR,#0x66d9   ; XREF: CODE:66cd 
CODE:66d5  f8                       MOV R0,A
CODE:66d6  28                       ADD A,R0
CODE:66d7  28                       ADD A,R0
CODE:66d8  73                       JMP @A+DPTR

; ===== FUNCTION thunk_FUN_CODE_671e @ CODE:66d9 =====
CODE:66d9  02 67 1e                 LJMP 0x671e   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_6722 @ CODE:66dc =====
CODE:66dc  02 67 22                 LJMP 0x6722   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_6726 @ CODE:66df =====
CODE:66df  02 67 26                 LJMP 0x6726   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_672a @ CODE:66e2 =====
CODE:66e2  02 67 2a                 LJMP 0x672a   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_672e @ CODE:66e5 =====
CODE:66e5  02 67 2e                 LJMP 0x672e   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_6732 @ CODE:66e8 =====
CODE:66e8  02 67 32                 LJMP 0x6732   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_6736 @ CODE:66eb =====
CODE:66eb  02 67 36                 LJMP 0x6736   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_673a @ CODE:66ee =====
CODE:66ee  02 67 3a                 LJMP 0x673a   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_673e @ CODE:66f1 =====
CODE:66f1  02 67 3e                 LJMP 0x673e   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_6742 @ CODE:66f4 =====
CODE:66f4  02 67 42                 LJMP 0x6742   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_6746 @ CODE:66f7 =====
CODE:66f7  02 67 46                 LJMP 0x6746   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_674a @ CODE:66fa =====
CODE:66fa  02 67 4a                 LJMP 0x674a   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_674e @ CODE:66fd =====
CODE:66fd  02 67 4e                 LJMP 0x674e   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_6752 @ CODE:6700 =====
CODE:6700  02 67 52                 LJMP 0x6752   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_6756 @ CODE:6703 =====
CODE:6703  02 67 56                 LJMP 0x6756   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_675a @ CODE:6706 =====
CODE:6706  02 67 5a                 LJMP 0x675a   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_675e @ CODE:6709 =====
CODE:6709  02 67 5e                 LJMP 0x675e   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_6762 @ CODE:670c =====
CODE:670c  02 67 62                 LJMP 0x6762   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_6766 @ CODE:670f =====
CODE:670f  02 67 66                 LJMP 0x6766   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_676a @ CODE:6712 =====
CODE:6712  02 67 6a                 LJMP 0x676a   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_676e @ CODE:6715 =====
CODE:6715  02 67 6e                 LJMP 0x676e   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_6772 @ CODE:6718 =====
CODE:6718  02 67 72                 LJMP 0x6772   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_6776 @ CODE:671b =====
CODE:671b  02 67 76                 LJMP 0x6776   ; XREF: Entry Point 

; ===== FUNCTION FUN_CODE_671e @ CODE:671e =====
CODE:671e  d2 b1                    SETB 0xb1   ; XREF: CODE:66d9 Entry Point 
CODE:6720  80 56                    SJMP 0x6778

; ===== FUNCTION FUN_CODE_6722 @ CODE:6722 =====
CODE:6722  d2 c0                    SETB 0xc0   ; XREF: CODE:66dc Entry Point 
CODE:6724  80 52                    SJMP 0x6778

; ===== FUNCTION FUN_CODE_6726 @ CODE:6726 =====
CODE:6726  d2 c1                    SETB 0xc1   ; XREF: CODE:66df Entry Point 
CODE:6728  80 4e                    SJMP 0x6778

; ===== FUNCTION FUN_CODE_672a @ CODE:672a =====
CODE:672a  d2 c2                    SETB 0xc2   ; XREF: CODE:66e2 Entry Point 
CODE:672c  80 4a                    SJMP 0x6778

; ===== FUNCTION FUN_CODE_672e @ CODE:672e =====
CODE:672e  d2 c3                    SETB 0xc3   ; XREF: CODE:66e5 Entry Point 
CODE:6730  80 46                    SJMP 0x6778

; ===== FUNCTION FUN_CODE_6732 @ CODE:6732 =====
CODE:6732  d2 c4                    SETB 0xc4   ; XREF: CODE:66e8 Entry Point 
CODE:6734  80 42                    SJMP 0x6778

; ===== FUNCTION FUN_CODE_6736 @ CODE:6736 =====
CODE:6736  d2 c5                    SETB 0xc5   ; XREF: CODE:66eb Entry Point 
CODE:6738  80 3e                    SJMP 0x6778

; ===== FUNCTION FUN_CODE_673a @ CODE:673a =====
CODE:673a  d2 c6                    SETB 0xc6   ; XREF: CODE:66ee Entry Point 
CODE:673c  80 3a                    SJMP 0x6778

; ===== FUNCTION FUN_CODE_673e @ CODE:673e =====
CODE:673e  d2 c7                    SETB 0xc7   ; XREF: CODE:66f1 Entry Point 
CODE:6740  80 36                    SJMP 0x6778

; ===== FUNCTION FUN_CODE_6742 @ CODE:6742 =====
CODE:6742  d2 88                    SETB 0x88   ; XREF: CODE:66f4 Entry Point 
CODE:6744  80 32                    SJMP 0x6778

; ===== FUNCTION FUN_CODE_6746 @ CODE:6746 =====
CODE:6746  d2 89                    SETB 0x89   ; XREF: CODE:66f7 Entry Point 
CODE:6748  80 2e                    SJMP 0x6778

; ===== FUNCTION FUN_CODE_674a @ CODE:674a =====
CODE:674a  d2 8a                    SETB 0x8a   ; XREF: CODE:66fa Entry Point 
CODE:674c  80 2a                    SJMP 0x6778

; ===== FUNCTION FUN_CODE_674e @ CODE:674e =====
CODE:674e  d2 8f                    SETB 0x8f   ; XREF: CODE:66fd Entry Point 
CODE:6750  80 26                    SJMP 0x6778

; ===== FUNCTION FUN_CODE_6752 @ CODE:6752 =====
CODE:6752  d2 b0                    SETB 0xb0   ; XREF: CODE:6700 Entry Point 
CODE:6754  80 22                    SJMP 0x6778

; ===== FUNCTION FUN_CODE_6756 @ CODE:6756 =====
CODE:6756  d2 b4                    SETB 0xb4   ; XREF: CODE:6703 Entry Point 
CODE:6758  80 1e                    SJMP 0x6778

; ===== FUNCTION FUN_CODE_675a @ CODE:675a =====
CODE:675a  d2 b2                    SETB 0xb2   ; XREF: CODE:6706 Entry Point 
CODE:675c  80 1a                    SJMP 0x6778

; ===== FUNCTION FUN_CODE_675e @ CODE:675e =====
CODE:675e  d2 b3                    SETB 0xb3   ; XREF: CODE:6709 Entry Point 
CODE:6760  80 16                    SJMP 0x6778

; ===== FUNCTION FUN_CODE_6762 @ CODE:6762 =====
CODE:6762  d2 b5                    SETB 0xb5   ; XREF: CODE:670c Entry Point 
CODE:6764  80 12                    SJMP 0x6778

; ===== FUNCTION FUN_CODE_6766 @ CODE:6766 =====
CODE:6766  d2 b6                    SETB 0xb6   ; XREF: CODE:670f Entry Point 
CODE:6768  80 0e                    SJMP 0x6778

; ===== FUNCTION FUN_CODE_676a @ CODE:676a =====
CODE:676a  d2 fc                    SETB 0xfc   ; XREF: CODE:6712 Entry Point 
CODE:676c  80 0a                    SJMP 0x6778

; ===== FUNCTION FUN_CODE_676e @ CODE:676e =====
CODE:676e  d2 85                    SETB 0x85   ; XREF: CODE:6715 Entry Point 
CODE:6770  80 06                    SJMP 0x6778

; ===== FUNCTION FUN_CODE_6772 @ CODE:6772 =====
CODE:6772  d2 86                    SETB 0x86   ; XREF: CODE:6718 Entry Point 
CODE:6774  80 02                    SJMP 0x6778

; ===== FUNCTION FUN_CODE_6776 @ CODE:6776 =====
CODE:6776  d2 87                    SETB 0x87   ; XREF: CODE:671b Entry Point 
LAB_CODE_6778:
CODE:6778  78 76                    MOV R0,#0x76   ; XREF: CODE:66cf CODE:6720 CODE:6724 CODE:6728 CODE:672c CODE:6730 CODE:6734 CODE:6738 CODE:673c CODE:6740 CODE:6744 CODE:6748 CODE:674c CODE:6750 CODE:6754 CODE:6758 CODE:675c CODE:6760 CODE:6764 CODE:6768 CODE:676c CODE:6770 CODE:6774 
CODE:677a  e6                       MOV A,@R0
CODE:677b  ff                       MOV R7,A
CODE:677c  64 02                    XRL A,#0x2
CODE:677e  60 05                    JZ 0x6785
CODE:6780  ef                       MOV A,R7
CODE:6781  64 04                    XRL A,#0x4
CODE:6783  70 2e                    JNZ 0x67b3
LAB_CODE_6785:
CODE:6785  d2 b1                    SETB 0xb1   ; XREF: CODE:677e 
CODE:6787  d2 c0                    SETB 0xc0
CODE:6789  d2 c1                    SETB 0xc1
CODE:678b  d2 c2                    SETB 0xc2
CODE:678d  d2 c3                    SETB 0xc3
CODE:678f  d2 c4                    SETB 0xc4
CODE:6791  d2 c5                    SETB 0xc5
CODE:6793  d2 c6                    SETB 0xc6
CODE:6795  d2 c7                    SETB 0xc7
CODE:6797  d2 88                    SETB 0x88
CODE:6799  d2 89                    SETB 0x89
CODE:679b  d2 8a                    SETB 0x8a
CODE:679d  d2 8f                    SETB 0x8f
CODE:679f  d2 b0                    SETB 0xb0
CODE:67a1  d2 b4                    SETB 0xb4
CODE:67a3  d2 b2                    SETB 0xb2
CODE:67a5  d2 b3                    SETB 0xb3
CODE:67a7  d2 b5                    SETB 0xb5
CODE:67a9  d2 b6                    SETB 0xb6
CODE:67ab  d2 fc                    SETB 0xfc
CODE:67ad  d2 85                    SETB 0x85
CODE:67af  d2 86                    SETB 0x86
CODE:67b1  d2 87                    SETB 0x87
LAB_CODE_67b3:
CODE:67b3  22                       RET   ; XREF: CODE:6783 

; ===== FUNCTION FUN_CODE_6b90 @ CODE:6b90 =====
CODE:6b90  90 03 2a                 MOV DPTR,#0x32a   ; XREF: Entry Point CODE:7c67 
CODE:6b93  e5 92                    MOV A,0x92
CODE:6b95  f0                       MOVX @DPTR,A
CODE:6b96  e0                       MOVX A,@DPTR
CODE:6b97  70 03                    JNZ 0x6b9c
CODE:6b99  02 6c e2                 LJMP 0x6ce2
LAB_CODE_6b9c:
CODE:6b9c  20 e3 03                 JB 0xe3,0x6ba2   ; XREF: CODE:6b97 
CODE:6b9f  02 6c 98                 LJMP 0x6c98
LAB_CODE_6ba2:
CODE:6ba2  53 92 f7                 ANL 0x92,#0xf7   ; XREF: CODE:6b9c 
CODE:6ba5  d2 1f                    SETB 0x1f
CODE:6ba7  78 5d                    MOV R0,#0x5d
CODE:6ba9  06                       INC @R0
CODE:6baa  e6                       MOV A,@R0
CODE:6bab  d3                       SETB CY
CODE:6bac  94 fe                    SUBB A,#0xfe
CODE:6bae  40 02                    JC 0x6bb2
CODE:6bb0  e4                       CLR A
CODE:6bb1  f6                       MOV @R0,A
LAB_CODE_6bb2:
CODE:6bb2  30 1e 03                 JNB 0x1e,0x6bb8   ; XREF: CODE:6bae 
CODE:6bb5  02 6c 4b                 LJMP 0x6c4b
LAB_CODE_6bb8:
CODE:6bb8  78 7b                    MOV R0,#0x7b   ; XREF: CODE:6bb2 
CODE:6bba  e6                       MOV A,@R0
CODE:6bbb  64 02                    XRL A,#0x2
CODE:6bbd  60 03                    JZ 0x6bc2
CODE:6bbf  02 6c 4b                 LJMP 0x6c4b
LAB_CODE_6bc2:
CODE:6bc2  78 7c                    MOV R0,#0x7c   ; XREF: CODE:6bbd 
CODE:6bc4  06                       INC @R0
CODE:6bc5  e6                       MOV A,@R0
CODE:6bc6  d3                       SETB CY
CODE:6bc7  94 05                    SUBB A,#0x5
CODE:6bc9  40 73                    JC 0x6c3e
CODE:6bcb  e4                       CLR A
CODE:6bcc  f6                       MOV @R0,A
CODE:6bcd  20 19 38                 JB 0x19,0x6c08
CODE:6bd0  78 7e                    MOV R0,#0x7e
CODE:6bd2  e6                       MOV A,@R0
CODE:6bd3  ff                       MOV R7,A
CODE:6bd4  b4 fe 0c                 CJNE A,#0xfe,0x6be3
CODE:6bd7  18                       DEC R0
CODE:6bd8  06                       INC @R0
CODE:6bd9  e6                       MOV A,@R0
CODE:6bda  d3                       SETB CY
CODE:6bdb  94 05                    SUBB A,#0x5
CODE:6bdd  40 17                    JC 0x6bf6
CODE:6bdf  e4                       CLR A
CODE:6be0  f6                       MOV @R0,A
CODE:6be1  80 16                    SJMP 0x6bf9
LAB_CODE_6be3:
CODE:6be3  ef                       MOV A,R7   ; XREF: CODE:6bd4 
CODE:6be4  d3                       SETB CY
CODE:6be5  94 fa                    SUBB A,#0xfa
CODE:6be7  40 10                    JC 0x6bf9
CODE:6be9  78 7d                    MOV R0,#0x7d
CODE:6beb  06                       INC @R0
CODE:6bec  e6                       MOV A,@R0
CODE:6bed  d3                       SETB CY
CODE:6bee  94 02                    SUBB A,#0x2
CODE:6bf0  40 04                    JC 0x6bf6
CODE:6bf2  e4                       CLR A
CODE:6bf3  f6                       MOV @R0,A
CODE:6bf4  80 03                    SJMP 0x6bf9
LAB_CODE_6bf6:
CODE:6bf6  78 7e                    MOV R0,#0x7e   ; XREF: CODE:6bdd CODE:6bf0 
CODE:6bf8  16                       DEC @R0
LAB_CODE_6bf9:
CODE:6bf9  78 7e                    MOV R0,#0x7e   ; XREF: CODE:6be1 CODE:6be7 CODE:6bf4 
CODE:6bfb  06                       INC @R0
CODE:6bfc  e6                       MOV A,@R0
CODE:6bfd  d3                       SETB CY
CODE:6bfe  94 fe                    SUBB A,#0xfe
CODE:6c00  40 3c                    JC 0x6c3e
CODE:6c02  76 fe                    MOV @R0,#0xfe
CODE:6c04  d2 19                    SETB 0x19
CODE:6c06  80 36                    SJMP 0x6c3e
LAB_CODE_6c08:
CODE:6c08  78 7e                    MOV R0,#0x7e   ; XREF: CODE:6bcd 
CODE:6c0a  e6                       MOV A,@R0
CODE:6c0b  ff                       MOV R7,A
CODE:6c0c  b4 fe 0c                 CJNE A,#0xfe,0x6c1b
CODE:6c0f  18                       DEC R0
CODE:6c10  06                       INC @R0
CODE:6c11  e6                       MOV A,@R0
CODE:6c12  d3                       SETB CY
CODE:6c13  94 05                    SUBB A,#0x5
CODE:6c15  40 17                    JC 0x6c2e
CODE:6c17  e4                       CLR A
CODE:6c18  f6                       MOV @R0,A
CODE:6c19  80 16                    SJMP 0x6c31
LAB_CODE_6c1b:
CODE:6c1b  ef                       MOV A,R7   ; XREF: CODE:6c0c 
CODE:6c1c  d3                       SETB CY
CODE:6c1d  94 fa                    SUBB A,#0xfa
CODE:6c1f  40 10                    JC 0x6c31
CODE:6c21  78 7d                    MOV R0,#0x7d
CODE:6c23  06                       INC @R0
CODE:6c24  e6                       MOV A,@R0
CODE:6c25  d3                       SETB CY
CODE:6c26  94 02                    SUBB A,#0x2
CODE:6c28  40 04                    JC 0x6c2e
CODE:6c2a  e4                       CLR A
CODE:6c2b  f6                       MOV @R0,A
CODE:6c2c  80 03                    SJMP 0x6c31
LAB_CODE_6c2e:
CODE:6c2e  78 7e                    MOV R0,#0x7e   ; XREF: CODE:6c15 CODE:6c28 
CODE:6c30  06                       INC @R0
LAB_CODE_6c31:
CODE:6c31  78 7e                    MOV R0,#0x7e   ; XREF: CODE:6c19 CODE:6c1f CODE:6c2c 
CODE:6c33  e6                       MOV A,@R0
CODE:6c34  d3                       SETB CY
CODE:6c35  94 01                    SUBB A,#0x1
CODE:6c37  40 03                    JC 0x6c3c
CODE:6c39  16                       DEC @R0
CODE:6c3a  80 02                    SJMP 0x6c3e
LAB_CODE_6c3c:
CODE:6c3c  c2 19                    CLR 0x19   ; XREF: CODE:6c37 
LAB_CODE_6c3e:
CODE:6c3e  90 ff 94                 MOV DPTR,#0xff94   ; XREF: CODE:6bc9 CODE:6c00 CODE:6c06 CODE:6c3a 
CODE:6c41  74 08                    MOV A,#0x8
CODE:6c43  f0                       MOVX @DPTR,A
CODE:6c44  78 7e                    MOV R0,#0x7e
CODE:6c46  e6                       MOV A,@R0
CODE:6c47  90 ff b4                 MOV DPTR,#0xffb4
CODE:6c4a  f0                       MOVX @DPTR,A
LAB_CODE_6c4b:
CODE:6c4b  30 17 1c                 JNB 0x17,0x6c6a   ; XREF: CODE:6bb5 CODE:6bbf 
CODE:6c4e  78 79                    MOV R0,#0x79
CODE:6c50  06                       INC @R0
CODE:6c51  e6                       MOV A,@R0
CODE:6c52  18                       DEC R0
CODE:6c53  70 01                    JNZ 0x6c56
CODE:6c55  06                       INC @R0
LAB_CODE_6c56:
CODE:6c56  d3                       SETB CY   ; XREF: CODE:6c53 
CODE:6c57  78 79                    MOV R0,#0x79
CODE:6c59  e6                       MOV A,@R0
CODE:6c5a  94 b8                    SUBB A,#0xb8
CODE:6c5c  18                       DEC R0
CODE:6c5d  e6                       MOV A,@R0
CODE:6c5e  94 0b                    SUBB A,#0xb
CODE:6c60  40 08                    JC 0x6c6a
CODE:6c62  c2 17                    CLR 0x17
CODE:6c64  e4                       CLR A
CODE:6c65  f6                       MOV @R0,A
CODE:6c66  08                       INC R0
CODE:6c67  f6                       MOV @R0,A
CODE:6c68  d2 1b                    SETB 0x1b
LAB_CODE_6c6a:
CODE:6c6a  e5 0b                    MOV A,0x0b   ; XREF: CODE:6c4b CODE:6c60 
CODE:6c6c  45 0a                    ORL A,0x0a
CODE:6c6e  60 08                    JZ 0x6c78
CODE:6c70  e5 0b                    MOV A,0x0b
CODE:6c72  15 0b                    DEC 0x0b
CODE:6c74  70 02                    JNZ 0x6c78
CODE:6c76  15 0a                    DEC 0x0a
LAB_CODE_6c78:
CODE:6c78  c3                       CLR CY   ; XREF: CODE:6c6e CODE:6c74 
CODE:6c79  e5 15                    MOV A,0x15
CODE:6c7b  94 f4                    SUBB A,#0xf4
CODE:6c7d  e5 14                    MOV A,0x14
CODE:6c7f  94 01                    SUBB A,#0x1
CODE:6c81  40 0c                    JC 0x6c8f
CODE:6c83  20 20 03                 JB 0x20,0x6c89
CODE:6c86  02 6d 2d                 LJMP 0x6d2d
LAB_CODE_6c89:
CODE:6c89  c2 20                    CLR 0x20   ; XREF: CODE:6c83 
CODE:6c8b  43 a8 01                 ORL 0xa8,#0x1
CODE:6c8e  22                       RET
LAB_CODE_6c8f:
CODE:6c8f  05 15                    INC 0x15   ; XREF: CODE:6c81 
CODE:6c91  e5 15                    MOV A,0x15
CODE:6c93  70 02                    JNZ 0x6c97
CODE:6c95  05 14                    INC 0x14
LAB_CODE_6c97:
CODE:6c97  22                       RET   ; XREF: CODE:6c93 
LAB_CODE_6c98:
CODE:6c98  53 92 e7                 ANL 0x92,#0xe7   ; XREF: CODE:6b9f 
CODE:6c9b  53 92 9f                 ANL 0x92,#0x9f
CODE:6c9e  90 03 2a                 MOV DPTR,#0x32a
CODE:6ca1  e0                       MOVX A,@DPTR
CODE:6ca2  ff                       MOV R7,A
CODE:6ca3  30 e7 04                 JNB 0xe7,0x6caa
CODE:6ca6  53 92 7f                 ANL 0x92,#0x7f
CODE:6ca9  22                       RET
LAB_CODE_6caa:
CODE:6caa  ef                       MOV A,R7   ; XREF: CODE:6ca3 
CODE:6cab  30 e4 03                 JNB 0xe4,0x6cb1
CODE:6cae  02 79 56                 LJMP 0x7956
LAB_CODE_6cb1:
CODE:6cb1  90 03 2a                 MOV DPTR,#0x32a   ; XREF: CODE:6cab 
CODE:6cb4  e0                       MOVX A,@DPTR
CODE:6cb5  ff                       MOV R7,A
CODE:6cb6  30 e2 04                 JNB 0xe2,0x6cbd
CODE:6cb9  53 92 fb                 ANL 0x92,#0xfb
CODE:6cbc  22                       RET
LAB_CODE_6cbd:
CODE:6cbd  ef                       MOV A,R7   ; XREF: CODE:6cb6 
CODE:6cbe  30 e1 06                 JNB 0xe1,0x6cc7
CODE:6cc1  53 92 fd                 ANL 0x92,#0xfd
CODE:6cc4  02 82 01                 LJMP 0x8201
LAB_CODE_6cc7:
CODE:6cc7  90 03 2a                 MOV DPTR,#0x32a   ; XREF: CODE:6cbe 
CODE:6cca  e0                       MOVX A,@DPTR
CODE:6ccb  30 e0 5f                 JNB 0xe0,0x6d2d
CODE:6cce  53 92 fe                 ANL 0x92,#0xfe
CODE:6cd1  43 91 20                 ORL 0x91,#0x20
CODE:6cd4  00                       NOP
CODE:6cd5  00                       NOP
CODE:6cd6  00                       NOP
CODE:6cd7  00                       NOP
CODE:6cd8  00                       NOP
CODE:6cd9  00                       NOP
CODE:6cda  53 91 df                 ANL 0x91,#0xdf
CODE:6cdd  12 81 d9                 LCALL 0x81d9
CODE:6ce0  80 26                    SJMP 0x6d08
LAB_CODE_6ce2:
CODE:6ce2  90 03 2b                 MOV DPTR,#0x32b   ; XREF: CODE:6b99 
CODE:6ce5  e5 93                    MOV A,0x93
CODE:6ce7  f0                       MOVX @DPTR,A
CODE:6ce8  e0                       MOVX A,@DPTR
CODE:6ce9  ff                       MOV R7,A
CODE:6cea  60 41                    JZ 0x6d2d
CODE:6cec  30 e6 07                 JNB 0xe6,0x6cf6
CODE:6cef  53 93 bf                 ANL 0x93,#0xbf
CODE:6cf2  43 9a 01                 ORL 0x9a,#0x1
CODE:6cf5  22                       RET
LAB_CODE_6cf6:
CODE:6cf6  ef                       MOV A,R7   ; XREF: CODE:6cec 
CODE:6cf7  30 e5 04                 JNB 0xe5,0x6cfe
CODE:6cfa  53 93 df                 ANL 0x93,#0xdf
CODE:6cfd  22                       RET
LAB_CODE_6cfe:
CODE:6cfe  ef                       MOV A,R7   ; XREF: CODE:6cf7 
CODE:6cff  30 e4 0d                 JNB 0xe4,0x6d0f
CODE:6d02  53 93 ef                 ANL 0x93,#0xef
CODE:6d05  12 83 06                 LCALL 0x8306
LAB_CODE_6d08:
CODE:6d08  53 92 bf                 ANL 0x92,#0xbf   ; XREF: CODE:6ce0 
CODE:6d0b  43 97 01                 ORL 0x97,#0x1
CODE:6d0e  22                       RET
LAB_CODE_6d0f:
CODE:6d0f  90 03 2b                 MOV DPTR,#0x32b   ; XREF: CODE:6cff 
CODE:6d12  e0                       MOVX A,@DPTR
CODE:6d13  ff                       MOV R7,A
CODE:6d14  30 e2 04                 JNB 0xe2,0x6d1b
CODE:6d17  53 93 fb                 ANL 0x93,#0xfb
CODE:6d1a  22                       RET
LAB_CODE_6d1b:
CODE:6d1b  ef                       MOV A,R7   ; XREF: CODE:6d14 
CODE:6d1c  30 e1 04                 JNB 0xe1,0x6d23
CODE:6d1f  53 93 fd                 ANL 0x93,#0xfd
CODE:6d22  22                       RET
LAB_CODE_6d23:
CODE:6d23  ef                       MOV A,R7   ; XREF: CODE:6d1c 
CODE:6d24  30 e0 06                 JNB 0xe0,0x6d2d
CODE:6d27  53 93 fe                 ANL 0x93,#0xfe
CODE:6d2a  12 7c ca                 LCALL 0x7cca
LAB_CODE_6d2d:
CODE:6d2d  22                       RET   ; XREF: CODE:6c86 CODE:6ccb CODE:6cea CODE:6d24 

; ===== FUNCTION FUN_CODE_6d2e @ CODE:6d2e =====
CODE:6d2e  78 76                    MOV R0,#0x76   ; XREF: CODE:3942 Entry Point 
CODE:6d30  e6                       MOV A,@R0
CODE:6d31  fe                       MOV R6,A
CODE:6d32  64 10                    XRL A,#0x10
CODE:6d34  70 60                    JNZ 0x6d96
CODE:6d36  ff                       MOV R7,A
LAB_CODE_6d37:
CODE:6d37  75 f0 03                 MOV B,#0x3   ; XREF: CODE:6d92 
CODE:6d3a  ef                       MOV A,R7
CODE:6d3b  a4                       MUL AB
CODE:6d3c  24 00                    ADD A,#0x0
CODE:6d3e  f5 82                    MOV DPL,A
CODE:6d40  e5 f0                    MOV A,B
CODE:6d42  34 ba                    ADDC A,#0xba
CODE:6d44  f5 83                    MOV DPH,A
CODE:6d46  e4                       CLR A
CODE:6d47  93                       MOVC A,@A+DPTR
CODE:6d48  fd                       MOV R5,A
CODE:6d49  74 00                    MOV A,#0x0
CODE:6d4b  2f                       ADD A,R7
CODE:6d4c  f5 82                    MOV DPL,A
CODE:6d4e  e4                       CLR A
CODE:6d4f  34 00                    ADDC A,#0x0
CODE:6d51  f5 83                    MOV DPH,A
CODE:6d53  ed                       MOV A,R5
CODE:6d54  f0                       MOVX @DPTR,A
CODE:6d55  75 f0 03                 MOV B,#0x3
CODE:6d58  ef                       MOV A,R7
CODE:6d59  a4                       MUL AB
CODE:6d5a  24 01                    ADD A,#0x1
CODE:6d5c  f5 82                    MOV DPL,A
CODE:6d5e  e5 f0                    MOV A,B
CODE:6d60  34 ba                    ADDC A,#0xba
CODE:6d62  f5 83                    MOV DPH,A
CODE:6d64  e4                       CLR A
CODE:6d65  93                       MOVC A,@A+DPTR
CODE:6d66  fd                       MOV R5,A
CODE:6d67  74 95                    MOV A,#0x95
CODE:6d69  2f                       ADD A,R7
CODE:6d6a  f5 82                    MOV DPL,A
CODE:6d6c  e4                       CLR A
CODE:6d6d  34 00                    ADDC A,#0x0
CODE:6d6f  f5 83                    MOV DPH,A
CODE:6d71  ed                       MOV A,R5
CODE:6d72  f0                       MOVX @DPTR,A
CODE:6d73  75 f0 03                 MOV B,#0x3
CODE:6d76  ef                       MOV A,R7
CODE:6d77  a4                       MUL AB
CODE:6d78  24 02                    ADD A,#0x2
CODE:6d7a  f5 82                    MOV DPL,A
CODE:6d7c  e5 f0                    MOV A,B
CODE:6d7e  34 ba                    ADDC A,#0xba
CODE:6d80  f5 83                    MOV DPH,A
CODE:6d82  e4                       CLR A
CODE:6d83  93                       MOVC A,@A+DPTR
CODE:6d84  fd                       MOV R5,A
CODE:6d85  74 2a                    MOV A,#0x2a
CODE:6d87  2f                       ADD A,R7
CODE:6d88  f5 82                    MOV DPL,A
CODE:6d8a  e4                       CLR A
CODE:6d8b  34 01                    ADDC A,#0x1
CODE:6d8d  f5 83                    MOV DPH,A
CODE:6d8f  ed                       MOV A,R5
CODE:6d90  f0                       MOVX @DPTR,A
CODE:6d91  0f                       INC R7
CODE:6d92  bf 8a a2                 CJNE R7,#0x8a,0x6d37
CODE:6d95  22                       RET
LAB_CODE_6d96:
CODE:6d96  ee                       MOV A,R6   ; XREF: CODE:6d34 
CODE:6d97  64 11                    XRL A,#0x11
CODE:6d99  70 60                    JNZ 0x6dfb
CODE:6d9b  ff                       MOV R7,A
LAB_CODE_6d9c:
CODE:6d9c  75 f0 03                 MOV B,#0x3   ; XREF: CODE:6df7 
CODE:6d9f  ef                       MOV A,R7
CODE:6da0  a4                       MUL AB
CODE:6da1  24 00                    ADD A,#0x0
CODE:6da3  f5 82                    MOV DPL,A
CODE:6da5  e5 f0                    MOV A,B
CODE:6da7  34 bc                    ADDC A,#0xbc
CODE:6da9  f5 83                    MOV DPH,A
CODE:6dab  e4                       CLR A
CODE:6dac  93                       MOVC A,@A+DPTR
CODE:6dad  fe                       MOV R6,A
CODE:6dae  74 00                    MOV A,#0x0
CODE:6db0  2f                       ADD A,R7
CODE:6db1  f5 82                    MOV DPL,A
CODE:6db3  e4                       CLR A
CODE:6db4  34 00                    ADDC A,#0x0
CODE:6db6  f5 83                    MOV DPH,A
CODE:6db8  ee                       MOV A,R6
CODE:6db9  f0                       MOVX @DPTR,A
CODE:6dba  75 f0 03                 MOV B,#0x3
CODE:6dbd  ef                       MOV A,R7
CODE:6dbe  a4                       MUL AB
CODE:6dbf  24 01                    ADD A,#0x1
CODE:6dc1  f5 82                    MOV DPL,A
CODE:6dc3  e5 f0                    MOV A,B
CODE:6dc5  34 bc                    ADDC A,#0xbc
CODE:6dc7  f5 83                    MOV DPH,A
CODE:6dc9  e4                       CLR A
CODE:6dca  93                       MOVC A,@A+DPTR
CODE:6dcb  fe                       MOV R6,A
CODE:6dcc  74 95                    MOV A,#0x95
CODE:6dce  2f                       ADD A,R7
CODE:6dcf  f5 82                    MOV DPL,A
CODE:6dd1  e4                       CLR A
CODE:6dd2  34 00                    ADDC A,#0x0
CODE:6dd4  f5 83                    MOV DPH,A
CODE:6dd6  ee                       MOV A,R6
CODE:6dd7  f0                       MOVX @DPTR,A
CODE:6dd8  75 f0 03                 MOV B,#0x3
CODE:6ddb  ef                       MOV A,R7
CODE:6ddc  a4                       MUL AB
CODE:6ddd  24 02                    ADD A,#0x2
CODE:6ddf  f5 82                    MOV DPL,A
CODE:6de1  e5 f0                    MOV A,B
CODE:6de3  34 bc                    ADDC A,#0xbc
CODE:6de5  f5 83                    MOV DPH,A
CODE:6de7  e4                       CLR A
CODE:6de8  93                       MOVC A,@A+DPTR
CODE:6de9  fe                       MOV R6,A
CODE:6dea  74 2a                    MOV A,#0x2a
CODE:6dec  2f                       ADD A,R7
CODE:6ded  f5 82                    MOV DPL,A
CODE:6def  e4                       CLR A
CODE:6df0  34 01                    ADDC A,#0x1
CODE:6df2  f5 83                    MOV DPH,A
CODE:6df4  ee                       MOV A,R6
CODE:6df5  f0                       MOVX @DPTR,A
CODE:6df6  0f                       INC R7
CODE:6df7  bf 8a a2                 CJNE R7,#0x8a,0x6d9c
CODE:6dfa  22                       RET
LAB_CODE_6dfb:
CODE:6dfb  78 76                    MOV R0,#0x76   ; XREF: CODE:6d99 
CODE:6dfd  e6                       MOV A,@R0
CODE:6dfe  fe                       MOV R6,A
CODE:6dff  64 12                    XRL A,#0x12
CODE:6e01  70 60                    JNZ 0x6e63
CODE:6e03  ff                       MOV R7,A
LAB_CODE_6e04:
CODE:6e04  75 f0 03                 MOV B,#0x3   ; XREF: CODE:6e5f 
CODE:6e07  ef                       MOV A,R7
CODE:6e08  a4                       MUL AB
CODE:6e09  24 00                    ADD A,#0x0
CODE:6e0b  f5 82                    MOV DPL,A
CODE:6e0d  e5 f0                    MOV A,B
CODE:6e0f  34 be                    ADDC A,#0xbe
CODE:6e11  f5 83                    MOV DPH,A
CODE:6e13  e4                       CLR A
CODE:6e14  93                       MOVC A,@A+DPTR
CODE:6e15  fd                       MOV R5,A
CODE:6e16  74 00                    MOV A,#0x0
CODE:6e18  2f                       ADD A,R7
CODE:6e19  f5 82                    MOV DPL,A
CODE:6e1b  e4                       CLR A
CODE:6e1c  34 00                    ADDC A,#0x0
CODE:6e1e  f5 83                    MOV DPH,A
CODE:6e20  ed                       MOV A,R5
CODE:6e21  f0                       MOVX @DPTR,A
CODE:6e22  75 f0 03                 MOV B,#0x3
CODE:6e25  ef                       MOV A,R7
CODE:6e26  a4                       MUL AB
CODE:6e27  24 01                    ADD A,#0x1
CODE:6e29  f5 82                    MOV DPL,A
CODE:6e2b  e5 f0                    MOV A,B
CODE:6e2d  34 be                    ADDC A,#0xbe
CODE:6e2f  f5 83                    MOV DPH,A
CODE:6e31  e4                       CLR A
CODE:6e32  93                       MOVC A,@A+DPTR
CODE:6e33  fd                       MOV R5,A
CODE:6e34  74 95                    MOV A,#0x95
CODE:6e36  2f                       ADD A,R7
CODE:6e37  f5 82                    MOV DPL,A
CODE:6e39  e4                       CLR A
CODE:6e3a  34 00                    ADDC A,#0x0
CODE:6e3c  f5 83                    MOV DPH,A
CODE:6e3e  ed                       MOV A,R5
CODE:6e3f  f0                       MOVX @DPTR,A
CODE:6e40  75 f0 03                 MOV B,#0x3
CODE:6e43  ef                       MOV A,R7
CODE:6e44  a4                       MUL AB
CODE:6e45  24 02                    ADD A,#0x2
CODE:6e47  f5 82                    MOV DPL,A
CODE:6e49  e5 f0                    MOV A,B
CODE:6e4b  34 be                    ADDC A,#0xbe
CODE:6e4d  f5 83                    MOV DPH,A
CODE:6e4f  e4                       CLR A
CODE:6e50  93                       MOVC A,@A+DPTR
CODE:6e51  fd                       MOV R5,A
CODE:6e52  74 2a                    MOV A,#0x2a
CODE:6e54  2f                       ADD A,R7
CODE:6e55  f5 82                    MOV DPL,A
CODE:6e57  e4                       CLR A
CODE:6e58  34 01                    ADDC A,#0x1
CODE:6e5a  f5 83                    MOV DPH,A
CODE:6e5c  ed                       MOV A,R5
CODE:6e5d  f0                       MOVX @DPTR,A
CODE:6e5e  0f                       INC R7
CODE:6e5f  bf 8a a2                 CJNE R7,#0x8a,0x6e04
CODE:6e62  22                       RET
LAB_CODE_6e63:
CODE:6e63  ee                       MOV A,R6   ; XREF: CODE:6e01 
CODE:6e64  64 13                    XRL A,#0x13
CODE:6e66  70 5f                    JNZ 0x6ec7
CODE:6e68  ff                       MOV R7,A
LAB_CODE_6e69:
CODE:6e69  75 f0 03                 MOV B,#0x3   ; XREF: CODE:6ec4 
CODE:6e6c  ef                       MOV A,R7
CODE:6e6d  a4                       MUL AB
CODE:6e6e  24 00                    ADD A,#0x0
CODE:6e70  f5 82                    MOV DPL,A
CODE:6e72  e5 f0                    MOV A,B
CODE:6e74  34 c0                    ADDC A,#0xc0
CODE:6e76  f5 83                    MOV DPH,A
CODE:6e78  e4                       CLR A
CODE:6e79  93                       MOVC A,@A+DPTR
CODE:6e7a  fe                       MOV R6,A
CODE:6e7b  74 00                    MOV A,#0x0
CODE:6e7d  2f                       ADD A,R7
CODE:6e7e  f5 82                    MOV DPL,A
CODE:6e80  e4                       CLR A
CODE:6e81  34 00                    ADDC A,#0x0
CODE:6e83  f5 83                    MOV DPH,A
CODE:6e85  ee                       MOV A,R6
CODE:6e86  f0                       MOVX @DPTR,A
CODE:6e87  75 f0 03                 MOV B,#0x3
CODE:6e8a  ef                       MOV A,R7
CODE:6e8b  a4                       MUL AB
CODE:6e8c  24 01                    ADD A,#0x1
CODE:6e8e  f5 82                    MOV DPL,A
CODE:6e90  e5 f0                    MOV A,B
CODE:6e92  34 c0                    ADDC A,#0xc0
CODE:6e94  f5 83                    MOV DPH,A
CODE:6e96  e4                       CLR A
CODE:6e97  93                       MOVC A,@A+DPTR
CODE:6e98  fe                       MOV R6,A
CODE:6e99  74 95                    MOV A,#0x95
CODE:6e9b  2f                       ADD A,R7
CODE:6e9c  f5 82                    MOV DPL,A
CODE:6e9e  e4                       CLR A
CODE:6e9f  34 00                    ADDC A,#0x0
CODE:6ea1  f5 83                    MOV DPH,A
CODE:6ea3  ee                       MOV A,R6
CODE:6ea4  f0                       MOVX @DPTR,A
CODE:6ea5  75 f0 03                 MOV B,#0x3
CODE:6ea8  ef                       MOV A,R7
CODE:6ea9  a4                       MUL AB
CODE:6eaa  24 02                    ADD A,#0x2
CODE:6eac  f5 82                    MOV DPL,A
CODE:6eae  e5 f0                    MOV A,B
CODE:6eb0  34 c0                    ADDC A,#0xc0
CODE:6eb2  f5 83                    MOV DPH,A
CODE:6eb4  e4                       CLR A
CODE:6eb5  93                       MOVC A,@A+DPTR
CODE:6eb6  fe                       MOV R6,A
CODE:6eb7  74 2a                    MOV A,#0x2a
CODE:6eb9  2f                       ADD A,R7
CODE:6eba  f5 82                    MOV DPL,A
CODE:6ebc  e4                       CLR A
CODE:6ebd  34 01                    ADDC A,#0x1
CODE:6ebf  f5 83                    MOV DPH,A
CODE:6ec1  ee                       MOV A,R6
CODE:6ec2  f0                       MOVX @DPTR,A
CODE:6ec3  0f                       INC R7
CODE:6ec4  bf 8a a2                 CJNE R7,#0x8a,0x6e69
LAB_CODE_6ec7:
CODE:6ec7  22                       RET   ; XREF: CODE:6e66 

; ===== FUNCTION FUN_CODE_6ec8 @ CODE:6ec8 =====
CODE:6ec8  30 28 0b                 JNB 0x28,0x6ed6   ; XREF: CODE:4dd1 Entry Point CODE:5b68 CODE:5ce2 CODE:751f 
CODE:6ecb  90 02 9f                 MOV DPTR,#0x29f
CODE:6ece  e0                       MOVX A,@DPTR
CODE:6ecf  64 65                    XRL A,#0x65
CODE:6ed1  70 03                    JNZ 0x6ed6
CODE:6ed3  02 70 4f                 LJMP 0x704f
LAB_CODE_6ed6:
CODE:6ed6  90 02 9f                 MOV DPTR,#0x29f   ; XREF: CODE:6ec8 CODE:6ed1 
CODE:6ed9  e0                       MOVX A,@DPTR
CODE:6eda  54 f0                    ANL A,#0xf0
CODE:6edc  ff                       MOV R7,A
CODE:6edd  bf e0 0d                 CJNE R7,#0xe0,0x6eed
CODE:6ee0  90 02 a2                 MOV DPTR,#0x2a2
CODE:6ee3  e0                       MOVX A,@DPTR
CODE:6ee4  64 04                    XRL A,#0x4
CODE:6ee6  60 05                    JZ 0x6eed
CODE:6ee8  d2 02                    SETB 0x02
CODE:6eea  02 7d 45                 LJMP 0x7d45
LAB_CODE_6eed:
CODE:6eed  20 00 03                 JB 0x00,0x6ef3   ; XREF: CODE:6edd CODE:6ee6 
CODE:6ef0  02 6f 93                 LJMP 0x6f93
LAB_CODE_6ef3:
CODE:6ef3  20 27 46                 JB 0x27,0x6f3c   ; XREF: CODE:6eed 
CODE:6ef6  e4                       CLR A
CODE:6ef7  f5 3b                    MOV 0x3b,A
LAB_CODE_6ef9:
CODE:6ef9  74 02                    MOV A,#0x2   ; XREF: CODE:6f38 
CODE:6efb  25 3b                    ADD A,0x3b
CODE:6efd  f5 82                    MOV DPL,A
CODE:6eff  e4                       CLR A
CODE:6f00  34 02                    ADDC A,#0x2
CODE:6f02  f5 83                    MOV DPH,A
CODE:6f04  e0                       MOVX A,@DPTR
CODE:6f05  70 14                    JNZ 0x6f1b
CODE:6f07  90 02 9f                 MOV DPTR,#0x29f
CODE:6f0a  e0                       MOVX A,@DPTR
CODE:6f0b  ff                       MOV R7,A
CODE:6f0c  74 02                    MOV A,#0x2
CODE:6f0e  25 3b                    ADD A,0x3b
CODE:6f10  f5 82                    MOV DPL,A
CODE:6f12  e4                       CLR A
CODE:6f13  34 02                    ADDC A,#0x2
CODE:6f15  f5 83                    MOV DPH,A
CODE:6f17  ef                       MOV A,R7
CODE:6f18  f0                       MOVX @DPTR,A
CODE:6f19  d2 02                    SETB 0x02
LAB_CODE_6f1b:
CODE:6f1b  74 02                    MOV A,#0x2   ; XREF: CODE:6f05 
CODE:6f1d  25 3b                    ADD A,0x3b
CODE:6f1f  f5 82                    MOV DPL,A
CODE:6f21  e4                       CLR A
CODE:6f22  34 02                    ADDC A,#0x2
CODE:6f24  f5 83                    MOV DPH,A
CODE:6f26  e0                       MOVX A,@DPTR
CODE:6f27  ff                       MOV R7,A
CODE:6f28  90 02 9f                 MOV DPTR,#0x29f
CODE:6f2b  e0                       MOVX A,@DPTR
CODE:6f2c  fe                       MOV R6,A
CODE:6f2d  ef                       MOV A,R7
CODE:6f2e  6e                       XRL A,R6
CODE:6f2f  70 03                    JNZ 0x6f34
CODE:6f31  02 70 4f                 LJMP 0x704f
LAB_CODE_6f34:
CODE:6f34  05 3b                    INC 0x3b   ; XREF: CODE:6f2f 
CODE:6f36  e5 3b                    MOV A,0x3b
CODE:6f38  b4 06 be                 CJNE A,#0x6,0x6ef9
CODE:6f3b  22                       RET
LAB_CODE_6f3c:
CODE:6f3c  90 02 9f                 MOV DPTR,#0x29f   ; XREF: CODE:6ef3 
CODE:6f3f  e0                       MOVX A,@DPTR
CODE:6f40  ff                       MOV R7,A
CODE:6f41  e4                       CLR A
CODE:6f42  d3                       SETB CY
CODE:6f43  9f                       SUBB A,R7
CODE:6f44  50 2b                    JNC 0x6f71
CODE:6f46  ef                       MOV A,R7
CODE:6f47  94 65                    SUBB A,#0x65
CODE:6f49  50 26                    JNC 0x6f71
CODE:6f4b  e0                       MOVX A,@DPTR
CODE:6f4c  54 07                    ANL A,#0x7
CODE:6f4e  fe                       MOV R6,A
CODE:6f4f  74 01                    MOV A,#0x1
CODE:6f51  a8 06                    MOV R0,0x06
CODE:6f53  08                       INC R0
CODE:6f54  80 02                    SJMP 0x6f58
LAB_CODE_6f56:
CODE:6f56  c3                       CLR CY   ; XREF: CODE:6f58 
CODE:6f57  33                       RLC A
LAB_CODE_6f58:
CODE:6f58  d8 fc                    DJNZ R0,0x6f56   ; XREF: CODE:6f54 
CODE:6f5a  f5 3b                    MOV 0x3b,A
CODE:6f5c  ef                       MOV A,R7
CODE:6f5d  13                       RRC A
CODE:6f5e  13                       RRC A
CODE:6f5f  13                       RRC A
CODE:6f60  54 1f                    ANL A,#0x1f
CODE:6f62  24 01                    ADD A,#0x1
CODE:6f64  f5 82                    MOV DPL,A
CODE:6f66  e4                       CLR A
CODE:6f67  34 02                    ADDC A,#0x2
CODE:6f69  f5 83                    MOV DPH,A
CODE:6f6b  e0                       MOVX A,@DPTR
CODE:6f6c  45 3b                    ORL A,0x3b
CODE:6f6e  f0                       MOVX @DPTR,A
CODE:6f6f  d2 02                    SETB 0x02
LAB_CODE_6f71:
CODE:6f71  90 02 9f                 MOV DPTR,#0x29f   ; XREF: CODE:6f44 CODE:6f49 
CODE:6f74  e0                       MOVX A,@DPTR
CODE:6f75  fd                       MOV R5,A
CODE:6f76  b4 85 09                 CJNE A,#0x85,0x6f82
CODE:6f79  90 02 0e                 MOV DPTR,#0x20e
CODE:6f7c  e0                       MOVX A,@DPTR
CODE:6f7d  44 01                    ORL A,#0x1
CODE:6f7f  f0                       MOVX @DPTR,A
CODE:6f80  d2 02                    SETB 0x02
LAB_CODE_6f82:
CODE:6f82  ed                       MOV A,R5   ; XREF: CODE:6f76 
CODE:6f83  64 87                    XRL A,#0x87
CODE:6f85  60 03                    JZ 0x6f8a
CODE:6f87  02 70 4f                 LJMP 0x704f
LAB_CODE_6f8a:
CODE:6f8a  90 02 0e                 MOV DPTR,#0x20e   ; XREF: CODE:6f85 
CODE:6f8d  e0                       MOVX A,@DPTR
CODE:6f8e  44 02                    ORL A,#0x2
CODE:6f90  02 70 4c                 LJMP 0x704c
LAB_CODE_6f93:
CODE:6f93  20 27 52                 JB 0x27,0x6fe8   ; XREF: CODE:6ef0 
CODE:6f96  e4                       CLR A
CODE:6f97  f5 3b                    MOV 0x3b,A
LAB_CODE_6f99:
CODE:6f99  74 02                    MOV A,#0x2   ; XREF: CODE:6fe4 
CODE:6f9b  25 3b                    ADD A,0x3b
CODE:6f9d  f5 82                    MOV DPL,A
CODE:6f9f  e4                       CLR A
CODE:6fa0  34 02                    ADDC A,#0x2
CODE:6fa2  f5 83                    MOV DPH,A
CODE:6fa4  e0                       MOVX A,@DPTR
CODE:6fa5  ff                       MOV R7,A
CODE:6fa6  90 02 9f                 MOV DPTR,#0x29f
CODE:6fa9  e0                       MOVX A,@DPTR
CODE:6faa  fe                       MOV R6,A
CODE:6fab  ef                       MOV A,R7
CODE:6fac  6e                       XRL A,R6
CODE:6fad  70 31                    JNZ 0x6fe0
CODE:6faf  e5 3b                    MOV A,0x3b
CODE:6fb1  c3                       CLR CY
CODE:6fb2  94 05                    SUBB A,#0x5
CODE:6fb4  50 23                    JNC 0x6fd9
CODE:6fb6  af 3b                    MOV R7,0x3b
LAB_CODE_6fb8:
CODE:6fb8  ef                       MOV A,R7   ; XREF: CODE:6fd7 
CODE:6fb9  c3                       CLR CY
CODE:6fba  94 05                    SUBB A,#0x5
CODE:6fbc  50 1b                    JNC 0x6fd9
CODE:6fbe  74 03                    MOV A,#0x3
CODE:6fc0  2f                       ADD A,R7
CODE:6fc1  f5 82                    MOV DPL,A
CODE:6fc3  e4                       CLR A
CODE:6fc4  34 02                    ADDC A,#0x2
CODE:6fc6  f5 83                    MOV DPH,A
CODE:6fc8  e0                       MOVX A,@DPTR
CODE:6fc9  fe                       MOV R6,A
CODE:6fca  74 02                    MOV A,#0x2
CODE:6fcc  2f                       ADD A,R7
CODE:6fcd  f5 82                    MOV DPL,A
CODE:6fcf  e4                       CLR A
CODE:6fd0  34 02                    ADDC A,#0x2
CODE:6fd2  f5 83                    MOV DPH,A
CODE:6fd4  ee                       MOV A,R6
CODE:6fd5  f0                       MOVX @DPTR,A
CODE:6fd6  0f                       INC R7
CODE:6fd7  80 df                    SJMP 0x6fb8
LAB_CODE_6fd9:
CODE:6fd9  e4                       CLR A   ; XREF: CODE:6fb4 CODE:6fbc 
CODE:6fda  90 02 07                 MOV DPTR,#0x207
CODE:6fdd  f0                       MOVX @DPTR,A
CODE:6fde  d2 02                    SETB 0x02
LAB_CODE_6fe0:
CODE:6fe0  05 3b                    INC 0x3b   ; XREF: CODE:6fad 
CODE:6fe2  e5 3b                    MOV A,0x3b
CODE:6fe4  b4 06 b2                 CJNE A,#0x6,0x6f99
CODE:6fe7  22                       RET
LAB_CODE_6fe8:
CODE:6fe8  90 02 9f                 MOV DPTR,#0x29f   ; XREF: CODE:6f93 
CODE:6feb  e0                       MOVX A,@DPTR
CODE:6fec  ff                       MOV R7,A
CODE:6fed  e4                       CLR A
CODE:6fee  d3                       SETB CY
CODE:6fef  9f                       SUBB A,R7
CODE:6ff0  50 3f                    JNC 0x7031
CODE:6ff2  ef                       MOV A,R7
CODE:6ff3  94 65                    SUBB A,#0x65
CODE:6ff5  50 3a                    JNC 0x7031
CODE:6ff7  e0                       MOVX A,@DPTR
CODE:6ff8  54 07                    ANL A,#0x7
CODE:6ffa  fe                       MOV R6,A
CODE:6ffb  74 01                    MOV A,#0x1
CODE:6ffd  a8 06                    MOV R0,0x06
CODE:6fff  08                       INC R0
CODE:7000  80 02                    SJMP 0x7004
LAB_CODE_7002:
CODE:7002  c3                       CLR CY   ; XREF: CODE:7004 
EXT_CODE_7003:
CODE:7003  33                       RLC A   ; XREF: Entry Point 
LAB_CODE_7004:
CODE:7004  d8 fc                    DJNZ R0,0x7002   ; XREF: CODE:7000 
CODE:7006  f5 3b                    MOV 0x3b,A
CODE:7008  ef                       MOV A,R7
CODE:7009  13                       RRC A
CODE:700a  13                       RRC A
CODE:700b  13                       RRC A
CODE:700c  54 1f                    ANL A,#0x1f
CODE:700e  ff                       MOV R7,A
CODE:700f  24 01                    ADD A,#0x1
CODE:7011  f5 82                    MOV DPL,A
CODE:7013  e4                       CLR A
CODE:7014  34 02                    ADDC A,#0x2
CODE:7016  f5 83                    MOV DPH,A
CODE:7018  e0                       MOVX A,@DPTR
CODE:7019  fe                       MOV R6,A
CODE:701a  55 3b                    ANL A,0x3b
CODE:701c  60 11                    JZ 0x702f
CODE:701e  74 01                    MOV A,#0x1
CODE:7020  2f                       ADD A,R7
CODE:7021  f5 82                    MOV DPL,A
CODE:7023  e4                       CLR A
CODE:7024  34 02                    ADDC A,#0x2
CODE:7026  f5 83                    MOV DPH,A
EXT_CODE_7028:
CODE:7028  e5 3b                    MOV A,0x3b   ; XREF: Entry Point 
CODE:702a  f4                       CPL A
CODE:702b  ff                       MOV R7,A
CODE:702c  ee                       MOV A,R6
CODE:702d  5f                       ANL A,R7
CODE:702e  f0                       MOVX @DPTR,A
LAB_CODE_702f:
CODE:702f  d2 02                    SETB 0x02   ; XREF: CODE:701c 
LAB_CODE_7031:
CODE:7031  90 02 9f                 MOV DPTR,#0x29f   ; XREF: CODE:6ff0 CODE:6ff5 
CODE:7034  e0                       MOVX A,@DPTR
CODE:7035  fd                       MOV R5,A
CODE:7036  b4 85 09                 CJNE A,#0x85,0x7042
CODE:7039  90 02 0e                 MOV DPTR,#0x20e
CODE:703c  e0                       MOVX A,@DPTR
CODE:703d  54 fe                    ANL A,#0xfe
CODE:703f  f0                       MOVX @DPTR,A
CODE:7040  d2 02                    SETB 0x02
LAB_CODE_7042:
CODE:7042  ed                       MOV A,R5   ; XREF: CODE:7036 
CODE:7043  b4 87 09                 CJNE A,#0x87,0x704f
CODE:7046  90 02 0e                 MOV DPTR,#0x20e
CODE:7049  e0                       MOVX A,@DPTR
CODE:704a  54 fd                    ANL A,#0xfd
LAB_CODE_704c:
CODE:704c  f0                       MOVX @DPTR,A   ; XREF: CODE:6f90 
CODE:704d  d2 02                    SETB 0x02
LAB_CODE_704f:
CODE:704f  22                       RET   ; XREF: CODE:6ed3 CODE:6f31 CODE:6f87 CODE:7043 

; ===== FUNCTION FUN_CODE_7050 @ CODE:7050 =====
CODE:7050  c2 af                    CLR 0xaf   ; XREF: Entry Point CODE:5d98 
CODE:7052  e4                       CLR A
CODE:7053  f5 b1                    MOV 0xb1,A
CODE:7055  c2 1e                    CLR 0x1e
CODE:7057  90 03 21                 MOV DPTR,#0x321
CODE:705a  f0                       MOVX @DPTR,A
CODE:705b  12 79 d2                 LCALL 0x79d2
CODE:705e  90 ff 94                 MOV DPTR,#0xff94
CODE:7061  e4                       CLR A
CODE:7062  f0                       MOVX @DPTR,A
CODE:7063  c2 ff                    CLR 0xff
CODE:7065  a3                       INC DPTR
CODE:7066  f0                       MOVX @DPTR,A
CODE:7067  d2 b7                    SETB 0xb7
CODE:7069  53 a8 fe                 ANL 0xa8,#0xfe
CODE:706c  43 e5 7f                 ORL 0xe5,#0x7f
CODE:706f  43 ed 7f                 ORL 0xed,#0x7f
CODE:7072  75 e7 ff                 MOV 0xe7,#0xff
CODE:7075  75 ef ff                 MOV 0xef,#0xff
CODE:7078  43 e6 87                 ORL 0xe6,#0x87
CODE:707b  43 ee 87                 ORL 0xee,#0x87
CODE:707e  43 e1 e0                 ORL 0xe1,#0xe0
CODE:7081  43 e9 e0                 ORL 0xe9,#0xe0
CODE:7084  43 d1 10                 ORL 0xd1,#0x10
CODE:7087  43 d9 10                 ORL 0xd9,#0x10
CODE:708a  53 b0 80                 ANL 0xb0,#0x80
CODE:708d  f5 c0                    MOV 0xc0,A
CODE:708f  53 88 78                 ANL 0x88,#0x78
CODE:7092  53 80 1f                 ANL 0x80,#0x1f
CODE:7095  53 f8 ef                 ANL 0xf8,#0xef
CODE:7098  30 1c 0a                 JNB 0x1c,0x70a5
CODE:709b  c2 2a                    CLR 0x2a
CODE:709d  43 a8 02                 ORL 0xa8,#0x2
CODE:70a0  75 ba f3                 MOV 0xba,#0xf3
CODE:70a3  80 06                    SJMP 0x70ab
LAB_CODE_70a5:
CODE:70a5  53 a8 fd                 ANL 0xa8,#0xfd   ; XREF: CODE:7098 
CODE:70a8  e4                       CLR A
CODE:70a9  f5 ba                    MOV 0xba,A
LAB_CODE_70ab:
CODE:70ab  43 91 01                 ORL 0x91,#0x1   ; XREF: CODE:70a3 
CODE:70ae  53 b2 fb                 ANL 0xb2,#0xfb
CODE:70b1  53 bc fe                 ANL 0xbc,#0xfe
CODE:70b4  53 bc fd                 ANL 0xbc,#0xfd
CODE:70b7  43 94 85                 ORL 0x94,#0x85
CODE:70ba  53 92 7a                 ANL 0x92,#0x7a
CODE:70bd  43 a9 01                 ORL 0xa9,#0x1
CODE:70c0  d2 af                    SETB 0xaf
CODE:70c2  75 8e 55                 MOV 0x8e,#0x55
CODE:70c5  43 87 02                 ORL 0x87,#0x2
CODE:70c8  00                       NOP
CODE:70c9  00                       NOP
CODE:70ca  00                       NOP
CODE:70cb  00                       NOP
CODE:70cc  00                       NOP
CODE:70cd  c2 af                    CLR 0xaf
CODE:70cf  43 b2 08                 ORL 0xb2,#0x8
CODE:70d2  43 bc 02                 ORL 0xbc,#0x2
CODE:70d5  7f 14                    MOV R7,#0x14
CODE:70d7  7e 00                    MOV R6,#0x0
CODE:70d9  12 7e 37                 LCALL 0x7e37
CODE:70dc  e4                       CLR A
CODE:70dd  f5 b1                    MOV 0xb1,A
CODE:70df  75 bc 03                 MOV 0xbc,#0x3
CODE:70e2  75 b2 0c                 MOV 0xb2,#0xc
CODE:70e5  53 92 fd                 ANL 0x92,#0xfd
CODE:70e8  30 2a 11                 JNB 0x2a,0x70fc
CODE:70eb  c2 2a                    CLR 0x2a
CODE:70ed  53 91 fe                 ANL 0x91,#0xfe
CODE:70f0  43 91 02                 ORL 0x91,#0x2
CODE:70f3  7f 88                    MOV R7,#0x88
CODE:70f5  7e 13                    MOV R6,#0x13
CODE:70f7  12 7e 37                 LCALL 0x7e37
CODE:70fa  80 03                    SJMP 0x70ff
LAB_CODE_70fc:
CODE:70fc  53 91 fe                 ANL 0x91,#0xfe   ; XREF: CODE:70e8 
LAB_CODE_70ff:
CODE:70ff  75 94 5f                 MOV 0x94,#0x5f   ; XREF: CODE:70fa 
CODE:7102  53 a8 fd                 ANL 0xa8,#0xfd
CODE:7105  e4                       CLR A
CODE:7106  f5 ba                    MOV 0xba,A
CODE:7108  78 7b                    MOV R0,#0x7b
CODE:710a  e6                       MOV A,@R0
CODE:710b  ff                       MOV R7,A
CODE:710c  70 08                    JNZ 0x7116
CODE:710e  90 ff 94                 MOV DPTR,#0xff94
CODE:7111  f0                       MOVX @DPTR,A
CODE:7112  d2 ff                    SETB 0xff
CODE:7114  80 0b                    SJMP 0x7121
LAB_CODE_7116:
CODE:7116  ef                       MOV A,R7   ; XREF: CODE:710c 
CODE:7117  b4 01 07                 CJNE A,#0x1,0x7121
CODE:711a  90 ff 94                 MOV DPTR,#0xff94
CODE:711d  e4                       CLR A
CODE:711e  f0                       MOVX @DPTR,A
CODE:711f  c2 ff                    CLR 0xff
LAB_CODE_7121:
CODE:7121  78 7a                    MOV R0,#0x7a   ; XREF: CODE:7114 CODE:7117 
CODE:7123  e6                       MOV A,@R0
CODE:7124  ff                       MOV R7,A
CODE:7125  b4 04 09                 CJNE A,#0x4,0x7131
CODE:7128  90 ff 95                 MOV DPTR,#0xff95
CODE:712b  e4                       CLR A
CODE:712c  f0                       MOVX @DPTR,A
CODE:712d  c2 b7                    CLR 0xb7
CODE:712f  80 3c                    SJMP 0x716d
LAB_CODE_7131:
CODE:7131  ef                       MOV A,R7   ; XREF: CODE:7125 
CODE:7132  b4 03 0e                 CJNE A,#0x3,0x7143
CODE:7135  90 ff 95                 MOV DPTR,#0xff95
CODE:7138  74 08                    MOV A,#0x8
CODE:713a  f0                       MOVX @DPTR,A
CODE:713b  90 ff b5                 MOV DPTR,#0xffb5
CODE:713e  74 80                    MOV A,#0x80
CODE:7140  f0                       MOVX @DPTR,A
CODE:7141  80 2a                    SJMP 0x716d
LAB_CODE_7143:
CODE:7143  ef                       MOV A,R7   ; XREF: CODE:7132 
CODE:7144  b4 02 0e                 CJNE A,#0x2,0x7155
CODE:7147  90 ff 95                 MOV DPTR,#0xff95
CODE:714a  74 08                    MOV A,#0x8
CODE:714c  f0                       MOVX @DPTR,A
CODE:714d  90 ff b5                 MOV DPTR,#0xffb5
CODE:7150  74 e6                    MOV A,#0xe6
CODE:7152  f0                       MOVX @DPTR,A
CODE:7153  80 18                    SJMP 0x716d
LAB_CODE_7155:
CODE:7155  ef                       MOV A,R7   ; XREF: CODE:7144 
CODE:7156  b4 01 0e                 CJNE A,#0x1,0x7167
CODE:7159  90 ff 95                 MOV DPTR,#0xff95
CODE:715c  74 08                    MOV A,#0x8
CODE:715e  f0                       MOVX @DPTR,A
CODE:715f  90 ff b5                 MOV DPTR,#0xffb5
CODE:7162  74 fa                    MOV A,#0xfa
CODE:7164  f0                       MOVX @DPTR,A
CODE:7165  80 06                    SJMP 0x716d
LAB_CODE_7167:
CODE:7167  ef                       MOV A,R7   ; XREF: CODE:7156 
CODE:7168  70 03                    JNZ 0x716d
CODE:716a  12 79 d2                 LCALL 0x79d2
LAB_CODE_716d:
CODE:716d  43 a8 01                 ORL 0xa8,#0x1   ; XREF: CODE:712f CODE:7141 CODE:7153 CODE:7165 CODE:7168 
CODE:7170  d2 af                    SETB 0xaf
CODE:7172  22                       RET

; ===== FUNCTION FUN_CODE_7173 @ CODE:7173 =====
CODE:7173  53 e5 80                 ANL 0xe5,#0x80   ; XREF: Entry Point CODE:77d3 
CODE:7176  43 ed 7f                 ORL 0xed,#0x7f
CODE:7179  75 e7 00                 MOV 0xe7,#0x0
CODE:717c  75 ef ff                 MOV 0xef,#0xff
CODE:717f  53 e6 78                 ANL 0xe6,#0x78
CODE:7182  43 ee 87                 ORL 0xee,#0x87
CODE:7185  53 e1 1f                 ANL 0xe1,#0x1f
CODE:7188  43 e9 e0                 ORL 0xe9,#0xe0
CODE:718b  53 d1 ef                 ANL 0xd1,#0xef
CODE:718e  43 d9 10                 ORL 0xd9,#0x10
CODE:7191  ef                       MOV A,R7
CODE:7192  b4 17 00                 CJNE A,#0x17,0x7195
LAB_CODE_7195:
CODE:7195  40 03                    JC 0x719a   ; XREF: CODE:7192 
CODE:7197  02 72 89                 LJMP 0x7289
LAB_CODE_719a:
CODE:719a  90 71 a1                 MOV DPTR,#0x71a1   ; XREF: CODE:7195 
CODE:719d  f8                       MOV R0,A
CODE:719e  28                       ADD A,R0
CODE:719f  28                       ADD A,R0
CODE:71a0  73                       JMP @A+DPTR

; ===== FUNCTION thunk_FUN_CODE_71e6 @ CODE:71a1 =====
CODE:71a1  02 71 e6                 LJMP 0x71e6   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_71ee @ CODE:71a4 =====
CODE:71a4  02 71 ee                 LJMP 0x71ee   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_71f6 @ CODE:71a7 =====
CODE:71a7  02 71 f6                 LJMP 0x71f6   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_71fe @ CODE:71aa =====
CODE:71aa  02 71 fe                 LJMP 0x71fe   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_7206 @ CODE:71ad =====
CODE:71ad  02 72 06                 LJMP 0x7206   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_720d @ CODE:71b0 =====
CODE:71b0  02 72 0d                 LJMP 0x720d   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_7214 @ CODE:71b3 =====
CODE:71b3  02 72 14                 LJMP 0x7214   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_721b @ CODE:71b6 =====
CODE:71b6  02 72 1b                 LJMP 0x721b   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_7222 @ CODE:71b9 =====
CODE:71b9  02 72 22                 LJMP 0x7222   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_7229 @ CODE:71bc =====
CODE:71bc  02 72 29                 LJMP 0x7229   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_7230 @ CODE:71bf =====
CODE:71bf  02 72 30                 LJMP 0x7230   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_7237 @ CODE:71c2 =====
CODE:71c2  02 72 37                 LJMP 0x7237   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_723e @ CODE:71c5 =====
CODE:71c5  02 72 3e                 LJMP 0x723e   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_7245 @ CODE:71c8 =====
CODE:71c8  02 72 45                 LJMP 0x7245   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_724c @ CODE:71cb =====
CODE:71cb  02 72 4c                 LJMP 0x724c   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_7253 @ CODE:71ce =====
CODE:71ce  02 72 53                 LJMP 0x7253   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_725a @ CODE:71d1 =====
CODE:71d1  02 72 5a                 LJMP 0x725a   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_7261 @ CODE:71d4 =====
CODE:71d4  02 72 61                 LJMP 0x7261   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_7268 @ CODE:71d7 =====
CODE:71d7  02 72 68                 LJMP 0x7268   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_726f @ CODE:71da =====
CODE:71da  02 72 6f                 LJMP 0x726f   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_7276 @ CODE:71dd =====
CODE:71dd  02 72 76                 LJMP 0x7276   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_727d @ CODE:71e0 =====
CODE:71e0  02 72 7d                 LJMP 0x727d   ; XREF: Entry Point 

; ===== FUNCTION thunk_FUN_CODE_7284 @ CODE:71e3 =====
CODE:71e3  02 72 84                 LJMP 0x7284   ; XREF: Entry Point 

; ===== FUNCTION FUN_CODE_71e6 @ CODE:71e6 =====
CODE:71e6  43 e5 02                 ORL 0xe5,#0x2   ; XREF: CODE:71a1 Entry Point 
CODE:71e9  c2 b1                    CLR 0xb1
CODE:71eb  02 72 89                 LJMP 0x7289

; ===== FUNCTION FUN_CODE_71ee @ CODE:71ee =====
CODE:71ee  43 e7 01                 ORL 0xe7,#0x1   ; XREF: CODE:71a4 Entry Point 
CODE:71f1  c2 c0                    CLR 0xc0
CODE:71f3  02 72 89                 LJMP 0x7289

; ===== FUNCTION FUN_CODE_71f6 @ CODE:71f6 =====
CODE:71f6  43 e7 02                 ORL 0xe7,#0x2   ; XREF: CODE:71a7 Entry Point 
CODE:71f9  c2 c1                    CLR 0xc1
CODE:71fb  02 72 89                 LJMP 0x7289

; ===== FUNCTION FUN_CODE_71fe @ CODE:71fe =====
CODE:71fe  43 e7 04                 ORL 0xe7,#0x4   ; XREF: CODE:71aa Entry Point 
CODE:7201  c2 c2                    CLR 0xc2
CODE:7203  02 72 89                 LJMP 0x7289

; ===== FUNCTION FUN_CODE_7206 @ CODE:7206 =====
CODE:7206  43 e7 08                 ORL 0xe7,#0x8   ; XREF: CODE:71ad Entry Point 
CODE:7209  c2 c3                    CLR 0xc3
CODE:720b  80 7c                    SJMP 0x7289

; ===== FUNCTION FUN_CODE_720d @ CODE:720d =====
CODE:720d  43 e7 10                 ORL 0xe7,#0x10   ; XREF: CODE:71b0 Entry Point 
CODE:7210  c2 c4                    CLR 0xc4
CODE:7212  80 75                    SJMP 0x7289

; ===== FUNCTION FUN_CODE_7214 @ CODE:7214 =====
CODE:7214  43 e7 20                 ORL 0xe7,#0x20   ; XREF: CODE:71b3 Entry Point 
CODE:7217  c2 c5                    CLR 0xc5
CODE:7219  80 6e                    SJMP 0x7289

; ===== FUNCTION FUN_CODE_721b @ CODE:721b =====
CODE:721b  43 e7 40                 ORL 0xe7,#0x40   ; XREF: CODE:71b6 Entry Point 
CODE:721e  c2 c6                    CLR 0xc6
CODE:7220  80 67                    SJMP 0x7289

; ===== FUNCTION FUN_CODE_7222 @ CODE:7222 =====
CODE:7222  43 e7 80                 ORL 0xe7,#0x80   ; XREF: CODE:71b9 Entry Point 
CODE:7225  c2 c7                    CLR 0xc7
CODE:7227  80 60                    SJMP 0x7289

; ===== FUNCTION FUN_CODE_7229 @ CODE:7229 =====
CODE:7229  43 e6 01                 ORL 0xe6,#0x1   ; XREF: CODE:71bc Entry Point 
CODE:722c  c2 88                    CLR 0x88
CODE:722e  80 59                    SJMP 0x7289

; ===== FUNCTION FUN_CODE_7230 @ CODE:7230 =====
CODE:7230  43 e6 02                 ORL 0xe6,#0x2   ; XREF: CODE:71bf Entry Point 
CODE:7233  c2 89                    CLR 0x89
CODE:7235  80 52                    SJMP 0x7289

; ===== FUNCTION FUN_CODE_7237 @ CODE:7237 =====
CODE:7237  43 e6 04                 ORL 0xe6,#0x4   ; XREF: CODE:71c2 Entry Point 
CODE:723a  c2 8a                    CLR 0x8a
CODE:723c  80 4b                    SJMP 0x7289

; ===== FUNCTION FUN_CODE_723e @ CODE:723e =====
CODE:723e  43 e6 80                 ORL 0xe6,#0x80   ; XREF: CODE:71c5 Entry Point 
CODE:7241  c2 8f                    CLR 0x8f
CODE:7243  80 44                    SJMP 0x7289

; ===== FUNCTION FUN_CODE_7245 @ CODE:7245 =====
CODE:7245  43 e5 01                 ORL 0xe5,#0x1   ; XREF: CODE:71c8 Entry Point 
CODE:7248  c2 b0                    CLR 0xb0
CODE:724a  80 3d                    SJMP 0x7289

; ===== FUNCTION FUN_CODE_724c @ CODE:724c =====
CODE:724c  43 e5 10                 ORL 0xe5,#0x10   ; XREF: CODE:71cb Entry Point 
CODE:724f  c2 b4                    CLR 0xb4
CODE:7251  80 36                    SJMP 0x7289

; ===== FUNCTION FUN_CODE_7253 @ CODE:7253 =====
CODE:7253  43 e5 04                 ORL 0xe5,#0x4   ; XREF: CODE:71ce Entry Point 
CODE:7256  c2 b2                    CLR 0xb2
CODE:7258  80 2f                    SJMP 0x7289

; ===== FUNCTION FUN_CODE_725a @ CODE:725a =====
CODE:725a  43 e5 08                 ORL 0xe5,#0x8   ; XREF: CODE:71d1 Entry Point 
CODE:725d  c2 b3                    CLR 0xb3
CODE:725f  80 28                    SJMP 0x7289

; ===== FUNCTION FUN_CODE_7261 @ CODE:7261 =====
CODE:7261  43 e5 20                 ORL 0xe5,#0x20   ; XREF: CODE:71d4 Entry Point 
CODE:7264  c2 b5                    CLR 0xb5
CODE:7266  80 21                    SJMP 0x7289

; ===== FUNCTION FUN_CODE_7268 @ CODE:7268 =====
CODE:7268  43 e5 40                 ORL 0xe5,#0x40   ; XREF: CODE:71d7 Entry Point 
CODE:726b  c2 b6                    CLR 0xb6
CODE:726d  80 1a                    SJMP 0x7289

; ===== FUNCTION FUN_CODE_726f @ CODE:726f =====
CODE:726f  43 d1 10                 ORL 0xd1,#0x10   ; XREF: CODE:71da Entry Point 
CODE:7272  c2 fc                    CLR 0xfc
CODE:7274  80 13                    SJMP 0x7289

; ===== FUNCTION FUN_CODE_7276 @ CODE:7276 =====
CODE:7276  43 e1 20                 ORL 0xe1,#0x20   ; XREF: CODE:71dd Entry Point 
CODE:7279  c2 85                    CLR 0x85
CODE:727b  80 0c                    SJMP 0x7289

; ===== FUNCTION FUN_CODE_727d @ CODE:727d =====
CODE:727d  43 e1 40                 ORL 0xe1,#0x40   ; XREF: CODE:71e0 Entry Point 
CODE:7280  c2 86                    CLR 0x86
CODE:7282  80 05                    SJMP 0x7289

; ===== FUNCTION FUN_CODE_7284 @ CODE:7284 =====
CODE:7284  43 e1 80                 ORL 0xe1,#0x80   ; XREF: CODE:71e3 Entry Point 
CODE:7287  c2 87                    CLR 0x87
LAB_CODE_7289:
CODE:7289  7f 01                    MOV R7,#0x1   ; XREF: CODE:7197 CODE:71eb CODE:71f3 CODE:71fb CODE:7203 CODE:720b CODE:7212 CODE:7219 CODE:7220 CODE:7227 CODE:722e CODE:7235 CODE:723c CODE:7243 CODE:724a CODE:7251 CODE:7258 CODE:725f CODE:7266 CODE:726d CODE:7274 CODE:727b CODE:7282 
CODE:728b  7e 00                    MOV R6,#0x0
CODE:728d  02 7e 37                 LJMP 0x7e37

; ===== FUNCTION FUN_CODE_7290 @ CODE:7290 =====
CODE:7290  e5 99                    MOV A,0x99   ; XREF: Entry Point CODE:587f 
CODE:7292  30 e2 03                 JNB 0xe2,0x7298
CODE:7295  02 73 92                 LJMP 0x7392
LAB_CODE_7298:
CODE:7298  30 27 03                 JNB 0x27,0x729e   ; XREF: CODE:7292 
CODE:729b  02 73 2c                 LJMP 0x732c
LAB_CODE_729e:
CODE:729e  90 02 40                 MOV DPTR,#0x240   ; XREF: CODE:7298 
CODE:72a1  e0                       MOVX A,@DPTR
CODE:72a2  d3                       SETB CY
CODE:72a3  94 06                    SUBB A,#0x6
CODE:72a5  40 03                    JC 0x72aa
CODE:72a7  02 73 92                 LJMP 0x7392
LAB_CODE_72aa:
CODE:72aa  20 02 03                 JB 0x02,0x72b0   ; XREF: CODE:72a5 
CODE:72ad  02 73 92                 LJMP 0x7392
LAB_CODE_72b0:
CODE:72b0  c2 02                    CLR 0x02   ; XREF: CODE:72aa 
CODE:72b2  c2 af                    CLR 0xaf
CODE:72b4  75 1a 11                 MOV 0x1a,#0x11
CODE:72b7  75 1b 20                 MOV 0x1b,#0x20
CODE:72ba  90 02 00                 MOV DPTR,#0x200
CODE:72bd  e0                       MOVX A,@DPTR
CODE:72be  85 1b 82                 MOV DPL,0x1b
CODE:72c1  85 1a 83                 MOV DPH,0x1a
CODE:72c4  f0                       MOVX @DPTR,A
CODE:72c5  a3                       INC DPTR
CODE:72c6  e4                       CLR A
CODE:72c7  f0                       MOVX @DPTR,A
CODE:72c8  90 02 02                 MOV DPTR,#0x202
CODE:72cb  e0                       MOVX A,@DPTR
CODE:72cc  85 1b 82                 MOV DPL,0x1b
CODE:72cf  85 1a 83                 MOV DPH,0x1a
CODE:72d2  a3                       INC DPTR
CODE:72d3  a3                       INC DPTR
CODE:72d4  f0                       MOVX @DPTR,A
CODE:72d5  90 02 03                 MOV DPTR,#0x203
CODE:72d8  e0                       MOVX A,@DPTR
CODE:72d9  85 1b 82                 MOV DPL,0x1b
CODE:72dc  85 1a 83                 MOV DPH,0x1a
CODE:72df  a3                       INC DPTR
CODE:72e0  a3                       INC DPTR
CODE:72e1  a3                       INC DPTR
CODE:72e2  f0                       MOVX @DPTR,A
CODE:72e3  90 02 04                 MOV DPTR,#0x204
CODE:72e6  e0                       MOVX A,@DPTR
CODE:72e7  ff                       MOV R7,A
CODE:72e8  e5 1b                    MOV A,0x1b
CODE:72ea  24 04                    ADD A,#0x4
CODE:72ec  f5 82                    MOV DPL,A
CODE:72ee  e4                       CLR A
CODE:72ef  35 1a                    ADDC A,0x1a
CODE:72f1  f5 83                    MOV DPH,A
CODE:72f3  ef                       MOV A,R7
CODE:72f4  f0                       MOVX @DPTR,A
CODE:72f5  90 02 05                 MOV DPTR,#0x205
CODE:72f8  e0                       MOVX A,@DPTR
CODE:72f9  ff                       MOV R7,A
CODE:72fa  e5 1b                    MOV A,0x1b
CODE:72fc  24 05                    ADD A,#0x5
CODE:72fe  f5 82                    MOV DPL,A
CODE:7300  e4                       CLR A
CODE:7301  35 1a                    ADDC A,0x1a
CODE:7303  f5 83                    MOV DPH,A
CODE:7305  ef                       MOV A,R7
CODE:7306  f0                       MOVX @DPTR,A
CODE:7307  90 02 06                 MOV DPTR,#0x206
CODE:730a  e0                       MOVX A,@DPTR
CODE:730b  ff                       MOV R7,A
CODE:730c  e5 1b                    MOV A,0x1b
CODE:730e  24 06                    ADD A,#0x6
CODE:7310  f5 82                    MOV DPL,A
CODE:7312  e4                       CLR A
CODE:7313  35 1a                    ADDC A,0x1a
CODE:7315  f5 83                    MOV DPH,A
CODE:7317  ef                       MOV A,R7
CODE:7318  f0                       MOVX @DPTR,A
CODE:7319  90 02 07                 MOV DPTR,#0x207
CODE:731c  e0                       MOVX A,@DPTR
CODE:731d  ff                       MOV R7,A
CODE:731e  e5 1b                    MOV A,0x1b
CODE:7320  24 07                    ADD A,#0x7
CODE:7322  f5 82                    MOV DPL,A
CODE:7324  e4                       CLR A
CODE:7325  35 1a                    ADDC A,0x1a
CODE:7327  f5 83                    MOV DPH,A
CODE:7329  ef                       MOV A,R7
CODE:732a  80 5d                    SJMP 0x7389
LAB_CODE_732c:
CODE:732c  30 12 63                 JNB 0x12,0x7392   ; XREF: CODE:729b 
CODE:732f  c2 12                    CLR 0x12
CODE:7331  c2 af                    CLR 0xaf
CODE:7333  75 1a 11                 MOV 0x1a,#0x11
CODE:7336  75 1b 20                 MOV 0x1b,#0x20
CODE:7339  85 1b 82                 MOV DPL,0x1b
CODE:733c  85 1a 83                 MOV DPH,0x1a
CODE:733f  e4                       CLR A
CODE:7340  f0                       MOVX @DPTR,A
CODE:7341  a3                       INC DPTR
CODE:7342  f0                       MOVX @DPTR,A
CODE:7343  85 1b 82                 MOV DPL,0x1b
CODE:7346  85 1a 83                 MOV DPH,0x1a
CODE:7349  a3                       INC DPTR
CODE:734a  a3                       INC DPTR
CODE:734b  f0                       MOVX @DPTR,A
CODE:734c  85 1b 82                 MOV DPL,0x1b
CODE:734f  85 1a 83                 MOV DPH,0x1a
CODE:7352  a3                       INC DPTR
CODE:7353  a3                       INC DPTR
CODE:7354  a3                       INC DPTR
CODE:7355  f0                       MOVX @DPTR,A
CODE:7356  e5 1b                    MOV A,0x1b
CODE:7358  24 04                    ADD A,#0x4
CODE:735a  f5 82                    MOV DPL,A
CODE:735c  e4                       CLR A
CODE:735d  35 1a                    ADDC A,0x1a
CODE:735f  f5 83                    MOV DPH,A
CODE:7361  e4                       CLR A
CODE:7362  f0                       MOVX @DPTR,A
CODE:7363  e5 1b                    MOV A,0x1b
CODE:7365  24 05                    ADD A,#0x5
CODE:7367  f5 82                    MOV DPL,A
CODE:7369  e4                       CLR A
CODE:736a  35 1a                    ADDC A,0x1a
CODE:736c  f5 83                    MOV DPH,A
CODE:736e  e4                       CLR A
CODE:736f  f0                       MOVX @DPTR,A
CODE:7370  e5 1b                    MOV A,0x1b
CODE:7372  24 06                    ADD A,#0x6
CODE:7374  f5 82                    MOV DPL,A
CODE:7376  e4                       CLR A
CODE:7377  35 1a                    ADDC A,0x1a
CODE:7379  f5 83                    MOV DPH,A
CODE:737b  e4                       CLR A
CODE:737c  f0                       MOVX @DPTR,A
CODE:737d  e5 1b                    MOV A,0x1b
CODE:737f  24 07                    ADD A,#0x7
CODE:7381  f5 82                    MOV DPL,A
CODE:7383  e4                       CLR A
CODE:7384  35 1a                    ADDC A,0x1a
CODE:7386  f5 83                    MOV DPH,A
CODE:7388  e4                       CLR A
LAB_CODE_7389:
CODE:7389  f0                       MOVX @DPTR,A   ; XREF: CODE:732a 
CODE:738a  75 9c 08                 MOV 0x9c,#0x8
CODE:738d  43 99 04                 ORL 0x99,#0x4
CODE:7390  d2 af                    SETB 0xaf
LAB_CODE_7392:
CODE:7392  22                       RET   ; XREF: CODE:7295 CODE:72a7 CODE:72ad CODE:732c 

; ===== FUNCTION FUN_CODE_7393 @ CODE:7393 =====
CODE:7393  e4                       CLR A   ; XREF: Entry Point CODE:5b3a 
CODE:7394  f5 2a                    MOV 0x2a,A
LAB_CODE_7396:
CODE:7396  e5 2a                    MOV A,0x2a   ; XREF: CODE:742b 
CODE:7398  25 e0                    ADD A,A
CODE:739a  25 e0                    ADD A,A
CODE:739c  24 84                    ADD A,#0x84
CODE:739e  f5 82                    MOV DPL,A
CODE:73a0  e4                       CLR A
CODE:73a1  34 02                    ADDC A,#0x2
CODE:73a3  f5 83                    MOV DPH,A
CODE:73a5  e0                       MOVX A,@DPTR
CODE:73a6  fc                       MOV R4,A
CODE:73a7  a3                       INC DPTR
CODE:73a8  e0                       MOVX A,@DPTR
CODE:73a9  fd                       MOV R5,A
CODE:73aa  a3                       INC DPTR
CODE:73ab  e0                       MOVX A,@DPTR
CODE:73ac  fe                       MOV R6,A
CODE:73ad  a3                       INC DPTR
CODE:73ae  e0                       MOVX A,@DPTR
CODE:73af  ff                       MOV R7,A
CODE:73b0  e5 2a                    MOV A,0x2a
CODE:73b2  25 e0                    ADD A,A
CODE:73b4  25 e0                    ADD A,A
CODE:73b6  24 fe                    ADD A,#0xfe
CODE:73b8  f5 82                    MOV DPL,A
CODE:73ba  e4                       CLR A
CODE:73bb  34 02                    ADDC A,#0x2
CODE:73bd  f5 83                    MOV DPH,A
CODE:73bf  e0                       MOVX A,@DPTR
CODE:73c0  f8                       MOV R0,A
CODE:73c1  a3                       INC DPTR
CODE:73c2  e0                       MOVX A,@DPTR
CODE:73c3  f9                       MOV R1,A
CODE:73c4  a3                       INC DPTR
CODE:73c5  e0                       MOVX A,@DPTR
CODE:73c6  fa                       MOV R2,A
CODE:73c7  a3                       INC DPTR
CODE:73c8  e0                       MOVX A,@DPTR
CODE:73c9  fb                       MOV R3,A
CODE:73ca  c3                       CLR CY
CODE:73cb  12 7a 42                 LCALL 0x7a42
CODE:73ce  60 52                    JZ 0x7422
CODE:73d0  e5 2a                    MOV A,0x2a
CODE:73d2  25 e0                    ADD A,A
CODE:73d4  25 e0                    ADD A,A
CODE:73d6  24 84                    ADD A,#0x84
CODE:73d8  f5 82                    MOV DPL,A
CODE:73da  e4                       CLR A
CODE:73db  34 02                    ADDC A,#0x2
CODE:73dd  f5 83                    MOV DPH,A
CODE:73df  e0                       MOVX A,@DPTR
CODE:73e0  fc                       MOV R4,A
CODE:73e1  a3                       INC DPTR
CODE:73e2  e0                       MOVX A,@DPTR
CODE:73e3  fd                       MOV R5,A
CODE:73e4  a3                       INC DPTR
CODE:73e5  e0                       MOVX A,@DPTR
CODE:73e6  fe                       MOV R6,A
CODE:73e7  a3                       INC DPTR
CODE:73e8  e0                       MOVX A,@DPTR
CODE:73e9  ff                       MOV R7,A
CODE:73ea  e5 2a                    MOV A,0x2a
CODE:73ec  25 e0                    ADD A,A
CODE:73ee  25 e0                    ADD A,A
CODE:73f0  24 fe                    ADD A,#0xfe
CODE:73f2  f5 82                    MOV DPL,A
CODE:73f4  e4                       CLR A
CODE:73f5  34 02                    ADDC A,#0x2
CODE:73f7  f5 83                    MOV DPH,A
CODE:73f9  e0                       MOVX A,@DPTR
CODE:73fa  f8                       MOV R0,A
CODE:73fb  a3                       INC DPTR
CODE:73fc  e0                       MOVX A,@DPTR
CODE:73fd  f9                       MOV R1,A
CODE:73fe  a3                       INC DPTR
CODE:73ff  e0                       MOVX A,@DPTR
CODE:7400  fa                       MOV R2,A
CODE:7401  a3                       INC DPTR
CODE:7402  e0                       MOVX A,@DPTR
CODE:7403  6f                       XRL A,R7
CODE:7404  f5 2e                    MOV 0x2e,A
CODE:7406  ea                       MOV A,R2
CODE:7407  6e                       XRL A,R6
CODE:7408  f5 2d                    MOV 0x2d,A
CODE:740a  e9                       MOV A,R1
CODE:740b  6d                       XRL A,R5
CODE:740c  f5 2c                    MOV 0x2c,A
CODE:740e  e8                       MOV A,R0
CODE:740f  6c                       XRL A,R4
CODE:7410  f5 2b                    MOV 0x2b,A
CODE:7412  85 2e 33                 MOV 0x33,0x2e
CODE:7415  85 2d 32                 MOV 0x32,0x2d
CODE:7418  85 2c 31                 MOV 0x31,0x2c
CODE:741b  f5 30                    MOV 0x30,A
CODE:741d  af 2a                    MOV R7,0x2a
CODE:741f  12 83 00                 LCALL 0x8300
LAB_CODE_7422:
CODE:7422  05 2a                    INC 0x2a   ; XREF: CODE:73ce 
CODE:7424  e5 2a                    MOV A,0x2a
CODE:7426  c3                       CLR CY
CODE:7427  94 06                    SUBB A,#0x6
CODE:7429  50 03                    JNC 0x742e
CODE:742b  02 73 96                 LJMP 0x7396
LAB_CODE_742e:
CODE:742e  e4                       CLR A   ; XREF: CODE:7429 
CODE:742f  f5 2a                    MOV 0x2a,A
LAB_CODE_7431:
CODE:7431  e5 2a                    MOV A,0x2a   ; XREF: CODE:7461 
CODE:7433  25 e0                    ADD A,A
CODE:7435  25 e0                    ADD A,A
CODE:7437  24 fe                    ADD A,#0xfe
CODE:7439  f5 82                    MOV DPL,A
CODE:743b  e4                       CLR A
CODE:743c  34 02                    ADDC A,#0x2
CODE:743e  f5 83                    MOV DPH,A
CODE:7440  e0                       MOVX A,@DPTR
CODE:7441  fc                       MOV R4,A
CODE:7442  a3                       INC DPTR
CODE:7443  e0                       MOVX A,@DPTR
CODE:7444  fd                       MOV R5,A
CODE:7445  a3                       INC DPTR
CODE:7446  e0                       MOVX A,@DPTR
CODE:7447  fe                       MOV R6,A
CODE:7448  a3                       INC DPTR
CODE:7449  e0                       MOVX A,@DPTR
CODE:744a  ff                       MOV R7,A
CODE:744b  e5 2a                    MOV A,0x2a
CODE:744d  25 e0                    ADD A,A
CODE:744f  25 e0                    ADD A,A
CODE:7451  24 84                    ADD A,#0x84
CODE:7453  f5 82                    MOV DPL,A
CODE:7455  e4                       CLR A
CODE:7456  34 02                    ADDC A,#0x2
CODE:7458  f5 83                    MOV DPH,A
CODE:745a  12 7a 89                 LCALL 0x7a89
CODE:745d  05 2a                    INC 0x2a
CODE:745f  e5 2a                    MOV A,0x2a
CODE:7461  b4 06 cd                 CJNE A,#0x6,0x7431
CODE:7464  22                       RET

; ===== FUNCTION FUN_CODE_7465 @ CODE:7465 =====
CODE:7465  90 02 9f                 MOV DPTR,#0x29f   ; XREF: CODE:4df8 Entry Point 
CODE:7468  e0                       MOVX A,@DPTR
CODE:7469  ff                       MOV R7,A
CODE:746a  64 fe                    XRL A,#0xfe
CODE:746c  60 03                    JZ 0x7471
CODE:746e  02 74 fb                 LJMP 0x74fb
LAB_CODE_7471:
CODE:7471  f0                       MOVX @DPTR,A   ; XREF: CODE:746c 
CODE:7472  30 00 26                 JNB 0x00,0x749b
CODE:7475  75 1a 11                 MOV 0x1a,#0x11
CODE:7478  75 1b 80                 MOV 0x1b,#0x80
CODE:747b  85 1b 82                 MOV DPL,0x1b
CODE:747e  85 1a 83                 MOV DPH,0x1a
CODE:7481  74 0d                    MOV A,#0xd
CODE:7483  f0                       MOVX @DPTR,A
CODE:7484  a3                       INC DPTR
CODE:7485  74 05                    MOV A,#0x5
CODE:7487  f0                       MOVX @DPTR,A
CODE:7488  90 03 32                 MOV DPTR,#0x332
CODE:748b  e0                       MOVX A,@DPTR
CODE:748c  85 1b 82                 MOV DPL,0x1b
CODE:748f  85 1a 83                 MOV DPH,0x1a
CODE:7492  a3                       INC DPTR
CODE:7493  a3                       INC DPTR
CODE:7494  f0                       MOVX @DPTR,A
CODE:7495  90 02 82                 MOV DPTR,#0x282
CODE:7498  e0                       MOVX A,@DPTR
CODE:7499  80 1b                    SJMP 0x74b6
LAB_CODE_749b:
CODE:749b  75 1a 11                 MOV 0x1a,#0x11   ; XREF: CODE:7472 
CODE:749e  75 1b 80                 MOV 0x1b,#0x80
CODE:74a1  85 1b 82                 MOV DPL,0x1b
CODE:74a4  85 1a 83                 MOV DPH,0x1a
CODE:74a7  74 0d                    MOV A,#0xd
CODE:74a9  f0                       MOVX @DPTR,A
CODE:74aa  a3                       INC DPTR
CODE:74ab  e4                       CLR A
CODE:74ac  f0                       MOVX @DPTR,A
CODE:74ad  85 1b 82                 MOV DPL,0x1b
CODE:74b0  85 1a 83                 MOV DPH,0x1a
CODE:74b3  a3                       INC DPTR
CODE:74b4  a3                       INC DPTR
CODE:74b5  f0                       MOVX @DPTR,A
LAB_CODE_74b6:
CODE:74b6  85 1b 82                 MOV DPL,0x1b   ; XREF: CODE:7499 
CODE:74b9  85 1a 83                 MOV DPH,0x1a
CODE:74bc  a3                       INC DPTR
CODE:74bd  a3                       INC DPTR
CODE:74be  a3                       INC DPTR
CODE:74bf  f0                       MOVX @DPTR,A
CODE:74c0  e5 1b                    MOV A,0x1b
CODE:74c2  24 04                    ADD A,#0x4
CODE:74c4  f5 82                    MOV DPL,A
CODE:74c6  e4                       CLR A
CODE:74c7  35 1a                    ADDC A,0x1a
CODE:74c9  f5 83                    MOV DPH,A
CODE:74cb  e4                       CLR A
CODE:74cc  f0                       MOVX @DPTR,A
CODE:74cd  e5 1b                    MOV A,0x1b
CODE:74cf  24 05                    ADD A,#0x5
CODE:74d1  f5 82                    MOV DPL,A
CODE:74d3  e4                       CLR A
CODE:74d4  35 1a                    ADDC A,0x1a
CODE:74d6  f5 83                    MOV DPH,A
CODE:74d8  e4                       CLR A
CODE:74d9  f0                       MOVX @DPTR,A
CODE:74da  e5 1b                    MOV A,0x1b
CODE:74dc  24 06                    ADD A,#0x6
CODE:74de  f5 82                    MOV DPL,A
CODE:74e0  e4                       CLR A
CODE:74e1  35 1a                    ADDC A,0x1a
CODE:74e3  f5 83                    MOV DPH,A
CODE:74e5  e4                       CLR A
CODE:74e6  f0                       MOVX @DPTR,A
CODE:74e7  e5 1b                    MOV A,0x1b
CODE:74e9  24 07                    ADD A,#0x7
CODE:74eb  f5 82                    MOV DPL,A
CODE:74ed  e4                       CLR A
CODE:74ee  35 1a                    ADDC A,0x1a
CODE:74f0  f5 83                    MOV DPH,A
CODE:74f2  e4                       CLR A
CODE:74f3  f0                       MOVX @DPTR,A
CODE:74f4  75 9d 08                 MOV 0x9d,#0x8
CODE:74f7  43 9a 04                 ORL 0x9a,#0x4
CODE:74fa  22                       RET
LAB_CODE_74fb:
CODE:74fb  ef                       MOV A,R7   ; XREF: CODE:746e 
CODE:74fc  54 f0                    ANL A,#0xf0
CODE:74fe  ff                       MOV R7,A
CODE:74ff  bf e0 0d                 CJNE R7,#0xe0,0x750f
CODE:7502  90 02 a2                 MOV DPTR,#0x2a2
CODE:7505  e0                       MOVX A,@DPTR
CODE:7506  64 04                    XRL A,#0x4
CODE:7508  60 05                    JZ 0x750f
CODE:750a  d2 02                    SETB 0x02
CODE:750c  02 7d 45                 LJMP 0x7d45
LAB_CODE_750f:
CODE:750f  90 02 a2                 MOV DPTR,#0x2a2   ; XREF: CODE:74ff CODE:7508 
CODE:7512  e0                       MOVX A,@DPTR
CODE:7513  24 fc                    ADD A,#0xfc
CODE:7515  60 0b                    JZ 0x7522
CODE:7517  24 f5                    ADD A,#0xf5
CODE:7519  60 0c                    JZ 0x7527
CODE:751b  24 0f                    ADD A,#0xf
CODE:751d  70 0d                    JNZ 0x752c
CODE:751f  02 6e c8                 LJMP 0x6ec8
LAB_CODE_7522:
CODE:7522  d2 03                    SETB 0x03   ; XREF: CODE:7515 
CODE:7524  02 80 a1                 LJMP 0x80a1
LAB_CODE_7527:
CODE:7527  d2 04                    SETB 0x04   ; XREF: CODE:7519 
CODE:7529  12 81 c4                 LCALL 0x81c4
LAB_CODE_752c:
CODE:752c  22                       RET   ; XREF: CODE:751d 

; ===== FUNCTION FUN_CODE_75e2 @ CODE:75e2 =====
CODE:75e2  e5 9a                    MOV A,0x9a   ; XREF: Entry Point CODE:5882 
CODE:75e4  30 e2 03                 JNB 0xe2,0x75ea
CODE:75e7  02 76 88                 LJMP 0x7688
LAB_CODE_75ea:
CODE:75ea  30 27 35                 JNB 0x27,0x7622   ; XREF: CODE:75e4 
CODE:75ed  30 02 61                 JNB 0x02,0x7651
CODE:75f0  c2 02                    CLR 0x02
CODE:75f2  c2 af                    CLR 0xaf
CODE:75f4  75 1a 11                 MOV 0x1a,#0x11
CODE:75f7  75 1b 80                 MOV 0x1b,#0x80
CODE:75fa  85 1b 82                 MOV DPL,0x1b
CODE:75fd  85 1a 83                 MOV DPH,0x1a
CODE:7600  74 01                    MOV A,#0x1
CODE:7602  f0                       MOVX @DPTR,A
CODE:7603  ff                       MOV R7,A
LAB_CODE_7604:
CODE:7604  74 ff                    MOV A,#0xff   ; XREF: CODE:761d 
CODE:7606  2f                       ADD A,R7
CODE:7607  f5 82                    MOV DPL,A
CODE:7609  e4                       CLR A
CODE:760a  34 01                    ADDC A,#0x1
CODE:760c  f5 83                    MOV DPH,A
CODE:760e  e0                       MOVX A,@DPTR
CODE:760f  fe                       MOV R6,A
CODE:7610  e5 1b                    MOV A,0x1b
CODE:7612  2f                       ADD A,R7
CODE:7613  f5 82                    MOV DPL,A
CODE:7615  e4                       CLR A
CODE:7616  35 1a                    ADDC A,0x1a
CODE:7618  f5 83                    MOV DPH,A
CODE:761a  ee                       MOV A,R6
CODE:761b  f0                       MOVX @DPTR,A
CODE:761c  0f                       INC R7
CODE:761d  bf 10 e4                 CJNE R7,#0x10,0x7604
CODE:7620  80 27                    SJMP 0x7649
LAB_CODE_7622:
CODE:7622  30 12 2c                 JNB 0x12,0x7651   ; XREF: CODE:75ea 
CODE:7625  c2 12                    CLR 0x12
CODE:7627  c2 af                    CLR 0xaf
CODE:7629  75 1a 11                 MOV 0x1a,#0x11
CODE:762c  75 1b 80                 MOV 0x1b,#0x80
CODE:762f  85 1b 82                 MOV DPL,0x1b
CODE:7632  85 1a 83                 MOV DPH,0x1a
CODE:7635  74 01                    MOV A,#0x1
CODE:7637  f0                       MOVX @DPTR,A
CODE:7638  ff                       MOV R7,A
LAB_CODE_7639:
CODE:7639  e5 1b                    MOV A,0x1b   ; XREF: CODE:7646 
CODE:763b  2f                       ADD A,R7
CODE:763c  f5 82                    MOV DPL,A
CODE:763e  e4                       CLR A
CODE:763f  35 1a                    ADDC A,0x1a
CODE:7641  f5 83                    MOV DPH,A
CODE:7643  e4                       CLR A
CODE:7644  f0                       MOVX @DPTR,A
CODE:7645  0f                       INC R7
CODE:7646  bf 10 f0                 CJNE R7,#0x10,0x7639
LAB_CODE_7649:
CODE:7649  75 9d 10                 MOV 0x9d,#0x10   ; XREF: CODE:7620 
CODE:764c  43 9a 04                 ORL 0x9a,#0x4
CODE:764f  d2 af                    SETB 0xaf
LAB_CODE_7651:
CODE:7651  30 03 34                 JNB 0x03,0x7688   ; XREF: CODE:75ed CODE:7622 
CODE:7654  c2 03                    CLR 0x03
CODE:7656  c2 af                    CLR 0xaf
CODE:7658  75 1a 11                 MOV 0x1a,#0x11
CODE:765b  75 1b 80                 MOV 0x1b,#0x80
CODE:765e  85 1b 82                 MOV DPL,0x1b
CODE:7661  85 1a 83                 MOV DPH,0x1a
CODE:7664  74 02                    MOV A,#0x2
CODE:7666  f0                       MOVX @DPTR,A
CODE:7667  90 02 a5                 MOV DPTR,#0x2a5
CODE:766a  e0                       MOVX A,@DPTR
CODE:766b  85 1b 82                 MOV DPL,0x1b
CODE:766e  85 1a 83                 MOV DPH,0x1a
CODE:7671  a3                       INC DPTR
CODE:7672  f0                       MOVX @DPTR,A
CODE:7673  90 02 a6                 MOV DPTR,#0x2a6
CODE:7676  e0                       MOVX A,@DPTR
CODE:7677  85 1b 82                 MOV DPL,0x1b
CODE:767a  85 1a 83                 MOV DPH,0x1a
CODE:767d  a3                       INC DPTR
CODE:767e  a3                       INC DPTR
CODE:767f  f0                       MOVX @DPTR,A
CODE:7680  75 9d 03                 MOV 0x9d,#0x3
CODE:7683  43 9a 04                 ORL 0x9a,#0x4
CODE:7686  d2 af                    SETB 0xaf
LAB_CODE_7688:
CODE:7688  22                       RET   ; XREF: CODE:75e7 CODE:7651 

; ===== FUNCTION FUN_CODE_7689 @ CODE:7689 =====
CODE:7689  12 77 cb                 LCALL 0x77cb   ; XREF: Entry Point CODE:5b32 
CODE:768c  c2 05                    CLR 0x05
CODE:768e  e4                       CLR A
CODE:768f  f5 2a                    MOV 0x2a,A
LAB_CODE_7691:
CODE:7691  e5 2a                    MOV A,0x2a   ; XREF: CODE:76d3 
CODE:7693  25 e0                    ADD A,A
CODE:7695  25 e0                    ADD A,A
CODE:7697  24 e5                    ADD A,#0xe5
CODE:7699  f5 82                    MOV DPL,A
CODE:769b  e4                       CLR A
CODE:769c  34 02                    ADDC A,#0x2
CODE:769e  f5 83                    MOV DPH,A
CODE:76a0  e0                       MOVX A,@DPTR
CODE:76a1  fc                       MOV R4,A
CODE:76a2  a3                       INC DPTR
CODE:76a3  e0                       MOVX A,@DPTR
CODE:76a4  fd                       MOV R5,A
CODE:76a5  a3                       INC DPTR
CODE:76a6  e0                       MOVX A,@DPTR
CODE:76a7  fe                       MOV R6,A
CODE:76a8  a3                       INC DPTR
CODE:76a9  e0                       MOVX A,@DPTR
CODE:76aa  ff                       MOV R7,A
CODE:76ab  e5 2a                    MOV A,0x2a
CODE:76ad  25 e0                    ADD A,A
CODE:76af  25 e0                    ADD A,A
CODE:76b1  24 fe                    ADD A,#0xfe
CODE:76b3  f5 82                    MOV DPL,A
CODE:76b5  e4                       CLR A
CODE:76b6  34 02                    ADDC A,#0x2
CODE:76b8  f5 83                    MOV DPH,A
CODE:76ba  e0                       MOVX A,@DPTR
CODE:76bb  f8                       MOV R0,A
CODE:76bc  a3                       INC DPTR
CODE:76bd  e0                       MOVX A,@DPTR
CODE:76be  f9                       MOV R1,A
CODE:76bf  a3                       INC DPTR
CODE:76c0  e0                       MOVX A,@DPTR
CODE:76c1  fa                       MOV R2,A
CODE:76c2  a3                       INC DPTR
CODE:76c3  e0                       MOVX A,@DPTR
CODE:76c4  fb                       MOV R3,A
CODE:76c5  c3                       CLR CY
CODE:76c6  12 7a 42                 LCALL 0x7a42
CODE:76c9  60 04                    JZ 0x76cf
CODE:76cb  d2 05                    SETB 0x05
CODE:76cd  80 07                    SJMP 0x76d6
LAB_CODE_76cf:
CODE:76cf  05 2a                    INC 0x2a   ; XREF: CODE:76c9 
CODE:76d1  e5 2a                    MOV A,0x2a
CODE:76d3  b4 06 bb                 CJNE A,#0x6,0x7691
LAB_CODE_76d6:
CODE:76d6  30 05 07                 JNB 0x05,0x76e0   ; XREF: CODE:76cd 
CODE:76d9  e4                       CLR A
CODE:76da  90 02 fd                 MOV DPTR,#0x2fd
CODE:76dd  f0                       MOVX @DPTR,A
CODE:76de  80 0f                    SJMP 0x76ef
LAB_CODE_76e0:
CODE:76e0  90 02 fd                 MOV DPTR,#0x2fd   ; XREF: CODE:76d6 
CODE:76e3  e0                       MOVX A,@DPTR
CODE:76e4  04                       INC A
CODE:76e5  f0                       MOVX @DPTR,A
CODE:76e6  e0                       MOVX A,@DPTR
CODE:76e7  d3                       SETB CY
CODE:76e8  94 c8                    SUBB A,#0xc8
CODE:76ea  40 03                    JC 0x76ef
CODE:76ec  74 c8                    MOV A,#0xc8
CODE:76ee  f0                       MOVX @DPTR,A
LAB_CODE_76ef:
CODE:76ef  e4                       CLR A   ; XREF: CODE:76de CODE:76ea 
CODE:76f0  f5 2a                    MOV 0x2a,A
LAB_CODE_76f2:
CODE:76f2  e5 2a                    MOV A,0x2a   ; XREF: CODE:7722 
CODE:76f4  25 e0                    ADD A,A
CODE:76f6  25 e0                    ADD A,A
CODE:76f8  24 fe                    ADD A,#0xfe
CODE:76fa  f5 82                    MOV DPL,A
CODE:76fc  e4                       CLR A
CODE:76fd  34 02                    ADDC A,#0x2
CODE:76ff  f5 83                    MOV DPH,A
CODE:7701  e0                       MOVX A,@DPTR
CODE:7702  fc                       MOV R4,A
CODE:7703  a3                       INC DPTR
CODE:7704  e0                       MOVX A,@DPTR
CODE:7705  fd                       MOV R5,A
CODE:7706  a3                       INC DPTR
CODE:7707  e0                       MOVX A,@DPTR
CODE:7708  fe                       MOV R6,A
CODE:7709  a3                       INC DPTR
CODE:770a  e0                       MOVX A,@DPTR
CODE:770b  ff                       MOV R7,A
CODE:770c  e5 2a                    MOV A,0x2a
CODE:770e  25 e0                    ADD A,A
CODE:7710  25 e0                    ADD A,A
CODE:7712  24 e5                    ADD A,#0xe5
CODE:7714  f5 82                    MOV DPL,A
CODE:7716  e4                       CLR A
CODE:7717  34 02                    ADDC A,#0x2
CODE:7719  f5 83                    MOV DPH,A
CODE:771b  12 7a 89                 LCALL 0x7a89
CODE:771e  05 2a                    INC 0x2a
CODE:7720  e5 2a                    MOV A,0x2a
CODE:7722  b4 06 cd                 CJNE A,#0x6,0x76f2
CODE:7725  90 02 fd                 MOV DPTR,#0x2fd
CODE:7728  e0                       MOVX A,@DPTR
CODE:7729  b4 01 02                 CJNE A,#0x1,0x772e
CODE:772c  d2 01                    SETB 0x01
LAB_CODE_772e:
CODE:772e  22                       RET   ; XREF: CODE:7729 

; ===== FUNCTION FUN_CODE_77cb @ CODE:77cb =====
CODE:77cb  12 82 58                 LCALL 0x8258   ; XREF: CODE:7689 Entry Point 
CODE:77ce  e4                       CLR A
CODE:77cf  f5 2b                    MOV 0x2b,A
LAB_CODE_77d1:
CODE:77d1  af 2b                    MOV R7,0x2b   ; XREF: CODE:7836 
CODE:77d3  12 71 73                 LCALL 0x7173
CODE:77d6  e4                       CLR A
CODE:77d7  f5 2c                    MOV 0x2c,A
LAB_CODE_77d9:
CODE:77d9  af 2c                    MOV R7,0x2c   ; XREF: CODE:782d 
CODE:77db  12 7f 30                 LCALL 0x7f30
CODE:77de  92 06                    MOV 0x06,CY
CODE:77e0  30 06 43                 JNB 0x06,0x7826
CODE:77e3  e4                       CLR A
CODE:77e4  7f 01                    MOV R7,#0x1
CODE:77e6  fe                       MOV R6,A
CODE:77e7  fd                       MOV R5,A
CODE:77e8  fc                       MOV R4,A
CODE:77e9  a9 2b                    MOV R1,0x2b
CODE:77eb  a8 01                    MOV R0,0x01
CODE:77ed  12 7a 66                 LCALL 0x7a66
CODE:77f0  e5 2c                    MOV A,0x2c
CODE:77f2  25 e0                    ADD A,A
CODE:77f4  25 e0                    ADD A,A
CODE:77f6  24 fe                    ADD A,#0xfe
CODE:77f8  f5 82                    MOV DPL,A
CODE:77fa  e4                       CLR A
CODE:77fb  34 02                    ADDC A,#0x2
CODE:77fd  f5 83                    MOV DPH,A
CODE:77ff  e0                       MOVX A,@DPTR
CODE:7800  f8                       MOV R0,A
CODE:7801  a3                       INC DPTR
CODE:7802  e0                       MOVX A,@DPTR
CODE:7803  f9                       MOV R1,A
CODE:7804  a3                       INC DPTR
CODE:7805  e0                       MOVX A,@DPTR
CODE:7806  fa                       MOV R2,A
CODE:7807  a3                       INC DPTR
CODE:7808  e0                       MOVX A,@DPTR
CODE:7809  4f                       ORL A,R7
CODE:780a  ff                       MOV R7,A
CODE:780b  ea                       MOV A,R2
CODE:780c  4e                       ORL A,R6
CODE:780d  fe                       MOV R6,A
CODE:780e  e9                       MOV A,R1
CODE:780f  4d                       ORL A,R5
CODE:7810  fd                       MOV R5,A
CODE:7811  e8                       MOV A,R0
CODE:7812  4c                       ORL A,R4
CODE:7813  fc                       MOV R4,A
CODE:7814  e5 2c                    MOV A,0x2c
CODE:7816  25 e0                    ADD A,A
CODE:7818  25 e0                    ADD A,A
CODE:781a  24 fe                    ADD A,#0xfe
CODE:781c  f5 82                    MOV DPL,A
CODE:781e  e4                       CLR A
CODE:781f  34 02                    ADDC A,#0x2
CODE:7821  f5 83                    MOV DPH,A
CODE:7823  12 7a 89                 LCALL 0x7a89
LAB_CODE_7826:
CODE:7826  05 2c                    INC 0x2c   ; XREF: CODE:77e0 
CODE:7828  e5 2c                    MOV A,0x2c
CODE:782a  c3                       CLR CY
CODE:782b  94 06                    SUBB A,#0x6
CODE:782d  40 aa                    JC 0x77d9
CODE:782f  05 2b                    INC 0x2b
CODE:7831  e5 2b                    MOV A,0x2b
CODE:7833  c3                       CLR CY
CODE:7834  94 17                    SUBB A,#0x17
CODE:7836  40 99                    JC 0x77d1
CODE:7838  43 e5 7f                 ORL 0xe5,#0x7f
CODE:783b  43 ed 7f                 ORL 0xed,#0x7f
CODE:783e  75 e7 ff                 MOV 0xe7,#0xff
CODE:7841  75 ef ff                 MOV 0xef,#0xff
CODE:7844  43 e6 87                 ORL 0xe6,#0x87
CODE:7847  43 ee 87                 ORL 0xee,#0x87
CODE:784a  43 e1 e0                 ORL 0xe1,#0xe0
CODE:784d  43 e9 e0                 ORL 0xe9,#0xe0
CODE:7850  43 d1 10                 ORL 0xd1,#0x10
CODE:7853  43 d9 10                 ORL 0xd9,#0x10
EXT_CODE_7856:
CODE:7856  22                       RET   ; XREF: Entry Point 

; ===== FUNCTION FUN_CODE_7857 @ CODE:7857 =====
CODE:7857  90 03 28                 MOV DPTR,#0x328   ; XREF: CODE:60c8 CODE:7cd1 Entry Point 
CODE:785a  e0                       MOVX A,@DPTR
CODE:785b  fe                       MOV R6,A
CODE:785c  a3                       INC DPTR
CODE:785d  e0                       MOVX A,@DPTR
CODE:785e  ff                       MOV R7,A
CODE:785f  4e                       ORL A,R6
CODE:7860  70 0c                    JNZ 0x786e
CODE:7862  90 03 3b                 MOV DPTR,#0x33b
CODE:7865  74 02                    MOV A,#0x2
CODE:7867  f0                       MOVX @DPTR,A
CODE:7868  53 9b f0                 ANL 0x9b,#0xf0
CODE:786b  02 78 d9                 LJMP 0x78d9
LAB_CODE_786e:
CODE:786e  d3                       SETB CY   ; XREF: CODE:7860 
CODE:786f  ef                       MOV A,R7
CODE:7870  94 08                    SUBB A,#0x8
CODE:7872  ee                       MOV A,R6
CODE:7873  94 00                    SUBB A,#0x0
CODE:7875  40 25                    JC 0x789c
CODE:7877  90 03 3b                 MOV DPTR,#0x33b
CODE:787a  74 01                    MOV A,#0x1
CODE:787c  f0                       MOVX @DPTR,A
CODE:787d  90 03 29                 MOV DPTR,#0x329
CODE:7880  e0                       MOVX A,@DPTR
CODE:7881  24 f8                    ADD A,#0xf8
CODE:7883  f0                       MOVX @DPTR,A
CODE:7884  90 03 28                 MOV DPTR,#0x328
CODE:7887  e0                       MOVX A,@DPTR
CODE:7888  34 ff                    ADDC A,#0xff
CODE:788a  12 7d 08                 LCALL 0x7d08
CODE:788d  90 03 2f                 MOV DPTR,#0x32f
CODE:7890  e0                       MOVX A,@DPTR
CODE:7891  24 08                    ADD A,#0x8
CODE:7893  f0                       MOVX @DPTR,A
CODE:7894  90 03 2e                 MOV DPTR,#0x32e
CODE:7897  e0                       MOVX A,@DPTR
CODE:7898  34 00                    ADDC A,#0x0
CODE:789a  80 1a                    SJMP 0x78b6
LAB_CODE_789c:
CODE:789c  90 03 28                 MOV DPTR,#0x328   ; XREF: CODE:7875 
CODE:789f  e0                       MOVX A,@DPTR
CODE:78a0  fa                       MOV R2,A
CODE:78a1  a3                       INC DPTR
CODE:78a2  e0                       MOVX A,@DPTR
CODE:78a3  fb                       MOV R3,A
CODE:78a4  64 08                    XRL A,#0x8
CODE:78a6  4a                       ORL A,R2
CODE:78a7  90 03 3b                 MOV DPTR,#0x33b
CODE:78aa  70 13                    JNZ 0x78bf
CODE:78ac  04                       INC A
CODE:78ad  12 7d 08                 LCALL 0x7d08
CODE:78b0  e4                       CLR A
CODE:78b1  90 03 28                 MOV DPTR,#0x328
CODE:78b4  f0                       MOVX @DPTR,A
CODE:78b5  a3                       INC DPTR
LAB_CODE_78b6:
CODE:78b6  f0                       MOVX @DPTR,A   ; XREF: CODE:789a 
CODE:78b7  53 9b f0                 ANL 0x9b,#0xf0
CODE:78ba  43 9b 08                 ORL 0x9b,#0x8
CODE:78bd  80 1a                    SJMP 0x78d9
LAB_CODE_78bf:
CODE:78bf  74 02                    MOV A,#0x2   ; XREF: CODE:78aa 
CODE:78c1  f0                       MOVX @DPTR,A
CODE:78c2  90 03 2e                 MOV DPTR,#0x32e
CODE:78c5  e0                       MOVX A,@DPTR
CODE:78c6  fe                       MOV R6,A
CODE:78c7  a3                       INC DPTR
CODE:78c8  e0                       MOVX A,@DPTR
CODE:78c9  ff                       MOV R7,A
CODE:78ca  ad 03                    MOV R5,0x03
CODE:78cc  12 7d 13                 LCALL 0x7d13
CODE:78cf  53 9b f0                 ANL 0x9b,#0xf0
CODE:78d2  90 03 28                 MOV DPTR,#0x328
CODE:78d5  a3                       INC DPTR
CODE:78d6  e0                       MOVX A,@DPTR
CODE:78d7  42 9b                    ORL 0x9b,A
LAB_CODE_78d9:
CODE:78d9  53 93 fe                 ANL 0x93,#0xfe   ; XREF: CODE:786b CODE:78bd 
CODE:78dc  22                       RET

; ===== FUNCTION FUN_CODE_78dd @ CODE:78dd =====
CODE:78dd  75 1a 11                 MOV 0x1a,#0x11   ; XREF: CODE:795c Entry Point 
CODE:78e0  75 1b 00                 MOV 0x1b,#0x0
CODE:78e3  85 1b 82                 MOV DPL,0x1b
CODE:78e6  85 1a 83                 MOV DPH,0x1a
CODE:78e9  e0                       MOVX A,@DPTR
CODE:78ea  90 03 16                 MOV DPTR,#0x316
CODE:78ed  f0                       MOVX @DPTR,A
CODE:78ee  85 1b 82                 MOV DPL,0x1b
CODE:78f1  85 1a 83                 MOV DPH,0x1a
CODE:78f4  a3                       INC DPTR
CODE:78f5  e0                       MOVX A,@DPTR
CODE:78f6  90 03 17                 MOV DPTR,#0x317
CODE:78f9  f0                       MOVX @DPTR,A
CODE:78fa  85 1b 82                 MOV DPL,0x1b
CODE:78fd  85 1a 83                 MOV DPH,0x1a
CODE:7900  a3                       INC DPTR
CODE:7901  a3                       INC DPTR
CODE:7902  e0                       MOVX A,@DPTR
CODE:7903  90 03 18                 MOV DPTR,#0x318
CODE:7906  f0                       MOVX @DPTR,A
CODE:7907  85 1b 82                 MOV DPL,0x1b
CODE:790a  85 1a 83                 MOV DPH,0x1a
CODE:790d  a3                       INC DPTR
CODE:790e  a3                       INC DPTR
CODE:790f  a3                       INC DPTR
CODE:7910  e0                       MOVX A,@DPTR
CODE:7911  90 03 19                 MOV DPTR,#0x319
CODE:7914  f0                       MOVX @DPTR,A
CODE:7915  e5 1b                    MOV A,0x1b
CODE:7917  24 04                    ADD A,#0x4
CODE:7919  f5 82                    MOV DPL,A
CODE:791b  e4                       CLR A
CODE:791c  35 1a                    ADDC A,0x1a
CODE:791e  f5 83                    MOV DPH,A
CODE:7920  e0                       MOVX A,@DPTR
CODE:7921  90 03 1a                 MOV DPTR,#0x31a
CODE:7924  f0                       MOVX @DPTR,A
CODE:7925  e5 1b                    MOV A,0x1b
CODE:7927  24 05                    ADD A,#0x5
CODE:7929  f5 82                    MOV DPL,A
CODE:792b  e4                       CLR A
CODE:792c  35 1a                    ADDC A,0x1a
CODE:792e  f5 83                    MOV DPH,A
CODE:7930  e0                       MOVX A,@DPTR
CODE:7931  90 03 1b                 MOV DPTR,#0x31b
CODE:7934  f0                       MOVX @DPTR,A
CODE:7935  e5 1b                    MOV A,0x1b
CODE:7937  24 06                    ADD A,#0x6
CODE:7939  f5 82                    MOV DPL,A
CODE:793b  e4                       CLR A
CODE:793c  35 1a                    ADDC A,0x1a
CODE:793e  f5 83                    MOV DPH,A
CODE:7940  e0                       MOVX A,@DPTR
CODE:7941  90 03 1c                 MOV DPTR,#0x31c
CODE:7944  f0                       MOVX @DPTR,A
CODE:7945  e5 1b                    MOV A,0x1b
CODE:7947  24 07                    ADD A,#0x7
CODE:7949  f5 82                    MOV DPL,A
CODE:794b  e4                       CLR A
CODE:794c  35 1a                    ADDC A,0x1a
CODE:794e  f5 83                    MOV DPH,A
CODE:7950  e0                       MOVX A,@DPTR
CODE:7951  90 03 1d                 MOV DPTR,#0x31d
CODE:7954  f0                       MOVX @DPTR,A
CODE:7955  22                       RET

; ===== FUNCTION FUN_CODE_7956 @ CODE:7956 =====
CODE:7956  75 47 65                 MOV 0x47,#0x65   ; XREF: CODE:6cae 
CODE:7959  75 48 41                 MOV 0x48,#0x41
CODE:795c  12 78 dd                 LCALL 0x78dd
CODE:795f  e4                       CLR A
CODE:7960  f5 19                    MOV 0x19,A
LAB_CODE_7962:
CODE:7962  85 48 82                 MOV DPL,0x48   ; XREF: CODE:79a8 
CODE:7965  85 47 83                 MOV DPH,0x47
CODE:7968  e4                       CLR A
CODE:7969  93                       MOVC A,@A+DPTR
CODE:796a  ff                       MOV R7,A
CODE:796b  90 03 16                 MOV DPTR,#0x316
CODE:796e  e0                       MOVX A,@DPTR
CODE:796f  fe                       MOV R6,A
CODE:7970  ef                       MOV A,R7
CODE:7971  b5 06 20                 CJNE A,0x06,0x7994
CODE:7974  85 48 82                 MOV DPL,0x48
CODE:7977  85 47 83                 MOV DPH,0x47
CODE:797a  74 01                    MOV A,#0x1
CODE:797c  93                       MOVC A,@A+DPTR
CODE:797d  ff                       MOV R7,A
CODE:797e  90 03 17                 MOV DPTR,#0x317
CODE:7981  e0                       MOVX A,@DPTR
CODE:7982  fe                       MOV R6,A
CODE:7983  ef                       MOV A,R7
CODE:7984  b5 06 0d                 CJNE A,0x06,0x7994
CODE:7987  85 48 82                 MOV DPL,0x48
CODE:798a  85 47 83                 MOV DPH,0x47
CODE:798d  74 02                    MOV A,#0x2
CODE:798f  93                       MOVC A,@A+DPTR
CODE:7990  f5 19                    MOV 0x19,A
CODE:7992  80 16                    SJMP 0x79aa
LAB_CODE_7994:
CODE:7994  74 03                    MOV A,#0x3   ; XREF: CODE:7971 CODE:7984 
CODE:7996  25 48                    ADD A,0x48
CODE:7998  f5 48                    MOV 0x48,A
CODE:799a  e4                       CLR A
CODE:799b  35 47                    ADDC A,0x47
CODE:799d  f5 47                    MOV 0x47,A
CODE:799f  c3                       CLR CY
CODE:79a0  e5 48                    MOV A,0x48
CODE:79a2  94 80                    SUBB A,#0x80
CODE:79a4  e5 47                    MOV A,0x47
CODE:79a6  94 65                    SUBB A,#0x65
CODE:79a8  40 b8                    JC 0x7962
LAB_CODE_79aa:
CODE:79aa  e5 19                    MOV A,0x19   ; XREF: CODE:7992 
CODE:79ac  75 f0 03                 MOV B,#0x3
CODE:79af  a4                       MUL AB
CODE:79b0  24 02                    ADD A,#0x2
CODE:79b2  f5 82                    MOV DPL,A
CODE:79b4  e4                       CLR A
CODE:79b5  34 65                    ADDC A,#0x65
CODE:79b7  f5 83                    MOV DPH,A
CODE:79b9  74 01                    MOV A,#0x1
CODE:79bb  93                       MOVC A,@A+DPTR
CODE:79bc  fa                       MOV R2,A
CODE:79bd  74 02                    MOV A,#0x2
CODE:79bf  93                       MOVC A,@A+DPTR
CODE:79c0  f9                       MOV R1,A
CODE:79c1  02 7a 95                 LJMP 0x7a95

; ===== FUNCTION FUN_CODE_79c4 @ CODE:79c4 =====
CODE:79c4  75 cd fe                 MOV 0xcd,#0xfe   ; XREF: Entry Point CODE:0061 CODE:0f7f 
CODE:79c7  75 cc 6f                 MOV 0xcc,#0x6f
CODE:79ca  75 cb fe                 MOV 0xcb,#0xfe
CODE:79cd  75 ca 6f                 MOV 0xca,#0x6f
CODE:79d0  d2 82                    SETB 0x82

; ===== FUNCTION FUN_CODE_79d2 @ CODE:79d2 =====
CODE:79d2  c2 b1                    CLR 0xb1   ; XREF: CODE:4fbd CODE:5176 CODE:519b CODE:51fb CODE:705b CODE:716a CODE:8258 Entry Point CODE:7c0e CODE:839b CODE:5890 CODE:5af6 CODE:0e6c CODE:0eae CODE:0f4b CODE:4293 
CODE:79d4  c2 c0                    CLR 0xc0
CODE:79d6  c2 c1                    CLR 0xc1
CODE:79d8  c2 c2                    CLR 0xc2
CODE:79da  c2 c3                    CLR 0xc3
CODE:79dc  c2 c4                    CLR 0xc4
CODE:79de  c2 c5                    CLR 0xc5
CODE:79e0  c2 c6                    CLR 0xc6
CODE:79e2  c2 c7                    CLR 0xc7
CODE:79e4  c2 88                    CLR 0x88
CODE:79e6  c2 89                    CLR 0x89
CODE:79e8  c2 8a                    CLR 0x8a
CODE:79ea  c2 8f                    CLR 0x8f
CODE:79ec  c2 b0                    CLR 0xb0
CODE:79ee  c2 b4                    CLR 0xb4
CODE:79f0  c2 b2                    CLR 0xb2
CODE:79f2  c2 b3                    CLR 0xb3
CODE:79f4  c2 b5                    CLR 0xb5
CODE:79f6  c2 b6                    CLR 0xb6
CODE:79f8  c2 fc                    CLR 0xfc
CODE:79fa  c2 85                    CLR 0x85
CODE:79fc  c2 86                    CLR 0x86
CODE:79fe  c2 87                    CLR 0x87
CODE:7a00  90 ff 80                 MOV DPTR,#0xff80
CODE:7a03  74 a0                    MOV A,#0xa0
CODE:7a05  f0                       MOVX @DPTR,A
CODE:7a06  a3                       INC DPTR
CODE:7a07  e4                       CLR A
CODE:7a08  f0                       MOVX @DPTR,A
CODE:7a09  a3                       INC DPTR
CODE:7a0a  f0                       MOVX @DPTR,A
CODE:7a0b  a3                       INC DPTR
CODE:7a0c  f0                       MOVX @DPTR,A
CODE:7a0d  a3                       INC DPTR
CODE:7a0e  f0                       MOVX @DPTR,A
CODE:7a0f  a3                       INC DPTR
CODE:7a10  f0                       MOVX @DPTR,A
CODE:7a11  a3                       INC DPTR
CODE:7a12  74 a0                    MOV A,#0xa0
CODE:7a14  f0                       MOVX @DPTR,A
CODE:7a15  a3                       INC DPTR
CODE:7a16  e4                       CLR A
CODE:7a17  f0                       MOVX @DPTR,A
CODE:7a18  a3                       INC DPTR
CODE:7a19  f0                       MOVX @DPTR,A
CODE:7a1a  a3                       INC DPTR
CODE:7a1b  f0                       MOVX @DPTR,A
CODE:7a1c  a3                       INC DPTR
CODE:7a1d  f0                       MOVX @DPTR,A
CODE:7a1e  a3                       INC DPTR
CODE:7a1f  f0                       MOVX @DPTR,A
CODE:7a20  a3                       INC DPTR
CODE:7a21  74 a0                    MOV A,#0xa0
CODE:7a23  f0                       MOVX @DPTR,A
CODE:7a24  a3                       INC DPTR
CODE:7a25  e4                       CLR A
CODE:7a26  f0                       MOVX @DPTR,A
CODE:7a27  a3                       INC DPTR
CODE:7a28  f0                       MOVX @DPTR,A
CODE:7a29  a3                       INC DPTR
CODE:7a2a  f0                       MOVX @DPTR,A
CODE:7a2b  a3                       INC DPTR
CODE:7a2c  f0                       MOVX @DPTR,A
CODE:7a2d  a3                       INC DPTR
CODE:7a2e  f0                       MOVX @DPTR,A
CODE:7a2f  22                       RET

; ===== FUNCTION FUN_CODE_7a30 @ CODE:7a30 =====
CODE:7a30  ef                       MOV A,R7   ; XREF: CODE:4c94 CODE:4ccb CODE:4cef CODE:4d1a CODE:4d45 CODE:56d1 CODE:570b CODE:5746 CODE:5783 CODE:57c0 CODE:57fd Entry Point CODE:5b9e CODE:5bbf CODE:5be3 CODE:5c46 CODE:5c67 CODE:5c8b CODE:5cf6 CODE:5d26 CODE:5d59 
CODE:7a31  8d f0                    MOV B,R5
CODE:7a33  a4                       MUL AB
CODE:7a34  a8 f0                    MOV R0,B
CODE:7a36  cf                       XCH A,R7
CODE:7a37  8c f0                    MOV B,R4
CODE:7a39  a4                       MUL AB
CODE:7a3a  28                       ADD A,R0
CODE:7a3b  ce                       XCH A,R6
CODE:7a3c  8d f0                    MOV B,R5
CODE:7a3e  a4                       MUL AB
CODE:7a3f  2e                       ADD A,R6
CODE:7a40  fe                       MOV R6,A
CODE:7a41  22                       RET

; ===== FUNCTION FUN_CODE_7a42 @ CODE:7a42 =====
CODE:7a42  eb                       MOV A,R3   ; XREF: CODE:73cb CODE:76c6 Entry Point 
CODE:7a43  9f                       SUBB A,R7
CODE:7a44  f5 f0                    MOV B,A
CODE:7a46  ea                       MOV A,R2
CODE:7a47  9e                       SUBB A,R6
CODE:7a48  42 f0                    ORL B,A
CODE:7a4a  e9                       MOV A,R1
CODE:7a4b  9d                       SUBB A,R5
CODE:7a4c  42 f0                    ORL B,A
CODE:7a4e  e8                       MOV A,R0
CODE:7a4f  9c                       SUBB A,R4
CODE:7a50  45 f0                    ORL A,B
CODE:7a52  22                       RET

; ===== FUNCTION FUN_CODE_7a53 @ CODE:7a53 =====
CODE:7a53  e8                       MOV A,R0   ; XREF: CODE:38d1 CODE:38f8 CODE:471b CODE:4787 CODE:47ba CODE:481a CODE:484d CODE:48ad CODE:48e0 CODE:493e CODE:4971 CODE:49cf CODE:4a02 CODE:4a60 CODE:4a93 CODE:4af1 CODE:4b24 CODE:4b7b CODE:4bae CODE:4bc5 CODE:4c18 CODE:4c4b CODE:4c62 Entry Point 
CODE:7a54  60 0f                    JZ 0x7a65
LAB_CODE_7a56:
CODE:7a56  ec                       MOV A,R4   ; XREF: CODE:7a63 
CODE:7a57  c3                       CLR CY
CODE:7a58  13                       RRC A
CODE:7a59  fc                       MOV R4,A
CODE:7a5a  ed                       MOV A,R5
CODE:7a5b  13                       RRC A
CODE:7a5c  fd                       MOV R5,A
CODE:7a5d  ee                       MOV A,R6
CODE:7a5e  13                       RRC A
CODE:7a5f  fe                       MOV R6,A
CODE:7a60  ef                       MOV A,R7
CODE:7a61  13                       RRC A
CODE:7a62  ff                       MOV R7,A
CODE:7a63  d8 f1                    DJNZ R0,0x7a56
LAB_CODE_7a65:
CODE:7a65  22                       RET   ; XREF: CODE:7a54 

; ===== FUNCTION FUN_CODE_7a66 @ CODE:7a66 =====
CODE:7a66  e8                       MOV A,R0   ; XREF: CODE:77ed Entry Point 
CODE:7a67  60 0f                    JZ 0x7a78
LAB_CODE_7a69:
CODE:7a69  ef                       MOV A,R7   ; XREF: CODE:7a76 
CODE:7a6a  c3                       CLR CY
CODE:7a6b  33                       RLC A
CODE:7a6c  ff                       MOV R7,A
CODE:7a6d  ee                       MOV A,R6
CODE:7a6e  33                       RLC A
CODE:7a6f  fe                       MOV R6,A
CODE:7a70  ed                       MOV A,R5
CODE:7a71  33                       RLC A
CODE:7a72  fd                       MOV R5,A
CODE:7a73  ec                       MOV A,R4
CODE:7a74  33                       RLC A
CODE:7a75  fc                       MOV R4,A
CODE:7a76  d8 f1                    DJNZ R0,0x7a69
LAB_CODE_7a78:
CODE:7a78  22                       RET   ; XREF: CODE:7a67 

; ===== FUNCTION FUN_CODE_7a79 @ CODE:7a79 =====
CODE:7a79  e4                       CLR A   ; XREF: CODE:4704 CODE:4770 CODE:4803 CODE:4896 CODE:4927 CODE:49b8 CODE:4a49 CODE:4ada CODE:4b64 CODE:4716 CODE:4782 CODE:47b5 CODE:4815 CODE:4848 CODE:48a8 CODE:48db CODE:4939 CODE:496c CODE:49ca CODE:49fd CODE:4a5b CODE:4a8e CODE:4aec CODE:4b1f CODE:4b76 CODE:4ba9 CODE:4bc0 CODE:4c01 CODE:4c13 CODE:4c46 CODE:4c5d Entry Point 
CODE:7a7a  93                       MOVC A,@A+DPTR
CODE:7a7b  fc                       MOV R4,A
CODE:7a7c  74 01                    MOV A,#0x1
CODE:7a7e  93                       MOVC A,@A+DPTR
CODE:7a7f  fd                       MOV R5,A
CODE:7a80  74 02                    MOV A,#0x2
CODE:7a82  93                       MOVC A,@A+DPTR
CODE:7a83  fe                       MOV R6,A
CODE:7a84  74 03                    MOV A,#0x3
CODE:7a86  93                       MOVC A,@A+DPTR
CODE:7a87  ff                       MOV R7,A
CODE:7a88  22                       RET

; ===== FUNCTION FUN_CODE_7a89 @ CODE:7a89 =====
CODE:7a89  ec                       MOV A,R4   ; XREF: CODE:745a CODE:771b CODE:7823 Entry Point 
CODE:7a8a  f0                       MOVX @DPTR,A
CODE:7a8b  a3                       INC DPTR
CODE:7a8c  ed                       MOV A,R5
CODE:7a8d  f0                       MOVX @DPTR,A
CODE:7a8e  a3                       INC DPTR
CODE:7a8f  ee                       MOV A,R6
CODE:7a90  f0                       MOVX @DPTR,A
CODE:7a91  a3                       INC DPTR
CODE:7a92  ef                       MOV A,R7
CODE:7a93  f0                       MOVX @DPTR,A
CODE:7a94  22                       RET

; ===== FUNCTION FUN_CODE_7a95 @ CODE:7a95 =====
CODE:7a95  8a 83                    MOV DPH,R2   ; XREF: CODE:79c1 
CODE:7a97  89 82                    MOV DPL,R1
CODE:7a99  e4                       CLR A
CODE:7a9a  73                       JMP @A+DPTR

; ===== FUNCTION FUN_CODE_7a9b @ CODE:7a9b =====
CODE:7a9b  8e 3b                    MOV 0x3b,R6   ; XREF: CODE:4c9e CODE:4cce CODE:4cf9 CODE:4d24 CODE:4d4f Entry Point CODE:5ba8 CODE:5bc9 CODE:5bed CODE:5c50 CODE:5c71 CODE:5c95 CODE:5d0f CODE:5d3f CODE:5d72 
CODE:7a9d  8f 3c                    MOV 0x3c,R7
CODE:7a9f  12 7d 81                 LCALL 0x7d81
CODE:7aa2  e5 3b                    MOV A,0x3b
CODE:7aa4  f5 50                    MOV 0x50,A
CODE:7aa6  12 7d 86                 LCALL 0x7d86
CODE:7aa9  85 3c 50                 MOV 0x50,0x3c
CODE:7aac  12 7d 86                 LCALL 0x7d86
CODE:7aaf  c2 84                    CLR 0x84
CODE:7ab1  c2 83                    CLR 0x83
CODE:7ab3  7f 01                    MOV R7,#0x1
CODE:7ab5  7e 00                    MOV R6,#0x0
CODE:7ab7  12 7d cc                 LCALL 0x7dcc
CODE:7aba  d2 83                    SETB 0x83
CODE:7abc  12 7d c7                 LCALL 0x7dc7
CODE:7abf  c2 83                    CLR 0x83
CODE:7ac1  75 50 a1                 MOV 0x50,#0xa1
CODE:7ac4  12 7d 86                 LCALL 0x7d86
CODE:7ac7  7f 01                    MOV R7,#0x1
CODE:7ac9  7e 00                    MOV R6,#0x0
CODE:7acb  12 7d cc                 LCALL 0x7dcc
CODE:7ace  c2 84                    CLR 0x84
CODE:7ad0  d2 83                    SETB 0x83
CODE:7ad2  12 7f f2                 LCALL 0x7ff2
CODE:7ad5  90 03 3d                 MOV DPTR,#0x33d
CODE:7ad8  e5 50                    MOV A,0x50
CODE:7ada  f0                       MOVX @DPTR,A
CODE:7adb  c2 84                    CLR 0x84
LAB_CODE_7add:
CODE:7add  20 83 05                 JB 0x83,0x7ae5   ; XREF: CODE:7ae3 
CODE:7ae0  e4                       CLR A
CODE:7ae1  f5 b1                    MOV 0xb1,A
CODE:7ae3  80 f8                    SJMP 0x7add
LAB_CODE_7ae5:
CODE:7ae5  43 e1 08                 ORL 0xe1,#0x8   ; XREF: CODE:7add 
CODE:7ae8  53 e9 f7                 ANL 0xe9,#0xf7
CODE:7aeb  c2 83                    CLR 0x83
CODE:7aed  7f 01                    MOV R7,#0x1
CODE:7aef  7e 00                    MOV R6,#0x0
CODE:7af1  12 7d c7                 LCALL 0x7dc7
CODE:7af4  d2 83                    SETB 0x83
CODE:7af6  02 7d cc                 LJMP 0x7dcc

; ===== FUNCTION FUN_CODE_7af9 @ CODE:7af9 =====
CODE:7af9  75 e1 fc                 MOV 0xe1,#0xfc   ; XREF: Entry Point CODE:8113 
CODE:7afc  75 e2 3f                 MOV 0xe2,#0x3f
CODE:7aff  75 e3 3f                 MOV 0xe3,#0x3f
CODE:7b02  75 e4 3f                 MOV 0xe4,#0x3f
CODE:7b05  75 e5 ff                 MOV 0xe5,#0xff
CODE:7b08  75 e6 e7                 MOV 0xe6,#0xe7
CODE:7b0b  75 e7 ff                 MOV 0xe7,#0xff
CODE:7b0e  75 d1 f0                 MOV 0xd1,#0xf0
CODE:7b11  75 e9 e0                 MOV 0xe9,#0xe0
CODE:7b14  e4                       CLR A
CODE:7b15  f5 ea                    MOV 0xea,A
CODE:7b17  f5 eb                    MOV 0xeb,A
CODE:7b19  f5 ec                    MOV 0xec,A
CODE:7b1b  75 ed 6d                 MOV 0xed,#0x6d
CODE:7b1e  75 ee 9f                 MOV 0xee,#0x9f
CODE:7b21  75 ef ff                 MOV 0xef,#0xff
CODE:7b24  75 d9 ef                 MOV 0xd9,#0xef
CODE:7b27  75 80 01                 MOV 0x80,#0x1
CODE:7b2a  f5 90                    MOV 0x90,A
CODE:7b2c  f5 98                    MOV 0x98,A
CODE:7b2e  f5 a0                    MOV 0xa0,A
CODE:7b30  75 b0 91                 MOV 0xb0,#0x91
CODE:7b33  75 88 01                 MOV 0x88,#0x1
CODE:7b36  f5 c0                    MOV 0xc0,A
CODE:7b38  75 f8 e0                 MOV 0xf8,#0xe0
CODE:7b3b  c2 b7                    CLR 0xb7
CODE:7b3d  75 8c 05                 MOV 0x8c,#0x5
CODE:7b40  f5 a5                    MOV 0xa5,A
CODE:7b42  75 8c 45                 MOV 0x8c,#0x45
CODE:7b45  f5 a6                    MOV 0xa6,A
CODE:7b47  75 8c 85                 MOV 0x8c,#0x85
CODE:7b4a  f5 bb                    MOV 0xbb,A
CODE:7b4c  75 8c c5                 MOV 0x8c,#0xc5
CODE:7b4f  f5 8d                    MOV 0x8d,A
CODE:7b51  22                       RET

; ===== FUNCTION FUN_CODE_7b52 @ CODE:7b52 =====
CODE:7b52  c0 e0                    PUSH A   ; XREF: CODE:0003 
CODE:7b54  c0 f0                    PUSH B
CODE:7b56  c0 83                    PUSH DPH
CODE:7b58  c0 82                    PUSH DPL
CODE:7b5a  c0 d0                    PUSH PSW
CODE:7b5c  75 d0 00                 MOV PSW,#0x0
CODE:7b5f  c0 00                    PUSH 0x00
CODE:7b61  c0 01                    PUSH 0x01
CODE:7b63  c0 02                    PUSH 0x02
CODE:7b65  c0 03                    PUSH 0x03
CODE:7b67  c0 04                    PUSH 0x04
CODE:7b69  c0 05                    PUSH 0x05
CODE:7b6b  c0 06                    PUSH 0x06
CODE:7b6d  c0 07                    PUSH 0x07
CODE:7b6f  c0 86                    PUSH 0x86
CODE:7b71  c0 a7                    PUSH 0xa7
CODE:7b73  c2 cf                    CLR 0xcf
CODE:7b75  78 5b                    MOV R0,#0x5b
CODE:7b77  06                       INC @R0
CODE:7b78  e6                       MOV A,@R0
CODE:7b79  d3                       SETB CY
CODE:7b7a  94 fe                    SUBB A,#0xfe
CODE:7b7c  40 02                    JC 0x7b80
CODE:7b7e  76 00                    MOV @R0,#0x0
LAB_CODE_7b80:
CODE:7b80  20 1b 03                 JB 0x1b,0x7b86   ; XREF: CODE:7b7c 
CODE:7b83  12 00 56                 LCALL 0x0056
LAB_CODE_7b86:
CODE:7b86  d0 a7                    POP 0xa7   ; XREF: CODE:7b80 
CODE:7b88  d0 86                    POP 0x86
CODE:7b8a  d0 07                    POP 0x07
CODE:7b8c  d0 06                    POP 0x06
CODE:7b8e  d0 05                    POP 0x05
CODE:7b90  d0 04                    POP 0x04
CODE:7b92  d0 03                    POP 0x03
CODE:7b94  d0 02                    POP 0x02
CODE:7b96  d0 01                    POP 0x01
CODE:7b98  d0 00                    POP 0x00
CODE:7b9a  d0 d0                    POP PSW
CODE:7b9c  d0 82                    POP DPL
CODE:7b9e  d0 83                    POP DPH
CODE:7ba0  d0 f0                    POP B
CODE:7ba2  d0 e0                    POP A
CODE:7ba4  32                       RETI

; ===== FUNCTION FUN_CODE_7bf7 @ CODE:7bf7 =====
CODE:7bf7  e4                       CLR A   ; XREF: Entry Point CODE:584a 
CODE:7bf8  78 53                    MOV R0,#0x53
CODE:7bfa  f6                       MOV @R0,A
CODE:7bfb  78 76                    MOV R0,#0x76
CODE:7bfd  f6                       MOV @R0,A
CODE:7bfe  78 77                    MOV R0,#0x77
CODE:7c00  76 01                    MOV @R0,#0x1
CODE:7c02  c2 07                    CLR 0x07
CODE:7c04  78 51                    MOV R0,#0x51
CODE:7c06  f6                       MOV @R0,A
CODE:7c07  78 59                    MOV R0,#0x59
CODE:7c09  f6                       MOV @R0,A
CODE:7c0a  78 7a                    MOV R0,#0x7a
CODE:7c0c  76 04                    MOV @R0,#0x4
CODE:7c0e  12 79 d2                 LCALL 0x79d2
CODE:7c11  e4                       CLR A
CODE:7c12  ff                       MOV R7,A
LAB_CODE_7c13:
CODE:7c13  74 00                    MOV A,#0x0   ; XREF: CODE:7c3b 
CODE:7c15  2f                       ADD A,R7
CODE:7c16  f5 82                    MOV DPL,A
CODE:7c18  e4                       CLR A
CODE:7c19  34 00                    ADDC A,#0x0
CODE:7c1b  f5 83                    MOV DPH,A
CODE:7c1d  74 ff                    MOV A,#0xff
CODE:7c1f  f0                       MOVX @DPTR,A
CODE:7c20  74 95                    MOV A,#0x95
CODE:7c22  2f                       ADD A,R7
CODE:7c23  f5 82                    MOV DPL,A
CODE:7c25  e4                       CLR A
CODE:7c26  34 00                    ADDC A,#0x0
CODE:7c28  f5 83                    MOV DPH,A
CODE:7c2a  74 ff                    MOV A,#0xff
CODE:7c2c  f0                       MOVX @DPTR,A
CODE:7c2d  74 2a                    MOV A,#0x2a
CODE:7c2f  2f                       ADD A,R7
CODE:7c30  f5 82                    MOV DPL,A
CODE:7c32  e4                       CLR A
CODE:7c33  34 01                    ADDC A,#0x1
CODE:7c35  f5 83                    MOV DPH,A
CODE:7c37  74 ff                    MOV A,#0xff
CODE:7c39  f0                       MOVX @DPTR,A
CODE:7c3a  0f                       INC R7
CODE:7c3b  bf 8a d5                 CJNE R7,#0x8a,0x7c13
CODE:7c3e  90 ff 95                 MOV DPTR,#0xff95
CODE:7c41  e4                       CLR A
CODE:7c42  f0                       MOVX @DPTR,A
CODE:7c43  c2 b7                    CLR 0xb7
CODE:7c45  22                       RET

; ===== FUNCTION FUN_CODE_7c46 @ CODE:7c46 =====
CODE:7c46  c0 e0                    PUSH A   ; XREF: CODE:003b 
CODE:7c48  c0 f0                    PUSH B
CODE:7c4a  c0 83                    PUSH DPH
CODE:7c4c  c0 82                    PUSH DPL
CODE:7c4e  c0 d0                    PUSH PSW
CODE:7c50  75 d0 00                 MOV PSW,#0x0
CODE:7c53  c0 00                    PUSH 0x00
CODE:7c55  c0 01                    PUSH 0x01
CODE:7c57  c0 02                    PUSH 0x02
CODE:7c59  c0 03                    PUSH 0x03
CODE:7c5b  c0 04                    PUSH 0x04
CODE:7c5d  c0 05                    PUSH 0x05
CODE:7c5f  c0 06                    PUSH 0x06
CODE:7c61  c0 07                    PUSH 0x07
CODE:7c63  c0 86                    PUSH 0x86
CODE:7c65  c0 a7                    PUSH 0xa7
CODE:7c67  12 6b 90                 LCALL 0x6b90
CODE:7c6a  d0 a7                    POP 0xa7
CODE:7c6c  d0 86                    POP 0x86
CODE:7c6e  d0 07                    POP 0x07
CODE:7c70  d0 06                    POP 0x06
CODE:7c72  d0 05                    POP 0x05
CODE:7c74  d0 04                    POP 0x04
CODE:7c76  d0 03                    POP 0x03
CODE:7c78  d0 02                    POP 0x02
CODE:7c7a  d0 01                    POP 0x01
CODE:7c7c  d0 00                    POP 0x00
CODE:7c7e  d0 d0                    POP PSW
CODE:7c80  d0 82                    POP DPL
CODE:7c82  d0 83                    POP DPH
CODE:7c84  d0 f0                    POP B
CODE:7c86  d0 e0                    POP A
CODE:7c88  32                       RETI

; ===== FUNCTION FUN_CODE_7cca @ CODE:7cca =====
CODE:7cca  90 03 3b                 MOV DPTR,#0x33b   ; XREF: CODE:6d2a Entry Point 
CODE:7ccd  e0                       MOVX A,@DPTR
CODE:7cce  b4 01 0d                 CJNE A,#0x1,0x7cde
CODE:7cd1  12 78 57                 LCALL 0x7857
CODE:7cd4  43 97 04                 ORL 0x97,#0x4
CODE:7cd7  53 92 bf                 ANL 0x92,#0xbf
CODE:7cda  43 97 01                 ORL 0x97,#0x1
CODE:7cdd  22                       RET
LAB_CODE_7cde:
CODE:7cde  90 03 3b                 MOV DPTR,#0x33b   ; XREF: CODE:7cce 
CODE:7ce1  e0                       MOVX A,@DPTR
CODE:7ce2  b4 02 0a                 CJNE A,#0x2,0x7cef
CODE:7ce5  53 92 bf                 ANL 0x92,#0xbf
CODE:7ce8  43 97 01                 ORL 0x97,#0x1
CODE:7ceb  43 97 08                 ORL 0x97,#0x8
CODE:7cee  22                       RET
LAB_CODE_7cef:
CODE:7cef  43 97 08                 ORL 0x97,#0x8   ; XREF: CODE:7ce2 
CODE:7cf2  53 92 bf                 ANL 0x92,#0xbf
CODE:7cf5  43 97 01                 ORL 0x97,#0x1
CODE:7cf8  90 03 16                 MOV DPTR,#0x316
CODE:7cfb  e0                       MOVX A,@DPTR
CODE:7cfc  70 09                    JNZ 0x7d07
CODE:7cfe  a3                       INC DPTR
CODE:7cff  e0                       MOVX A,@DPTR
CODE:7d00  b4 05 04                 CJNE A,#0x5,0x7d07
CODE:7d03  a3                       INC DPTR
CODE:7d04  e0                       MOVX A,@DPTR
CODE:7d05  f5 96                    MOV 0x96,A
LAB_CODE_7d07:
CODE:7d07  22                       RET   ; XREF: CODE:7cfc CODE:7d00 

; ===== FUNCTION FUN_CODE_7d08 @ CODE:7d08 =====
CODE:7d08  f0                       MOVX @DPTR,A   ; XREF: CODE:788a CODE:78ad Entry Point 
CODE:7d09  90 03 2e                 MOV DPTR,#0x32e
CODE:7d0c  e0                       MOVX A,@DPTR
CODE:7d0d  fe                       MOV R6,A
CODE:7d0e  a3                       INC DPTR
CODE:7d0f  e0                       MOVX A,@DPTR
CODE:7d10  ff                       MOV R7,A
CODE:7d11  7d 08                    MOV R5,#0x8

; ===== FUNCTION FUN_CODE_7d13 @ CODE:7d13 =====
CODE:7d13  8e 49                    MOV 0x49,R6   ; XREF: CODE:78cc Entry Point 
CODE:7d15  8f 4a                    MOV 0x4a,R7
CODE:7d17  75 1a 11                 MOV 0x1a,#0x11
CODE:7d1a  75 1b 08                 MOV 0x1b,#0x8
CODE:7d1d  e4                       CLR A
CODE:7d1e  ff                       MOV R7,A
LAB_CODE_7d1f:
CODE:7d1f  ef                       MOV A,R7   ; XREF: CODE:7d42 
CODE:7d20  c3                       CLR CY
CODE:7d21  9d                       SUBB A,R5
CODE:7d22  50 20                    JNC 0x7d44
CODE:7d24  85 4a 82                 MOV DPL,0x4a
CODE:7d27  85 49 83                 MOV DPH,0x49
CODE:7d2a  e4                       CLR A
CODE:7d2b  93                       MOVC A,@A+DPTR
CODE:7d2c  fe                       MOV R6,A
CODE:7d2d  e5 1b                    MOV A,0x1b
CODE:7d2f  2f                       ADD A,R7
CODE:7d30  f5 82                    MOV DPL,A
CODE:7d32  e4                       CLR A
CODE:7d33  35 1a                    ADDC A,0x1a
CODE:7d35  f5 83                    MOV DPH,A
CODE:7d37  ee                       MOV A,R6
CODE:7d38  f0                       MOVX @DPTR,A
CODE:7d39  05 4a                    INC 0x4a
CODE:7d3b  e5 4a                    MOV A,0x4a
CODE:7d3d  70 02                    JNZ 0x7d41
CODE:7d3f  05 49                    INC 0x49
LAB_CODE_7d41:
CODE:7d41  0f                       INC R7   ; XREF: CODE:7d3d 
CODE:7d42  80 db                    SJMP 0x7d1f
LAB_CODE_7d44:
CODE:7d44  22                       RET   ; XREF: CODE:7d22 

; ===== FUNCTION FUN_CODE_7d45 @ CODE:7d45 =====
CODE:7d45  90 02 9f                 MOV DPTR,#0x29f   ; XREF: CODE:6eea CODE:750c 
CODE:7d48  e0                       MOVX A,@DPTR
CODE:7d49  ff                       MOV R7,A
CODE:7d4a  b4 e3 08                 CJNE A,#0xe3,0x7d55
CODE:7d4d  30 00 05                 JNB 0x00,0x7d55
CODE:7d50  30 10 02                 JNB 0x10,0x7d55
CODE:7d53  b2 28                    CPL 0x28
LAB_CODE_7d55:
CODE:7d55  30 28 0a                 JNB 0x28,0x7d62   ; XREF: CODE:7d4a CODE:7d4d CODE:7d50 
CODE:7d58  ef                       MOV A,R7
CODE:7d59  64 e3                    XRL A,#0xe3
CODE:7d5b  60 23                    JZ 0x7d80
CODE:7d5d  ef                       MOV A,R7
CODE:7d5e  64 e7                    XRL A,#0xe7
CODE:7d60  60 1e                    JZ 0x7d80
LAB_CODE_7d62:
CODE:7d62  ef                       MOV A,R7   ; XREF: CODE:7d55 
CODE:7d63  54 0f                    ANL A,#0xf
CODE:7d65  ff                       MOV R7,A
CODE:7d66  90 02 00                 MOV DPTR,#0x200
CODE:7d69  e0                       MOVX A,@DPTR
CODE:7d6a  fe                       MOV R6,A
CODE:7d6b  ef                       MOV A,R7
CODE:7d6c  90 67 b4                 MOV DPTR,#0x67b4
CODE:7d6f  93                       MOVC A,@A+DPTR
CODE:7d70  30 00 06                 JNB 0x00,0x7d79
CODE:7d73  f4                       CPL A
CODE:7d74  ff                       MOV R7,A
CODE:7d75  ee                       MOV A,R6
CODE:7d76  4f                       ORL A,R7
CODE:7d77  80 03                    SJMP 0x7d7c
LAB_CODE_7d79:
CODE:7d79  ff                       MOV R7,A   ; XREF: CODE:7d70 
CODE:7d7a  ee                       MOV A,R6
CODE:7d7b  5f                       ANL A,R7
LAB_CODE_7d7c:
CODE:7d7c  90 02 00                 MOV DPTR,#0x200   ; XREF: CODE:7d77 
CODE:7d7f  f0                       MOVX @DPTR,A
LAB_CODE_7d80:
CODE:7d80  22                       RET   ; XREF: CODE:7d5b CODE:7d60 

; ===== FUNCTION FUN_CODE_7d81 @ CODE:7d81 =====
CODE:7d81  c2 83                    CLR 0x83   ; XREF: CODE:7a9f CODE:80c9 Entry Point CODE:7f01 
CODE:7d83  75 50 a0                 MOV 0x50,#0xa0

; ===== FUNCTION FUN_CODE_7d86 @ CODE:7d86 =====
CODE:7d86  43 e1 18                 ORL 0xe1,#0x18   ; XREF: CODE:7aa6 CODE:7aac CODE:7ac4 CODE:80d0 CODE:80d6 CODE:80dc Entry Point CODE:7f08 CODE:7f0e CODE:7f17 
CODE:7d89  e4                       CLR A
CODE:7d8a  f5 4f                    MOV 0x4f,A
LAB_CODE_7d8c:
CODE:7d8c  c2 84                    CLR 0x84   ; XREF: CODE:7dae 
CODE:7d8e  12 81 93                 LCALL 0x8193
CODE:7d91  e5 50                    MOV A,0x50
CODE:7d93  30 e7 04                 JNB 0xe7,0x7d9a
CODE:7d96  d2 83                    SETB 0x83
CODE:7d98  80 02                    SJMP 0x7d9c
LAB_CODE_7d9a:
CODE:7d9a  c2 83                    CLR 0x83   ; XREF: CODE:7d93 
LAB_CODE_7d9c:
CODE:7d9c  d2 84                    SETB 0x84   ; XREF: CODE:7d98 
CODE:7d9e  e5 50                    MOV A,0x50
CODE:7da0  25 e0                    ADD A,A
CODE:7da2  f5 50                    MOV 0x50,A
CODE:7da4  12 81 93                 LCALL 0x8193
CODE:7da7  05 4f                    INC 0x4f
CODE:7da9  e5 4f                    MOV A,0x4f
CODE:7dab  c3                       CLR CY
CODE:7dac  94 08                    SUBB A,#0x8
CODE:7dae  40 dc                    JC 0x7d8c
CODE:7db0  c2 84                    CLR 0x84
CODE:7db2  c2 83                    CLR 0x83
CODE:7db4  12 81 93                 LCALL 0x8193
CODE:7db7  d2 84                    SETB 0x84
CODE:7db9  02 81 93                 LJMP 0x8193

; ===== FUNCTION FUN_CODE_7dbc @ CODE:7dbc =====
CODE:7dbc  7f 05                    MOV R7,#0x5   ; XREF: CODE:80df Entry Point CODE:7f2a 
CODE:7dbe  7e 00                    MOV R6,#0x0
CODE:7dc0  12 7d cc                 LCALL 0x7dcc
CODE:7dc3  c2 84                    CLR 0x84
CODE:7dc5  c2 83                    CLR 0x83

; ===== FUNCTION FUN_CODE_7dc7 @ CODE:7dc7 =====
CODE:7dc7  12 7d cc                 LCALL 0x7dcc   ; XREF: CODE:7abc CODE:7af1 Entry Point 
CODE:7dca  d2 84                    SETB 0x84

; ===== FUNCTION FUN_CODE_7dcc @ CODE:7dcc =====
CODE:7dcc  e4                       CLR A   ; XREF: CODE:7ab7 CODE:7acb CODE:7dc7 CODE:7dc0 Entry Point CODE:7f1e CODE:7af6 
CODE:7dcd  fd                       MOV R5,A
CODE:7dce  fc                       MOV R4,A
CODE:7dcf  c3                       CLR CY
CODE:7dd0  ed                       MOV A,R5
CODE:7dd1  9f                       SUBB A,R7
CODE:7dd2  ec                       MOV A,R4
CODE:7dd3  9e                       SUBB A,R6
CODE:7dd4  50 1f                    JNC 0x7df5
CODE:7dd6  00                       NOP
CODE:7dd7  00                       NOP
CODE:7dd8  00                       NOP
CODE:7dd9  00                       NOP
CODE:7dda  00                       NOP
CODE:7ddb  00                       NOP
CODE:7ddc  00                       NOP
CODE:7ddd  00                       NOP
CODE:7dde  00                       NOP
CODE:7ddf  00                       NOP
CODE:7de0  00                       NOP
CODE:7de1  00                       NOP
CODE:7de2  00                       NOP
CODE:7de3  00                       NOP
CODE:7de4  00                       NOP
CODE:7de5  00                       NOP
CODE:7de6  00                       NOP
LAB_CODE_7df5:
CODE:7df5  22                       RET   ; XREF: CODE:7dd4 

; ===== FUNCTION FUN_CODE_7e2d @ CODE:7e2d =====
CODE:7e2d  90 02 9e                 MOV DPTR,#0x29e   ; XREF: Entry Point CODE:5bab CODE:5c53 CODE:5d12 

; ===== FUNCTION FUN_CODE_7e30 @ CODE:7e30 =====
CODE:7e30  e5 50                    MOV A,0x50   ; XREF: Entry Point CODE:5bcf CODE:5c77 CODE:5d45 
CODE:7e32  f0                       MOVX @DPTR,A
CODE:7e33  7f 0a                    MOV R7,#0xa
CODE:7e35  7e 00                    MOV R6,#0x0

; ===== FUNCTION FUN_CODE_7e37 @ CODE:7e37 =====
CODE:7e37  e4                       CLR A   ; XREF: CODE:66c2 CODE:4cb7 CODE:4cdb CODE:4d06 CODE:4d31 CODE:56fd CODE:5738 CODE:5775 CODE:57b2 CODE:57ef CODE:582c CODE:70d9 CODE:70f7 Entry Point CODE:8110 CODE:814a CODE:8154 CODE:58bc CODE:5b16 CODE:728d 
CODE:7e38  f5 b1                    MOV 0xb1,A
CODE:7e3a  fd                       MOV R5,A
CODE:7e3b  fc                       MOV R4,A
CODE:7e3c  c3                       CLR CY
CODE:7e3d  ed                       MOV A,R5
CODE:7e3e  9f                       SUBB A,R7
CODE:7e3f  ec                       MOV A,R4
CODE:7e40  9e                       SUBB A,R6
CODE:7e41  50 1f                    JNC 0x7e62
CODE:7e43  00                       NOP
CODE:7e44  00                       NOP
CODE:7e45  00                       NOP
CODE:7e46  00                       NOP
CODE:7e47  00                       NOP
CODE:7e48  00                       NOP
CODE:7e49  00                       NOP
CODE:7e4a  00                       NOP
CODE:7e4b  00                       NOP
CODE:7e4c  00                       NOP
CODE:7e4d  00                       NOP
CODE:7e4e  00                       NOP
CODE:7e4f  00                       NOP
CODE:7e50  00                       NOP
CODE:7e51  00                       NOP
CODE:7e52  00                       NOP
CODE:7e53  00                       NOP
LAB_CODE_7e62:
CODE:7e62  22                       RET   ; XREF: CODE:7e41 

; ===== FUNCTION FUN_CODE_7e97 @ CODE:7e97 =====
CODE:7e97  90 ff 80                 MOV DPTR,#0xff80   ; XREF: CODE:66c5 Entry Point 
CODE:7e9a  74 a8                    MOV A,#0xa8
CODE:7e9c  f0                       MOVX @DPTR,A
CODE:7e9d  a3                       INC DPTR
CODE:7e9e  74 08                    MOV A,#0x8
CODE:7ea0  f0                       MOVX @DPTR,A
CODE:7ea1  a3                       INC DPTR
CODE:7ea2  f0                       MOVX @DPTR,A
CODE:7ea3  a3                       INC DPTR
CODE:7ea4  f0                       MOVX @DPTR,A
CODE:7ea5  a3                       INC DPTR
CODE:7ea6  f0                       MOVX @DPTR,A
CODE:7ea7  a3                       INC DPTR
CODE:7ea8  f0                       MOVX @DPTR,A
CODE:7ea9  a3                       INC DPTR
CODE:7eaa  74 a8                    MOV A,#0xa8
CODE:7eac  f0                       MOVX @DPTR,A
CODE:7ead  a3                       INC DPTR
CODE:7eae  74 08                    MOV A,#0x8
CODE:7eb0  f0                       MOVX @DPTR,A
CODE:7eb1  a3                       INC DPTR
CODE:7eb2  f0                       MOVX @DPTR,A
CODE:7eb3  a3                       INC DPTR
CODE:7eb4  f0                       MOVX @DPTR,A
CODE:7eb5  a3                       INC DPTR
CODE:7eb6  f0                       MOVX @DPTR,A
CODE:7eb7  a3                       INC DPTR
CODE:7eb8  f0                       MOVX @DPTR,A
CODE:7eb9  a3                       INC DPTR
CODE:7eba  74 a8                    MOV A,#0xa8
CODE:7ebc  f0                       MOVX @DPTR,A
CODE:7ebd  a3                       INC DPTR
CODE:7ebe  74 08                    MOV A,#0x8
CODE:7ec0  f0                       MOVX @DPTR,A
CODE:7ec1  a3                       INC DPTR
CODE:7ec2  f0                       MOVX @DPTR,A
CODE:7ec3  a3                       INC DPTR
CODE:7ec4  f0                       MOVX @DPTR,A
CODE:7ec5  a3                       INC DPTR
CODE:7ec6  f0                       MOVX @DPTR,A
CODE:7ec7  a3                       INC DPTR
CODE:7ec8  f0                       MOVX @DPTR,A
CODE:7ec9  22                       RET

; ===== FUNCTION FUN_CODE_7eca @ CODE:7eca =====
CODE:7eca  a2 af                    MOV CY,0xaf   ; XREF: CODE:39c7 CODE:39e4 CODE:3a02 CODE:3a1a CODE:3a2a CODE:3a3a CODE:3a5b CODE:3a79 CODE:3a98 CODE:4ed5 CODE:4efe CODE:4f27 CODE:51bc CODE:51d1 CODE:51e6 CODE:522e CODE:524c CODE:5283 CODE:5298 CODE:52d0 CODE:52ee CODE:530c CODE:5320 CODE:5329 CODE:5332 CODE:533b CODE:5344 CODE:534d CODE:5356 CODE:535f CODE:5368 CODE:5371 CODE:537a CODE:5383 CODE:53e3 CODE:53fe CODE:541b CODE:5438 CODE:5455 CODE:548a CODE:549c CODE:54b0 CODE:54c4 CODE:54d8 CODE:5510 CODE:552b CODE:5548 CODE:5565 CODE:5582 CODE:55b7 CODE:55c9 CODE:55dd CODE:55f1 CODE:5605 CODE:5631 CODE:5643 CODE:5657 CODE:566b CODE:567f CODE:5693 CODE:841a CODE:8423 CODE:842c CODE:8435 CODE:843e CODE:8450 Entry Point CODE:58fd CODE:5906 CODE:590f CODE:592b CODE:5956 CODE:5981 CODE:59ac CODE:59d7 CODE:5a02 CODE:5a2d CODE:5a58 CODE:5a83 CODE:5aae CODE:5ad9 
CODE:7ecc  92 2c                    MOV 0x2c,CY
CODE:7ece  c2 af                    CLR 0xaf
CODE:7ed0  8f f7                    MOV 0xf7,R7
CODE:7ed2  8d fb                    MOV 0xfb,R5
CODE:7ed4  8b fc                    MOV 0xfc,R3
CODE:7ed6  75 f2 6e                 MOV 0xf2,#0x6e
CODE:7ed9  75 f3 05                 MOV 0xf3,#0x5
CODE:7edc  75 f4 0a                 MOV 0xf4,#0xa
CODE:7edf  75 f5 09                 MOV 0xf5,#0x9
CODE:7ee2  75 f6 06                 MOV 0xf6,#0x6
CODE:7ee5  00                       NOP
CODE:7ee6  00                       NOP
CODE:7ee7  00                       NOP
CODE:7ee8  00                       NOP
CODE:7ee9  00                       NOP
CODE:7eea  00                       NOP
CODE:7eeb  00                       NOP
CODE:7eec  00                       NOP
CODE:7eed  e4                       CLR A
CODE:7eee  f5 f2                    MOV 0xf2,A
CODE:7ef0  f5 f3                    MOV 0xf3,A
CODE:7ef2  f5 f4                    MOV 0xf4,A
CODE:7ef4  f5 f5                    MOV 0xf5,A
CODE:7ef6  f5 f6                    MOV 0xf6,A
CODE:7ef8  a2 2c                    MOV CY,0x2c
CODE:7efa  92 af                    MOV 0xaf,CY
CODE:7efc  22                       RET

; ===== FUNCTION FUN_CODE_7efd @ CODE:7efd =====
CODE:7efd  8e 2a                    MOV 0x2a,R6   ; XREF: Entry Point CODE:58b5 CODE:5b0f 
CODE:7eff  8f 2b                    MOV 0x2b,R7
CODE:7f01  12 7d 81                 LCALL 0x7d81
CODE:7f04  e5 2a                    MOV A,0x2a
CODE:7f06  f5 50                    MOV 0x50,A
CODE:7f08  12 7d 86                 LCALL 0x7d86
CODE:7f0b  85 2b 50                 MOV 0x50,0x2b
CODE:7f0e  12 7d 86                 LCALL 0x7d86
CODE:7f11  e4                       CLR A
CODE:7f12  f5 2c                    MOV 0x2c,A
LAB_CODE_7f14:
CODE:7f14  e4                       CLR A   ; XREF: CODE:7f28 
CODE:7f15  f5 50                    MOV 0x50,A
CODE:7f17  12 7d 86                 LCALL 0x7d86
CODE:7f1a  7f 05                    MOV R7,#0x5
CODE:7f1c  7e 00                    MOV R6,#0x0
CODE:7f1e  12 7d cc                 LCALL 0x7dcc
CODE:7f21  05 2c                    INC 0x2c
CODE:7f23  e5 2c                    MOV A,0x2c
CODE:7f25  c3                       CLR CY
CODE:7f26  94 80                    SUBB A,#0x80
CODE:7f28  40 ea                    JC 0x7f14
CODE:7f2a  12 7d bc                 LCALL 0x7dbc
CODE:7f2d  d2 83                    SETB 0x83
CODE:7f2f  22                       RET

; ===== FUNCTION FUN_CODE_7f30 @ CODE:7f30 =====
CODE:7f30  c2 2b                    CLR 0x2b   ; XREF: CODE:77db Entry Point 
CODE:7f32  ef                       MOV A,R7
CODE:7f33  14                       DEC A
CODE:7f34  60 14                    JZ 0x7f4a
CODE:7f36  14                       DEC A
CODE:7f37  60 15                    JZ 0x7f4e
CODE:7f39  14                       DEC A
CODE:7f3a  60 16                    JZ 0x7f52
CODE:7f3c  14                       DEC A
CODE:7f3d  60 17                    JZ 0x7f56
CODE:7f3f  14                       DEC A
CODE:7f40  60 18                    JZ 0x7f5a
CODE:7f42  24 05                    ADD A,#0x5
CODE:7f44  70 19                    JNZ 0x7f5f
CODE:7f46  a2 f8                    MOV CY,0xf8
CODE:7f48  80 12                    SJMP 0x7f5c
LAB_CODE_7f4a:
CODE:7f4a  a2 f9                    MOV CY,0xf9   ; XREF: CODE:7f34 
CODE:7f4c  80 0e                    SJMP 0x7f5c
LAB_CODE_7f4e:
CODE:7f4e  a2 fa                    MOV CY,0xfa   ; XREF: CODE:7f37 
CODE:7f50  80 0a                    SJMP 0x7f5c
LAB_CODE_7f52:
CODE:7f52  a2 fb                    MOV CY,0xfb   ; XREF: CODE:7f3a 
CODE:7f54  80 06                    SJMP 0x7f5c
LAB_CODE_7f56:
CODE:7f56  a2 8b                    MOV CY,0x8b   ; XREF: CODE:7f3d 
CODE:7f58  80 02                    SJMP 0x7f5c
LAB_CODE_7f5a:
CODE:7f5a  a2 8c                    MOV CY,0x8c   ; XREF: CODE:7f40 
LAB_CODE_7f5c:
CODE:7f5c  b3                       CPL CY   ; XREF: CODE:7f48 CODE:7f4c CODE:7f50 CODE:7f54 CODE:7f58 
CODE:7f5d  92 2b                    MOV 0x2b,CY
LAB_CODE_7f5f:
CODE:7f5f  a2 2b                    MOV CY,0x2b   ; XREF: CODE:7f44 
CODE:7f61  22                       RET

; ===== FUNCTION FUN_CODE_7f93 @ CODE:7f93 =====
CODE:7f93  a2 af                    MOV CY,0xaf   ; XREF: CODE:39a8 CODE:4eb6 CODE:4ebb CODE:4f65 CODE:4f6a CODE:517f CODE:5184 CODE:51a4 CODE:8411 Entry Point CODE:58d0 CODE:58d5 CODE:58da CODE:58df CODE:58e4 CODE:58e9 CODE:58ee CODE:58f3 
CODE:7f95  92 2c                    MOV 0x2c,CY
CODE:7f97  c2 af                    CLR 0xaf
CODE:7f99  8f f7                    MOV 0xf7,R7
CODE:7f9b  e4                       CLR A
CODE:7f9c  f5 fc                    MOV 0xfc,A
CODE:7f9e  75 f2 e6                 MOV 0xf2,#0xe6
CODE:7fa1  75 f3 05                 MOV 0xf3,#0x5
CODE:7fa4  75 f4 0a                 MOV 0xf4,#0xa
CODE:7fa7  75 f5 09                 MOV 0xf5,#0x9
CODE:7faa  75 f6 06                 MOV 0xf6,#0x6
CODE:7fad  00                       NOP
CODE:7fae  00                       NOP
CODE:7faf  00                       NOP
CODE:7fb0  00                       NOP
CODE:7fb1  00                       NOP
CODE:7fb2  00                       NOP
CODE:7fb3  00                       NOP
CODE:7fb4  00                       NOP
CODE:7fb5  f5 f2                    MOV 0xf2,A
CODE:7fb7  f5 f3                    MOV 0xf3,A
CODE:7fb9  f5 f4                    MOV 0xf4,A
CODE:7fbb  f5 f5                    MOV 0xf5,A
CODE:7fbd  f5 f6                    MOV 0xf6,A
CODE:7fbf  a2 2c                    MOV CY,0x2c
CODE:7fc1  92 af                    MOV 0xaf,CY
CODE:7fc3  22                       RET

; ===== FUNCTION FUN_CODE_7ff2 @ CODE:7ff2 =====
CODE:7ff2  53 e1 f7                 ANL 0xe1,#0xf7   ; XREF: CODE:7ad2 Entry Point 
CODE:7ff5  43 e9 08                 ORL 0xe9,#0x8
CODE:7ff8  e4                       CLR A
CODE:7ff9  f5 3d                    MOV 0x3d,A
LAB_CODE_7ffb:
CODE:7ffb  c2 84                    CLR 0x84   ; XREF: CODE:801d 
CODE:7ffd  12 81 93                 LCALL 0x8193
CODE:8000  d2 84                    SETB 0x84
CODE:8002  e5 50                    MOV A,0x50
CODE:8004  25 e0                    ADD A,A
CODE:8006  f5 50                    MOV 0x50,A
CODE:8008  30 83 05                 JNB 0x83,0x8010
CODE:800b  43 50 01                 ORL 0x50,#0x1
CODE:800e  80 03                    SJMP 0x8013
LAB_CODE_8010:
CODE:8010  53 50 fe                 ANL 0x50,#0xfe   ; XREF: CODE:8008 
LAB_CODE_8013:
CODE:8013  12 81 93                 LCALL 0x8193   ; XREF: CODE:800e 
CODE:8016  05 3d                    INC 0x3d
CODE:8018  e5 3d                    MOV A,0x3d
CODE:801a  c3                       CLR CY
CODE:801b  94 08                    SUBB A,#0x8
CODE:801d  40 dc                    JC 0x7ffb
CODE:801f  22                       RET

; ===== FUNCTION FUN_CODE_8077 @ CODE:8077 =====
CODE:8077  ab 40                    MOV R3,0x40   ; XREF: CODE:2831 CODE:2845 Entry Point CODE:3860 CODE:386a CODE:3874 CODE:387e CODE:3888 CODE:3892 
CODE:8079  ad 3f                    MOV R5,0x3f

; ===== FUNCTION FUN_CODE_807b @ CODE:807b =====
CODE:807b  74 00                    MOV A,#0x0   ; XREF: CODE:2e98 CODE:2851 CODE:285d CODE:2875 CODE:2881 CODE:288d CODE:2898 CODE:28a4 CODE:28bc CODE:28c8 CODE:28d4 CODE:28e0 CODE:28ec CODE:28f8 CODE:2904 CODE:291c CODE:2928 CODE:2934 CODE:2940 CODE:294c CODE:2958 CODE:2964 CODE:2970 CODE:297c CODE:2994 CODE:29a0 CODE:29ac CODE:29b8 CODE:29c4 CODE:29d0 CODE:29dc CODE:29e8 CODE:29f4 CODE:2a00 CODE:2a0c CODE:2a24 CODE:2a30 CODE:2a3c CODE:2a48 CODE:2a54 CODE:2a60 CODE:2a6c CODE:2a78 CODE:2a84 CODE:2a90 CODE:2a9c CODE:2ab4 CODE:2ac0 CODE:2acc CODE:2ad8 CODE:2ae4 CODE:2af0 CODE:2afc CODE:2b08 CODE:2b14 CODE:2b20 CODE:2b2c CODE:2b44 CODE:2b50 CODE:2b5c CODE:2b68 CODE:2b74 CODE:2b80 CODE:2b8c CODE:2b98 CODE:2ba4 CODE:2bb0 CODE:2bbc CODE:2bd4 CODE:2be0 CODE:2bec CODE:2bf8 CODE:2c04 CODE:2c10 CODE:2c1c CODE:2c28 CODE:2c34 CODE:2c40 CODE:2c4c CODE:2c64 CODE:2c70 CODE:2c7c CODE:2c88 CODE:2c94 CODE:2ca0 CODE:2cac CODE:2cb8 CODE:2cc4 CODE:2cd0 CODE:2cdc CODE:2cf4 CODE:2d00 CODE:2d0c CODE:2d18 CODE:2d24 CODE:2d30 CODE:2d3c CODE:2d48 CODE:2d54 CODE:2d60 CODE:2d6c CODE:2d84 CODE:2d90 CODE:2d9c CODE:2da8 CODE:2db4 CODE:2dc0 CODE:2dcc CODE:2dd8 CODE:2de4 CODE:2df0 CODE:2dfc CODE:2e14 CODE:2e20 CODE:2e2c CODE:2e38 CODE:2e44 CODE:2e50 CODE:2e5c CODE:2e68 CODE:2e74 CODE:2e80 CODE:2e8c Entry Point CODE:3630 CODE:3660 CODE:3690 CODE:36c0 CODE:36f0 CODE:3720 CODE:3750 CODE:3780 CODE:37b0 CODE:37e0 
CODE:807d  2f                       ADD A,R7
CODE:807e  f5 82                    MOV DPL,A
CODE:8080  e4                       CLR A
CODE:8081  34 00                    ADDC A,#0x0
CODE:8083  f5 83                    MOV DPH,A
CODE:8085  ed                       MOV A,R5
CODE:8086  f0                       MOVX @DPTR,A
CODE:8087  74 95                    MOV A,#0x95
CODE:8089  2f                       ADD A,R7
CODE:808a  f5 82                    MOV DPL,A
CODE:808c  e4                       CLR A
CODE:808d  34 00                    ADDC A,#0x0
CODE:808f  f5 83                    MOV DPH,A
CODE:8091  eb                       MOV A,R3
CODE:8092  f0                       MOVX @DPTR,A
CODE:8093  74 2a                    MOV A,#0x2a
CODE:8095  2f                       ADD A,R7
CODE:8096  f5 82                    MOV DPL,A
CODE:8098  e4                       CLR A
CODE:8099  34 01                    ADDC A,#0x1
CODE:809b  f5 83                    MOV DPH,A
CODE:809d  e5 46                    MOV A,0x46
CODE:809f  f0                       MOVX @DPTR,A
CODE:80a0  22                       RET

; ===== FUNCTION FUN_CODE_80a1 @ CODE:80a1 =====
CODE:80a1  90 02 a4                 MOV DPTR,#0x2a4   ; XREF: CODE:7524 
CODE:80a4  74 02                    MOV A,#0x2
CODE:80a6  f0                       MOVX @DPTR,A
CODE:80a7  30 00 11                 JNB 0x00,0x80bb
CODE:80aa  90 02 9f                 MOV DPTR,#0x29f
CODE:80ad  e0                       MOVX A,@DPTR
CODE:80ae  90 02 a5                 MOV DPTR,#0x2a5
CODE:80b1  f0                       MOVX @DPTR,A
CODE:80b2  90 02 a0                 MOV DPTR,#0x2a0
CODE:80b5  e0                       MOVX A,@DPTR
CODE:80b6  90 02 a6                 MOV DPTR,#0x2a6
CODE:80b9  f0                       MOVX @DPTR,A
CODE:80ba  22                       RET
LAB_CODE_80bb:
CODE:80bb  e4                       CLR A   ; XREF: CODE:80a7 
CODE:80bc  90 02 a5                 MOV DPTR,#0x2a5
CODE:80bf  f0                       MOVX @DPTR,A
CODE:80c0  a3                       INC DPTR
CODE:80c1  f0                       MOVX @DPTR,A
CODE:80c2  22                       RET

; ===== FUNCTION FUN_CODE_80c3 @ CODE:80c3 =====
CODE:80c3  8e 4c                    MOV 0x4c,R6   ; XREF: CODE:56f6 CODE:5731 CODE:576e CODE:57ab CODE:57e8 CODE:5825 Entry Point 
CODE:80c5  8f 4d                    MOV 0x4d,R7
CODE:80c7  8d 4e                    MOV 0x4e,R5
CODE:80c9  12 7d 81                 LCALL 0x7d81
CODE:80cc  e5 4c                    MOV A,0x4c
CODE:80ce  f5 50                    MOV 0x50,A
CODE:80d0  12 7d 86                 LCALL 0x7d86
CODE:80d3  85 4d 50                 MOV 0x50,0x4d
CODE:80d6  12 7d 86                 LCALL 0x7d86
CODE:80d9  85 4e 50                 MOV 0x50,0x4e
CODE:80dc  12 7d 86                 LCALL 0x7d86
CODE:80df  12 7d bc                 LCALL 0x7dbc
CODE:80e2  d2 83                    SETB 0x83
CODE:80e4  22                       RET

; ===== FUNCTION FUN_CODE_8106 @ CODE:8106 =====
CODE:8106  12 81 43                 LCALL 0x8143   ; XREF: Entry Point CODE:5844 
CODE:8109  12 00 16                 LCALL 0x0016
CODE:810c  7f f4                    MOV R7,#0xf4
CODE:810e  7e 01                    MOV R6,#0x1
CODE:8110  12 7e 37                 LCALL 0x7e37
CODE:8113  12 7a f9                 LCALL 0x7af9
CODE:8116  12 81 ee                 LCALL 0x81ee
CODE:8119  12 60 cf                 LCALL 0x60cf
CODE:811c  12 82 8c                 LCALL 0x828c
CODE:811f  12 81 d9                 LCALL 0x81d9
CODE:8122  02 82 38                 LJMP 0x8238

; ===== FUNCTION FUN_CODE_8143 @ CODE:8143 =====
CODE:8143  75 b2 08                 MOV 0xb2,#0x8   ; XREF: CODE:8106 Entry Point 
CODE:8146  7f 05                    MOV R7,#0x5
CODE:8148  7e 00                    MOV R6,#0x0
CODE:814a  12 7e 37                 LCALL 0x7e37
CODE:814d  75 bc 02                 MOV 0xbc,#0x2
CODE:8150  7f c8                    MOV R7,#0xc8
CODE:8152  7e 00                    MOV R6,#0x0
CODE:8154  12 7e 37                 LCALL 0x7e37
CODE:8157  75 bc 03                 MOV 0xbc,#0x3
CODE:815a  75 b2 0c                 MOV 0xb2,#0xc
CODE:815d  22                       RET

; ===== FUNCTION FUN_CODE_8179 @ CODE:8179 =====
CODE:8179  78 ff                    MOV R0,#0xff   ; XREF: CODE:0000 
CODE:817b  e4                       CLR A
LAB_CODE_817c:
CODE:817c  f6                       MOV @R0,A   ; XREF: CODE:817d 
CODE:817d  d8 fd                    DJNZ R0,0x817c
CODE:817f  90 00 00                 MOV DPTR,#0x0
CODE:8182  7f 00                    MOV R7,#0x0
CODE:8184  7e 09                    MOV R6,#0x9
CODE:8186  e4                       CLR A
LAB_CODE_8187:
CODE:8187  f0                       MOVX @DPTR,A   ; XREF: CODE:8189 CODE:818b 
CODE:8188  a3                       INC DPTR
CODE:8189  df fc                    DJNZ R7,0x8187
CODE:818b  de fa                    DJNZ R6,0x8187
CODE:818d  75 81 7e                 MOV 0x81,#0x7e
CODE:8190  02 58 3d                 LJMP 0x583d

; ===== FUNCTION FUN_CODE_8193 @ CODE:8193 =====
CODE:8193  00                       NOP   ; XREF: CODE:7d8e CODE:7da4 CODE:7db4 CODE:7ffd CODE:8013 CODE:7db9 
CODE:8194  00                       NOP
CODE:8195  00                       NOP
CODE:8196  00                       NOP
CODE:8197  00                       NOP
CODE:8198  00                       NOP
CODE:8199  00                       NOP
CODE:819a  00                       NOP
CODE:819b  00                       NOP
CODE:819c  00                       NOP
CODE:819d  00                       NOP
CODE:819e  00                       NOP
CODE:819f  00                       NOP
CODE:81a0  00                       NOP
CODE:81a1  00                       NOP
CODE:81a2  00                       NOP
CODE:81a3  00                       NOP

; ===== FUNCTION FUN_CODE_81c4 @ CODE:81c4 =====
CODE:81c4  90 02 41                 MOV DPTR,#0x241   ; XREF: CODE:7529 Entry Point 
CODE:81c7  74 01                    MOV A,#0x1
CODE:81c9  f0                       MOVX @DPTR,A
CODE:81ca  30 00 06                 JNB 0x00,0x81d3
CODE:81cd  90 02 9f                 MOV DPTR,#0x29f
CODE:81d0  e0                       MOVX A,@DPTR
CODE:81d1  80 01                    SJMP 0x81d4
LAB_CODE_81d3:
CODE:81d3  e4                       CLR A   ; XREF: CODE:81ca 
LAB_CODE_81d4:
CODE:81d4  90 02 42                 MOV DPTR,#0x242   ; XREF: CODE:81d1 
CODE:81d7  f0                       MOVX @DPTR,A
CODE:81d8  22                       RET

; ===== FUNCTION FUN_CODE_81d9 @ CODE:81d9 =====
CODE:81d9  75 91 c0                 MOV 0x91,#0xc0   ; XREF: CODE:6cdd CODE:811f Entry Point 
CODE:81dc  e4                       CLR A
CODE:81dd  f5 96                    MOV 0x96,A
CODE:81df  75 94 5f                 MOV 0x94,#0x5f
CODE:81e2  75 95 11                 MOV 0x95,#0x11
CODE:81e5  90 03 22                 MOV DPTR,#0x322
CODE:81e8  f0                       MOVX @DPTR,A
CODE:81e9  90 03 24                 MOV DPTR,#0x324
CODE:81ec  f0                       MOVX @DPTR,A
CODE:81ed  22                       RET

; ===== FUNCTION FUN_CODE_81ee @ CODE:81ee =====
CODE:81ee  75 cd fe                 MOV 0xcd,#0xfe   ; XREF: CODE:8116 Entry Point 
CODE:81f1  75 cc 6f                 MOV 0xcc,#0x6f
CODE:81f4  75 cb fe                 MOV 0xcb,#0xfe
CODE:81f7  75 ca 6f                 MOV 0xca,#0x6f
CODE:81fa  e4                       CLR A
CODE:81fb  f5 c9                    MOV 0xc9,A
CODE:81fd  75 c8 04                 MOV 0xc8,#0x4
CODE:8200  22                       RET

; ===== FUNCTION FUN_CODE_8201 @ CODE:8201 =====
CODE:8201  90 03 21                 MOV DPTR,#0x321   ; XREF: CODE:6cc4 
CODE:8204  e0                       MOVX A,@DPTR
CODE:8205  d3                       SETB CY
CODE:8206  94 c8                    SUBB A,#0xc8
CODE:8208  40 03                    JC 0x820d
CODE:820a  d2 1e                    SETB 0x1e
CODE:820c  22                       RET
LAB_CODE_820d:
CODE:820d  90 03 21                 MOV DPTR,#0x321   ; XREF: CODE:8208 
CODE:8210  e0                       MOVX A,@DPTR
CODE:8211  04                       INC A
CODE:8212  f0                       MOVX @DPTR,A
CODE:8213  22                       RET

; ===== FUNCTION FUN_CODE_8238 @ CODE:8238 =====
CODE:8238  75 a9 01                 MOV 0xa9,#0x1   ; XREF: CODE:8122 
CODE:823b  e4                       CLR A
CODE:823c  f5 ba                    MOV 0xba,A
CODE:823e  f5 b6                    MOV 0xb6,A
CODE:8240  f5 b4                    MOV 0xb4,A
CODE:8242  f5 b8                    MOV 0xb8,A
CODE:8244  f5 b5                    MOV 0xb5,A
CODE:8246  f5 b9                    MOV 0xb9,A
CODE:8248  22                       RET

; ===== FUNCTION FUN_CODE_8258 @ CODE:8258 =====
CODE:8258  12 79 d2                 LCALL 0x79d2   ; XREF: CODE:77cb Entry Point 
CODE:825b  7f 18                    MOV R7,#0x18
CODE:825d  90 02 fe                 MOV DPTR,#0x2fe
CODE:8260  e4                       CLR A
LAB_CODE_8261:
CODE:8261  f0                       MOVX @DPTR,A   ; XREF: CODE:8263 
CODE:8262  a3                       INC DPTR
CODE:8263  df fc                    DJNZ R7,0x8261
CODE:8265  22                       RET

; ===== FUNCTION FUN_CODE_8266 @ CODE:8266 =====
CODE:8266  c2 af                    CLR 0xaf   ; XREF: CODE:4e4d 
CODE:8268  75 f0 a5                 MOV B,#0xa5
CODE:826b  74 5a                    MOV A,#0x5a
CODE:826d  02 ff 00                 LJMP 0xff00

; ===== FUNCTION FUN_CODE_8271 @ CODE:8271 =====
CODE:8271  c2 08                    CLR 0x08   ; XREF: Entry Point CODE:5847 
CODE:8273  c2 01                    CLR 0x01
CODE:8275  c2 28                    CLR 0x28
CODE:8277  22                       RET

; ===== FUNCTION FUN_CODE_8278 @ CODE:8278 =====
CODE:8278  43 97 08                 ORL 0x97,#0x8   ; XREF: Entry Point 
CODE:827b  43 97 02                 ORL 0x97,#0x2
CODE:827e  22                       RET

; ===== FUNCTION FUN_CODE_827f @ CODE:827f =====
CODE:827f  53 9b f0                 ANL 0x9b,#0xf0   ; XREF: Entry Point 
CODE:8282  43 97 04                 ORL 0x97,#0x4
CODE:8285  22                       RET

; ===== FUNCTION FUN_CODE_8286 @ CODE:8286 =====
CODE:8286  75 e8 00                 MOV 0xe8,#0x0   ; XREF: CODE:000b 
CODE:8289  d2 2a                    SETB 0x2a
CODE:828b  32                       RETI

; ===== FUNCTION FUN_CODE_828c @ CODE:828c =====
CODE:828c  e4                       CLR A   ; XREF: CODE:811c Entry Point 
CODE:828d  f5 b3                    MOV 0xb3,A
CODE:828f  f5 89                    MOV 0x89,A
CODE:8291  22                       RET

; ===== FUNCTION FUN_CODE_8300 @ CODE:8300 =====
CODE:8300  12 38 b6                 LCALL 0x38b6   ; XREF: CODE:741f Entry Point 
CODE:8303  02 83 c4                 LJMP 0x83c4

; ===== FUNCTION FUN_CODE_8306 @ CODE:8306 =====
CODE:8306  12 4e 01                 LCALL 0x4e01   ; XREF: CODE:6d05 Entry Point 
CODE:8309  02 83 c4                 LJMP 0x83c4

; ===== FUNCTION FUN_CODE_830c @ CODE:830c =====
CODE:830c  e4                       CLR A   ; XREF: Entry Point CODE:585c 
CODE:830d  f5 5a                    MOV 0x5a,A
CODE:830f  90 d0 00                 MOV DPTR,#0xd000
CODE:8312  e4                       CLR A
CODE:8313  93                       MOVC A,@A+DPTR
CODE:8314  b4 a5 02                 CJNE A,#0xa5,0x8319
CODE:8317  80 03                    SJMP 0x831c
LAB_CODE_8319:
CODE:8319  02 83 ab                 LJMP 0x83ab   ; XREF: CODE:8314 
LAB_CODE_831c:
CODE:831c  90 d0 01                 MOV DPTR,#0xd001   ; XREF: CODE:8317 
CODE:831f  e4                       CLR A
CODE:8320  93                       MOVC A,@A+DPTR
CODE:8321  fa                       MOV R2,A
CODE:8322  90 d0 02                 MOV DPTR,#0xd002
CODE:8325  e4                       CLR A
CODE:8326  93                       MOVC A,@A+DPTR
CODE:8327  fb                       MOV R3,A
CODE:8328  90 d0 03                 MOV DPTR,#0xd003
CODE:832b  e4                       CLR A
CODE:832c  93                       MOVC A,@A+DPTR
CODE:832d  fc                       MOV R4,A
CODE:832e  90 d0 04                 MOV DPTR,#0xd004
CODE:8331  e4                       CLR A
CODE:8332  93                       MOVC A,@A+DPTR
CODE:8333  fd                       MOV R5,A
CODE:8334  90 d0 05                 MOV DPTR,#0xd005
CODE:8337  e4                       CLR A
CODE:8338  93                       MOVC A,@A+DPTR
CODE:8339  fe                       MOV R6,A
CODE:833a  ea                       MOV A,R2
CODE:833b  2b                       ADD A,R3
CODE:833c  2c                       ADD A,R4
CODE:833d  2d                       ADD A,R5
CODE:833e  24 5a                    ADD A,#0x5a
CODE:8340  6e                       XRL A,R6
CODE:8341  70 1a                    JNZ 0x835d
CODE:8343  ea                       MOV A,R2
CODE:8344  c3                       CLR CY
CODE:8345  94 14                    SUBB A,#0x14
CODE:8347  50 14                    JNC 0x835d
CODE:8349  eb                       MOV A,R3
CODE:834a  c3                       CLR CY
CODE:834b  94 07                    SUBB A,#0x7
CODE:834d  50 0e                    JNC 0x835d
CODE:834f  ec                       MOV A,R4
CODE:8350  c3                       CLR CY
CODE:8351  94 05                    SUBB A,#0x5
CODE:8353  50 08                    JNC 0x835d
CODE:8355  ed                       MOV A,R5
CODE:8356  c3                       CLR CY
CODE:8357  94 05                    SUBB A,#0x5
CODE:8359  50 02                    JNC 0x835d
CODE:835b  80 03                    SJMP 0x8360
LAB_CODE_835d:
CODE:835d  02 83 ab                 LJMP 0x83ab   ; XREF: CODE:8341 CODE:8347 CODE:834d CODE:8353 CODE:8359 
LAB_CODE_8360:
CODE:8360  8a 76                    MOV 0x76,R2   ; XREF: CODE:835b 
CODE:8362  8b 5a                    MOV 0x5a,R3
CODE:8364  8c 7a                    MOV 0x7a,R4
CODE:8366  8d 77                    MOV 0x77,R5
CODE:8368  ea                       MOV A,R2
CODE:8369  b4 01 05                 CJNE A,#0x1,0x8371
CODE:836c  12 84 65                 LCALL 0x8465
CODE:836f  80 0e                    SJMP 0x837f
LAB_CODE_8371:
CODE:8371  b4 06 05                 CJNE A,#0x6,0x8379   ; XREF: CODE:8369 
CODE:8374  12 84 8a                 LCALL 0x848a
CODE:8377  80 06                    SJMP 0x837f
LAB_CODE_8379:
CODE:8379  b4 08 03                 CJNE A,#0x8,0x837f   ; XREF: CODE:8371 
CODE:837c  12 84 df                 LCALL 0x84df
LAB_CODE_837f:
CODE:837f  e5 7a                    MOV A,0x7a   ; XREF: CODE:836f CODE:8377 CODE:8379 
CODE:8381  b4 04 02                 CJNE A,#0x4,0x8386
CODE:8384  80 25                    SJMP 0x83ab
LAB_CODE_8386:
CODE:8386  b4 03 04                 CJNE A,#0x3,0x838d   ; XREF: CODE:8381 
CODE:8389  7f 80                    MOV R7,#0x80
CODE:838b  80 13                    SJMP 0x83a0
LAB_CODE_838d:
CODE:838d  b4 02 04                 CJNE A,#0x2,0x8394   ; XREF: CODE:8386 
CODE:8390  7f b4                    MOV R7,#0xb4
CODE:8392  80 0c                    SJMP 0x83a0
LAB_CODE_8394:
CODE:8394  b4 01 04                 CJNE A,#0x1,0x839b   ; XREF: CODE:838d 
CODE:8397  7f e6                    MOV R7,#0xe6
CODE:8399  80 05                    SJMP 0x83a0
LAB_CODE_839b:
CODE:839b  12 79 d2                 LCALL 0x79d2   ; XREF: CODE:8394 
CODE:839e  80 0b                    SJMP 0x83ab
LAB_CODE_83a0:
CODE:83a0  90 ff 95                 MOV DPTR,#0xff95   ; XREF: CODE:838b CODE:8392 CODE:8399 
CODE:83a3  74 08                    MOV A,#0x8
CODE:83a5  f0                       MOVX @DPTR,A
CODE:83a6  90 ff b5                 MOV DPTR,#0xffb5
CODE:83a9  ef                       MOV A,R7
CODE:83aa  f0                       MOVX @DPTR,A
LAB_CODE_83ab:
CODE:83ab  90 08 f0                 MOV DPTR,#0x8f0   ; XREF: CODE:8319 CODE:835d CODE:8384 CODE:839e 
CODE:83ae  e5 76                    MOV A,0x76
CODE:83b0  f0                       MOVX @DPTR,A
CODE:83b1  a3                       INC DPTR
CODE:83b2  e5 5a                    MOV A,0x5a
CODE:83b4  f0                       MOVX @DPTR,A
CODE:83b5  a3                       INC DPTR
CODE:83b6  e5 7a                    MOV A,0x7a
CODE:83b8  f0                       MOVX @DPTR,A
CODE:83b9  a3                       INC DPTR
CODE:83ba  e5 77                    MOV A,0x77
CODE:83bc  f0                       MOVX @DPTR,A
CODE:83bd  90 08 f4                 MOV DPTR,#0x8f4
CODE:83c0  74 01                    MOV A,#0x1
CODE:83c2  f0                       MOVX @DPTR,A
CODE:83c3  22                       RET

; ===== FUNCTION FUN_CODE_83c4 @ CODE:83c4 =====
CODE:83c4  c0 e0                    PUSH A   ; XREF: CODE:8309 CODE:8303 
CODE:83c6  c0 d0                    PUSH PSW
CODE:83c8  c0 82                    PUSH DPL
CODE:83ca  c0 83                    PUSH DPH
CODE:83cc  eb                       MOV A,R3
CODE:83cd  c0 e0                    PUSH A
CODE:83cf  ed                       MOV A,R5
CODE:83d0  c0 e0                    PUSH A
CODE:83d2  ef                       MOV A,R7
CODE:83d3  c0 e0                    PUSH A
CODE:83d5  90 08 f4                 MOV DPTR,#0x8f4
CODE:83d8  e0                       MOVX A,@DPTR
CODE:83d9  70 03                    JNZ 0x83de
LAB_CODE_83db:
CODE:83db  02 84 53                 LJMP 0x8453   ; XREF: CODE:83f4 CODE:83fb 
LAB_CODE_83de:
CODE:83de  90 08 f0                 MOV DPTR,#0x8f0   ; XREF: CODE:83d9 
CODE:83e1  e0                       MOVX A,@DPTR
CODE:83e2  b5 76 11                 CJNE A,0x76,0x83f6
CODE:83e5  a3                       INC DPTR
CODE:83e6  e0                       MOVX A,@DPTR
CODE:83e7  b5 5a 0c                 CJNE A,0x5a,0x83f6
CODE:83ea  a3                       INC DPTR
CODE:83eb  e0                       MOVX A,@DPTR
CODE:83ec  b5 7a 07                 CJNE A,0x7a,0x83f6
CODE:83ef  a3                       INC DPTR
CODE:83f0  e0                       MOVX A,@DPTR
CODE:83f1  b5 77 02                 CJNE A,0x77,0x83f6
CODE:83f4  80 e5                    SJMP 0x83db
LAB_CODE_83f6:
CODE:83f6  e5 76                    MOV A,0x76   ; XREF: CODE:83e2 CODE:83e7 CODE:83ec CODE:83f1 
CODE:83f8  c3                       CLR CY
CODE:83f9  94 14                    SUBB A,#0x14
CODE:83fb  50 de                    JNC 0x83db
CODE:83fd  90 08 f0                 MOV DPTR,#0x8f0
CODE:8400  e5 76                    MOV A,0x76
CODE:8402  f0                       MOVX @DPTR,A
CODE:8403  a3                       INC DPTR
CODE:8404  e5 5a                    MOV A,0x5a
CODE:8406  f0                       MOVX @DPTR,A
CODE:8407  a3                       INC DPTR
CODE:8408  e5 7a                    MOV A,0x7a
CODE:840a  f0                       MOVX @DPTR,A
CODE:840b  a3                       INC DPTR
CODE:840c  e5 77                    MOV A,0x77
CODE:840e  f0                       MOVX @DPTR,A
CODE:840f  7f d0                    MOV R7,#0xd0
CODE:8411  12 7f 93                 LCALL 0x7f93
CODE:8414  7b a5                    MOV R3,#0xa5
CODE:8416  7d 00                    MOV R5,#0x0
CODE:8418  7f d0                    MOV R7,#0xd0
CODE:841a  12 7e ca                 LCALL 0x7eca
CODE:841d  ab 76                    MOV R3,0x76
CODE:841f  7d 01                    MOV R5,#0x1
CODE:8421  7f d0                    MOV R7,#0xd0
CODE:8423  12 7e ca                 LCALL 0x7eca
CODE:8426  ab 5a                    MOV R3,0x5a
CODE:8428  7d 02                    MOV R5,#0x2
CODE:842a  7f d0                    MOV R7,#0xd0
CODE:842c  12 7e ca                 LCALL 0x7eca
CODE:842f  ab 7a                    MOV R3,0x7a
CODE:8431  7d 03                    MOV R5,#0x3
CODE:8433  7f d0                    MOV R7,#0xd0
CODE:8435  12 7e ca                 LCALL 0x7eca
CODE:8438  ab 77                    MOV R3,0x77
CODE:843a  7d 04                    MOV R5,#0x4
CODE:843c  7f d0                    MOV R7,#0xd0
CODE:843e  12 7e ca                 LCALL 0x7eca
CODE:8441  e5 76                    MOV A,0x76
CODE:8443  25 5a                    ADD A,0x5a
CODE:8445  25 7a                    ADD A,0x7a
CODE:8447  25 77                    ADD A,0x77
CODE:8449  24 5a                    ADD A,#0x5a
CODE:844b  fb                       MOV R3,A
CODE:844c  7d 05                    MOV R5,#0x5
CODE:844e  7f d0                    MOV R7,#0xd0
CODE:8450  12 7e ca                 LCALL 0x7eca
LAB_CODE_8453:
CODE:8453  d0 e0                    POP A   ; XREF: CODE:83db 
CODE:8455  ff                       MOV R7,A
CODE:8456  d0 e0                    POP A
CODE:8458  fd                       MOV R5,A
CODE:8459  d0 e0                    POP A
CODE:845b  fb                       MOV R3,A
CODE:845c  d0 83                    POP DPH
CODE:845e  d0 82                    POP DPL
CODE:8460  d0 d0                    POP PSW
CODE:8462  d0 e0                    POP A
CODE:8464  22                       RET

; ===== FUNCTION FUN_CODE_8465 @ CODE:8465 =====
CODE:8465  75 5f ff                 MOV 0x5f,#0xff   ; XREF: CODE:836c Entry Point 
CODE:8468  75 60 e0                 MOV 0x60,#0xe0
CODE:846b  75 61 c4                 MOV 0x61,#0xc4
CODE:846e  75 62 a8                 MOV 0x62,#0xa8
CODE:8471  75 63 8c                 MOV 0x63,#0x8c
CODE:8474  75 64 70                 MOV 0x64,#0x70
CODE:8477  75 65 54                 MOV 0x65,#0x54
CODE:847a  75 66 38                 MOV 0x66,#0x38
CODE:847d  75 67 1c                 MOV 0x67,#0x1c
CODE:8480  75 68 00                 MOV 0x68,#0x0
CODE:8483  75 1d 00                 MOV 0x1d,#0x0
CODE:8486  75 1c 00                 MOV 0x1c,#0x0
CODE:8489  22                       RET

; ===== FUNCTION FUN_CODE_848a @ CODE:848a =====
CODE:848a  75 5e 00                 MOV 0x5e,#0x0   ; XREF: CODE:8374 Entry Point 
CODE:848d  75 1c 00                 MOV 0x1c,#0x0
CODE:8490  75 75 00                 MOV 0x75,#0x0
CODE:8493  75 5f f2                 MOV 0x5f,#0xf2
CODE:8496  75 60 e7                 MOV 0x60,#0xe7
CODE:8499  75 61 dc                 MOV 0x61,#0xdc
CODE:849c  75 62 d1                 MOV 0x62,#0xd1
CODE:849f  75 63 c6                 MOV 0x63,#0xc6
CODE:84a2  75 64 bb                 MOV 0x64,#0xbb
CODE:84a5  75 65 b0                 MOV 0x65,#0xb0
CODE:84a8  75 66 a5                 MOV 0x66,#0xa5
CODE:84ab  75 67 9a                 MOV 0x67,#0x9a
CODE:84ae  75 68 8f                 MOV 0x68,#0x8f
CODE:84b1  75 69 84                 MOV 0x69,#0x84
CODE:84b4  75 6a 79                 MOV 0x6a,#0x79
CODE:84b7  75 6b 6e                 MOV 0x6b,#0x6e
CODE:84ba  75 6c 63                 MOV 0x6c,#0x63
CODE:84bd  75 6d 58                 MOV 0x6d,#0x58
CODE:84c0  75 6e 4d                 MOV 0x6e,#0x4d
CODE:84c3  75 6f 42                 MOV 0x6f,#0x42
CODE:84c6  75 70 37                 MOV 0x70,#0x37
CODE:84c9  75 71 2c                 MOV 0x71,#0x2c
CODE:84cc  75 72 21                 MOV 0x72,#0x21
CODE:84cf  75 73 16                 MOV 0x73,#0x16
CODE:84d2  75 74 0b                 MOV 0x74,#0xb
CODE:84d5  75 0c 00                 MOV 0x0c,#0x0
CODE:84d8  75 0d 00                 MOV 0x0d,#0x0
CODE:84db  75 0e 00                 MOV 0x0e,#0x0
CODE:84de  22                       RET

; ===== FUNCTION FUN_CODE_84df @ CODE:84df =====
CODE:84df  7a 00                    MOV R2,#0x0   ; XREF: CODE:837c Entry Point 
LAB_CODE_84e1:
CODE:84e1  e5 1c                    MOV A,0x1c   ; XREF: CODE:8525 
CODE:84e3  75 f0 03                 MOV B,#0x3
CODE:84e6  a4                       MUL AB
CODE:84e7  fe                       MOV R6,A
CODE:84e8  90 85 29                 MOV DPTR,#0x8529
CODE:84eb  ee                       MOV A,R6
CODE:84ec  93                       MOVC A,@A+DPTR
CODE:84ed  ff                       MOV R7,A
CODE:84ee  ea                       MOV A,R2
CODE:84ef  f5 82                    MOV DPL,A
CODE:84f1  75 83 00                 MOV DPH,#0x0
CODE:84f4  ef                       MOV A,R7
CODE:84f5  f0                       MOVX @DPTR,A
CODE:84f6  90 85 2a                 MOV DPTR,#0x852a
CODE:84f9  ee                       MOV A,R6
CODE:84fa  93                       MOVC A,@A+DPTR
CODE:84fb  ff                       MOV R7,A
CODE:84fc  ea                       MOV A,R2
CODE:84fd  24 95                    ADD A,#0x95
CODE:84ff  f5 82                    MOV DPL,A
CODE:8501  e4                       CLR A
CODE:8502  34 00                    ADDC A,#0x0
CODE:8504  f5 83                    MOV DPH,A
CODE:8506  ef                       MOV A,R7
CODE:8507  f0                       MOVX @DPTR,A
CODE:8508  90 85 2b                 MOV DPTR,#0x852b
CODE:850b  ee                       MOV A,R6
CODE:850c  93                       MOVC A,@A+DPTR
CODE:850d  ff                       MOV R7,A
CODE:850e  ea                       MOV A,R2
CODE:850f  24 2a                    ADD A,#0x2a
CODE:8511  f5 82                    MOV DPL,A
CODE:8513  e4                       CLR A
CODE:8514  34 01                    ADDC A,#0x1
CODE:8516  f5 83                    MOV DPH,A
CODE:8518  ef                       MOV A,R7
CODE:8519  f0                       MOVX @DPTR,A
CODE:851a  05 1c                    INC 0x1c
CODE:851c  e5 1c                    MOV A,0x1c
CODE:851e  b4 07 03                 CJNE A,#0x7,0x8524
CODE:8521  75 1c 00                 MOV 0x1c,#0x0
LAB_CODE_8524:
CODE:8524  0a                       INC R2   ; XREF: CODE:851e 
CODE:8525  ba 8a b9                 CJNE R2,#0x8a,0x84e1
CODE:8528  22                       RET
