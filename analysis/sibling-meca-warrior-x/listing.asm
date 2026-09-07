
; ===== FUNCTION RESET @ CODE:0000 =====
CODE:0000  02 c0 e1                 LJMP 0xc0e1   ; XREF: Entry Point 

; ===== FUNCTION ISR_03 @ CODE:0003 =====
CODE:0003  02 b9 ea                 LJMP 0xb9ea   ; XREF: Entry Point 

; ===== FUNCTION FUN_CODE_0006 @ CODE:0006 =====
CODE:0006  53 b6 fd                 ANL 0xb6,#0xfd   ; XREF: CODE:0013 
CODE:0009  32                       RETI

; ===== FUNCTION FUN_CODE_000a @ CODE:000a =====
CODE:000a  32                       RETI   ; XREF: CODE:0043 

; ===== FUNCTION ISR_0B @ CODE:000b =====
CODE:000b  02 c1 dd                 LJMP 0xc1dd   ; XREF: Entry Point 

; ===== FUNCTION FUN_CODE_000e @ CODE:000e =====
CODE:000e  53 b6 fe                 ANL 0xb6,#0xfe   ; XREF: CODE:001b 
CODE:0011  32                       RETI

; ===== FUNCTION FUN_CODE_0012 @ CODE:0012 =====
CODE:0012  32                       RETI   ; XREF: CODE:004b 

; ===== FUNCTION ISR_13 @ CODE:0013 =====
CODE:0013  02 00 06                 LJMP 0x0006   ; XREF: Entry Point 

; ===== FUNCTION FUN_CODE_0016 @ CODE:0016 =====
CODE:0016  75 8f 01                 MOV 0x8f,#0x1   ; XREF: CODE:c08e 
CODE:0019  22                       RET

; ===== FUNCTION FUN_CODE_001a @ CODE:001a =====
CODE:001a  32                       RETI   ; XREF: CODE:0053 

; ===== FUNCTION ISR_1B @ CODE:001b =====
CODE:001b  02 00 0e                 LJMP 0x000e   ; XREF: Entry Point 

; ===== FUNCTION FUN_CODE_001e @ CODE:001e =====
CODE:001e  e4                       CLR A   ; XREF: CODE:b9e3 CODE:c1a2 
CODE:001f  ff                       MOV R7,A
CODE:0020  fe                       MOV R6,A
LAB_CODE_0021:
CODE:0021  12 00 4e                 LCALL 0x004e   ; XREF: CODE:0037 
CODE:0024  00                       NOP
CODE:0025  00                       NOP
CODE:0026  ef                       MOV A,R7
CODE:0027  25 e0                    ADD A,A
CODE:0029  ff                       MOV R7,A
CODE:002a  30 8e 03                 JNB 0x8e,0x0030
CODE:002d  44 01                    ORL A,#0x1
CODE:002f  ff                       MOV R7,A
LAB_CODE_0030:
CODE:0030  12 c1 e9                 LCALL 0xc1e9   ; XREF: CODE:002a 

; ===== FUNCTION ISR_33 @ CODE:0033 =====
CODE:0033  00                       NOP   ; XREF: Entry Point 
CODE:0034  00                       NOP
CODE:0035  0e                       INC R6
CODE:0036  ee                       MOV A,R6
CODE:0037  b4 08 e7                 CJNE A,#0x8,0x0021
CODE:003a  22                       RET

; ===== FUNCTION ISR_3B @ CODE:003b =====
CODE:003b  02 bb 57                 LJMP 0xbb57   ; XREF: Entry Point 

; ===== FUNCTION ISR_43 @ CODE:0043 =====
CODE:0043  02 00 0a                 LJMP 0x000a   ; XREF: Entry Point 

; ===== FUNCTION FUN_CODE_0046 @ CODE:0046 =====
CODE:0046  c2 8d                    CLR 0x8d   ; XREF: CODE:afdf CODE:b9a4 CODE:c19a CODE:c1b4 CODE:b3a7 CODE:bf82 
CODE:0048  22                       RET

; ===== FUNCTION ISR_4B @ CODE:004b =====
CODE:004b  02 00 12                 LJMP 0x0012   ; XREF: Entry Point 

; ===== FUNCTION FUN_CODE_004e @ CODE:004e =====
CODE:004e  c2 83                    CLR 0x83   ; XREF: CODE:0021 
CODE:0050  22                       RET

; ===== FUNCTION ISR_53 @ CODE:0053 =====
CODE:0053  02 00 1a                 LJMP 0x001a   ; XREF: Entry Point 

; ===== FUNCTION ISR_5B @ CODE:005b =====
CODE:005b  01 01                    AJMP 0x0001   ; XREF: Entry Point 

; ===== FUNCTION ISR_63 @ CODE:0063 =====
CODE:0063  02 02 03                 LJMP 0x0203   ; XREF: Entry Point 

; ===== FUNCTION ISR_6B @ CODE:006b =====
CODE:006b  04                       INC A   ; XREF: Entry Point 
CODE:006c  04                       INC A
CODE:006d  05 05                    INC 0x05
CODE:006f  05 06                    INC 0x06
CODE:0071  06                       INC @R0
CODE:0072  07                       INC @R1

; ===== FUNCTION ISR_73 @ CODE:0073 =====
CODE:0073  07                       INC @R1   ; XREF: Entry Point 
CODE:0074  07                       INC @R1
CODE:0075  08                       INC R0
CODE:0076  08                       INC R0
CODE:0077  09                       INC R1
CODE:0078  09                       INC R1
CODE:0079  0a                       INC R2
CODE:007a  0a                       INC R2

; ===== FUNCTION ISR_7B @ CODE:007b =====
CODE:007b  0b                       INC R3   ; XREF: Entry Point 
CODE:007c  0c                       INC R4
CODE:007d  0c                       INC R4
CODE:007e  0d                       INC R5
CODE:007f  0e                       INC R6
CODE:0080  0e                       INC R6
CODE:0081  0f                       INC R7
CODE:0082  10 10 11                 JBC 0x10,0x0096
CODE:0085  12 13 14                 LCALL 0x1314
CODE:0088  14                       DEC A
CODE:0089  15 16                    DEC 0x16
CODE:008b  17                       DEC @R1
CODE:008c  18                       DEC R0
CODE:008d  19                       DEC R1
CODE:008e  1a                       DEC R2
CODE:008f  1b                       DEC R3
CODE:0090  1c                       DEC R4
CODE:0091  1d                       DEC R5
CODE:0092  1f                       DEC R7
CODE:0093  20 21 22                 JB 0x21,0x00b8
LAB_CODE_0096:
CODE:0096  23                       RL A   ; XREF: CODE:0082 
CODE:0097  25 26                    ADD A,0x26
CODE:0099  27                       ADD A,@R1
CODE:009a  29                       ADD A,R1
CODE:009b  2a                       ADD A,R2
CODE:009c  2b                       ADD A,R3
CODE:009d  2d                       ADD A,R5
CODE:009e  2e                       ADD A,R6
CODE:009f  30 32 33                 JNB 0x32,0x00d5
CODE:00a2  35 36                    ADDC A,0x36
CODE:00a4  38                       ADDC A,R0
CODE:00a5  3a                       ADDC A,R2
CODE:00a6  3c                       ADDC A,R4
CODE:00a7  3d                       ADDC A,R5
CODE:00a8  3f                       ADDC A,R7
CODE:00a9  41 43                    AJMP 0x0243
LAB_CODE_00b8:
CODE:00b8  62 64                    XRL 0x64,A   ; XREF: CODE:0093 
LAB_CODE_00ba:
CODE:00ba  ff                       MOV R7,A   ; XREF: CODE:0100 CODE:0103 
CODE:00bb  fe                       MOV R6,A
CODE:00bc  fd                       MOV R5,A
CODE:00bd  fc                       MOV R4,A
CODE:00be  fb                       MOV R3,A
CODE:00bf  fa                       MOV R2,A
CODE:00c0  f9                       MOV R1,A
CODE:00c1  f8                       MOV R0,A
CODE:00c2  f7                       MOV @R1,A
CODE:00c3  f6                       MOV @R0,A
CODE:00c4  f5 f4                    MOV 0xf4,A
CODE:00c6  f3                       MOVX @R1,A
CODE:00c7  f2                       MOVX @R0,A
CODE:00c8  f1 f0                    ACALL 0x07f0
CODE:00ca  ef                       MOV A,R7
CODE:00cb  ee                       MOV A,R6
CODE:00cc  ed                       MOV A,R5
CODE:00cd  ec                       MOV A,R4
CODE:00ce  eb                       MOV A,R3
CODE:00cf  ea                       MOV A,R2
CODE:00d0  e9                       MOV A,R1
CODE:00d1  e8                       MOV A,R0
CODE:00d2  e7                       MOV A,@R1
CODE:00d3  e6                       MOV A,@R0
LAB_CODE_00d5:
CODE:00d5  e4                       CLR A   ; XREF: CODE:009f 
CODE:00d6  e3                       MOVX A,@R1
CODE:00d7  e2                       MOVX A,@R0
CODE:00d8  e1 e0                    AJMP 0x07e0

; ===== FUNCTION FUN_CODE_0100 @ CODE:0100 =====
CODE:0100  b9 b8 b7                 CJNE R1,#0xb8,0x00ba   ; XREF: CODE:08ac 
CODE:0103  b6 b5 b4                 CJNE @R0,#0xb5,0x00ba
CODE:0106  b3                       CPL CY
CODE:0107  b2 b1                    CPL 0xb1
CODE:0109  b0 af                    ANL CY,/0xaf
CODE:010b  ae ad                    MOV R6,0xad
CODE:010d  ac ab                    MOV R4,0xab
CODE:010f  aa a9                    MOV R2,0xa9
CODE:0111  a8 a7                    MOV R0,0xa7
CODE:0113  a6 a5                    MOV @R0,0xa5
CODE:0115  a4                       MUL AB
CODE:0116  a3                       INC DPTR
CODE:0117  a2 a1                    MOV CY,0xa1
CODE:0119  a0 9f                    ORL CY,/0x9f
CODE:011b  9e                       SUBB A,R6
CODE:011c  9d                       SUBB A,R5
CODE:011d  9c                       SUBB A,R4
CODE:011e  9b                       SUBB A,R3
CODE:011f  9a                       SUBB A,R2
CODE:0120  99                       SUBB A,R1
CODE:0121  98                       SUBB A,R0
CODE:0122  97                       SUBB A,@R1
CODE:0123  96                       SUBB A,@R0
CODE:0124  95 94                    SUBB A,0x94
CODE:0126  93                       MOVC A,@A+DPTR
CODE:0127  92 91                    MOV 0x91,CY
CODE:0129  90 8f 8e                 MOV DPTR,#0x8f8e
CODE:012c  8d 8c                    MOV 0x8c,R5
CODE:012e  8b 8a                    MOV 0x8a,R3
CODE:0130  89 88                    MOV 0x88,R1
CODE:0132  87 86                    MOV 0x86,@R1
CODE:0134  85 84 83                 MOV DPH,0x84
CODE:0137  82 81                    ANL CY,0x81
CODE:0139  80 7f                    SJMP 0x01ba
LAB_CODE_01ba:
CODE:01ba  00                       NOP   ; XREF: CODE:0139 
CODE:01bb  00                       NOP
CODE:01bc  00                       NOP
CODE:01bd  00                       NOP
CODE:01be  00                       NOP
CODE:01bf  00                       NOP
CODE:01c0  00                       NOP
CODE:01c1  00                       NOP
CODE:01c2  00                       NOP
CODE:01c3  00                       NOP
CODE:01c4  00                       NOP
CODE:01c5  00                       NOP
CODE:01c6  00                       NOP
CODE:01c7  00                       NOP
CODE:01c8  00                       NOP
CODE:01c9  00                       NOP
CODE:01ca  00                       NOP

; ===== FUNCTION FUN_CODE_0203 @ CODE:0203 =====
CODE:0203  00                       NOP   ; XREF: CODE:0063 
CODE:0204  00                       NOP
CODE:0205  00                       NOP
CODE:0206  00                       NOP
CODE:0207  00                       NOP
CODE:0208  00                       NOP
CODE:0209  00                       NOP
CODE:020a  00                       NOP
CODE:020b  00                       NOP
CODE:020c  00                       NOP
CODE:020d  00                       NOP
CODE:020e  00                       NOP
CODE:020f  00                       NOP
CODE:0210  00                       NOP
CODE:0211  00                       NOP
CODE:0212  00                       NOP
CODE:0213  00                       NOP

; ===== FUNCTION FUN_CODE_0243 @ CODE:0243 =====
CODE:0243  00                       NOP   ; XREF: CODE:00a9 
CODE:0244  00                       NOP
CODE:0245  00                       NOP
CODE:0246  00                       NOP
CODE:0247  00                       NOP
CODE:0248  00                       NOP
CODE:0249  00                       NOP
CODE:024a  00                       NOP
CODE:024b  00                       NOP
CODE:024c  00                       NOP
CODE:024d  00                       NOP
CODE:024e  00                       NOP
CODE:024f  00                       NOP
CODE:0250  00                       NOP
CODE:0251  00                       NOP
CODE:0252  00                       NOP
CODE:0253  00                       NOP

; ===== FUNCTION FUN_CODE_07e0 @ CODE:07e0 =====
CODE:07e0  00                       NOP   ; XREF: CODE:00d8 
CODE:07e1  00                       NOP
CODE:07e2  00                       NOP
CODE:07e3  00                       NOP
CODE:07e4  00                       NOP
CODE:07e5  00                       NOP
CODE:07e6  01 02                    AJMP 0x0002

; ===== FUNCTION FUN_CODE_07f0 @ CODE:07f0 =====
CODE:07f0  0b                       INC R3   ; XREF: CODE:00c8 
CODE:07f1  0c                       INC R4
CODE:07f2  0d                       INC R5
CODE:07f3  0e                       INC R6
CODE:07f4  0f                       INC R7
CODE:07f5  10 11 12                 JBC 0x11,0x080a
CODE:07f8  13                       RRC A
CODE:07f9  14                       DEC A
CODE:07fa  15 16                    DEC 0x16
CODE:07fc  17                       DEC @R1
CODE:07fd  18                       DEC R0
CODE:07fe  19                       DEC R1
CODE:07ff  1a                       DEC R2
CODE:0800  1b                       DEC R3
CODE:0801  1c                       DEC R4
CODE:0802  1d                       DEC R5
CODE:0803  1e                       DEC R6
CODE:0804  1f                       DEC R7
CODE:0805  20 21 22                 JB 0x21,0x082a
CODE:0808  23                       RL A
CODE:0809  24 25                    ADD A,#0x25
CODE:080b  26                       ADD A,@R0
CODE:080c  27                       ADD A,@R1
CODE:080d  28                       ADD A,R0
CODE:080e  29                       ADD A,R1
CODE:080f  2a                       ADD A,R2
CODE:0810  2b                       ADD A,R3
CODE:0811  2c                       ADD A,R4
CODE:0812  2d                       ADD A,R5
CODE:0813  2e                       ADD A,R6
CODE:0814  2f                       ADD A,R7
CODE:0815  30 31 32                 JNB 0x31,0x084a
CODE:0818  33                       RLC A
CODE:0819  34 35                    ADDC A,#0x35
CODE:081b  36                       ADDC A,@R0
CODE:081c  37                       ADDC A,@R1
CODE:081d  38                       ADDC A,R0
CODE:081e  39                       ADDC A,R1
CODE:081f  3a                       ADDC A,R2
CODE:0820  3b                       ADDC A,R3
CODE:0821  3c                       ADDC A,R4
CODE:0822  3d                       ADDC A,R5
CODE:0823  3e                       ADDC A,R6
CODE:0824  3f                       ADDC A,R7
CODE:0825  40 41                    JC 0x0868
CODE:0827  42 43                    ORL 0x43,A
CODE:0829  44 45                    ORL A,#0x45
CODE:082b  46                       ORL A,@R0
CODE:082c  47                       ORL A,@R1
CODE:082d  48                       ORL A,R0
CODE:082e  49                       ORL A,R1
CODE:082f  4a                       ORL A,R2
CODE:0830  4b                       ORL A,R3
CODE:0831  4c                       ORL A,R4
CODE:0832  4d                       ORL A,R5
CODE:0833  4e                       ORL A,R6
CODE:0834  4f                       ORL A,R7
CODE:0835  50 51                    JNC 0x0888
CODE:0837  52 53                    ANL 0x53,A
CODE:0839  54 55                    ANL A,#0x55
CODE:083b  56                       ANL A,@R0
CODE:083c  57                       ANL A,@R1
CODE:083d  58                       ANL A,R0
CODE:083e  59                       ANL A,R1
CODE:083f  5a                       ANL A,R2
CODE:0840  5b                       ANL A,R3
CODE:0841  5c                       ANL A,R4
CODE:0842  5d                       ANL A,R5
CODE:0843  5e                       ANL A,R6
CODE:0844  5f                       ANL A,R7
CODE:0845  60 61                    JZ 0x08a8
CODE:0847  62 63                    XRL 0x63,A
CODE:0849  64 64                    XRL A,#0x64
CODE:084b  63 62 61                 XRL 0x62,#0x61
CODE:084e  60 5f                    JZ 0x08af
CODE:0850  5e                       ANL A,R6
CODE:0851  5d                       ANL A,R5
CODE:0852  5c                       ANL A,R4
CODE:0853  5b                       ANL A,R3
CODE:0854  5a                       ANL A,R2
CODE:0855  59                       ANL A,R1
CODE:0856  58                       ANL A,R0
CODE:0857  57                       ANL A,@R1
CODE:0858  56                       ANL A,@R0
CODE:0859  55 54                    ANL A,0x54
CODE:085b  53 52 51                 ANL 0x52,#0x51
CODE:085e  50 4f                    JNC 0x08af
CODE:0860  4e                       ORL A,R6
CODE:0861  4d                       ORL A,R5
CODE:0862  4c                       ORL A,R4
CODE:0863  4b                       ORL A,R3
CODE:0864  4a                       ORL A,R2
CODE:0865  49                       ORL A,R1
CODE:0866  48                       ORL A,R0
CODE:0867  47                       ORL A,@R1
LAB_CODE_0868:
CODE:0868  46                       ORL A,@R0   ; XREF: CODE:0825 
CODE:0869  45 44                    ORL A,0x44
CODE:086b  43 42 41                 ORL 0x42,#0x41
CODE:086e  40 3f                    JC 0x08af
CODE:0870  3e                       ADDC A,R6
CODE:0871  3d                       ADDC A,R5
CODE:0872  3c                       ADDC A,R4
CODE:0873  3b                       ADDC A,R3
CODE:0874  3a                       ADDC A,R2
CODE:0875  39                       ADDC A,R1
CODE:0876  38                       ADDC A,R0
CODE:0877  37                       ADDC A,@R1
CODE:0878  36                       ADDC A,@R0
CODE:0879  35 34                    ADDC A,0x34
CODE:087b  33                       RLC A
CODE:087c  32                       RETI
LAB_CODE_0888:
CODE:0888  26                       ADD A,@R0   ; XREF: CODE:0835 
CODE:0889  25 24                    ADD A,0x24
CODE:088b  23                       RL A
CODE:088c  22                       RET
LAB_CODE_08a8:
CODE:08a8  06                       INC @R0   ; XREF: CODE:0845 
CODE:08a9  05 04                    INC 0x04
CODE:08ab  03                       RR A
CODE:08ac  02 01 00                 LJMP 0x0100
LAB_CODE_08af:
CODE:08af  00                       NOP   ; XREF: CODE:084e CODE:085e CODE:086e 
CODE:08b0  00                       NOP
CODE:08b1  00                       NOP
CODE:08b2  00                       NOP
CODE:08b3  00                       NOP
CODE:08b4  00                       NOP
CODE:08b5  00                       NOP
CODE:08b6  00                       NOP
CODE:08b7  00                       NOP
CODE:08b8  00                       NOP
CODE:08b9  00                       NOP
CODE:08ba  00                       NOP
CODE:08bb  00                       NOP
CODE:08bc  00                       NOP
CODE:08bd  00                       NOP
CODE:08be  00                       NOP
CODE:08bf  00                       NOP

; ===== FUNCTION FUN_CODE_1314 @ CODE:1314 =====
CODE:1314  7d 7d                    MOV R5,#0x7d   ; XREF: CODE:0085 
CODE:1316  7d 7d                    MOV R5,#0x7d
CODE:1318  7d 7d                    MOV R5,#0x7d
CODE:131a  7d 7d                    MOV R5,#0x7d
CODE:131c  7d 7d                    MOV R5,#0x7d
CODE:131e  7d 7d                    MOV R5,#0x7d
CODE:1320  7d 7d                    MOV R5,#0x7d
CODE:1322  7d 7d                    MOV R5,#0x7d
CODE:1324  7d 7d                    MOV R5,#0x7d
CODE:1326  7d 7d                    MOV R5,#0x7d
CODE:1328  7d 7d                    MOV R5,#0x7d
CODE:132a  7d 7d                    MOV R5,#0x7d
CODE:132c  7d 7d                    MOV R5,#0x7d
CODE:132e  7d 7d                    MOV R5,#0x7d
CODE:1330  7d 7d                    MOV R5,#0x7d
CODE:1332  7d 7d                    MOV R5,#0x7d
CODE:1334  7d 7d                    MOV R5,#0x7d

; ===== FUNCTION FUN_CODE_1887 @ CODE:1887 =====
CODE:1887  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:9175 
CODE:188a  ef                       MOV A,R7
CODE:188b  f0                       MOVX @DPTR,A
CODE:188c  e4                       CLR A
CODE:188d  78 2b                    MOV R0,#0x2b
CODE:188f  f6                       MOV @R0,A
LAB_CODE_1890:
CODE:1890  78 2b                    MOV R0,#0x2b   ; XREF: CODE:2db9 
CODE:1892  e6                       MOV A,@R0
CODE:1893  f9                       MOV R1,A
CODE:1894  c3                       CLR CY
CODE:1895  94 17                    SUBB A,#0x17
CODE:1897  40 03                    JC 0x189c
CODE:1899  02 2d bc                 LJMP 0x2dbc
LAB_CODE_189c:
CODE:189c  90 08 e5                 MOV DPTR,#0x8e5   ; XREF: CODE:1897 
CODE:189f  e0                       MOVX A,@DPTR
CODE:18a0  fc                       MOV R4,A
CODE:18a1  a3                       INC DPTR
CODE:18a2  e0                       MOVX A,@DPTR
CODE:18a3  fd                       MOV R5,A
CODE:18a4  a3                       INC DPTR
CODE:18a5  e0                       MOVX A,@DPTR
CODE:18a6  fe                       MOV R6,A
CODE:18a7  a3                       INC DPTR
CODE:18a8  e0                       MOVX A,@DPTR
CODE:18a9  ff                       MOV R7,A
CODE:18aa  a8 01                    MOV R0,0x01
CODE:18ac  12 81 45                 LCALL 0x8145
CODE:18af  ef                       MOV A,R7
CODE:18b0  54 01                    ANL A,#0x1
CODE:18b2  70 03                    JNZ 0x18b7
CODE:18b4  02 2d b6                 LJMP 0x2db6
LAB_CODE_18b7:
CODE:18b7  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:18b2 
CODE:18ba  e0                       MOVX A,@DPTR
CODE:18bb  fb                       MOV R3,A
CODE:18bc  25 e0                    ADD A,A
CODE:18be  25 e0                    ADD A,A
CODE:18c0  24 c7                    ADD A,#0xc7
CODE:18c2  f5 82                    MOV DPL,A
CODE:18c4  e4                       CLR A
CODE:18c5  34 08                    ADDC A,#0x8
CODE:18c7  f5 83                    MOV DPH,A
CODE:18c9  e0                       MOVX A,@DPTR
CODE:18ca  fc                       MOV R4,A
CODE:18cb  a3                       INC DPTR
CODE:18cc  e0                       MOVX A,@DPTR
CODE:18cd  fd                       MOV R5,A
CODE:18ce  a3                       INC DPTR
CODE:18cf  e0                       MOVX A,@DPTR
CODE:18d0  fe                       MOV R6,A
CODE:18d1  a3                       INC DPTR
CODE:18d2  e0                       MOVX A,@DPTR
CODE:18d3  ff                       MOV R7,A
CODE:18d4  78 2b                    MOV R0,#0x2b
CODE:18d6  e6                       MOV A,@R0
CODE:18d7  f9                       MOV R1,A
CODE:18d8  f8                       MOV R0,A
CODE:18d9  12 81 45                 LCALL 0x8145
CODE:18dc  ef                       MOV A,R7
CODE:18dd  54 01                    ANL A,#0x1
CODE:18df  70 04                    JNZ 0x18e5
CODE:18e1  c2 00                    CLR 0x00
CODE:18e3  80 02                    SJMP 0x18e7
LAB_CODE_18e5:
CODE:18e5  d2 00                    SETB 0x00   ; XREF: CODE:18df 
LAB_CODE_18e7:
CODE:18e7  eb                       MOV A,R3   ; XREF: CODE:18e3 
CODE:18e8  64 05                    XRL A,#0x5
CODE:18ea  70 76                    JNZ 0x1962
CODE:18ec  e9                       MOV A,R1
CODE:18ed  64 0a                    XRL A,#0xa
CODE:18ef  70 71                    JNZ 0x1962
CODE:18f1  30 00 2c                 JNB 0x00,0x1920
CODE:18f4  90 08 e9                 MOV DPTR,#0x8e9
CODE:18f7  f0                       MOVX @DPTR,A
LAB_CODE_18f8:
CODE:18f8  90 08 e9                 MOV DPTR,#0x8e9   ; XREF: CODE:1918 
CODE:18fb  e0                       MOVX A,@DPTR
CODE:18fc  ff                       MOV R7,A
CODE:18fd  c3                       CLR CY
CODE:18fe  94 10                    SUBB A,#0x10
CODE:1900  50 18                    JNC 0x191a
CODE:1902  74 06                    MOV A,#0x6
CODE:1904  2f                       ADD A,R7
CODE:1905  f5 82                    MOV DPL,A
CODE:1907  e4                       CLR A
CODE:1908  34 07                    ADDC A,#0x7
CODE:190a  f5 83                    MOV DPH,A
CODE:190c  e0                       MOVX A,@DPTR
CODE:190d  60 03                    JZ 0x1912
CODE:190f  02 2d bc                 LJMP 0x2dbc
LAB_CODE_1912:
CODE:1912  90 08 e9                 MOV DPTR,#0x8e9   ; XREF: CODE:190d 
CODE:1915  e0                       MOVX A,@DPTR
CODE:1916  04                       INC A
CODE:1917  f0                       MOVX @DPTR,A
CODE:1918  80 de                    SJMP 0x18f8
LAB_CODE_191a:
CODE:191a  d2 10                    SETB 0x10   ; XREF: CODE:1900 
CODE:191c  d2 14                    SETB 0x14
CODE:191e  80 42                    SJMP 0x1962
LAB_CODE_1920:
CODE:1920  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:18f1 
CODE:1923  e0                       MOVX A,@DPTR
CODE:1924  ff                       MOV R7,A
CODE:1925  ad 01                    MOV R5,0x01
CODE:1927  12 94 3f                 LCALL 0x943f
CODE:192a  c2 10                    CLR 0x10
CODE:192c  c2 19                    CLR 0x19
CODE:192e  e4                       CLR A
CODE:192f  78 1c                    MOV R0,#0x1c
CODE:1931  f6                       MOV @R0,A
CODE:1932  08                       INC R0
CODE:1933  f6                       MOV @R0,A
CODE:1934  90 08 e9                 MOV DPTR,#0x8e9
CODE:1937  f0                       MOVX @DPTR,A
LAB_CODE_1938:
CODE:1938  90 08 e9                 MOV DPTR,#0x8e9   ; XREF: CODE:1960 
CODE:193b  e0                       MOVX A,@DPTR
CODE:193c  ff                       MOV R7,A
CODE:193d  c3                       CLR CY
CODE:193e  94 10                    SUBB A,#0x10
CODE:1940  50 20                    JNC 0x1962
CODE:1942  74 06                    MOV A,#0x6
CODE:1944  2f                       ADD A,R7
CODE:1945  f5 82                    MOV DPL,A
CODE:1947  e4                       CLR A
CODE:1948  34 07                    ADDC A,#0x7
CODE:194a  f5 83                    MOV DPH,A
CODE:194c  e4                       CLR A
CODE:194d  f0                       MOVX @DPTR,A
CODE:194e  74 46                    MOV A,#0x46
CODE:1950  2f                       ADD A,R7
CODE:1951  f5 82                    MOV DPL,A
CODE:1953  e4                       CLR A
CODE:1954  34 07                    ADDC A,#0x7
CODE:1956  f5 83                    MOV DPH,A
CODE:1958  e4                       CLR A
CODE:1959  f0                       MOVX @DPTR,A
CODE:195a  90 08 e9                 MOV DPTR,#0x8e9
CODE:195d  e0                       MOVX A,@DPTR
CODE:195e  04                       INC A
CODE:195f  f0                       MOVX @DPTR,A
CODE:1960  80 d6                    SJMP 0x1938
LAB_CODE_1962:
CODE:1962  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:18ea CODE:18ef CODE:191e CODE:1940 
CODE:1965  e0                       MOVX A,@DPTR
CODE:1966  64 01                    XRL A,#0x1
CODE:1968  60 03                    JZ 0x196d
CODE:196a  02 1b 3b                 LJMP 0x1b3b
LAB_CODE_196d:
CODE:196d  78 2b                    MOV R0,#0x2b   ; XREF: CODE:1968 
CODE:196f  e6                       MOV A,@R0
CODE:1970  64 11                    XRL A,#0x11
CODE:1972  60 03                    JZ 0x1977
CODE:1974  02 1b 3b                 LJMP 0x1b3b
LAB_CODE_1977:
CODE:1977  20 10 03                 JB 0x10,0x197d   ; XREF: CODE:1972 
CODE:197a  02 1b 3b                 LJMP 0x1b3b
LAB_CODE_197d:
CODE:197d  20 00 03                 JB 0x00,0x1983   ; XREF: CODE:1977 
CODE:1980  02 2d bc                 LJMP 0x2dbc
LAB_CODE_1983:
CODE:1983  78 69                    MOV R0,#0x69   ; XREF: CODE:197d 
CODE:1985  e6                       MOV A,@R0
CODE:1986  ff                       MOV R7,A
CODE:1987  c3                       CLR CY
CODE:1988  94 20                    SUBB A,#0x20
CODE:198a  40 5f                    JC 0x19eb
CODE:198c  ef                       MOV A,R7
CODE:198d  d3                       SETB CY
CODE:198e  94 24                    SUBB A,#0x24
CODE:1990  50 59                    JNC 0x19eb
CODE:1992  30 17 03                 JNB 0x17,0x1998
CODE:1995  02 2d bc                 LJMP 0x2dbc
LAB_CODE_1998:
CODE:1998  d2 17                    SETB 0x17   ; XREF: CODE:1992 
CODE:199a  e4                       CLR A
CODE:199b  78 63                    MOV R0,#0x63
CODE:199d  f6                       MOV @R0,A
CODE:199e  c2 26                    CLR 0x26
CODE:19a0  d2 1b                    SETB 0x1b
CODE:19a2  8f 11                    MOV 0x11,R7
CODE:19a4  12 a0 bf                 LCALL 0xa0bf
CODE:19a7  e5 11                    MOV A,0x11
CODE:19a9  b4 20 08                 CJNE A,#0x20,0x19b4
CODE:19ac  90 07 a9                 MOV DPTR,#0x7a9
CODE:19af  74 ec                    MOV A,#0xec
CODE:19b1  f0                       MOVX @DPTR,A
CODE:19b2  80 32                    SJMP 0x19e6
LAB_CODE_19b4:
CODE:19b4  e5 11                    MOV A,0x11   ; XREF: CODE:19a9 
CODE:19b6  b4 21 08                 CJNE A,#0x21,0x19c1
CODE:19b9  90 07 a9                 MOV DPTR,#0x7a9
CODE:19bc  74 e6                    MOV A,#0xe6
CODE:19be  f0                       MOVX @DPTR,A
CODE:19bf  80 25                    SJMP 0x19e6
LAB_CODE_19c1:
CODE:19c1  e5 11                    MOV A,0x11   ; XREF: CODE:19b6 
CODE:19c3  b4 22 08                 CJNE A,#0x22,0x19ce
CODE:19c6  90 07 a9                 MOV DPTR,#0x7a9
CODE:19c9  74 e8                    MOV A,#0xe8
CODE:19cb  f0                       MOVX @DPTR,A
CODE:19cc  80 18                    SJMP 0x19e6
LAB_CODE_19ce:
CODE:19ce  e5 11                    MOV A,0x11   ; XREF: CODE:19c3 
CODE:19d0  b4 23 08                 CJNE A,#0x23,0x19db
CODE:19d3  90 07 a9                 MOV DPTR,#0x7a9
CODE:19d6  74 ea                    MOV A,#0xea
CODE:19d8  f0                       MOVX @DPTR,A
CODE:19d9  80 0b                    SJMP 0x19e6
LAB_CODE_19db:
CODE:19db  e5 11                    MOV A,0x11   ; XREF: CODE:19d0 
CODE:19dd  b4 24 06                 CJNE A,#0x24,0x19e6
CODE:19e0  90 07 a9                 MOV DPTR,#0x7a9
CODE:19e3  74 da                    MOV A,#0xda
CODE:19e5  f0                       MOVX @DPTR,A
LAB_CODE_19e6:
CODE:19e6  78 69                    MOV R0,#0x69   ; XREF: CODE:19b2 CODE:19bf CODE:19cc CODE:19d9 CODE:19dd 
CODE:19e8  76 30                    MOV @R0,#0x30
CODE:19ea  22                       RET
LAB_CODE_19eb:
CODE:19eb  78 69                    MOV R0,#0x69   ; XREF: CODE:198a CODE:1990 
CODE:19ed  e6                       MOV A,@R0
CODE:19ee  64 30                    XRL A,#0x30
CODE:19f0  60 03                    JZ 0x19f5
CODE:19f2  02 2d bc                 LJMP 0x2dbc
LAB_CODE_19f5:
CODE:19f5  e5 11                    MOV A,0x11   ; XREF: CODE:19f0 
CODE:19f7  b4 20 04                 CJNE A,#0x20,0x19fe
CODE:19fa  7f ec                    MOV R7,#0xec
CODE:19fc  80 22                    SJMP 0x1a20
LAB_CODE_19fe:
CODE:19fe  e5 11                    MOV A,0x11   ; XREF: CODE:19f7 
CODE:1a00  b4 21 04                 CJNE A,#0x21,0x1a07
CODE:1a03  7f e6                    MOV R7,#0xe6
CODE:1a05  80 19                    SJMP 0x1a20
LAB_CODE_1a07:
CODE:1a07  e5 11                    MOV A,0x11   ; XREF: CODE:1a00 
CODE:1a09  b4 22 04                 CJNE A,#0x22,0x1a10
CODE:1a0c  7f e8                    MOV R7,#0xe8
CODE:1a0e  80 10                    SJMP 0x1a20
LAB_CODE_1a10:
CODE:1a10  e5 11                    MOV A,0x11   ; XREF: CODE:1a09 
CODE:1a12  b4 23 04                 CJNE A,#0x23,0x1a19
CODE:1a15  7f ea                    MOV R7,#0xea
CODE:1a17  80 07                    SJMP 0x1a20
LAB_CODE_1a19:
CODE:1a19  e5 11                    MOV A,0x11   ; XREF: CODE:1a12 
CODE:1a1b  b4 24 05                 CJNE A,#0x24,0x1a23
CODE:1a1e  7f da                    MOV R7,#0xda
LAB_CODE_1a20:
CODE:1a20  12 be bf                 LCALL 0xbebf   ; XREF: CODE:19fc CODE:1a05 CODE:1a0e CODE:1a17 
LAB_CODE_1a23:
CODE:1a23  e4                       CLR A   ; XREF: CODE:1a1b 
CODE:1a24  90 08 e9                 MOV DPTR,#0x8e9
CODE:1a27  f0                       MOVX @DPTR,A
LAB_CODE_1a28:
CODE:1a28  90 08 e9                 MOV DPTR,#0x8e9   ; XREF: CODE:1a91 
CODE:1a2b  e0                       MOVX A,@DPTR
CODE:1a2c  fe                       MOV R6,A
CODE:1a2d  c3                       CLR CY
CODE:1a2e  94 55                    SUBB A,#0x55
CODE:1a30  50 61                    JNC 0x1a93
CODE:1a32  90 07 a9                 MOV DPTR,#0x7a9
CODE:1a35  e0                       MOVX A,@DPTR
CODE:1a36  ff                       MOV R7,A
CODE:1a37  ee                       MOV A,R6
CODE:1a38  75 f0 03                 MOV B,#0x3
CODE:1a3b  a4                       MUL AB
CODE:1a3c  fd                       MOV R5,A
CODE:1a3d  74 f6                    MOV A,#0xf6
CODE:1a3f  2e                       ADD A,R6
CODE:1a40  f5 82                    MOV DPL,A
CODE:1a42  e4                       CLR A
CODE:1a43  34 04                    ADDC A,#0x4
CODE:1a45  f5 83                    MOV DPH,A
CODE:1a47  e0                       MOVX A,@DPTR
CODE:1a48  fb                       MOV R3,A
CODE:1a49  12 bd c0                 LCALL 0xbdc0
CODE:1a4c  90 07 a9                 MOV DPTR,#0x7a9
CODE:1a4f  e0                       MOVX A,@DPTR
CODE:1a50  ff                       MOV R7,A
CODE:1a51  90 08 e9                 MOV DPTR,#0x8e9
CODE:1a54  e0                       MOVX A,@DPTR
CODE:1a55  fe                       MOV R6,A
CODE:1a56  75 f0 03                 MOV B,#0x3
CODE:1a59  a4                       MUL AB
CODE:1a5a  04                       INC A
CODE:1a5b  fd                       MOV R5,A
CODE:1a5c  74 8b                    MOV A,#0x8b
CODE:1a5e  2e                       ADD A,R6
CODE:1a5f  f5 82                    MOV DPL,A
CODE:1a61  e4                       CLR A
CODE:1a62  34 05                    ADDC A,#0x5
CODE:1a64  f5 83                    MOV DPH,A
CODE:1a66  e0                       MOVX A,@DPTR
CODE:1a67  fb                       MOV R3,A
CODE:1a68  12 bd c0                 LCALL 0xbdc0
CODE:1a6b  90 07 a9                 MOV DPTR,#0x7a9
CODE:1a6e  e0                       MOVX A,@DPTR
CODE:1a6f  ff                       MOV R7,A
CODE:1a70  90 08 e9                 MOV DPTR,#0x8e9
CODE:1a73  e0                       MOVX A,@DPTR
CODE:1a74  fe                       MOV R6,A
CODE:1a75  75 f0 03                 MOV B,#0x3
CODE:1a78  a4                       MUL AB
CODE:1a79  24 02                    ADD A,#0x2
CODE:1a7b  fd                       MOV R5,A
CODE:1a7c  74 20                    MOV A,#0x20
CODE:1a7e  2e                       ADD A,R6
CODE:1a7f  f5 82                    MOV DPL,A
CODE:1a81  e4                       CLR A
CODE:1a82  34 06                    ADDC A,#0x6
CODE:1a84  f5 83                    MOV DPH,A
CODE:1a86  e0                       MOVX A,@DPTR
CODE:1a87  fb                       MOV R3,A
CODE:1a88  12 bd c0                 LCALL 0xbdc0
CODE:1a8b  90 08 e9                 MOV DPTR,#0x8e9
CODE:1a8e  e0                       MOVX A,@DPTR
CODE:1a8f  04                       INC A
CODE:1a90  f0                       MOVX @DPTR,A
CODE:1a91  80 95                    SJMP 0x1a28
LAB_CODE_1a93:
CODE:1a93  90 07 a9                 MOV DPTR,#0x7a9   ; XREF: CODE:1a30 
CODE:1a96  e0                       MOVX A,@DPTR
CODE:1a97  ff                       MOV R7,A
CODE:1a98  90 05 4b                 MOV DPTR,#0x54b
CODE:1a9b  e0                       MOVX A,@DPTR
CODE:1a9c  fb                       MOV R3,A
CODE:1a9d  7d ff                    MOV R5,#0xff
CODE:1a9f  12 bd c0                 LCALL 0xbdc0
CODE:1aa2  90 07 a9                 MOV DPTR,#0x7a9
CODE:1aa5  e0                       MOVX A,@DPTR
CODE:1aa6  04                       INC A
CODE:1aa7  ff                       MOV R7,A
CODE:1aa8  90 05 e0                 MOV DPTR,#0x5e0
CODE:1aab  e0                       MOVX A,@DPTR
CODE:1aac  fb                       MOV R3,A
CODE:1aad  e4                       CLR A
CODE:1aae  fd                       MOV R5,A
CODE:1aaf  12 bd c0                 LCALL 0xbdc0
CODE:1ab2  90 07 a9                 MOV DPTR,#0x7a9
CODE:1ab5  e0                       MOVX A,@DPTR
CODE:1ab6  04                       INC A
CODE:1ab7  ff                       MOV R7,A
CODE:1ab8  90 06 75                 MOV DPTR,#0x675
CODE:1abb  e0                       MOVX A,@DPTR
CODE:1abc  fb                       MOV R3,A
CODE:1abd  7d 01                    MOV R5,#0x1
CODE:1abf  12 bd c0                 LCALL 0xbdc0
CODE:1ac2  90 08 e9                 MOV DPTR,#0x8e9
CODE:1ac5  74 56                    MOV A,#0x56
CODE:1ac7  f0                       MOVX @DPTR,A
LAB_CODE_1ac8:
CODE:1ac8  90 07 a9                 MOV DPTR,#0x7a9   ; XREF: CODE:1b32 
CODE:1acb  e0                       MOVX A,@DPTR
CODE:1acc  04                       INC A
CODE:1acd  ff                       MOV R7,A
CODE:1ace  90 08 e9                 MOV DPTR,#0x8e9
CODE:1ad1  e0                       MOVX A,@DPTR
CODE:1ad2  fe                       MOV R6,A
CODE:1ad3  75 f0 03                 MOV B,#0x3
CODE:1ad6  a4                       MUL AB
CODE:1ad7  fd                       MOV R5,A
CODE:1ad8  74 f6                    MOV A,#0xf6
CODE:1ada  2e                       ADD A,R6
CODE:1adb  f5 82                    MOV DPL,A
CODE:1add  e4                       CLR A
CODE:1ade  34 04                    ADDC A,#0x4
CODE:1ae0  f5 83                    MOV DPH,A
CODE:1ae2  e0                       MOVX A,@DPTR
CODE:1ae3  fb                       MOV R3,A
CODE:1ae4  12 bd c0                 LCALL 0xbdc0
CODE:1ae7  90 07 a9                 MOV DPTR,#0x7a9
CODE:1aea  e0                       MOVX A,@DPTR
CODE:1aeb  04                       INC A
CODE:1aec  ff                       MOV R7,A
CODE:1aed  90 08 e9                 MOV DPTR,#0x8e9
CODE:1af0  e0                       MOVX A,@DPTR
CODE:1af1  fe                       MOV R6,A
CODE:1af2  75 f0 03                 MOV B,#0x3
CODE:1af5  a4                       MUL AB
CODE:1af6  04                       INC A
CODE:1af7  fd                       MOV R5,A
CODE:1af8  74 8b                    MOV A,#0x8b
CODE:1afa  2e                       ADD A,R6
CODE:1afb  f5 82                    MOV DPL,A
CODE:1afd  e4                       CLR A
CODE:1afe  34 05                    ADDC A,#0x5
CODE:1b00  f5 83                    MOV DPH,A
CODE:1b02  e0                       MOVX A,@DPTR
CODE:1b03  fb                       MOV R3,A
CODE:1b04  12 bd c0                 LCALL 0xbdc0
CODE:1b07  90 07 a9                 MOV DPTR,#0x7a9
CODE:1b0a  e0                       MOVX A,@DPTR
CODE:1b0b  04                       INC A
CODE:1b0c  ff                       MOV R7,A
CODE:1b0d  90 08 e9                 MOV DPTR,#0x8e9
CODE:1b10  e0                       MOVX A,@DPTR
CODE:1b11  fe                       MOV R6,A
CODE:1b12  75 f0 03                 MOV B,#0x3
CODE:1b15  a4                       MUL AB
CODE:1b16  24 02                    ADD A,#0x2
CODE:1b18  fd                       MOV R5,A
CODE:1b19  74 20                    MOV A,#0x20
CODE:1b1b  2e                       ADD A,R6
CODE:1b1c  f5 82                    MOV DPL,A
CODE:1b1e  e4                       CLR A
CODE:1b1f  34 06                    ADDC A,#0x6
CODE:1b21  f5 83                    MOV DPH,A
CODE:1b23  e0                       MOVX A,@DPTR
CODE:1b24  fb                       MOV R3,A
CODE:1b25  12 bd c0                 LCALL 0xbdc0
CODE:1b28  90 08 e9                 MOV DPTR,#0x8e9
CODE:1b2b  e0                       MOVX A,@DPTR
CODE:1b2c  04                       INC A
CODE:1b2d  f0                       MOVX @DPTR,A
CODE:1b2e  e0                       MOVX A,@DPTR
CODE:1b2f  c3                       CLR CY
CODE:1b30  94 8a                    SUBB A,#0x8a
CODE:1b32  40 94                    JC 0x1ac8
CODE:1b34  c2 17                    CLR 0x17
CODE:1b36  78 69                    MOV R0,#0x69
CODE:1b38  a6 11                    MOV @R0,0x11
CODE:1b3a  22                       RET
LAB_CODE_1b3b:
CODE:1b3b  20 17 03                 JB 0x17,0x1b41   ; XREF: CODE:196a CODE:1974 CODE:197a 
CODE:1b3e  02 1f 6d                 LJMP 0x1f6d
LAB_CODE_1b41:
CODE:1b41  20 00 03                 JB 0x00,0x1b47   ; XREF: CODE:1b3b 
CODE:1b44  02 1c e8                 LJMP 0x1ce8
LAB_CODE_1b47:
CODE:1b47  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:1b41 
CODE:1b4a  e0                       MOVX A,@DPTR
CODE:1b4b  b4 05 07                 CJNE A,#0x5,0x1b55
CODE:1b4e  78 2b                    MOV R0,#0x2b
CODE:1b50  e6                       MOV A,@R0
CODE:1b51  64 0a                    XRL A,#0xa
CODE:1b53  60 0e                    JZ 0x1b63
LAB_CODE_1b55:
CODE:1b55  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:1b4b 
CODE:1b58  e0                       MOVX A,@DPTR
CODE:1b59  ff                       MOV R7,A
CODE:1b5a  b4 01 09                 CJNE A,#0x1,0x1b66
CODE:1b5d  78 2b                    MOV R0,#0x2b
CODE:1b5f  e6                       MOV A,@R0
CODE:1b60  b4 11 03                 CJNE A,#0x11,0x1b66
LAB_CODE_1b63:
CODE:1b63  c2 1b                    CLR 0x1b   ; XREF: CODE:1b53 
CODE:1b65  22                       RET
LAB_CODE_1b66:
CODE:1b66  ef                       MOV A,R7   ; XREF: CODE:1b5a CODE:1b60 
CODE:1b67  75 f0 17                 MOV B,#0x17
CODE:1b6a  a4                       MUL AB
CODE:1b6b  78 2b                    MOV R0,#0x2b
CODE:1b6d  26                       ADD A,@R0
CODE:1b6e  90 08 e9                 MOV DPTR,#0x8e9
CODE:1b71  f0                       MOVX @DPTR,A
CODE:1b72  e0                       MOVX A,@DPTR
CODE:1b73  ff                       MOV R7,A
CODE:1b74  24 f6                    ADD A,#0xf6
CODE:1b76  f5 82                    MOV DPL,A
CODE:1b78  e4                       CLR A
CODE:1b79  34 04                    ADDC A,#0x4
CODE:1b7b  f5 83                    MOV DPH,A
CODE:1b7d  e0                       MOVX A,@DPTR
CODE:1b7e  fe                       MOV R6,A
CODE:1b7f  70 20                    JNZ 0x1ba1
CODE:1b81  74 8b                    MOV A,#0x8b
CODE:1b83  2f                       ADD A,R7
CODE:1b84  f5 82                    MOV DPL,A
CODE:1b86  e4                       CLR A
CODE:1b87  34 05                    ADDC A,#0x5
CODE:1b89  f5 83                    MOV DPH,A
CODE:1b8b  e0                       MOVX A,@DPTR
CODE:1b8c  70 13                    JNZ 0x1ba1
CODE:1b8e  90 08 e9                 MOV DPTR,#0x8e9
CODE:1b91  e0                       MOVX A,@DPTR
CODE:1b92  24 20                    ADD A,#0x20
CODE:1b94  f5 82                    MOV DPL,A
CODE:1b96  e4                       CLR A
CODE:1b97  34 06                    ADDC A,#0x6
CODE:1b99  f5 83                    MOV DPH,A
CODE:1b9b  e0                       MOVX A,@DPTR
CODE:1b9c  70 03                    JNZ 0x1ba1
CODE:1b9e  02 1d 4c                 LJMP 0x1d4c
LAB_CODE_1ba1:
CODE:1ba1  ee                       MOV A,R6   ; XREF: CODE:1b7f CODE:1b8c CODE:1b9c 
CODE:1ba2  f4                       CPL A
CODE:1ba3  70 23                    JNZ 0x1bc8
CODE:1ba5  90 08 e9                 MOV DPTR,#0x8e9
CODE:1ba8  e0                       MOVX A,@DPTR
CODE:1ba9  ff                       MOV R7,A
CODE:1baa  24 8b                    ADD A,#0x8b
CODE:1bac  f5 82                    MOV DPL,A
CODE:1bae  e4                       CLR A
CODE:1baf  34 05                    ADDC A,#0x5
CODE:1bb1  f5 83                    MOV DPH,A
CODE:1bb3  e0                       MOVX A,@DPTR
CODE:1bb4  b4 ff 11                 CJNE A,#0xff,0x1bc8
CODE:1bb7  74 20                    MOV A,#0x20
CODE:1bb9  2f                       ADD A,R7
CODE:1bba  f5 82                    MOV DPL,A
CODE:1bbc  e4                       CLR A
CODE:1bbd  34 06                    ADDC A,#0x6
CODE:1bbf  f5 83                    MOV DPH,A
CODE:1bc1  e0                       MOVX A,@DPTR
CODE:1bc2  b4 ff 03                 CJNE A,#0xff,0x1bc8
CODE:1bc5  02 1d 81                 LJMP 0x1d81
LAB_CODE_1bc8:
CODE:1bc8  90 08 e9                 MOV DPTR,#0x8e9   ; XREF: CODE:1ba3 CODE:1bb4 CODE:1bc2 
CODE:1bcb  e0                       MOVX A,@DPTR
CODE:1bcc  ff                       MOV R7,A
CODE:1bcd  24 f6                    ADD A,#0xf6
CODE:1bcf  f5 82                    MOV DPL,A
CODE:1bd1  e4                       CLR A
CODE:1bd2  34 04                    ADDC A,#0x4
CODE:1bd4  f5 83                    MOV DPH,A
CODE:1bd6  e0                       MOVX A,@DPTR
CODE:1bd7  70 21                    JNZ 0x1bfa
CODE:1bd9  74 8b                    MOV A,#0x8b
CODE:1bdb  2f                       ADD A,R7
CODE:1bdc  f5 82                    MOV DPL,A
CODE:1bde  e4                       CLR A
CODE:1bdf  34 05                    ADDC A,#0x5
CODE:1be1  f5 83                    MOV DPH,A
CODE:1be3  e0                       MOVX A,@DPTR
CODE:1be4  70 14                    JNZ 0x1bfa
CODE:1be6  90 08 e9                 MOV DPTR,#0x8e9
CODE:1be9  e0                       MOVX A,@DPTR
CODE:1bea  24 20                    ADD A,#0x20
CODE:1bec  f5 82                    MOV DPL,A
CODE:1bee  e4                       CLR A
CODE:1bef  34 06                    ADDC A,#0x6
CODE:1bf1  f5 83                    MOV DPH,A
CODE:1bf3  e0                       MOVX A,@DPTR
CODE:1bf4  b4 ff 03                 CJNE A,#0xff,0x1bfa
CODE:1bf7  02 1d c1                 LJMP 0x1dc1
LAB_CODE_1bfa:
CODE:1bfa  90 08 e9                 MOV DPTR,#0x8e9   ; XREF: CODE:1bd7 CODE:1be4 CODE:1bf4 
CODE:1bfd  e0                       MOVX A,@DPTR
CODE:1bfe  ff                       MOV R7,A
CODE:1bff  24 f6                    ADD A,#0xf6
CODE:1c01  f5 82                    MOV DPL,A
CODE:1c03  e4                       CLR A
CODE:1c04  34 04                    ADDC A,#0x4
CODE:1c06  f5 83                    MOV DPH,A
CODE:1c08  e0                       MOVX A,@DPTR
CODE:1c09  fe                       MOV R6,A
CODE:1c0a  70 21                    JNZ 0x1c2d
CODE:1c0c  74 8b                    MOV A,#0x8b
CODE:1c0e  2f                       ADD A,R7
CODE:1c0f  f5 82                    MOV DPL,A
CODE:1c11  e4                       CLR A
CODE:1c12  34 05                    ADDC A,#0x5
CODE:1c14  f5 83                    MOV DPH,A
CODE:1c16  e0                       MOVX A,@DPTR
CODE:1c17  b4 ff 13                 CJNE A,#0xff,0x1c2d
CODE:1c1a  90 08 e9                 MOV DPTR,#0x8e9
CODE:1c1d  e0                       MOVX A,@DPTR
CODE:1c1e  24 20                    ADD A,#0x20
CODE:1c20  f5 82                    MOV DPL,A
CODE:1c22  e4                       CLR A
CODE:1c23  34 06                    ADDC A,#0x6
CODE:1c25  f5 83                    MOV DPH,A
CODE:1c27  e0                       MOVX A,@DPTR
CODE:1c28  70 03                    JNZ 0x1c2d
CODE:1c2a  02 1e 02                 LJMP 0x1e02
LAB_CODE_1c2d:
CODE:1c2d  ee                       MOV A,R6   ; XREF: CODE:1c0a CODE:1c17 CODE:1c28 
CODE:1c2e  f4                       CPL A
CODE:1c2f  70 21                    JNZ 0x1c52
CODE:1c31  90 08 e9                 MOV DPTR,#0x8e9
CODE:1c34  e0                       MOVX A,@DPTR
CODE:1c35  ff                       MOV R7,A
CODE:1c36  24 8b                    ADD A,#0x8b
CODE:1c38  f5 82                    MOV DPL,A
CODE:1c3a  e4                       CLR A
CODE:1c3b  34 05                    ADDC A,#0x5
CODE:1c3d  f5 83                    MOV DPH,A
CODE:1c3f  e0                       MOVX A,@DPTR
CODE:1c40  70 10                    JNZ 0x1c52
CODE:1c42  74 20                    MOV A,#0x20
CODE:1c44  2f                       ADD A,R7
CODE:1c45  f5 82                    MOV DPL,A
CODE:1c47  e4                       CLR A
CODE:1c48  34 06                    ADDC A,#0x6
CODE:1c4a  f5 83                    MOV DPH,A
CODE:1c4c  e0                       MOVX A,@DPTR
CODE:1c4d  70 03                    JNZ 0x1c52
CODE:1c4f  02 1e 42                 LJMP 0x1e42
LAB_CODE_1c52:
CODE:1c52  90 08 e9                 MOV DPTR,#0x8e9   ; XREF: CODE:1c2f CODE:1c40 CODE:1c4d 
CODE:1c55  e0                       MOVX A,@DPTR
CODE:1c56  ff                       MOV R7,A
CODE:1c57  24 f6                    ADD A,#0xf6
CODE:1c59  f5 82                    MOV DPL,A
CODE:1c5b  e4                       CLR A
CODE:1c5c  34 04                    ADDC A,#0x4
CODE:1c5e  f5 83                    MOV DPH,A
CODE:1c60  e0                       MOVX A,@DPTR
CODE:1c61  70 22                    JNZ 0x1c85
CODE:1c63  74 8b                    MOV A,#0x8b
CODE:1c65  2f                       ADD A,R7
CODE:1c66  f5 82                    MOV DPL,A
CODE:1c68  e4                       CLR A
CODE:1c69  34 05                    ADDC A,#0x5
CODE:1c6b  f5 83                    MOV DPH,A
CODE:1c6d  e0                       MOVX A,@DPTR
CODE:1c6e  b4 ff 14                 CJNE A,#0xff,0x1c85
CODE:1c71  90 08 e9                 MOV DPTR,#0x8e9
CODE:1c74  e0                       MOVX A,@DPTR
CODE:1c75  24 20                    ADD A,#0x20
CODE:1c77  f5 82                    MOV DPL,A
CODE:1c79  e4                       CLR A
CODE:1c7a  34 06                    ADDC A,#0x6
CODE:1c7c  f5 83                    MOV DPH,A
CODE:1c7e  e0                       MOVX A,@DPTR
CODE:1c7f  b4 ff 03                 CJNE A,#0xff,0x1c85
CODE:1c82  02 1e 83                 LJMP 0x1e83
LAB_CODE_1c85:
CODE:1c85  90 08 e9                 MOV DPTR,#0x8e9   ; XREF: CODE:1c61 CODE:1c6e CODE:1c7f 
CODE:1c88  e0                       MOVX A,@DPTR
CODE:1c89  ff                       MOV R7,A
CODE:1c8a  24 f6                    ADD A,#0xf6
CODE:1c8c  f5 82                    MOV DPL,A
CODE:1c8e  e4                       CLR A
CODE:1c8f  34 04                    ADDC A,#0x4
CODE:1c91  f5 83                    MOV DPH,A
CODE:1c93  e0                       MOVX A,@DPTR
CODE:1c94  fe                       MOV R6,A
CODE:1c95  f4                       CPL A
CODE:1c96  70 21                    JNZ 0x1cb9
CODE:1c98  74 8b                    MOV A,#0x8b
CODE:1c9a  2f                       ADD A,R7
CODE:1c9b  f5 82                    MOV DPL,A
CODE:1c9d  e4                       CLR A
CODE:1c9e  34 05                    ADDC A,#0x5
CODE:1ca0  f5 83                    MOV DPH,A
CODE:1ca2  e0                       MOVX A,@DPTR
CODE:1ca3  70 14                    JNZ 0x1cb9
CODE:1ca5  90 08 e9                 MOV DPTR,#0x8e9
CODE:1ca8  e0                       MOVX A,@DPTR
CODE:1ca9  24 20                    ADD A,#0x20
CODE:1cab  f5 82                    MOV DPL,A
CODE:1cad  e4                       CLR A
CODE:1cae  34 06                    ADDC A,#0x6
CODE:1cb0  f5 83                    MOV DPH,A
CODE:1cb2  e0                       MOVX A,@DPTR
CODE:1cb3  b4 ff 03                 CJNE A,#0xff,0x1cb9
CODE:1cb6  02 1e d2                 LJMP 0x1ed2
LAB_CODE_1cb9:
CODE:1cb9  ee                       MOV A,R6   ; XREF: CODE:1c96 CODE:1ca3 CODE:1cb3 
CODE:1cba  f4                       CPL A
CODE:1cbb  60 03                    JZ 0x1cc0
CODE:1cbd  02 1f 3f                 LJMP 0x1f3f
LAB_CODE_1cc0:
CODE:1cc0  90 08 e9                 MOV DPTR,#0x8e9   ; XREF: CODE:1cbb 
CODE:1cc3  e0                       MOVX A,@DPTR
CODE:1cc4  ff                       MOV R7,A
CODE:1cc5  24 8b                    ADD A,#0x8b
CODE:1cc7  f5 82                    MOV DPL,A
CODE:1cc9  e4                       CLR A
CODE:1cca  34 05                    ADDC A,#0x5
CODE:1ccc  f5 83                    MOV DPH,A
CODE:1cce  e0                       MOVX A,@DPTR
CODE:1ccf  b4 ff 13                 CJNE A,#0xff,0x1ce5
CODE:1cd2  74 20                    MOV A,#0x20
CODE:1cd4  2f                       ADD A,R7
CODE:1cd5  f5 82                    MOV DPL,A
CODE:1cd7  e4                       CLR A
CODE:1cd8  34 06                    ADDC A,#0x6
CODE:1cda  f5 83                    MOV DPH,A
CODE:1cdc  e0                       MOVX A,@DPTR
CODE:1cdd  60 03                    JZ 0x1ce2
CODE:1cdf  02 1f 3f                 LJMP 0x1f3f
LAB_CODE_1ce2:
CODE:1ce2  02 1f 21                 LJMP 0x1f21   ; XREF: CODE:1cdd 
LAB_CODE_1ce5:
CODE:1ce5  02 1f 3f                 LJMP 0x1f3f   ; XREF: CODE:1ccf 
LAB_CODE_1ce8:
CODE:1ce8  30 1b 03                 JNB 0x1b,0x1cee   ; XREF: CODE:1b44 
CODE:1ceb  02 2d b6                 LJMP 0x2db6
LAB_CODE_1cee:
CODE:1cee  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:1ce8 
CODE:1cf1  e0                       MOVX A,@DPTR
CODE:1cf2  b4 05 07                 CJNE A,#0x5,0x1cfc
CODE:1cf5  78 2b                    MOV R0,#0x2b
CODE:1cf7  e6                       MOV A,@R0
CODE:1cf8  64 0a                    XRL A,#0xa
CODE:1cfa  60 15                    JZ 0x1d11
LAB_CODE_1cfc:
CODE:1cfc  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:1cf2 
CODE:1cff  e0                       MOVX A,@DPTR
CODE:1d00  64 01                    XRL A,#0x1
CODE:1d02  60 03                    JZ 0x1d07
CODE:1d04  02 2d b6                 LJMP 0x2db6
LAB_CODE_1d07:
CODE:1d07  78 2b                    MOV R0,#0x2b   ; XREF: CODE:1d02 
CODE:1d09  e6                       MOV A,@R0
CODE:1d0a  64 11                    XRL A,#0x11
CODE:1d0c  60 03                    JZ 0x1d11
CODE:1d0e  02 2d b6                 LJMP 0x2db6
LAB_CODE_1d11:
CODE:1d11  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:1cfa CODE:1d0c 
CODE:1d14  e0                       MOVX A,@DPTR
CODE:1d15  75 f0 17                 MOV B,#0x17
CODE:1d18  a4                       MUL AB
CODE:1d19  78 2b                    MOV R0,#0x2b
CODE:1d1b  26                       ADD A,@R0
CODE:1d1c  90 08 e9                 MOV DPTR,#0x8e9
CODE:1d1f  f0                       MOVX @DPTR,A
CODE:1d20  e0                       MOVX A,@DPTR
CODE:1d21  ff                       MOV R7,A
CODE:1d22  24 f6                    ADD A,#0xf6
CODE:1d24  f5 82                    MOV DPL,A
CODE:1d26  e4                       CLR A
CODE:1d27  34 04                    ADDC A,#0x4
CODE:1d29  f5 83                    MOV DPH,A
CODE:1d2b  e0                       MOVX A,@DPTR
CODE:1d2c  fe                       MOV R6,A
CODE:1d2d  70 2e                    JNZ 0x1d5d
CODE:1d2f  74 8b                    MOV A,#0x8b
CODE:1d31  2f                       ADD A,R7
CODE:1d32  f5 82                    MOV DPL,A
CODE:1d34  e4                       CLR A
CODE:1d35  34 05                    ADDC A,#0x5
CODE:1d37  f5 83                    MOV DPH,A
CODE:1d39  e0                       MOVX A,@DPTR
CODE:1d3a  70 21                    JNZ 0x1d5d
CODE:1d3c  90 08 e9                 MOV DPTR,#0x8e9
CODE:1d3f  e0                       MOVX A,@DPTR
CODE:1d40  24 20                    ADD A,#0x20
CODE:1d42  f5 82                    MOV DPL,A
CODE:1d44  e4                       CLR A
CODE:1d45  34 06                    ADDC A,#0x6
CODE:1d47  f5 83                    MOV DPH,A
CODE:1d49  e0                       MOVX A,@DPTR
CODE:1d4a  70 11                    JNZ 0x1d5d
LAB_CODE_1d4c:
CODE:1d4c  90 08 e9                 MOV DPTR,#0x8e9   ; XREF: CODE:1b9e 
CODE:1d4f  e0                       MOVX A,@DPTR
CODE:1d50  24 f6                    ADD A,#0xf6
CODE:1d52  f5 82                    MOV DPL,A
CODE:1d54  e4                       CLR A
CODE:1d55  34 04                    ADDC A,#0x4
CODE:1d57  f5 83                    MOV DPH,A
CODE:1d59  e4                       CLR A
CODE:1d5a  02 1e 92                 LJMP 0x1e92
LAB_CODE_1d5d:
CODE:1d5d  ee                       MOV A,R6   ; XREF: CODE:1d2d CODE:1d3a CODE:1d4a 
CODE:1d5e  f4                       CPL A
CODE:1d5f  70 31                    JNZ 0x1d92
CODE:1d61  90 08 e9                 MOV DPTR,#0x8e9
CODE:1d64  e0                       MOVX A,@DPTR
CODE:1d65  ff                       MOV R7,A
CODE:1d66  24 8b                    ADD A,#0x8b
CODE:1d68  f5 82                    MOV DPL,A
CODE:1d6a  e4                       CLR A
CODE:1d6b  34 05                    ADDC A,#0x5
CODE:1d6d  f5 83                    MOV DPH,A
CODE:1d6f  e0                       MOVX A,@DPTR
CODE:1d70  b4 ff 1f                 CJNE A,#0xff,0x1d92
CODE:1d73  74 20                    MOV A,#0x20
CODE:1d75  2f                       ADD A,R7
CODE:1d76  f5 82                    MOV DPL,A
CODE:1d78  e4                       CLR A
CODE:1d79  34 06                    ADDC A,#0x6
CODE:1d7b  f5 83                    MOV DPH,A
CODE:1d7d  e0                       MOVX A,@DPTR
CODE:1d7e  b4 ff 11                 CJNE A,#0xff,0x1d92
LAB_CODE_1d81:
CODE:1d81  90 08 e9                 MOV DPTR,#0x8e9   ; XREF: CODE:1bc5 
CODE:1d84  e0                       MOVX A,@DPTR
CODE:1d85  24 f6                    ADD A,#0xf6
CODE:1d87  f5 82                    MOV DPL,A
CODE:1d89  e4                       CLR A
CODE:1d8a  34 04                    ADDC A,#0x4
CODE:1d8c  f5 83                    MOV DPH,A
CODE:1d8e  e4                       CLR A
CODE:1d8f  02 1e 11                 LJMP 0x1e11
LAB_CODE_1d92:
CODE:1d92  90 08 e9                 MOV DPTR,#0x8e9   ; XREF: CODE:1d5f CODE:1d70 CODE:1d7e 
CODE:1d95  e0                       MOVX A,@DPTR
CODE:1d96  ff                       MOV R7,A
CODE:1d97  24 f6                    ADD A,#0xf6
CODE:1d99  f5 82                    MOV DPL,A
CODE:1d9b  e4                       CLR A
CODE:1d9c  34 04                    ADDC A,#0x4
CODE:1d9e  f5 83                    MOV DPH,A
CODE:1da0  e0                       MOVX A,@DPTR
CODE:1da1  70 2f                    JNZ 0x1dd2
CODE:1da3  74 8b                    MOV A,#0x8b
CODE:1da5  2f                       ADD A,R7
CODE:1da6  f5 82                    MOV DPL,A
CODE:1da8  e4                       CLR A
CODE:1da9  34 05                    ADDC A,#0x5
CODE:1dab  f5 83                    MOV DPH,A
CODE:1dad  e0                       MOVX A,@DPTR
CODE:1dae  70 22                    JNZ 0x1dd2
CODE:1db0  90 08 e9                 MOV DPTR,#0x8e9
CODE:1db3  e0                       MOVX A,@DPTR
CODE:1db4  24 20                    ADD A,#0x20
CODE:1db6  f5 82                    MOV DPL,A
CODE:1db8  e4                       CLR A
CODE:1db9  34 06                    ADDC A,#0x6
CODE:1dbb  f5 83                    MOV DPH,A
CODE:1dbd  e0                       MOVX A,@DPTR
CODE:1dbe  b4 ff 11                 CJNE A,#0xff,0x1dd2
LAB_CODE_1dc1:
CODE:1dc1  90 08 e9                 MOV DPTR,#0x8e9   ; XREF: CODE:1bf7 
CODE:1dc4  e0                       MOVX A,@DPTR
CODE:1dc5  24 f6                    ADD A,#0xf6
CODE:1dc7  f5 82                    MOV DPL,A
CODE:1dc9  e4                       CLR A
CODE:1dca  34 04                    ADDC A,#0x4
CODE:1dcc  f5 83                    MOV DPH,A
CODE:1dce  e4                       CLR A
CODE:1dcf  02 1e e1                 LJMP 0x1ee1
LAB_CODE_1dd2:
CODE:1dd2  90 08 e9                 MOV DPTR,#0x8e9   ; XREF: CODE:1da1 CODE:1dae CODE:1dbe 
CODE:1dd5  e0                       MOVX A,@DPTR
CODE:1dd6  ff                       MOV R7,A
CODE:1dd7  24 f6                    ADD A,#0xf6
CODE:1dd9  f5 82                    MOV DPL,A
CODE:1ddb  e4                       CLR A
CODE:1ddc  34 04                    ADDC A,#0x4
CODE:1dde  f5 83                    MOV DPH,A
CODE:1de0  e0                       MOVX A,@DPTR
CODE:1de1  fe                       MOV R6,A
CODE:1de2  70 3c                    JNZ 0x1e20
CODE:1de4  74 8b                    MOV A,#0x8b
CODE:1de6  2f                       ADD A,R7
CODE:1de7  f5 82                    MOV DPL,A
CODE:1de9  e4                       CLR A
CODE:1dea  34 05                    ADDC A,#0x5
CODE:1dec  f5 83                    MOV DPH,A
CODE:1dee  e0                       MOVX A,@DPTR
CODE:1def  b4 ff 2e                 CJNE A,#0xff,0x1e20
CODE:1df2  90 08 e9                 MOV DPTR,#0x8e9
CODE:1df5  e0                       MOVX A,@DPTR
CODE:1df6  24 20                    ADD A,#0x20
CODE:1df8  f5 82                    MOV DPL,A
CODE:1dfa  e4                       CLR A
CODE:1dfb  34 06                    ADDC A,#0x6
CODE:1dfd  f5 83                    MOV DPH,A
CODE:1dff  e0                       MOVX A,@DPTR
CODE:1e00  70 1e                    JNZ 0x1e20
LAB_CODE_1e02:
CODE:1e02  90 08 e9                 MOV DPTR,#0x8e9   ; XREF: CODE:1c2a 
CODE:1e05  e0                       MOVX A,@DPTR
CODE:1e06  24 f6                    ADD A,#0xf6
CODE:1e08  f5 82                    MOV DPL,A
CODE:1e0a  e4                       CLR A
CODE:1e0b  34 04                    ADDC A,#0x4
CODE:1e0d  f5 83                    MOV DPH,A
CODE:1e0f  74 ff                    MOV A,#0xff
LAB_CODE_1e11:
CODE:1e11  f0                       MOVX @DPTR,A   ; XREF: CODE:1d8f 
CODE:1e12  74 8b                    MOV A,#0x8b
CODE:1e14  2f                       ADD A,R7
CODE:1e15  f5 82                    MOV DPL,A
CODE:1e17  e4                       CLR A
CODE:1e18  34 05                    ADDC A,#0x5
CODE:1e1a  f5 83                    MOV DPH,A
CODE:1e1c  e4                       CLR A
CODE:1e1d  02 1e ee                 LJMP 0x1eee
LAB_CODE_1e20:
CODE:1e20  ee                       MOV A,R6   ; XREF: CODE:1de2 CODE:1def CODE:1e00 
CODE:1e21  f4                       CPL A
CODE:1e22  70 2f                    JNZ 0x1e53
CODE:1e24  90 08 e9                 MOV DPTR,#0x8e9
CODE:1e27  e0                       MOVX A,@DPTR
CODE:1e28  ff                       MOV R7,A
CODE:1e29  24 8b                    ADD A,#0x8b
CODE:1e2b  f5 82                    MOV DPL,A
CODE:1e2d  e4                       CLR A
CODE:1e2e  34 05                    ADDC A,#0x5
CODE:1e30  f5 83                    MOV DPH,A
CODE:1e32  e0                       MOVX A,@DPTR
CODE:1e33  70 1e                    JNZ 0x1e53
CODE:1e35  74 20                    MOV A,#0x20
CODE:1e37  2f                       ADD A,R7
CODE:1e38  f5 82                    MOV DPL,A
CODE:1e3a  e4                       CLR A
CODE:1e3b  34 06                    ADDC A,#0x6
CODE:1e3d  f5 83                    MOV DPH,A
CODE:1e3f  e0                       MOVX A,@DPTR
CODE:1e40  70 11                    JNZ 0x1e53
LAB_CODE_1e42:
CODE:1e42  90 08 e9                 MOV DPTR,#0x8e9   ; XREF: CODE:1c4f 
CODE:1e45  e0                       MOVX A,@DPTR
CODE:1e46  24 f6                    ADD A,#0xf6
CODE:1e48  f5 82                    MOV DPL,A
CODE:1e4a  e4                       CLR A
CODE:1e4b  34 04                    ADDC A,#0x4
CODE:1e4d  f5 83                    MOV DPH,A
CODE:1e4f  e4                       CLR A
CODE:1e50  02 1f 30                 LJMP 0x1f30
LAB_CODE_1e53:
CODE:1e53  90 08 e9                 MOV DPTR,#0x8e9   ; XREF: CODE:1e22 CODE:1e33 CODE:1e40 
CODE:1e56  e0                       MOVX A,@DPTR
CODE:1e57  ff                       MOV R7,A
CODE:1e58  24 f6                    ADD A,#0xf6
CODE:1e5a  f5 82                    MOV DPL,A
CODE:1e5c  e4                       CLR A
CODE:1e5d  34 04                    ADDC A,#0x4
CODE:1e5f  f5 83                    MOV DPH,A
CODE:1e61  e0                       MOVX A,@DPTR
CODE:1e62  70 3d                    JNZ 0x1ea1
CODE:1e64  74 8b                    MOV A,#0x8b
CODE:1e66  2f                       ADD A,R7
CODE:1e67  f5 82                    MOV DPL,A
CODE:1e69  e4                       CLR A
CODE:1e6a  34 05                    ADDC A,#0x5
CODE:1e6c  f5 83                    MOV DPH,A
CODE:1e6e  e0                       MOVX A,@DPTR
CODE:1e6f  b4 ff 2f                 CJNE A,#0xff,0x1ea1
CODE:1e72  90 08 e9                 MOV DPTR,#0x8e9
CODE:1e75  e0                       MOVX A,@DPTR
CODE:1e76  24 20                    ADD A,#0x20
CODE:1e78  f5 82                    MOV DPL,A
CODE:1e7a  e4                       CLR A
CODE:1e7b  34 06                    ADDC A,#0x6
CODE:1e7d  f5 83                    MOV DPH,A
CODE:1e7f  e0                       MOVX A,@DPTR
CODE:1e80  b4 ff 1e                 CJNE A,#0xff,0x1ea1
LAB_CODE_1e83:
CODE:1e83  90 08 e9                 MOV DPTR,#0x8e9   ; XREF: CODE:1c82 
CODE:1e86  e0                       MOVX A,@DPTR
CODE:1e87  24 f6                    ADD A,#0xf6
CODE:1e89  f5 82                    MOV DPL,A
CODE:1e8b  e4                       CLR A
CODE:1e8c  34 04                    ADDC A,#0x4
CODE:1e8e  f5 83                    MOV DPH,A
CODE:1e90  74 ff                    MOV A,#0xff
LAB_CODE_1e92:
CODE:1e92  f0                       MOVX @DPTR,A   ; XREF: CODE:1d5a 
CODE:1e93  74 8b                    MOV A,#0x8b
CODE:1e95  2f                       ADD A,R7
CODE:1e96  f5 82                    MOV DPL,A
CODE:1e98  e4                       CLR A
CODE:1e99  34 05                    ADDC A,#0x5
CODE:1e9b  f5 83                    MOV DPH,A
CODE:1e9d  e4                       CLR A
CODE:1e9e  02 1f 5c                 LJMP 0x1f5c
LAB_CODE_1ea1:
CODE:1ea1  90 08 e9                 MOV DPTR,#0x8e9   ; XREF: CODE:1e62 CODE:1e6f CODE:1e80 
CODE:1ea4  e0                       MOVX A,@DPTR
CODE:1ea5  ff                       MOV R7,A
CODE:1ea6  24 f6                    ADD A,#0xf6
CODE:1ea8  f5 82                    MOV DPL,A
CODE:1eaa  e4                       CLR A
CODE:1eab  34 04                    ADDC A,#0x4
CODE:1ead  f5 83                    MOV DPH,A
CODE:1eaf  e0                       MOVX A,@DPTR
CODE:1eb0  fe                       MOV R6,A
CODE:1eb1  f4                       CPL A
CODE:1eb2  70 4a                    JNZ 0x1efe
CODE:1eb4  74 8b                    MOV A,#0x8b
CODE:1eb6  2f                       ADD A,R7
CODE:1eb7  f5 82                    MOV DPL,A
CODE:1eb9  e4                       CLR A
CODE:1eba  34 05                    ADDC A,#0x5
CODE:1ebc  f5 83                    MOV DPH,A
CODE:1ebe  e0                       MOVX A,@DPTR
CODE:1ebf  70 3d                    JNZ 0x1efe
CODE:1ec1  90 08 e9                 MOV DPTR,#0x8e9
CODE:1ec4  e0                       MOVX A,@DPTR
CODE:1ec5  24 20                    ADD A,#0x20
CODE:1ec7  f5 82                    MOV DPL,A
CODE:1ec9  e4                       CLR A
CODE:1eca  34 06                    ADDC A,#0x6
CODE:1ecc  f5 83                    MOV DPH,A
CODE:1ece  e0                       MOVX A,@DPTR
CODE:1ecf  b4 ff 2c                 CJNE A,#0xff,0x1efe
LAB_CODE_1ed2:
CODE:1ed2  90 08 e9                 MOV DPTR,#0x8e9   ; XREF: CODE:1cb6 
CODE:1ed5  e0                       MOVX A,@DPTR
CODE:1ed6  24 f6                    ADD A,#0xf6
CODE:1ed8  f5 82                    MOV DPL,A
CODE:1eda  e4                       CLR A
CODE:1edb  34 04                    ADDC A,#0x4
CODE:1edd  f5 83                    MOV DPH,A
CODE:1edf  74 ff                    MOV A,#0xff
LAB_CODE_1ee1:
CODE:1ee1  f0                       MOVX @DPTR,A   ; XREF: CODE:1dcf 
CODE:1ee2  74 8b                    MOV A,#0x8b
CODE:1ee4  2f                       ADD A,R7
CODE:1ee5  f5 82                    MOV DPL,A
CODE:1ee7  e4                       CLR A
CODE:1ee8  34 05                    ADDC A,#0x5
CODE:1eea  f5 83                    MOV DPH,A
CODE:1eec  74 ff                    MOV A,#0xff
LAB_CODE_1eee:
CODE:1eee  f0                       MOVX @DPTR,A   ; XREF: CODE:1e1d 
CODE:1eef  74 20                    MOV A,#0x20
CODE:1ef1  2f                       ADD A,R7
CODE:1ef2  f5 82                    MOV DPL,A
CODE:1ef4  e4                       CLR A
CODE:1ef5  34 06                    ADDC A,#0x6
CODE:1ef7  f5 83                    MOV DPH,A
CODE:1ef9  e4                       CLR A
CODE:1efa  f0                       MOVX @DPTR,A
CODE:1efb  02 2d b6                 LJMP 0x2db6
LAB_CODE_1efe:
CODE:1efe  ee                       MOV A,R6   ; XREF: CODE:1eb2 CODE:1ebf CODE:1ecf 
CODE:1eff  f4                       CPL A
CODE:1f00  70 3d                    JNZ 0x1f3f
CODE:1f02  90 08 e9                 MOV DPTR,#0x8e9
CODE:1f05  e0                       MOVX A,@DPTR
CODE:1f06  ff                       MOV R7,A
CODE:1f07  24 8b                    ADD A,#0x8b
CODE:1f09  f5 82                    MOV DPL,A
CODE:1f0b  e4                       CLR A
CODE:1f0c  34 05                    ADDC A,#0x5
CODE:1f0e  f5 83                    MOV DPH,A
CODE:1f10  e0                       MOVX A,@DPTR
CODE:1f11  b4 ff 2b                 CJNE A,#0xff,0x1f3f
CODE:1f14  74 20                    MOV A,#0x20
CODE:1f16  2f                       ADD A,R7
CODE:1f17  f5 82                    MOV DPL,A
CODE:1f19  e4                       CLR A
CODE:1f1a  34 06                    ADDC A,#0x6
CODE:1f1c  f5 83                    MOV DPH,A
CODE:1f1e  e0                       MOVX A,@DPTR
CODE:1f1f  70 1e                    JNZ 0x1f3f
LAB_CODE_1f21:
CODE:1f21  90 08 e9                 MOV DPTR,#0x8e9   ; XREF: CODE:1ce2 
CODE:1f24  e0                       MOVX A,@DPTR
CODE:1f25  24 f6                    ADD A,#0xf6
CODE:1f27  f5 82                    MOV DPL,A
CODE:1f29  e4                       CLR A
CODE:1f2a  34 04                    ADDC A,#0x4
CODE:1f2c  f5 83                    MOV DPH,A
CODE:1f2e  74 ff                    MOV A,#0xff
LAB_CODE_1f30:
CODE:1f30  f0                       MOVX @DPTR,A   ; XREF: CODE:1e50 
CODE:1f31  74 8b                    MOV A,#0x8b
CODE:1f33  2f                       ADD A,R7
CODE:1f34  f5 82                    MOV DPL,A
CODE:1f36  e4                       CLR A
CODE:1f37  34 05                    ADDC A,#0x5
CODE:1f39  f5 83                    MOV DPH,A
CODE:1f3b  74 ff                    MOV A,#0xff
CODE:1f3d  80 1d                    SJMP 0x1f5c
LAB_CODE_1f3f:
CODE:1f3f  90 08 e9                 MOV DPTR,#0x8e9   ; XREF: CODE:1cbd CODE:1cdf CODE:1ce5 CODE:1f00 CODE:1f11 CODE:1f1f 
CODE:1f42  e0                       MOVX A,@DPTR
CODE:1f43  ff                       MOV R7,A
CODE:1f44  24 f6                    ADD A,#0xf6
CODE:1f46  f5 82                    MOV DPL,A
CODE:1f48  e4                       CLR A
CODE:1f49  34 04                    ADDC A,#0x4
CODE:1f4b  f5 83                    MOV DPH,A
CODE:1f4d  74 ff                    MOV A,#0xff
CODE:1f4f  f0                       MOVX @DPTR,A
CODE:1f50  74 8b                    MOV A,#0x8b
CODE:1f52  2f                       ADD A,R7
CODE:1f53  f5 82                    MOV DPL,A
CODE:1f55  e4                       CLR A
CODE:1f56  34 05                    ADDC A,#0x5
CODE:1f58  f5 83                    MOV DPH,A
CODE:1f5a  74 ff                    MOV A,#0xff
LAB_CODE_1f5c:
CODE:1f5c  f0                       MOVX @DPTR,A   ; XREF: CODE:1e9e CODE:1f3d 
CODE:1f5d  74 20                    MOV A,#0x20
CODE:1f5f  2f                       ADD A,R7
CODE:1f60  f5 82                    MOV DPL,A
CODE:1f62  e4                       CLR A
CODE:1f63  34 06                    ADDC A,#0x6
CODE:1f65  f5 83                    MOV DPH,A
CODE:1f67  74 ff                    MOV A,#0xff
CODE:1f69  f0                       MOVX @DPTR,A
CODE:1f6a  02 2d b6                 LJMP 0x2db6
LAB_CODE_1f6d:
CODE:1f6d  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:1b3e 
CODE:1f70  e0                       MOVX A,@DPTR
CODE:1f71  ff                       MOV R7,A
CODE:1f72  70 26                    JNZ 0x1f9a
CODE:1f74  78 2b                    MOV R0,#0x2b
CODE:1f76  e6                       MOV A,@R0
CODE:1f77  fd                       MOV R5,A
CODE:1f78  64 0f                    XRL A,#0xf
CODE:1f7a  70 1e                    JNZ 0x1f9a
CODE:1f7c  30 10 1b                 JNB 0x10,0x1f9a
CODE:1f7f  30 00 02                 JNB 0x00,0x1f84
CODE:1f82  b2 1a                    CPL 0x1a
LAB_CODE_1f84:
CODE:1f84  12 94 3f                 LCALL 0x943f   ; XREF: CODE:1f7f 
CODE:1f87  78 69                    MOV R0,#0x69
CODE:1f89  e6                       MOV A,@R0
CODE:1f8a  64 08                    XRL A,#0x8
CODE:1f8c  60 03                    JZ 0x1f91
CODE:1f8e  02 2d bc                 LJMP 0x2dbc
LAB_CODE_1f91:
CODE:1f91  20 00 03                 JB 0x00,0x1f97   ; XREF: CODE:1f8c 
CODE:1f94  02 2d bc                 LJMP 0x2dbc
LAB_CODE_1f97:
CODE:1f97  02 26 2e                 LJMP 0x262e   ; XREF: CODE:1f91 
LAB_CODE_1f9a:
CODE:1f9a  30 1a 03                 JNB 0x1a,0x1fa0   ; XREF: CODE:1f72 CODE:1f7a CODE:1f7c 
CODE:1f9d  02 2d bc                 LJMP 0x2dbc
LAB_CODE_1fa0:
CODE:1fa0  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:1f9a 
CODE:1fa3  e0                       MOVX A,@DPTR
CODE:1fa4  ff                       MOV R7,A
CODE:1fa5  70 26                    JNZ 0x1fcd
CODE:1fa7  78 2b                    MOV R0,#0x2b
CODE:1fa9  e6                       MOV A,@R0
CODE:1faa  fd                       MOV R5,A
CODE:1fab  64 10                    XRL A,#0x10
CODE:1fad  70 1e                    JNZ 0x1fcd
CODE:1faf  30 10 1b                 JNB 0x10,0x1fcd
CODE:1fb2  30 00 02                 JNB 0x00,0x1fb7
CODE:1fb5  b2 11                    CPL 0x11
LAB_CODE_1fb7:
CODE:1fb7  12 94 3f                 LCALL 0x943f   ; XREF: CODE:1fb2 
CODE:1fba  78 69                    MOV R0,#0x69
CODE:1fbc  e6                       MOV A,@R0
CODE:1fbd  64 08                    XRL A,#0x8
CODE:1fbf  60 03                    JZ 0x1fc4
CODE:1fc1  02 2d bc                 LJMP 0x2dbc
LAB_CODE_1fc4:
CODE:1fc4  20 00 03                 JB 0x00,0x1fca   ; XREF: CODE:1fbf 
CODE:1fc7  02 2d bc                 LJMP 0x2dbc
LAB_CODE_1fca:
CODE:1fca  02 26 2e                 LJMP 0x262e   ; XREF: CODE:1fc4 
LAB_CODE_1fcd:
CODE:1fcd  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:1fa5 CODE:1fad CODE:1faf 
CODE:1fd0  e0                       MOVX A,@DPTR
CODE:1fd1  ff                       MOV R7,A
CODE:1fd2  70 26                    JNZ 0x1ffa
CODE:1fd4  78 2b                    MOV R0,#0x2b
CODE:1fd6  e6                       MOV A,@R0
CODE:1fd7  fd                       MOV R5,A
CODE:1fd8  64 11                    XRL A,#0x11
CODE:1fda  70 1e                    JNZ 0x1ffa
CODE:1fdc  30 10 1b                 JNB 0x10,0x1ffa
CODE:1fdf  30 00 02                 JNB 0x00,0x1fe4
CODE:1fe2  b2 2e                    CPL 0x2e
LAB_CODE_1fe4:
CODE:1fe4  12 94 3f                 LCALL 0x943f   ; XREF: CODE:1fdf 
CODE:1fe7  78 69                    MOV R0,#0x69
CODE:1fe9  e6                       MOV A,@R0
CODE:1fea  64 08                    XRL A,#0x8
CODE:1fec  60 03                    JZ 0x1ff1
CODE:1fee  02 2d bc                 LJMP 0x2dbc
LAB_CODE_1ff1:
CODE:1ff1  20 00 03                 JB 0x00,0x1ff7   ; XREF: CODE:1fec 
CODE:1ff4  02 2d bc                 LJMP 0x2dbc
LAB_CODE_1ff7:
CODE:1ff7  02 26 2e                 LJMP 0x262e   ; XREF: CODE:1ff1 
LAB_CODE_1ffa:
CODE:1ffa  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:1fd2 CODE:1fda CODE:1fdc 
CODE:1ffd  e0                       MOVX A,@DPTR
CODE:1ffe  64 01                    XRL A,#0x1
CODE:2000  70 20                    JNZ 0x2022
CODE:2002  78 2b                    MOV R0,#0x2b
CODE:2004  e6                       MOV A,@R0
CODE:2005  b4 10 1a                 CJNE A,#0x10,0x2022
CODE:2008  30 10 17                 JNB 0x10,0x2022
CODE:200b  20 00 03                 JB 0x00,0x2011
CODE:200e  02 2d bc                 LJMP 0x2dbc
LAB_CODE_2011:
CODE:2011  78 69                    MOV R0,#0x69   ; XREF: CODE:200b 
CODE:2013  06                       INC @R0
CODE:2014  e6                       MOV A,@R0
CODE:2015  d3                       SETB CY
CODE:2016  94 13                    SUBB A,#0x13
CODE:2018  40 02                    JC 0x201c
CODE:201a  e4                       CLR A
CODE:201b  f6                       MOV @R0,A
LAB_CODE_201c:
CODE:201c  12 bb dd                 LCALL 0xbbdd   ; XREF: CODE:2018 
CODE:201f  d2 13                    SETB 0x13
CODE:2021  22                       RET
LAB_CODE_2022:
CODE:2022  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:2000 CODE:2005 CODE:2008 
CODE:2025  e0                       MOVX A,@DPTR
CODE:2026  ff                       MOV R7,A
CODE:2027  64 02                    XRL A,#0x2
CODE:2029  70 26                    JNZ 0x2051
CODE:202b  78 2b                    MOV R0,#0x2b
CODE:202d  e6                       MOV A,@R0
CODE:202e  fd                       MOV R5,A
CODE:202f  64 03                    XRL A,#0x3
CODE:2031  70 1e                    JNZ 0x2051
CODE:2033  30 10 1b                 JNB 0x10,0x2051
CODE:2036  30 00 02                 JNB 0x00,0x203b
CODE:2039  b2 16                    CPL 0x16
LAB_CODE_203b:
CODE:203b  12 94 3f                 LCALL 0x943f   ; XREF: CODE:2036 
CODE:203e  78 69                    MOV R0,#0x69
CODE:2040  e6                       MOV A,@R0
CODE:2041  64 08                    XRL A,#0x8
CODE:2043  60 03                    JZ 0x2048
CODE:2045  02 2d bc                 LJMP 0x2dbc
LAB_CODE_2048:
CODE:2048  20 00 03                 JB 0x00,0x204e   ; XREF: CODE:2043 
CODE:204b  02 2d bc                 LJMP 0x2dbc
LAB_CODE_204e:
CODE:204e  02 26 2e                 LJMP 0x262e   ; XREF: CODE:2048 
LAB_CODE_2051:
CODE:2051  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:2029 CODE:2031 CODE:2033 
CODE:2054  e0                       MOVX A,@DPTR
CODE:2055  64 02                    XRL A,#0x2
CODE:2057  70 41                    JNZ 0x209a
CODE:2059  78 2b                    MOV R0,#0x2b
CODE:205b  e6                       MOV A,@R0
CODE:205c  64 10                    XRL A,#0x10
CODE:205e  70 3a                    JNZ 0x209a
CODE:2060  30 10 37                 JNB 0x10,0x209a
CODE:2063  30 00 15                 JNB 0x00,0x207b
CODE:2066  78 5c                    MOV R0,#0x5c
CODE:2068  06                       INC @R0
CODE:2069  e6                       MOV A,@R0
CODE:206a  c3                       CLR CY
CODE:206b  94 08                    SUBB A,#0x8
CODE:206d  40 02                    JC 0x2071
CODE:206f  e4                       CLR A
CODE:2070  f6                       MOV @R0,A
LAB_CODE_2071:
CODE:2071  78 5c                    MOV R0,#0x5c   ; XREF: CODE:206d 
CODE:2073  e6                       MOV A,@R0
CODE:2074  ff                       MOV R7,A
CODE:2075  12 9d eb                 LCALL 0x9deb
CODE:2078  12 ba ca                 LCALL 0xbaca
LAB_CODE_207b:
CODE:207b  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:2063 
CODE:207e  e0                       MOVX A,@DPTR
CODE:207f  ff                       MOV R7,A
CODE:2080  78 2b                    MOV R0,#0x2b
CODE:2082  e6                       MOV A,@R0
CODE:2083  fd                       MOV R5,A
CODE:2084  12 94 3f                 LCALL 0x943f
CODE:2087  78 69                    MOV R0,#0x69
CODE:2089  e6                       MOV A,@R0
CODE:208a  64 08                    XRL A,#0x8
CODE:208c  60 03                    JZ 0x2091
CODE:208e  02 2d bc                 LJMP 0x2dbc
LAB_CODE_2091:
CODE:2091  20 00 03                 JB 0x00,0x2097   ; XREF: CODE:208c 
CODE:2094  02 2d bc                 LJMP 0x2dbc
LAB_CODE_2097:
CODE:2097  02 26 2e                 LJMP 0x262e   ; XREF: CODE:2091 
LAB_CODE_209a:
CODE:209a  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:2057 CODE:205e CODE:2060 
CODE:209d  e0                       MOVX A,@DPTR
CODE:209e  b4 01 13                 CJNE A,#0x1,0x20b4
CODE:20a1  78 2b                    MOV R0,#0x2b
CODE:20a3  e6                       MOV A,@R0
CODE:20a4  b4 02 0d                 CJNE A,#0x2,0x20b4
CODE:20a7  30 10 0a                 JNB 0x10,0x20b4
CODE:20aa  30 00 07                 JNB 0x00,0x20b4
CODE:20ad  78 69                    MOV R0,#0x69
CODE:20af  76 20                    MOV @R0,#0x20
CODE:20b1  d2 13                    SETB 0x13
CODE:20b3  22                       RET
LAB_CODE_20b4:
CODE:20b4  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:209e CODE:20a4 CODE:20a7 CODE:20aa 
CODE:20b7  e0                       MOVX A,@DPTR
CODE:20b8  ff                       MOV R7,A
CODE:20b9  b4 01 13                 CJNE A,#0x1,0x20cf
CODE:20bc  78 2b                    MOV R0,#0x2b
CODE:20be  e6                       MOV A,@R0
CODE:20bf  b4 03 0d                 CJNE A,#0x3,0x20cf
CODE:20c2  30 10 0a                 JNB 0x10,0x20cf
CODE:20c5  30 00 07                 JNB 0x00,0x20cf
CODE:20c8  78 69                    MOV R0,#0x69
CODE:20ca  76 21                    MOV @R0,#0x21
CODE:20cc  d2 13                    SETB 0x13
CODE:20ce  22                       RET
LAB_CODE_20cf:
CODE:20cf  ef                       MOV A,R7   ; XREF: CODE:20b9 CODE:20bf CODE:20c2 CODE:20c5 
CODE:20d0  b4 01 13                 CJNE A,#0x1,0x20e6
CODE:20d3  78 2b                    MOV R0,#0x2b
CODE:20d5  e6                       MOV A,@R0
CODE:20d6  b4 04 0d                 CJNE A,#0x4,0x20e6
CODE:20d9  30 10 0a                 JNB 0x10,0x20e6
CODE:20dc  30 00 07                 JNB 0x00,0x20e6
CODE:20df  78 69                    MOV R0,#0x69
CODE:20e1  76 22                    MOV @R0,#0x22
CODE:20e3  d2 13                    SETB 0x13
CODE:20e5  22                       RET
LAB_CODE_20e6:
CODE:20e6  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:20d0 CODE:20d6 CODE:20d9 CODE:20dc 
CODE:20e9  e0                       MOVX A,@DPTR
CODE:20ea  b4 01 13                 CJNE A,#0x1,0x2100
CODE:20ed  78 2b                    MOV R0,#0x2b
CODE:20ef  e6                       MOV A,@R0
CODE:20f0  b4 05 0d                 CJNE A,#0x5,0x2100
CODE:20f3  30 10 0a                 JNB 0x10,0x2100
CODE:20f6  30 00 07                 JNB 0x00,0x2100
CODE:20f9  78 69                    MOV R0,#0x69
CODE:20fb  76 23                    MOV @R0,#0x23
CODE:20fd  d2 13                    SETB 0x13
CODE:20ff  22                       RET
LAB_CODE_2100:
CODE:2100  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:20ea CODE:20f0 CODE:20f3 CODE:20f6 
CODE:2103  e0                       MOVX A,@DPTR
CODE:2104  ff                       MOV R7,A
CODE:2105  b4 01 13                 CJNE A,#0x1,0x211b
CODE:2108  78 2b                    MOV R0,#0x2b
CODE:210a  e6                       MOV A,@R0
CODE:210b  b4 06 0d                 CJNE A,#0x6,0x211b
CODE:210e  30 10 0a                 JNB 0x10,0x211b
CODE:2111  30 00 07                 JNB 0x00,0x211b
CODE:2114  78 69                    MOV R0,#0x69
CODE:2116  76 24                    MOV @R0,#0x24
CODE:2118  d2 13                    SETB 0x13
CODE:211a  22                       RET
LAB_CODE_211b:
CODE:211b  ef                       MOV A,R7   ; XREF: CODE:2105 CODE:210b CODE:210e CODE:2111 
CODE:211c  64 04                    XRL A,#0x4
CODE:211e  70 3d                    JNZ 0x215d
CODE:2120  78 2b                    MOV R0,#0x2b
CODE:2122  e6                       MOV A,@R0
CODE:2123  64 11                    XRL A,#0x11
CODE:2125  70 36                    JNZ 0x215d
CODE:2127  30 10 33                 JNB 0x10,0x215d
CODE:212a  30 00 11                 JNB 0x00,0x213e
CODE:212d  78 1e                    MOV R0,#0x1e
CODE:212f  06                       INC @R0
CODE:2130  e6                       MOV A,@R0
CODE:2131  d3                       SETB CY
CODE:2132  94 04                    SUBB A,#0x4
CODE:2134  40 02                    JC 0x2138
CODE:2136  76 04                    MOV @R0,#0x4
LAB_CODE_2138:
CODE:2138  12 ba ca                 LCALL 0xbaca   ; XREF: CODE:2134 
CODE:213b  12 ac 41                 LCALL 0xac41
LAB_CODE_213e:
CODE:213e  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:212a 
CODE:2141  e0                       MOVX A,@DPTR
CODE:2142  ff                       MOV R7,A
CODE:2143  78 2b                    MOV R0,#0x2b
CODE:2145  e6                       MOV A,@R0
CODE:2146  fd                       MOV R5,A
CODE:2147  12 94 3f                 LCALL 0x943f
CODE:214a  78 69                    MOV R0,#0x69
CODE:214c  e6                       MOV A,@R0
CODE:214d  64 08                    XRL A,#0x8
CODE:214f  60 03                    JZ 0x2154
CODE:2151  02 2d bc                 LJMP 0x2dbc
LAB_CODE_2154:
CODE:2154  20 00 03                 JB 0x00,0x215a   ; XREF: CODE:214f 
CODE:2157  02 2d bc                 LJMP 0x2dbc
LAB_CODE_215a:
CODE:215a  02 26 2e                 LJMP 0x262e   ; XREF: CODE:2154 
LAB_CODE_215d:
CODE:215d  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:211e CODE:2125 CODE:2127 
CODE:2160  e0                       MOVX A,@DPTR
CODE:2161  64 05                    XRL A,#0x5
CODE:2163  70 3b                    JNZ 0x21a0
CODE:2165  78 2b                    MOV R0,#0x2b
CODE:2167  e6                       MOV A,@R0
CODE:2168  64 11                    XRL A,#0x11
CODE:216a  70 34                    JNZ 0x21a0
CODE:216c  30 10 31                 JNB 0x10,0x21a0
CODE:216f  30 00 0f                 JNB 0x00,0x2181
CODE:2172  78 1e                    MOV R0,#0x1e
CODE:2174  e6                       MOV A,@R0
CODE:2175  d3                       SETB CY
CODE:2176  94 00                    SUBB A,#0x0
CODE:2178  40 01                    JC 0x217b
CODE:217a  16                       DEC @R0
LAB_CODE_217b:
CODE:217b  12 ba ca                 LCALL 0xbaca   ; XREF: CODE:2178 
CODE:217e  12 ac 41                 LCALL 0xac41
LAB_CODE_2181:
CODE:2181  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:216f 
CODE:2184  e0                       MOVX A,@DPTR
CODE:2185  ff                       MOV R7,A
CODE:2186  78 2b                    MOV R0,#0x2b
CODE:2188  e6                       MOV A,@R0
CODE:2189  fd                       MOV R5,A
CODE:218a  12 94 3f                 LCALL 0x943f
CODE:218d  78 69                    MOV R0,#0x69
CODE:218f  e6                       MOV A,@R0
CODE:2190  64 08                    XRL A,#0x8
CODE:2192  60 03                    JZ 0x2197
CODE:2194  02 2d bc                 LJMP 0x2dbc
LAB_CODE_2197:
CODE:2197  20 00 03                 JB 0x00,0x219d   ; XREF: CODE:2192 
CODE:219a  02 2d bc                 LJMP 0x2dbc
LAB_CODE_219d:
CODE:219d  02 26 2e                 LJMP 0x262e   ; XREF: CODE:2197 
LAB_CODE_21a0:
CODE:21a0  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:2163 CODE:216a CODE:216c 
CODE:21a3  e0                       MOVX A,@DPTR
CODE:21a4  64 05                    XRL A,#0x5
CODE:21a6  70 51                    JNZ 0x21f9
CODE:21a8  78 2b                    MOV R0,#0x2b
CODE:21aa  e6                       MOV A,@R0
CODE:21ab  64 12                    XRL A,#0x12
CODE:21ad  70 4a                    JNZ 0x21f9
CODE:21af  30 10 47                 JNB 0x10,0x21f9
CODE:21b2  78 69                    MOV R0,#0x69
CODE:21b4  e6                       MOV A,@R0
CODE:21b5  ff                       MOV R7,A
CODE:21b6  c3                       CLR CY
CODE:21b7  94 13                    SUBB A,#0x13
CODE:21b9  50 1f                    JNC 0x21da
CODE:21bb  ef                       MOV A,R7
CODE:21bc  64 10                    XRL A,#0x10
CODE:21be  60 1a                    JZ 0x21da
CODE:21c0  30 00 17                 JNB 0x00,0x21da
CODE:21c3  78 1b                    MOV R0,#0x1b
CODE:21c5  e6                       MOV A,@R0
CODE:21c6  94 00                    SUBB A,#0x0
CODE:21c8  40 01                    JC 0x21cb
CODE:21ca  16                       DEC @R0
LAB_CODE_21cb:
CODE:21cb  12 ba ca                 LCALL 0xbaca   ; XREF: CODE:21c8 
CODE:21ce  78 1b                    MOV R0,#0x1b
CODE:21d0  e6                       MOV A,@R0
CODE:21d1  70 07                    JNZ 0x21da
CODE:21d3  d2 2a                    SETB 0x2a
CODE:21d5  75 17 09                 MOV 0x17,#0x9
CODE:21d8  d2 26                    SETB 0x26
LAB_CODE_21da:
CODE:21da  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:21b9 CODE:21be CODE:21c0 CODE:21d1 
CODE:21dd  e0                       MOVX A,@DPTR
CODE:21de  ff                       MOV R7,A
CODE:21df  78 2b                    MOV R0,#0x2b
CODE:21e1  e6                       MOV A,@R0
CODE:21e2  fd                       MOV R5,A
CODE:21e3  12 94 3f                 LCALL 0x943f
CODE:21e6  78 69                    MOV R0,#0x69
CODE:21e8  e6                       MOV A,@R0
CODE:21e9  64 08                    XRL A,#0x8
CODE:21eb  60 03                    JZ 0x21f0
CODE:21ed  02 2d bc                 LJMP 0x2dbc
LAB_CODE_21f0:
CODE:21f0  20 00 03                 JB 0x00,0x21f6   ; XREF: CODE:21eb 
CODE:21f3  02 2d bc                 LJMP 0x2dbc
LAB_CODE_21f6:
CODE:21f6  02 26 2e                 LJMP 0x262e   ; XREF: CODE:21f0 
LAB_CODE_21f9:
CODE:21f9  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:21a6 CODE:21ad CODE:21af 
CODE:21fc  e0                       MOVX A,@DPTR
CODE:21fd  64 05                    XRL A,#0x5
CODE:21ff  70 54                    JNZ 0x2255
CODE:2201  78 2b                    MOV R0,#0x2b
CODE:2203  e6                       MOV A,@R0
CODE:2204  64 10                    XRL A,#0x10
CODE:2206  70 4d                    JNZ 0x2255
CODE:2208  30 10 4a                 JNB 0x10,0x2255
CODE:220b  78 69                    MOV R0,#0x69
CODE:220d  e6                       MOV A,@R0
CODE:220e  ff                       MOV R7,A
CODE:220f  c3                       CLR CY
CODE:2210  94 13                    SUBB A,#0x13
CODE:2212  50 22                    JNC 0x2236
CODE:2214  ef                       MOV A,R7
CODE:2215  64 10                    XRL A,#0x10
CODE:2217  60 1d                    JZ 0x2236
CODE:2219  30 00 1a                 JNB 0x00,0x2236
CODE:221c  78 1b                    MOV R0,#0x1b
CODE:221e  06                       INC @R0
CODE:221f  e6                       MOV A,@R0
CODE:2220  94 04                    SUBB A,#0x4
CODE:2222  40 02                    JC 0x2226
CODE:2224  76 04                    MOV @R0,#0x4
LAB_CODE_2226:
CODE:2226  12 ba ca                 LCALL 0xbaca   ; XREF: CODE:2222 
CODE:2229  78 1b                    MOV R0,#0x1b
CODE:222b  e6                       MOV A,@R0
CODE:222c  b4 04 07                 CJNE A,#0x4,0x2236
CODE:222f  d2 2a                    SETB 0x2a
CODE:2231  75 17 09                 MOV 0x17,#0x9
CODE:2234  d2 26                    SETB 0x26
LAB_CODE_2236:
CODE:2236  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:2212 CODE:2217 CODE:2219 CODE:222c 
CODE:2239  e0                       MOVX A,@DPTR
CODE:223a  ff                       MOV R7,A
CODE:223b  78 2b                    MOV R0,#0x2b
CODE:223d  e6                       MOV A,@R0
CODE:223e  fd                       MOV R5,A
CODE:223f  12 94 3f                 LCALL 0x943f
CODE:2242  78 69                    MOV R0,#0x69
CODE:2244  e6                       MOV A,@R0
CODE:2245  64 08                    XRL A,#0x8
CODE:2247  60 03                    JZ 0x224c
CODE:2249  02 2d bc                 LJMP 0x2dbc
LAB_CODE_224c:
CODE:224c  20 00 03                 JB 0x00,0x2252   ; XREF: CODE:2247 
CODE:224f  02 2d bc                 LJMP 0x2dbc
LAB_CODE_2252:
CODE:2252  02 26 2e                 LJMP 0x262e   ; XREF: CODE:224c 
LAB_CODE_2255:
CODE:2255  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:21ff CODE:2206 CODE:2208 
CODE:2258  e0                       MOVX A,@DPTR
CODE:2259  ff                       MOV R7,A
CODE:225a  64 05                    XRL A,#0x5
CODE:225c  60 03                    JZ 0x2261
CODE:225e  02 23 35                 LJMP 0x2335
LAB_CODE_2261:
CODE:2261  78 2b                    MOV R0,#0x2b   ; XREF: CODE:225c 
CODE:2263  e6                       MOV A,@R0
CODE:2264  64 0b                    XRL A,#0xb
CODE:2266  60 03                    JZ 0x226b
CODE:2268  02 23 35                 LJMP 0x2335
LAB_CODE_226b:
CODE:226b  20 10 03                 JB 0x10,0x2271   ; XREF: CODE:2266 
CODE:226e  02 23 35                 LJMP 0x2335
LAB_CODE_2271:
CODE:2271  20 00 03                 JB 0x00,0x2277   ; XREF: CODE:226b 
CODE:2274  02 2d bc                 LJMP 0x2dbc
LAB_CODE_2277:
CODE:2277  78 1f                    MOV R0,#0x1f   ; XREF: CODE:2271 
CODE:2279  06                       INC @R0
CODE:227a  e6                       MOV A,@R0
CODE:227b  d3                       SETB CY
CODE:227c  94 08                    SUBB A,#0x8
CODE:227e  40 02                    JC 0x2282
CODE:2280  e4                       CLR A
CODE:2281  f6                       MOV @R0,A
LAB_CODE_2282:
CODE:2282  78 1f                    MOV R0,#0x1f   ; XREF: CODE:227e 
CODE:2284  e6                       MOV A,@R0
CODE:2285  fe                       MOV R6,A
CODE:2286  70 11                    JNZ 0x2299
CODE:2288  90 ff 92                 MOV DPTR,#0xff92
CODE:228b  74 b0                    MOV A,#0xb0
CODE:228d  f0                       MOVX @DPTR,A
CODE:228e  a3                       INC DPTR
CODE:228f  74 10                    MOV A,#0x10
CODE:2291  f0                       MOVX @DPTR,A
CODE:2292  a3                       INC DPTR
CODE:2293  f0                       MOVX @DPTR,A
CODE:2294  d2 ff                    SETB 0xff
CODE:2296  02 23 30                 LJMP 0x2330
LAB_CODE_2299:
CODE:2299  ee                       MOV A,R6   ; XREF: CODE:2286 
CODE:229a  b4 01 10                 CJNE A,#0x1,0x22ad
CODE:229d  90 ff 92                 MOV DPTR,#0xff92
CODE:22a0  74 b0                    MOV A,#0xb0
CODE:22a2  f0                       MOVX @DPTR,A
CODE:22a3  a3                       INC DPTR
CODE:22a4  74 10                    MOV A,#0x10
CODE:22a6  f0                       MOVX @DPTR,A
CODE:22a7  a3                       INC DPTR
CODE:22a8  f0                       MOVX @DPTR,A
CODE:22a9  c2 ff                    CLR 0xff
CODE:22ab  80 26                    SJMP 0x22d3
LAB_CODE_22ad:
CODE:22ad  ee                       MOV A,R6   ; XREF: CODE:229a 
CODE:22ae  b4 02 10                 CJNE A,#0x2,0x22c1
CODE:22b1  90 ff 92                 MOV DPTR,#0xff92
CODE:22b4  74 b0                    MOV A,#0xb0
CODE:22b6  f0                       MOVX @DPTR,A
CODE:22b7  a3                       INC DPTR
CODE:22b8  74 10                    MOV A,#0x10
CODE:22ba  f0                       MOVX @DPTR,A
CODE:22bb  a3                       INC DPTR
CODE:22bc  f0                       MOVX @DPTR,A
CODE:22bd  c2 ff                    CLR 0xff
CODE:22bf  80 29                    SJMP 0x22ea
LAB_CODE_22c1:
CODE:22c1  ee                       MOV A,R6   ; XREF: CODE:22ae 
CODE:22c2  b4 03 13                 CJNE A,#0x3,0x22d8
CODE:22c5  90 ff 92                 MOV DPTR,#0xff92
CODE:22c8  74 b0                    MOV A,#0xb0
CODE:22ca  f0                       MOVX @DPTR,A
CODE:22cb  a3                       INC DPTR
CODE:22cc  74 10                    MOV A,#0x10
CODE:22ce  f0                       MOVX @DPTR,A
CODE:22cf  a3                       INC DPTR
CODE:22d0  f0                       MOVX @DPTR,A
CODE:22d1  d2 ff                    SETB 0xff
LAB_CODE_22d3:
CODE:22d3  d2 fe                    SETB 0xfe   ; XREF: CODE:22ab 
CODE:22d5  c2 fd                    CLR 0xfd
CODE:22d7  22                       RET
LAB_CODE_22d8:
CODE:22d8  ee                       MOV A,R6   ; XREF: CODE:22c2 
CODE:22d9  b4 04 13                 CJNE A,#0x4,0x22ef
CODE:22dc  90 ff 92                 MOV DPTR,#0xff92
CODE:22df  74 b0                    MOV A,#0xb0
CODE:22e1  f0                       MOVX @DPTR,A
CODE:22e2  a3                       INC DPTR
CODE:22e3  74 10                    MOV A,#0x10
CODE:22e5  f0                       MOVX @DPTR,A
CODE:22e6  a3                       INC DPTR
CODE:22e7  f0                       MOVX @DPTR,A
CODE:22e8  d2 ff                    SETB 0xff
LAB_CODE_22ea:
CODE:22ea  c2 fe                    CLR 0xfe   ; XREF: CODE:22bf 
CODE:22ec  d2 fd                    SETB 0xfd
CODE:22ee  22                       RET
LAB_CODE_22ef:
CODE:22ef  ee                       MOV A,R6   ; XREF: CODE:22d9 
CODE:22f0  b4 05 10                 CJNE A,#0x5,0x2303
CODE:22f3  90 ff 92                 MOV DPTR,#0xff92
CODE:22f6  74 b0                    MOV A,#0xb0
CODE:22f8  f0                       MOVX @DPTR,A
CODE:22f9  a3                       INC DPTR
CODE:22fa  74 10                    MOV A,#0x10
CODE:22fc  f0                       MOVX @DPTR,A
CODE:22fd  a3                       INC DPTR
CODE:22fe  f0                       MOVX @DPTR,A
CODE:22ff  c2 ff                    CLR 0xff
CODE:2301  80 12                    SJMP 0x2315
LAB_CODE_2303:
CODE:2303  ee                       MOV A,R6   ; XREF: CODE:22f0 
CODE:2304  b4 06 13                 CJNE A,#0x6,0x231a
CODE:2307  90 ff 92                 MOV DPTR,#0xff92
CODE:230a  74 b0                    MOV A,#0xb0
CODE:230c  f0                       MOVX @DPTR,A
CODE:230d  a3                       INC DPTR
CODE:230e  74 10                    MOV A,#0x10
CODE:2310  f0                       MOVX @DPTR,A
CODE:2311  a3                       INC DPTR
CODE:2312  f0                       MOVX @DPTR,A
CODE:2313  d2 ff                    SETB 0xff
LAB_CODE_2315:
CODE:2315  d2 fe                    SETB 0xfe   ; XREF: CODE:2301 
CODE:2317  d2 fd                    SETB 0xfd
CODE:2319  22                       RET
LAB_CODE_231a:
CODE:231a  ee                       MOV A,R6   ; XREF: CODE:2304 
CODE:231b  64 08                    XRL A,#0x8
CODE:231d  60 03                    JZ 0x2322
CODE:231f  02 2d bc                 LJMP 0x2dbc
LAB_CODE_2322:
CODE:2322  90 ff 92                 MOV DPTR,#0xff92   ; XREF: CODE:231d 
CODE:2325  74 b0                    MOV A,#0xb0
CODE:2327  f0                       MOVX @DPTR,A
CODE:2328  a3                       INC DPTR
CODE:2329  74 10                    MOV A,#0x10
CODE:232b  f0                       MOVX @DPTR,A
CODE:232c  a3                       INC DPTR
CODE:232d  f0                       MOVX @DPTR,A
CODE:232e  c2 ff                    CLR 0xff
LAB_CODE_2330:
CODE:2330  c2 fe                    CLR 0xfe   ; XREF: CODE:2296 
CODE:2332  c2 fd                    CLR 0xfd
CODE:2334  22                       RET
LAB_CODE_2335:
CODE:2335  ef                       MOV A,R7   ; XREF: CODE:225e CODE:2268 CODE:226e 
CODE:2336  70 1b                    JNZ 0x2353
CODE:2338  78 2b                    MOV R0,#0x2b
CODE:233a  e6                       MOV A,@R0
CODE:233b  b4 01 15                 CJNE A,#0x1,0x2353
CODE:233e  30 10 12                 JNB 0x10,0x2353
CODE:2341  e4                       CLR A
CODE:2342  78 1c                    MOV R0,#0x1c
CODE:2344  30 00 06                 JNB 0x00,0x234d
CODE:2347  f6                       MOV @R0,A
CODE:2348  08                       INC R0
CODE:2349  f6                       MOV @R0,A
CODE:234a  d2 19                    SETB 0x19
CODE:234c  22                       RET
LAB_CODE_234d:
CODE:234d  f6                       MOV @R0,A   ; XREF: CODE:2344 
CODE:234e  08                       INC R0
CODE:234f  f6                       MOV @R0,A
CODE:2350  c2 19                    CLR 0x19
CODE:2352  22                       RET
LAB_CODE_2353:
CODE:2353  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:2336 CODE:233b CODE:233e 
CODE:2356  e0                       MOVX A,@DPTR
CODE:2357  ff                       MOV R7,A
CODE:2358  70 45                    JNZ 0x239f
CODE:235a  78 2b                    MOV R0,#0x2b
CODE:235c  e6                       MOV A,@R0
CODE:235d  fd                       MOV R5,A
CODE:235e  64 03                    XRL A,#0x3
CODE:2360  70 3d                    JNZ 0x239f
CODE:2362  30 10 2d                 JNB 0x10,0x2392
CODE:2365  30 00 0b                 JNB 0x00,0x2373
CODE:2368  90 07 cb                 MOV DPTR,#0x7cb
CODE:236b  74 94                    MOV A,#0x94
CODE:236d  f0                       MOVX @DPTR,A
CODE:236e  a3                       INC DPTR
CODE:236f  74 01                    MOV A,#0x1
CODE:2371  80 06                    SJMP 0x2379
LAB_CODE_2373:
CODE:2373  e4                       CLR A   ; XREF: CODE:2365 
CODE:2374  90 07 cb                 MOV DPTR,#0x7cb
CODE:2377  f0                       MOVX @DPTR,A
CODE:2378  a3                       INC DPTR
LAB_CODE_2379:
CODE:2379  f0                       MOVX @DPTR,A   ; XREF: CODE:2371 
CODE:237a  d2 03                    SETB 0x03
CODE:237c  12 94 3f                 LCALL 0x943f
CODE:237f  78 69                    MOV R0,#0x69
CODE:2381  e6                       MOV A,@R0
CODE:2382  64 08                    XRL A,#0x8
CODE:2384  60 03                    JZ 0x2389
CODE:2386  02 2d bc                 LJMP 0x2dbc
LAB_CODE_2389:
CODE:2389  20 00 03                 JB 0x00,0x238f   ; XREF: CODE:2384 
CODE:238c  02 2d bc                 LJMP 0x2dbc
LAB_CODE_238f:
CODE:238f  02 26 2e                 LJMP 0x262e   ; XREF: CODE:2389 
LAB_CODE_2392:
CODE:2392  20 00 0a                 JB 0x00,0x239f   ; XREF: CODE:2362 
CODE:2395  90 07 cb                 MOV DPTR,#0x7cb
CODE:2398  e0                       MOVX A,@DPTR
CODE:2399  b4 94 03                 CJNE A,#0x94,0x239f
CODE:239c  02 26 73                 LJMP 0x2673
LAB_CODE_239f:
CODE:239f  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:2358 CODE:2360 CODE:2392 CODE:2399 
CODE:23a2  e0                       MOVX A,@DPTR
CODE:23a3  ff                       MOV R7,A
CODE:23a4  70 45                    JNZ 0x23eb
CODE:23a6  78 2b                    MOV R0,#0x2b
CODE:23a8  e6                       MOV A,@R0
CODE:23a9  fd                       MOV R5,A
CODE:23aa  64 04                    XRL A,#0x4
CODE:23ac  70 3d                    JNZ 0x23eb
CODE:23ae  30 10 2d                 JNB 0x10,0x23de
CODE:23b1  30 00 0b                 JNB 0x00,0x23bf
CODE:23b4  90 07 cb                 MOV DPTR,#0x7cb
CODE:23b7  74 21                    MOV A,#0x21
CODE:23b9  f0                       MOVX @DPTR,A
CODE:23ba  a3                       INC DPTR
CODE:23bb  74 02                    MOV A,#0x2
CODE:23bd  80 06                    SJMP 0x23c5
LAB_CODE_23bf:
CODE:23bf  e4                       CLR A   ; XREF: CODE:23b1 
CODE:23c0  90 07 cb                 MOV DPTR,#0x7cb
CODE:23c3  f0                       MOVX @DPTR,A
CODE:23c4  a3                       INC DPTR
LAB_CODE_23c5:
CODE:23c5  f0                       MOVX @DPTR,A   ; XREF: CODE:23bd 
CODE:23c6  d2 03                    SETB 0x03
CODE:23c8  12 94 3f                 LCALL 0x943f
CODE:23cb  78 69                    MOV R0,#0x69
CODE:23cd  e6                       MOV A,@R0
CODE:23ce  64 08                    XRL A,#0x8
CODE:23d0  60 03                    JZ 0x23d5
CODE:23d2  02 2d bc                 LJMP 0x2dbc
LAB_CODE_23d5:
CODE:23d5  20 00 03                 JB 0x00,0x23db   ; XREF: CODE:23d0 
CODE:23d8  02 2d bc                 LJMP 0x2dbc
LAB_CODE_23db:
CODE:23db  02 26 2e                 LJMP 0x262e   ; XREF: CODE:23d5 
LAB_CODE_23de:
CODE:23de  20 00 0a                 JB 0x00,0x23eb   ; XREF: CODE:23ae 
CODE:23e1  90 07 cb                 MOV DPTR,#0x7cb
CODE:23e4  e0                       MOVX A,@DPTR
CODE:23e5  b4 21 03                 CJNE A,#0x21,0x23eb
CODE:23e8  02 26 73                 LJMP 0x2673
LAB_CODE_23eb:
CODE:23eb  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:23a4 CODE:23ac CODE:23de CODE:23e5 
CODE:23ee  e0                       MOVX A,@DPTR
CODE:23ef  ff                       MOV R7,A
CODE:23f0  70 45                    JNZ 0x2437
CODE:23f2  78 2b                    MOV R0,#0x2b
CODE:23f4  e6                       MOV A,@R0
CODE:23f5  fd                       MOV R5,A
CODE:23f6  64 05                    XRL A,#0x5
CODE:23f8  70 3d                    JNZ 0x2437
CODE:23fa  30 10 2d                 JNB 0x10,0x242a
CODE:23fd  30 00 0b                 JNB 0x00,0x240b
CODE:2400  90 07 cb                 MOV DPTR,#0x7cb
CODE:2403  74 92                    MOV A,#0x92
CODE:2405  f0                       MOVX @DPTR,A
CODE:2406  a3                       INC DPTR
CODE:2407  74 01                    MOV A,#0x1
CODE:2409  80 06                    SJMP 0x2411
LAB_CODE_240b:
CODE:240b  e4                       CLR A   ; XREF: CODE:23fd 
CODE:240c  90 07 cb                 MOV DPTR,#0x7cb
CODE:240f  f0                       MOVX @DPTR,A
CODE:2410  a3                       INC DPTR
LAB_CODE_2411:
CODE:2411  f0                       MOVX @DPTR,A   ; XREF: CODE:2409 
CODE:2412  d2 03                    SETB 0x03
CODE:2414  12 94 3f                 LCALL 0x943f
CODE:2417  78 69                    MOV R0,#0x69
CODE:2419  e6                       MOV A,@R0
CODE:241a  64 08                    XRL A,#0x8
CODE:241c  60 03                    JZ 0x2421
CODE:241e  02 2d bc                 LJMP 0x2dbc
LAB_CODE_2421:
CODE:2421  20 00 03                 JB 0x00,0x2427   ; XREF: CODE:241c 
CODE:2424  02 2d bc                 LJMP 0x2dbc
LAB_CODE_2427:
CODE:2427  02 26 2e                 LJMP 0x262e   ; XREF: CODE:2421 
LAB_CODE_242a:
CODE:242a  20 00 0a                 JB 0x00,0x2437   ; XREF: CODE:23fa 
CODE:242d  90 07 cb                 MOV DPTR,#0x7cb
CODE:2430  e0                       MOVX A,@DPTR
CODE:2431  b4 92 03                 CJNE A,#0x92,0x2437
CODE:2434  02 26 73                 LJMP 0x2673
LAB_CODE_2437:
CODE:2437  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:23f0 CODE:23f8 CODE:242a CODE:2431 
CODE:243a  e0                       MOVX A,@DPTR
CODE:243b  ff                       MOV R7,A
CODE:243c  70 45                    JNZ 0x2483
CODE:243e  78 2b                    MOV R0,#0x2b
CODE:2440  e6                       MOV A,@R0
CODE:2441  fd                       MOV R5,A
CODE:2442  64 06                    XRL A,#0x6
CODE:2444  70 3d                    JNZ 0x2483
CODE:2446  30 10 2d                 JNB 0x10,0x2476
CODE:2449  30 00 0b                 JNB 0x00,0x2457
CODE:244c  90 07 cb                 MOV DPTR,#0x7cb
CODE:244f  74 83                    MOV A,#0x83
CODE:2451  f0                       MOVX @DPTR,A
CODE:2452  a3                       INC DPTR
CODE:2453  74 01                    MOV A,#0x1
CODE:2455  80 06                    SJMP 0x245d
LAB_CODE_2457:
CODE:2457  e4                       CLR A   ; XREF: CODE:2449 
CODE:2458  90 07 cb                 MOV DPTR,#0x7cb
CODE:245b  f0                       MOVX @DPTR,A
CODE:245c  a3                       INC DPTR
LAB_CODE_245d:
CODE:245d  f0                       MOVX @DPTR,A   ; XREF: CODE:2455 
CODE:245e  d2 03                    SETB 0x03
CODE:2460  12 94 3f                 LCALL 0x943f
CODE:2463  78 69                    MOV R0,#0x69
CODE:2465  e6                       MOV A,@R0
CODE:2466  64 08                    XRL A,#0x8
CODE:2468  60 03                    JZ 0x246d
CODE:246a  02 2d bc                 LJMP 0x2dbc
LAB_CODE_246d:
CODE:246d  20 00 03                 JB 0x00,0x2473   ; XREF: CODE:2468 
CODE:2470  02 2d bc                 LJMP 0x2dbc
LAB_CODE_2473:
CODE:2473  02 26 2e                 LJMP 0x262e   ; XREF: CODE:246d 
LAB_CODE_2476:
CODE:2476  20 00 0a                 JB 0x00,0x2483   ; XREF: CODE:2446 
CODE:2479  90 07 cb                 MOV DPTR,#0x7cb
CODE:247c  e0                       MOVX A,@DPTR
CODE:247d  b4 83 03                 CJNE A,#0x83,0x2483
CODE:2480  02 26 73                 LJMP 0x2673
LAB_CODE_2483:
CODE:2483  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:243c CODE:2444 CODE:2476 CODE:247d 
CODE:2486  e0                       MOVX A,@DPTR
CODE:2487  ff                       MOV R7,A
CODE:2488  70 43                    JNZ 0x24cd
CODE:248a  78 2b                    MOV R0,#0x2b
CODE:248c  e6                       MOV A,@R0
CODE:248d  fd                       MOV R5,A
CODE:248e  64 07                    XRL A,#0x7
CODE:2490  70 3b                    JNZ 0x24cd
CODE:2492  30 10 2b                 JNB 0x10,0x24c0
CODE:2495  30 00 09                 JNB 0x00,0x24a1
CODE:2498  90 07 cb                 MOV DPTR,#0x7cb
CODE:249b  74 b6                    MOV A,#0xb6
CODE:249d  f0                       MOVX @DPTR,A
CODE:249e  e4                       CLR A
CODE:249f  80 05                    SJMP 0x24a6
LAB_CODE_24a1:
CODE:24a1  e4                       CLR A   ; XREF: CODE:2495 
CODE:24a2  90 07 cb                 MOV DPTR,#0x7cb
CODE:24a5  f0                       MOVX @DPTR,A
LAB_CODE_24a6:
CODE:24a6  a3                       INC DPTR   ; XREF: CODE:249f 
CODE:24a7  f0                       MOVX @DPTR,A
CODE:24a8  d2 03                    SETB 0x03
CODE:24aa  12 94 3f                 LCALL 0x943f
CODE:24ad  78 69                    MOV R0,#0x69
CODE:24af  e6                       MOV A,@R0
CODE:24b0  64 08                    XRL A,#0x8
CODE:24b2  60 03                    JZ 0x24b7
CODE:24b4  02 2d bc                 LJMP 0x2dbc
LAB_CODE_24b7:
CODE:24b7  20 00 03                 JB 0x00,0x24bd   ; XREF: CODE:24b2 
CODE:24ba  02 2d bc                 LJMP 0x2dbc
LAB_CODE_24bd:
CODE:24bd  02 26 2e                 LJMP 0x262e   ; XREF: CODE:24b7 
LAB_CODE_24c0:
CODE:24c0  20 00 0a                 JB 0x00,0x24cd   ; XREF: CODE:2492 
CODE:24c3  90 07 cb                 MOV DPTR,#0x7cb
CODE:24c6  e0                       MOVX A,@DPTR
CODE:24c7  b4 b6 03                 CJNE A,#0xb6,0x24cd
CODE:24ca  02 26 73                 LJMP 0x2673
LAB_CODE_24cd:
CODE:24cd  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:2488 CODE:2490 CODE:24c0 CODE:24c7 
CODE:24d0  e0                       MOVX A,@DPTR
CODE:24d1  ff                       MOV R7,A
CODE:24d2  70 43                    JNZ 0x2517
CODE:24d4  78 2b                    MOV R0,#0x2b
CODE:24d6  e6                       MOV A,@R0
CODE:24d7  fd                       MOV R5,A
CODE:24d8  64 08                    XRL A,#0x8
CODE:24da  70 3b                    JNZ 0x2517
CODE:24dc  30 10 2b                 JNB 0x10,0x250a
CODE:24df  30 00 09                 JNB 0x00,0x24eb
CODE:24e2  90 07 cb                 MOV DPTR,#0x7cb
CODE:24e5  74 b5                    MOV A,#0xb5
CODE:24e7  f0                       MOVX @DPTR,A
CODE:24e8  e4                       CLR A
CODE:24e9  80 05                    SJMP 0x24f0
LAB_CODE_24eb:
CODE:24eb  e4                       CLR A   ; XREF: CODE:24df 
CODE:24ec  90 07 cb                 MOV DPTR,#0x7cb
CODE:24ef  f0                       MOVX @DPTR,A
LAB_CODE_24f0:
CODE:24f0  a3                       INC DPTR   ; XREF: CODE:24e9 
CODE:24f1  f0                       MOVX @DPTR,A
CODE:24f2  d2 03                    SETB 0x03
CODE:24f4  12 94 3f                 LCALL 0x943f
CODE:24f7  78 69                    MOV R0,#0x69
CODE:24f9  e6                       MOV A,@R0
CODE:24fa  64 08                    XRL A,#0x8
CODE:24fc  60 03                    JZ 0x2501
CODE:24fe  02 2d bc                 LJMP 0x2dbc
LAB_CODE_2501:
CODE:2501  20 00 03                 JB 0x00,0x2507   ; XREF: CODE:24fc 
CODE:2504  02 2d bc                 LJMP 0x2dbc
LAB_CODE_2507:
CODE:2507  02 26 2e                 LJMP 0x262e   ; XREF: CODE:2501 
LAB_CODE_250a:
CODE:250a  20 00 0a                 JB 0x00,0x2517   ; XREF: CODE:24dc 
CODE:250d  90 07 cb                 MOV DPTR,#0x7cb
CODE:2510  e0                       MOVX A,@DPTR
CODE:2511  b4 b5 03                 CJNE A,#0xb5,0x2517
CODE:2514  02 26 73                 LJMP 0x2673
LAB_CODE_2517:
CODE:2517  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:24d2 CODE:24da CODE:250a CODE:2511 
CODE:251a  e0                       MOVX A,@DPTR
CODE:251b  ff                       MOV R7,A
CODE:251c  70 43                    JNZ 0x2561
CODE:251e  78 2b                    MOV R0,#0x2b
CODE:2520  e6                       MOV A,@R0
CODE:2521  fd                       MOV R5,A
CODE:2522  64 09                    XRL A,#0x9
CODE:2524  70 3b                    JNZ 0x2561
CODE:2526  30 10 2b                 JNB 0x10,0x2554
CODE:2529  30 00 09                 JNB 0x00,0x2535
CODE:252c  90 07 cb                 MOV DPTR,#0x7cb
CODE:252f  74 cd                    MOV A,#0xcd
CODE:2531  f0                       MOVX @DPTR,A
CODE:2532  e4                       CLR A
CODE:2533  80 05                    SJMP 0x253a
LAB_CODE_2535:
CODE:2535  e4                       CLR A   ; XREF: CODE:2529 
CODE:2536  90 07 cb                 MOV DPTR,#0x7cb
CODE:2539  f0                       MOVX @DPTR,A
LAB_CODE_253a:
CODE:253a  a3                       INC DPTR   ; XREF: CODE:2533 
CODE:253b  f0                       MOVX @DPTR,A
CODE:253c  d2 03                    SETB 0x03
CODE:253e  12 94 3f                 LCALL 0x943f
CODE:2541  78 69                    MOV R0,#0x69
CODE:2543  e6                       MOV A,@R0
CODE:2544  64 08                    XRL A,#0x8
CODE:2546  60 03                    JZ 0x254b
CODE:2548  02 2d bc                 LJMP 0x2dbc
LAB_CODE_254b:
CODE:254b  20 00 03                 JB 0x00,0x2551   ; XREF: CODE:2546 
CODE:254e  02 2d bc                 LJMP 0x2dbc
LAB_CODE_2551:
CODE:2551  02 26 2e                 LJMP 0x262e   ; XREF: CODE:254b 
LAB_CODE_2554:
CODE:2554  20 00 0a                 JB 0x00,0x2561   ; XREF: CODE:2526 
CODE:2557  90 07 cb                 MOV DPTR,#0x7cb
CODE:255a  e0                       MOVX A,@DPTR
CODE:255b  b4 cd 03                 CJNE A,#0xcd,0x2561
CODE:255e  02 26 73                 LJMP 0x2673
LAB_CODE_2561:
CODE:2561  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:251c CODE:2524 CODE:2554 CODE:255b 
CODE:2564  e0                       MOVX A,@DPTR
CODE:2565  ff                       MOV R7,A
CODE:2566  70 43                    JNZ 0x25ab
CODE:2568  78 2b                    MOV R0,#0x2b
CODE:256a  e6                       MOV A,@R0
CODE:256b  fd                       MOV R5,A
CODE:256c  64 0a                    XRL A,#0xa
CODE:256e  70 3b                    JNZ 0x25ab
CODE:2570  30 10 2b                 JNB 0x10,0x259e
CODE:2573  30 00 09                 JNB 0x00,0x257f
CODE:2576  90 07 cb                 MOV DPTR,#0x7cb
CODE:2579  74 b7                    MOV A,#0xb7
CODE:257b  f0                       MOVX @DPTR,A
CODE:257c  e4                       CLR A
CODE:257d  80 05                    SJMP 0x2584
LAB_CODE_257f:
CODE:257f  e4                       CLR A   ; XREF: CODE:2573 
CODE:2580  90 07 cb                 MOV DPTR,#0x7cb
CODE:2583  f0                       MOVX @DPTR,A
LAB_CODE_2584:
CODE:2584  a3                       INC DPTR   ; XREF: CODE:257d 
CODE:2585  f0                       MOVX @DPTR,A
CODE:2586  d2 03                    SETB 0x03
CODE:2588  12 94 3f                 LCALL 0x943f
CODE:258b  78 69                    MOV R0,#0x69
CODE:258d  e6                       MOV A,@R0
CODE:258e  64 08                    XRL A,#0x8
CODE:2590  60 03                    JZ 0x2595
CODE:2592  02 2d bc                 LJMP 0x2dbc
LAB_CODE_2595:
CODE:2595  20 00 03                 JB 0x00,0x259b   ; XREF: CODE:2590 
CODE:2598  02 2d bc                 LJMP 0x2dbc
LAB_CODE_259b:
CODE:259b  02 26 2e                 LJMP 0x262e   ; XREF: CODE:2595 
LAB_CODE_259e:
CODE:259e  20 00 0a                 JB 0x00,0x25ab   ; XREF: CODE:2570 
CODE:25a1  90 07 cb                 MOV DPTR,#0x7cb
CODE:25a4  e0                       MOVX A,@DPTR
CODE:25a5  b4 b7 03                 CJNE A,#0xb7,0x25ab
CODE:25a8  02 26 73                 LJMP 0x2673
LAB_CODE_25ab:
CODE:25ab  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:2566 CODE:256e CODE:259e CODE:25a5 
CODE:25ae  e0                       MOVX A,@DPTR
CODE:25af  ff                       MOV R7,A
CODE:25b0  70 42                    JNZ 0x25f4
CODE:25b2  78 2b                    MOV R0,#0x2b
CODE:25b4  e6                       MOV A,@R0
CODE:25b5  fd                       MOV R5,A
CODE:25b6  64 0b                    XRL A,#0xb
CODE:25b8  70 3a                    JNZ 0x25f4
CODE:25ba  30 10 2a                 JNB 0x10,0x25e7
CODE:25bd  30 00 09                 JNB 0x00,0x25c9
CODE:25c0  90 07 cb                 MOV DPTR,#0x7cb
CODE:25c3  74 e2                    MOV A,#0xe2
CODE:25c5  f0                       MOVX @DPTR,A
CODE:25c6  e4                       CLR A
CODE:25c7  80 05                    SJMP 0x25ce
LAB_CODE_25c9:
CODE:25c9  e4                       CLR A   ; XREF: CODE:25bd 
CODE:25ca  90 07 cb                 MOV DPTR,#0x7cb
CODE:25cd  f0                       MOVX @DPTR,A
LAB_CODE_25ce:
CODE:25ce  a3                       INC DPTR   ; XREF: CODE:25c7 
CODE:25cf  f0                       MOVX @DPTR,A
CODE:25d0  d2 03                    SETB 0x03
CODE:25d2  12 94 3f                 LCALL 0x943f
CODE:25d5  78 69                    MOV R0,#0x69
CODE:25d7  e6                       MOV A,@R0
CODE:25d8  64 08                    XRL A,#0x8
CODE:25da  60 03                    JZ 0x25df
CODE:25dc  02 2d bc                 LJMP 0x2dbc
LAB_CODE_25df:
CODE:25df  20 00 03                 JB 0x00,0x25e5   ; XREF: CODE:25da 
CODE:25e2  02 2d bc                 LJMP 0x2dbc
LAB_CODE_25e5:
CODE:25e5  80 47                    SJMP 0x262e   ; XREF: CODE:25df 
LAB_CODE_25e7:
CODE:25e7  20 00 0a                 JB 0x00,0x25f4   ; XREF: CODE:25ba 
CODE:25ea  90 07 cb                 MOV DPTR,#0x7cb
CODE:25ed  e0                       MOVX A,@DPTR
CODE:25ee  b4 e2 03                 CJNE A,#0xe2,0x25f4
CODE:25f1  02 26 73                 LJMP 0x2673
LAB_CODE_25f4:
CODE:25f4  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:25b0 CODE:25b8 CODE:25e7 CODE:25ee 
CODE:25f7  e0                       MOVX A,@DPTR
CODE:25f8  ff                       MOV R7,A
CODE:25f9  70 4b                    JNZ 0x2646
CODE:25fb  78 2b                    MOV R0,#0x2b
CODE:25fd  e6                       MOV A,@R0
CODE:25fe  fd                       MOV R5,A
CODE:25ff  64 0c                    XRL A,#0xc
CODE:2601  70 43                    JNZ 0x2646
CODE:2603  30 10 34                 JNB 0x10,0x263a
CODE:2606  30 00 09                 JNB 0x00,0x2612
CODE:2609  90 07 cb                 MOV DPTR,#0x7cb
CODE:260c  74 ea                    MOV A,#0xea
CODE:260e  f0                       MOVX @DPTR,A
CODE:260f  e4                       CLR A
CODE:2610  80 05                    SJMP 0x2617
LAB_CODE_2612:
CODE:2612  e4                       CLR A   ; XREF: CODE:2606 
CODE:2613  90 07 cb                 MOV DPTR,#0x7cb
CODE:2616  f0                       MOVX @DPTR,A
LAB_CODE_2617:
CODE:2617  a3                       INC DPTR   ; XREF: CODE:2610 
CODE:2618  f0                       MOVX @DPTR,A
CODE:2619  d2 03                    SETB 0x03
CODE:261b  12 94 3f                 LCALL 0x943f
CODE:261e  78 69                    MOV R0,#0x69
CODE:2620  e6                       MOV A,@R0
CODE:2621  64 08                    XRL A,#0x8
CODE:2623  60 03                    JZ 0x2628
CODE:2625  02 2d bc                 LJMP 0x2dbc
LAB_CODE_2628:
CODE:2628  20 00 03                 JB 0x00,0x262e   ; XREF: CODE:2623 
CODE:262b  02 2d bc                 LJMP 0x2dbc
LAB_CODE_262e:
CODE:262e  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:1f97 CODE:1fca CODE:1ff7 CODE:204e CODE:2097 CODE:215a CODE:219d CODE:21f6 CODE:2252 CODE:238f CODE:23db CODE:2427 CODE:2473 CODE:24bd CODE:2507 CODE:2551 CODE:259b CODE:25e5 CODE:2628 
CODE:2631  e0                       MOVX A,@DPTR
CODE:2632  ff                       MOV R7,A
CODE:2633  78 2b                    MOV R0,#0x2b
CODE:2635  e6                       MOV A,@R0
CODE:2636  fd                       MOV R5,A
CODE:2637  02 ae de                 LJMP 0xaede
LAB_CODE_263a:
CODE:263a  20 00 09                 JB 0x00,0x2646   ; XREF: CODE:2603 
CODE:263d  90 07 cb                 MOV DPTR,#0x7cb
CODE:2640  e0                       MOVX A,@DPTR
CODE:2641  b4 ea 02                 CJNE A,#0xea,0x2646
CODE:2644  80 2d                    SJMP 0x2673
LAB_CODE_2646:
CODE:2646  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:25f9 CODE:2601 CODE:263a CODE:2641 
CODE:2649  e0                       MOVX A,@DPTR
CODE:264a  70 2e                    JNZ 0x267a
CODE:264c  78 2b                    MOV R0,#0x2b
CODE:264e  e6                       MOV A,@R0
CODE:264f  64 0d                    XRL A,#0xd
CODE:2651  70 27                    JNZ 0x267a
CODE:2653  30 10 13                 JNB 0x10,0x2669
CODE:2656  30 00 09                 JNB 0x00,0x2662
CODE:2659  90 07 cb                 MOV DPTR,#0x7cb
CODE:265c  74 e9                    MOV A,#0xe9
CODE:265e  f0                       MOVX @DPTR,A
CODE:265f  e4                       CLR A
CODE:2660  80 13                    SJMP 0x2675
LAB_CODE_2662:
CODE:2662  e4                       CLR A   ; XREF: CODE:2656 
CODE:2663  90 07 cb                 MOV DPTR,#0x7cb
CODE:2666  f0                       MOVX @DPTR,A
CODE:2667  80 0c                    SJMP 0x2675
LAB_CODE_2669:
CODE:2669  20 00 0e                 JB 0x00,0x267a   ; XREF: CODE:2653 
CODE:266c  90 07 cb                 MOV DPTR,#0x7cb
CODE:266f  e0                       MOVX A,@DPTR
CODE:2670  b4 e9 07                 CJNE A,#0xe9,0x267a
LAB_CODE_2673:
CODE:2673  e4                       CLR A   ; XREF: CODE:239c CODE:23e8 CODE:2434 CODE:2480 CODE:24ca CODE:2514 CODE:255e CODE:25a8 CODE:25f1 CODE:2644 
CODE:2674  f0                       MOVX @DPTR,A
LAB_CODE_2675:
CODE:2675  a3                       INC DPTR   ; XREF: CODE:2660 CODE:2667 
CODE:2676  f0                       MOVX @DPTR,A
CODE:2677  d2 03                    SETB 0x03
CODE:2679  22                       RET
LAB_CODE_267a:
CODE:267a  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:264a CODE:2651 CODE:2669 CODE:2670 
CODE:267d  e0                       MOVX A,@DPTR
CODE:267e  fc                       MOV R4,A
CODE:267f  75 f0 17                 MOV B,#0x17
CODE:2682  a4                       MUL AB
CODE:2683  fe                       MOV R6,A
CODE:2684  78 2b                    MOV R0,#0x2b
CODE:2686  e6                       MOV A,@R0
CODE:2687  fd                       MOV R5,A
CODE:2688  2e                       ADD A,R6
CODE:2689  90 07 a8                 MOV DPTR,#0x7a8
CODE:268c  f0                       MOVX @DPTR,A
CODE:268d  20 16 03                 JB 0x16,0x2693
CODE:2690  02 27 ba                 LJMP 0x27ba
LAB_CODE_2693:
CODE:2693  ec                       MOV A,R4   ; XREF: CODE:268d 
CODE:2694  b4 02 0c                 CJNE A,#0x2,0x26a3
CODE:2697  ed                       MOV A,R5
CODE:2698  b4 03 08                 CJNE A,#0x3,0x26a3
CODE:269b  90 07 c5                 MOV DPTR,#0x7c5
CODE:269e  74 52                    MOV A,#0x52
CODE:26a0  02 27 2d                 LJMP 0x272d
LAB_CODE_26a3:
CODE:26a3  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:2694 CODE:2698 
CODE:26a6  e0                       MOVX A,@DPTR
CODE:26a7  b4 03 0d                 CJNE A,#0x3,0x26b7
CODE:26aa  78 2b                    MOV R0,#0x2b
CODE:26ac  e6                       MOV A,@R0
CODE:26ad  b4 02 07                 CJNE A,#0x2,0x26b7
CODE:26b0  90 07 c5                 MOV DPTR,#0x7c5
CODE:26b3  74 50                    MOV A,#0x50
CODE:26b5  80 76                    SJMP 0x272d
LAB_CODE_26b7:
CODE:26b7  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:26a7 CODE:26ad 
CODE:26ba  e0                       MOVX A,@DPTR
CODE:26bb  b4 03 0d                 CJNE A,#0x3,0x26cb
CODE:26be  78 2b                    MOV R0,#0x2b
CODE:26c0  e6                       MOV A,@R0
CODE:26c1  b4 03 07                 CJNE A,#0x3,0x26cb
CODE:26c4  90 07 c5                 MOV DPTR,#0x7c5
CODE:26c7  74 51                    MOV A,#0x51
CODE:26c9  80 62                    SJMP 0x272d
LAB_CODE_26cb:
CODE:26cb  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:26bb CODE:26c1 
CODE:26ce  e0                       MOVX A,@DPTR
CODE:26cf  b4 03 0d                 CJNE A,#0x3,0x26df
CODE:26d2  78 2b                    MOV R0,#0x2b
CODE:26d4  e6                       MOV A,@R0
CODE:26d5  b4 04 07                 CJNE A,#0x4,0x26df
CODE:26d8  90 07 c5                 MOV DPTR,#0x7c5
CODE:26db  74 4f                    MOV A,#0x4f
CODE:26dd  80 4e                    SJMP 0x272d
LAB_CODE_26df:
CODE:26df  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:26cf CODE:26d5 
CODE:26e2  e0                       MOVX A,@DPTR
CODE:26e3  b4 04 0d                 CJNE A,#0x4,0x26f3
CODE:26e6  78 2b                    MOV R0,#0x2b
CODE:26e8  e6                       MOV A,@R0
CODE:26e9  b4 11 07                 CJNE A,#0x11,0x26f3
CODE:26ec  90 07 c5                 MOV DPTR,#0x7c5
CODE:26ef  74 1a                    MOV A,#0x1a
CODE:26f1  80 3a                    SJMP 0x272d
LAB_CODE_26f3:
CODE:26f3  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:26e3 CODE:26e9 
CODE:26f6  e0                       MOVX A,@DPTR
CODE:26f7  b4 05 0d                 CJNE A,#0x5,0x2707
CODE:26fa  78 2b                    MOV R0,#0x2b
CODE:26fc  e6                       MOV A,@R0
CODE:26fd  b4 10 07                 CJNE A,#0x10,0x2707
CODE:2700  90 07 c5                 MOV DPTR,#0x7c5
CODE:2703  74 04                    MOV A,#0x4
CODE:2705  80 26                    SJMP 0x272d
LAB_CODE_2707:
CODE:2707  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:26f7 CODE:26fd 
CODE:270a  e0                       MOVX A,@DPTR
CODE:270b  b4 05 0d                 CJNE A,#0x5,0x271b
CODE:270e  78 2b                    MOV R0,#0x2b
CODE:2710  e6                       MOV A,@R0
CODE:2711  b4 11 07                 CJNE A,#0x11,0x271b
CODE:2714  90 07 c5                 MOV DPTR,#0x7c5
CODE:2717  74 16                    MOV A,#0x16
CODE:2719  80 12                    SJMP 0x272d
LAB_CODE_271b:
CODE:271b  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:270b CODE:2711 
CODE:271e  e0                       MOVX A,@DPTR
CODE:271f  b4 05 0f                 CJNE A,#0x5,0x2731
CODE:2722  78 2b                    MOV R0,#0x2b
CODE:2724  e6                       MOV A,@R0
CODE:2725  b4 12 09                 CJNE A,#0x12,0x2731
CODE:2728  90 07 c5                 MOV DPTR,#0x7c5
CODE:272b  74 07                    MOV A,#0x7
LAB_CODE_272d:
CODE:272d  f0                       MOVX @DPTR,A   ; XREF: CODE:26a0 CODE:26b5 CODE:26c9 CODE:26dd CODE:26f1 CODE:2705 CODE:2719 
CODE:272e  02 2d 58                 LJMP 0x2d58
LAB_CODE_2731:
CODE:2731  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:271f CODE:2725 
CODE:2734  e0                       MOVX A,@DPTR
CODE:2735  f9                       MOV R1,A
CODE:2736  75 f0 17                 MOV B,#0x17
CODE:2739  a4                       MUL AB
CODE:273a  ff                       MOV R7,A
CODE:273b  78 2b                    MOV R0,#0x2b
CODE:273d  e6                       MOV A,@R0
CODE:273e  7c 00                    MOV R4,#0x0
CODE:2740  2f                       ADD A,R7
CODE:2741  ff                       MOV R7,A
CODE:2742  ec                       MOV A,R4
CODE:2743  35 f0                    ADDC A,B
CODE:2745  fe                       MOV R6,A
CODE:2746  ef                       MOV A,R7
CODE:2747  78 02                    MOV R0,#0x2
LAB_CODE_2749:
CODE:2749  c3                       CLR CY   ; XREF: CODE:274e 
CODE:274a  33                       RLC A
CODE:274b  ce                       XCH A,R6
CODE:274c  33                       RLC A
CODE:274d  ce                       XCH A,R6
CODE:274e  d8 f9                    DJNZ R0,0x2749
CODE:2750  fb                       MOV R3,A
CODE:2751  aa 06                    MOV R2,0x06
CODE:2753  24 00                    ADD A,#0x0
CODE:2755  f5 82                    MOV DPL,A
CODE:2757  74 e0                    MOV A,#0xe0
CODE:2759  3a                       ADDC A,R2
CODE:275a  f5 83                    MOV DPH,A
CODE:275c  12 81 77                 LCALL 0x8177
CODE:275f  90 07 c5                 MOV DPTR,#0x7c5
CODE:2762  ef                       MOV A,R7
CODE:2763  f0                       MOVX @DPTR,A
CODE:2764  74 00                    MOV A,#0x0
CODE:2766  2b                       ADD A,R3
CODE:2767  f5 82                    MOV DPL,A
CODE:2769  74 e0                    MOV A,#0xe0
CODE:276b  3a                       ADDC A,R2
CODE:276c  f5 83                    MOV DPH,A
CODE:276e  12 81 77                 LCALL 0x8177
CODE:2771  78 08                    MOV R0,#0x8
CODE:2773  12 81 45                 LCALL 0x8145
CODE:2776  e4                       CLR A
CODE:2777  90 07 c6                 MOV DPTR,#0x7c6
CODE:277a  ef                       MOV A,R7
CODE:277b  f0                       MOVX @DPTR,A
CODE:277c  e9                       MOV A,R1
CODE:277d  75 f0 17                 MOV B,#0x17
CODE:2780  a4                       MUL AB
CODE:2781  ff                       MOV R7,A
CODE:2782  78 2b                    MOV R0,#0x2b
CODE:2784  e6                       MOV A,@R0
CODE:2785  7c 00                    MOV R4,#0x0
CODE:2787  2f                       ADD A,R7
CODE:2788  ff                       MOV R7,A
CODE:2789  ec                       MOV A,R4
CODE:278a  35 f0                    ADDC A,B
CODE:278c  fe                       MOV R6,A
CODE:278d  ef                       MOV A,R7
CODE:278e  78 02                    MOV R0,#0x2
LAB_CODE_2790:
CODE:2790  c3                       CLR CY   ; XREF: CODE:2795 
CODE:2791  33                       RLC A
CODE:2792  ce                       XCH A,R6
CODE:2793  33                       RLC A
CODE:2794  ce                       XCH A,R6
CODE:2795  d8 f9                    DJNZ R0,0x2790
CODE:2797  fb                       MOV R3,A
CODE:2798  aa 06                    MOV R2,0x06
CODE:279a  24 00                    ADD A,#0x0
CODE:279c  f5 82                    MOV DPL,A
CODE:279e  74 e0                    MOV A,#0xe0
CODE:27a0  3a                       ADDC A,R2
CODE:27a1  f5 83                    MOV DPH,A
CODE:27a3  12 81 77                 LCALL 0x8177
CODE:27a6  78 10                    MOV R0,#0x10
CODE:27a8  12 81 45                 LCALL 0x8145
CODE:27ab  90 07 c7                 MOV DPTR,#0x7c7
CODE:27ae  ef                       MOV A,R7
CODE:27af  f0                       MOVX @DPTR,A
CODE:27b0  74 00                    MOV A,#0x0
CODE:27b2  2b                       ADD A,R3
CODE:27b3  f5 82                    MOV DPL,A
CODE:27b5  74 e0                    MOV A,#0xe0
CODE:27b7  02 2b 45                 LJMP 0x2b45
LAB_CODE_27ba:
CODE:27ba  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:2690 
CODE:27bd  e0                       MOVX A,@DPTR
CODE:27be  64 04                    XRL A,#0x4
CODE:27c0  60 03                    JZ 0x27c5
CODE:27c2  02 28 53                 LJMP 0x2853
LAB_CODE_27c5:
CODE:27c5  78 2b                    MOV R0,#0x2b   ; XREF: CODE:27c0 
CODE:27c7  e6                       MOV A,@R0
CODE:27c8  64 02                    XRL A,#0x2
CODE:27ca  60 03                    JZ 0x27cf
CODE:27cc  02 28 53                 LJMP 0x2853
LAB_CODE_27cf:
CODE:27cf  e0                       MOVX A,@DPTR   ; XREF: CODE:27ca 
CODE:27d0  f9                       MOV R1,A
CODE:27d1  75 f0 17                 MOV B,#0x17
CODE:27d4  a4                       MUL AB
CODE:27d5  ff                       MOV R7,A
CODE:27d6  e6                       MOV A,@R0
CODE:27d7  7c 00                    MOV R4,#0x0
CODE:27d9  2f                       ADD A,R7
CODE:27da  ff                       MOV R7,A
CODE:27db  ec                       MOV A,R4
CODE:27dc  35 f0                    ADDC A,B
CODE:27de  fe                       MOV R6,A
CODE:27df  ef                       MOV A,R7
CODE:27e0  78 02                    MOV R0,#0x2
LAB_CODE_27e2:
CODE:27e2  c3                       CLR CY   ; XREF: CODE:27e7 
CODE:27e3  33                       RLC A
CODE:27e4  ce                       XCH A,R6
CODE:27e5  33                       RLC A
CODE:27e6  ce                       XCH A,R6
CODE:27e7  d8 f9                    DJNZ R0,0x27e2
CODE:27e9  fb                       MOV R3,A
CODE:27ea  aa 06                    MOV R2,0x06
CODE:27ec  24 57                    ADD A,#0x57
CODE:27ee  f5 82                    MOV DPL,A
CODE:27f0  74 64                    MOV A,#0x64
CODE:27f2  3a                       ADDC A,R2
CODE:27f3  f5 83                    MOV DPH,A
CODE:27f5  12 81 77                 LCALL 0x8177
CODE:27f8  90 07 c5                 MOV DPTR,#0x7c5
CODE:27fb  ef                       MOV A,R7
CODE:27fc  f0                       MOVX @DPTR,A
CODE:27fd  74 57                    MOV A,#0x57
CODE:27ff  2b                       ADD A,R3
CODE:2800  f5 82                    MOV DPL,A
CODE:2802  74 64                    MOV A,#0x64
CODE:2804  3a                       ADDC A,R2
CODE:2805  f5 83                    MOV DPH,A
CODE:2807  12 81 77                 LCALL 0x8177
CODE:280a  78 08                    MOV R0,#0x8
CODE:280c  12 81 45                 LCALL 0x8145
CODE:280f  e4                       CLR A
CODE:2810  90 07 c6                 MOV DPTR,#0x7c6
CODE:2813  ef                       MOV A,R7
CODE:2814  f0                       MOVX @DPTR,A
CODE:2815  e9                       MOV A,R1
CODE:2816  75 f0 17                 MOV B,#0x17
CODE:2819  a4                       MUL AB
CODE:281a  ff                       MOV R7,A
CODE:281b  78 2b                    MOV R0,#0x2b
CODE:281d  e6                       MOV A,@R0
CODE:281e  7c 00                    MOV R4,#0x0
CODE:2820  2f                       ADD A,R7
CODE:2821  ff                       MOV R7,A
CODE:2822  ec                       MOV A,R4
CODE:2823  35 f0                    ADDC A,B
CODE:2825  fe                       MOV R6,A
CODE:2826  ef                       MOV A,R7
CODE:2827  78 02                    MOV R0,#0x2
LAB_CODE_2829:
CODE:2829  c3                       CLR CY   ; XREF: CODE:282e 
CODE:282a  33                       RLC A
CODE:282b  ce                       XCH A,R6
CODE:282c  33                       RLC A
CODE:282d  ce                       XCH A,R6
CODE:282e  d8 f9                    DJNZ R0,0x2829
CODE:2830  fb                       MOV R3,A
CODE:2831  aa 06                    MOV R2,0x06
CODE:2833  24 57                    ADD A,#0x57
CODE:2835  f5 82                    MOV DPL,A
CODE:2837  74 64                    MOV A,#0x64
CODE:2839  3a                       ADDC A,R2
CODE:283a  f5 83                    MOV DPH,A
CODE:283c  12 81 77                 LCALL 0x8177
CODE:283f  78 10                    MOV R0,#0x10
CODE:2841  12 81 45                 LCALL 0x8145
CODE:2844  90 07 c7                 MOV DPTR,#0x7c7
CODE:2847  ef                       MOV A,R7
CODE:2848  f0                       MOVX @DPTR,A
CODE:2849  74 57                    MOV A,#0x57
CODE:284b  2b                       ADD A,R3
CODE:284c  f5 82                    MOV DPL,A
CODE:284e  74 64                    MOV A,#0x64
CODE:2850  02 2b 45                 LJMP 0x2b45
LAB_CODE_2853:
CODE:2853  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:27c2 CODE:27cc 
CODE:2856  e0                       MOVX A,@DPTR
CODE:2857  64 03                    XRL A,#0x3
CODE:2859  60 03                    JZ 0x285e
CODE:285b  02 28 ec                 LJMP 0x28ec
LAB_CODE_285e:
CODE:285e  78 2b                    MOV R0,#0x2b   ; XREF: CODE:2859 
CODE:2860  e6                       MOV A,@R0
CODE:2861  64 0d                    XRL A,#0xd
CODE:2863  60 03                    JZ 0x2868
CODE:2865  02 28 ec                 LJMP 0x28ec
LAB_CODE_2868:
CODE:2868  e0                       MOVX A,@DPTR   ; XREF: CODE:2863 
CODE:2869  f9                       MOV R1,A
CODE:286a  75 f0 17                 MOV B,#0x17
CODE:286d  a4                       MUL AB
CODE:286e  ff                       MOV R7,A
CODE:286f  e6                       MOV A,@R0
CODE:2870  7c 00                    MOV R4,#0x0
CODE:2872  2f                       ADD A,R7
CODE:2873  ff                       MOV R7,A
CODE:2874  ec                       MOV A,R4
CODE:2875  35 f0                    ADDC A,B
CODE:2877  fe                       MOV R6,A
CODE:2878  ef                       MOV A,R7
CODE:2879  78 02                    MOV R0,#0x2
LAB_CODE_287b:
CODE:287b  c3                       CLR CY   ; XREF: CODE:2880 
CODE:287c  33                       RLC A
CODE:287d  ce                       XCH A,R6
CODE:287e  33                       RLC A
CODE:287f  ce                       XCH A,R6
CODE:2880  d8 f9                    DJNZ R0,0x287b
CODE:2882  fb                       MOV R3,A
CODE:2883  aa 06                    MOV R2,0x06
CODE:2885  24 57                    ADD A,#0x57
CODE:2887  f5 82                    MOV DPL,A
CODE:2889  74 64                    MOV A,#0x64
CODE:288b  3a                       ADDC A,R2
CODE:288c  f5 83                    MOV DPH,A
CODE:288e  12 81 77                 LCALL 0x8177
CODE:2891  90 07 c5                 MOV DPTR,#0x7c5
CODE:2894  ef                       MOV A,R7
CODE:2895  f0                       MOVX @DPTR,A
CODE:2896  74 57                    MOV A,#0x57
CODE:2898  2b                       ADD A,R3
CODE:2899  f5 82                    MOV DPL,A
CODE:289b  74 64                    MOV A,#0x64
CODE:289d  3a                       ADDC A,R2
CODE:289e  f5 83                    MOV DPH,A
CODE:28a0  12 81 77                 LCALL 0x8177
CODE:28a3  78 08                    MOV R0,#0x8
CODE:28a5  12 81 45                 LCALL 0x8145
CODE:28a8  e4                       CLR A
CODE:28a9  90 07 c6                 MOV DPTR,#0x7c6
CODE:28ac  ef                       MOV A,R7
CODE:28ad  f0                       MOVX @DPTR,A
CODE:28ae  e9                       MOV A,R1
CODE:28af  75 f0 17                 MOV B,#0x17
CODE:28b2  a4                       MUL AB
CODE:28b3  ff                       MOV R7,A
CODE:28b4  78 2b                    MOV R0,#0x2b
CODE:28b6  e6                       MOV A,@R0
CODE:28b7  7c 00                    MOV R4,#0x0
CODE:28b9  2f                       ADD A,R7
CODE:28ba  ff                       MOV R7,A
CODE:28bb  ec                       MOV A,R4
CODE:28bc  35 f0                    ADDC A,B
CODE:28be  fe                       MOV R6,A
CODE:28bf  ef                       MOV A,R7
CODE:28c0  78 02                    MOV R0,#0x2
LAB_CODE_28c2:
CODE:28c2  c3                       CLR CY   ; XREF: CODE:28c7 
CODE:28c3  33                       RLC A
CODE:28c4  ce                       XCH A,R6
CODE:28c5  33                       RLC A
CODE:28c6  ce                       XCH A,R6
CODE:28c7  d8 f9                    DJNZ R0,0x28c2
CODE:28c9  fb                       MOV R3,A
CODE:28ca  aa 06                    MOV R2,0x06
CODE:28cc  24 57                    ADD A,#0x57
CODE:28ce  f5 82                    MOV DPL,A
CODE:28d0  74 64                    MOV A,#0x64
CODE:28d2  3a                       ADDC A,R2
CODE:28d3  f5 83                    MOV DPH,A
CODE:28d5  12 81 77                 LCALL 0x8177
CODE:28d8  78 10                    MOV R0,#0x10
CODE:28da  12 81 45                 LCALL 0x8145
CODE:28dd  90 07 c7                 MOV DPTR,#0x7c7
CODE:28e0  ef                       MOV A,R7
CODE:28e1  f0                       MOVX @DPTR,A
CODE:28e2  74 57                    MOV A,#0x57
CODE:28e4  2b                       ADD A,R3
CODE:28e5  f5 82                    MOV DPL,A
CODE:28e7  74 64                    MOV A,#0x64
CODE:28e9  02 2b 45                 LJMP 0x2b45
LAB_CODE_28ec:
CODE:28ec  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:285b CODE:2865 
CODE:28ef  e0                       MOVX A,@DPTR
CODE:28f0  60 03                    JZ 0x28f5
CODE:28f2  02 29 83                 LJMP 0x2983
LAB_CODE_28f5:
CODE:28f5  78 2b                    MOV R0,#0x2b   ; XREF: CODE:28f0 
CODE:28f7  e6                       MOV A,@R0
CODE:28f8  64 13                    XRL A,#0x13
CODE:28fa  60 03                    JZ 0x28ff
CODE:28fc  02 29 83                 LJMP 0x2983
LAB_CODE_28ff:
CODE:28ff  e0                       MOVX A,@DPTR   ; XREF: CODE:28fa 
CODE:2900  f9                       MOV R1,A
CODE:2901  75 f0 17                 MOV B,#0x17
CODE:2904  a4                       MUL AB
CODE:2905  ff                       MOV R7,A
CODE:2906  e6                       MOV A,@R0
CODE:2907  7c 00                    MOV R4,#0x0
CODE:2909  2f                       ADD A,R7
CODE:290a  ff                       MOV R7,A
CODE:290b  ec                       MOV A,R4
CODE:290c  35 f0                    ADDC A,B
CODE:290e  fe                       MOV R6,A
CODE:290f  ef                       MOV A,R7
CODE:2910  78 02                    MOV R0,#0x2
LAB_CODE_2912:
CODE:2912  c3                       CLR CY   ; XREF: CODE:2917 
CODE:2913  33                       RLC A
CODE:2914  ce                       XCH A,R6
CODE:2915  33                       RLC A
CODE:2916  ce                       XCH A,R6
CODE:2917  d8 f9                    DJNZ R0,0x2912
CODE:2919  fb                       MOV R3,A
CODE:291a  aa 06                    MOV R2,0x06
CODE:291c  24 57                    ADD A,#0x57
CODE:291e  f5 82                    MOV DPL,A
CODE:2920  74 64                    MOV A,#0x64
CODE:2922  3a                       ADDC A,R2
CODE:2923  f5 83                    MOV DPH,A
CODE:2925  12 81 77                 LCALL 0x8177
CODE:2928  90 07 c5                 MOV DPTR,#0x7c5
CODE:292b  ef                       MOV A,R7
CODE:292c  f0                       MOVX @DPTR,A
CODE:292d  74 57                    MOV A,#0x57
CODE:292f  2b                       ADD A,R3
CODE:2930  f5 82                    MOV DPL,A
CODE:2932  74 64                    MOV A,#0x64
CODE:2934  3a                       ADDC A,R2
CODE:2935  f5 83                    MOV DPH,A
CODE:2937  12 81 77                 LCALL 0x8177
CODE:293a  78 08                    MOV R0,#0x8
CODE:293c  12 81 45                 LCALL 0x8145
CODE:293f  e4                       CLR A
CODE:2940  90 07 c6                 MOV DPTR,#0x7c6
CODE:2943  ef                       MOV A,R7
CODE:2944  f0                       MOVX @DPTR,A
CODE:2945  e9                       MOV A,R1
CODE:2946  75 f0 17                 MOV B,#0x17
CODE:2949  a4                       MUL AB
CODE:294a  ff                       MOV R7,A
CODE:294b  78 2b                    MOV R0,#0x2b
CODE:294d  e6                       MOV A,@R0
CODE:294e  7c 00                    MOV R4,#0x0
CODE:2950  2f                       ADD A,R7
CODE:2951  ff                       MOV R7,A
CODE:2952  ec                       MOV A,R4
CODE:2953  35 f0                    ADDC A,B
CODE:2955  fe                       MOV R6,A
CODE:2956  ef                       MOV A,R7
CODE:2957  78 02                    MOV R0,#0x2
LAB_CODE_2959:
CODE:2959  c3                       CLR CY   ; XREF: CODE:295e 
CODE:295a  33                       RLC A
CODE:295b  ce                       XCH A,R6
CODE:295c  33                       RLC A
CODE:295d  ce                       XCH A,R6
CODE:295e  d8 f9                    DJNZ R0,0x2959
CODE:2960  fb                       MOV R3,A
CODE:2961  aa 06                    MOV R2,0x06
CODE:2963  24 57                    ADD A,#0x57
CODE:2965  f5 82                    MOV DPL,A
CODE:2967  74 64                    MOV A,#0x64
CODE:2969  3a                       ADDC A,R2
CODE:296a  f5 83                    MOV DPH,A
CODE:296c  12 81 77                 LCALL 0x8177
CODE:296f  78 10                    MOV R0,#0x10
CODE:2971  12 81 45                 LCALL 0x8145
CODE:2974  90 07 c7                 MOV DPTR,#0x7c7
CODE:2977  ef                       MOV A,R7
CODE:2978  f0                       MOVX @DPTR,A
CODE:2979  74 57                    MOV A,#0x57
CODE:297b  2b                       ADD A,R3
CODE:297c  f5 82                    MOV DPL,A
CODE:297e  74 64                    MOV A,#0x64
CODE:2980  02 2b 45                 LJMP 0x2b45
LAB_CODE_2983:
CODE:2983  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:28f2 CODE:28fc 
CODE:2986  e0                       MOVX A,@DPTR
CODE:2987  60 03                    JZ 0x298c
CODE:2989  02 2a 1a                 LJMP 0x2a1a
LAB_CODE_298c:
CODE:298c  78 2b                    MOV R0,#0x2b   ; XREF: CODE:2987 
CODE:298e  e6                       MOV A,@R0
CODE:298f  64 14                    XRL A,#0x14
CODE:2991  60 03                    JZ 0x2996
CODE:2993  02 2a 1a                 LJMP 0x2a1a
LAB_CODE_2996:
CODE:2996  e0                       MOVX A,@DPTR   ; XREF: CODE:2991 
CODE:2997  f9                       MOV R1,A
CODE:2998  75 f0 17                 MOV B,#0x17
CODE:299b  a4                       MUL AB
CODE:299c  ff                       MOV R7,A
CODE:299d  e6                       MOV A,@R0
CODE:299e  7c 00                    MOV R4,#0x0
CODE:29a0  2f                       ADD A,R7
CODE:29a1  ff                       MOV R7,A
CODE:29a2  ec                       MOV A,R4
CODE:29a3  35 f0                    ADDC A,B
CODE:29a5  fe                       MOV R6,A
CODE:29a6  ef                       MOV A,R7
CODE:29a7  78 02                    MOV R0,#0x2
LAB_CODE_29a9:
CODE:29a9  c3                       CLR CY   ; XREF: CODE:29ae 
CODE:29aa  33                       RLC A
CODE:29ab  ce                       XCH A,R6
CODE:29ac  33                       RLC A
CODE:29ad  ce                       XCH A,R6
CODE:29ae  d8 f9                    DJNZ R0,0x29a9
CODE:29b0  fb                       MOV R3,A
CODE:29b1  aa 06                    MOV R2,0x06
CODE:29b3  24 57                    ADD A,#0x57
CODE:29b5  f5 82                    MOV DPL,A
CODE:29b7  74 64                    MOV A,#0x64
CODE:29b9  3a                       ADDC A,R2
CODE:29ba  f5 83                    MOV DPH,A
CODE:29bc  12 81 77                 LCALL 0x8177
CODE:29bf  90 07 c5                 MOV DPTR,#0x7c5
CODE:29c2  ef                       MOV A,R7
CODE:29c3  f0                       MOVX @DPTR,A
CODE:29c4  74 57                    MOV A,#0x57
CODE:29c6  2b                       ADD A,R3
CODE:29c7  f5 82                    MOV DPL,A
CODE:29c9  74 64                    MOV A,#0x64
CODE:29cb  3a                       ADDC A,R2
CODE:29cc  f5 83                    MOV DPH,A
CODE:29ce  12 81 77                 LCALL 0x8177
CODE:29d1  78 08                    MOV R0,#0x8
CODE:29d3  12 81 45                 LCALL 0x8145
CODE:29d6  e4                       CLR A
CODE:29d7  90 07 c6                 MOV DPTR,#0x7c6
CODE:29da  ef                       MOV A,R7
CODE:29db  f0                       MOVX @DPTR,A
CODE:29dc  e9                       MOV A,R1
CODE:29dd  75 f0 17                 MOV B,#0x17
CODE:29e0  a4                       MUL AB
CODE:29e1  ff                       MOV R7,A
CODE:29e2  78 2b                    MOV R0,#0x2b
CODE:29e4  e6                       MOV A,@R0
CODE:29e5  7c 00                    MOV R4,#0x0
CODE:29e7  2f                       ADD A,R7
CODE:29e8  ff                       MOV R7,A
CODE:29e9  ec                       MOV A,R4
CODE:29ea  35 f0                    ADDC A,B
CODE:29ec  fe                       MOV R6,A
CODE:29ed  ef                       MOV A,R7
CODE:29ee  78 02                    MOV R0,#0x2
LAB_CODE_29f0:
CODE:29f0  c3                       CLR CY   ; XREF: CODE:29f5 
CODE:29f1  33                       RLC A
CODE:29f2  ce                       XCH A,R6
CODE:29f3  33                       RLC A
CODE:29f4  ce                       XCH A,R6
CODE:29f5  d8 f9                    DJNZ R0,0x29f0
CODE:29f7  fb                       MOV R3,A
CODE:29f8  aa 06                    MOV R2,0x06
CODE:29fa  24 57                    ADD A,#0x57
CODE:29fc  f5 82                    MOV DPL,A
CODE:29fe  74 64                    MOV A,#0x64
CODE:2a00  3a                       ADDC A,R2
CODE:2a01  f5 83                    MOV DPH,A
CODE:2a03  12 81 77                 LCALL 0x8177
CODE:2a06  78 10                    MOV R0,#0x10
CODE:2a08  12 81 45                 LCALL 0x8145
CODE:2a0b  90 07 c7                 MOV DPTR,#0x7c7
CODE:2a0e  ef                       MOV A,R7
CODE:2a0f  f0                       MOVX @DPTR,A
CODE:2a10  74 57                    MOV A,#0x57
CODE:2a12  2b                       ADD A,R3
CODE:2a13  f5 82                    MOV DPL,A
CODE:2a15  74 64                    MOV A,#0x64
CODE:2a17  02 2b 45                 LJMP 0x2b45
LAB_CODE_2a1a:
CODE:2a1a  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:2989 CODE:2993 
CODE:2a1d  e0                       MOVX A,@DPTR
CODE:2a1e  60 03                    JZ 0x2a23
CODE:2a20  02 2a b1                 LJMP 0x2ab1
LAB_CODE_2a23:
CODE:2a23  78 2b                    MOV R0,#0x2b   ; XREF: CODE:2a1e 
CODE:2a25  e6                       MOV A,@R0
CODE:2a26  64 15                    XRL A,#0x15
CODE:2a28  60 03                    JZ 0x2a2d
CODE:2a2a  02 2a b1                 LJMP 0x2ab1
LAB_CODE_2a2d:
CODE:2a2d  e0                       MOVX A,@DPTR   ; XREF: CODE:2a28 
CODE:2a2e  f9                       MOV R1,A
CODE:2a2f  75 f0 17                 MOV B,#0x17
CODE:2a32  a4                       MUL AB
CODE:2a33  ff                       MOV R7,A
CODE:2a34  e6                       MOV A,@R0
CODE:2a35  7c 00                    MOV R4,#0x0
CODE:2a37  2f                       ADD A,R7
CODE:2a38  ff                       MOV R7,A
CODE:2a39  ec                       MOV A,R4
CODE:2a3a  35 f0                    ADDC A,B
CODE:2a3c  fe                       MOV R6,A
CODE:2a3d  ef                       MOV A,R7
CODE:2a3e  78 02                    MOV R0,#0x2
LAB_CODE_2a40:
CODE:2a40  c3                       CLR CY   ; XREF: CODE:2a45 
CODE:2a41  33                       RLC A
CODE:2a42  ce                       XCH A,R6
CODE:2a43  33                       RLC A
CODE:2a44  ce                       XCH A,R6
CODE:2a45  d8 f9                    DJNZ R0,0x2a40
CODE:2a47  fb                       MOV R3,A
CODE:2a48  aa 06                    MOV R2,0x06
CODE:2a4a  24 57                    ADD A,#0x57
CODE:2a4c  f5 82                    MOV DPL,A
CODE:2a4e  74 64                    MOV A,#0x64
CODE:2a50  3a                       ADDC A,R2
CODE:2a51  f5 83                    MOV DPH,A
CODE:2a53  12 81 77                 LCALL 0x8177
CODE:2a56  90 07 c5                 MOV DPTR,#0x7c5
CODE:2a59  ef                       MOV A,R7
CODE:2a5a  f0                       MOVX @DPTR,A
CODE:2a5b  74 57                    MOV A,#0x57
CODE:2a5d  2b                       ADD A,R3
CODE:2a5e  f5 82                    MOV DPL,A
CODE:2a60  74 64                    MOV A,#0x64
CODE:2a62  3a                       ADDC A,R2
CODE:2a63  f5 83                    MOV DPH,A
CODE:2a65  12 81 77                 LCALL 0x8177
CODE:2a68  78 08                    MOV R0,#0x8
CODE:2a6a  12 81 45                 LCALL 0x8145
CODE:2a6d  e4                       CLR A
CODE:2a6e  90 07 c6                 MOV DPTR,#0x7c6
CODE:2a71  ef                       MOV A,R7
CODE:2a72  f0                       MOVX @DPTR,A
CODE:2a73  e9                       MOV A,R1
CODE:2a74  75 f0 17                 MOV B,#0x17
CODE:2a77  a4                       MUL AB
CODE:2a78  ff                       MOV R7,A
CODE:2a79  78 2b                    MOV R0,#0x2b
CODE:2a7b  e6                       MOV A,@R0
CODE:2a7c  7c 00                    MOV R4,#0x0
CODE:2a7e  2f                       ADD A,R7
CODE:2a7f  ff                       MOV R7,A
CODE:2a80  ec                       MOV A,R4
CODE:2a81  35 f0                    ADDC A,B
CODE:2a83  fe                       MOV R6,A
CODE:2a84  ef                       MOV A,R7
CODE:2a85  78 02                    MOV R0,#0x2
LAB_CODE_2a87:
CODE:2a87  c3                       CLR CY   ; XREF: CODE:2a8c 
CODE:2a88  33                       RLC A
CODE:2a89  ce                       XCH A,R6
CODE:2a8a  33                       RLC A
CODE:2a8b  ce                       XCH A,R6
CODE:2a8c  d8 f9                    DJNZ R0,0x2a87
CODE:2a8e  fb                       MOV R3,A
CODE:2a8f  aa 06                    MOV R2,0x06
CODE:2a91  24 57                    ADD A,#0x57
CODE:2a93  f5 82                    MOV DPL,A
CODE:2a95  74 64                    MOV A,#0x64
CODE:2a97  3a                       ADDC A,R2
CODE:2a98  f5 83                    MOV DPH,A
CODE:2a9a  12 81 77                 LCALL 0x8177
CODE:2a9d  78 10                    MOV R0,#0x10
CODE:2a9f  12 81 45                 LCALL 0x8145
CODE:2aa2  90 07 c7                 MOV DPTR,#0x7c7
CODE:2aa5  ef                       MOV A,R7
CODE:2aa6  f0                       MOVX @DPTR,A
CODE:2aa7  74 57                    MOV A,#0x57
CODE:2aa9  2b                       ADD A,R3
CODE:2aaa  f5 82                    MOV DPL,A
CODE:2aac  74 64                    MOV A,#0x64
CODE:2aae  02 2b 45                 LJMP 0x2b45
LAB_CODE_2ab1:
CODE:2ab1  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:2a20 CODE:2a2a 
CODE:2ab4  e0                       MOVX A,@DPTR
CODE:2ab5  60 03                    JZ 0x2aba
CODE:2ab7  02 2b 59                 LJMP 0x2b59
LAB_CODE_2aba:
CODE:2aba  78 2b                    MOV R0,#0x2b   ; XREF: CODE:2ab5 
CODE:2abc  e6                       MOV A,@R0
CODE:2abd  64 16                    XRL A,#0x16
CODE:2abf  60 03                    JZ 0x2ac4
CODE:2ac1  02 2b 59                 LJMP 0x2b59
LAB_CODE_2ac4:
CODE:2ac4  e0                       MOVX A,@DPTR   ; XREF: CODE:2abf 
CODE:2ac5  f9                       MOV R1,A
CODE:2ac6  75 f0 17                 MOV B,#0x17
CODE:2ac9  a4                       MUL AB
CODE:2aca  ff                       MOV R7,A
CODE:2acb  e6                       MOV A,@R0
CODE:2acc  7c 00                    MOV R4,#0x0
CODE:2ace  2f                       ADD A,R7
CODE:2acf  ff                       MOV R7,A
CODE:2ad0  ec                       MOV A,R4
CODE:2ad1  35 f0                    ADDC A,B
CODE:2ad3  fe                       MOV R6,A
CODE:2ad4  ef                       MOV A,R7
CODE:2ad5  78 02                    MOV R0,#0x2
LAB_CODE_2ad7:
CODE:2ad7  c3                       CLR CY   ; XREF: CODE:2adc 
CODE:2ad8  33                       RLC A
CODE:2ad9  ce                       XCH A,R6
CODE:2ada  33                       RLC A
CODE:2adb  ce                       XCH A,R6
CODE:2adc  d8 f9                    DJNZ R0,0x2ad7
CODE:2ade  fb                       MOV R3,A
CODE:2adf  aa 06                    MOV R2,0x06
CODE:2ae1  24 57                    ADD A,#0x57
CODE:2ae3  f5 82                    MOV DPL,A
CODE:2ae5  74 64                    MOV A,#0x64
CODE:2ae7  3a                       ADDC A,R2
CODE:2ae8  f5 83                    MOV DPH,A
CODE:2aea  12 81 77                 LCALL 0x8177
CODE:2aed  90 07 c5                 MOV DPTR,#0x7c5
CODE:2af0  ef                       MOV A,R7
CODE:2af1  f0                       MOVX @DPTR,A
CODE:2af2  74 57                    MOV A,#0x57
CODE:2af4  2b                       ADD A,R3
CODE:2af5  f5 82                    MOV DPL,A
CODE:2af7  74 64                    MOV A,#0x64
CODE:2af9  3a                       ADDC A,R2
CODE:2afa  f5 83                    MOV DPH,A
CODE:2afc  12 81 77                 LCALL 0x8177
CODE:2aff  78 08                    MOV R0,#0x8
CODE:2b01  12 81 45                 LCALL 0x8145
CODE:2b04  e4                       CLR A
CODE:2b05  90 07 c6                 MOV DPTR,#0x7c6
CODE:2b08  ef                       MOV A,R7
CODE:2b09  f0                       MOVX @DPTR,A
CODE:2b0a  e9                       MOV A,R1
CODE:2b0b  75 f0 17                 MOV B,#0x17
CODE:2b0e  a4                       MUL AB
CODE:2b0f  ff                       MOV R7,A
CODE:2b10  78 2b                    MOV R0,#0x2b
CODE:2b12  e6                       MOV A,@R0
CODE:2b13  7c 00                    MOV R4,#0x0
CODE:2b15  2f                       ADD A,R7
CODE:2b16  ff                       MOV R7,A
CODE:2b17  ec                       MOV A,R4
CODE:2b18  35 f0                    ADDC A,B
CODE:2b1a  fe                       MOV R6,A
CODE:2b1b  ef                       MOV A,R7
CODE:2b1c  78 02                    MOV R0,#0x2
LAB_CODE_2b1e:
CODE:2b1e  c3                       CLR CY   ; XREF: CODE:2b23 
CODE:2b1f  33                       RLC A
CODE:2b20  ce                       XCH A,R6
CODE:2b21  33                       RLC A
CODE:2b22  ce                       XCH A,R6
CODE:2b23  d8 f9                    DJNZ R0,0x2b1e
CODE:2b25  fb                       MOV R3,A
CODE:2b26  aa 06                    MOV R2,0x06
CODE:2b28  24 57                    ADD A,#0x57
CODE:2b2a  f5 82                    MOV DPL,A
CODE:2b2c  74 64                    MOV A,#0x64
CODE:2b2e  3a                       ADDC A,R2
CODE:2b2f  f5 83                    MOV DPH,A
CODE:2b31  12 81 77                 LCALL 0x8177
CODE:2b34  78 10                    MOV R0,#0x10
CODE:2b36  12 81 45                 LCALL 0x8145
CODE:2b39  90 07 c7                 MOV DPTR,#0x7c7
CODE:2b3c  ef                       MOV A,R7
CODE:2b3d  f0                       MOVX @DPTR,A
CODE:2b3e  74 57                    MOV A,#0x57
CODE:2b40  2b                       ADD A,R3
CODE:2b41  f5 82                    MOV DPL,A
CODE:2b43  74 64                    MOV A,#0x64
LAB_CODE_2b45:
CODE:2b45  3a                       ADDC A,R2   ; XREF: CODE:27b7 CODE:2850 CODE:28e9 CODE:2980 CODE:2a17 CODE:2aae 
CODE:2b46  f5 83                    MOV DPH,A
CODE:2b48  12 81 77                 LCALL 0x8177
CODE:2b4b  78 18                    MOV R0,#0x18
CODE:2b4d  12 81 45                 LCALL 0x8145
CODE:2b50  e4                       CLR A
CODE:2b51  90 07 c8                 MOV DPTR,#0x7c8
CODE:2b54  ef                       MOV A,R7
CODE:2b55  f0                       MOVX @DPTR,A
CODE:2b56  02 2d 92                 LJMP 0x2d92
LAB_CODE_2b59:
CODE:2b59  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:2ab7 CODE:2ac1 
CODE:2b5c  e0                       MOVX A,@DPTR
CODE:2b5d  f9                       MOV R1,A
CODE:2b5e  75 f0 17                 MOV B,#0x17
CODE:2b61  a4                       MUL AB
CODE:2b62  ff                       MOV R7,A
CODE:2b63  78 2b                    MOV R0,#0x2b
CODE:2b65  e6                       MOV A,@R0
CODE:2b66  7c 00                    MOV R4,#0x0
CODE:2b68  2f                       ADD A,R7
CODE:2b69  ff                       MOV R7,A
CODE:2b6a  ec                       MOV A,R4
CODE:2b6b  35 f0                    ADDC A,B
CODE:2b6d  fe                       MOV R6,A
CODE:2b6e  ef                       MOV A,R7
CODE:2b6f  78 02                    MOV R0,#0x2
LAB_CODE_2b71:
CODE:2b71  c3                       CLR CY   ; XREF: CODE:2b76 
CODE:2b72  33                       RLC A
CODE:2b73  ce                       XCH A,R6
CODE:2b74  33                       RLC A
CODE:2b75  ce                       XCH A,R6
CODE:2b76  d8 f9                    DJNZ R0,0x2b71
CODE:2b78  fb                       MOV R3,A
CODE:2b79  aa 06                    MOV R2,0x06
CODE:2b7b  24 00                    ADD A,#0x0
CODE:2b7d  f5 82                    MOV DPL,A
CODE:2b7f  74 e0                    MOV A,#0xe0
CODE:2b81  3a                       ADDC A,R2
CODE:2b82  f5 83                    MOV DPH,A
CODE:2b84  12 81 77                 LCALL 0x8177
CODE:2b87  90 07 c5                 MOV DPTR,#0x7c5
CODE:2b8a  ef                       MOV A,R7
CODE:2b8b  f0                       MOVX @DPTR,A
CODE:2b8c  74 00                    MOV A,#0x0
CODE:2b8e  2b                       ADD A,R3
CODE:2b8f  f5 82                    MOV DPL,A
CODE:2b91  74 e0                    MOV A,#0xe0
CODE:2b93  3a                       ADDC A,R2
CODE:2b94  f5 83                    MOV DPH,A
CODE:2b96  12 81 77                 LCALL 0x8177
CODE:2b99  78 08                    MOV R0,#0x8
CODE:2b9b  12 81 45                 LCALL 0x8145
CODE:2b9e  e4                       CLR A
CODE:2b9f  90 07 c6                 MOV DPTR,#0x7c6
CODE:2ba2  ef                       MOV A,R7
CODE:2ba3  f0                       MOVX @DPTR,A
CODE:2ba4  e9                       MOV A,R1
CODE:2ba5  75 f0 17                 MOV B,#0x17
CODE:2ba8  a4                       MUL AB
CODE:2ba9  ff                       MOV R7,A
CODE:2baa  78 2b                    MOV R0,#0x2b
CODE:2bac  e6                       MOV A,@R0
CODE:2bad  f9                       MOV R1,A
CODE:2bae  7c 00                    MOV R4,#0x0
CODE:2bb0  2f                       ADD A,R7
CODE:2bb1  ff                       MOV R7,A
CODE:2bb2  ec                       MOV A,R4
CODE:2bb3  35 f0                    ADDC A,B
CODE:2bb5  fe                       MOV R6,A
CODE:2bb6  ef                       MOV A,R7
CODE:2bb7  78 02                    MOV R0,#0x2
LAB_CODE_2bb9:
CODE:2bb9  c3                       CLR CY   ; XREF: CODE:2bbe 
CODE:2bba  33                       RLC A
CODE:2bbb  ce                       XCH A,R6
CODE:2bbc  33                       RLC A
CODE:2bbd  ce                       XCH A,R6
CODE:2bbe  d8 f9                    DJNZ R0,0x2bb9
CODE:2bc0  fb                       MOV R3,A
CODE:2bc1  aa 06                    MOV R2,0x06
CODE:2bc3  24 00                    ADD A,#0x0
CODE:2bc5  f5 82                    MOV DPL,A
CODE:2bc7  74 e0                    MOV A,#0xe0
CODE:2bc9  3a                       ADDC A,R2
CODE:2bca  f5 83                    MOV DPH,A
CODE:2bcc  12 81 77                 LCALL 0x8177
CODE:2bcf  78 10                    MOV R0,#0x10
CODE:2bd1  12 81 45                 LCALL 0x8145
CODE:2bd4  90 07 c7                 MOV DPTR,#0x7c7
CODE:2bd7  ef                       MOV A,R7
CODE:2bd8  f0                       MOVX @DPTR,A
CODE:2bd9  74 00                    MOV A,#0x0
CODE:2bdb  2b                       ADD A,R3
CODE:2bdc  f5 82                    MOV DPL,A
CODE:2bde  74 e0                    MOV A,#0xe0
CODE:2be0  3a                       ADDC A,R2
CODE:2be1  f5 83                    MOV DPH,A
CODE:2be3  12 81 77                 LCALL 0x8177
CODE:2be6  78 18                    MOV R0,#0x18
CODE:2be8  12 81 45                 LCALL 0x8145
CODE:2beb  90 07 c8                 MOV DPTR,#0x7c8
CODE:2bee  ef                       MOV A,R7
CODE:2bef  f0                       MOVX @DPTR,A
CODE:2bf0  90 07 c5                 MOV DPTR,#0x7c5
CODE:2bf3  e0                       MOVX A,@DPTR
CODE:2bf4  64 cd                    XRL A,#0xcd
CODE:2bf6  60 03                    JZ 0x2bfb
CODE:2bf8  02 2d 5d                 LJMP 0x2d5d
LAB_CODE_2bfb:
CODE:2bfb  20 00 03                 JB 0x00,0x2c01   ; XREF: CODE:2bf6 
CODE:2bfe  02 2d 42                 LJMP 0x2d42
LAB_CODE_2c01:
CODE:2c01  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:2bfb 
CODE:2c04  e0                       MOVX A,@DPTR
CODE:2c05  f5 13                    MOV 0x13,A
CODE:2c07  89 12                    MOV 0x12,R1
CODE:2c09  e4                       CLR A
CODE:2c0a  f5 0f                    MOV 0x0f,A
CODE:2c0c  e5 13                    MOV A,0x13
CODE:2c0e  75 f0 17                 MOV B,#0x17
CODE:2c11  a4                       MUL AB
CODE:2c12  7c 00                    MOV R4,#0x0
CODE:2c14  25 12                    ADD A,0x12
CODE:2c16  ff                       MOV R7,A
CODE:2c17  ef                       MOV A,R7
CODE:2c18  fe                       MOV R6,A
CODE:2c19  e4                       CLR A
CODE:2c1a  24 04                    ADD A,#0x4
CODE:2c1c  ff                       MOV R7,A
CODE:2c1d  e4                       CLR A
CODE:2c1e  3e                       ADDC A,R6
CODE:2c1f  fe                       MOV R6,A
CODE:2c20  e4                       CLR A
CODE:2c21  fd                       MOV R5,A
CODE:2c22  12 b9 9e                 LCALL 0xb99e
CODE:2c25  8f 10                    MOV 0x10,R7
CODE:2c27  e5 10                    MOV A,0x10
CODE:2c29  70 03                    JNZ 0x2c2e
CODE:2c2b  02 2d 95                 LJMP 0x2d95
LAB_CODE_2c2e:
CODE:2c2e  f4                       CPL A   ; XREF: CODE:2c29 
CODE:2c2f  70 03                    JNZ 0x2c34
CODE:2c31  02 2d 95                 LJMP 0x2d95
LAB_CODE_2c34:
CODE:2c34  d2 12                    SETB 0x12   ; XREF: CODE:2c2f 
CODE:2c36  7f 14                    MOV R7,#0x14
CODE:2c38  7e 00                    MOV R6,#0x0
CODE:2c3a  12 bd 5a                 LCALL 0xbd5a
CODE:2c3d  e5 13                    MOV A,0x13
CODE:2c3f  75 f0 17                 MOV B,#0x17
CODE:2c42  a4                       MUL AB
CODE:2c43  7c 00                    MOV R4,#0x0
CODE:2c45  25 12                    ADD A,0x12
CODE:2c47  ff                       MOV R7,A
CODE:2c48  ec                       MOV A,R4
CODE:2c49  35 f0                    ADDC A,B
CODE:2c4b  ef                       MOV A,R7
CODE:2c4c  7f 00                    MOV R7,#0x0
CODE:2c4e  fe                       MOV R6,A
CODE:2c4f  e4                       CLR A
CODE:2c50  fd                       MOV R5,A
CODE:2c51  12 b9 9e                 LCALL 0xb99e
CODE:2c54  90 07 c2                 MOV DPTR,#0x7c2
CODE:2c57  ef                       MOV A,R7
CODE:2c58  f0                       MOVX @DPTR,A
CODE:2c59  7f 14                    MOV R7,#0x14
CODE:2c5b  7e 00                    MOV R6,#0x0
CODE:2c5d  12 bd 5a                 LCALL 0xbd5a
CODE:2c60  e5 13                    MOV A,0x13
CODE:2c62  75 f0 17                 MOV B,#0x17
CODE:2c65  a4                       MUL AB
CODE:2c66  7c 00                    MOV R4,#0x0
CODE:2c68  25 12                    ADD A,0x12
CODE:2c6a  ff                       MOV R7,A
CODE:2c6b  ef                       MOV A,R7
CODE:2c6c  fe                       MOV R6,A
CODE:2c6d  e4                       CLR A
CODE:2c6e  24 01                    ADD A,#0x1
CODE:2c70  ff                       MOV R7,A
CODE:2c71  e4                       CLR A
CODE:2c72  3e                       ADDC A,R6
CODE:2c73  fe                       MOV R6,A
CODE:2c74  e4                       CLR A
CODE:2c75  fd                       MOV R5,A
CODE:2c76  12 b9 9e                 LCALL 0xb99e
CODE:2c79  90 07 c3                 MOV DPTR,#0x7c3
CODE:2c7c  ef                       MOV A,R7
CODE:2c7d  f0                       MOVX @DPTR,A
CODE:2c7e  7f 14                    MOV R7,#0x14
CODE:2c80  7e 00                    MOV R6,#0x0
CODE:2c82  12 bd 5a                 LCALL 0xbd5a
CODE:2c85  e5 13                    MOV A,0x13
CODE:2c87  75 f0 17                 MOV B,#0x17
CODE:2c8a  a4                       MUL AB
CODE:2c8b  7c 00                    MOV R4,#0x0
CODE:2c8d  25 12                    ADD A,0x12
CODE:2c8f  ff                       MOV R7,A
CODE:2c90  ef                       MOV A,R7
CODE:2c91  fe                       MOV R6,A
CODE:2c92  e4                       CLR A
CODE:2c93  24 02                    ADD A,#0x2
CODE:2c95  ff                       MOV R7,A
CODE:2c96  e4                       CLR A
CODE:2c97  3e                       ADDC A,R6
CODE:2c98  fe                       MOV R6,A
CODE:2c99  e4                       CLR A
CODE:2c9a  fd                       MOV R5,A
CODE:2c9b  12 b9 9e                 LCALL 0xb99e
CODE:2c9e  90 07 c4                 MOV DPTR,#0x7c4
CODE:2ca1  ef                       MOV A,R7
CODE:2ca2  f0                       MOVX @DPTR,A
CODE:2ca3  7f 14                    MOV R7,#0x14
CODE:2ca5  7e 00                    MOV R6,#0x0
CODE:2ca7  12 bd 5a                 LCALL 0xbd5a
CODE:2caa  e5 13                    MOV A,0x13
CODE:2cac  75 f0 17                 MOV B,#0x17
CODE:2caf  a4                       MUL AB
CODE:2cb0  7c 00                    MOV R4,#0x0
CODE:2cb2  25 12                    ADD A,0x12
CODE:2cb4  ff                       MOV R7,A
CODE:2cb5  ef                       MOV A,R7
CODE:2cb6  fe                       MOV R6,A
CODE:2cb7  e4                       CLR A
CODE:2cb8  24 03                    ADD A,#0x3
CODE:2cba  ff                       MOV R7,A
CODE:2cbb  e4                       CLR A
CODE:2cbc  3e                       ADDC A,R6
CODE:2cbd  fe                       MOV R6,A
CODE:2cbe  e4                       CLR A
CODE:2cbf  fd                       MOV R5,A
CODE:2cc0  12 b9 9e                 LCALL 0xb99e
CODE:2cc3  90 07 c9                 MOV DPTR,#0x7c9
CODE:2cc6  ef                       MOV A,R7
CODE:2cc7  f0                       MOVX @DPTR,A
CODE:2cc8  e4                       CLR A
CODE:2cc9  f5 08                    MOV 0x08,A
CODE:2ccb  f5 09                    MOV 0x09,A
CODE:2ccd  90 07 c3                 MOV DPTR,#0x7c3
CODE:2cd0  e0                       MOVX A,@DPTR
CODE:2cd1  75 08 00                 MOV 0x08,#0x0
CODE:2cd4  f5 09                    MOV 0x09,A
CODE:2cd6  90 07 c2                 MOV DPTR,#0x7c2
CODE:2cd9  e0                       MOVX A,@DPTR
CODE:2cda  fe                       MOV R6,A
CODE:2cdb  ee                       MOV A,R6
CODE:2cdc  42 08                    ORL 0x08,A
CODE:2cde  e5 09                    MOV A,0x09
CODE:2ce0  b4 ff 09                 CJNE A,#0xff,0x2cec
CODE:2ce3  e5 08                    MOV A,0x08
CODE:2ce5  b4 ff 04                 CJNE A,#0xff,0x2cec
CODE:2ce8  d2 15                    SETB 0x15
CODE:2cea  80 02                    SJMP 0x2cee
LAB_CODE_2cec:
CODE:2cec  c2 15                    CLR 0x15   ; XREF: CODE:2ce0 CODE:2ce5 
LAB_CODE_2cee:
CODE:2cee  e5 09                    MOV A,0x09   ; XREF: CODE:2cea 
CODE:2cf0  45 08                    ORL A,0x08
CODE:2cf2  70 0a                    JNZ 0x2cfe
CODE:2cf4  d2 18                    SETB 0x18
CODE:2cf6  74 ff                    MOV A,#0xff
CODE:2cf8  f5 08                    MOV 0x08,A
CODE:2cfa  f5 09                    MOV 0x09,A
CODE:2cfc  80 02                    SJMP 0x2d00
LAB_CODE_2cfe:
CODE:2cfe  c2 18                    CLR 0x18   ; XREF: CODE:2cf2 
LAB_CODE_2d00:
CODE:2d00  e4                       CLR A   ; XREF: CODE:2cfc 
CODE:2d01  f5 0a                    MOV 0x0a,A
CODE:2d03  f5 0b                    MOV 0x0b,A
CODE:2d05  90 07 c9                 MOV DPTR,#0x7c9
CODE:2d08  e0                       MOVX A,@DPTR
CODE:2d09  75 0a 00                 MOV 0x0a,#0x0
CODE:2d0c  f5 0b                    MOV 0x0b,A
CODE:2d0e  90 07 c4                 MOV DPTR,#0x7c4
CODE:2d11  e0                       MOVX A,@DPTR
CODE:2d12  54 7f                    ANL A,#0x7f
CODE:2d14  fe                       MOV R6,A
CODE:2d15  ee                       MOV A,R6
CODE:2d16  42 0a                    ORL 0x0a,A
CODE:2d18  e4                       CLR A
CODE:2d19  90 08 e9                 MOV DPTR,#0x8e9
CODE:2d1c  f0                       MOVX @DPTR,A
LAB_CODE_2d1d:
CODE:2d1d  90 08 e9                 MOV DPTR,#0x8e9   ; XREF: CODE:2d40 
CODE:2d20  e0                       MOVX A,@DPTR
CODE:2d21  ff                       MOV R7,A
CODE:2d22  c3                       CLR CY
CODE:2d23  94 10                    SUBB A,#0x10
CODE:2d25  40 03                    JC 0x2d2a
CODE:2d27  02 2d bc                 LJMP 0x2dbc
LAB_CODE_2d2a:
CODE:2d2a  90 09 36                 MOV DPTR,#0x936   ; XREF: CODE:2d25 
CODE:2d2d  e0                       MOVX A,@DPTR
CODE:2d2e  fc                       MOV R4,A
CODE:2d2f  a3                       INC DPTR
CODE:2d30  e0                       MOVX A,@DPTR
CODE:2d31  2f                       ADD A,R7
CODE:2d32  f5 82                    MOV DPL,A
CODE:2d34  e4                       CLR A
CODE:2d35  3c                       ADDC A,R4
CODE:2d36  f5 83                    MOV DPH,A
CODE:2d38  e4                       CLR A
CODE:2d39  f0                       MOVX @DPTR,A
CODE:2d3a  90 08 e9                 MOV DPTR,#0x8e9
CODE:2d3d  e0                       MOVX A,@DPTR
CODE:2d3e  04                       INC A
CODE:2d3f  f0                       MOVX @DPTR,A
CODE:2d40  80 db                    SJMP 0x2d1d
LAB_CODE_2d42:
CODE:2d42  30 15 50                 JNB 0x15,0x2d95   ; XREF: CODE:2bfe 
CODE:2d45  c2 15                    CLR 0x15
CODE:2d47  e4                       CLR A
CODE:2d48  f5 08                    MOV 0x08,A
CODE:2d4a  f5 09                    MOV 0x09,A
CODE:2d4c  c2 12                    CLR 0x12
CODE:2d4e  90 07 c5                 MOV DPTR,#0x7c5
CODE:2d51  e5 10                    MOV A,0x10
CODE:2d53  f0                       MOVX @DPTR,A
CODE:2d54  d2 02                    SETB 0x02
CODE:2d56  c2 00                    CLR 0x00
LAB_CODE_2d58:
CODE:2d58  12 5b 32                 LCALL 0x5b32   ; XREF: CODE:272e 
CODE:2d5b  80 38                    SJMP 0x2d95
LAB_CODE_2d5d:
CODE:2d5d  30 18 25                 JNB 0x18,0x2d85   ; XREF: CODE:2bf8 
CODE:2d60  c2 18                    CLR 0x18
CODE:2d62  e4                       CLR A
CODE:2d63  90 08 e9                 MOV DPTR,#0x8e9
CODE:2d66  f0                       MOVX @DPTR,A
LAB_CODE_2d67:
CODE:2d67  90 08 e9                 MOV DPTR,#0x8e9   ; XREF: CODE:2d83 
CODE:2d6a  e0                       MOVX A,@DPTR
CODE:2d6b  ff                       MOV R7,A
CODE:2d6c  c3                       CLR CY
CODE:2d6d  94 10                    SUBB A,#0x10
CODE:2d6f  50 14                    JNC 0x2d85
CODE:2d71  74 06                    MOV A,#0x6
CODE:2d73  2f                       ADD A,R7
CODE:2d74  f5 82                    MOV DPL,A
CODE:2d76  e4                       CLR A
CODE:2d77  34 07                    ADDC A,#0x7
CODE:2d79  f5 83                    MOV DPH,A
CODE:2d7b  e4                       CLR A
CODE:2d7c  f0                       MOVX @DPTR,A
CODE:2d7d  90 08 e9                 MOV DPTR,#0x8e9
CODE:2d80  e0                       MOVX A,@DPTR
CODE:2d81  04                       INC A
CODE:2d82  f0                       MOVX @DPTR,A
CODE:2d83  80 e2                    SJMP 0x2d67
LAB_CODE_2d85:
CODE:2d85  30 12 0a                 JNB 0x12,0x2d92   ; XREF: CODE:2d5d CODE:2d6f 
CODE:2d88  e4                       CLR A
CODE:2d89  f5 08                    MOV 0x08,A
CODE:2d8b  f5 09                    MOV 0x09,A
CODE:2d8d  c2 12                    CLR 0x12
CODE:2d8f  02 b5 9e                 LJMP 0xb59e
LAB_CODE_2d92:
CODE:2d92  12 92 8b                 LCALL 0x928b   ; XREF: CODE:2b56 CODE:2d85 
LAB_CODE_2d95:
CODE:2d95  90 08 e4                 MOV DPTR,#0x8e4   ; XREF: CODE:2c2b CODE:2c31 CODE:2d42 CODE:2d5b 
CODE:2d98  e0                       MOVX A,@DPTR
CODE:2d99  ff                       MOV R7,A
CODE:2d9a  78 2b                    MOV R0,#0x2b
CODE:2d9c  e6                       MOV A,@R0
CODE:2d9d  fd                       MOV R5,A
CODE:2d9e  12 94 3f                 LCALL 0x943f
CODE:2da1  78 69                    MOV R0,#0x69
CODE:2da3  e6                       MOV A,@R0
CODE:2da4  b4 08 0f                 CJNE A,#0x8,0x2db6
CODE:2da7  30 00 0c                 JNB 0x00,0x2db6
CODE:2daa  90 08 e4                 MOV DPTR,#0x8e4
CODE:2dad  e0                       MOVX A,@DPTR
CODE:2dae  ff                       MOV R7,A
CODE:2daf  78 2b                    MOV R0,#0x2b
CODE:2db1  e6                       MOV A,@R0
CODE:2db2  fd                       MOV R5,A
CODE:2db3  12 ae de                 LCALL 0xaede
LAB_CODE_2db6:
CODE:2db6  78 2b                    MOV R0,#0x2b   ; XREF: CODE:18b4 CODE:1ceb CODE:1d04 CODE:1d0e CODE:1efb CODE:1f6a CODE:2da4 CODE:2da7 
CODE:2db8  06                       INC @R0
CODE:2db9  02 18 90                 LJMP 0x1890
LAB_CODE_2dbc:
CODE:2dbc  22                       RET   ; XREF: CODE:1899 CODE:190f CODE:1980 CODE:1995 CODE:19f2 CODE:1f9d CODE:200e CODE:2274 CODE:231f CODE:1f8e CODE:1f94 CODE:1fc1 CODE:1fc7 CODE:1fee CODE:1ff4 CODE:2045 CODE:204b CODE:208e CODE:2094 CODE:2151 CODE:2157 CODE:2194 CODE:219a CODE:21ed CODE:21f3 CODE:2249 CODE:224f CODE:2386 CODE:238c CODE:23d2 CODE:23d8 CODE:241e CODE:2424 CODE:246a CODE:2470 CODE:24b4 CODE:24ba CODE:24fe CODE:2504 CODE:2548 CODE:254e CODE:2592 CODE:2598 CODE:25dc CODE:25e2 CODE:2625 CODE:262b CODE:2d27 

; ===== FUNCTION FUN_CODE_2dbd @ CODE:2dbd =====
CODE:2dbd  30 13 62                 JNB 0x13,0x2e22   ; XREF: CODE:ba13 
CODE:2dc0  e4                       CLR A
CODE:2dc1  f5 b1                    MOV 0xb1,A
CODE:2dc3  c2 13                    CLR 0x13
CODE:2dc5  12 bb dd                 LCALL 0xbbdd
CODE:2dc8  e4                       CLR A
CODE:2dc9  90 08 f0                 MOV DPTR,#0x8f0
CODE:2dcc  f0                       MOVX @DPTR,A
LAB_CODE_2dcd:
CODE:2dcd  90 08 f0                 MOV DPTR,#0x8f0   ; XREF: CODE:2e01 
CODE:2dd0  e0                       MOVX A,@DPTR
CODE:2dd1  ff                       MOV R7,A
CODE:2dd2  c3                       CLR CY
CODE:2dd3  94 8a                    SUBB A,#0x8a
CODE:2dd5  50 2c                    JNC 0x2e03
CODE:2dd7  74 f6                    MOV A,#0xf6
CODE:2dd9  2f                       ADD A,R7
CODE:2dda  f5 82                    MOV DPL,A
CODE:2ddc  e4                       CLR A
CODE:2ddd  34 04                    ADDC A,#0x4
CODE:2ddf  f5 83                    MOV DPH,A
CODE:2de1  e4                       CLR A
CODE:2de2  f0                       MOVX @DPTR,A
CODE:2de3  74 8b                    MOV A,#0x8b
CODE:2de5  2f                       ADD A,R7
CODE:2de6  f5 82                    MOV DPL,A
CODE:2de8  e4                       CLR A
CODE:2de9  34 05                    ADDC A,#0x5
CODE:2deb  f5 83                    MOV DPH,A
CODE:2ded  e4                       CLR A
CODE:2dee  f0                       MOVX @DPTR,A
CODE:2def  74 20                    MOV A,#0x20
CODE:2df1  2f                       ADD A,R7
CODE:2df2  f5 82                    MOV DPL,A
CODE:2df4  e4                       CLR A
CODE:2df5  34 06                    ADDC A,#0x6
CODE:2df7  f5 83                    MOV DPH,A
CODE:2df9  e4                       CLR A
CODE:2dfa  f0                       MOVX @DPTR,A
CODE:2dfb  90 08 f0                 MOV DPTR,#0x8f0
CODE:2dfe  e0                       MOVX A,@DPTR
CODE:2dff  04                       INC A
CODE:2e00  f0                       MOVX @DPTR,A
CODE:2e01  80 ca                    SJMP 0x2dcd
LAB_CODE_2e03:
CODE:2e03  78 69                    MOV R0,#0x69   ; XREF: CODE:2dd5 
CODE:2e05  e6                       MOV A,@R0
CODE:2e06  ff                       MOV R7,A
CODE:2e07  c3                       CLR CY
CODE:2e08  94 20                    SUBB A,#0x20
CODE:2e0a  50 04                    JNC 0x2e10
CODE:2e0c  ef                       MOV A,R7
CODE:2e0d  b4 13 05                 CJNE A,#0x13,0x2e15
LAB_CODE_2e10:
CODE:2e10  12 a0 bf                 LCALL 0xa0bf   ; XREF: CODE:2e0a 
CODE:2e13  80 03                    SJMP 0x2e18
LAB_CODE_2e15:
CODE:2e15  12 9d 55                 LCALL 0x9d55   ; XREF: CODE:2e0d 
LAB_CODE_2e18:
CODE:2e18  78 5c                    MOV R0,#0x5c   ; XREF: CODE:2e13 
CODE:2e1a  e6                       MOV A,@R0
CODE:2e1b  ff                       MOV R7,A
CODE:2e1c  12 9d eb                 LCALL 0x9deb
CODE:2e1f  02 ba ca                 LJMP 0xbaca
LAB_CODE_2e22:
CODE:2e22  78 62                    MOV R0,#0x62   ; XREF: CODE:2dbd 
CODE:2e24  e6                       MOV A,@R0
CODE:2e25  ff                       MOV R7,A
CODE:2e26  c3                       CLR CY
CODE:2e27  94 17                    SUBB A,#0x17
CODE:2e29  40 03                    JC 0x2e2e
CODE:2e2b  02 30 31                 LJMP 0x3031
LAB_CODE_2e2e:
CODE:2e2e  75 cd fe                 MOV 0xcd,#0xfe   ; XREF: CODE:2e29 
CODE:2e31  75 cc 6f                 MOV 0xcc,#0x6f
CODE:2e34  75 cb fe                 MOV 0xcb,#0xfe
CODE:2e37  75 ca 6f                 MOV 0xca,#0x6f
CODE:2e3a  d2 82                    SETB 0x82
CODE:2e3c  30 1c 03                 JNB 0x1c,0x2e42
CODE:2e3f  02 3b 55                 LJMP 0x3b55
LAB_CODE_2e42:
CODE:2e42  30 2b 03                 JNB 0x2b,0x2e48   ; XREF: CODE:2e3c 
CODE:2e45  02 2f 82                 LJMP 0x2f82
LAB_CODE_2e48:
CODE:2e48  78 69                    MOV R0,#0x69   ; XREF: CODE:2e42 
CODE:2e4a  e6                       MOV A,@R0
CODE:2e4b  b4 0d 03                 CJNE A,#0xd,0x2e51
CODE:2e4e  02 2e d4                 LJMP 0x2ed4
LAB_CODE_2e51:
CODE:2e51  78 69                    MOV R0,#0x69   ; XREF: CODE:2e4b 
CODE:2e53  e6                       MOV A,@R0
CODE:2e54  b4 0a 12                 CJNE A,#0xa,0x2e69
CODE:2e57  78 62                    MOV R0,#0x62
CODE:2e59  e6                       MOV A,@R0
CODE:2e5a  70 03                    JNZ 0x2e5f
CODE:2e5c  78 57                    MOV R0,#0x57
CODE:2e5e  06                       INC @R0
LAB_CODE_2e5f:
CODE:2e5f  78 62                    MOV R0,#0x62   ; XREF: CODE:2e5a 
CODE:2e61  e6                       MOV A,@R0
CODE:2e62  ff                       MOV R7,A
CODE:2e63  12 aa 15                 LCALL 0xaa15
CODE:2e66  02 30 0a                 LJMP 0x300a
LAB_CODE_2e69:
CODE:2e69  78 69                    MOV R0,#0x69   ; XREF: CODE:2e54 
CODE:2e6b  e6                       MOV A,@R0
CODE:2e6c  b4 02 0a                 CJNE A,#0x2,0x2e79
CODE:2e6f  78 62                    MOV R0,#0x62
CODE:2e71  e6                       MOV A,@R0
CODE:2e72  ff                       MOV R7,A
CODE:2e73  12 a9 2d                 LCALL 0xa92d
CODE:2e76  02 30 0a                 LJMP 0x300a
LAB_CODE_2e79:
CODE:2e79  78 69                    MOV R0,#0x69   ; XREF: CODE:2e6c 
CODE:2e7b  e6                       MOV A,@R0
CODE:2e7c  b4 05 0d                 CJNE A,#0x5,0x2e8c
CODE:2e7f  78 62                    MOV R0,#0x62
CODE:2e81  e6                       MOV A,@R0
CODE:2e82  ff                       MOV R7,A
CODE:2e83  12 c0 44                 LCALL 0xc044
CODE:2e86  12 aa f7                 LCALL 0xaaf7
CODE:2e89  02 30 0a                 LJMP 0x300a
LAB_CODE_2e8c:
CODE:2e8c  78 69                    MOV R0,#0x69   ; XREF: CODE:2e7c 
CODE:2e8e  e6                       MOV A,@R0
CODE:2e8f  70 0a                    JNZ 0x2e9b
CODE:2e91  78 62                    MOV R0,#0x62
CODE:2e93  e6                       MOV A,@R0
CODE:2e94  ff                       MOV R7,A
CODE:2e95  12 85 b9                 LCALL 0x85b9
CODE:2e98  02 30 0a                 LJMP 0x300a
LAB_CODE_2e9b:
CODE:2e9b  78 69                    MOV R0,#0x69   ; XREF: CODE:2e8f 
CODE:2e9d  e6                       MOV A,@R0
CODE:2e9e  b4 08 0a                 CJNE A,#0x8,0x2eab
CODE:2ea1  78 62                    MOV R0,#0x62
CODE:2ea3  e6                       MOV A,@R0
CODE:2ea4  ff                       MOV R7,A
CODE:2ea5  12 8d 4d                 LCALL 0x8d4d
CODE:2ea8  02 30 0a                 LJMP 0x300a
LAB_CODE_2eab:
CODE:2eab  78 69                    MOV R0,#0x69   ; XREF: CODE:2e9e 
CODE:2ead  e6                       MOV A,@R0
CODE:2eae  b4 10 0a                 CJNE A,#0x10,0x2ebb
CODE:2eb1  78 62                    MOV R0,#0x62
CODE:2eb3  e6                       MOV A,@R0
CODE:2eb4  ff                       MOV R7,A
CODE:2eb5  12 98 c5                 LCALL 0x98c5
CODE:2eb8  02 30 0a                 LJMP 0x300a
LAB_CODE_2ebb:
CODE:2ebb  78 69                    MOV R0,#0x69   ; XREF: CODE:2eae 
CODE:2ebd  e6                       MOV A,@R0
CODE:2ebe  b4 0f 0a                 CJNE A,#0xf,0x2ecb
CODE:2ec1  78 62                    MOV R0,#0x62
CODE:2ec3  e6                       MOV A,@R0
CODE:2ec4  ff                       MOV R7,A
CODE:2ec5  12 8b 45                 LCALL 0x8b45
CODE:2ec8  02 30 0a                 LJMP 0x300a
LAB_CODE_2ecb:
CODE:2ecb  78 69                    MOV R0,#0x69   ; XREF: CODE:2ebe 
CODE:2ecd  e6                       MOV A,@R0
CODE:2ece  b4 01 0f                 CJNE A,#0x1,0x2ee0
CODE:2ed1  30 11 06                 JNB 0x11,0x2eda
LAB_CODE_2ed4:
CODE:2ed4  12 bb dd                 LCALL 0xbbdd   ; XREF: CODE:2e4e 
CODE:2ed7  02 30 0a                 LJMP 0x300a
LAB_CODE_2eda:
CODE:2eda  12 4b 3c                 LCALL 0x4b3c   ; XREF: CODE:2ed1 
CODE:2edd  02 30 0a                 LJMP 0x300a
LAB_CODE_2ee0:
CODE:2ee0  78 69                    MOV R0,#0x69   ; XREF: CODE:2ece 
CODE:2ee2  e6                       MOV A,@R0
CODE:2ee3  b4 0e 0a                 CJNE A,#0xe,0x2ef0
CODE:2ee6  78 62                    MOV R0,#0x62
CODE:2ee8  e6                       MOV A,@R0
CODE:2ee9  ff                       MOV R7,A
CODE:2eea  12 a5 9d                 LCALL 0xa59d
CODE:2eed  02 30 0a                 LJMP 0x300a
LAB_CODE_2ef0:
CODE:2ef0  78 69                    MOV R0,#0x69   ; XREF: CODE:2ee3 
CODE:2ef2  e6                       MOV A,@R0
CODE:2ef3  b4 09 12                 CJNE A,#0x9,0x2f08
CODE:2ef6  78 62                    MOV R0,#0x62
CODE:2ef8  e6                       MOV A,@R0
CODE:2ef9  70 03                    JNZ 0x2efe
CODE:2efb  78 57                    MOV R0,#0x57
CODE:2efd  06                       INC @R0
LAB_CODE_2efe:
CODE:2efe  78 62                    MOV R0,#0x62   ; XREF: CODE:2ef9 
CODE:2f00  e6                       MOV A,@R0
CODE:2f01  ff                       MOV R7,A
CODE:2f02  12 a1 4c                 LCALL 0xa14c
CODE:2f05  02 30 0a                 LJMP 0x300a
LAB_CODE_2f08:
CODE:2f08  78 69                    MOV R0,#0x69   ; XREF: CODE:2ef3 
CODE:2f0a  e6                       MOV A,@R0
CODE:2f0b  b4 06 12                 CJNE A,#0x6,0x2f20
CODE:2f0e  78 62                    MOV R0,#0x62
CODE:2f10  e6                       MOV A,@R0
CODE:2f11  70 03                    JNZ 0x2f16
CODE:2f13  78 57                    MOV R0,#0x57
CODE:2f15  06                       INC @R0
LAB_CODE_2f16:
CODE:2f16  78 62                    MOV R0,#0x62   ; XREF: CODE:2f11 
CODE:2f18  e6                       MOV A,@R0
CODE:2f19  ff                       MOV R7,A
CODE:2f1a  12 7a 3f                 LCALL 0x7a3f
CODE:2f1d  02 30 0a                 LJMP 0x300a
LAB_CODE_2f20:
CODE:2f20  78 69                    MOV R0,#0x69   ; XREF: CODE:2f0b 
CODE:2f22  e6                       MOV A,@R0
CODE:2f23  b4 12 12                 CJNE A,#0x12,0x2f38
CODE:2f26  78 62                    MOV R0,#0x62
CODE:2f28  e6                       MOV A,@R0
CODE:2f29  70 03                    JNZ 0x2f2e
CODE:2f2b  78 57                    MOV R0,#0x57
CODE:2f2d  06                       INC @R0
LAB_CODE_2f2e:
CODE:2f2e  78 62                    MOV R0,#0x62   ; XREF: CODE:2f29 
CODE:2f30  e6                       MOV A,@R0
CODE:2f31  ff                       MOV R7,A
CODE:2f32  12 9f a3                 LCALL 0x9fa3
CODE:2f35  02 30 0a                 LJMP 0x300a
LAB_CODE_2f38:
CODE:2f38  78 69                    MOV R0,#0x69   ; XREF: CODE:2f23 
CODE:2f3a  e6                       MOV A,@R0
CODE:2f3b  b4 04 12                 CJNE A,#0x4,0x2f50
CODE:2f3e  78 62                    MOV R0,#0x62
CODE:2f40  e6                       MOV A,@R0
CODE:2f41  70 03                    JNZ 0x2f46
CODE:2f43  78 57                    MOV R0,#0x57
CODE:2f45  06                       INC @R0
LAB_CODE_2f46:
CODE:2f46  78 62                    MOV R0,#0x62   ; XREF: CODE:2f41 
CODE:2f48  e6                       MOV A,@R0
CODE:2f49  ff                       MOV R7,A
CODE:2f4a  12 9c 24                 LCALL 0x9c24
CODE:2f4d  02 30 0a                 LJMP 0x300a
LAB_CODE_2f50:
CODE:2f50  78 69                    MOV R0,#0x69   ; XREF: CODE:2f3b 
CODE:2f52  e6                       MOV A,@R0
CODE:2f53  b4 03 12                 CJNE A,#0x3,0x2f68
CODE:2f56  78 62                    MOV R0,#0x62
CODE:2f58  e6                       MOV A,@R0
CODE:2f59  70 03                    JNZ 0x2f5e
CODE:2f5b  78 57                    MOV R0,#0x57
CODE:2f5d  06                       INC @R0
LAB_CODE_2f5e:
CODE:2f5e  78 62                    MOV R0,#0x62   ; XREF: CODE:2f59 
CODE:2f60  e6                       MOV A,@R0
CODE:2f61  ff                       MOV R7,A
CODE:2f62  12 a0 31                 LCALL 0xa031
CODE:2f65  02 30 0a                 LJMP 0x300a
LAB_CODE_2f68:
CODE:2f68  78 69                    MOV R0,#0x69   ; XREF: CODE:2f53 
CODE:2f6a  e6                       MOV A,@R0
CODE:2f6b  b4 07 0a                 CJNE A,#0x7,0x2f78
CODE:2f6e  78 62                    MOV R0,#0x62
CODE:2f70  e6                       MOV A,@R0
CODE:2f71  ff                       MOV R7,A
CODE:2f72  12 95 da                 LCALL 0x95da
CODE:2f75  02 30 0a                 LJMP 0x300a
LAB_CODE_2f78:
CODE:2f78  78 69                    MOV R0,#0x69   ; XREF: CODE:2f6b 
CODE:2f7a  e6                       MOV A,@R0
CODE:2f7b  b4 0c 0a                 CJNE A,#0xc,0x2f88
CODE:2f7e  78 62                    MOV R0,#0x62
CODE:2f80  e6                       MOV A,@R0
CODE:2f81  ff                       MOV R7,A
LAB_CODE_2f82:
CODE:2f82  12 7f 0a                 LCALL 0x7f0a   ; XREF: CODE:2e45 
CODE:2f85  02 30 0a                 LJMP 0x300a
LAB_CODE_2f88:
CODE:2f88  78 69                    MOV R0,#0x69   ; XREF: CODE:2f7b 
CODE:2f8a  e6                       MOV A,@R0
CODE:2f8b  b4 0b 09                 CJNE A,#0xb,0x2f97
CODE:2f8e  78 62                    MOV R0,#0x62
CODE:2f90  e6                       MOV A,@R0
CODE:2f91  ff                       MOV R7,A
CODE:2f92  12 75 37                 LCALL 0x7537
CODE:2f95  80 73                    SJMP 0x300a
LAB_CODE_2f97:
CODE:2f97  78 69                    MOV R0,#0x69   ; XREF: CODE:2f8b 
CODE:2f99  e6                       MOV A,@R0
CODE:2f9a  b4 11 11                 CJNE A,#0x11,0x2fae
CODE:2f9d  78 62                    MOV R0,#0x62
CODE:2f9f  e6                       MOV A,@R0
CODE:2fa0  70 03                    JNZ 0x2fa5
CODE:2fa2  78 57                    MOV R0,#0x57
CODE:2fa4  06                       INC @R0
LAB_CODE_2fa5:
CODE:2fa5  78 62                    MOV R0,#0x62   ; XREF: CODE:2fa0 
CODE:2fa7  e6                       MOV A,@R0
CODE:2fa8  ff                       MOV R7,A
CODE:2fa9  12 a7 af                 LCALL 0xa7af
CODE:2fac  80 5c                    SJMP 0x300a
LAB_CODE_2fae:
CODE:2fae  78 69                    MOV R0,#0x69   ; XREF: CODE:2f9a 
CODE:2fb0  e6                       MOV A,@R0
CODE:2fb1  64 40                    XRL A,#0x40
CODE:2fb3  70 55                    JNZ 0x300a
CODE:2fb5  12 bb dd                 LCALL 0xbbdd
CODE:2fb8  e4                       CLR A
CODE:2fb9  90 08 f0                 MOV DPTR,#0x8f0
CODE:2fbc  f0                       MOVX @DPTR,A
LAB_CODE_2fbd:
CODE:2fbd  90 08 f0                 MOV DPTR,#0x8f0   ; XREF: CODE:3008 
CODE:2fc0  e0                       MOVX A,@DPTR
CODE:2fc1  ff                       MOV R7,A
CODE:2fc2  c3                       CLR CY
CODE:2fc3  94 8a                    SUBB A,#0x8a
CODE:2fc5  50 43                    JNC 0x300a
CODE:2fc7  74 20                    MOV A,#0x20
CODE:2fc9  2f                       ADD A,R7
CODE:2fca  f5 82                    MOV DPL,A
CODE:2fcc  e4                       CLR A
CODE:2fcd  34 06                    ADDC A,#0x6
CODE:2fcf  f5 83                    MOV DPH,A
CODE:2fd1  e0                       MOVX A,@DPTR
CODE:2fd2  90 08 f0                 MOV DPTR,#0x8f0
CODE:2fd5  60 06                    JZ 0x2fdd
CODE:2fd7  e0                       MOVX A,@DPTR
CODE:2fd8  12 88 05                 LCALL 0x8805
CODE:2fdb  80 25                    SJMP 0x3002
LAB_CODE_2fdd:
CODE:2fdd  e0                       MOVX A,@DPTR   ; XREF: CODE:2fd5 
CODE:2fde  ff                       MOV R7,A
CODE:2fdf  24 20                    ADD A,#0x20
CODE:2fe1  f5 82                    MOV DPL,A
CODE:2fe3  e4                       CLR A
CODE:2fe4  34 06                    ADDC A,#0x6
CODE:2fe6  f5 83                    MOV DPH,A
CODE:2fe8  e4                       CLR A
CODE:2fe9  f0                       MOVX @DPTR,A
CODE:2fea  74 8b                    MOV A,#0x8b
CODE:2fec  2f                       ADD A,R7
CODE:2fed  f5 82                    MOV DPL,A
CODE:2fef  e4                       CLR A
CODE:2ff0  34 05                    ADDC A,#0x5
CODE:2ff2  f5 83                    MOV DPH,A
CODE:2ff4  e4                       CLR A
CODE:2ff5  f0                       MOVX @DPTR,A
CODE:2ff6  74 f6                    MOV A,#0xf6
CODE:2ff8  2f                       ADD A,R7
CODE:2ff9  f5 82                    MOV DPL,A
CODE:2ffb  e4                       CLR A
CODE:2ffc  34 04                    ADDC A,#0x4
CODE:2ffe  f5 83                    MOV DPH,A
CODE:3000  e4                       CLR A
CODE:3001  f0                       MOVX @DPTR,A
LAB_CODE_3002:
CODE:3002  90 08 f0                 MOV DPTR,#0x8f0   ; XREF: CODE:2fdb 
CODE:3005  e0                       MOVX A,@DPTR
CODE:3006  04                       INC A
CODE:3007  f0                       MOVX @DPTR,A
CODE:3008  80 b3                    SJMP 0x2fbd
LAB_CODE_300a:
CODE:300a  78 1e                    MOV R0,#0x1e   ; XREF: CODE:2e66 CODE:2e76 CODE:2e89 CODE:2e98 CODE:2ea8 CODE:2eb8 CODE:2ec8 CODE:2ed7 CODE:2edd CODE:2eed CODE:2f05 CODE:2f1d CODE:2f35 CODE:2f4d CODE:2f65 CODE:2f75 CODE:2f85 CODE:2f95 CODE:2fac CODE:2fb3 CODE:2fc5 
CODE:300c  e6                       MOV A,@R0
CODE:300d  70 03                    JNZ 0x3012
CODE:300f  02 3b 4a                 LJMP 0x3b4a
LAB_CODE_3012:
CODE:3012  30 11 03                 JNB 0x11,0x3018   ; XREF: CODE:300d 
CODE:3015  02 3b 4a                 LJMP 0x3b4a
LAB_CODE_3018:
CODE:3018  b4 04 0c                 CJNE A,#0x4,0x3027   ; XREF: CODE:3012 
CODE:301b  90 ff 95                 MOV DPTR,#0xff95
CODE:301e  74 18                    MOV A,#0x18
CODE:3020  f0                       MOVX @DPTR,A
CODE:3021  90 ff b5                 MOV DPTR,#0xffb5
CODE:3024  74 01                    MOV A,#0x1
CODE:3026  f0                       MOVX @DPTR,A
LAB_CODE_3027:
CODE:3027  78 62                    MOV R0,#0x62   ; XREF: CODE:3018 
CODE:3029  e6                       MOV A,@R0
CODE:302a  ff                       MOV R7,A
CODE:302b  12 68 8e                 LCALL 0x688e
CODE:302e  02 3b 4a                 LJMP 0x3b4a
LAB_CODE_3031:
CODE:3031  78 62                    MOV R0,#0x62   ; XREF: CODE:2e2b 
CODE:3033  e6                       MOV A,@R0
CODE:3034  64 17                    XRL A,#0x17
CODE:3036  70 31                    JNZ 0x3069
CODE:3038  d2 82                    SETB 0x82
CODE:303a  78 57                    MOV R0,#0x57
CODE:303c  06                       INC @R0
CODE:303d  12 bb dd                 LCALL 0xbbdd
CODE:3040  53 a0 c0                 ANL 0xa0,#0xc0
CODE:3043  53 98 c0                 ANL 0x98,#0xc0
CODE:3046  53 90 c0                 ANL 0x90,#0xc0
CODE:3049  75 cd ee                 MOV 0xcd,#0xee
CODE:304c  75 cc cf                 MOV 0xcc,#0xcf
CODE:304f  75 cb ee                 MOV 0xcb,#0xee
CODE:3052  75 ca cf                 MOV 0xca,#0xcf
CODE:3055  12 bb dd                 LCALL 0xbbdd
CODE:3058  53 a0 c0                 ANL 0xa0,#0xc0
CODE:305b  53 98 c0                 ANL 0x98,#0xc0
CODE:305e  53 90 c0                 ANL 0x90,#0xc0
CODE:3061  d2 08                    SETB 0x08
CODE:3063  12 96 99                 LCALL 0x9699
CODE:3066  02 3b 4a                 LJMP 0x3b4a
LAB_CODE_3069:
CODE:3069  78 62                    MOV R0,#0x62   ; XREF: CODE:3036 
CODE:306b  e6                       MOV A,@R0
CODE:306c  64 18                    XRL A,#0x18
CODE:306e  60 03                    JZ 0x3073
CODE:3070  02 32 3d                 LJMP 0x323d
LAB_CODE_3073:
CODE:3073  75 cd fe                 MOV 0xcd,#0xfe   ; XREF: CODE:306e 
CODE:3076  75 cc 6f                 MOV 0xcc,#0x6f
CODE:3079  75 cb fe                 MOV 0xcb,#0xfe
CODE:307c  75 ca 6f                 MOV 0xca,#0x6f
CODE:307f  78 1f                    MOV R0,#0x1f
CODE:3081  e6                       MOV A,@R0
CODE:3082  64 07                    XRL A,#0x7
CODE:3084  60 03                    JZ 0x3089
CODE:3086  02 31 c3                 LJMP 0x31c3
LAB_CODE_3089:
CODE:3089  78 67                    MOV R0,#0x67   ; XREF: CODE:3084 
CODE:308b  06                       INC @R0
CODE:308c  e6                       MOV A,@R0
CODE:308d  c3                       CLR CY
CODE:308e  94 fe                    SUBB A,#0xfe
CODE:3090  40 11                    JC 0x30a3
CODE:3092  e4                       CLR A
CODE:3093  f6                       MOV @R0,A
CODE:3094  b2 28                    CPL 0x28
CODE:3096  30 28 0a                 JNB 0x28,0x30a3
CODE:3099  18                       DEC R0
CODE:309a  06                       INC @R0
CODE:309b  e6                       MOV A,@R0
CODE:309c  d3                       SETB CY
CODE:309d  94 06                    SUBB A,#0x6
CODE:309f  40 02                    JC 0x30a3
CODE:30a1  e4                       CLR A
CODE:30a2  f6                       MOV @R0,A
LAB_CODE_30a3:
CODE:30a3  30 28 07                 JNB 0x28,0x30ad   ; XREF: CODE:3090 CODE:3096 CODE:309f 
CODE:30a6  78 67                    MOV R0,#0x67
CODE:30a8  e6                       MOV A,@R0
CODE:30a9  08                       INC R0
CODE:30aa  f6                       MOV @R0,A
CODE:30ab  80 09                    SJMP 0x30b6
LAB_CODE_30ad:
CODE:30ad  c3                       CLR CY   ; XREF: CODE:30a3 
CODE:30ae  74 ff                    MOV A,#0xff
CODE:30b0  78 67                    MOV R0,#0x67
CODE:30b2  96                       SUBB A,@R0
CODE:30b3  79 68                    MOV R1,#0x68
CODE:30b5  f7                       MOV @R1,A
LAB_CODE_30b6:
CODE:30b6  78 66                    MOV R0,#0x66   ; XREF: CODE:30ab 
CODE:30b8  e6                       MOV A,@R0
CODE:30b9  ff                       MOV R7,A
CODE:30ba  70 1e                    JNZ 0x30da
CODE:30bc  90 ff 94                 MOV DPTR,#0xff94
CODE:30bf  74 18                    MOV A,#0x18
CODE:30c1  f0                       MOVX @DPTR,A
CODE:30c2  78 68                    MOV R0,#0x68
CODE:30c4  e6                       MOV A,@R0
CODE:30c5  90 ff b4                 MOV DPTR,#0xffb4
CODE:30c8  f0                       MOVX @DPTR,A
CODE:30c9  90 ff 92                 MOV DPTR,#0xff92
CODE:30cc  74 b0                    MOV A,#0xb0
CODE:30ce  f0                       MOVX @DPTR,A
CODE:30cf  a3                       INC DPTR
CODE:30d0  74 10                    MOV A,#0x10
CODE:30d2  f0                       MOVX @DPTR,A
CODE:30d3  c2 fe                    CLR 0xfe
CODE:30d5  c2 fd                    CLR 0xfd
CODE:30d7  02 31 c3                 LJMP 0x31c3
LAB_CODE_30da:
CODE:30da  ef                       MOV A,R7   ; XREF: CODE:30ba 
CODE:30db  b4 01 20                 CJNE A,#0x1,0x30fe
CODE:30de  90 ff 93                 MOV DPTR,#0xff93
CODE:30e1  74 18                    MOV A,#0x18
CODE:30e3  f0                       MOVX @DPTR,A
CODE:30e4  78 68                    MOV R0,#0x68
CODE:30e6  e6                       MOV A,@R0
CODE:30e7  90 ff b3                 MOV DPTR,#0xffb3
CODE:30ea  f0                       MOVX @DPTR,A
CODE:30eb  90 ff 92                 MOV DPTR,#0xff92
CODE:30ee  74 b0                    MOV A,#0xb0
CODE:30f0  f0                       MOVX @DPTR,A
CODE:30f1  90 ff 94                 MOV DPTR,#0xff94
CODE:30f4  74 10                    MOV A,#0x10
CODE:30f6  f0                       MOVX @DPTR,A
CODE:30f7  c2 ff                    CLR 0xff
CODE:30f9  c2 fd                    CLR 0xfd
CODE:30fb  02 31 c3                 LJMP 0x31c3
LAB_CODE_30fe:
CODE:30fe  78 66                    MOV R0,#0x66   ; XREF: CODE:30db 
CODE:3100  e6                       MOV A,@R0
CODE:3101  ff                       MOV R7,A
CODE:3102  b4 02 1c                 CJNE A,#0x2,0x3121
CODE:3105  90 ff 92                 MOV DPTR,#0xff92
CODE:3108  74 b8                    MOV A,#0xb8
CODE:310a  f0                       MOVX @DPTR,A
CODE:310b  78 68                    MOV R0,#0x68
CODE:310d  e6                       MOV A,@R0
CODE:310e  90 ff b2                 MOV DPTR,#0xffb2
CODE:3111  f0                       MOVX @DPTR,A
CODE:3112  90 ff 93                 MOV DPTR,#0xff93
CODE:3115  74 10                    MOV A,#0x10
CODE:3117  f0                       MOVX @DPTR,A
CODE:3118  a3                       INC DPTR
CODE:3119  f0                       MOVX @DPTR,A
CODE:311a  c2 ff                    CLR 0xff
CODE:311c  c2 fe                    CLR 0xfe
CODE:311e  02 31 c3                 LJMP 0x31c3
LAB_CODE_3121:
CODE:3121  ef                       MOV A,R7   ; XREF: CODE:3102 
CODE:3122  b4 03 23                 CJNE A,#0x3,0x3148
CODE:3125  90 ff 94                 MOV DPTR,#0xff94
CODE:3128  74 18                    MOV A,#0x18
CODE:312a  f0                       MOVX @DPTR,A
CODE:312b  78 68                    MOV R0,#0x68
CODE:312d  e6                       MOV A,@R0
CODE:312e  ff                       MOV R7,A
CODE:312f  90 ff b4                 MOV DPTR,#0xffb4
CODE:3132  f0                       MOVX @DPTR,A
CODE:3133  90 ff 93                 MOV DPTR,#0xff93
CODE:3136  74 18                    MOV A,#0x18
CODE:3138  f0                       MOVX @DPTR,A
CODE:3139  90 ff b3                 MOV DPTR,#0xffb3
CODE:313c  ef                       MOV A,R7
CODE:313d  f0                       MOVX @DPTR,A
CODE:313e  90 ff 92                 MOV DPTR,#0xff92
CODE:3141  74 b0                    MOV A,#0xb0
CODE:3143  f0                       MOVX @DPTR,A
CODE:3144  c2 fd                    CLR 0xfd
CODE:3146  80 7b                    SJMP 0x31c3
LAB_CODE_3148:
CODE:3148  78 66                    MOV R0,#0x66   ; XREF: CODE:3122 
CODE:314a  e6                       MOV A,@R0
CODE:314b  ff                       MOV R7,A
CODE:314c  b4 04 23                 CJNE A,#0x4,0x3172
CODE:314f  90 ff 94                 MOV DPTR,#0xff94
CODE:3152  74 18                    MOV A,#0x18
CODE:3154  f0                       MOVX @DPTR,A
CODE:3155  78 68                    MOV R0,#0x68
CODE:3157  e6                       MOV A,@R0
CODE:3158  fe                       MOV R6,A
CODE:3159  90 ff b4                 MOV DPTR,#0xffb4
CODE:315c  f0                       MOVX @DPTR,A
CODE:315d  90 ff 92                 MOV DPTR,#0xff92
CODE:3160  74 b8                    MOV A,#0xb8
CODE:3162  f0                       MOVX @DPTR,A
CODE:3163  90 ff b2                 MOV DPTR,#0xffb2
CODE:3166  ee                       MOV A,R6
CODE:3167  f0                       MOVX @DPTR,A
CODE:3168  90 ff 93                 MOV DPTR,#0xff93
CODE:316b  74 10                    MOV A,#0x10
CODE:316d  f0                       MOVX @DPTR,A
CODE:316e  c2 fe                    CLR 0xfe
CODE:3170  80 51                    SJMP 0x31c3
LAB_CODE_3172:
CODE:3172  ef                       MOV A,R7   ; XREF: CODE:314c 
CODE:3173  b4 05 23                 CJNE A,#0x5,0x3199
CODE:3176  90 ff 92                 MOV DPTR,#0xff92
CODE:3179  74 b8                    MOV A,#0xb8
CODE:317b  f0                       MOVX @DPTR,A
CODE:317c  78 68                    MOV R0,#0x68
CODE:317e  e6                       MOV A,@R0
CODE:317f  ff                       MOV R7,A
CODE:3180  90 ff b2                 MOV DPTR,#0xffb2
CODE:3183  f0                       MOVX @DPTR,A
CODE:3184  90 ff 93                 MOV DPTR,#0xff93
CODE:3187  74 18                    MOV A,#0x18
CODE:3189  f0                       MOVX @DPTR,A
CODE:318a  90 ff b3                 MOV DPTR,#0xffb3
CODE:318d  ef                       MOV A,R7
CODE:318e  f0                       MOVX @DPTR,A
CODE:318f  90 ff 94                 MOV DPTR,#0xff94
CODE:3192  74 10                    MOV A,#0x10
CODE:3194  f0                       MOVX @DPTR,A
CODE:3195  c2 ff                    CLR 0xff
CODE:3197  80 2a                    SJMP 0x31c3
LAB_CODE_3199:
CODE:3199  78 66                    MOV R0,#0x66   ; XREF: CODE:3173 
CODE:319b  e6                       MOV A,@R0
CODE:319c  b4 06 24                 CJNE A,#0x6,0x31c3
CODE:319f  90 ff 92                 MOV DPTR,#0xff92
CODE:31a2  74 b8                    MOV A,#0xb8
CODE:31a4  f0                       MOVX @DPTR,A
CODE:31a5  78 68                    MOV R0,#0x68
CODE:31a7  e6                       MOV A,@R0
CODE:31a8  ff                       MOV R7,A
CODE:31a9  90 ff b2                 MOV DPTR,#0xffb2
CODE:31ac  f0                       MOVX @DPTR,A
CODE:31ad  90 ff 93                 MOV DPTR,#0xff93
CODE:31b0  74 18                    MOV A,#0x18
CODE:31b2  f0                       MOVX @DPTR,A
CODE:31b3  90 ff b3                 MOV DPTR,#0xffb3
CODE:31b6  ef                       MOV A,R7
CODE:31b7  f0                       MOVX @DPTR,A
CODE:31b8  90 ff 94                 MOV DPTR,#0xff94
CODE:31bb  74 18                    MOV A,#0x18
CODE:31bd  f0                       MOVX @DPTR,A
CODE:31be  90 ff b4                 MOV DPTR,#0xffb4
CODE:31c1  ef                       MOV A,R7
CODE:31c2  f0                       MOVX @DPTR,A
LAB_CODE_31c3:
CODE:31c3  12 bb dd                 LCALL 0xbbdd   ; XREF: CODE:3086 CODE:30d7 CODE:30fb CODE:311e CODE:3146 CODE:3170 CODE:3197 CODE:319c 
CODE:31c6  c2 82                    CLR 0x82
CODE:31c8  30 17 12                 JNB 0x17,0x31dd
CODE:31cb  78 63                    MOV R0,#0x63
CODE:31cd  06                       INC @R0
CODE:31ce  e6                       MOV A,@R0
CODE:31cf  d3                       SETB CY
CODE:31d0  94 32                    SUBB A,#0x32
CODE:31d2  40 04                    JC 0x31d8
CODE:31d4  e4                       CLR A
CODE:31d5  f6                       MOV @R0,A
CODE:31d6  b2 26                    CPL 0x26
LAB_CODE_31d8:
CODE:31d8  30 26 25                 JNB 0x26,0x3200   ; XREF: CODE:31d2 
CODE:31db  80 1d                    SJMP 0x31fa
LAB_CODE_31dd:
CODE:31dd  30 2a 26                 JNB 0x2a,0x3206   ; XREF: CODE:31c8 
CODE:31e0  78 63                    MOV R0,#0x63
CODE:31e2  06                       INC @R0
CODE:31e3  e6                       MOV A,@R0
CODE:31e4  d3                       SETB CY
CODE:31e5  94 0f                    SUBB A,#0xf
CODE:31e7  40 0e                    JC 0x31f7
CODE:31e9  e4                       CLR A
CODE:31ea  f6                       MOV @R0,A
CODE:31eb  e5 17                    MOV A,0x17
CODE:31ed  60 04                    JZ 0x31f3
CODE:31ef  15 17                    DEC 0x17
CODE:31f1  80 02                    SJMP 0x31f5
LAB_CODE_31f3:
CODE:31f3  c2 2a                    CLR 0x2a   ; XREF: CODE:31ed 
LAB_CODE_31f5:
CODE:31f5  b2 26                    CPL 0x26   ; XREF: CODE:31f1 
LAB_CODE_31f7:
CODE:31f7  30 26 06                 JNB 0x26,0x3200   ; XREF: CODE:31e7 
LAB_CODE_31fa:
CODE:31fa  53 a0 e0                 ANL 0xa0,#0xe0   ; XREF: CODE:31db 
CODE:31fd  02 3b 4a                 LJMP 0x3b4a
LAB_CODE_3200:
CODE:3200  43 a0 1f                 ORL 0xa0,#0x1f   ; XREF: CODE:31d8 CODE:31f7 
CODE:3203  02 3b 4a                 LJMP 0x3b4a
LAB_CODE_3206:
CODE:3206  e5 16                    MOV A,0x16   ; XREF: CODE:31dd 
CODE:3208  30 e0 04                 JNB 0xe0,0x320f
CODE:320b  d2 a0                    SETB 0xa0
CODE:320d  80 02                    SJMP 0x3211
LAB_CODE_320f:
CODE:320f  c2 a0                    CLR 0xa0   ; XREF: CODE:3208 
LAB_CODE_3211:
CODE:3211  e5 16                    MOV A,0x16   ; XREF: CODE:320d 
CODE:3213  30 e1 04                 JNB 0xe1,0x321a
CODE:3216  d2 a1                    SETB 0xa1
CODE:3218  80 02                    SJMP 0x321c
LAB_CODE_321a:
CODE:321a  c2 a1                    CLR 0xa1   ; XREF: CODE:3213 
LAB_CODE_321c:
CODE:321c  e5 16                    MOV A,0x16   ; XREF: CODE:3218 
CODE:321e  30 e2 04                 JNB 0xe2,0x3225
CODE:3221  d2 a2                    SETB 0xa2
CODE:3223  80 02                    SJMP 0x3227
LAB_CODE_3225:
CODE:3225  c2 a2                    CLR 0xa2   ; XREF: CODE:321e 
LAB_CODE_3227:
CODE:3227  30 2f 04                 JNB 0x2f,0x322e   ; XREF: CODE:3223 
CODE:322a  d2 a3                    SETB 0xa3
CODE:322c  80 02                    SJMP 0x3230
LAB_CODE_322e:
CODE:322e  c2 a3                    CLR 0xa3   ; XREF: CODE:3227 
LAB_CODE_3230:
CODE:3230  30 2e 05                 JNB 0x2e,0x3238   ; XREF: CODE:322c 
CODE:3233  d2 a4                    SETB 0xa4
CODE:3235  02 3b 4a                 LJMP 0x3b4a
LAB_CODE_3238:
CODE:3238  c2 a4                    CLR 0xa4   ; XREF: CODE:3230 
CODE:323a  02 3b 4a                 LJMP 0x3b4a
LAB_CODE_323d:
CODE:323d  78 62                    MOV R0,#0x62   ; XREF: CODE:3070 
CODE:323f  e6                       MOV A,@R0
CODE:3240  b4 19 1d                 CJNE A,#0x19,0x3260
CODE:3243  d2 82                    SETB 0x82
CODE:3245  75 cd fe                 MOV 0xcd,#0xfe
CODE:3248  75 cc 6f                 MOV 0xcc,#0x6f
CODE:324b  75 cb fe                 MOV 0xcb,#0xfe
CODE:324e  75 ca 6f                 MOV 0xca,#0x6f
CODE:3251  12 bb dd                 LCALL 0xbbdd
CODE:3254  53 a0 c0                 ANL 0xa0,#0xc0
CODE:3257  53 98 c0                 ANL 0x98,#0xc0
CODE:325a  53 90 c0                 ANL 0x90,#0xc0
CODE:325d  02 3b 4a                 LJMP 0x3b4a
LAB_CODE_3260:
CODE:3260  78 62                    MOV R0,#0x62   ; XREF: CODE:3240 
CODE:3262  e6                       MOV A,@R0
CODE:3263  64 1a                    XRL A,#0x1a
CODE:3265  60 03                    JZ 0x326a
CODE:3267  02 3b 4a                 LJMP 0x3b4a
LAB_CODE_326a:
CODE:326a  75 cd fe                 MOV 0xcd,#0xfe   ; XREF: CODE:3265 
CODE:326d  75 cc 6f                 MOV 0xcc,#0x6f
CODE:3270  75 cb fe                 MOV 0xcb,#0xfe
CODE:3273  75 ca 6f                 MOV 0xca,#0x6f
CODE:3276  d2 82                    SETB 0x82
CODE:3278  30 2b 03                 JNB 0x2b,0x327e
CODE:327b  02 3b 4a                 LJMP 0x3b4a
LAB_CODE_327e:
CODE:327e  78 69                    MOV R0,#0x69   ; XREF: CODE:3278 
CODE:3280  e6                       MOV A,@R0
CODE:3281  64 0d                    XRL A,#0xd
CODE:3283  60 03                    JZ 0x3288
CODE:3285  02 3b 33                 LJMP 0x3b33
LAB_CODE_3288:
CODE:3288  78 5c                    MOV R0,#0x5c   ; XREF: CODE:3283 
CODE:328a  e6                       MOV A,@R0
CODE:328b  ff                       MOV R7,A
CODE:328c  70 02                    JNZ 0x3290
CODE:328e  80 2f                    SJMP 0x32bf
LAB_CODE_3290:
CODE:3290  ef                       MOV A,R7   ; XREF: CODE:328c 
CODE:3291  b4 01 02                 CJNE A,#0x1,0x3296
CODE:3294  80 33                    SJMP 0x32c9
LAB_CODE_3296:
CODE:3296  ef                       MOV A,R7   ; XREF: CODE:3291 
CODE:3297  b4 02 02                 CJNE A,#0x2,0x329c
CODE:329a  80 3b                    SJMP 0x32d7
LAB_CODE_329c:
CODE:329c  ef                       MOV A,R7   ; XREF: CODE:3297 
CODE:329d  b4 03 02                 CJNE A,#0x3,0x32a2
CODE:32a0  80 42                    SJMP 0x32e4
LAB_CODE_32a2:
CODE:32a2  ef                       MOV A,R7   ; XREF: CODE:329d 
CODE:32a3  b4 04 02                 CJNE A,#0x4,0x32a8
CODE:32a6  80 4a                    SJMP 0x32f2
LAB_CODE_32a8:
CODE:32a8  ef                       MOV A,R7   ; XREF: CODE:32a3 
CODE:32a9  b4 05 02                 CJNE A,#0x5,0x32ae
CODE:32ac  80 57                    SJMP 0x3305
LAB_CODE_32ae:
CODE:32ae  ef                       MOV A,R7   ; XREF: CODE:32a9 
CODE:32af  b4 06 02                 CJNE A,#0x6,0x32b4
CODE:32b2  80 62                    SJMP 0x3316
LAB_CODE_32b4:
CODE:32b4  ef                       MOV A,R7   ; XREF: CODE:32af 
CODE:32b5  64 07                    XRL A,#0x7
CODE:32b7  70 67                    JNZ 0x3320
CODE:32b9  78 61                    MOV R0,#0x61
CODE:32bb  e6                       MOV A,@R0
CODE:32bc  ff                       MOV R7,A
CODE:32bd  70 06                    JNZ 0x32c5
LAB_CODE_32bf:
CODE:32bf  90 08 f1                 MOV DPTR,#0x8f1   ; XREF: CODE:328e 
CODE:32c2  f0                       MOVX @DPTR,A
CODE:32c3  80 34                    SJMP 0x32f9
LAB_CODE_32c5:
CODE:32c5  ef                       MOV A,R7   ; XREF: CODE:32bd 
CODE:32c6  b4 01 0a                 CJNE A,#0x1,0x32d3
LAB_CODE_32c9:
CODE:32c9  e4                       CLR A   ; XREF: CODE:3294 
CODE:32ca  90 08 f1                 MOV DPTR,#0x8f1
CODE:32cd  f0                       MOVX @DPTR,A
CODE:32ce  a3                       INC DPTR
CODE:32cf  74 ff                    MOV A,#0xff
CODE:32d1  80 39                    SJMP 0x330c
LAB_CODE_32d3:
CODE:32d3  ef                       MOV A,R7   ; XREF: CODE:32c6 
CODE:32d4  b4 02 09                 CJNE A,#0x2,0x32e0
LAB_CODE_32d7:
CODE:32d7  90 08 f1                 MOV DPTR,#0x8f1   ; XREF: CODE:329a 
CODE:32da  74 ff                    MOV A,#0xff
CODE:32dc  f0                       MOVX @DPTR,A
CODE:32dd  e4                       CLR A
CODE:32de  80 3c                    SJMP 0x331c
LAB_CODE_32e0:
CODE:32e0  ef                       MOV A,R7   ; XREF: CODE:32d4 
CODE:32e1  b4 03 0a                 CJNE A,#0x3,0x32ee
LAB_CODE_32e4:
CODE:32e4  e4                       CLR A   ; XREF: CODE:32a0 
CODE:32e5  90 08 f1                 MOV DPTR,#0x8f1
CODE:32e8  f0                       MOVX @DPTR,A
CODE:32e9  a3                       INC DPTR
CODE:32ea  74 ff                    MOV A,#0xff
CODE:32ec  80 2f                    SJMP 0x331d
LAB_CODE_32ee:
CODE:32ee  ef                       MOV A,R7   ; XREF: CODE:32e1 
CODE:32ef  b4 04 0f                 CJNE A,#0x4,0x3301
LAB_CODE_32f2:
CODE:32f2  90 08 f1                 MOV DPTR,#0x8f1   ; XREF: CODE:32a6 
CODE:32f5  74 ff                    MOV A,#0xff
CODE:32f7  f0                       MOVX @DPTR,A
CODE:32f8  e4                       CLR A
LAB_CODE_32f9:
CODE:32f9  a3                       INC DPTR   ; XREF: CODE:32c3 
CODE:32fa  f0                       MOVX @DPTR,A
CODE:32fb  a3                       INC DPTR
CODE:32fc  74 ff                    MOV A,#0xff
CODE:32fe  f0                       MOVX @DPTR,A
CODE:32ff  80 1f                    SJMP 0x3320
LAB_CODE_3301:
CODE:3301  ef                       MOV A,R7   ; XREF: CODE:32ef 
CODE:3302  b4 05 0d                 CJNE A,#0x5,0x3312
LAB_CODE_3305:
CODE:3305  90 08 f1                 MOV DPTR,#0x8f1   ; XREF: CODE:32ac 
CODE:3308  74 ff                    MOV A,#0xff
CODE:330a  f0                       MOVX @DPTR,A
CODE:330b  a3                       INC DPTR
LAB_CODE_330c:
CODE:330c  f0                       MOVX @DPTR,A   ; XREF: CODE:32d1 
CODE:330d  e4                       CLR A
CODE:330e  a3                       INC DPTR
CODE:330f  f0                       MOVX @DPTR,A
CODE:3310  80 0e                    SJMP 0x3320
LAB_CODE_3312:
CODE:3312  ef                       MOV A,R7   ; XREF: CODE:3302 
CODE:3313  b4 06 0a                 CJNE A,#0x6,0x3320
LAB_CODE_3316:
CODE:3316  90 08 f1                 MOV DPTR,#0x8f1   ; XREF: CODE:32b2 
CODE:3319  74 ff                    MOV A,#0xff
CODE:331b  f0                       MOVX @DPTR,A
LAB_CODE_331c:
CODE:331c  a3                       INC DPTR   ; XREF: CODE:32de 
LAB_CODE_331d:
CODE:331d  f0                       MOVX @DPTR,A   ; XREF: CODE:32ec 
CODE:331e  a3                       INC DPTR
CODE:331f  f0                       MOVX @DPTR,A
LAB_CODE_3320:
CODE:3320  78 5a                    MOV R0,#0x5a   ; XREF: CODE:32b7 CODE:32ff CODE:3310 CODE:3313 
CODE:3322  06                       INC @R0
CODE:3323  78 1b                    MOV R0,#0x1b
CODE:3325  e6                       MOV A,@R0
CODE:3326  24 01                    ADD A,#0x1
CODE:3328  ff                       MOV R7,A
CODE:3329  e4                       CLR A
CODE:332a  33                       RLC A
CODE:332b  fe                       MOV R6,A
CODE:332c  78 5a                    MOV R0,#0x5a
CODE:332e  e6                       MOV A,@R0
CODE:332f  d3                       SETB CY
CODE:3330  9f                       SUBB A,R7
CODE:3331  ee                       MOV A,R6
CODE:3332  64 80                    XRL A,#0x80
CODE:3334  f8                       MOV R0,A
CODE:3335  74 80                    MOV A,#0x80
CODE:3337  98                       SUBB A,R0
CODE:3338  50 03                    JNC 0x333d
CODE:333a  02 3b 4a                 LJMP 0x3b4a
LAB_CODE_333d:
CODE:333d  e4                       CLR A   ; XREF: CODE:3338 
CODE:333e  78 5a                    MOV R0,#0x5a
CODE:3340  f6                       MOV @R0,A
CODE:3341  78 65                    MOV R0,#0x65
CODE:3343  e6                       MOV A,@R0
CODE:3344  94 0b                    SUBB A,#0xb
CODE:3346  40 03                    JC 0x334b
CODE:3348  02 35 3b                 LJMP 0x353b
LAB_CODE_334b:
CODE:334b  90 08 f1                 MOV DPTR,#0x8f1   ; XREF: CODE:3346 
CODE:334e  e0                       MOVX A,@DPTR
CODE:334f  ff                       MOV R7,A
CODE:3350  e6                       MOV A,@R0
CODE:3351  fe                       MOV R6,A
CODE:3352  24 f6                    ADD A,#0xf6
CODE:3354  f5 82                    MOV DPL,A
CODE:3356  e4                       CLR A
CODE:3357  34 04                    ADDC A,#0x4
CODE:3359  f5 83                    MOV DPH,A
CODE:335b  ef                       MOV A,R7
CODE:335c  f0                       MOVX @DPTR,A
CODE:335d  90 08 f2                 MOV DPTR,#0x8f2
CODE:3360  e0                       MOVX A,@DPTR
CODE:3361  fd                       MOV R5,A
CODE:3362  74 8b                    MOV A,#0x8b
CODE:3364  2e                       ADD A,R6
CODE:3365  f5 82                    MOV DPL,A
CODE:3367  e4                       CLR A
CODE:3368  34 05                    ADDC A,#0x5
CODE:336a  f5 83                    MOV DPH,A
CODE:336c  ed                       MOV A,R5
CODE:336d  f0                       MOVX @DPTR,A
CODE:336e  90 08 f3                 MOV DPTR,#0x8f3
CODE:3371  e0                       MOVX A,@DPTR
CODE:3372  fc                       MOV R4,A
CODE:3373  74 20                    MOV A,#0x20
CODE:3375  2e                       ADD A,R6
CODE:3376  f5 82                    MOV DPL,A
CODE:3378  e4                       CLR A
CODE:3379  34 06                    ADDC A,#0x6
CODE:337b  f5 83                    MOV DPH,A
CODE:337d  ec                       MOV A,R4
CODE:337e  f0                       MOVX @DPTR,A
CODE:337f  74 0d                    MOV A,#0xd
CODE:3381  2e                       ADD A,R6
CODE:3382  f5 82                    MOV DPL,A
CODE:3384  e4                       CLR A
CODE:3385  34 05                    ADDC A,#0x5
CODE:3387  f5 83                    MOV DPH,A
CODE:3389  e4                       CLR A
CODE:338a  f0                       MOVX @DPTR,A
CODE:338b  74 a2                    MOV A,#0xa2
CODE:338d  2e                       ADD A,R6
CODE:338e  f5 82                    MOV DPL,A
CODE:3390  e4                       CLR A
CODE:3391  34 05                    ADDC A,#0x5
CODE:3393  f5 83                    MOV DPH,A
CODE:3395  e4                       CLR A
CODE:3396  f0                       MOVX @DPTR,A
CODE:3397  74 37                    MOV A,#0x37
CODE:3399  2e                       ADD A,R6
CODE:339a  f5 82                    MOV DPL,A
CODE:339c  e4                       CLR A
CODE:339d  34 06                    ADDC A,#0x6
CODE:339f  f5 83                    MOV DPH,A
CODE:33a1  e4                       CLR A
CODE:33a2  f0                       MOVX @DPTR,A
CODE:33a3  74 24                    MOV A,#0x24
CODE:33a5  2e                       ADD A,R6
CODE:33a6  f5 82                    MOV DPL,A
CODE:33a8  e4                       CLR A
CODE:33a9  34 05                    ADDC A,#0x5
CODE:33ab  f5 83                    MOV DPH,A
CODE:33ad  ef                       MOV A,R7
CODE:33ae  f0                       MOVX @DPTR,A
CODE:33af  74 b9                    MOV A,#0xb9
CODE:33b1  2e                       ADD A,R6
CODE:33b2  f5 82                    MOV DPL,A
CODE:33b4  e4                       CLR A
CODE:33b5  34 05                    ADDC A,#0x5
CODE:33b7  f5 83                    MOV DPH,A
CODE:33b9  ed                       MOV A,R5
CODE:33ba  f0                       MOVX @DPTR,A
CODE:33bb  74 4e                    MOV A,#0x4e
CODE:33bd  2e                       ADD A,R6
CODE:33be  f5 82                    MOV DPL,A
CODE:33c0  e4                       CLR A
CODE:33c1  34 06                    ADDC A,#0x6
CODE:33c3  f5 83                    MOV DPH,A
CODE:33c5  ec                       MOV A,R4
CODE:33c6  f0                       MOVX @DPTR,A
CODE:33c7  74 3b                    MOV A,#0x3b
CODE:33c9  2e                       ADD A,R6
CODE:33ca  f5 82                    MOV DPL,A
CODE:33cc  e4                       CLR A
CODE:33cd  34 05                    ADDC A,#0x5
CODE:33cf  f5 83                    MOV DPH,A
CODE:33d1  e4                       CLR A
CODE:33d2  f0                       MOVX @DPTR,A
CODE:33d3  74 d0                    MOV A,#0xd0
CODE:33d5  2e                       ADD A,R6
CODE:33d6  f5 82                    MOV DPL,A
CODE:33d8  e4                       CLR A
CODE:33d9  34 05                    ADDC A,#0x5
CODE:33db  f5 83                    MOV DPH,A
CODE:33dd  e4                       CLR A
CODE:33de  f0                       MOVX @DPTR,A
CODE:33df  74 65                    MOV A,#0x65
CODE:33e1  2e                       ADD A,R6
CODE:33e2  f5 82                    MOV DPL,A
CODE:33e4  e4                       CLR A
CODE:33e5  34 06                    ADDC A,#0x6
CODE:33e7  f5 83                    MOV DPH,A
CODE:33e9  e4                       CLR A
CODE:33ea  f0                       MOVX @DPTR,A
CODE:33eb  90 08 f1                 MOV DPTR,#0x8f1
CODE:33ee  e0                       MOVX A,@DPTR
CODE:33ef  fc                       MOV R4,A
CODE:33f0  74 52                    MOV A,#0x52
CODE:33f2  2e                       ADD A,R6
CODE:33f3  f5 82                    MOV DPL,A
CODE:33f5  e4                       CLR A
CODE:33f6  34 05                    ADDC A,#0x5
CODE:33f8  f5 83                    MOV DPH,A
CODE:33fa  ec                       MOV A,R4
CODE:33fb  f0                       MOVX @DPTR,A
CODE:33fc  90 08 f2                 MOV DPTR,#0x8f2
CODE:33ff  e0                       MOVX A,@DPTR
CODE:3400  fd                       MOV R5,A
CODE:3401  74 e7                    MOV A,#0xe7
CODE:3403  2e                       ADD A,R6
CODE:3404  f5 82                    MOV DPL,A
CODE:3406  e4                       CLR A
CODE:3407  34 05                    ADDC A,#0x5
CODE:3409  f5 83                    MOV DPH,A
CODE:340b  ed                       MOV A,R5
CODE:340c  f0                       MOVX @DPTR,A
CODE:340d  90 08 f3                 MOV DPTR,#0x8f3
CODE:3410  e0                       MOVX A,@DPTR
CODE:3411  f9                       MOV R1,A
CODE:3412  74 7c                    MOV A,#0x7c
CODE:3414  2e                       ADD A,R6
CODE:3415  f5 82                    MOV DPL,A
CODE:3417  e4                       CLR A
CODE:3418  34 06                    ADDC A,#0x6
CODE:341a  f5 83                    MOV DPH,A
CODE:341c  e9                       MOV A,R1
CODE:341d  f0                       MOVX @DPTR,A
CODE:341e  74 69                    MOV A,#0x69
CODE:3420  2e                       ADD A,R6
CODE:3421  f5 82                    MOV DPL,A
CODE:3423  e4                       CLR A
CODE:3424  34 05                    ADDC A,#0x5
CODE:3426  f5 83                    MOV DPH,A
CODE:3428  e4                       CLR A
CODE:3429  f0                       MOVX @DPTR,A
CODE:342a  74 fe                    MOV A,#0xfe
CODE:342c  2e                       ADD A,R6
CODE:342d  f5 82                    MOV DPL,A
CODE:342f  e4                       CLR A
CODE:3430  34 05                    ADDC A,#0x5
CODE:3432  f5 83                    MOV DPH,A
CODE:3434  e4                       CLR A
CODE:3435  f0                       MOVX @DPTR,A
CODE:3436  74 93                    MOV A,#0x93
CODE:3438  2e                       ADD A,R6
CODE:3439  f5 82                    MOV DPL,A
CODE:343b  e4                       CLR A
CODE:343c  34 06                    ADDC A,#0x6
CODE:343e  f5 83                    MOV DPH,A
CODE:3440  e4                       CLR A
CODE:3441  f0                       MOVX @DPTR,A
CODE:3442  ee                       MOV A,R6
CODE:3443  fb                       MOV R3,A
CODE:3444  7a 00                    MOV R2,#0x0
CODE:3446  c3                       CLR CY
CODE:3447  74 16                    MOV A,#0x16
CODE:3449  9b                       SUBB A,R3
CODE:344a  ff                       MOV R7,A
CODE:344b  e4                       CLR A
CODE:344c  9a                       SUBB A,R2
CODE:344d  fe                       MOV R6,A
CODE:344e  74 f6                    MOV A,#0xf6
CODE:3450  2f                       ADD A,R7
CODE:3451  f5 82                    MOV DPL,A
CODE:3453  74 04                    MOV A,#0x4
CODE:3455  3e                       ADDC A,R6
CODE:3456  f5 83                    MOV DPH,A
CODE:3458  e4                       CLR A
CODE:3459  f0                       MOVX @DPTR,A
CODE:345a  74 8b                    MOV A,#0x8b
CODE:345c  2f                       ADD A,R7
CODE:345d  f5 82                    MOV DPL,A
CODE:345f  74 05                    MOV A,#0x5
CODE:3461  3e                       ADDC A,R6
CODE:3462  f5 83                    MOV DPH,A
CODE:3464  e4                       CLR A
CODE:3465  f0                       MOVX @DPTR,A
CODE:3466  74 20                    MOV A,#0x20
CODE:3468  2f                       ADD A,R7
CODE:3469  f5 82                    MOV DPL,A
CODE:346b  74 06                    MOV A,#0x6
CODE:346d  3e                       ADDC A,R6
CODE:346e  f5 83                    MOV DPH,A
CODE:3470  e4                       CLR A
CODE:3471  f0                       MOVX @DPTR,A
CODE:3472  c3                       CLR CY
CODE:3473  74 16                    MOV A,#0x16
CODE:3475  9b                       SUBB A,R3
CODE:3476  ff                       MOV R7,A
CODE:3477  e4                       CLR A
CODE:3478  9a                       SUBB A,R2
CODE:3479  fe                       MOV R6,A
CODE:347a  74 0d                    MOV A,#0xd
CODE:347c  2f                       ADD A,R7
CODE:347d  f5 82                    MOV DPL,A
CODE:347f  74 05                    MOV A,#0x5
CODE:3481  3e                       ADDC A,R6
CODE:3482  f5 83                    MOV DPH,A
CODE:3484  ec                       MOV A,R4
CODE:3485  f0                       MOVX @DPTR,A
CODE:3486  74 a2                    MOV A,#0xa2
CODE:3488  2f                       ADD A,R7
CODE:3489  f5 82                    MOV DPL,A
CODE:348b  74 05                    MOV A,#0x5
CODE:348d  3e                       ADDC A,R6
CODE:348e  f5 83                    MOV DPH,A
CODE:3490  ed                       MOV A,R5
CODE:3491  f0                       MOVX @DPTR,A
CODE:3492  74 37                    MOV A,#0x37
CODE:3494  2f                       ADD A,R7
CODE:3495  f5 82                    MOV DPL,A
CODE:3497  74 06                    MOV A,#0x6
CODE:3499  3e                       ADDC A,R6
CODE:349a  f5 83                    MOV DPH,A
CODE:349c  e9                       MOV A,R1
CODE:349d  f0                       MOVX @DPTR,A
CODE:349e  74 24                    MOV A,#0x24
CODE:34a0  2f                       ADD A,R7
CODE:34a1  f5 82                    MOV DPL,A
CODE:34a3  74 05                    MOV A,#0x5
CODE:34a5  3e                       ADDC A,R6
CODE:34a6  f5 83                    MOV DPH,A
CODE:34a8  e4                       CLR A
CODE:34a9  f0                       MOVX @DPTR,A
CODE:34aa  74 b9                    MOV A,#0xb9
CODE:34ac  2f                       ADD A,R7
CODE:34ad  f5 82                    MOV DPL,A
CODE:34af  74 05                    MOV A,#0x5
CODE:34b1  3e                       ADDC A,R6
CODE:34b2  f5 83                    MOV DPH,A
CODE:34b4  e4                       CLR A
CODE:34b5  f0                       MOVX @DPTR,A
CODE:34b6  74 4e                    MOV A,#0x4e
CODE:34b8  2f                       ADD A,R7
CODE:34b9  f5 82                    MOV DPL,A
CODE:34bb  74 06                    MOV A,#0x6
CODE:34bd  3e                       ADDC A,R6
CODE:34be  f5 83                    MOV DPH,A
CODE:34c0  e4                       CLR A
CODE:34c1  f0                       MOVX @DPTR,A
CODE:34c2  90 08 f1                 MOV DPTR,#0x8f1
CODE:34c5  e0                       MOVX A,@DPTR
CODE:34c6  fd                       MOV R5,A
CODE:34c7  74 3b                    MOV A,#0x3b
CODE:34c9  2f                       ADD A,R7
CODE:34ca  f5 82                    MOV DPL,A
CODE:34cc  74 05                    MOV A,#0x5
CODE:34ce  3e                       ADDC A,R6
CODE:34cf  f5 83                    MOV DPH,A
CODE:34d1  ed                       MOV A,R5
CODE:34d2  f0                       MOVX @DPTR,A
CODE:34d3  90 08 f2                 MOV DPTR,#0x8f2
CODE:34d6  e0                       MOVX A,@DPTR
CODE:34d7  fc                       MOV R4,A
CODE:34d8  74 d0                    MOV A,#0xd0
CODE:34da  2f                       ADD A,R7
CODE:34db  f5 82                    MOV DPL,A
CODE:34dd  74 05                    MOV A,#0x5
CODE:34df  3e                       ADDC A,R6
CODE:34e0  f5 83                    MOV DPH,A
CODE:34e2  ec                       MOV A,R4
CODE:34e3  f0                       MOVX @DPTR,A
CODE:34e4  74 65                    MOV A,#0x65
CODE:34e6  2f                       ADD A,R7
CODE:34e7  f5 82                    MOV DPL,A
CODE:34e9  74 06                    MOV A,#0x6
CODE:34eb  3e                       ADDC A,R6
CODE:34ec  f5 83                    MOV DPH,A
CODE:34ee  e9                       MOV A,R1
CODE:34ef  f0                       MOVX @DPTR,A
CODE:34f0  74 52                    MOV A,#0x52
CODE:34f2  2f                       ADD A,R7
CODE:34f3  f5 82                    MOV DPL,A
CODE:34f5  74 05                    MOV A,#0x5
CODE:34f7  3e                       ADDC A,R6
CODE:34f8  f5 83                    MOV DPH,A
CODE:34fa  e4                       CLR A
CODE:34fb  f0                       MOVX @DPTR,A
CODE:34fc  74 e7                    MOV A,#0xe7
CODE:34fe  2f                       ADD A,R7
CODE:34ff  f5 82                    MOV DPL,A
CODE:3501  74 05                    MOV A,#0x5
CODE:3503  3e                       ADDC A,R6
CODE:3504  f5 83                    MOV DPH,A
CODE:3506  e4                       CLR A
CODE:3507  f0                       MOVX @DPTR,A
CODE:3508  74 7c                    MOV A,#0x7c
CODE:350a  2f                       ADD A,R7
CODE:350b  f5 82                    MOV DPL,A
CODE:350d  74 06                    MOV A,#0x6
CODE:350f  3e                       ADDC A,R6
CODE:3510  f5 83                    MOV DPH,A
CODE:3512  e4                       CLR A
CODE:3513  f0                       MOVX @DPTR,A
CODE:3514  74 69                    MOV A,#0x69
CODE:3516  2f                       ADD A,R7
CODE:3517  f5 82                    MOV DPL,A
CODE:3519  74 05                    MOV A,#0x5
CODE:351b  3e                       ADDC A,R6
CODE:351c  f5 83                    MOV DPH,A
CODE:351e  ed                       MOV A,R5
CODE:351f  f0                       MOVX @DPTR,A
CODE:3520  74 fe                    MOV A,#0xfe
CODE:3522  2f                       ADD A,R7
CODE:3523  f5 82                    MOV DPL,A
CODE:3525  74 05                    MOV A,#0x5
CODE:3527  3e                       ADDC A,R6
CODE:3528  f5 83                    MOV DPH,A
CODE:352a  ec                       MOV A,R4
CODE:352b  f0                       MOVX @DPTR,A
CODE:352c  74 93                    MOV A,#0x93
CODE:352e  2f                       ADD A,R7
CODE:352f  f5 82                    MOV DPL,A
CODE:3531  74 06                    MOV A,#0x6
CODE:3533  3e                       ADDC A,R6
CODE:3534  f5 83                    MOV DPH,A
CODE:3536  e9                       MOV A,R1
CODE:3537  f0                       MOVX @DPTR,A
CODE:3538  02 3b 14                 LJMP 0x3b14
LAB_CODE_353b:
CODE:353b  78 65                    MOV R0,#0x65   ; XREF: CODE:3348 
CODE:353d  e6                       MOV A,@R0
CODE:353e  f9                       MOV R1,A
CODE:353f  c3                       CLR CY
CODE:3540  94 17                    SUBB A,#0x17
CODE:3542  40 03                    JC 0x3547
CODE:3544  02 37 60                 LJMP 0x3760
LAB_CODE_3547:
CODE:3547  90 08 f1                 MOV DPTR,#0x8f1   ; XREF: CODE:3542 
CODE:354a  e0                       MOVX A,@DPTR
CODE:354b  ff                       MOV R7,A
CODE:354c  e6                       MOV A,@R0
CODE:354d  fe                       MOV R6,A
CODE:354e  24 f6                    ADD A,#0xf6
CODE:3550  f5 82                    MOV DPL,A
CODE:3552  e4                       CLR A
CODE:3553  34 04                    ADDC A,#0x4
CODE:3555  f5 83                    MOV DPH,A
CODE:3557  ef                       MOV A,R7
CODE:3558  f0                       MOVX @DPTR,A
CODE:3559  90 08 f2                 MOV DPTR,#0x8f2
CODE:355c  e0                       MOVX A,@DPTR
CODE:355d  fd                       MOV R5,A
CODE:355e  74 8b                    MOV A,#0x8b
CODE:3560  2e                       ADD A,R6
CODE:3561  f5 82                    MOV DPL,A
CODE:3563  e4                       CLR A
CODE:3564  34 05                    ADDC A,#0x5
CODE:3566  f5 83                    MOV DPH,A
CODE:3568  ed                       MOV A,R5
CODE:3569  f0                       MOVX @DPTR,A
CODE:356a  90 08 f3                 MOV DPTR,#0x8f3
CODE:356d  e0                       MOVX A,@DPTR
CODE:356e  fc                       MOV R4,A
CODE:356f  74 20                    MOV A,#0x20
CODE:3571  2e                       ADD A,R6
CODE:3572  f5 82                    MOV DPL,A
CODE:3574  e4                       CLR A
CODE:3575  34 06                    ADDC A,#0x6
CODE:3577  f5 83                    MOV DPH,A
CODE:3579  ec                       MOV A,R4
CODE:357a  f0                       MOVX @DPTR,A
CODE:357b  74 0d                    MOV A,#0xd
CODE:357d  2e                       ADD A,R6
CODE:357e  f5 82                    MOV DPL,A
CODE:3580  e4                       CLR A
CODE:3581  34 05                    ADDC A,#0x5
CODE:3583  f5 83                    MOV DPH,A
CODE:3585  ef                       MOV A,R7
CODE:3586  f0                       MOVX @DPTR,A
CODE:3587  74 a2                    MOV A,#0xa2
CODE:3589  2e                       ADD A,R6
CODE:358a  f5 82                    MOV DPL,A
CODE:358c  e4                       CLR A
CODE:358d  34 05                    ADDC A,#0x5
CODE:358f  f5 83                    MOV DPH,A
CODE:3591  ed                       MOV A,R5
CODE:3592  f0                       MOVX @DPTR,A
CODE:3593  74 37                    MOV A,#0x37
CODE:3595  2e                       ADD A,R6
CODE:3596  f5 82                    MOV DPL,A
CODE:3598  e4                       CLR A
CODE:3599  34 06                    ADDC A,#0x6
CODE:359b  f5 83                    MOV DPH,A
CODE:359d  ec                       MOV A,R4
CODE:359e  f0                       MOVX @DPTR,A
CODE:359f  90 08 f1                 MOV DPTR,#0x8f1
CODE:35a2  e0                       MOVX A,@DPTR
CODE:35a3  ff                       MOV R7,A
CODE:35a4  74 24                    MOV A,#0x24
CODE:35a6  2e                       ADD A,R6
CODE:35a7  f5 82                    MOV DPL,A
CODE:35a9  e4                       CLR A
CODE:35aa  34 05                    ADDC A,#0x5
CODE:35ac  f5 83                    MOV DPH,A
CODE:35ae  ef                       MOV A,R7
CODE:35af  f0                       MOVX @DPTR,A
CODE:35b0  90 08 f2                 MOV DPTR,#0x8f2
CODE:35b3  e0                       MOVX A,@DPTR
CODE:35b4  fd                       MOV R5,A
CODE:35b5  74 b9                    MOV A,#0xb9
CODE:35b7  2e                       ADD A,R6
CODE:35b8  f5 82                    MOV DPL,A
CODE:35ba  e4                       CLR A
CODE:35bb  34 05                    ADDC A,#0x5
CODE:35bd  f5 83                    MOV DPH,A
CODE:35bf  ed                       MOV A,R5
CODE:35c0  f0                       MOVX @DPTR,A
CODE:35c1  90 08 f3                 MOV DPTR,#0x8f3
CODE:35c4  e0                       MOVX A,@DPTR
CODE:35c5  fc                       MOV R4,A
CODE:35c6  74 4e                    MOV A,#0x4e
CODE:35c8  2e                       ADD A,R6
CODE:35c9  f5 82                    MOV DPL,A
CODE:35cb  e4                       CLR A
CODE:35cc  34 06                    ADDC A,#0x6
CODE:35ce  f5 83                    MOV DPH,A
CODE:35d0  ec                       MOV A,R4
CODE:35d1  f0                       MOVX @DPTR,A
CODE:35d2  74 3b                    MOV A,#0x3b
CODE:35d4  2e                       ADD A,R6
CODE:35d5  f5 82                    MOV DPL,A
CODE:35d7  e4                       CLR A
CODE:35d8  34 05                    ADDC A,#0x5
CODE:35da  f5 83                    MOV DPH,A
CODE:35dc  ef                       MOV A,R7
CODE:35dd  f0                       MOVX @DPTR,A
CODE:35de  74 d0                    MOV A,#0xd0
CODE:35e0  2e                       ADD A,R6
CODE:35e1  f5 82                    MOV DPL,A
CODE:35e3  e4                       CLR A
CODE:35e4  34 05                    ADDC A,#0x5
CODE:35e6  f5 83                    MOV DPH,A
CODE:35e8  ed                       MOV A,R5
CODE:35e9  f0                       MOVX @DPTR,A
CODE:35ea  74 65                    MOV A,#0x65
CODE:35ec  2e                       ADD A,R6
CODE:35ed  f5 82                    MOV DPL,A
CODE:35ef  e4                       CLR A
CODE:35f0  34 06                    ADDC A,#0x6
CODE:35f2  f5 83                    MOV DPH,A
CODE:35f4  ec                       MOV A,R4
CODE:35f5  f0                       MOVX @DPTR,A
CODE:35f6  90 08 f1                 MOV DPTR,#0x8f1
CODE:35f9  e0                       MOVX A,@DPTR
CODE:35fa  ff                       MOV R7,A
CODE:35fb  74 52                    MOV A,#0x52
CODE:35fd  2e                       ADD A,R6
CODE:35fe  f5 82                    MOV DPL,A
CODE:3600  e4                       CLR A
CODE:3601  34 05                    ADDC A,#0x5
CODE:3603  f5 83                    MOV DPH,A
CODE:3605  ef                       MOV A,R7
CODE:3606  f0                       MOVX @DPTR,A
CODE:3607  90 08 f2                 MOV DPTR,#0x8f2
CODE:360a  e0                       MOVX A,@DPTR
CODE:360b  fd                       MOV R5,A
CODE:360c  74 e7                    MOV A,#0xe7
CODE:360e  2e                       ADD A,R6
CODE:360f  f5 82                    MOV DPL,A
CODE:3611  e4                       CLR A
CODE:3612  34 05                    ADDC A,#0x5
CODE:3614  f5 83                    MOV DPH,A
CODE:3616  ed                       MOV A,R5
CODE:3617  f0                       MOVX @DPTR,A
CODE:3618  90 08 f3                 MOV DPTR,#0x8f3
CODE:361b  e0                       MOVX A,@DPTR
CODE:361c  fc                       MOV R4,A
CODE:361d  74 7c                    MOV A,#0x7c
CODE:361f  2e                       ADD A,R6
CODE:3620  f5 82                    MOV DPL,A
CODE:3622  e4                       CLR A
CODE:3623  34 06                    ADDC A,#0x6
CODE:3625  f5 83                    MOV DPH,A
CODE:3627  ec                       MOV A,R4
CODE:3628  f0                       MOVX @DPTR,A
CODE:3629  74 69                    MOV A,#0x69
CODE:362b  2e                       ADD A,R6
CODE:362c  f5 82                    MOV DPL,A
CODE:362e  e4                       CLR A
CODE:362f  34 05                    ADDC A,#0x5
CODE:3631  f5 83                    MOV DPH,A
CODE:3633  ef                       MOV A,R7
CODE:3634  f0                       MOVX @DPTR,A
CODE:3635  74 fe                    MOV A,#0xfe
CODE:3637  2e                       ADD A,R6
CODE:3638  f5 82                    MOV DPL,A
CODE:363a  e4                       CLR A
CODE:363b  34 05                    ADDC A,#0x5
CODE:363d  f5 83                    MOV DPH,A
CODE:363f  ed                       MOV A,R5
CODE:3640  f0                       MOVX @DPTR,A
CODE:3641  74 93                    MOV A,#0x93
CODE:3643  2e                       ADD A,R6
CODE:3644  f5 82                    MOV DPL,A
CODE:3646  e4                       CLR A
CODE:3647  34 06                    ADDC A,#0x6
CODE:3649  f5 83                    MOV DPH,A
CODE:364b  ec                       MOV A,R4
CODE:364c  f0                       MOVX @DPTR,A
CODE:364d  90 08 f1                 MOV DPTR,#0x8f1
CODE:3650  e0                       MOVX A,@DPTR
CODE:3651  ff                       MOV R7,A
CODE:3652  ee                       MOV A,R6
CODE:3653  fd                       MOV R5,A
CODE:3654  c3                       CLR CY
CODE:3655  74 16                    MOV A,#0x16
CODE:3657  9d                       SUBB A,R5
CODE:3658  fd                       MOV R5,A
CODE:3659  e4                       CLR A
CODE:365a  94 00                    SUBB A,#0x0
CODE:365c  fc                       MOV R4,A
CODE:365d  74 f6                    MOV A,#0xf6
CODE:365f  2d                       ADD A,R5
CODE:3660  f5 82                    MOV DPL,A
CODE:3662  74 04                    MOV A,#0x4
CODE:3664  3c                       ADDC A,R4
CODE:3665  f5 83                    MOV DPH,A
CODE:3667  ef                       MOV A,R7
CODE:3668  f0                       MOVX @DPTR,A
CODE:3669  90 08 f2                 MOV DPTR,#0x8f2
CODE:366c  e0                       MOVX A,@DPTR
CODE:366d  fe                       MOV R6,A
CODE:366e  74 8b                    MOV A,#0x8b
CODE:3670  2d                       ADD A,R5
CODE:3671  f5 82                    MOV DPL,A
CODE:3673  74 05                    MOV A,#0x5
CODE:3675  3c                       ADDC A,R4
CODE:3676  f5 83                    MOV DPH,A
CODE:3678  ee                       MOV A,R6
CODE:3679  f0                       MOVX @DPTR,A
CODE:367a  90 08 f3                 MOV DPTR,#0x8f3
CODE:367d  e0                       MOVX A,@DPTR
CODE:367e  fb                       MOV R3,A
CODE:367f  74 20                    MOV A,#0x20
CODE:3681  2d                       ADD A,R5
CODE:3682  f5 82                    MOV DPL,A
CODE:3684  74 06                    MOV A,#0x6
CODE:3686  3c                       ADDC A,R4
CODE:3687  f5 83                    MOV DPH,A
CODE:3689  eb                       MOV A,R3
CODE:368a  f0                       MOVX @DPTR,A
CODE:368b  74 0d                    MOV A,#0xd
CODE:368d  2d                       ADD A,R5
CODE:368e  f5 82                    MOV DPL,A
CODE:3690  74 05                    MOV A,#0x5
CODE:3692  3c                       ADDC A,R4
CODE:3693  f5 83                    MOV DPH,A
CODE:3695  ef                       MOV A,R7
CODE:3696  f0                       MOVX @DPTR,A
CODE:3697  74 a2                    MOV A,#0xa2
CODE:3699  2d                       ADD A,R5
CODE:369a  f5 82                    MOV DPL,A
CODE:369c  74 05                    MOV A,#0x5
CODE:369e  3c                       ADDC A,R4
CODE:369f  f5 83                    MOV DPH,A
CODE:36a1  ee                       MOV A,R6
CODE:36a2  f0                       MOVX @DPTR,A
CODE:36a3  74 37                    MOV A,#0x37
CODE:36a5  2d                       ADD A,R5
CODE:36a6  f5 82                    MOV DPL,A
CODE:36a8  74 06                    MOV A,#0x6
CODE:36aa  3c                       ADDC A,R4
CODE:36ab  f5 83                    MOV DPH,A
CODE:36ad  eb                       MOV A,R3
CODE:36ae  f0                       MOVX @DPTR,A
CODE:36af  90 08 f1                 MOV DPTR,#0x8f1
CODE:36b2  e0                       MOVX A,@DPTR
CODE:36b3  ff                       MOV R7,A
CODE:36b4  74 24                    MOV A,#0x24
CODE:36b6  2d                       ADD A,R5
CODE:36b7  f5 82                    MOV DPL,A
CODE:36b9  74 05                    MOV A,#0x5
CODE:36bb  3c                       ADDC A,R4
CODE:36bc  f5 83                    MOV DPH,A
CODE:36be  ef                       MOV A,R7
CODE:36bf  f0                       MOVX @DPTR,A
CODE:36c0  90 08 f2                 MOV DPTR,#0x8f2
CODE:36c3  e0                       MOVX A,@DPTR
CODE:36c4  fe                       MOV R6,A
CODE:36c5  74 b9                    MOV A,#0xb9
CODE:36c7  2d                       ADD A,R5
CODE:36c8  f5 82                    MOV DPL,A
CODE:36ca  74 05                    MOV A,#0x5
CODE:36cc  3c                       ADDC A,R4
CODE:36cd  f5 83                    MOV DPH,A
CODE:36cf  ee                       MOV A,R6
CODE:36d0  f0                       MOVX @DPTR,A
CODE:36d1  90 08 f3                 MOV DPTR,#0x8f3
CODE:36d4  e0                       MOVX A,@DPTR
CODE:36d5  fb                       MOV R3,A
CODE:36d6  74 4e                    MOV A,#0x4e
CODE:36d8  2d                       ADD A,R5
CODE:36d9  f5 82                    MOV DPL,A
CODE:36db  74 06                    MOV A,#0x6
CODE:36dd  3c                       ADDC A,R4
CODE:36de  f5 83                    MOV DPH,A
CODE:36e0  eb                       MOV A,R3
CODE:36e1  f0                       MOVX @DPTR,A
CODE:36e2  74 3b                    MOV A,#0x3b
CODE:36e4  2d                       ADD A,R5
CODE:36e5  f5 82                    MOV DPL,A
CODE:36e7  74 05                    MOV A,#0x5
CODE:36e9  3c                       ADDC A,R4
CODE:36ea  f5 83                    MOV DPH,A
CODE:36ec  ef                       MOV A,R7
CODE:36ed  f0                       MOVX @DPTR,A
CODE:36ee  74 d0                    MOV A,#0xd0
CODE:36f0  2d                       ADD A,R5
CODE:36f1  f5 82                    MOV DPL,A
CODE:36f3  74 05                    MOV A,#0x5
CODE:36f5  3c                       ADDC A,R4
CODE:36f6  f5 83                    MOV DPH,A
CODE:36f8  ee                       MOV A,R6
CODE:36f9  f0                       MOVX @DPTR,A
CODE:36fa  74 65                    MOV A,#0x65
CODE:36fc  2d                       ADD A,R5
CODE:36fd  f5 82                    MOV DPL,A
CODE:36ff  74 06                    MOV A,#0x6
CODE:3701  3c                       ADDC A,R4
CODE:3702  f5 83                    MOV DPH,A
CODE:3704  eb                       MOV A,R3
CODE:3705  f0                       MOVX @DPTR,A
CODE:3706  90 08 f1                 MOV DPTR,#0x8f1
CODE:3709  e0                       MOVX A,@DPTR
CODE:370a  ff                       MOV R7,A
CODE:370b  74 52                    MOV A,#0x52
CODE:370d  2d                       ADD A,R5
CODE:370e  f5 82                    MOV DPL,A
CODE:3710  74 05                    MOV A,#0x5
CODE:3712  3c                       ADDC A,R4
CODE:3713  f5 83                    MOV DPH,A
CODE:3715  ef                       MOV A,R7
CODE:3716  f0                       MOVX @DPTR,A
CODE:3717  90 08 f2                 MOV DPTR,#0x8f2
CODE:371a  e0                       MOVX A,@DPTR
CODE:371b  fe                       MOV R6,A
CODE:371c  74 e7                    MOV A,#0xe7
CODE:371e  2d                       ADD A,R5
CODE:371f  f5 82                    MOV DPL,A
CODE:3721  74 05                    MOV A,#0x5
CODE:3723  3c                       ADDC A,R4
CODE:3724  f5 83                    MOV DPH,A
CODE:3726  ee                       MOV A,R6
CODE:3727  f0                       MOVX @DPTR,A
CODE:3728  90 08 f3                 MOV DPTR,#0x8f3
CODE:372b  e0                       MOVX A,@DPTR
CODE:372c  fb                       MOV R3,A
CODE:372d  74 7c                    MOV A,#0x7c
CODE:372f  2d                       ADD A,R5
CODE:3730  f5 82                    MOV DPL,A
CODE:3732  74 06                    MOV A,#0x6
CODE:3734  3c                       ADDC A,R4
CODE:3735  f5 83                    MOV DPH,A
CODE:3737  eb                       MOV A,R3
CODE:3738  f0                       MOVX @DPTR,A
CODE:3739  74 69                    MOV A,#0x69
CODE:373b  2d                       ADD A,R5
CODE:373c  f5 82                    MOV DPL,A
CODE:373e  74 05                    MOV A,#0x5
CODE:3740  3c                       ADDC A,R4
CODE:3741  f5 83                    MOV DPH,A
CODE:3743  ef                       MOV A,R7
CODE:3744  f0                       MOVX @DPTR,A
CODE:3745  74 fe                    MOV A,#0xfe
CODE:3747  2d                       ADD A,R5
CODE:3748  f5 82                    MOV DPL,A
CODE:374a  74 05                    MOV A,#0x5
CODE:374c  3c                       ADDC A,R4
CODE:374d  f5 83                    MOV DPH,A
CODE:374f  ee                       MOV A,R6
CODE:3750  f0                       MOVX @DPTR,A
CODE:3751  74 93                    MOV A,#0x93
CODE:3753  2d                       ADD A,R5
CODE:3754  f5 82                    MOV DPL,A
CODE:3756  74 06                    MOV A,#0x6
CODE:3758  3c                       ADDC A,R4
CODE:3759  f5 83                    MOV DPH,A
CODE:375b  eb                       MOV A,R3
CODE:375c  f0                       MOVX @DPTR,A
CODE:375d  02 3b 14                 LJMP 0x3b14
LAB_CODE_3760:
CODE:3760  e9                       MOV A,R1   ; XREF: CODE:3544 
CODE:3761  c3                       CLR CY
CODE:3762  94 22                    SUBB A,#0x22
CODE:3764  40 03                    JC 0x3769
CODE:3766  02 39 4f                 LJMP 0x394f
LAB_CODE_3769:
CODE:3769  78 65                    MOV R0,#0x65   ; XREF: CODE:3764 
CODE:376b  e6                       MOV A,@R0
CODE:376c  ff                       MOV R7,A
CODE:376d  24 df                    ADD A,#0xdf
CODE:376f  f5 82                    MOV DPL,A
CODE:3771  e4                       CLR A
CODE:3772  34 04                    ADDC A,#0x4
CODE:3774  f5 83                    MOV DPH,A
CODE:3776  e4                       CLR A
CODE:3777  f0                       MOVX @DPTR,A
CODE:3778  74 74                    MOV A,#0x74
CODE:377a  2f                       ADD A,R7
CODE:377b  f5 82                    MOV DPL,A
CODE:377d  e4                       CLR A
CODE:377e  34 05                    ADDC A,#0x5
CODE:3780  f5 83                    MOV DPH,A
CODE:3782  e4                       CLR A
CODE:3783  f0                       MOVX @DPTR,A
CODE:3784  74 09                    MOV A,#0x9
CODE:3786  2f                       ADD A,R7
CODE:3787  f5 82                    MOV DPL,A
CODE:3789  e4                       CLR A
CODE:378a  34 06                    ADDC A,#0x6
CODE:378c  f5 83                    MOV DPH,A
CODE:378e  e4                       CLR A
CODE:378f  f0                       MOVX @DPTR,A
CODE:3790  90 08 f1                 MOV DPTR,#0x8f1
CODE:3793  e0                       MOVX A,@DPTR
CODE:3794  ff                       MOV R7,A
CODE:3795  e6                       MOV A,@R0
CODE:3796  fe                       MOV R6,A
CODE:3797  24 f6                    ADD A,#0xf6
CODE:3799  f5 82                    MOV DPL,A
CODE:379b  e4                       CLR A
CODE:379c  34 04                    ADDC A,#0x4
CODE:379e  f5 83                    MOV DPH,A
CODE:37a0  ef                       MOV A,R7
CODE:37a1  f0                       MOVX @DPTR,A
CODE:37a2  90 08 f2                 MOV DPTR,#0x8f2
CODE:37a5  e0                       MOVX A,@DPTR
CODE:37a6  fd                       MOV R5,A
CODE:37a7  74 8b                    MOV A,#0x8b
CODE:37a9  2e                       ADD A,R6
CODE:37aa  f5 82                    MOV DPL,A
CODE:37ac  e4                       CLR A
CODE:37ad  34 05                    ADDC A,#0x5
CODE:37af  f5 83                    MOV DPH,A
CODE:37b1  ed                       MOV A,R5
CODE:37b2  f0                       MOVX @DPTR,A
CODE:37b3  90 08 f3                 MOV DPTR,#0x8f3
CODE:37b6  e0                       MOVX A,@DPTR
CODE:37b7  fc                       MOV R4,A
CODE:37b8  74 20                    MOV A,#0x20
CODE:37ba  2e                       ADD A,R6
CODE:37bb  f5 82                    MOV DPL,A
CODE:37bd  e4                       CLR A
CODE:37be  34 06                    ADDC A,#0x6
CODE:37c0  f5 83                    MOV DPH,A
CODE:37c2  ec                       MOV A,R4
CODE:37c3  f0                       MOVX @DPTR,A
CODE:37c4  74 0d                    MOV A,#0xd
CODE:37c6  2e                       ADD A,R6
CODE:37c7  f5 82                    MOV DPL,A
CODE:37c9  e4                       CLR A
CODE:37ca  34 05                    ADDC A,#0x5
CODE:37cc  f5 83                    MOV DPH,A
CODE:37ce  e4                       CLR A
CODE:37cf  f0                       MOVX @DPTR,A
CODE:37d0  74 a2                    MOV A,#0xa2
CODE:37d2  2e                       ADD A,R6
CODE:37d3  f5 82                    MOV DPL,A
CODE:37d5  e4                       CLR A
CODE:37d6  34 05                    ADDC A,#0x5
CODE:37d8  f5 83                    MOV DPH,A
CODE:37da  e4                       CLR A
CODE:37db  f0                       MOVX @DPTR,A
CODE:37dc  74 37                    MOV A,#0x37
CODE:37de  2e                       ADD A,R6
CODE:37df  f5 82                    MOV DPL,A
CODE:37e1  e4                       CLR A
CODE:37e2  34 06                    ADDC A,#0x6
CODE:37e4  f5 83                    MOV DPH,A
CODE:37e6  e4                       CLR A
CODE:37e7  f0                       MOVX @DPTR,A
CODE:37e8  74 24                    MOV A,#0x24
CODE:37ea  2e                       ADD A,R6
CODE:37eb  f5 82                    MOV DPL,A
CODE:37ed  e4                       CLR A
CODE:37ee  34 05                    ADDC A,#0x5
CODE:37f0  f5 83                    MOV DPH,A
CODE:37f2  ef                       MOV A,R7
CODE:37f3  f0                       MOVX @DPTR,A
CODE:37f4  74 b9                    MOV A,#0xb9
CODE:37f6  2e                       ADD A,R6
CODE:37f7  f5 82                    MOV DPL,A
CODE:37f9  e4                       CLR A
CODE:37fa  34 05                    ADDC A,#0x5
CODE:37fc  f5 83                    MOV DPH,A
CODE:37fe  ed                       MOV A,R5
CODE:37ff  f0                       MOVX @DPTR,A
CODE:3800  74 4e                    MOV A,#0x4e
CODE:3802  2e                       ADD A,R6
CODE:3803  f5 82                    MOV DPL,A
CODE:3805  e4                       CLR A
CODE:3806  34 06                    ADDC A,#0x6
CODE:3808  f5 83                    MOV DPH,A
CODE:380a  ec                       MOV A,R4
CODE:380b  f0                       MOVX @DPTR,A
CODE:380c  74 3b                    MOV A,#0x3b
CODE:380e  2e                       ADD A,R6
CODE:380f  f5 82                    MOV DPL,A
CODE:3811  e4                       CLR A
CODE:3812  34 05                    ADDC A,#0x5
CODE:3814  f5 83                    MOV DPH,A
CODE:3816  e4                       CLR A
CODE:3817  f0                       MOVX @DPTR,A
CODE:3818  74 d0                    MOV A,#0xd0
CODE:381a  2e                       ADD A,R6
CODE:381b  f5 82                    MOV DPL,A
CODE:381d  e4                       CLR A
CODE:381e  34 05                    ADDC A,#0x5
CODE:3820  f5 83                    MOV DPH,A
CODE:3822  e4                       CLR A
CODE:3823  f0                       MOVX @DPTR,A
CODE:3824  74 65                    MOV A,#0x65
CODE:3826  2e                       ADD A,R6
CODE:3827  f5 82                    MOV DPL,A
CODE:3829  e4                       CLR A
CODE:382a  34 06                    ADDC A,#0x6
CODE:382c  f5 83                    MOV DPH,A
CODE:382e  e4                       CLR A
CODE:382f  f0                       MOVX @DPTR,A
CODE:3830  90 08 f1                 MOV DPTR,#0x8f1
CODE:3833  e0                       MOVX A,@DPTR
CODE:3834  ff                       MOV R7,A
CODE:3835  74 52                    MOV A,#0x52
CODE:3837  2e                       ADD A,R6
CODE:3838  f5 82                    MOV DPL,A
CODE:383a  e4                       CLR A
CODE:383b  34 05                    ADDC A,#0x5
CODE:383d  f5 83                    MOV DPH,A
CODE:383f  ef                       MOV A,R7
CODE:3840  f0                       MOVX @DPTR,A
CODE:3841  90 08 f2                 MOV DPTR,#0x8f2
CODE:3844  e0                       MOVX A,@DPTR
CODE:3845  fd                       MOV R5,A
CODE:3846  74 e7                    MOV A,#0xe7
CODE:3848  2e                       ADD A,R6
CODE:3849  f5 82                    MOV DPL,A
CODE:384b  e4                       CLR A
CODE:384c  34 05                    ADDC A,#0x5
CODE:384e  f5 83                    MOV DPH,A
CODE:3850  ed                       MOV A,R5
CODE:3851  f0                       MOVX @DPTR,A
CODE:3852  90 08 f3                 MOV DPTR,#0x8f3
CODE:3855  e0                       MOVX A,@DPTR
CODE:3856  f9                       MOV R1,A
CODE:3857  74 7c                    MOV A,#0x7c
CODE:3859  2e                       ADD A,R6
CODE:385a  f5 82                    MOV DPL,A
CODE:385c  e4                       CLR A
CODE:385d  34 06                    ADDC A,#0x6
CODE:385f  f5 83                    MOV DPH,A
CODE:3861  e9                       MOV A,R1
CODE:3862  f0                       MOVX @DPTR,A
CODE:3863  ee                       MOV A,R6
CODE:3864  fb                       MOV R3,A
CODE:3865  c3                       CLR CY
CODE:3866  74 2d                    MOV A,#0x2d
CODE:3868  9b                       SUBB A,R3
CODE:3869  fb                       MOV R3,A
CODE:386a  e4                       CLR A
CODE:386b  94 00                    SUBB A,#0x0
CODE:386d  fa                       MOV R2,A
CODE:386e  74 f6                    MOV A,#0xf6
CODE:3870  2b                       ADD A,R3
CODE:3871  f5 82                    MOV DPL,A
CODE:3873  74 04                    MOV A,#0x4
CODE:3875  3a                       ADDC A,R2
CODE:3876  f5 83                    MOV DPH,A
CODE:3878  ef                       MOV A,R7
CODE:3879  f0                       MOVX @DPTR,A
CODE:387a  74 8b                    MOV A,#0x8b
CODE:387c  2b                       ADD A,R3
CODE:387d  f5 82                    MOV DPL,A
CODE:387f  74 05                    MOV A,#0x5
CODE:3881  3a                       ADDC A,R2
CODE:3882  f5 83                    MOV DPH,A
CODE:3884  ed                       MOV A,R5
CODE:3885  f0                       MOVX @DPTR,A
CODE:3886  74 20                    MOV A,#0x20
CODE:3888  2b                       ADD A,R3
CODE:3889  f5 82                    MOV DPL,A
CODE:388b  74 06                    MOV A,#0x6
CODE:388d  3a                       ADDC A,R2
CODE:388e  f5 83                    MOV DPH,A
CODE:3890  e9                       MOV A,R1
CODE:3891  f0                       MOVX @DPTR,A
CODE:3892  74 0d                    MOV A,#0xd
CODE:3894  2b                       ADD A,R3
CODE:3895  f5 82                    MOV DPL,A
CODE:3897  74 05                    MOV A,#0x5
CODE:3899  3a                       ADDC A,R2
CODE:389a  f5 83                    MOV DPH,A
CODE:389c  e4                       CLR A
CODE:389d  f0                       MOVX @DPTR,A
CODE:389e  74 a2                    MOV A,#0xa2
CODE:38a0  2b                       ADD A,R3
CODE:38a1  f5 82                    MOV DPL,A
CODE:38a3  74 05                    MOV A,#0x5
CODE:38a5  3a                       ADDC A,R2
CODE:38a6  f5 83                    MOV DPH,A
CODE:38a8  e4                       CLR A
CODE:38a9  f0                       MOVX @DPTR,A
CODE:38aa  74 37                    MOV A,#0x37
CODE:38ac  2b                       ADD A,R3
CODE:38ad  f5 82                    MOV DPL,A
CODE:38af  74 06                    MOV A,#0x6
CODE:38b1  3a                       ADDC A,R2
CODE:38b2  f5 83                    MOV DPH,A
CODE:38b4  e4                       CLR A
CODE:38b5  f0                       MOVX @DPTR,A
CODE:38b6  90 08 f1                 MOV DPTR,#0x8f1
CODE:38b9  e0                       MOVX A,@DPTR
CODE:38ba  ff                       MOV R7,A
CODE:38bb  74 24                    MOV A,#0x24
CODE:38bd  2b                       ADD A,R3
CODE:38be  f5 82                    MOV DPL,A
CODE:38c0  74 05                    MOV A,#0x5
CODE:38c2  3a                       ADDC A,R2
CODE:38c3  f5 83                    MOV DPH,A
CODE:38c5  ef                       MOV A,R7
CODE:38c6  f0                       MOVX @DPTR,A
CODE:38c7  90 08 f2                 MOV DPTR,#0x8f2
CODE:38ca  e0                       MOVX A,@DPTR
CODE:38cb  fe                       MOV R6,A
CODE:38cc  74 b9                    MOV A,#0xb9
CODE:38ce  2b                       ADD A,R3
CODE:38cf  f5 82                    MOV DPL,A
CODE:38d1  74 05                    MOV A,#0x5
CODE:38d3  3a                       ADDC A,R2
CODE:38d4  f5 83                    MOV DPH,A
CODE:38d6  ee                       MOV A,R6
CODE:38d7  f0                       MOVX @DPTR,A
CODE:38d8  74 4e                    MOV A,#0x4e
CODE:38da  2b                       ADD A,R3
CODE:38db  f5 82                    MOV DPL,A
CODE:38dd  74 06                    MOV A,#0x6
CODE:38df  3a                       ADDC A,R2
CODE:38e0  f5 83                    MOV DPH,A
CODE:38e2  e9                       MOV A,R1
CODE:38e3  f0                       MOVX @DPTR,A
CODE:38e4  74 3b                    MOV A,#0x3b
CODE:38e6  2b                       ADD A,R3
CODE:38e7  f5 82                    MOV DPL,A
CODE:38e9  74 05                    MOV A,#0x5
CODE:38eb  3a                       ADDC A,R2
CODE:38ec  f5 83                    MOV DPH,A
CODE:38ee  e4                       CLR A
CODE:38ef  f0                       MOVX @DPTR,A
CODE:38f0  74 d0                    MOV A,#0xd0
CODE:38f2  2b                       ADD A,R3
CODE:38f3  f5 82                    MOV DPL,A
CODE:38f5  74 05                    MOV A,#0x5
CODE:38f7  3a                       ADDC A,R2
CODE:38f8  f5 83                    MOV DPH,A
CODE:38fa  e4                       CLR A
CODE:38fb  f0                       MOVX @DPTR,A
CODE:38fc  74 65                    MOV A,#0x65
CODE:38fe  2b                       ADD A,R3
CODE:38ff  f5 82                    MOV DPL,A
CODE:3901  74 06                    MOV A,#0x6
CODE:3903  3a                       ADDC A,R2
CODE:3904  f5 83                    MOV DPH,A
CODE:3906  e4                       CLR A
CODE:3907  f0                       MOVX @DPTR,A
CODE:3908  74 52                    MOV A,#0x52
CODE:390a  2b                       ADD A,R3
CODE:390b  f5 82                    MOV DPL,A
CODE:390d  74 05                    MOV A,#0x5
CODE:390f  3a                       ADDC A,R2
CODE:3910  f5 83                    MOV DPH,A
CODE:3912  ef                       MOV A,R7
CODE:3913  f0                       MOVX @DPTR,A
CODE:3914  74 e7                    MOV A,#0xe7
CODE:3916  2b                       ADD A,R3
CODE:3917  f5 82                    MOV DPL,A
CODE:3919  74 05                    MOV A,#0x5
CODE:391b  3a                       ADDC A,R2
CODE:391c  f5 83                    MOV DPH,A
CODE:391e  ee                       MOV A,R6
CODE:391f  f0                       MOVX @DPTR,A
CODE:3920  74 7c                    MOV A,#0x7c
CODE:3922  2b                       ADD A,R3
CODE:3923  f5 82                    MOV DPL,A
CODE:3925  74 06                    MOV A,#0x6
CODE:3927  3a                       ADDC A,R2
CODE:3928  f5 83                    MOV DPH,A
CODE:392a  e9                       MOV A,R1
CODE:392b  f0                       MOVX @DPTR,A
CODE:392c  74 69                    MOV A,#0x69
CODE:392e  2b                       ADD A,R3
CODE:392f  f5 82                    MOV DPL,A
CODE:3931  74 05                    MOV A,#0x5
CODE:3933  3a                       ADDC A,R2
CODE:3934  f5 83                    MOV DPH,A
CODE:3936  e4                       CLR A
CODE:3937  f0                       MOVX @DPTR,A
CODE:3938  74 fe                    MOV A,#0xfe
CODE:393a  2b                       ADD A,R3
CODE:393b  f5 82                    MOV DPL,A
CODE:393d  74 05                    MOV A,#0x5
CODE:393f  3a                       ADDC A,R2
CODE:3940  f5 83                    MOV DPH,A
CODE:3942  e4                       CLR A
CODE:3943  f0                       MOVX @DPTR,A
CODE:3944  74 93                    MOV A,#0x93
CODE:3946  2b                       ADD A,R3
CODE:3947  f5 82                    MOV DPL,A
CODE:3949  74 06                    MOV A,#0x6
CODE:394b  3a                       ADDC A,R2
CODE:394c  02 3b 10                 LJMP 0x3b10
LAB_CODE_394f:
CODE:394f  78 65                    MOV R0,#0x65   ; XREF: CODE:3766 
CODE:3951  e6                       MOV A,@R0
CODE:3952  c3                       CLR CY
CODE:3953  94 2e                    SUBB A,#0x2e
CODE:3955  40 03                    JC 0x395a
CODE:3957  02 3b 14                 LJMP 0x3b14
LAB_CODE_395a:
CODE:395a  e6                       MOV A,@R0   ; XREF: CODE:3955 
CODE:395b  ff                       MOV R7,A
CODE:395c  24 df                    ADD A,#0xdf
CODE:395e  f5 82                    MOV DPL,A
CODE:3960  e4                       CLR A
CODE:3961  34 04                    ADDC A,#0x4
CODE:3963  f5 83                    MOV DPH,A
CODE:3965  e4                       CLR A
CODE:3966  f0                       MOVX @DPTR,A
CODE:3967  74 74                    MOV A,#0x74
CODE:3969  2f                       ADD A,R7
CODE:396a  f5 82                    MOV DPL,A
CODE:396c  e4                       CLR A
CODE:396d  34 05                    ADDC A,#0x5
CODE:396f  f5 83                    MOV DPH,A
CODE:3971  e4                       CLR A
CODE:3972  f0                       MOVX @DPTR,A
CODE:3973  74 09                    MOV A,#0x9
CODE:3975  2f                       ADD A,R7
CODE:3976  f5 82                    MOV DPL,A
CODE:3978  e4                       CLR A
CODE:3979  34 06                    ADDC A,#0x6
CODE:397b  f5 83                    MOV DPH,A
CODE:397d  e4                       CLR A
CODE:397e  f0                       MOVX @DPTR,A
CODE:397f  74 f6                    MOV A,#0xf6
CODE:3981  2f                       ADD A,R7
CODE:3982  f5 82                    MOV DPL,A
CODE:3984  e4                       CLR A
CODE:3985  34 04                    ADDC A,#0x4
CODE:3987  f5 83                    MOV DPH,A
CODE:3989  e4                       CLR A
CODE:398a  f0                       MOVX @DPTR,A
CODE:398b  74 8b                    MOV A,#0x8b
CODE:398d  2f                       ADD A,R7
CODE:398e  f5 82                    MOV DPL,A
CODE:3990  e4                       CLR A
CODE:3991  34 05                    ADDC A,#0x5
CODE:3993  f5 83                    MOV DPH,A
CODE:3995  e4                       CLR A
CODE:3996  f0                       MOVX @DPTR,A
CODE:3997  74 20                    MOV A,#0x20
CODE:3999  2f                       ADD A,R7
CODE:399a  f5 82                    MOV DPL,A
CODE:399c  e4                       CLR A
CODE:399d  34 06                    ADDC A,#0x6
CODE:399f  f5 83                    MOV DPH,A
CODE:39a1  e4                       CLR A
CODE:39a2  f0                       MOVX @DPTR,A
CODE:39a3  74 0d                    MOV A,#0xd
CODE:39a5  2f                       ADD A,R7
CODE:39a6  f5 82                    MOV DPL,A
CODE:39a8  e4                       CLR A
CODE:39a9  34 05                    ADDC A,#0x5
CODE:39ab  f5 83                    MOV DPH,A
CODE:39ad  e4                       CLR A
CODE:39ae  f0                       MOVX @DPTR,A
CODE:39af  74 a2                    MOV A,#0xa2
CODE:39b1  2f                       ADD A,R7
CODE:39b2  f5 82                    MOV DPL,A
CODE:39b4  e4                       CLR A
CODE:39b5  34 05                    ADDC A,#0x5
CODE:39b7  f5 83                    MOV DPH,A
CODE:39b9  e4                       CLR A
CODE:39ba  f0                       MOVX @DPTR,A
CODE:39bb  74 37                    MOV A,#0x37
CODE:39bd  2f                       ADD A,R7
CODE:39be  f5 82                    MOV DPL,A
CODE:39c0  e4                       CLR A
CODE:39c1  34 06                    ADDC A,#0x6
CODE:39c3  f5 83                    MOV DPH,A
CODE:39c5  e4                       CLR A
CODE:39c6  f0                       MOVX @DPTR,A
CODE:39c7  74 24                    MOV A,#0x24
CODE:39c9  2f                       ADD A,R7
CODE:39ca  f5 82                    MOV DPL,A
CODE:39cc  e4                       CLR A
CODE:39cd  34 05                    ADDC A,#0x5
CODE:39cf  f5 83                    MOV DPH,A
CODE:39d1  e4                       CLR A
CODE:39d2  f0                       MOVX @DPTR,A
CODE:39d3  74 b9                    MOV A,#0xb9
CODE:39d5  2f                       ADD A,R7
CODE:39d6  f5 82                    MOV DPL,A
CODE:39d8  e4                       CLR A
CODE:39d9  34 05                    ADDC A,#0x5
CODE:39db  f5 83                    MOV DPH,A
CODE:39dd  e4                       CLR A
CODE:39de  f0                       MOVX @DPTR,A
CODE:39df  74 4e                    MOV A,#0x4e
CODE:39e1  2f                       ADD A,R7
CODE:39e2  f5 82                    MOV DPL,A
CODE:39e4  e4                       CLR A
CODE:39e5  34 06                    ADDC A,#0x6
CODE:39e7  f5 83                    MOV DPH,A
CODE:39e9  e4                       CLR A
CODE:39ea  f0                       MOVX @DPTR,A
CODE:39eb  74 3b                    MOV A,#0x3b
CODE:39ed  2f                       ADD A,R7
CODE:39ee  f5 82                    MOV DPL,A
CODE:39f0  e4                       CLR A
CODE:39f1  34 05                    ADDC A,#0x5
CODE:39f3  f5 83                    MOV DPH,A
CODE:39f5  e4                       CLR A
CODE:39f6  f0                       MOVX @DPTR,A
CODE:39f7  74 d0                    MOV A,#0xd0
CODE:39f9  2f                       ADD A,R7
CODE:39fa  f5 82                    MOV DPL,A
CODE:39fc  e4                       CLR A
CODE:39fd  34 05                    ADDC A,#0x5
CODE:39ff  f5 83                    MOV DPH,A
CODE:3a01  e4                       CLR A
CODE:3a02  f0                       MOVX @DPTR,A
CODE:3a03  74 65                    MOV A,#0x65
CODE:3a05  2f                       ADD A,R7
CODE:3a06  f5 82                    MOV DPL,A
CODE:3a08  e4                       CLR A
CODE:3a09  34 06                    ADDC A,#0x6
CODE:3a0b  f5 83                    MOV DPH,A
CODE:3a0d  e4                       CLR A
CODE:3a0e  f0                       MOVX @DPTR,A
CODE:3a0f  74 52                    MOV A,#0x52
CODE:3a11  2f                       ADD A,R7
CODE:3a12  f5 82                    MOV DPL,A
CODE:3a14  e4                       CLR A
CODE:3a15  34 05                    ADDC A,#0x5
CODE:3a17  f5 83                    MOV DPH,A
CODE:3a19  e4                       CLR A
CODE:3a1a  f0                       MOVX @DPTR,A
CODE:3a1b  74 e7                    MOV A,#0xe7
CODE:3a1d  2f                       ADD A,R7
CODE:3a1e  f5 82                    MOV DPL,A
CODE:3a20  e4                       CLR A
CODE:3a21  34 05                    ADDC A,#0x5
CODE:3a23  f5 83                    MOV DPH,A
CODE:3a25  e4                       CLR A
CODE:3a26  f0                       MOVX @DPTR,A
CODE:3a27  74 7c                    MOV A,#0x7c
CODE:3a29  2f                       ADD A,R7
CODE:3a2a  f5 82                    MOV DPL,A
CODE:3a2c  e4                       CLR A
CODE:3a2d  34 06                    ADDC A,#0x6
CODE:3a2f  f5 83                    MOV DPH,A
CODE:3a31  e4                       CLR A
CODE:3a32  f0                       MOVX @DPTR,A
CODE:3a33  c3                       CLR CY
CODE:3a34  74 2d                    MOV A,#0x2d
CODE:3a36  9f                       SUBB A,R7
CODE:3a37  ff                       MOV R7,A
CODE:3a38  e4                       CLR A
CODE:3a39  94 00                    SUBB A,#0x0
CODE:3a3b  fe                       MOV R6,A
CODE:3a3c  74 f6                    MOV A,#0xf6
CODE:3a3e  2f                       ADD A,R7
CODE:3a3f  f5 82                    MOV DPL,A
CODE:3a41  74 04                    MOV A,#0x4
CODE:3a43  3e                       ADDC A,R6
CODE:3a44  f5 83                    MOV DPH,A
CODE:3a46  e4                       CLR A
CODE:3a47  f0                       MOVX @DPTR,A
CODE:3a48  74 8b                    MOV A,#0x8b
CODE:3a4a  2f                       ADD A,R7
CODE:3a4b  f5 82                    MOV DPL,A
CODE:3a4d  74 05                    MOV A,#0x5
CODE:3a4f  3e                       ADDC A,R6
CODE:3a50  f5 83                    MOV DPH,A
CODE:3a52  e4                       CLR A
CODE:3a53  f0                       MOVX @DPTR,A
CODE:3a54  74 20                    MOV A,#0x20
CODE:3a56  2f                       ADD A,R7
CODE:3a57  f5 82                    MOV DPL,A
CODE:3a59  74 06                    MOV A,#0x6
CODE:3a5b  3e                       ADDC A,R6
CODE:3a5c  f5 83                    MOV DPH,A
CODE:3a5e  e4                       CLR A
CODE:3a5f  f0                       MOVX @DPTR,A
CODE:3a60  74 0d                    MOV A,#0xd
CODE:3a62  2f                       ADD A,R7
CODE:3a63  f5 82                    MOV DPL,A
CODE:3a65  74 05                    MOV A,#0x5
CODE:3a67  3e                       ADDC A,R6
CODE:3a68  f5 83                    MOV DPH,A
CODE:3a6a  e4                       CLR A
CODE:3a6b  f0                       MOVX @DPTR,A
CODE:3a6c  74 a2                    MOV A,#0xa2
CODE:3a6e  2f                       ADD A,R7
CODE:3a6f  f5 82                    MOV DPL,A
CODE:3a71  74 05                    MOV A,#0x5
CODE:3a73  3e                       ADDC A,R6
CODE:3a74  f5 83                    MOV DPH,A
CODE:3a76  e4                       CLR A
CODE:3a77  f0                       MOVX @DPTR,A
CODE:3a78  74 37                    MOV A,#0x37
CODE:3a7a  2f                       ADD A,R7
CODE:3a7b  f5 82                    MOV DPL,A
CODE:3a7d  74 06                    MOV A,#0x6
CODE:3a7f  3e                       ADDC A,R6
CODE:3a80  f5 83                    MOV DPH,A
CODE:3a82  e4                       CLR A
CODE:3a83  f0                       MOVX @DPTR,A
CODE:3a84  74 24                    MOV A,#0x24
CODE:3a86  2f                       ADD A,R7
CODE:3a87  f5 82                    MOV DPL,A
CODE:3a89  74 05                    MOV A,#0x5
CODE:3a8b  3e                       ADDC A,R6
CODE:3a8c  f5 83                    MOV DPH,A
CODE:3a8e  e4                       CLR A
CODE:3a8f  f0                       MOVX @DPTR,A
CODE:3a90  74 b9                    MOV A,#0xb9
CODE:3a92  2f                       ADD A,R7
CODE:3a93  f5 82                    MOV DPL,A
CODE:3a95  74 05                    MOV A,#0x5
CODE:3a97  3e                       ADDC A,R6
CODE:3a98  f5 83                    MOV DPH,A
CODE:3a9a  e4                       CLR A
CODE:3a9b  f0                       MOVX @DPTR,A
CODE:3a9c  74 4e                    MOV A,#0x4e
CODE:3a9e  2f                       ADD A,R7
CODE:3a9f  f5 82                    MOV DPL,A
CODE:3aa1  74 06                    MOV A,#0x6
CODE:3aa3  3e                       ADDC A,R6
CODE:3aa4  f5 83                    MOV DPH,A
CODE:3aa6  e4                       CLR A
CODE:3aa7  f0                       MOVX @DPTR,A
CODE:3aa8  74 3b                    MOV A,#0x3b
CODE:3aaa  2f                       ADD A,R7
CODE:3aab  f5 82                    MOV DPL,A
CODE:3aad  74 05                    MOV A,#0x5
CODE:3aaf  3e                       ADDC A,R6
CODE:3ab0  f5 83                    MOV DPH,A
CODE:3ab2  e4                       CLR A
CODE:3ab3  f0                       MOVX @DPTR,A
CODE:3ab4  74 d0                    MOV A,#0xd0
CODE:3ab6  2f                       ADD A,R7
CODE:3ab7  f5 82                    MOV DPL,A
CODE:3ab9  74 05                    MOV A,#0x5
CODE:3abb  3e                       ADDC A,R6
CODE:3abc  f5 83                    MOV DPH,A
CODE:3abe  e4                       CLR A
CODE:3abf  f0                       MOVX @DPTR,A
CODE:3ac0  74 65                    MOV A,#0x65
CODE:3ac2  2f                       ADD A,R7
CODE:3ac3  f5 82                    MOV DPL,A
CODE:3ac5  74 06                    MOV A,#0x6
CODE:3ac7  3e                       ADDC A,R6
CODE:3ac8  f5 83                    MOV DPH,A
CODE:3aca  e4                       CLR A
CODE:3acb  f0                       MOVX @DPTR,A
CODE:3acc  74 52                    MOV A,#0x52
CODE:3ace  2f                       ADD A,R7
CODE:3acf  f5 82                    MOV DPL,A
CODE:3ad1  74 05                    MOV A,#0x5
CODE:3ad3  3e                       ADDC A,R6
CODE:3ad4  f5 83                    MOV DPH,A
CODE:3ad6  e4                       CLR A
CODE:3ad7  f0                       MOVX @DPTR,A
CODE:3ad8  74 e7                    MOV A,#0xe7
CODE:3ada  2f                       ADD A,R7
CODE:3adb  f5 82                    MOV DPL,A
CODE:3add  74 05                    MOV A,#0x5
CODE:3adf  3e                       ADDC A,R6
CODE:3ae0  f5 83                    MOV DPH,A
CODE:3ae2  e4                       CLR A
CODE:3ae3  f0                       MOVX @DPTR,A
CODE:3ae4  74 7c                    MOV A,#0x7c
CODE:3ae6  2f                       ADD A,R7
CODE:3ae7  f5 82                    MOV DPL,A
CODE:3ae9  74 06                    MOV A,#0x6
CODE:3aeb  3e                       ADDC A,R6
CODE:3aec  f5 83                    MOV DPH,A
CODE:3aee  e4                       CLR A
CODE:3aef  f0                       MOVX @DPTR,A
CODE:3af0  74 69                    MOV A,#0x69
CODE:3af2  2f                       ADD A,R7
CODE:3af3  f5 82                    MOV DPL,A
CODE:3af5  74 05                    MOV A,#0x5
CODE:3af7  3e                       ADDC A,R6
CODE:3af8  f5 83                    MOV DPH,A
CODE:3afa  e4                       CLR A
CODE:3afb  f0                       MOVX @DPTR,A
CODE:3afc  74 fe                    MOV A,#0xfe
CODE:3afe  2f                       ADD A,R7
CODE:3aff  f5 82                    MOV DPL,A
CODE:3b01  74 05                    MOV A,#0x5
CODE:3b03  3e                       ADDC A,R6
CODE:3b04  f5 83                    MOV DPH,A
CODE:3b06  e4                       CLR A
CODE:3b07  f0                       MOVX @DPTR,A
CODE:3b08  74 93                    MOV A,#0x93
CODE:3b0a  2f                       ADD A,R7
CODE:3b0b  f5 82                    MOV DPL,A
CODE:3b0d  74 06                    MOV A,#0x6
CODE:3b0f  3e                       ADDC A,R6
LAB_CODE_3b10:
CODE:3b10  f5 83                    MOV DPH,A   ; XREF: CODE:394c 
CODE:3b12  e4                       CLR A
CODE:3b13  f0                       MOVX @DPTR,A
LAB_CODE_3b14:
CODE:3b14  78 65                    MOV R0,#0x65   ; XREF: CODE:3538 CODE:375d CODE:3957 
CODE:3b16  06                       INC @R0
CODE:3b17  e6                       MOV A,@R0
CODE:3b18  d3                       SETB CY
CODE:3b19  94 2d                    SUBB A,#0x2d
CODE:3b1b  40 2d                    JC 0x3b4a
CODE:3b1d  e4                       CLR A
CODE:3b1e  f6                       MOV @R0,A
CODE:3b1f  78 5c                    MOV R0,#0x5c
CODE:3b21  e6                       MOV A,@R0
CODE:3b22  64 07                    XRL A,#0x7
CODE:3b24  70 24                    JNZ 0x3b4a
CODE:3b26  78 61                    MOV R0,#0x61
CODE:3b28  06                       INC @R0
CODE:3b29  e6                       MOV A,@R0
CODE:3b2a  d3                       SETB CY
CODE:3b2b  94 06                    SUBB A,#0x6
CODE:3b2d  40 1b                    JC 0x3b4a
CODE:3b2f  e4                       CLR A
CODE:3b30  f6                       MOV @R0,A
CODE:3b31  80 17                    SJMP 0x3b4a
LAB_CODE_3b33:
CODE:3b33  78 69                    MOV R0,#0x69   ; XREF: CODE:3285 
CODE:3b35  e6                       MOV A,@R0
CODE:3b36  b4 0a 08                 CJNE A,#0xa,0x3b41
CODE:3b39  12 bb dd                 LCALL 0xbbdd
CODE:3b3c  12 bf a4                 LCALL 0xbfa4
CODE:3b3f  80 09                    SJMP 0x3b4a
LAB_CODE_3b41:
CODE:3b41  78 69                    MOV R0,#0x69   ; XREF: CODE:3b36 
CODE:3b43  e6                       MOV A,@R0
CODE:3b44  b4 02 03                 CJNE A,#0x2,0x3b4a
CODE:3b47  12 ae 2a                 LCALL 0xae2a
LAB_CODE_3b4a:
CODE:3b4a  78 62                    MOV R0,#0x62   ; XREF: CODE:300f CODE:3015 CODE:302e CODE:3066 CODE:3267 CODE:327b CODE:333a CODE:3b1b CODE:3b24 CODE:3b2d CODE:3b31 CODE:3b44 CODE:31fd CODE:3203 CODE:3235 CODE:323a CODE:325d CODE:3b3f 
CODE:3b4c  06                       INC @R0
CODE:3b4d  e6                       MOV A,@R0
CODE:3b4e  c3                       CLR CY
CODE:3b4f  94 1b                    SUBB A,#0x1b
CODE:3b51  40 02                    JC 0x3b55
CODE:3b53  e4                       CLR A
CODE:3b54  f6                       MOV @R0,A
LAB_CODE_3b55:
CODE:3b55  22                       RET   ; XREF: CODE:2e3f CODE:3b51 

; ===== FUNCTION FUN_CODE_3b56 @ CODE:3b56 =====
CODE:3b56  90 09 35                 MOV DPTR,#0x935   ; XREF: CODE:8d24 
CODE:3b59  e0                       MOVX A,@DPTR
CODE:3b5a  ff                       MOV R7,A
CODE:3b5b  64 04                    XRL A,#0x4
CODE:3b5d  70 1e                    JNZ 0x3b7d
CODE:3b5f  f0                       MOVX @DPTR,A
CODE:3b60  a3                       INC DPTR
CODE:3b61  74 11                    MOV A,#0x11
CODE:3b63  f0                       MOVX @DPTR,A
CODE:3b64  a3                       INC DPTR
CODE:3b65  e4                       CLR A
CODE:3b66  f0                       MOVX @DPTR,A
CODE:3b67  90 09 36                 MOV DPTR,#0x936
CODE:3b6a  e0                       MOVX A,@DPTR
CODE:3b6b  fc                       MOV R4,A
CODE:3b6c  a3                       INC DPTR
CODE:3b6d  e0                       MOVX A,@DPTR
CODE:3b6e  f5 82                    MOV DPL,A
CODE:3b70  8c 83                    MOV DPH,R4
CODE:3b72  e0                       MOVX A,@DPTR
CODE:3b73  f5 16                    MOV 0x16,A
CODE:3b75  d2 23                    SETB 0x23
CODE:3b77  43 c8 04                 ORL 0xc8,#0x4
CODE:3b7a  02 44 bb                 LJMP 0x44bb
LAB_CODE_3b7d:
CODE:3b7d  ef                       MOV A,R7   ; XREF: CODE:3b5d 
CODE:3b7e  b4 06 08                 CJNE A,#0x6,0x3b89
CODE:3b81  e4                       CLR A
CODE:3b82  90 09 35                 MOV DPTR,#0x935
CODE:3b85  f0                       MOVX @DPTR,A
CODE:3b86  02 44 bb                 LJMP 0x44bb
LAB_CODE_3b89:
CODE:3b89  90 09 35                 MOV DPTR,#0x935   ; XREF: CODE:3b7e 
CODE:3b8c  e0                       MOVX A,@DPTR
CODE:3b8d  64 09                    XRL A,#0x9
CODE:3b8f  70 28                    JNZ 0x3bb9
CODE:3b91  f0                       MOVX @DPTR,A
CODE:3b92  a3                       INC DPTR
CODE:3b93  74 11                    MOV A,#0x11
CODE:3b95  f0                       MOVX @DPTR,A
CODE:3b96  a3                       INC DPTR
CODE:3b97  e4                       CLR A
CODE:3b98  f0                       MOVX @DPTR,A
CODE:3b99  90 09 36                 MOV DPTR,#0x936
CODE:3b9c  e0                       MOVX A,@DPTR
CODE:3b9d  fe                       MOV R6,A
CODE:3b9e  a3                       INC DPTR
CODE:3b9f  e0                       MOVX A,@DPTR
CODE:3ba0  ff                       MOV R7,A
CODE:3ba1  f5 82                    MOV DPL,A
CODE:3ba3  8e 83                    MOV DPH,R6
CODE:3ba5  e0                       MOVX A,@DPTR
CODE:3ba6  64 05                    XRL A,#0x5
CODE:3ba8  60 03                    JZ 0x3bad
CODE:3baa  02 44 c1                 LJMP 0x44c1
LAB_CODE_3bad:
CODE:3bad  a3                       INC DPTR   ; XREF: CODE:3ba8 
CODE:3bae  e0                       MOVX A,@DPTR
CODE:3baf  24 8b                    ADD A,#0x8b
CODE:3bb1  60 03                    JZ 0x3bb6
CODE:3bb3  02 44 c1                 LJMP 0x44c1
LAB_CODE_3bb6:
CODE:3bb6  02 c1 a9                 LJMP 0xc1a9   ; XREF: CODE:3bb1 
LAB_CODE_3bb9:
CODE:3bb9  90 09 35                 MOV DPTR,#0x935   ; XREF: CODE:3b8f 
CODE:3bbc  e0                       MOVX A,@DPTR
CODE:3bbd  64 0a                    XRL A,#0xa
CODE:3bbf  60 03                    JZ 0x3bc4
CODE:3bc1  02 3f 9b                 LJMP 0x3f9b
LAB_CODE_3bc4:
CODE:3bc4  f0                       MOVX @DPTR,A   ; XREF: CODE:3bbf 
CODE:3bc5  a3                       INC DPTR
CODE:3bc6  74 11                    MOV A,#0x11
CODE:3bc8  f0                       MOVX @DPTR,A
CODE:3bc9  a3                       INC DPTR
CODE:3bca  e4                       CLR A
CODE:3bcb  f0                       MOVX @DPTR,A
CODE:3bcc  90 09 17                 MOV DPTR,#0x917
CODE:3bcf  f0                       MOVX @DPTR,A
CODE:3bd0  90 09 36                 MOV DPTR,#0x936
CODE:3bd3  e0                       MOVX A,@DPTR
CODE:3bd4  fe                       MOV R6,A
CODE:3bd5  a3                       INC DPTR
CODE:3bd6  e0                       MOVX A,@DPTR
CODE:3bd7  f5 82                    MOV DPL,A
CODE:3bd9  8e 83                    MOV DPH,R6
CODE:3bdb  a3                       INC DPTR
CODE:3bdc  e0                       MOVX A,@DPTR
CODE:3bdd  ff                       MOV R7,A
CODE:3bde  b4 80 09                 CJNE A,#0x80,0x3bea
CODE:3be1  90 09 17                 MOV DPTR,#0x917
CODE:3be4  74 01                    MOV A,#0x1
CODE:3be6  f0                       MOVX @DPTR,A
CODE:3be7  02 3f 98                 LJMP 0x3f98
LAB_CODE_3bea:
CODE:3bea  ef                       MOV A,R7   ; XREF: CODE:3bde 
CODE:3beb  64 03                    XRL A,#0x3
CODE:3bed  60 03                    JZ 0x3bf2
CODE:3bef  02 3c e4                 LJMP 0x3ce4
LAB_CODE_3bf2:
CODE:3bf2  90 09 17                 MOV DPTR,#0x917   ; XREF: CODE:3bed 
CODE:3bf5  74 03                    MOV A,#0x3
CODE:3bf7  f0                       MOVX @DPTR,A
CODE:3bf8  90 09 36                 MOV DPTR,#0x936
CODE:3bfb  e0                       MOVX A,@DPTR
CODE:3bfc  fe                       MOV R6,A
CODE:3bfd  a3                       INC DPTR
CODE:3bfe  e0                       MOVX A,@DPTR
CODE:3bff  ff                       MOV R7,A
CODE:3c00  f5 82                    MOV DPL,A
CODE:3c02  8e 83                    MOV DPH,R6
CODE:3c04  a3                       INC DPTR
CODE:3c05  a3                       INC DPTR
CODE:3c06  e0                       MOVX A,@DPTR
CODE:3c07  78 6d                    MOV R0,#0x6d
CODE:3c09  f6                       MOV @R0,A
CODE:3c0a  76 01                    MOV @R0,#0x1
CODE:3c0c  8f 82                    MOV DPL,R7
CODE:3c0e  8e 83                    MOV DPH,R6
CODE:3c10  a3                       INC DPTR
CODE:3c11  a3                       INC DPTR
CODE:3c12  a3                       INC DPTR
CODE:3c13  e0                       MOVX A,@DPTR
CODE:3c14  90 09 27                 MOV DPTR,#0x927
CODE:3c17  f0                       MOVX @DPTR,A
CODE:3c18  74 01                    MOV A,#0x1
CODE:3c1a  64 01                    XRL A,#0x1
CODE:3c1c  60 03                    JZ 0x3c21
CODE:3c1e  02 3f 98                 LJMP 0x3f98
LAB_CODE_3c21:
CODE:3c21  e0                       MOVX A,@DPTR   ; XREF: CODE:3c1c 
CODE:3c22  64 01                    XRL A,#0x1
CODE:3c24  60 03                    JZ 0x3c29
CODE:3c26  02 3f 98                 LJMP 0x3f98
LAB_CODE_3c29:
CODE:3c29  7f e0                    MOV R7,#0xe0   ; XREF: CODE:3c24 
CODE:3c2b  12 be bf                 LCALL 0xbebf
CODE:3c2e  7f e2                    MOV R7,#0xe2
CODE:3c30  12 be bf                 LCALL 0xbebf
CODE:3c33  e4                       CLR A
CODE:3c34  90 09 03                 MOV DPTR,#0x903
CODE:3c37  f0                       MOVX @DPTR,A
CODE:3c38  a3                       INC DPTR
CODE:3c39  f0                       MOVX @DPTR,A
LAB_CODE_3c3a:
CODE:3c3a  90 09 03                 MOV DPTR,#0x903   ; XREF: CODE:3c69 
CODE:3c3d  e0                       MOVX A,@DPTR
CODE:3c3e  fe                       MOV R6,A
CODE:3c3f  a3                       INC DPTR
CODE:3c40  e0                       MOVX A,@DPTR
CODE:3c41  ff                       MOV R7,A
CODE:3c42  fd                       MOV R5,A
CODE:3c43  e4                       CLR A
CODE:3c44  2f                       ADD A,R7
CODE:3c45  f5 82                    MOV DPL,A
CODE:3c47  74 dc                    MOV A,#0xdc
CODE:3c49  3e                       ADDC A,R6
CODE:3c4a  f5 83                    MOV DPH,A
CODE:3c4c  e4                       CLR A
CODE:3c4d  93                       MOVC A,@A+DPTR
CODE:3c4e  fb                       MOV R3,A
CODE:3c4f  7f e0                    MOV R7,#0xe0
CODE:3c51  12 bd c0                 LCALL 0xbdc0
CODE:3c54  90 09 04                 MOV DPTR,#0x904
CODE:3c57  e0                       MOVX A,@DPTR
CODE:3c58  04                       INC A
CODE:3c59  f0                       MOVX @DPTR,A
CODE:3c5a  70 06                    JNZ 0x3c62
CODE:3c5c  90 09 03                 MOV DPTR,#0x903
CODE:3c5f  e0                       MOVX A,@DPTR
CODE:3c60  04                       INC A
CODE:3c61  f0                       MOVX @DPTR,A
LAB_CODE_3c62:
CODE:3c62  c3                       CLR CY   ; XREF: CODE:3c5a 
CODE:3c63  90 09 03                 MOV DPTR,#0x903
CODE:3c66  e0                       MOVX A,@DPTR
CODE:3c67  94 01                    SUBB A,#0x1
CODE:3c69  40 cf                    JC 0x3c3a
CODE:3c6b  e4                       CLR A
CODE:3c6c  90 09 03                 MOV DPTR,#0x903
CODE:3c6f  f0                       MOVX @DPTR,A
CODE:3c70  a3                       INC DPTR
CODE:3c71  f0                       MOVX @DPTR,A
LAB_CODE_3c72:
CODE:3c72  90 09 03                 MOV DPTR,#0x903   ; XREF: CODE:3ca1 
CODE:3c75  e0                       MOVX A,@DPTR
CODE:3c76  fe                       MOV R6,A
CODE:3c77  a3                       INC DPTR
CODE:3c78  e0                       MOVX A,@DPTR
CODE:3c79  ff                       MOV R7,A
CODE:3c7a  fd                       MOV R5,A
CODE:3c7b  e4                       CLR A
CODE:3c7c  2f                       ADD A,R7
CODE:3c7d  f5 82                    MOV DPL,A
CODE:3c7f  74 dd                    MOV A,#0xdd
CODE:3c81  3e                       ADDC A,R6
CODE:3c82  f5 83                    MOV DPH,A
CODE:3c84  e4                       CLR A
CODE:3c85  93                       MOVC A,@A+DPTR
CODE:3c86  fb                       MOV R3,A
CODE:3c87  7f e1                    MOV R7,#0xe1
CODE:3c89  12 bd c0                 LCALL 0xbdc0
CODE:3c8c  90 09 04                 MOV DPTR,#0x904
CODE:3c8f  e0                       MOVX A,@DPTR
CODE:3c90  04                       INC A
CODE:3c91  f0                       MOVX @DPTR,A
CODE:3c92  70 06                    JNZ 0x3c9a
CODE:3c94  90 09 03                 MOV DPTR,#0x903
CODE:3c97  e0                       MOVX A,@DPTR
CODE:3c98  04                       INC A
CODE:3c99  f0                       MOVX @DPTR,A
LAB_CODE_3c9a:
CODE:3c9a  c3                       CLR CY   ; XREF: CODE:3c92 
CODE:3c9b  90 09 03                 MOV DPTR,#0x903
CODE:3c9e  e0                       MOVX A,@DPTR
CODE:3c9f  94 01                    SUBB A,#0x1
CODE:3ca1  40 cf                    JC 0x3c72
CODE:3ca3  e4                       CLR A
CODE:3ca4  90 09 03                 MOV DPTR,#0x903
CODE:3ca7  f0                       MOVX @DPTR,A
CODE:3ca8  a3                       INC DPTR
CODE:3ca9  f0                       MOVX @DPTR,A
LAB_CODE_3caa:
CODE:3caa  90 09 03                 MOV DPTR,#0x903   ; XREF: CODE:3cdf 
CODE:3cad  e0                       MOVX A,@DPTR
CODE:3cae  fe                       MOV R6,A
CODE:3caf  a3                       INC DPTR
CODE:3cb0  e0                       MOVX A,@DPTR
CODE:3cb1  ff                       MOV R7,A
CODE:3cb2  fd                       MOV R5,A
CODE:3cb3  e4                       CLR A
CODE:3cb4  2f                       ADD A,R7
CODE:3cb5  f5 82                    MOV DPL,A
CODE:3cb7  74 de                    MOV A,#0xde
CODE:3cb9  3e                       ADDC A,R6
CODE:3cba  f5 83                    MOV DPH,A
CODE:3cbc  e4                       CLR A
CODE:3cbd  93                       MOVC A,@A+DPTR
CODE:3cbe  fb                       MOV R3,A
CODE:3cbf  7f e2                    MOV R7,#0xe2
CODE:3cc1  12 bd c0                 LCALL 0xbdc0
CODE:3cc4  90 09 04                 MOV DPTR,#0x904
CODE:3cc7  e0                       MOVX A,@DPTR
CODE:3cc8  04                       INC A
CODE:3cc9  f0                       MOVX @DPTR,A
CODE:3cca  70 06                    JNZ 0x3cd2
CODE:3ccc  90 09 03                 MOV DPTR,#0x903
CODE:3ccf  e0                       MOVX A,@DPTR
CODE:3cd0  04                       INC A
CODE:3cd1  f0                       MOVX @DPTR,A
LAB_CODE_3cd2:
CODE:3cd2  c3                       CLR CY   ; XREF: CODE:3cca 
CODE:3cd3  90 09 04                 MOV DPTR,#0x904
CODE:3cd6  e0                       MOVX A,@DPTR
CODE:3cd7  94 28                    SUBB A,#0x28
CODE:3cd9  90 09 03                 MOV DPTR,#0x903
CODE:3cdc  e0                       MOVX A,@DPTR
CODE:3cdd  94 00                    SUBB A,#0x0
CODE:3cdf  40 c9                    JC 0x3caa
CODE:3ce1  02 3f 98                 LJMP 0x3f98
LAB_CODE_3ce4:
CODE:3ce4  90 09 36                 MOV DPTR,#0x936   ; XREF: CODE:3bef 
CODE:3ce7  e0                       MOVX A,@DPTR
CODE:3ce8  fe                       MOV R6,A
CODE:3ce9  a3                       INC DPTR
CODE:3cea  e0                       MOVX A,@DPTR
CODE:3ceb  f5 82                    MOV DPL,A
CODE:3ced  8e 83                    MOV DPH,R6
CODE:3cef  a3                       INC DPTR
CODE:3cf0  e0                       MOVX A,@DPTR
CODE:3cf1  64 04                    XRL A,#0x4
CODE:3cf3  70 31                    JNZ 0x3d26
CODE:3cf5  d2 24                    SETB 0x24
CODE:3cf7  12 bb dd                 LCALL 0xbbdd
CODE:3cfa  90 09 17                 MOV DPTR,#0x917
CODE:3cfd  74 04                    MOV A,#0x4
CODE:3cff  f0                       MOVX @DPTR,A
CODE:3d00  90 09 36                 MOV DPTR,#0x936
CODE:3d03  e0                       MOVX A,@DPTR
CODE:3d04  fe                       MOV R6,A
CODE:3d05  a3                       INC DPTR
CODE:3d06  e0                       MOVX A,@DPTR
CODE:3d07  f5 82                    MOV DPL,A
CODE:3d09  8e 83                    MOV DPH,R6
CODE:3d0b  a3                       INC DPTR
CODE:3d0c  a3                       INC DPTR
CODE:3d0d  e0                       MOVX A,@DPTR
CODE:3d0e  90 09 16                 MOV DPTR,#0x916
CODE:3d11  f0                       MOVX @DPTR,A
CODE:3d12  64 01                    XRL A,#0x1
CODE:3d14  60 03                    JZ 0x3d19
CODE:3d16  02 3f 98                 LJMP 0x3f98
LAB_CODE_3d19:
CODE:3d19  7f e0                    MOV R7,#0xe0   ; XREF: CODE:3d14 
CODE:3d1b  12 be bf                 LCALL 0xbebf
CODE:3d1e  7f e2                    MOV R7,#0xe2
CODE:3d20  12 be bf                 LCALL 0xbebf
CODE:3d23  02 3f 98                 LJMP 0x3f98
LAB_CODE_3d26:
CODE:3d26  90 09 36                 MOV DPTR,#0x936   ; XREF: CODE:3cf3 
CODE:3d29  e0                       MOVX A,@DPTR
CODE:3d2a  fe                       MOV R6,A
CODE:3d2b  a3                       INC DPTR
CODE:3d2c  e0                       MOVX A,@DPTR
CODE:3d2d  ff                       MOV R7,A
CODE:3d2e  f5 82                    MOV DPL,A
CODE:3d30  8e 83                    MOV DPH,R6
CODE:3d32  a3                       INC DPTR
CODE:3d33  e0                       MOVX A,@DPTR
CODE:3d34  64 05                    XRL A,#0x5
CODE:3d36  70 59                    JNZ 0x3d91
CODE:3d38  90 09 17                 MOV DPTR,#0x917
CODE:3d3b  74 05                    MOV A,#0x5
CODE:3d3d  f0                       MOVX @DPTR,A
CODE:3d3e  8f 82                    MOV DPL,R7
CODE:3d40  8e 83                    MOV DPH,R6
CODE:3d42  a3                       INC DPTR
CODE:3d43  a3                       INC DPTR
CODE:3d44  e0                       MOVX A,@DPTR
CODE:3d45  90 09 16                 MOV DPTR,#0x916
CODE:3d48  f0                       MOVX @DPTR,A
CODE:3d49  8f 82                    MOV DPL,R7
CODE:3d4b  8e 83                    MOV DPH,R6
CODE:3d4d  a3                       INC DPTR
CODE:3d4e  a3                       INC DPTR
CODE:3d4f  a3                       INC DPTR
CODE:3d50  e0                       MOVX A,@DPTR
CODE:3d51  90 09 38                 MOV DPTR,#0x938
CODE:3d54  f0                       MOVX @DPTR,A
CODE:3d55  90 09 36                 MOV DPTR,#0x936
CODE:3d58  a3                       INC DPTR
CODE:3d59  e0                       MOVX A,@DPTR
CODE:3d5a  24 04                    ADD A,#0x4
CODE:3d5c  f5 82                    MOV DPL,A
CODE:3d5e  e4                       CLR A
CODE:3d5f  3e                       ADDC A,R6
CODE:3d60  f5 83                    MOV DPH,A
CODE:3d62  e0                       MOVX A,@DPTR
CODE:3d63  ff                       MOV R7,A
CODE:3d64  90 09 2c                 MOV DPTR,#0x92c
CODE:3d67  f0                       MOVX @DPTR,A
CODE:3d68  bf 01 0d                 CJNE R7,#0x1,0x3d78
CODE:3d6b  e4                       CLR A
CODE:3d6c  f5 14                    MOV 0x14,A
CODE:3d6e  f5 15                    MOV 0x15,A
CODE:3d70  d2 22                    SETB 0x22
CODE:3d72  53 a8 fe                 ANL 0xa8,#0xfe
CODE:3d75  12 bb dd                 LCALL 0xbbdd
LAB_CODE_3d78:
CODE:3d78  90 09 38                 MOV DPTR,#0x938   ; XREF: CODE:3d68 
CODE:3d7b  e0                       MOVX A,@DPTR
CODE:3d7c  24 ff                    ADD A,#0xff
CODE:3d7e  ff                       MOV R7,A
CODE:3d7f  e4                       CLR A
CODE:3d80  34 ff                    ADDC A,#0xff
CODE:3d82  ef                       MOV A,R7
CODE:3d83  7f 00                    MOV R7,#0x0
CODE:3d85  fe                       MOV R6,A
CODE:3d86  33                       RLC A
CODE:3d87  95 e0                    SUBB A,A
CODE:3d89  fd                       MOV R5,A
CODE:3d8a  fc                       MOV R4,A
CODE:3d8b  12 bf 79                 LCALL 0xbf79
CODE:3d8e  02 3f 98                 LJMP 0x3f98
LAB_CODE_3d91:
CODE:3d91  90 09 36                 MOV DPTR,#0x936   ; XREF: CODE:3d36 
CODE:3d94  e0                       MOVX A,@DPTR
CODE:3d95  fe                       MOV R6,A
CODE:3d96  a3                       INC DPTR
CODE:3d97  e0                       MOVX A,@DPTR
CODE:3d98  f5 82                    MOV DPL,A
CODE:3d9a  8e 83                    MOV DPH,R6
CODE:3d9c  a3                       INC DPTR
CODE:3d9d  e0                       MOVX A,@DPTR
CODE:3d9e  64 0a                    XRL A,#0xa
CODE:3da0  60 03                    JZ 0x3da5
CODE:3da2  02 3e 2e                 LJMP 0x3e2e
LAB_CODE_3da5:
CODE:3da5  c2 24                    CLR 0x24   ; XREF: CODE:3da0 
CODE:3da7  90 09 36                 MOV DPTR,#0x936
CODE:3daa  a3                       INC DPTR
CODE:3dab  e0                       MOVX A,@DPTR
CODE:3dac  ff                       MOV R7,A
CODE:3dad  f5 82                    MOV DPL,A
CODE:3daf  8e 83                    MOV DPH,R6
CODE:3db1  a3                       INC DPTR
CODE:3db2  a3                       INC DPTR
CODE:3db3  e0                       MOVX A,@DPTR
CODE:3db4  78 69                    MOV R0,#0x69
CODE:3db6  f6                       MOV @R0,A
CODE:3db7  8f 82                    MOV DPL,R7
CODE:3db9  8e 83                    MOV DPH,R6
CODE:3dbb  a3                       INC DPTR
CODE:3dbc  a3                       INC DPTR
CODE:3dbd  a3                       INC DPTR
CODE:3dbe  e0                       MOVX A,@DPTR
CODE:3dbf  78 1e                    MOV R0,#0x1e
CODE:3dc1  f6                       MOV @R0,A
CODE:3dc2  90 09 36                 MOV DPTR,#0x936
CODE:3dc5  e0                       MOVX A,@DPTR
CODE:3dc6  fe                       MOV R6,A
CODE:3dc7  a3                       INC DPTR
CODE:3dc8  e0                       MOVX A,@DPTR
CODE:3dc9  ff                       MOV R7,A
CODE:3dca  24 05                    ADD A,#0x5
CODE:3dcc  f5 82                    MOV DPL,A
CODE:3dce  e4                       CLR A
CODE:3dcf  3e                       ADDC A,R6
CODE:3dd0  f5 83                    MOV DPH,A
CODE:3dd2  e0                       MOVX A,@DPTR
CODE:3dd3  78 5c                    MOV R0,#0x5c
CODE:3dd5  f6                       MOV @R0,A
CODE:3dd6  ef                       MOV A,R7
CODE:3dd7  24 04                    ADD A,#0x4
CODE:3dd9  f5 82                    MOV DPL,A
CODE:3ddb  e4                       CLR A
CODE:3ddc  3e                       ADDC A,R6
CODE:3ddd  f5 83                    MOV DPH,A
CODE:3ddf  e0                       MOVX A,@DPTR
CODE:3de0  ff                       MOV R7,A
CODE:3de1  70 06                    JNZ 0x3de9
CODE:3de3  78 1b                    MOV R0,#0x1b
CODE:3de5  76 04                    MOV @R0,#0x4
CODE:3de7  80 26                    SJMP 0x3e0f
LAB_CODE_3de9:
CODE:3de9  ef                       MOV A,R7   ; XREF: CODE:3de1 
CODE:3dea  b4 01 06                 CJNE A,#0x1,0x3df3
CODE:3ded  78 1b                    MOV R0,#0x1b
CODE:3def  76 03                    MOV @R0,#0x3
CODE:3df1  80 1c                    SJMP 0x3e0f
LAB_CODE_3df3:
CODE:3df3  ef                       MOV A,R7   ; XREF: CODE:3dea 
CODE:3df4  b4 02 06                 CJNE A,#0x2,0x3dfd
CODE:3df7  78 1b                    MOV R0,#0x1b
CODE:3df9  76 02                    MOV @R0,#0x2
CODE:3dfb  80 12                    SJMP 0x3e0f
LAB_CODE_3dfd:
CODE:3dfd  ef                       MOV A,R7   ; XREF: CODE:3df4 
CODE:3dfe  b4 03 06                 CJNE A,#0x3,0x3e07
CODE:3e01  78 1b                    MOV R0,#0x1b
CODE:3e03  76 01                    MOV @R0,#0x1
CODE:3e05  80 08                    SJMP 0x3e0f
LAB_CODE_3e07:
CODE:3e07  ef                       MOV A,R7   ; XREF: CODE:3dfe 
CODE:3e08  b4 04 04                 CJNE A,#0x4,0x3e0f
CODE:3e0b  e4                       CLR A
CODE:3e0c  78 1b                    MOV R0,#0x1b
CODE:3e0e  f6                       MOV @R0,A
LAB_CODE_3e0f:
CODE:3e0f  12 ac 41                 LCALL 0xac41   ; XREF: CODE:3de7 CODE:3df1 CODE:3dfb CODE:3e05 CODE:3e08 
CODE:3e12  78 69                    MOV R0,#0x69
CODE:3e14  e6                       MOV A,@R0
CODE:3e15  b4 13 11                 CJNE A,#0x13,0x3e29
CODE:3e18  12 bb dd                 LCALL 0xbbdd
CODE:3e1b  e4                       CLR A
CODE:3e1c  78 62                    MOV R0,#0x62
CODE:3e1e  f6                       MOV @R0,A
CODE:3e1f  7f d8                    MOV R7,#0xd8
CODE:3e21  12 be bf                 LCALL 0xbebf
CODE:3e24  d2 1c                    SETB 0x1c
CODE:3e26  e4                       CLR A
CODE:3e27  f5 b1                    MOV 0xb1,A
LAB_CODE_3e29:
CODE:3e29  d2 13                    SETB 0x13   ; XREF: CODE:3e15 
CODE:3e2b  02 3f 98                 LJMP 0x3f98
LAB_CODE_3e2e:
CODE:3e2e  90 09 36                 MOV DPTR,#0x936   ; XREF: CODE:3da2 
CODE:3e31  e0                       MOVX A,@DPTR
CODE:3e32  fe                       MOV R6,A
CODE:3e33  a3                       INC DPTR
CODE:3e34  e0                       MOVX A,@DPTR
CODE:3e35  f5 82                    MOV DPL,A
CODE:3e37  8e 83                    MOV DPH,R6
CODE:3e39  a3                       INC DPTR
CODE:3e3a  e0                       MOVX A,@DPTR
CODE:3e3b  64 0c                    XRL A,#0xc
CODE:3e3d  60 03                    JZ 0x3e42
CODE:3e3f  02 3f 86                 LJMP 0x3f86
LAB_CODE_3e42:
CODE:3e42  12 bb dd                 LCALL 0xbbdd   ; XREF: CODE:3e3d 
CODE:3e45  e4                       CLR A
CODE:3e46  78 62                    MOV R0,#0x62
CODE:3e48  f6                       MOV @R0,A
CODE:3e49  f5 b1                    MOV 0xb1,A
CODE:3e4b  90 09 36                 MOV DPTR,#0x936
CODE:3e4e  e0                       MOVX A,@DPTR
CODE:3e4f  fe                       MOV R6,A
CODE:3e50  a3                       INC DPTR
CODE:3e51  e0                       MOVX A,@DPTR
CODE:3e52  ff                       MOV R7,A
CODE:3e53  f5 82                    MOV DPL,A
CODE:3e55  8e 83                    MOV DPH,R6
CODE:3e57  a3                       INC DPTR
CODE:3e58  a3                       INC DPTR
CODE:3e59  a3                       INC DPTR
CODE:3e5a  e0                       MOVX A,@DPTR
CODE:3e5b  90 09 27                 MOV DPTR,#0x927
CODE:3e5e  f0                       MOVX @DPTR,A
CODE:3e5f  c3                       CLR CY
CODE:3e60  94 55                    SUBB A,#0x55
CODE:3e62  50 54                    JNC 0x3eb8
CODE:3e64  e0                       MOVX A,@DPTR
CODE:3e65  75 f0 03                 MOV B,#0x3
CODE:3e68  a4                       MUL AB
CODE:3e69  24 02                    ADD A,#0x2
CODE:3e6b  fd                       MOV R5,A
CODE:3e6c  ef                       MOV A,R7
CODE:3e6d  24 04                    ADD A,#0x4
CODE:3e6f  f5 82                    MOV DPL,A
CODE:3e71  e4                       CLR A
CODE:3e72  3e                       ADDC A,R6
CODE:3e73  f5 83                    MOV DPH,A
CODE:3e75  e0                       MOVX A,@DPTR
CODE:3e76  fb                       MOV R3,A
CODE:3e77  7f d8                    MOV R7,#0xd8
CODE:3e79  12 bd c0                 LCALL 0xbdc0
CODE:3e7c  90 09 27                 MOV DPTR,#0x927
CODE:3e7f  e0                       MOVX A,@DPTR
CODE:3e80  75 f0 03                 MOV B,#0x3
CODE:3e83  a4                       MUL AB
CODE:3e84  04                       INC A
CODE:3e85  fd                       MOV R5,A
CODE:3e86  90 09 36                 MOV DPTR,#0x936
CODE:3e89  e0                       MOVX A,@DPTR
CODE:3e8a  fe                       MOV R6,A
CODE:3e8b  a3                       INC DPTR
CODE:3e8c  e0                       MOVX A,@DPTR
CODE:3e8d  24 05                    ADD A,#0x5
CODE:3e8f  f5 82                    MOV DPL,A
CODE:3e91  e4                       CLR A
CODE:3e92  3e                       ADDC A,R6
CODE:3e93  f5 83                    MOV DPH,A
CODE:3e95  e0                       MOVX A,@DPTR
CODE:3e96  fb                       MOV R3,A
CODE:3e97  7f d8                    MOV R7,#0xd8
CODE:3e99  12 bd c0                 LCALL 0xbdc0
CODE:3e9c  90 09 27                 MOV DPTR,#0x927
CODE:3e9f  e0                       MOVX A,@DPTR
CODE:3ea0  75 f0 03                 MOV B,#0x3
CODE:3ea3  a4                       MUL AB
CODE:3ea4  fd                       MOV R5,A
CODE:3ea5  90 09 36                 MOV DPTR,#0x936
CODE:3ea8  e0                       MOVX A,@DPTR
CODE:3ea9  fe                       MOV R6,A
CODE:3eaa  a3                       INC DPTR
CODE:3eab  e0                       MOVX A,@DPTR
CODE:3eac  24 06                    ADD A,#0x6
CODE:3eae  f5 82                    MOV DPL,A
CODE:3eb0  e4                       CLR A
CODE:3eb1  3e                       ADDC A,R6
CODE:3eb2  f5 83                    MOV DPH,A
CODE:3eb4  e0                       MOVX A,@DPTR
CODE:3eb5  fb                       MOV R3,A
CODE:3eb6  80 4b                    SJMP 0x3f03
LAB_CODE_3eb8:
CODE:3eb8  90 09 27                 MOV DPTR,#0x927   ; XREF: CODE:3e62 
CODE:3ebb  e0                       MOVX A,@DPTR
CODE:3ebc  64 55                    XRL A,#0x55
CODE:3ebe  70 4a                    JNZ 0x3f0a
CODE:3ec0  90 09 36                 MOV DPTR,#0x936
CODE:3ec3  e0                       MOVX A,@DPTR
CODE:3ec4  fe                       MOV R6,A
CODE:3ec5  a3                       INC DPTR
CODE:3ec6  e0                       MOVX A,@DPTR
CODE:3ec7  24 04                    ADD A,#0x4
CODE:3ec9  f5 82                    MOV DPL,A
CODE:3ecb  e4                       CLR A
CODE:3ecc  3e                       ADDC A,R6
CODE:3ecd  f5 83                    MOV DPH,A
CODE:3ecf  e0                       MOVX A,@DPTR
CODE:3ed0  fb                       MOV R3,A
CODE:3ed1  7d 01                    MOV R5,#0x1
CODE:3ed3  7f d9                    MOV R7,#0xd9
CODE:3ed5  12 bd c0                 LCALL 0xbdc0
CODE:3ed8  90 09 36                 MOV DPTR,#0x936
CODE:3edb  e0                       MOVX A,@DPTR
CODE:3edc  fe                       MOV R6,A
CODE:3edd  a3                       INC DPTR
CODE:3ede  e0                       MOVX A,@DPTR
CODE:3edf  24 05                    ADD A,#0x5
CODE:3ee1  f5 82                    MOV DPL,A
CODE:3ee3  e4                       CLR A
CODE:3ee4  3e                       ADDC A,R6
CODE:3ee5  f5 83                    MOV DPH,A
CODE:3ee7  e0                       MOVX A,@DPTR
CODE:3ee8  fb                       MOV R3,A
CODE:3ee9  e4                       CLR A
CODE:3eea  fd                       MOV R5,A
CODE:3eeb  7f d9                    MOV R7,#0xd9
CODE:3eed  12 bd c0                 LCALL 0xbdc0
CODE:3ef0  90 09 36                 MOV DPTR,#0x936
CODE:3ef3  e0                       MOVX A,@DPTR
CODE:3ef4  fe                       MOV R6,A
CODE:3ef5  a3                       INC DPTR
CODE:3ef6  e0                       MOVX A,@DPTR
CODE:3ef7  24 06                    ADD A,#0x6
CODE:3ef9  f5 82                    MOV DPL,A
CODE:3efb  e4                       CLR A
CODE:3efc  3e                       ADDC A,R6
CODE:3efd  f5 83                    MOV DPH,A
CODE:3eff  e0                       MOVX A,@DPTR
CODE:3f00  fb                       MOV R3,A
CODE:3f01  7d ff                    MOV R5,#0xff
LAB_CODE_3f03:
CODE:3f03  7f d8                    MOV R7,#0xd8   ; XREF: CODE:3eb6 
CODE:3f05  12 bd c0                 LCALL 0xbdc0
CODE:3f08  80 71                    SJMP 0x3f7b
LAB_CODE_3f0a:
CODE:3f0a  90 09 27                 MOV DPTR,#0x927   ; XREF: CODE:3ebe 
CODE:3f0d  e0                       MOVX A,@DPTR
CODE:3f0e  ff                       MOV R7,A
CODE:3f0f  c3                       CLR CY
CODE:3f10  94 8a                    SUBB A,#0x8a
CODE:3f12  50 67                    JNC 0x3f7b
CODE:3f14  ef                       MOV A,R7
CODE:3f15  75 f0 03                 MOV B,#0x3
CODE:3f18  a4                       MUL AB
CODE:3f19  24 02                    ADD A,#0x2
CODE:3f1b  fd                       MOV R5,A
CODE:3f1c  90 09 36                 MOV DPTR,#0x936
CODE:3f1f  e0                       MOVX A,@DPTR
CODE:3f20  fe                       MOV R6,A
CODE:3f21  a3                       INC DPTR
CODE:3f22  e0                       MOVX A,@DPTR
CODE:3f23  24 04                    ADD A,#0x4
CODE:3f25  f5 82                    MOV DPL,A
CODE:3f27  e4                       CLR A
CODE:3f28  3e                       ADDC A,R6
CODE:3f29  f5 83                    MOV DPH,A
CODE:3f2b  e0                       MOVX A,@DPTR
CODE:3f2c  fb                       MOV R3,A
CODE:3f2d  7f d9                    MOV R7,#0xd9
CODE:3f2f  12 bd c0                 LCALL 0xbdc0
CODE:3f32  90 09 27                 MOV DPTR,#0x927
CODE:3f35  e0                       MOVX A,@DPTR
CODE:3f36  24 ab                    ADD A,#0xab
CODE:3f38  75 f0 03                 MOV B,#0x3
CODE:3f3b  a4                       MUL AB
CODE:3f3c  fd                       MOV R5,A
CODE:3f3d  90 09 36                 MOV DPTR,#0x936
CODE:3f40  e0                       MOVX A,@DPTR
CODE:3f41  fe                       MOV R6,A
CODE:3f42  a3                       INC DPTR
CODE:3f43  e0                       MOVX A,@DPTR
CODE:3f44  24 05                    ADD A,#0x5
CODE:3f46  f5 82                    MOV DPL,A
CODE:3f48  e4                       CLR A
CODE:3f49  3e                       ADDC A,R6
CODE:3f4a  f5 83                    MOV DPH,A
CODE:3f4c  e0                       MOVX A,@DPTR
CODE:3f4d  fb                       MOV R3,A
CODE:3f4e  7f d9                    MOV R7,#0xd9
CODE:3f50  12 bd c0                 LCALL 0xbdc0
CODE:3f53  90 09 27                 MOV DPTR,#0x927
CODE:3f56  e0                       MOVX A,@DPTR
CODE:3f57  75 f0 03                 MOV B,#0x3
CODE:3f5a  a4                       MUL AB
CODE:3f5b  fd                       MOV R5,A
CODE:3f5c  90 09 36                 MOV DPTR,#0x936
CODE:3f5f  e0                       MOVX A,@DPTR
CODE:3f60  fe                       MOV R6,A
CODE:3f61  a3                       INC DPTR
CODE:3f62  e0                       MOVX A,@DPTR
CODE:3f63  24 06                    ADD A,#0x6
CODE:3f65  f5 82                    MOV DPL,A
CODE:3f67  e4                       CLR A
CODE:3f68  3e                       ADDC A,R6
CODE:3f69  f5 83                    MOV DPH,A
CODE:3f6b  e0                       MOVX A,@DPTR
CODE:3f6c  fb                       MOV R3,A
CODE:3f6d  7f d9                    MOV R7,#0xd9
CODE:3f6f  12 bd c0                 LCALL 0xbdc0
CODE:3f72  90 09 27                 MOV DPTR,#0x927
CODE:3f75  e0                       MOVX A,@DPTR
CODE:3f76  b4 89 02                 CJNE A,#0x89,0x3f7b
CODE:3f79  d2 13                    SETB 0x13
LAB_CODE_3f7b:
CODE:3f7b  90 09 27                 MOV DPTR,#0x927   ; XREF: CODE:3f08 CODE:3f12 CODE:3f76 
CODE:3f7e  e0                       MOVX A,@DPTR
CODE:3f7f  b4 89 16                 CJNE A,#0x89,0x3f98
CODE:3f82  c2 1c                    CLR 0x1c
CODE:3f84  80 12                    SJMP 0x3f98
LAB_CODE_3f86:
CODE:3f86  90 09 36                 MOV DPTR,#0x936   ; XREF: CODE:3e3f 
CODE:3f89  e0                       MOVX A,@DPTR
CODE:3f8a  fe                       MOV R6,A
CODE:3f8b  a3                       INC DPTR
CODE:3f8c  e0                       MOVX A,@DPTR
CODE:3f8d  f5 82                    MOV DPL,A
CODE:3f8f  8e 83                    MOV DPH,R6
CODE:3f91  a3                       INC DPTR
CODE:3f92  e0                       MOVX A,@DPTR
CODE:3f93  b4 0f 02                 CJNE A,#0xf,0x3f98
CODE:3f96  d2 25                    SETB 0x25
LAB_CODE_3f98:
CODE:3f98  02 44 bb                 LJMP 0x44bb   ; XREF: CODE:3be7 CODE:3c1e CODE:3c26 CODE:3ce1 CODE:3d16 CODE:3d23 CODE:3d8e CODE:3e2b CODE:3f7f CODE:3f84 CODE:3f93 
LAB_CODE_3f9b:
CODE:3f9b  90 09 35                 MOV DPTR,#0x935   ; XREF: CODE:3bc1 
CODE:3f9e  e0                       MOVX A,@DPTR
CODE:3f9f  64 0b                    XRL A,#0xb
CODE:3fa1  60 03                    JZ 0x3fa6
CODE:3fa3  02 43 27                 LJMP 0x4327
LAB_CODE_3fa6:
CODE:3fa6  f0                       MOVX @DPTR,A   ; XREF: CODE:3fa1 
CODE:3fa7  a3                       INC DPTR
CODE:3fa8  74 11                    MOV A,#0x11
CODE:3faa  f0                       MOVX @DPTR,A
CODE:3fab  a3                       INC DPTR
CODE:3fac  e4                       CLR A
CODE:3fad  f0                       MOVX @DPTR,A
CODE:3fae  90 09 36                 MOV DPTR,#0x936
CODE:3fb1  e0                       MOVX A,@DPTR
CODE:3fb2  fe                       MOV R6,A
CODE:3fb3  a3                       INC DPTR
CODE:3fb4  e0                       MOVX A,@DPTR
CODE:3fb5  ff                       MOV R7,A
CODE:3fb6  f5 82                    MOV DPL,A
CODE:3fb8  8e 83                    MOV DPH,R6
CODE:3fba  a3                       INC DPTR
CODE:3fbb  e0                       MOVX A,@DPTR
CODE:3fbc  90 09 27                 MOV DPTR,#0x927
CODE:3fbf  f0                       MOVX @DPTR,A
CODE:3fc0  90 09 16                 MOV DPTR,#0x916
CODE:3fc3  e0                       MOVX A,@DPTR
CODE:3fc4  64 01                    XRL A,#0x1
CODE:3fc6  60 03                    JZ 0x3fcb
CODE:3fc8  02 43 24                 LJMP 0x4324
LAB_CODE_3fcb:
CODE:3fcb  90 09 27                 MOV DPTR,#0x927   ; XREF: CODE:3fc6 
CODE:3fce  e0                       MOVX A,@DPTR
CODE:3fcf  fd                       MOV R5,A
CODE:3fd0  c3                       CLR CY
CODE:3fd1  94 0b                    SUBB A,#0xb
CODE:3fd3  40 03                    JC 0x3fd8
CODE:3fd5  02 40 90                 LJMP 0x4090
LAB_CODE_3fd8:
CODE:3fd8  ed                       MOV A,R5   ; XREF: CODE:3fd3 
CODE:3fd9  75 f0 18                 MOV B,#0x18
CODE:3fdc  a4                       MUL AB
CODE:3fdd  24 eb                    ADD A,#0xeb
CODE:3fdf  fd                       MOV R5,A
CODE:3fe0  8f 82                    MOV DPL,R7
CODE:3fe2  8e 83                    MOV DPH,R6
CODE:3fe4  a3                       INC DPTR
CODE:3fe5  a3                       INC DPTR
CODE:3fe6  e0                       MOVX A,@DPTR
CODE:3fe7  fb                       MOV R3,A
CODE:3fe8  7f e0                    MOV R7,#0xe0
CODE:3fea  12 bd c0                 LCALL 0xbdc0
CODE:3fed  90 09 27                 MOV DPTR,#0x927
CODE:3ff0  e0                       MOVX A,@DPTR
CODE:3ff1  75 f0 18                 MOV B,#0x18
CODE:3ff4  a4                       MUL AB
CODE:3ff5  24 ef                    ADD A,#0xef
CODE:3ff7  fd                       MOV R5,A
CODE:3ff8  90 09 36                 MOV DPTR,#0x936
CODE:3ffb  e0                       MOVX A,@DPTR
CODE:3ffc  fe                       MOV R6,A
CODE:3ffd  a3                       INC DPTR
CODE:3ffe  e0                       MOVX A,@DPTR
CODE:3fff  f5 82                    MOV DPL,A
CODE:4001  8e 83                    MOV DPH,R6
CODE:4003  a3                       INC DPTR
CODE:4004  a3                       INC DPTR
CODE:4005  a3                       INC DPTR
CODE:4006  e0                       MOVX A,@DPTR
CODE:4007  fb                       MOV R3,A
CODE:4008  7f e0                    MOV R7,#0xe0
CODE:400a  12 bd c0                 LCALL 0xbdc0
CODE:400d  90 09 27                 MOV DPTR,#0x927
CODE:4010  e0                       MOVX A,@DPTR
CODE:4011  75 f0 18                 MOV B,#0x18
CODE:4014  a4                       MUL AB
CODE:4015  24 f3                    ADD A,#0xf3
CODE:4017  fd                       MOV R5,A
CODE:4018  90 09 36                 MOV DPTR,#0x936
CODE:401b  e0                       MOVX A,@DPTR
CODE:401c  fe                       MOV R6,A
CODE:401d  a3                       INC DPTR
CODE:401e  e0                       MOVX A,@DPTR
CODE:401f  24 04                    ADD A,#0x4
CODE:4021  f5 82                    MOV DPL,A
CODE:4023  e4                       CLR A
CODE:4024  3e                       ADDC A,R6
CODE:4025  f5 83                    MOV DPH,A
CODE:4027  e0                       MOVX A,@DPTR
CODE:4028  fb                       MOV R3,A
CODE:4029  7f e0                    MOV R7,#0xe0
CODE:402b  12 bd c0                 LCALL 0xbdc0
CODE:402e  90 09 27                 MOV DPTR,#0x927
CODE:4031  e0                       MOVX A,@DPTR
CODE:4032  75 f0 18                 MOV B,#0x18
CODE:4035  a4                       MUL AB
CODE:4036  24 f7                    ADD A,#0xf7
CODE:4038  fd                       MOV R5,A
CODE:4039  90 09 36                 MOV DPTR,#0x936
CODE:403c  e0                       MOVX A,@DPTR
CODE:403d  fe                       MOV R6,A
CODE:403e  a3                       INC DPTR
CODE:403f  e0                       MOVX A,@DPTR
CODE:4040  24 05                    ADD A,#0x5
CODE:4042  f5 82                    MOV DPL,A
CODE:4044  e4                       CLR A
CODE:4045  3e                       ADDC A,R6
CODE:4046  f5 83                    MOV DPH,A
CODE:4048  e0                       MOVX A,@DPTR
CODE:4049  fb                       MOV R3,A
CODE:404a  7f e0                    MOV R7,#0xe0
CODE:404c  12 bd c0                 LCALL 0xbdc0
CODE:404f  90 09 27                 MOV DPTR,#0x927
CODE:4052  e0                       MOVX A,@DPTR
CODE:4053  75 f0 18                 MOV B,#0x18
CODE:4056  a4                       MUL AB
CODE:4057  24 fb                    ADD A,#0xfb
CODE:4059  fd                       MOV R5,A
CODE:405a  90 09 36                 MOV DPTR,#0x936
CODE:405d  e0                       MOVX A,@DPTR
CODE:405e  fe                       MOV R6,A
CODE:405f  a3                       INC DPTR
CODE:4060  e0                       MOVX A,@DPTR
CODE:4061  24 06                    ADD A,#0x6
CODE:4063  f5 82                    MOV DPL,A
CODE:4065  e4                       CLR A
CODE:4066  3e                       ADDC A,R6
CODE:4067  f5 83                    MOV DPH,A
CODE:4069  e0                       MOVX A,@DPTR
CODE:406a  fb                       MOV R3,A
CODE:406b  7f e0                    MOV R7,#0xe0
CODE:406d  12 bd c0                 LCALL 0xbdc0
CODE:4070  90 09 27                 MOV DPTR,#0x927
CODE:4073  e0                       MOVX A,@DPTR
CODE:4074  75 f0 18                 MOV B,#0x18
CODE:4077  a4                       MUL AB
CODE:4078  14                       DEC A
CODE:4079  fd                       MOV R5,A
CODE:407a  90 09 36                 MOV DPTR,#0x936
CODE:407d  e0                       MOVX A,@DPTR
CODE:407e  fe                       MOV R6,A
CODE:407f  a3                       INC DPTR
CODE:4080  e0                       MOVX A,@DPTR
CODE:4081  24 07                    ADD A,#0x7
CODE:4083  f5 82                    MOV DPL,A
CODE:4085  e4                       CLR A
CODE:4086  3e                       ADDC A,R6
CODE:4087  f5 83                    MOV DPH,A
CODE:4089  e0                       MOVX A,@DPTR
CODE:408a  fb                       MOV R3,A
CODE:408b  7f e0                    MOV R7,#0xe0
CODE:408d  02 43 21                 LJMP 0x4321
LAB_CODE_4090:
CODE:4090  90 09 27                 MOV DPTR,#0x927   ; XREF: CODE:3fd5 
CODE:4093  e0                       MOVX A,@DPTR
CODE:4094  64 0b                    XRL A,#0xb
CODE:4096  60 03                    JZ 0x409b
CODE:4098  02 41 28                 LJMP 0x4128
LAB_CODE_409b:
CODE:409b  90 09 36                 MOV DPTR,#0x936   ; XREF: CODE:4096 
CODE:409e  e0                       MOVX A,@DPTR
CODE:409f  fe                       MOV R6,A
CODE:40a0  a3                       INC DPTR
CODE:40a1  e0                       MOVX A,@DPTR
CODE:40a2  f5 82                    MOV DPL,A
CODE:40a4  8e 83                    MOV DPH,R6
CODE:40a6  a3                       INC DPTR
CODE:40a7  a3                       INC DPTR
CODE:40a8  e0                       MOVX A,@DPTR
CODE:40a9  fb                       MOV R3,A
CODE:40aa  7d f3                    MOV R5,#0xf3
CODE:40ac  7f e0                    MOV R7,#0xe0
CODE:40ae  12 bd c0                 LCALL 0xbdc0
CODE:40b1  90 09 36                 MOV DPTR,#0x936
CODE:40b4  e0                       MOVX A,@DPTR
CODE:40b5  fe                       MOV R6,A
CODE:40b6  a3                       INC DPTR
CODE:40b7  e0                       MOVX A,@DPTR
CODE:40b8  f5 82                    MOV DPL,A
CODE:40ba  8e 83                    MOV DPH,R6
CODE:40bc  a3                       INC DPTR
CODE:40bd  a3                       INC DPTR
CODE:40be  a3                       INC DPTR
CODE:40bf  e0                       MOVX A,@DPTR
CODE:40c0  fb                       MOV R3,A
CODE:40c1  7d f7                    MOV R5,#0xf7
CODE:40c3  7f e0                    MOV R7,#0xe0
CODE:40c5  12 bd c0                 LCALL 0xbdc0
CODE:40c8  90 09 36                 MOV DPTR,#0x936
CODE:40cb  e0                       MOVX A,@DPTR
CODE:40cc  fe                       MOV R6,A
CODE:40cd  a3                       INC DPTR
CODE:40ce  e0                       MOVX A,@DPTR
CODE:40cf  24 04                    ADD A,#0x4
CODE:40d1  f5 82                    MOV DPL,A
CODE:40d3  e4                       CLR A
CODE:40d4  3e                       ADDC A,R6
CODE:40d5  f5 83                    MOV DPH,A
CODE:40d7  e0                       MOVX A,@DPTR
CODE:40d8  fb                       MOV R3,A
CODE:40d9  7d fb                    MOV R5,#0xfb
CODE:40db  7f e0                    MOV R7,#0xe0
CODE:40dd  12 bd c0                 LCALL 0xbdc0
CODE:40e0  90 09 36                 MOV DPTR,#0x936
CODE:40e3  e0                       MOVX A,@DPTR
CODE:40e4  fe                       MOV R6,A
CODE:40e5  a3                       INC DPTR
CODE:40e6  e0                       MOVX A,@DPTR
CODE:40e7  24 05                    ADD A,#0x5
CODE:40e9  f5 82                    MOV DPL,A
CODE:40eb  e4                       CLR A
CODE:40ec  3e                       ADDC A,R6
CODE:40ed  f5 83                    MOV DPH,A
CODE:40ef  e0                       MOVX A,@DPTR
CODE:40f0  fb                       MOV R3,A
CODE:40f1  7d ff                    MOV R5,#0xff
CODE:40f3  7f e0                    MOV R7,#0xe0
CODE:40f5  12 bd c0                 LCALL 0xbdc0
CODE:40f8  90 09 36                 MOV DPTR,#0x936
CODE:40fb  e0                       MOVX A,@DPTR
CODE:40fc  fe                       MOV R6,A
CODE:40fd  a3                       INC DPTR
CODE:40fe  e0                       MOVX A,@DPTR
CODE:40ff  24 06                    ADD A,#0x6
CODE:4101  f5 82                    MOV DPL,A
CODE:4103  e4                       CLR A
CODE:4104  3e                       ADDC A,R6
CODE:4105  f5 83                    MOV DPH,A
CODE:4107  e0                       MOVX A,@DPTR
CODE:4108  fb                       MOV R3,A
CODE:4109  7d 03                    MOV R5,#0x3
CODE:410b  7f e1                    MOV R7,#0xe1
CODE:410d  12 bd c0                 LCALL 0xbdc0
CODE:4110  90 09 36                 MOV DPTR,#0x936
CODE:4113  e0                       MOVX A,@DPTR
CODE:4114  fe                       MOV R6,A
CODE:4115  a3                       INC DPTR
CODE:4116  e0                       MOVX A,@DPTR
CODE:4117  24 07                    ADD A,#0x7
CODE:4119  f5 82                    MOV DPL,A
CODE:411b  e4                       CLR A
CODE:411c  3e                       ADDC A,R6
CODE:411d  f5 83                    MOV DPH,A
CODE:411f  e0                       MOVX A,@DPTR
CODE:4120  fb                       MOV R3,A
CODE:4121  7d 07                    MOV R5,#0x7
CODE:4123  7f e1                    MOV R7,#0xe1
CODE:4125  02 43 21                 LJMP 0x4321
LAB_CODE_4128:
CODE:4128  90 09 27                 MOV DPTR,#0x927   ; XREF: CODE:4098 
CODE:412b  e0                       MOVX A,@DPTR
CODE:412c  ff                       MOV R7,A
CODE:412d  c3                       CLR CY
CODE:412e  94 16                    SUBB A,#0x16
CODE:4130  40 03                    JC 0x4135
CODE:4132  02 41 f4                 LJMP 0x41f4
LAB_CODE_4135:
CODE:4135  ef                       MOV A,R7   ; XREF: CODE:4130 
CODE:4136  75 f0 18                 MOV B,#0x18
CODE:4139  a4                       MUL AB
CODE:413a  24 eb                    ADD A,#0xeb
CODE:413c  fd                       MOV R5,A
CODE:413d  90 09 36                 MOV DPTR,#0x936
CODE:4140  e0                       MOVX A,@DPTR
CODE:4141  fe                       MOV R6,A
CODE:4142  a3                       INC DPTR
CODE:4143  e0                       MOVX A,@DPTR
CODE:4144  f5 82                    MOV DPL,A
CODE:4146  8e 83                    MOV DPH,R6
CODE:4148  a3                       INC DPTR
CODE:4149  a3                       INC DPTR
CODE:414a  e0                       MOVX A,@DPTR
CODE:414b  fb                       MOV R3,A
CODE:414c  7f e1                    MOV R7,#0xe1
CODE:414e  12 bd c0                 LCALL 0xbdc0
CODE:4151  90 09 27                 MOV DPTR,#0x927
CODE:4154  e0                       MOVX A,@DPTR
CODE:4155  75 f0 18                 MOV B,#0x18
CODE:4158  a4                       MUL AB
CODE:4159  24 ef                    ADD A,#0xef
CODE:415b  fd                       MOV R5,A
CODE:415c  90 09 36                 MOV DPTR,#0x936
CODE:415f  e0                       MOVX A,@DPTR
CODE:4160  fe                       MOV R6,A
CODE:4161  a3                       INC DPTR
CODE:4162  e0                       MOVX A,@DPTR
CODE:4163  f5 82                    MOV DPL,A
CODE:4165  8e 83                    MOV DPH,R6
CODE:4167  a3                       INC DPTR
CODE:4168  a3                       INC DPTR
CODE:4169  a3                       INC DPTR
CODE:416a  e0                       MOVX A,@DPTR
CODE:416b  fb                       MOV R3,A
CODE:416c  7f e1                    MOV R7,#0xe1
CODE:416e  12 bd c0                 LCALL 0xbdc0
CODE:4171  90 09 27                 MOV DPTR,#0x927
CODE:4174  e0                       MOVX A,@DPTR
CODE:4175  75 f0 18                 MOV B,#0x18
CODE:4178  a4                       MUL AB
CODE:4179  24 f3                    ADD A,#0xf3
CODE:417b  fd                       MOV R5,A
CODE:417c  90 09 36                 MOV DPTR,#0x936
CODE:417f  e0                       MOVX A,@DPTR
CODE:4180  fe                       MOV R6,A
CODE:4181  a3                       INC DPTR
CODE:4182  e0                       MOVX A,@DPTR
CODE:4183  24 04                    ADD A,#0x4
CODE:4185  f5 82                    MOV DPL,A
CODE:4187  e4                       CLR A
CODE:4188  3e                       ADDC A,R6
CODE:4189  f5 83                    MOV DPH,A
CODE:418b  e0                       MOVX A,@DPTR
CODE:418c  fb                       MOV R3,A
CODE:418d  7f e1                    MOV R7,#0xe1
CODE:418f  12 bd c0                 LCALL 0xbdc0
CODE:4192  90 09 27                 MOV DPTR,#0x927
CODE:4195  e0                       MOVX A,@DPTR
CODE:4196  75 f0 18                 MOV B,#0x18
CODE:4199  a4                       MUL AB
CODE:419a  24 f7                    ADD A,#0xf7
CODE:419c  fd                       MOV R5,A
CODE:419d  90 09 36                 MOV DPTR,#0x936
CODE:41a0  e0                       MOVX A,@DPTR
CODE:41a1  fe                       MOV R6,A
CODE:41a2  a3                       INC DPTR
CODE:41a3  e0                       MOVX A,@DPTR
CODE:41a4  24 05                    ADD A,#0x5
CODE:41a6  f5 82                    MOV DPL,A
CODE:41a8  e4                       CLR A
CODE:41a9  3e                       ADDC A,R6
CODE:41aa  f5 83                    MOV DPH,A
CODE:41ac  e0                       MOVX A,@DPTR
CODE:41ad  fb                       MOV R3,A
CODE:41ae  7f e1                    MOV R7,#0xe1
CODE:41b0  12 bd c0                 LCALL 0xbdc0
CODE:41b3  90 09 27                 MOV DPTR,#0x927
CODE:41b6  e0                       MOVX A,@DPTR
CODE:41b7  75 f0 18                 MOV B,#0x18
CODE:41ba  a4                       MUL AB
CODE:41bb  24 fb                    ADD A,#0xfb
CODE:41bd  fd                       MOV R5,A
CODE:41be  90 09 36                 MOV DPTR,#0x936
CODE:41c1  e0                       MOVX A,@DPTR
CODE:41c2  fe                       MOV R6,A
CODE:41c3  a3                       INC DPTR
CODE:41c4  e0                       MOVX A,@DPTR
CODE:41c5  24 06                    ADD A,#0x6
CODE:41c7  f5 82                    MOV DPL,A
CODE:41c9  e4                       CLR A
CODE:41ca  3e                       ADDC A,R6
CODE:41cb  f5 83                    MOV DPH,A
CODE:41cd  e0                       MOVX A,@DPTR
CODE:41ce  fb                       MOV R3,A
CODE:41cf  7f e1                    MOV R7,#0xe1
CODE:41d1  12 bd c0                 LCALL 0xbdc0
CODE:41d4  90 09 27                 MOV DPTR,#0x927
CODE:41d7  e0                       MOVX A,@DPTR
CODE:41d8  75 f0 18                 MOV B,#0x18
CODE:41db  a4                       MUL AB
CODE:41dc  14                       DEC A
CODE:41dd  fd                       MOV R5,A
CODE:41de  90 09 36                 MOV DPTR,#0x936
CODE:41e1  e0                       MOVX A,@DPTR
CODE:41e2  fe                       MOV R6,A
CODE:41e3  a3                       INC DPTR
CODE:41e4  e0                       MOVX A,@DPTR
CODE:41e5  24 07                    ADD A,#0x7
CODE:41e7  f5 82                    MOV DPL,A
CODE:41e9  e4                       CLR A
CODE:41ea  3e                       ADDC A,R6
CODE:41eb  f5 83                    MOV DPH,A
CODE:41ed  e0                       MOVX A,@DPTR
CODE:41ee  fb                       MOV R3,A
CODE:41ef  7f e1                    MOV R7,#0xe1
CODE:41f1  02 43 21                 LJMP 0x4321
LAB_CODE_41f4:
CODE:41f4  90 09 27                 MOV DPTR,#0x927   ; XREF: CODE:4132 
CODE:41f7  e0                       MOVX A,@DPTR
CODE:41f8  64 16                    XRL A,#0x16
CODE:41fa  60 03                    JZ 0x41ff
CODE:41fc  02 42 8c                 LJMP 0x428c
LAB_CODE_41ff:
CODE:41ff  90 09 36                 MOV DPTR,#0x936   ; XREF: CODE:41fa 
CODE:4202  e0                       MOVX A,@DPTR
CODE:4203  fe                       MOV R6,A
CODE:4204  a3                       INC DPTR
CODE:4205  e0                       MOVX A,@DPTR
CODE:4206  f5 82                    MOV DPL,A
CODE:4208  8e 83                    MOV DPH,R6
CODE:420a  a3                       INC DPTR
CODE:420b  a3                       INC DPTR
CODE:420c  e0                       MOVX A,@DPTR
CODE:420d  fb                       MOV R3,A
CODE:420e  7d fb                    MOV R5,#0xfb
CODE:4210  7f e1                    MOV R7,#0xe1
CODE:4212  12 bd c0                 LCALL 0xbdc0
CODE:4215  90 09 36                 MOV DPTR,#0x936
CODE:4218  e0                       MOVX A,@DPTR
CODE:4219  fe                       MOV R6,A
CODE:421a  a3                       INC DPTR
CODE:421b  e0                       MOVX A,@DPTR
CODE:421c  f5 82                    MOV DPL,A
CODE:421e  8e 83                    MOV DPH,R6
CODE:4220  a3                       INC DPTR
CODE:4221  a3                       INC DPTR
CODE:4222  a3                       INC DPTR
CODE:4223  e0                       MOVX A,@DPTR
CODE:4224  fb                       MOV R3,A
CODE:4225  7d ff                    MOV R5,#0xff
CODE:4227  7f e1                    MOV R7,#0xe1
CODE:4229  12 bd c0                 LCALL 0xbdc0
CODE:422c  90 09 36                 MOV DPTR,#0x936
CODE:422f  e0                       MOVX A,@DPTR
CODE:4230  fe                       MOV R6,A
CODE:4231  a3                       INC DPTR
CODE:4232  e0                       MOVX A,@DPTR
CODE:4233  24 04                    ADD A,#0x4
CODE:4235  f5 82                    MOV DPL,A
CODE:4237  e4                       CLR A
CODE:4238  3e                       ADDC A,R6
CODE:4239  f5 83                    MOV DPH,A
CODE:423b  e0                       MOVX A,@DPTR
CODE:423c  fb                       MOV R3,A
CODE:423d  7d 03                    MOV R5,#0x3
CODE:423f  7f e2                    MOV R7,#0xe2
CODE:4241  12 bd c0                 LCALL 0xbdc0
CODE:4244  90 09 36                 MOV DPTR,#0x936
CODE:4247  e0                       MOVX A,@DPTR
CODE:4248  fe                       MOV R6,A
CODE:4249  a3                       INC DPTR
CODE:424a  e0                       MOVX A,@DPTR
CODE:424b  24 05                    ADD A,#0x5
CODE:424d  f5 82                    MOV DPL,A
CODE:424f  e4                       CLR A
CODE:4250  3e                       ADDC A,R6
CODE:4251  f5 83                    MOV DPH,A
CODE:4253  e0                       MOVX A,@DPTR
CODE:4254  fb                       MOV R3,A
CODE:4255  7d 07                    MOV R5,#0x7
CODE:4257  7f e2                    MOV R7,#0xe2
CODE:4259  12 bd c0                 LCALL 0xbdc0
CODE:425c  90 09 36                 MOV DPTR,#0x936
CODE:425f  e0                       MOVX A,@DPTR
CODE:4260  fe                       MOV R6,A
CODE:4261  a3                       INC DPTR
CODE:4262  e0                       MOVX A,@DPTR
CODE:4263  24 06                    ADD A,#0x6
CODE:4265  f5 82                    MOV DPL,A
CODE:4267  e4                       CLR A
CODE:4268  3e                       ADDC A,R6
CODE:4269  f5 83                    MOV DPH,A
CODE:426b  e0                       MOVX A,@DPTR
CODE:426c  fb                       MOV R3,A
CODE:426d  7d 0b                    MOV R5,#0xb
CODE:426f  7f e2                    MOV R7,#0xe2
CODE:4271  12 bd c0                 LCALL 0xbdc0
CODE:4274  90 09 36                 MOV DPTR,#0x936
CODE:4277  e0                       MOVX A,@DPTR
CODE:4278  fe                       MOV R6,A
CODE:4279  a3                       INC DPTR
CODE:427a  e0                       MOVX A,@DPTR
CODE:427b  24 07                    ADD A,#0x7
CODE:427d  f5 82                    MOV DPL,A
CODE:427f  e4                       CLR A
CODE:4280  3e                       ADDC A,R6
CODE:4281  f5 83                    MOV DPH,A
CODE:4283  e0                       MOVX A,@DPTR
CODE:4284  fb                       MOV R3,A
CODE:4285  7d 0f                    MOV R5,#0xf
CODE:4287  7f e2                    MOV R7,#0xe2
CODE:4289  02 43 21                 LJMP 0x4321
LAB_CODE_428c:
CODE:428c  90 09 27                 MOV DPTR,#0x927   ; XREF: CODE:41fc 
CODE:428f  e0                       MOVX A,@DPTR
CODE:4290  64 17                    XRL A,#0x17
CODE:4292  60 03                    JZ 0x4297
CODE:4294  02 43 24                 LJMP 0x4324
LAB_CODE_4297:
CODE:4297  90 09 36                 MOV DPTR,#0x936   ; XREF: CODE:4292 
CODE:429a  e0                       MOVX A,@DPTR
CODE:429b  fe                       MOV R6,A
CODE:429c  a3                       INC DPTR
CODE:429d  e0                       MOVX A,@DPTR
CODE:429e  f5 82                    MOV DPL,A
CODE:42a0  8e 83                    MOV DPH,R6
CODE:42a2  a3                       INC DPTR
CODE:42a3  a3                       INC DPTR
CODE:42a4  e0                       MOVX A,@DPTR
CODE:42a5  fb                       MOV R3,A
CODE:42a6  7d 13                    MOV R5,#0x13
CODE:42a8  7f e2                    MOV R7,#0xe2
CODE:42aa  12 bd c0                 LCALL 0xbdc0
CODE:42ad  90 09 36                 MOV DPTR,#0x936
CODE:42b0  e0                       MOVX A,@DPTR
CODE:42b1  fe                       MOV R6,A
CODE:42b2  a3                       INC DPTR
CODE:42b3  e0                       MOVX A,@DPTR
CODE:42b4  f5 82                    MOV DPL,A
CODE:42b6  8e 83                    MOV DPH,R6
CODE:42b8  a3                       INC DPTR
CODE:42b9  a3                       INC DPTR
CODE:42ba  a3                       INC DPTR
CODE:42bb  e0                       MOVX A,@DPTR
CODE:42bc  fb                       MOV R3,A
CODE:42bd  7d 17                    MOV R5,#0x17
CODE:42bf  7f e2                    MOV R7,#0xe2
CODE:42c1  12 bd c0                 LCALL 0xbdc0
CODE:42c4  90 09 36                 MOV DPTR,#0x936
CODE:42c7  e0                       MOVX A,@DPTR
CODE:42c8  fe                       MOV R6,A
CODE:42c9  a3                       INC DPTR
CODE:42ca  e0                       MOVX A,@DPTR
CODE:42cb  24 04                    ADD A,#0x4
CODE:42cd  f5 82                    MOV DPL,A
CODE:42cf  e4                       CLR A
CODE:42d0  3e                       ADDC A,R6
CODE:42d1  f5 83                    MOV DPH,A
CODE:42d3  e0                       MOVX A,@DPTR
CODE:42d4  fb                       MOV R3,A
CODE:42d5  7d 1b                    MOV R5,#0x1b
CODE:42d7  7f e2                    MOV R7,#0xe2
CODE:42d9  12 bd c0                 LCALL 0xbdc0
CODE:42dc  90 09 36                 MOV DPTR,#0x936
CODE:42df  e0                       MOVX A,@DPTR
CODE:42e0  fe                       MOV R6,A
CODE:42e1  a3                       INC DPTR
CODE:42e2  e0                       MOVX A,@DPTR
CODE:42e3  24 05                    ADD A,#0x5
CODE:42e5  f5 82                    MOV DPL,A
CODE:42e7  e4                       CLR A
CODE:42e8  3e                       ADDC A,R6
CODE:42e9  f5 83                    MOV DPH,A
CODE:42eb  e0                       MOVX A,@DPTR
CODE:42ec  fb                       MOV R3,A
CODE:42ed  7d 1f                    MOV R5,#0x1f
CODE:42ef  7f e2                    MOV R7,#0xe2
CODE:42f1  12 bd c0                 LCALL 0xbdc0
CODE:42f4  90 09 36                 MOV DPTR,#0x936
CODE:42f7  e0                       MOVX A,@DPTR
CODE:42f8  fe                       MOV R6,A
CODE:42f9  a3                       INC DPTR
CODE:42fa  e0                       MOVX A,@DPTR
CODE:42fb  24 06                    ADD A,#0x6
CODE:42fd  f5 82                    MOV DPL,A
CODE:42ff  e4                       CLR A
CODE:4300  3e                       ADDC A,R6
CODE:4301  f5 83                    MOV DPH,A
CODE:4303  e0                       MOVX A,@DPTR
CODE:4304  fb                       MOV R3,A
CODE:4305  7d 23                    MOV R5,#0x23
CODE:4307  7f e2                    MOV R7,#0xe2
CODE:4309  12 bd c0                 LCALL 0xbdc0
CODE:430c  90 09 36                 MOV DPTR,#0x936
CODE:430f  e0                       MOVX A,@DPTR
CODE:4310  fe                       MOV R6,A
CODE:4311  a3                       INC DPTR
CODE:4312  e0                       MOVX A,@DPTR
CODE:4313  24 07                    ADD A,#0x7
CODE:4315  f5 82                    MOV DPL,A
CODE:4317  e4                       CLR A
CODE:4318  3e                       ADDC A,R6
CODE:4319  f5 83                    MOV DPH,A
CODE:431b  e0                       MOVX A,@DPTR
CODE:431c  fb                       MOV R3,A
CODE:431d  7d 27                    MOV R5,#0x27
CODE:431f  7f e2                    MOV R7,#0xe2
LAB_CODE_4321:
CODE:4321  12 bd c0                 LCALL 0xbdc0   ; XREF: CODE:408d CODE:4125 CODE:41f1 CODE:4289 
LAB_CODE_4324:
CODE:4324  02 44 bb                 LJMP 0x44bb   ; XREF: CODE:3fc8 CODE:4294 
LAB_CODE_4327:
CODE:4327  90 09 35                 MOV DPTR,#0x935   ; XREF: CODE:3fa3 
CODE:432a  e0                       MOVX A,@DPTR
CODE:432b  64 0c                    XRL A,#0xc
CODE:432d  60 03                    JZ 0x4332
CODE:432f  02 44 b6                 LJMP 0x44b6
LAB_CODE_4332:
CODE:4332  f0                       MOVX @DPTR,A   ; XREF: CODE:432d 
CODE:4333  a3                       INC DPTR
CODE:4334  74 11                    MOV A,#0x11
CODE:4336  f0                       MOVX @DPTR,A
CODE:4337  a3                       INC DPTR
CODE:4338  e4                       CLR A
CODE:4339  f0                       MOVX @DPTR,A
CODE:433a  90 09 36                 MOV DPTR,#0x936
CODE:433d  e0                       MOVX A,@DPTR
CODE:433e  fa                       MOV R2,A
CODE:433f  a3                       INC DPTR
CODE:4340  e0                       MOVX A,@DPTR
CODE:4341  fb                       MOV R3,A
CODE:4342  f5 82                    MOV DPL,A
CODE:4344  8a 83                    MOV DPH,R2
CODE:4346  a3                       INC DPTR
CODE:4347  e0                       MOVX A,@DPTR
CODE:4348  90 09 27                 MOV DPTR,#0x927
CODE:434b  f0                       MOVX @DPTR,A
CODE:434c  e4                       CLR A
CODE:434d  f5 14                    MOV 0x14,A
CODE:434f  f5 15                    MOV 0x15,A
CODE:4351  90 09 2c                 MOV DPTR,#0x92c
CODE:4354  e0                       MOVX A,@DPTR
CODE:4355  64 01                    XRL A,#0x1
CODE:4357  60 03                    JZ 0x435c
CODE:4359  02 44 b4                 LJMP 0x44b4
LAB_CODE_435c:
CODE:435c  90 09 38                 MOV DPTR,#0x938   ; XREF: CODE:4357 
CODE:435f  e0                       MOVX A,@DPTR
CODE:4360  fc                       MOV R4,A
CODE:4361  90 09 27                 MOV DPTR,#0x927
CODE:4364  e0                       MOVX A,@DPTR
CODE:4365  75 f0 06                 MOV B,#0x6
CODE:4368  a4                       MUL AB
CODE:4369  24 00                    ADD A,#0x0
CODE:436b  ff                       MOV R7,A
CODE:436c  e5 f0                    MOV A,B
CODE:436e  3c                       ADDC A,R4
CODE:436f  cf                       XCH A,R7
CODE:4370  24 fa                    ADD A,#0xfa
CODE:4372  cf                       XCH A,R7
CODE:4373  34 fe                    ADDC A,#0xfe
CODE:4375  fe                       MOV R6,A
CODE:4376  e4                       CLR A
CODE:4377  fc                       MOV R4,A
CODE:4378  fd                       MOV R5,A
CODE:4379  8b 82                    MOV DPL,R3
CODE:437b  8a 83                    MOV DPH,R2
CODE:437d  a3                       INC DPTR
CODE:437e  a3                       INC DPTR
CODE:437f  e0                       MOVX A,@DPTR
CODE:4380  90 09 0d                 MOV DPTR,#0x90d
CODE:4383  f0                       MOVX @DPTR,A
CODE:4384  12 b3 9e                 LCALL 0xb39e
CODE:4387  7f d0                    MOV R7,#0xd0
CODE:4389  7e 07                    MOV R6,#0x7
CODE:438b  12 bd 5a                 LCALL 0xbd5a
CODE:438e  90 09 38                 MOV DPTR,#0x938
CODE:4391  e0                       MOVX A,@DPTR
CODE:4392  fc                       MOV R4,A
CODE:4393  90 09 27                 MOV DPTR,#0x927
CODE:4396  e0                       MOVX A,@DPTR
CODE:4397  75 f0 06                 MOV B,#0x6
CODE:439a  a4                       MUL AB
CODE:439b  24 00                    ADD A,#0x0
CODE:439d  ff                       MOV R7,A
CODE:439e  e5 f0                    MOV A,B
CODE:43a0  3c                       ADDC A,R4
CODE:43a1  cf                       XCH A,R7
CODE:43a2  24 fb                    ADD A,#0xfb
CODE:43a4  cf                       XCH A,R7
CODE:43a5  34 fe                    ADDC A,#0xfe
CODE:43a7  fe                       MOV R6,A
CODE:43a8  e4                       CLR A
CODE:43a9  fc                       MOV R4,A
CODE:43aa  fd                       MOV R5,A
CODE:43ab  90 09 36                 MOV DPTR,#0x936
CODE:43ae  e0                       MOVX A,@DPTR
CODE:43af  fa                       MOV R2,A
CODE:43b0  a3                       INC DPTR
CODE:43b1  e0                       MOVX A,@DPTR
CODE:43b2  f5 82                    MOV DPL,A
CODE:43b4  8a 83                    MOV DPH,R2
CODE:43b6  a3                       INC DPTR
CODE:43b7  a3                       INC DPTR
CODE:43b8  a3                       INC DPTR
CODE:43b9  e0                       MOVX A,@DPTR
CODE:43ba  90 09 0d                 MOV DPTR,#0x90d
CODE:43bd  f0                       MOVX @DPTR,A
CODE:43be  12 b3 9e                 LCALL 0xb39e
CODE:43c1  7f d0                    MOV R7,#0xd0
CODE:43c3  7e 07                    MOV R6,#0x7
CODE:43c5  12 bd 5a                 LCALL 0xbd5a
CODE:43c8  90 09 38                 MOV DPTR,#0x938
CODE:43cb  e0                       MOVX A,@DPTR
CODE:43cc  fc                       MOV R4,A
CODE:43cd  90 09 27                 MOV DPTR,#0x927
CODE:43d0  e0                       MOVX A,@DPTR
CODE:43d1  75 f0 06                 MOV B,#0x6
CODE:43d4  a4                       MUL AB
CODE:43d5  24 00                    ADD A,#0x0
CODE:43d7  ff                       MOV R7,A
CODE:43d8  e5 f0                    MOV A,B
CODE:43da  3c                       ADDC A,R4
CODE:43db  cf                       XCH A,R7
CODE:43dc  24 fc                    ADD A,#0xfc
CODE:43de  cf                       XCH A,R7
CODE:43df  34 fe                    ADDC A,#0xfe
CODE:43e1  fe                       MOV R6,A
CODE:43e2  e4                       CLR A
CODE:43e3  fc                       MOV R4,A
CODE:43e4  fd                       MOV R5,A
CODE:43e5  90 09 36                 MOV DPTR,#0x936
CODE:43e8  e0                       MOVX A,@DPTR
CODE:43e9  fa                       MOV R2,A
CODE:43ea  a3                       INC DPTR
CODE:43eb  e0                       MOVX A,@DPTR
CODE:43ec  24 04                    ADD A,#0x4
CODE:43ee  f5 82                    MOV DPL,A
CODE:43f0  e4                       CLR A
CODE:43f1  3a                       ADDC A,R2
CODE:43f2  f5 83                    MOV DPH,A
CODE:43f4  e0                       MOVX A,@DPTR
CODE:43f5  90 09 0d                 MOV DPTR,#0x90d
CODE:43f8  f0                       MOVX @DPTR,A
CODE:43f9  12 b3 9e                 LCALL 0xb39e
CODE:43fc  7f d0                    MOV R7,#0xd0
CODE:43fe  7e 07                    MOV R6,#0x7
CODE:4400  12 bd 5a                 LCALL 0xbd5a
CODE:4403  90 09 38                 MOV DPTR,#0x938
CODE:4406  e0                       MOVX A,@DPTR
CODE:4407  fc                       MOV R4,A
CODE:4408  90 09 27                 MOV DPTR,#0x927
CODE:440b  e0                       MOVX A,@DPTR
CODE:440c  75 f0 06                 MOV B,#0x6
CODE:440f  a4                       MUL AB
CODE:4410  24 00                    ADD A,#0x0
CODE:4412  ff                       MOV R7,A
CODE:4413  e5 f0                    MOV A,B
CODE:4415  3c                       ADDC A,R4
CODE:4416  cf                       XCH A,R7
CODE:4417  24 fd                    ADD A,#0xfd
CODE:4419  cf                       XCH A,R7
CODE:441a  34 fe                    ADDC A,#0xfe
CODE:441c  fe                       MOV R6,A
CODE:441d  e4                       CLR A
CODE:441e  fc                       MOV R4,A
CODE:441f  fd                       MOV R5,A
CODE:4420  90 09 36                 MOV DPTR,#0x936
CODE:4423  e0                       MOVX A,@DPTR
CODE:4424  fa                       MOV R2,A
CODE:4425  a3                       INC DPTR
CODE:4426  e0                       MOVX A,@DPTR
CODE:4427  24 05                    ADD A,#0x5
CODE:4429  f5 82                    MOV DPL,A
CODE:442b  e4                       CLR A
CODE:442c  3a                       ADDC A,R2
CODE:442d  f5 83                    MOV DPH,A
CODE:442f  e0                       MOVX A,@DPTR
CODE:4430  90 09 0d                 MOV DPTR,#0x90d
CODE:4433  f0                       MOVX @DPTR,A
CODE:4434  12 b3 9e                 LCALL 0xb39e
CODE:4437  7f d0                    MOV R7,#0xd0
CODE:4439  7e 07                    MOV R6,#0x7
CODE:443b  12 bd 5a                 LCALL 0xbd5a
CODE:443e  90 09 38                 MOV DPTR,#0x938
CODE:4441  e0                       MOVX A,@DPTR
CODE:4442  fc                       MOV R4,A
CODE:4443  90 09 27                 MOV DPTR,#0x927
CODE:4446  e0                       MOVX A,@DPTR
CODE:4447  75 f0 06                 MOV B,#0x6
CODE:444a  a4                       MUL AB
CODE:444b  24 00                    ADD A,#0x0
CODE:444d  ff                       MOV R7,A
CODE:444e  e5 f0                    MOV A,B
CODE:4450  3c                       ADDC A,R4
CODE:4451  cf                       XCH A,R7
CODE:4452  24 fe                    ADD A,#0xfe
CODE:4454  cf                       XCH A,R7
CODE:4455  34 fe                    ADDC A,#0xfe
CODE:4457  fe                       MOV R6,A
CODE:4458  e4                       CLR A
CODE:4459  fc                       MOV R4,A
CODE:445a  fd                       MOV R5,A
CODE:445b  90 09 36                 MOV DPTR,#0x936
CODE:445e  e0                       MOVX A,@DPTR
CODE:445f  fa                       MOV R2,A
CODE:4460  a3                       INC DPTR
CODE:4461  e0                       MOVX A,@DPTR
CODE:4462  24 06                    ADD A,#0x6
CODE:4464  f5 82                    MOV DPL,A
CODE:4466  e4                       CLR A
CODE:4467  3a                       ADDC A,R2
CODE:4468  f5 83                    MOV DPH,A
CODE:446a  e0                       MOVX A,@DPTR
CODE:446b  90 09 0d                 MOV DPTR,#0x90d
CODE:446e  f0                       MOVX @DPTR,A
CODE:446f  12 b3 9e                 LCALL 0xb39e
CODE:4472  7f d0                    MOV R7,#0xd0
CODE:4474  7e 07                    MOV R6,#0x7
CODE:4476  12 bd 5a                 LCALL 0xbd5a
CODE:4479  90 09 38                 MOV DPTR,#0x938
CODE:447c  e0                       MOVX A,@DPTR
CODE:447d  fc                       MOV R4,A
CODE:447e  90 09 27                 MOV DPTR,#0x927
CODE:4481  e0                       MOVX A,@DPTR
CODE:4482  75 f0 06                 MOV B,#0x6
CODE:4485  a4                       MUL AB
CODE:4486  24 00                    ADD A,#0x0
CODE:4488  ff                       MOV R7,A
CODE:4489  e5 f0                    MOV A,B
CODE:448b  3c                       ADDC A,R4
CODE:448c  cf                       XCH A,R7
CODE:448d  24 ff                    ADD A,#0xff
CODE:448f  cf                       XCH A,R7
CODE:4490  34 fe                    ADDC A,#0xfe
CODE:4492  fe                       MOV R6,A
CODE:4493  e4                       CLR A
CODE:4494  fc                       MOV R4,A
CODE:4495  fd                       MOV R5,A
CODE:4496  90 09 36                 MOV DPTR,#0x936
CODE:4499  e0                       MOVX A,@DPTR
CODE:449a  fa                       MOV R2,A
CODE:449b  a3                       INC DPTR
CODE:449c  e0                       MOVX A,@DPTR
CODE:449d  24 07                    ADD A,#0x7
CODE:449f  f5 82                    MOV DPL,A
CODE:44a1  e4                       CLR A
CODE:44a2  3a                       ADDC A,R2
CODE:44a3  f5 83                    MOV DPH,A
CODE:44a5  e0                       MOVX A,@DPTR
CODE:44a6  90 09 0d                 MOV DPTR,#0x90d
CODE:44a9  f0                       MOVX @DPTR,A
CODE:44aa  12 b3 9e                 LCALL 0xb39e
CODE:44ad  7f d0                    MOV R7,#0xd0
CODE:44af  7e 07                    MOV R6,#0x7
CODE:44b1  12 bd 5a                 LCALL 0xbd5a
LAB_CODE_44b4:
CODE:44b4  80 05                    SJMP 0x44bb   ; XREF: CODE:4359 
LAB_CODE_44b6:
CODE:44b6  e4                       CLR A   ; XREF: CODE:432f 
CODE:44b7  90 09 35                 MOV DPTR,#0x935
CODE:44ba  f0                       MOVX @DPTR,A
LAB_CODE_44bb:
CODE:44bb  53 9b f0                 ANL 0x9b,#0xf0   ; XREF: CODE:3b7a CODE:3b86 CODE:3f98 CODE:4324 CODE:44b4 
CODE:44be  43 97 04                 ORL 0x97,#0x4
LAB_CODE_44c1:
CODE:44c1  22                       RET   ; XREF: CODE:3baa CODE:3bb3 

; ===== FUNCTION FUN_CODE_44c2 @ CODE:44c2 =====
CODE:44c2  e4                       CLR A   ; XREF: CODE:c0f8 
CODE:44c3  f5 b1                    MOV 0xb1,A
CODE:44c5  c2 af                    CLR 0xaf
CODE:44c7  d2 b7                    SETB 0xb7
CODE:44c9  12 c0 8b                 LCALL 0xc08b
CODE:44cc  12 c1 c8                 LCALL 0xc1c8
CODE:44cf  d2 2b                    SETB 0x2b
CODE:44d1  12 c1 89                 LCALL 0xc189
CODE:44d4  12 a1 d9                 LCALL 0xa1d9
CODE:44d7  12 a5 15                 LCALL 0xa515
CODE:44da  d2 84                    SETB 0x84
CODE:44dc  12 c0 aa                 LCALL 0xc0aa
CODE:44df  d2 2e                    SETB 0x2e
CODE:44e1  d2 83                    SETB 0x83
CODE:44e3  c2 1a                    CLR 0x1a
CODE:44e5  c2 16                    CLR 0x16
CODE:44e7  c2 2f                    CLR 0x2f
CODE:44e9  78 6d                    MOV R0,#0x6d
CODE:44eb  76 01                    MOV @R0,#0x1
CODE:44ed  d2 af                    SETB 0xaf
LAB_CODE_44ef:
CODE:44ef  e4                       CLR A   ; XREF: CODE:4b33 CODE:4b39 
CODE:44f0  f5 b1                    MOV 0xb1,A
CODE:44f2  30 1f 06                 JNB 0x1f,0x44fb
CODE:44f5  12 83 32                 LCALL 0x8332
CODE:44f8  12 5f cc                 LCALL 0x5fcc
LAB_CODE_44fb:
CODE:44fb  20 23 03                 JB 0x23,0x4501   ; XREF: CODE:44f2 
CODE:44fe  02 4b 30                 LJMP 0x4b30
LAB_CODE_4501:
CODE:4501  20 1d 03                 JB 0x1d,0x4507   ; XREF: CODE:44fb 
CODE:4504  02 48 eb                 LJMP 0x48eb
LAB_CODE_4507:
CODE:4507  c2 1d                    CLR 0x1d   ; XREF: CODE:4501 
CODE:4509  53 a8 fe                 ANL 0xa8,#0xfe
CODE:450c  12 bb dd                 LCALL 0xbbdd
CODE:450f  d2 2e                    SETB 0x2e
CODE:4511  c2 16                    CLR 0x16
CODE:4513  c2 2f                    CLR 0x2f
CODE:4515  e4                       CLR A
CODE:4516  78 1f                    MOV R0,#0x1f
CODE:4518  f6                       MOV @R0,A
CODE:4519  c2 11                    CLR 0x11
CODE:451b  12 af dc                 LCALL 0xafdc
CODE:451e  7f e0                    MOV R7,#0xe0
CODE:4520  12 be bf                 LCALL 0xbebf
CODE:4523  7f e2                    MOV R7,#0xe2
CODE:4525  12 be bf                 LCALL 0xbebf
CODE:4528  7f d8                    MOV R7,#0xd8
CODE:452a  12 be bf                 LCALL 0xbebf
CODE:452d  7f ec                    MOV R7,#0xec
CODE:452f  12 be bf                 LCALL 0xbebf
CODE:4532  7f e6                    MOV R7,#0xe6
CODE:4534  12 be bf                 LCALL 0xbebf
CODE:4537  7f e8                    MOV R7,#0xe8
CODE:4539  12 be bf                 LCALL 0xbebf
CODE:453c  7f ea                    MOV R7,#0xea
CODE:453e  12 be bf                 LCALL 0xbebf
CODE:4541  7f da                    MOV R7,#0xda
CODE:4543  12 be bf                 LCALL 0xbebf
CODE:4546  e4                       CLR A
CODE:4547  f5 b1                    MOV 0xb1,A
CODE:4549  78 6d                    MOV R0,#0x6d
CODE:454b  f6                       MOV @R0,A
CODE:454c  78 1b                    MOV R0,#0x1b
CODE:454e  76 02                    MOV @R0,#0x2
CODE:4550  78 1e                    MOV R0,#0x1e
CODE:4552  76 04                    MOV @R0,#0x4
CODE:4554  78 5c                    MOV R0,#0x5c
CODE:4556  76 07                    MOV @R0,#0x7
CODE:4558  78 69                    MOV R0,#0x69
CODE:455a  76 10                    MOV @R0,#0x10
CODE:455c  12 ba ca                 LCALL 0xbaca
CODE:455f  d2 2b                    SETB 0x2b
CODE:4561  12 a1 d9                 LCALL 0xa1d9
CODE:4564  12 a5 15                 LCALL 0xa515
CODE:4567  e4                       CLR A
CODE:4568  90 08 e1                 MOV DPTR,#0x8e1
CODE:456b  f0                       MOVX @DPTR,A
CODE:456c  a3                       INC DPTR
CODE:456d  f0                       MOVX @DPTR,A
LAB_CODE_456e:
CODE:456e  e4                       CLR A   ; XREF: CODE:45a0 
CODE:456f  f5 b1                    MOV 0xb1,A
CODE:4571  90 08 e1                 MOV DPTR,#0x8e1
CODE:4574  e0                       MOVX A,@DPTR
CODE:4575  fe                       MOV R6,A
CODE:4576  a3                       INC DPTR
CODE:4577  e0                       MOVX A,@DPTR
CODE:4578  ff                       MOV R7,A
CODE:4579  fd                       MOV R5,A
CODE:457a  e4                       CLR A
CODE:457b  2f                       ADD A,R7
CODE:457c  f5 82                    MOV DPL,A
CODE:457e  74 b2                    MOV A,#0xb2
CODE:4580  3e                       ADDC A,R6
CODE:4581  f5 83                    MOV DPH,A
CODE:4583  e4                       CLR A
CODE:4584  93                       MOVC A,@A+DPTR
CODE:4585  fb                       MOV R3,A
CODE:4586  7f ec                    MOV R7,#0xec
CODE:4588  12 bd c0                 LCALL 0xbdc0
CODE:458b  90 08 e2                 MOV DPTR,#0x8e2
CODE:458e  e0                       MOVX A,@DPTR
CODE:458f  04                       INC A
CODE:4590  f0                       MOVX @DPTR,A
CODE:4591  70 06                    JNZ 0x4599
CODE:4593  90 08 e1                 MOV DPTR,#0x8e1
CODE:4596  e0                       MOVX A,@DPTR
CODE:4597  04                       INC A
CODE:4598  f0                       MOVX @DPTR,A
LAB_CODE_4599:
CODE:4599  c3                       CLR CY   ; XREF: CODE:4591 
CODE:459a  90 08 e1                 MOV DPTR,#0x8e1
CODE:459d  e0                       MOVX A,@DPTR
CODE:459e  94 01                    SUBB A,#0x1
CODE:45a0  40 cc                    JC 0x456e
CODE:45a2  e4                       CLR A
CODE:45a3  90 08 e1                 MOV DPTR,#0x8e1
CODE:45a6  f0                       MOVX @DPTR,A
CODE:45a7  a3                       INC DPTR
CODE:45a8  f0                       MOVX @DPTR,A
LAB_CODE_45a9:
CODE:45a9  e4                       CLR A   ; XREF: CODE:45db 
CODE:45aa  f5 b1                    MOV 0xb1,A
CODE:45ac  90 08 e1                 MOV DPTR,#0x8e1
CODE:45af  e0                       MOVX A,@DPTR
CODE:45b0  fe                       MOV R6,A
CODE:45b1  a3                       INC DPTR
CODE:45b2  e0                       MOVX A,@DPTR
CODE:45b3  ff                       MOV R7,A
CODE:45b4  fd                       MOV R5,A
CODE:45b5  e4                       CLR A
CODE:45b6  2f                       ADD A,R7
CODE:45b7  f5 82                    MOV DPL,A
CODE:45b9  74 b3                    MOV A,#0xb3
CODE:45bb  3e                       ADDC A,R6
CODE:45bc  f5 83                    MOV DPH,A
CODE:45be  e4                       CLR A
CODE:45bf  93                       MOVC A,@A+DPTR
CODE:45c0  fb                       MOV R3,A
CODE:45c1  7f ed                    MOV R7,#0xed
CODE:45c3  12 bd c0                 LCALL 0xbdc0
CODE:45c6  90 08 e2                 MOV DPTR,#0x8e2
CODE:45c9  e0                       MOVX A,@DPTR
CODE:45ca  04                       INC A
CODE:45cb  f0                       MOVX @DPTR,A
CODE:45cc  70 06                    JNZ 0x45d4
CODE:45ce  90 08 e1                 MOV DPTR,#0x8e1
CODE:45d1  e0                       MOVX A,@DPTR
CODE:45d2  04                       INC A
CODE:45d3  f0                       MOVX @DPTR,A
LAB_CODE_45d4:
CODE:45d4  c3                       CLR CY   ; XREF: CODE:45cc 
CODE:45d5  90 08 e1                 MOV DPTR,#0x8e1
CODE:45d8  e0                       MOVX A,@DPTR
CODE:45d9  94 01                    SUBB A,#0x1
CODE:45db  40 cc                    JC 0x45a9
CODE:45dd  e4                       CLR A
CODE:45de  90 08 e1                 MOV DPTR,#0x8e1
CODE:45e1  f0                       MOVX @DPTR,A
CODE:45e2  a3                       INC DPTR
CODE:45e3  f0                       MOVX @DPTR,A
LAB_CODE_45e4:
CODE:45e4  e4                       CLR A   ; XREF: CODE:4616 
CODE:45e5  f5 b1                    MOV 0xb1,A
CODE:45e7  90 08 e1                 MOV DPTR,#0x8e1
CODE:45ea  e0                       MOVX A,@DPTR
CODE:45eb  fe                       MOV R6,A
CODE:45ec  a3                       INC DPTR
CODE:45ed  e0                       MOVX A,@DPTR
CODE:45ee  ff                       MOV R7,A
CODE:45ef  fd                       MOV R5,A
CODE:45f0  e4                       CLR A
CODE:45f1  2f                       ADD A,R7
CODE:45f2  f5 82                    MOV DPL,A
CODE:45f4  74 b4                    MOV A,#0xb4
CODE:45f6  3e                       ADDC A,R6
CODE:45f7  f5 83                    MOV DPH,A
CODE:45f9  e4                       CLR A
CODE:45fa  93                       MOVC A,@A+DPTR
CODE:45fb  fb                       MOV R3,A
CODE:45fc  7f e6                    MOV R7,#0xe6
CODE:45fe  12 bd c0                 LCALL 0xbdc0
CODE:4601  90 08 e2                 MOV DPTR,#0x8e2
CODE:4604  e0                       MOVX A,@DPTR
CODE:4605  04                       INC A
CODE:4606  f0                       MOVX @DPTR,A
CODE:4607  70 06                    JNZ 0x460f
CODE:4609  90 08 e1                 MOV DPTR,#0x8e1
CODE:460c  e0                       MOVX A,@DPTR
CODE:460d  04                       INC A
CODE:460e  f0                       MOVX @DPTR,A
LAB_CODE_460f:
CODE:460f  c3                       CLR CY   ; XREF: CODE:4607 
CODE:4610  90 08 e1                 MOV DPTR,#0x8e1
CODE:4613  e0                       MOVX A,@DPTR
CODE:4614  94 01                    SUBB A,#0x1
CODE:4616  40 cc                    JC 0x45e4
CODE:4618  e4                       CLR A
CODE:4619  90 08 e1                 MOV DPTR,#0x8e1
CODE:461c  f0                       MOVX @DPTR,A
CODE:461d  a3                       INC DPTR
CODE:461e  f0                       MOVX @DPTR,A
LAB_CODE_461f:
CODE:461f  e4                       CLR A   ; XREF: CODE:4651 
CODE:4620  f5 b1                    MOV 0xb1,A
CODE:4622  90 08 e1                 MOV DPTR,#0x8e1
CODE:4625  e0                       MOVX A,@DPTR
CODE:4626  fe                       MOV R6,A
CODE:4627  a3                       INC DPTR
CODE:4628  e0                       MOVX A,@DPTR
CODE:4629  ff                       MOV R7,A
CODE:462a  fd                       MOV R5,A
CODE:462b  e4                       CLR A
CODE:462c  2f                       ADD A,R7
CODE:462d  f5 82                    MOV DPL,A
CODE:462f  74 b5                    MOV A,#0xb5
CODE:4631  3e                       ADDC A,R6
CODE:4632  f5 83                    MOV DPH,A
CODE:4634  e4                       CLR A
CODE:4635  93                       MOVC A,@A+DPTR
CODE:4636  fb                       MOV R3,A
CODE:4637  7f e7                    MOV R7,#0xe7
CODE:4639  12 bd c0                 LCALL 0xbdc0
CODE:463c  90 08 e2                 MOV DPTR,#0x8e2
CODE:463f  e0                       MOVX A,@DPTR
CODE:4640  04                       INC A
CODE:4641  f0                       MOVX @DPTR,A
CODE:4642  70 06                    JNZ 0x464a
CODE:4644  90 08 e1                 MOV DPTR,#0x8e1
CODE:4647  e0                       MOVX A,@DPTR
CODE:4648  04                       INC A
CODE:4649  f0                       MOVX @DPTR,A
LAB_CODE_464a:
CODE:464a  c3                       CLR CY   ; XREF: CODE:4642 
CODE:464b  90 08 e1                 MOV DPTR,#0x8e1
CODE:464e  e0                       MOVX A,@DPTR
CODE:464f  94 01                    SUBB A,#0x1
CODE:4651  40 cc                    JC 0x461f
CODE:4653  e4                       CLR A
CODE:4654  90 08 e1                 MOV DPTR,#0x8e1
CODE:4657  f0                       MOVX @DPTR,A
CODE:4658  a3                       INC DPTR
CODE:4659  f0                       MOVX @DPTR,A
LAB_CODE_465a:
CODE:465a  e4                       CLR A   ; XREF: CODE:468c 
CODE:465b  f5 b1                    MOV 0xb1,A
CODE:465d  90 08 e1                 MOV DPTR,#0x8e1
CODE:4660  e0                       MOVX A,@DPTR
CODE:4661  fe                       MOV R6,A
CODE:4662  a3                       INC DPTR
CODE:4663  e0                       MOVX A,@DPTR
CODE:4664  ff                       MOV R7,A
CODE:4665  fd                       MOV R5,A
CODE:4666  e4                       CLR A
CODE:4667  2f                       ADD A,R7
CODE:4668  f5 82                    MOV DPL,A
CODE:466a  74 b6                    MOV A,#0xb6
CODE:466c  3e                       ADDC A,R6
CODE:466d  f5 83                    MOV DPH,A
CODE:466f  e4                       CLR A
CODE:4670  93                       MOVC A,@A+DPTR
CODE:4671  fb                       MOV R3,A
CODE:4672  7f e8                    MOV R7,#0xe8
CODE:4674  12 bd c0                 LCALL 0xbdc0
CODE:4677  90 08 e2                 MOV DPTR,#0x8e2
CODE:467a  e0                       MOVX A,@DPTR
CODE:467b  04                       INC A
CODE:467c  f0                       MOVX @DPTR,A
CODE:467d  70 06                    JNZ 0x4685
CODE:467f  90 08 e1                 MOV DPTR,#0x8e1
CODE:4682  e0                       MOVX A,@DPTR
CODE:4683  04                       INC A
CODE:4684  f0                       MOVX @DPTR,A
LAB_CODE_4685:
CODE:4685  c3                       CLR CY   ; XREF: CODE:467d 
CODE:4686  90 08 e1                 MOV DPTR,#0x8e1
CODE:4689  e0                       MOVX A,@DPTR
CODE:468a  94 01                    SUBB A,#0x1
CODE:468c  40 cc                    JC 0x465a
CODE:468e  e4                       CLR A
CODE:468f  90 08 e1                 MOV DPTR,#0x8e1
CODE:4692  f0                       MOVX @DPTR,A
CODE:4693  a3                       INC DPTR
CODE:4694  f0                       MOVX @DPTR,A
LAB_CODE_4695:
CODE:4695  e4                       CLR A   ; XREF: CODE:46c7 
CODE:4696  f5 b1                    MOV 0xb1,A
CODE:4698  90 08 e1                 MOV DPTR,#0x8e1
CODE:469b  e0                       MOVX A,@DPTR
CODE:469c  fe                       MOV R6,A
CODE:469d  a3                       INC DPTR
CODE:469e  e0                       MOVX A,@DPTR
CODE:469f  ff                       MOV R7,A
CODE:46a0  fd                       MOV R5,A
CODE:46a1  e4                       CLR A
CODE:46a2  2f                       ADD A,R7
CODE:46a3  f5 82                    MOV DPL,A
CODE:46a5  74 b7                    MOV A,#0xb7
CODE:46a7  3e                       ADDC A,R6
CODE:46a8  f5 83                    MOV DPH,A
CODE:46aa  e4                       CLR A
CODE:46ab  93                       MOVC A,@A+DPTR
CODE:46ac  fb                       MOV R3,A
CODE:46ad  7f e9                    MOV R7,#0xe9
CODE:46af  12 bd c0                 LCALL 0xbdc0
CODE:46b2  90 08 e2                 MOV DPTR,#0x8e2
CODE:46b5  e0                       MOVX A,@DPTR
CODE:46b6  04                       INC A
CODE:46b7  f0                       MOVX @DPTR,A
CODE:46b8  70 06                    JNZ 0x46c0
CODE:46ba  90 08 e1                 MOV DPTR,#0x8e1
CODE:46bd  e0                       MOVX A,@DPTR
CODE:46be  04                       INC A
CODE:46bf  f0                       MOVX @DPTR,A
LAB_CODE_46c0:
CODE:46c0  c3                       CLR CY   ; XREF: CODE:46b8 
CODE:46c1  90 08 e1                 MOV DPTR,#0x8e1
CODE:46c4  e0                       MOVX A,@DPTR
CODE:46c5  94 01                    SUBB A,#0x1
CODE:46c7  40 cc                    JC 0x4695
CODE:46c9  e4                       CLR A
CODE:46ca  90 08 e1                 MOV DPTR,#0x8e1
CODE:46cd  f0                       MOVX @DPTR,A
CODE:46ce  a3                       INC DPTR
CODE:46cf  f0                       MOVX @DPTR,A
LAB_CODE_46d0:
CODE:46d0  e4                       CLR A   ; XREF: CODE:4702 
CODE:46d1  f5 b1                    MOV 0xb1,A
CODE:46d3  90 08 e1                 MOV DPTR,#0x8e1
CODE:46d6  e0                       MOVX A,@DPTR
CODE:46d7  fe                       MOV R6,A
CODE:46d8  a3                       INC DPTR
CODE:46d9  e0                       MOVX A,@DPTR
CODE:46da  ff                       MOV R7,A
CODE:46db  fd                       MOV R5,A
CODE:46dc  e4                       CLR A
CODE:46dd  2f                       ADD A,R7
CODE:46de  f5 82                    MOV DPL,A
CODE:46e0  74 b8                    MOV A,#0xb8
CODE:46e2  3e                       ADDC A,R6
CODE:46e3  f5 83                    MOV DPH,A
CODE:46e5  e4                       CLR A
CODE:46e6  93                       MOVC A,@A+DPTR
CODE:46e7  fb                       MOV R3,A
CODE:46e8  7f ea                    MOV R7,#0xea
CODE:46ea  12 bd c0                 LCALL 0xbdc0
CODE:46ed  90 08 e2                 MOV DPTR,#0x8e2
CODE:46f0  e0                       MOVX A,@DPTR
CODE:46f1  04                       INC A
CODE:46f2  f0                       MOVX @DPTR,A
CODE:46f3  70 06                    JNZ 0x46fb
CODE:46f5  90 08 e1                 MOV DPTR,#0x8e1
CODE:46f8  e0                       MOVX A,@DPTR
CODE:46f9  04                       INC A
CODE:46fa  f0                       MOVX @DPTR,A
LAB_CODE_46fb:
CODE:46fb  c3                       CLR CY   ; XREF: CODE:46f3 
CODE:46fc  90 08 e1                 MOV DPTR,#0x8e1
CODE:46ff  e0                       MOVX A,@DPTR
CODE:4700  94 01                    SUBB A,#0x1
CODE:4702  40 cc                    JC 0x46d0
CODE:4704  e4                       CLR A
CODE:4705  90 08 e1                 MOV DPTR,#0x8e1
CODE:4708  f0                       MOVX @DPTR,A
CODE:4709  a3                       INC DPTR
CODE:470a  f0                       MOVX @DPTR,A
LAB_CODE_470b:
CODE:470b  e4                       CLR A   ; XREF: CODE:473d 
CODE:470c  f5 b1                    MOV 0xb1,A
CODE:470e  90 08 e1                 MOV DPTR,#0x8e1
CODE:4711  e0                       MOVX A,@DPTR
CODE:4712  fe                       MOV R6,A
CODE:4713  a3                       INC DPTR
CODE:4714  e0                       MOVX A,@DPTR
CODE:4715  ff                       MOV R7,A
CODE:4716  fd                       MOV R5,A
CODE:4717  e4                       CLR A
CODE:4718  2f                       ADD A,R7
CODE:4719  f5 82                    MOV DPL,A
CODE:471b  74 b9                    MOV A,#0xb9
CODE:471d  3e                       ADDC A,R6
CODE:471e  f5 83                    MOV DPH,A
CODE:4720  e4                       CLR A
CODE:4721  93                       MOVC A,@A+DPTR
CODE:4722  fb                       MOV R3,A
CODE:4723  7f eb                    MOV R7,#0xeb
CODE:4725  12 bd c0                 LCALL 0xbdc0
CODE:4728  90 08 e2                 MOV DPTR,#0x8e2
CODE:472b  e0                       MOVX A,@DPTR
CODE:472c  04                       INC A
CODE:472d  f0                       MOVX @DPTR,A
CODE:472e  70 06                    JNZ 0x4736
CODE:4730  90 08 e1                 MOV DPTR,#0x8e1
CODE:4733  e0                       MOVX A,@DPTR
CODE:4734  04                       INC A
CODE:4735  f0                       MOVX @DPTR,A
LAB_CODE_4736:
CODE:4736  c3                       CLR CY   ; XREF: CODE:472e 
CODE:4737  90 08 e1                 MOV DPTR,#0x8e1
CODE:473a  e0                       MOVX A,@DPTR
CODE:473b  94 01                    SUBB A,#0x1
CODE:473d  40 cc                    JC 0x470b
CODE:473f  e4                       CLR A
CODE:4740  90 08 e1                 MOV DPTR,#0x8e1
CODE:4743  f0                       MOVX @DPTR,A
CODE:4744  a3                       INC DPTR
CODE:4745  f0                       MOVX @DPTR,A
LAB_CODE_4746:
CODE:4746  e4                       CLR A   ; XREF: CODE:4778 
CODE:4747  f5 b1                    MOV 0xb1,A
CODE:4749  90 08 e1                 MOV DPTR,#0x8e1
CODE:474c  e0                       MOVX A,@DPTR
CODE:474d  fe                       MOV R6,A
CODE:474e  a3                       INC DPTR
CODE:474f  e0                       MOVX A,@DPTR
CODE:4750  ff                       MOV R7,A
CODE:4751  fd                       MOV R5,A
CODE:4752  e4                       CLR A
CODE:4753  2f                       ADD A,R7
CODE:4754  f5 82                    MOV DPL,A
CODE:4756  74 b0                    MOV A,#0xb0
CODE:4758  3e                       ADDC A,R6
CODE:4759  f5 83                    MOV DPH,A
CODE:475b  e4                       CLR A
CODE:475c  93                       MOVC A,@A+DPTR
CODE:475d  fb                       MOV R3,A
CODE:475e  7f da                    MOV R7,#0xda
CODE:4760  12 bd c0                 LCALL 0xbdc0
CODE:4763  90 08 e2                 MOV DPTR,#0x8e2
CODE:4766  e0                       MOVX A,@DPTR
CODE:4767  04                       INC A
CODE:4768  f0                       MOVX @DPTR,A
CODE:4769  70 06                    JNZ 0x4771
CODE:476b  90 08 e1                 MOV DPTR,#0x8e1
CODE:476e  e0                       MOVX A,@DPTR
CODE:476f  04                       INC A
CODE:4770  f0                       MOVX @DPTR,A
LAB_CODE_4771:
CODE:4771  c3                       CLR CY   ; XREF: CODE:4769 
CODE:4772  90 08 e1                 MOV DPTR,#0x8e1
CODE:4775  e0                       MOVX A,@DPTR
CODE:4776  94 01                    SUBB A,#0x1
CODE:4778  40 cc                    JC 0x4746
CODE:477a  e4                       CLR A
CODE:477b  90 08 e1                 MOV DPTR,#0x8e1
CODE:477e  f0                       MOVX @DPTR,A
CODE:477f  a3                       INC DPTR
CODE:4780  f0                       MOVX @DPTR,A
LAB_CODE_4781:
CODE:4781  e4                       CLR A   ; XREF: CODE:47b3 
CODE:4782  f5 b1                    MOV 0xb1,A
CODE:4784  90 08 e1                 MOV DPTR,#0x8e1
CODE:4787  e0                       MOVX A,@DPTR
CODE:4788  fe                       MOV R6,A
CODE:4789  a3                       INC DPTR
CODE:478a  e0                       MOVX A,@DPTR
CODE:478b  ff                       MOV R7,A
CODE:478c  fd                       MOV R5,A
CODE:478d  e4                       CLR A
CODE:478e  2f                       ADD A,R7
CODE:478f  f5 82                    MOV DPL,A
CODE:4791  74 b1                    MOV A,#0xb1
CODE:4793  3e                       ADDC A,R6
CODE:4794  f5 83                    MOV DPH,A
CODE:4796  e4                       CLR A
CODE:4797  93                       MOVC A,@A+DPTR
CODE:4798  fb                       MOV R3,A
CODE:4799  7f db                    MOV R7,#0xdb
CODE:479b  12 bd c0                 LCALL 0xbdc0
CODE:479e  90 08 e2                 MOV DPTR,#0x8e2
CODE:47a1  e0                       MOVX A,@DPTR
CODE:47a2  04                       INC A
CODE:47a3  f0                       MOVX @DPTR,A
CODE:47a4  70 06                    JNZ 0x47ac
CODE:47a6  90 08 e1                 MOV DPTR,#0x8e1
CODE:47a9  e0                       MOVX A,@DPTR
CODE:47aa  04                       INC A
CODE:47ab  f0                       MOVX @DPTR,A
LAB_CODE_47ac:
CODE:47ac  c3                       CLR CY   ; XREF: CODE:47a4 
CODE:47ad  90 08 e1                 MOV DPTR,#0x8e1
CODE:47b0  e0                       MOVX A,@DPTR
CODE:47b1  94 01                    SUBB A,#0x1
CODE:47b3  40 cc                    JC 0x4781
CODE:47b5  e4                       CLR A
CODE:47b6  90 08 e1                 MOV DPTR,#0x8e1
CODE:47b9  f0                       MOVX @DPTR,A
CODE:47ba  a3                       INC DPTR
CODE:47bb  f0                       MOVX @DPTR,A
LAB_CODE_47bc:
CODE:47bc  e4                       CLR A   ; XREF: CODE:47ee 
CODE:47bd  f5 b1                    MOV 0xb1,A
CODE:47bf  90 08 e1                 MOV DPTR,#0x8e1
CODE:47c2  e0                       MOVX A,@DPTR
CODE:47c3  fe                       MOV R6,A
CODE:47c4  a3                       INC DPTR
CODE:47c5  e0                       MOVX A,@DPTR
CODE:47c6  ff                       MOV R7,A
CODE:47c7  fd                       MOV R5,A
CODE:47c8  e4                       CLR A
CODE:47c9  2f                       ADD A,R7
CODE:47ca  f5 82                    MOV DPL,A
CODE:47cc  74 c6                    MOV A,#0xc6
CODE:47ce  3e                       ADDC A,R6
CODE:47cf  f5 83                    MOV DPH,A
CODE:47d1  e4                       CLR A
CODE:47d2  93                       MOVC A,@A+DPTR
CODE:47d3  fb                       MOV R3,A
CODE:47d4  7f d8                    MOV R7,#0xd8
CODE:47d6  12 bd c0                 LCALL 0xbdc0
CODE:47d9  90 08 e2                 MOV DPTR,#0x8e2
CODE:47dc  e0                       MOVX A,@DPTR
CODE:47dd  04                       INC A
CODE:47de  f0                       MOVX @DPTR,A
CODE:47df  70 06                    JNZ 0x47e7
CODE:47e1  90 08 e1                 MOV DPTR,#0x8e1
CODE:47e4  e0                       MOVX A,@DPTR
CODE:47e5  04                       INC A
CODE:47e6  f0                       MOVX @DPTR,A
LAB_CODE_47e7:
CODE:47e7  c3                       CLR CY   ; XREF: CODE:47df 
CODE:47e8  90 08 e1                 MOV DPTR,#0x8e1
CODE:47eb  e0                       MOVX A,@DPTR
CODE:47ec  94 01                    SUBB A,#0x1
CODE:47ee  40 cc                    JC 0x47bc
CODE:47f0  e4                       CLR A
CODE:47f1  90 08 e1                 MOV DPTR,#0x8e1
CODE:47f4  f0                       MOVX @DPTR,A
CODE:47f5  a3                       INC DPTR
CODE:47f6  f0                       MOVX @DPTR,A
LAB_CODE_47f7:
CODE:47f7  e4                       CLR A   ; XREF: CODE:482f 
CODE:47f8  f5 b1                    MOV 0xb1,A
CODE:47fa  90 08 e1                 MOV DPTR,#0x8e1
CODE:47fd  e0                       MOVX A,@DPTR
CODE:47fe  fe                       MOV R6,A
CODE:47ff  a3                       INC DPTR
CODE:4800  e0                       MOVX A,@DPTR
CODE:4801  ff                       MOV R7,A
CODE:4802  fd                       MOV R5,A
CODE:4803  e4                       CLR A
CODE:4804  2f                       ADD A,R7
CODE:4805  f5 82                    MOV DPL,A
CODE:4807  74 c7                    MOV A,#0xc7
CODE:4809  3e                       ADDC A,R6
CODE:480a  f5 83                    MOV DPH,A
CODE:480c  e4                       CLR A
CODE:480d  93                       MOVC A,@A+DPTR
CODE:480e  fb                       MOV R3,A
CODE:480f  7f d9                    MOV R7,#0xd9
CODE:4811  12 bd c0                 LCALL 0xbdc0
CODE:4814  90 08 e2                 MOV DPTR,#0x8e2
CODE:4817  e0                       MOVX A,@DPTR
CODE:4818  04                       INC A
CODE:4819  f0                       MOVX @DPTR,A
CODE:481a  70 06                    JNZ 0x4822
CODE:481c  90 08 e1                 MOV DPTR,#0x8e1
CODE:481f  e0                       MOVX A,@DPTR
CODE:4820  04                       INC A
CODE:4821  f0                       MOVX @DPTR,A
LAB_CODE_4822:
CODE:4822  c3                       CLR CY   ; XREF: CODE:481a 
CODE:4823  90 08 e2                 MOV DPTR,#0x8e2
CODE:4826  e0                       MOVX A,@DPTR
CODE:4827  94 c8                    SUBB A,#0xc8
CODE:4829  90 08 e1                 MOV DPTR,#0x8e1
CODE:482c  e0                       MOVX A,@DPTR
CODE:482d  94 00                    SUBB A,#0x0
CODE:482f  40 c6                    JC 0x47f7
CODE:4831  e4                       CLR A
CODE:4832  90 08 e1                 MOV DPTR,#0x8e1
CODE:4835  f0                       MOVX @DPTR,A
CODE:4836  a3                       INC DPTR
CODE:4837  f0                       MOVX @DPTR,A
LAB_CODE_4838:
CODE:4838  e4                       CLR A   ; XREF: CODE:486a 
CODE:4839  f5 b1                    MOV 0xb1,A
CODE:483b  90 08 e1                 MOV DPTR,#0x8e1
CODE:483e  e0                       MOVX A,@DPTR
CODE:483f  fe                       MOV R6,A
CODE:4840  a3                       INC DPTR
CODE:4841  e0                       MOVX A,@DPTR
CODE:4842  ff                       MOV R7,A
CODE:4843  fd                       MOV R5,A
CODE:4844  e4                       CLR A
CODE:4845  2f                       ADD A,R7
CODE:4846  f5 82                    MOV DPL,A
CODE:4848  74 dc                    MOV A,#0xdc
CODE:484a  3e                       ADDC A,R6
CODE:484b  f5 83                    MOV DPH,A
CODE:484d  e4                       CLR A
CODE:484e  93                       MOVC A,@A+DPTR
CODE:484f  fb                       MOV R3,A
CODE:4850  7f e0                    MOV R7,#0xe0
CODE:4852  12 bd c0                 LCALL 0xbdc0
CODE:4855  90 08 e2                 MOV DPTR,#0x8e2
CODE:4858  e0                       MOVX A,@DPTR
CODE:4859  04                       INC A
CODE:485a  f0                       MOVX @DPTR,A
CODE:485b  70 06                    JNZ 0x4863
CODE:485d  90 08 e1                 MOV DPTR,#0x8e1
CODE:4860  e0                       MOVX A,@DPTR
CODE:4861  04                       INC A
CODE:4862  f0                       MOVX @DPTR,A
LAB_CODE_4863:
CODE:4863  c3                       CLR CY   ; XREF: CODE:485b 
CODE:4864  90 08 e1                 MOV DPTR,#0x8e1
CODE:4867  e0                       MOVX A,@DPTR
CODE:4868  94 01                    SUBB A,#0x1
CODE:486a  40 cc                    JC 0x4838
CODE:486c  e4                       CLR A
CODE:486d  90 08 e1                 MOV DPTR,#0x8e1
CODE:4870  f0                       MOVX @DPTR,A
CODE:4871  a3                       INC DPTR
CODE:4872  f0                       MOVX @DPTR,A
LAB_CODE_4873:
CODE:4873  e4                       CLR A   ; XREF: CODE:48a5 
CODE:4874  f5 b1                    MOV 0xb1,A
CODE:4876  90 08 e1                 MOV DPTR,#0x8e1
CODE:4879  e0                       MOVX A,@DPTR
CODE:487a  fe                       MOV R6,A
CODE:487b  a3                       INC DPTR
CODE:487c  e0                       MOVX A,@DPTR
CODE:487d  ff                       MOV R7,A
CODE:487e  fd                       MOV R5,A
CODE:487f  e4                       CLR A
CODE:4880  2f                       ADD A,R7
CODE:4881  f5 82                    MOV DPL,A
CODE:4883  74 dd                    MOV A,#0xdd
CODE:4885  3e                       ADDC A,R6
CODE:4886  f5 83                    MOV DPH,A
CODE:4888  e4                       CLR A
CODE:4889  93                       MOVC A,@A+DPTR
CODE:488a  fb                       MOV R3,A
CODE:488b  7f e1                    MOV R7,#0xe1
CODE:488d  12 bd c0                 LCALL 0xbdc0
CODE:4890  90 08 e2                 MOV DPTR,#0x8e2
CODE:4893  e0                       MOVX A,@DPTR
CODE:4894  04                       INC A
CODE:4895  f0                       MOVX @DPTR,A
CODE:4896  70 06                    JNZ 0x489e
CODE:4898  90 08 e1                 MOV DPTR,#0x8e1
CODE:489b  e0                       MOVX A,@DPTR
CODE:489c  04                       INC A
CODE:489d  f0                       MOVX @DPTR,A
LAB_CODE_489e:
CODE:489e  c3                       CLR CY   ; XREF: CODE:4896 
CODE:489f  90 08 e1                 MOV DPTR,#0x8e1
CODE:48a2  e0                       MOVX A,@DPTR
CODE:48a3  94 01                    SUBB A,#0x1
CODE:48a5  40 cc                    JC 0x4873
CODE:48a7  e4                       CLR A
CODE:48a8  90 08 e1                 MOV DPTR,#0x8e1
CODE:48ab  f0                       MOVX @DPTR,A
CODE:48ac  a3                       INC DPTR
CODE:48ad  f0                       MOVX @DPTR,A
LAB_CODE_48ae:
CODE:48ae  e4                       CLR A   ; XREF: CODE:48e6 
CODE:48af  f5 b1                    MOV 0xb1,A
CODE:48b1  90 08 e1                 MOV DPTR,#0x8e1
CODE:48b4  e0                       MOVX A,@DPTR
CODE:48b5  fe                       MOV R6,A
CODE:48b6  a3                       INC DPTR
CODE:48b7  e0                       MOVX A,@DPTR
CODE:48b8  ff                       MOV R7,A
CODE:48b9  fd                       MOV R5,A
CODE:48ba  e4                       CLR A
CODE:48bb  2f                       ADD A,R7
CODE:48bc  f5 82                    MOV DPL,A
CODE:48be  74 de                    MOV A,#0xde
CODE:48c0  3e                       ADDC A,R6
CODE:48c1  f5 83                    MOV DPH,A
CODE:48c3  e4                       CLR A
CODE:48c4  93                       MOVC A,@A+DPTR
CODE:48c5  fb                       MOV R3,A
CODE:48c6  7f e2                    MOV R7,#0xe2
CODE:48c8  12 bd c0                 LCALL 0xbdc0
CODE:48cb  90 08 e2                 MOV DPTR,#0x8e2
CODE:48ce  e0                       MOVX A,@DPTR
CODE:48cf  04                       INC A
CODE:48d0  f0                       MOVX @DPTR,A
CODE:48d1  70 06                    JNZ 0x48d9
CODE:48d3  90 08 e1                 MOV DPTR,#0x8e1
CODE:48d6  e0                       MOVX A,@DPTR
CODE:48d7  04                       INC A
CODE:48d8  f0                       MOVX @DPTR,A
LAB_CODE_48d9:
CODE:48d9  c3                       CLR CY   ; XREF: CODE:48d1 
CODE:48da  90 08 e2                 MOV DPTR,#0x8e2
CODE:48dd  e0                       MOVX A,@DPTR
CODE:48de  94 28                    SUBB A,#0x28
CODE:48e0  90 08 e1                 MOV DPTR,#0x8e1
CODE:48e3  e0                       MOVX A,@DPTR
CODE:48e4  94 00                    SUBB A,#0x0
CODE:48e6  40 c6                    JC 0x48ae
CODE:48e8  43 a8 01                 ORL 0xa8,#0x1
LAB_CODE_48eb:
CODE:48eb  30 25 15                 JNB 0x25,0x4903   ; XREF: CODE:4504 
CODE:48ee  53 a8 fe                 ANL 0xa8,#0xfe
CODE:48f1  12 bb dd                 LCALL 0xbbdd
CODE:48f4  12 af dc                 LCALL 0xafdc
CODE:48f7  7f d0                    MOV R7,#0xd0
CODE:48f9  7e 07                    MOV R6,#0x7
CODE:48fb  12 bd 5a                 LCALL 0xbd5a
CODE:48fe  43 a8 01                 ORL 0xa8,#0x1
CODE:4901  c2 25                    CLR 0x25
LAB_CODE_4903:
CODE:4903  20 12 03                 JB 0x12,0x4909   ; XREF: CODE:48eb 
CODE:4906  02 4b 28                 LJMP 0x4b28
LAB_CODE_4909:
CODE:4909  e5 0b                    MOV A,0x0b   ; XREF: CODE:4903 
CODE:490b  45 0a                    ORL A,0x0a
CODE:490d  60 03                    JZ 0x4912
CODE:490f  02 4b 28                 LJMP 0x4b28
LAB_CODE_4912:
CODE:4912  20 21 03                 JB 0x21,0x4918   ; XREF: CODE:490d 
CODE:4915  02 4b 28                 LJMP 0x4b28
LAB_CODE_4918:
CODE:4918  c2 21                    CLR 0x21   ; XREF: CODE:4912 
CODE:491a  e5 0f                    MOV A,0x0f
CODE:491c  c3                       CLR CY
CODE:491d  94 4f                    SUBB A,#0x4f
CODE:491f  50 03                    JNC 0x4924
CODE:4921  02 49 bc                 LJMP 0x49bc
LAB_CODE_4924:
CODE:4924  90 07 c5                 MOV DPTR,#0x7c5   ; XREF: CODE:491f 
CODE:4927  e5 10                    MOV A,0x10
CODE:4929  f0                       MOVX @DPTR,A
CODE:492a  d2 02                    SETB 0x02
CODE:492c  c2 00                    CLR 0x00
CODE:492e  12 5b 32                 LCALL 0x5b32
CODE:4931  d3                       SETB CY
CODE:4932  e5 09                    MOV A,0x09
CODE:4934  94 01                    SUBB A,#0x1
CODE:4936  e5 08                    MOV A,0x08
CODE:4938  94 00                    SUBB A,#0x0
CODE:493a  40 78                    JC 0x49b4
CODE:493c  30 18 06                 JNB 0x18,0x4945
CODE:493f  74 ff                    MOV A,#0xff
CODE:4941  f5 08                    MOV 0x08,A
CODE:4943  f5 09                    MOV 0x09,A
LAB_CODE_4945:
CODE:4945  e5 09                    MOV A,0x09   ; XREF: CODE:493c 
CODE:4947  15 09                    DEC 0x09
CODE:4949  70 02                    JNZ 0x494d
CODE:494b  15 08                    DEC 0x08
LAB_CODE_494d:
CODE:494d  e4                       CLR A   ; XREF: CODE:4949 
CODE:494e  f5 0f                    MOV 0x0f,A
CODE:4950  e5 13                    MOV A,0x13
CODE:4952  75 f0 17                 MOV B,#0x17
CODE:4955  a4                       MUL AB
CODE:4956  7c 00                    MOV R4,#0x0
CODE:4958  25 12                    ADD A,0x12
CODE:495a  ff                       MOV R7,A
CODE:495b  ef                       MOV A,R7
CODE:495c  fe                       MOV R6,A
CODE:495d  e4                       CLR A
CODE:495e  24 02                    ADD A,#0x2
CODE:4960  ff                       MOV R7,A
CODE:4961  e4                       CLR A
CODE:4962  3e                       ADDC A,R6
CODE:4963  fe                       MOV R6,A
CODE:4964  e4                       CLR A
CODE:4965  fd                       MOV R5,A
CODE:4966  12 b9 9e                 LCALL 0xb99e
CODE:4969  12 bd 51                 LCALL 0xbd51
CODE:496c  e5 13                    MOV A,0x13
CODE:496e  75 f0 17                 MOV B,#0x17
CODE:4971  a4                       MUL AB
CODE:4972  7c 00                    MOV R4,#0x0
CODE:4974  25 12                    ADD A,0x12
CODE:4976  ff                       MOV R7,A
CODE:4977  ef                       MOV A,R7
CODE:4978  fe                       MOV R6,A
CODE:4979  e4                       CLR A
CODE:497a  24 03                    ADD A,#0x3
CODE:497c  ff                       MOV R7,A
CODE:497d  e4                       CLR A
CODE:497e  3e                       ADDC A,R6
CODE:497f  fe                       MOV R6,A
CODE:4980  e4                       CLR A
CODE:4981  fd                       MOV R5,A
CODE:4982  12 b9 9e                 LCALL 0xb99e
CODE:4985  90 07 c9                 MOV DPTR,#0x7c9
CODE:4988  12 bd 54                 LCALL 0xbd54
CODE:498b  e5 13                    MOV A,0x13
CODE:498d  75 f0 17                 MOV B,#0x17
CODE:4990  a4                       MUL AB
CODE:4991  7c 00                    MOV R4,#0x0
CODE:4993  25 12                    ADD A,0x12
CODE:4995  ff                       MOV R7,A
CODE:4996  ef                       MOV A,R7
CODE:4997  fe                       MOV R6,A
CODE:4998  e4                       CLR A
CODE:4999  24 04                    ADD A,#0x4
CODE:499b  ff                       MOV R7,A
CODE:499c  e4                       CLR A
CODE:499d  3e                       ADDC A,R6
CODE:499e  fe                       MOV R6,A
CODE:499f  e4                       CLR A
CODE:49a0  fd                       MOV R5,A
CODE:49a1  12 b9 9e                 LCALL 0xb99e
CODE:49a4  8f 10                    MOV 0x10,R7
CODE:49a6  90 07 c4                 MOV DPTR,#0x7c4
CODE:49a9  e0                       MOVX A,@DPTR
CODE:49aa  ff                       MOV R7,A
CODE:49ab  20 e7 03                 JB 0xe7,0x49b1
CODE:49ae  02 4b 28                 LJMP 0x4b28
LAB_CODE_49b1:
CODE:49b1  02 4a 49                 LJMP 0x4a49   ; XREF: CODE:49ab 
LAB_CODE_49b4:
CODE:49b4  e4                       CLR A   ; XREF: CODE:493a 
CODE:49b5  f5 0f                    MOV 0x0f,A
CODE:49b7  c2 12                    CLR 0x12
CODE:49b9  02 4b 28                 LJMP 0x4b28
LAB_CODE_49bc:
CODE:49bc  e5 10                    MOV A,0x10   ; XREF: CODE:4921 
CODE:49be  60 06                    JZ 0x49c6
CODE:49c0  f4                       CPL A
CODE:49c1  60 03                    JZ 0x49c6
CODE:49c3  02 4a 6b                 LJMP 0x4a6b
LAB_CODE_49c6:
CODE:49c6  d3                       SETB CY   ; XREF: CODE:49be CODE:49c1 
CODE:49c7  e5 09                    MOV A,0x09
CODE:49c9  94 01                    SUBB A,#0x1
CODE:49cb  e5 08                    MOV A,0x08
CODE:49cd  94 00                    SUBB A,#0x0
CODE:49cf  50 03                    JNC 0x49d4
CODE:49d1  02 4a 61                 LJMP 0x4a61
LAB_CODE_49d4:
CODE:49d4  30 18 06                 JNB 0x18,0x49dd   ; XREF: CODE:49cf 
CODE:49d7  74 ff                    MOV A,#0xff
CODE:49d9  f5 08                    MOV 0x08,A
CODE:49db  f5 09                    MOV 0x09,A
LAB_CODE_49dd:
CODE:49dd  e5 09                    MOV A,0x09   ; XREF: CODE:49d4 
CODE:49df  15 09                    DEC 0x09
CODE:49e1  70 02                    JNZ 0x49e5
CODE:49e3  15 08                    DEC 0x08
LAB_CODE_49e5:
CODE:49e5  e4                       CLR A   ; XREF: CODE:49e1 
CODE:49e6  f5 0f                    MOV 0x0f,A
CODE:49e8  e5 13                    MOV A,0x13
CODE:49ea  75 f0 17                 MOV B,#0x17
CODE:49ed  a4                       MUL AB
CODE:49ee  7c 00                    MOV R4,#0x0
CODE:49f0  25 12                    ADD A,0x12
CODE:49f2  ff                       MOV R7,A
CODE:49f3  ef                       MOV A,R7
CODE:49f4  fe                       MOV R6,A
CODE:49f5  e4                       CLR A
CODE:49f6  24 02                    ADD A,#0x2
CODE:49f8  ff                       MOV R7,A
CODE:49f9  e4                       CLR A
CODE:49fa  3e                       ADDC A,R6
CODE:49fb  fe                       MOV R6,A
CODE:49fc  e4                       CLR A
CODE:49fd  fd                       MOV R5,A
CODE:49fe  12 b9 9e                 LCALL 0xb99e
CODE:4a01  12 bd 51                 LCALL 0xbd51
CODE:4a04  e5 13                    MOV A,0x13
CODE:4a06  75 f0 17                 MOV B,#0x17
CODE:4a09  a4                       MUL AB
CODE:4a0a  7c 00                    MOV R4,#0x0
CODE:4a0c  25 12                    ADD A,0x12
CODE:4a0e  ff                       MOV R7,A
CODE:4a0f  ef                       MOV A,R7
CODE:4a10  fe                       MOV R6,A
CODE:4a11  e4                       CLR A
CODE:4a12  24 03                    ADD A,#0x3
CODE:4a14  ff                       MOV R7,A
CODE:4a15  e4                       CLR A
CODE:4a16  3e                       ADDC A,R6
CODE:4a17  fe                       MOV R6,A
CODE:4a18  e4                       CLR A
CODE:4a19  fd                       MOV R5,A
CODE:4a1a  12 b9 9e                 LCALL 0xb99e
CODE:4a1d  90 07 c9                 MOV DPTR,#0x7c9
CODE:4a20  12 bd 54                 LCALL 0xbd54
CODE:4a23  e5 13                    MOV A,0x13
CODE:4a25  75 f0 17                 MOV B,#0x17
CODE:4a28  a4                       MUL AB
CODE:4a29  7c 00                    MOV R4,#0x0
CODE:4a2b  25 12                    ADD A,0x12
CODE:4a2d  ff                       MOV R7,A
CODE:4a2e  ef                       MOV A,R7
CODE:4a2f  fe                       MOV R6,A
CODE:4a30  e4                       CLR A
CODE:4a31  24 04                    ADD A,#0x4
CODE:4a33  ff                       MOV R7,A
CODE:4a34  e4                       CLR A
CODE:4a35  3e                       ADDC A,R6
CODE:4a36  fe                       MOV R6,A
CODE:4a37  e4                       CLR A
CODE:4a38  fd                       MOV R5,A
CODE:4a39  12 b9 9e                 LCALL 0xb99e
CODE:4a3c  8f 10                    MOV 0x10,R7
CODE:4a3e  90 07 c4                 MOV DPTR,#0x7c4
CODE:4a41  e0                       MOVX A,@DPTR
CODE:4a42  ff                       MOV R7,A
CODE:4a43  20 e7 03                 JB 0xe7,0x4a49
CODE:4a46  02 4b 28                 LJMP 0x4b28
LAB_CODE_4a49:
CODE:4a49  e4                       CLR A   ; XREF: CODE:49b1 CODE:4a43 
CODE:4a4a  f5 0a                    MOV 0x0a,A
CODE:4a4c  f5 0b                    MOV 0x0b,A
CODE:4a4e  90 07 c9                 MOV DPTR,#0x7c9
CODE:4a51  e0                       MOVX A,@DPTR
CODE:4a52  75 0a 00                 MOV 0x0a,#0x0
CODE:4a55  f5 0b                    MOV 0x0b,A
CODE:4a57  ef                       MOV A,R7
CODE:4a58  54 7f                    ANL A,#0x7f
CODE:4a5a  fe                       MOV R6,A
CODE:4a5b  ee                       MOV A,R6
CODE:4a5c  42 0a                    ORL 0x0a,A
CODE:4a5e  02 4b 28                 LJMP 0x4b28
LAB_CODE_4a61:
CODE:4a61  e4                       CLR A   ; XREF: CODE:49d1 
CODE:4a62  f5 0f                    MOV 0x0f,A
CODE:4a64  c2 12                    CLR 0x12
CODE:4a66  c2 08                    CLR 0x08
CODE:4a68  02 4b 28                 LJMP 0x4b28
LAB_CODE_4a6b:
CODE:4a6b  90 07 c4                 MOV DPTR,#0x7c4   ; XREF: CODE:49c3 
CODE:4a6e  e0                       MOVX A,@DPTR
CODE:4a6f  90 07 c5                 MOV DPTR,#0x7c5
CODE:4a72  30 e7 09                 JNB 0xe7,0x4a7e
CODE:4a75  e5 10                    MOV A,0x10
CODE:4a77  f0                       MOVX @DPTR,A
CODE:4a78  d2 02                    SETB 0x02
CODE:4a7a  d2 00                    SETB 0x00
CODE:4a7c  80 07                    SJMP 0x4a85
LAB_CODE_4a7e:
CODE:4a7e  e5 10                    MOV A,0x10   ; XREF: CODE:4a72 
CODE:4a80  f0                       MOVX @DPTR,A
CODE:4a81  d2 02                    SETB 0x02
CODE:4a83  c2 00                    CLR 0x00
LAB_CODE_4a85:
CODE:4a85  12 5b 32                 LCALL 0x5b32   ; XREF: CODE:4a7c 
CODE:4a88  e5 13                    MOV A,0x13
CODE:4a8a  75 f0 17                 MOV B,#0x17
CODE:4a8d  a4                       MUL AB
CODE:4a8e  7c 00                    MOV R4,#0x0
CODE:4a90  25 12                    ADD A,0x12
CODE:4a92  ff                       MOV R7,A
CODE:4a93  ec                       MOV A,R4
CODE:4a94  35 f0                    ADDC A,B
CODE:4a96  ef                       MOV A,R7
CODE:4a97  fc                       MOV R4,A
CODE:4a98  e5 0f                    MOV A,0x0f
CODE:4a9a  75 f0 03                 MOV B,#0x3
CODE:4a9d  a4                       MUL AB
CODE:4a9e  24 00                    ADD A,#0x0
CODE:4aa0  ff                       MOV R7,A
CODE:4aa1  e5 f0                    MOV A,B
CODE:4aa3  3c                       ADDC A,R4
CODE:4aa4  cf                       XCH A,R7
CODE:4aa5  24 05                    ADD A,#0x5
CODE:4aa7  cf                       XCH A,R7
CODE:4aa8  34 00                    ADDC A,#0x0
CODE:4aaa  fe                       MOV R6,A
CODE:4aab  e4                       CLR A
CODE:4aac  fc                       MOV R4,A
CODE:4aad  fd                       MOV R5,A
CODE:4aae  12 b9 9e                 LCALL 0xb99e
CODE:4ab1  12 bd 51                 LCALL 0xbd51
CODE:4ab4  e5 13                    MOV A,0x13
CODE:4ab6  75 f0 17                 MOV B,#0x17
CODE:4ab9  a4                       MUL AB
CODE:4aba  7c 00                    MOV R4,#0x0
CODE:4abc  25 12                    ADD A,0x12
CODE:4abe  ff                       MOV R7,A
CODE:4abf  ec                       MOV A,R4
CODE:4ac0  35 f0                    ADDC A,B
CODE:4ac2  ef                       MOV A,R7
CODE:4ac3  fc                       MOV R4,A
CODE:4ac4  e5 0f                    MOV A,0x0f
CODE:4ac6  75 f0 03                 MOV B,#0x3
CODE:4ac9  a4                       MUL AB
CODE:4aca  24 00                    ADD A,#0x0
CODE:4acc  ff                       MOV R7,A
CODE:4acd  e5 f0                    MOV A,B
CODE:4acf  3c                       ADDC A,R4
CODE:4ad0  cf                       XCH A,R7
CODE:4ad1  24 06                    ADD A,#0x6
CODE:4ad3  cf                       XCH A,R7
CODE:4ad4  34 00                    ADDC A,#0x0
CODE:4ad6  fe                       MOV R6,A
CODE:4ad7  e4                       CLR A
CODE:4ad8  fc                       MOV R4,A
CODE:4ad9  fd                       MOV R5,A
CODE:4ada  12 b9 9e                 LCALL 0xb99e
CODE:4add  90 07 c9                 MOV DPTR,#0x7c9
CODE:4ae0  12 bd 54                 LCALL 0xbd54
CODE:4ae3  e5 13                    MOV A,0x13
CODE:4ae5  75 f0 17                 MOV B,#0x17
CODE:4ae8  a4                       MUL AB
CODE:4ae9  7c 00                    MOV R4,#0x0
CODE:4aeb  25 12                    ADD A,0x12
CODE:4aed  ff                       MOV R7,A
CODE:4aee  ec                       MOV A,R4
CODE:4aef  35 f0                    ADDC A,B
CODE:4af1  ef                       MOV A,R7
CODE:4af2  fc                       MOV R4,A
CODE:4af3  e5 0f                    MOV A,0x0f
CODE:4af5  75 f0 03                 MOV B,#0x3
CODE:4af8  a4                       MUL AB
CODE:4af9  24 00                    ADD A,#0x0
CODE:4afb  ff                       MOV R7,A
CODE:4afc  e5 f0                    MOV A,B
CODE:4afe  3c                       ADDC A,R4
CODE:4aff  cf                       XCH A,R7
CODE:4b00  24 07                    ADD A,#0x7
CODE:4b02  cf                       XCH A,R7
CODE:4b03  34 00                    ADDC A,#0x0
CODE:4b05  fe                       MOV R6,A
CODE:4b06  e4                       CLR A
CODE:4b07  fc                       MOV R4,A
CODE:4b08  fd                       MOV R5,A
CODE:4b09  12 b9 9e                 LCALL 0xb99e
CODE:4b0c  8f 10                    MOV 0x10,R7
CODE:4b0e  e4                       CLR A
CODE:4b0f  f5 0a                    MOV 0x0a,A
CODE:4b11  f5 0b                    MOV 0x0b,A
CODE:4b13  90 07 c9                 MOV DPTR,#0x7c9
CODE:4b16  e0                       MOVX A,@DPTR
CODE:4b17  75 0a 00                 MOV 0x0a,#0x0
CODE:4b1a  f5 0b                    MOV 0x0b,A
CODE:4b1c  90 07 c4                 MOV DPTR,#0x7c4
CODE:4b1f  e0                       MOVX A,@DPTR
CODE:4b20  54 7f                    ANL A,#0x7f
CODE:4b22  fe                       MOV R6,A
CODE:4b23  ee                       MOV A,R6
CODE:4b24  42 0a                    ORL 0x0a,A
CODE:4b26  05 0f                    INC 0x0f
LAB_CODE_4b28:
CODE:4b28  30 01 05                 JNB 0x01,0x4b30   ; XREF: CODE:4906 CODE:490f CODE:4915 CODE:49ae CODE:49b9 CODE:4a46 CODE:4a5e CODE:4a68 
CODE:4b2b  c2 01                    CLR 0x01
CODE:4b2d  12 90 d3                 LCALL 0x90d3
LAB_CODE_4b30:
CODE:4b30  20 20 03                 JB 0x20,0x4b36   ; XREF: CODE:44fe CODE:4b28 
CODE:4b33  02 44 ef                 LJMP 0x44ef
LAB_CODE_4b36:
CODE:4b36  12 95 18                 LCALL 0x9518   ; XREF: CODE:4b30 
CODE:4b39  02 44 ef                 LJMP 0x44ef

; ===== FUNCTION FUN_CODE_4b3c @ CODE:4b3c =====
CODE:4b3c  78 57                    MOV R0,#0x57   ; XREF: CODE:2eda 
CODE:4b3e  e6                       MOV A,@R0
CODE:4b3f  c3                       CLR CY
CODE:4b40  94 01                    SUBB A,#0x1
CODE:4b42  50 03                    JNC 0x4b47
CODE:4b44  02 4f b3                 LJMP 0x4fb3
LAB_CODE_4b47:
CODE:4b47  e4                       CLR A   ; XREF: CODE:4b42 
CODE:4b48  f6                       MOV @R0,A
CODE:4b49  78 6e                    MOV R0,#0x6e
CODE:4b4b  e6                       MOV A,@R0
CODE:4b4c  60 1f                    JZ 0x4b6d
CODE:4b4e  06                       INC @R0
CODE:4b4f  e6                       MOV A,@R0
CODE:4b50  b4 05 0c                 CJNE A,#0x5,0x4b5f
CODE:4b53  7f 01                    MOV R7,#0x1
CODE:4b55  12 be 5c                 LCALL 0xbe5c
CODE:4b58  12 bb dd                 LCALL 0xbbdd
CODE:4b5b  e4                       CLR A
CODE:4b5c  78 5b                    MOV R0,#0x5b
CODE:4b5e  f6                       MOV @R0,A
LAB_CODE_4b5f:
CODE:4b5f  78 6e                    MOV R0,#0x6e   ; XREF: CODE:4b50 
CODE:4b61  e6                       MOV A,@R0
CODE:4b62  c3                       CLR CY
CODE:4b63  94 0f                    SUBB A,#0xf
CODE:4b65  50 03                    JNC 0x4b6a
CODE:4b67  02 4f b3                 LJMP 0x4fb3
LAB_CODE_4b6a:
CODE:4b6a  e4                       CLR A   ; XREF: CODE:4b65 
CODE:4b6b  f6                       MOV @R0,A
CODE:4b6c  22                       RET
LAB_CODE_4b6d:
CODE:4b6d  78 5a                    MOV R0,#0x5a   ; XREF: CODE:4b4c 
CODE:4b6f  06                       INC @R0
CODE:4b70  e6                       MOV A,@R0
CODE:4b71  24 01                    ADD A,#0x1
CODE:4b73  ff                       MOV R7,A
CODE:4b74  e4                       CLR A
CODE:4b75  33                       RLC A
CODE:4b76  fe                       MOV R6,A
CODE:4b77  78 1b                    MOV R0,#0x1b
CODE:4b79  e6                       MOV A,@R0
CODE:4b7a  fd                       MOV R5,A
CODE:4b7b  d3                       SETB CY
CODE:4b7c  ef                       MOV A,R7
CODE:4b7d  9d                       SUBB A,R5
CODE:4b7e  74 80                    MOV A,#0x80
CODE:4b80  f8                       MOV R0,A
CODE:4b81  6e                       XRL A,R6
CODE:4b82  98                       SUBB A,R0
CODE:4b83  50 03                    JNC 0x4b88
CODE:4b85  02 4f b3                 LJMP 0x4fb3
LAB_CODE_4b88:
CODE:4b88  e4                       CLR A   ; XREF: CODE:4b83 
CODE:4b89  78 5a                    MOV R0,#0x5a
CODE:4b8b  f6                       MOV @R0,A
CODE:4b8c  05 1a                    INC 0x1a
CODE:4b8e  05 1a                    INC 0x1a
CODE:4b90  e5 1a                    MOV A,0x1a
CODE:4b92  d3                       SETB CY
CODE:4b93  94 fa                    SUBB A,#0xfa
CODE:4b95  40 16                    JC 0x4bad
CODE:4b97  e4                       CLR A
CODE:4b98  f5 1a                    MOV 0x1a,A
CODE:4b9a  b2 37                    CPL 0x37
CODE:4b9c  30 37 0e                 JNB 0x37,0x4bad
CODE:4b9f  78 6e                    MOV R0,#0x6e
CODE:4ba1  76 01                    MOV @R0,#0x1
CODE:4ba3  78 61                    MOV R0,#0x61
CODE:4ba5  06                       INC @R0
CODE:4ba6  e6                       MOV A,@R0
CODE:4ba7  94 07                    SUBB A,#0x7
CODE:4ba9  40 02                    JC 0x4bad
CODE:4bab  e4                       CLR A
CODE:4bac  f6                       MOV @R0,A
LAB_CODE_4bad:
CODE:4bad  30 37 06                 JNB 0x37,0x4bb6   ; XREF: CODE:4b95 CODE:4b9c CODE:4ba9 
CODE:4bb0  78 5b                    MOV R0,#0x5b
CODE:4bb2  a6 1a                    MOV @R0,0x1a
CODE:4bb4  80 08                    SJMP 0x4bbe
LAB_CODE_4bb6:
CODE:4bb6  c3                       CLR CY   ; XREF: CODE:4bad 
CODE:4bb7  74 fd                    MOV A,#0xfd
CODE:4bb9  95 1a                    SUBB A,0x1a
CODE:4bbb  78 5b                    MOV R0,#0x5b
CODE:4bbd  f6                       MOV @R0,A
LAB_CODE_4bbe:
CODE:4bbe  78 5c                    MOV R0,#0x5c   ; XREF: CODE:4bb4 
CODE:4bc0  e6                       MOV A,@R0
CODE:4bc1  b4 08 00                 CJNE A,#0x8,0x4bc4
LAB_CODE_4bc4:
CODE:4bc4  40 03                    JC 0x4bc9   ; XREF: CODE:4bc1 
CODE:4bc6  02 4f b3                 LJMP 0x4fb3
LAB_CODE_4bc9:
CODE:4bc9  90 4b d0                 MOV DPTR,#0x4bd0   ; XREF: CODE:4bc4 
CODE:4bcc  f8                       MOV R0,A
CODE:4bcd  28                       ADD A,R0
CODE:4bce  28                       ADD A,R0
CODE:4bcf  73                       JMP @A+DPTR
LAB_CODE_4fb3:
CODE:4fb3  22                       RET   ; XREF: CODE:4b44 CODE:4b67 CODE:4b85 CODE:4bc6 

; ===== FUNCTION FUN_CODE_4fb4 @ CODE:4fb4 =====
CODE:4fb4  74 90                    MOV A,#0x90   ; XREF: CODE:8d6d 
CODE:4fb6  2f                       ADD A,R7
CODE:4fb7  f5 82                    MOV DPL,A
CODE:4fb9  e4                       CLR A
CODE:4fba  34 02                    ADDC A,#0x2
CODE:4fbc  f5 83                    MOV DPH,A
CODE:4fbe  e0                       MOVX A,@DPTR
CODE:4fbf  fe                       MOV R6,A
CODE:4fc0  78 32                    MOV R0,#0x32
CODE:4fc2  f6                       MOV @R0,A
CODE:4fc3  74 8b                    MOV A,#0x8b
CODE:4fc5  2f                       ADD A,R7
CODE:4fc6  f5 82                    MOV DPL,A
CODE:4fc8  e4                       CLR A
CODE:4fc9  34 02                    ADDC A,#0x2
CODE:4fcb  f5 83                    MOV DPH,A
CODE:4fcd  e0                       MOVX A,@DPTR
CODE:4fce  fd                       MOV R5,A
CODE:4fcf  18                       DEC R0
CODE:4fd0  f6                       MOV @R0,A
CODE:4fd1  ee                       MOV A,R6
CODE:4fd2  75 f0 17                 MOV B,#0x17
CODE:4fd5  a4                       MUL AB
CODE:4fd6  2d                       ADD A,R5
CODE:4fd7  18                       DEC R0
CODE:4fd8  f6                       MOV @R0,A
CODE:4fd9  74 c6                    MOV A,#0xc6
CODE:4fdb  2f                       ADD A,R7
CODE:4fdc  f5 82                    MOV DPL,A
CODE:4fde  e4                       CLR A
CODE:4fdf  34 03                    ADDC A,#0x3
CODE:4fe1  f5 83                    MOV DPH,A
CODE:4fe3  e0                       MOVX A,@DPTR
CODE:4fe4  70 03                    JNZ 0x4fe9
CODE:4fe6  02 50 f7                 LJMP 0x50f7
LAB_CODE_4fe9:
CODE:4fe9  e6                       MOV A,@R0   ; XREF: CODE:4fe4 
CODE:4fea  24 8a                    ADD A,#0x8a
CODE:4fec  f5 82                    MOV DPL,A
CODE:4fee  e4                       CLR A
CODE:4fef  34 00                    ADDC A,#0x0
CODE:4ff1  f5 83                    MOV DPH,A
CODE:4ff3  e0                       MOVX A,@DPTR
CODE:4ff4  64 01                    XRL A,#0x1
CODE:4ff6  60 03                    JZ 0x4ffb
CODE:4ff8  02 50 f7                 LJMP 0x50f7
LAB_CODE_4ffb:
CODE:4ffb  20 36 03                 JB 0x36,0x5001   ; XREF: CODE:4ff6 
CODE:4ffe  02 50 8e                 LJMP 0x508e
LAB_CODE_5001:
CODE:5001  90 01 5b                 MOV DPTR,#0x15b   ; XREF: CODE:4ffb 
CODE:5004  e0                       MOVX A,@DPTR
CODE:5005  64 01                    XRL A,#0x1
CODE:5007  70 66                    JNZ 0x506f
CODE:5009  74 c6                    MOV A,#0xc6
CODE:500b  2f                       ADD A,R7
CODE:500c  f5 82                    MOV DPL,A
CODE:500e  e4                       CLR A
CODE:500f  34 03                    ADDC A,#0x3
CODE:5011  f5 83                    MOV DPH,A
CODE:5013  e4                       CLR A
CODE:5014  f0                       MOVX @DPTR,A
CODE:5015  78 32                    MOV R0,#0x32
CODE:5017  e6                       MOV A,@R0
CODE:5018  fe                       MOV R6,A
CODE:5019  74 f1                    MOV A,#0xf1
CODE:501b  2f                       ADD A,R7
CODE:501c  f5 82                    MOV DPL,A
CODE:501e  e4                       CLR A
CODE:501f  34 01                    ADDC A,#0x1
CODE:5021  f5 83                    MOV DPH,A
CODE:5023  ee                       MOV A,R6
CODE:5024  f0                       MOVX @DPTR,A
CODE:5025  fd                       MOV R5,A
CODE:5026  74 97                    MOV A,#0x97
CODE:5028  2f                       ADD A,R7
CODE:5029  f5 82                    MOV DPL,A
CODE:502b  e4                       CLR A
CODE:502c  34 02                    ADDC A,#0x2
CODE:502e  f5 83                    MOV DPH,A
CODE:5030  ed                       MOV A,R5
CODE:5031  f0                       MOVX @DPTR,A
CODE:5032  18                       DEC R0
CODE:5033  e6                       MOV A,@R0
CODE:5034  fd                       MOV R5,A
CODE:5035  ef                       MOV A,R7
CODE:5036  75 f0 06                 MOV B,#0x6
CODE:5039  a4                       MUL AB
CODE:503a  24 1f                    ADD A,#0x1f
CODE:503c  f5 82                    MOV DPL,A
CODE:503e  e4                       CLR A
CODE:503f  34 01                    ADDC A,#0x1
CODE:5041  f5 83                    MOV DPH,A
CODE:5043  e5 82                    MOV A,DPL
CODE:5045  2e                       ADD A,R6
CODE:5046  f5 82                    MOV DPL,A
CODE:5048  e4                       CLR A
CODE:5049  35 83                    ADDC A,DPH
CODE:504b  f5 83                    MOV DPH,A
CODE:504d  ed                       MOV A,R5
CODE:504e  f0                       MOVX @DPTR,A
CODE:504f  08                       INC R0
CODE:5050  e6                       MOV A,@R0
CODE:5051  fe                       MOV R6,A
CODE:5052  ef                       MOV A,R7
CODE:5053  75 f0 06                 MOV B,#0x6
CODE:5056  a4                       MUL AB
CODE:5057  24 3d                    ADD A,#0x3d
CODE:5059  f5 82                    MOV DPL,A
CODE:505b  e4                       CLR A
CODE:505c  34 01                    ADDC A,#0x1
CODE:505e  f5 83                    MOV DPH,A
CODE:5060  e5 82                    MOV A,DPL
CODE:5062  2e                       ADD A,R6
CODE:5063  f5 82                    MOV DPL,A
CODE:5065  e4                       CLR A
CODE:5066  35 83                    ADDC A,DPH
CODE:5068  f5 83                    MOV DPH,A
CODE:506a  ed                       MOV A,R5
CODE:506b  f0                       MOVX @DPTR,A
CODE:506c  02 50 f7                 LJMP 0x50f7
LAB_CODE_506f:
CODE:506f  78 30                    MOV R0,#0x30   ; XREF: CODE:5007 
CODE:5071  e6                       MOV A,@R0
CODE:5072  fe                       MOV R6,A
CODE:5073  24 8a                    ADD A,#0x8a
CODE:5075  f5 82                    MOV DPL,A
CODE:5077  e4                       CLR A
CODE:5078  34 00                    ADDC A,#0x0
CODE:507a  f5 83                    MOV DPH,A
CODE:507c  e4                       CLR A
CODE:507d  f0                       MOVX @DPTR,A
CODE:507e  74 9c                    MOV A,#0x9c
CODE:5080  2e                       ADD A,R6
CODE:5081  f5 82                    MOV DPL,A
CODE:5083  e4                       CLR A
CODE:5084  34 02                    ADDC A,#0x2
CODE:5086  f5 83                    MOV DPH,A
CODE:5088  e0                       MOVX A,@DPTR
CODE:5089  24 fb                    ADD A,#0xfb
CODE:508b  f0                       MOVX @DPTR,A
CODE:508c  80 69                    SJMP 0x50f7
LAB_CODE_508e:
CODE:508e  74 c6                    MOV A,#0xc6   ; XREF: CODE:4ffe 
CODE:5090  2f                       ADD A,R7
CODE:5091  f5 82                    MOV DPL,A
CODE:5093  e4                       CLR A
CODE:5094  34 03                    ADDC A,#0x3
CODE:5096  f5 83                    MOV DPH,A
CODE:5098  e4                       CLR A
CODE:5099  f0                       MOVX @DPTR,A
CODE:509a  78 32                    MOV R0,#0x32
CODE:509c  e6                       MOV A,@R0
CODE:509d  fe                       MOV R6,A
CODE:509e  74 f1                    MOV A,#0xf1
CODE:50a0  2f                       ADD A,R7
CODE:50a1  f5 82                    MOV DPL,A
CODE:50a3  e4                       CLR A
CODE:50a4  34 01                    ADDC A,#0x1
CODE:50a6  f5 83                    MOV DPH,A
CODE:50a8  ee                       MOV A,R6
CODE:50a9  f0                       MOVX @DPTR,A
CODE:50aa  fd                       MOV R5,A
CODE:50ab  74 97                    MOV A,#0x97
CODE:50ad  2f                       ADD A,R7
CODE:50ae  f5 82                    MOV DPL,A
CODE:50b0  e4                       CLR A
CODE:50b1  34 02                    ADDC A,#0x2
CODE:50b3  f5 83                    MOV DPH,A
CODE:50b5  ed                       MOV A,R5
CODE:50b6  f0                       MOVX @DPTR,A
CODE:50b7  18                       DEC R0
CODE:50b8  e6                       MOV A,@R0
CODE:50b9  fd                       MOV R5,A
CODE:50ba  ef                       MOV A,R7
CODE:50bb  75 f0 06                 MOV B,#0x6
CODE:50be  a4                       MUL AB
CODE:50bf  24 1f                    ADD A,#0x1f
CODE:50c1  f5 82                    MOV DPL,A
CODE:50c3  e4                       CLR A
CODE:50c4  34 01                    ADDC A,#0x1
CODE:50c6  f5 83                    MOV DPH,A
CODE:50c8  e5 82                    MOV A,DPL
CODE:50ca  2e                       ADD A,R6
CODE:50cb  f5 82                    MOV DPL,A
CODE:50cd  e4                       CLR A
CODE:50ce  35 83                    ADDC A,DPH
CODE:50d0  f5 83                    MOV DPH,A
CODE:50d2  ed                       MOV A,R5
CODE:50d3  f0                       MOVX @DPTR,A
CODE:50d4  08                       INC R0
CODE:50d5  e6                       MOV A,@R0
CODE:50d6  fe                       MOV R6,A
CODE:50d7  ef                       MOV A,R7
CODE:50d8  75 f0 06                 MOV B,#0x6
CODE:50db  a4                       MUL AB
CODE:50dc  24 3d                    ADD A,#0x3d
CODE:50de  f5 82                    MOV DPL,A
CODE:50e0  e4                       CLR A
CODE:50e1  34 01                    ADDC A,#0x1
CODE:50e3  f5 83                    MOV DPH,A
CODE:50e5  e5 82                    MOV A,DPL
CODE:50e7  2e                       ADD A,R6
CODE:50e8  f5 82                    MOV DPL,A
CODE:50ea  e4                       CLR A
CODE:50eb  35 83                    ADDC A,DPH
CODE:50ed  f5 83                    MOV DPH,A
CODE:50ef  ed                       MOV A,R5
CODE:50f0  f0                       MOVX @DPTR,A
CODE:50f1  90 01 5b                 MOV DPTR,#0x15b
CODE:50f4  74 01                    MOV A,#0x1
CODE:50f6  f0                       MOVX @DPTR,A
LAB_CODE_50f7:
CODE:50f7  90 01 5b                 MOV DPTR,#0x15b   ; XREF: CODE:4fe6 CODE:4ff8 CODE:506c CODE:508c 
CODE:50fa  e0                       MOVX A,@DPTR
CODE:50fb  70 03                    JNZ 0x5100
CODE:50fd  02 53 0f                 LJMP 0x530f
LAB_CODE_5100:
CODE:5100  74 97                    MOV A,#0x97   ; XREF: CODE:50fb 
CODE:5102  2f                       ADD A,R7
CODE:5103  f5 82                    MOV DPL,A
CODE:5105  e4                       CLR A
CODE:5106  34 02                    ADDC A,#0x2
CODE:5108  f5 83                    MOV DPH,A
CODE:510a  e0                       MOVX A,@DPTR
CODE:510b  d3                       SETB CY
CODE:510c  94 00                    SUBB A,#0x0
CODE:510e  50 03                    JNC 0x5113
CODE:5110  02 51 94                 LJMP 0x5194
LAB_CODE_5113:
CODE:5113  74 97                    MOV A,#0x97   ; XREF: CODE:510e 
CODE:5115  2f                       ADD A,R7
CODE:5116  f5 82                    MOV DPL,A
CODE:5118  e4                       CLR A
CODE:5119  34 02                    ADDC A,#0x2
CODE:511b  f5 83                    MOV DPH,A
CODE:511d  e0                       MOVX A,@DPTR
CODE:511e  14                       DEC A
CODE:511f  f0                       MOVX @DPTR,A
CODE:5120  74 97                    MOV A,#0x97
CODE:5122  2f                       ADD A,R7
CODE:5123  f5 82                    MOV DPL,A
CODE:5125  e4                       CLR A
CODE:5126  34 02                    ADDC A,#0x2
CODE:5128  f5 83                    MOV DPH,A
CODE:512a  e0                       MOVX A,@DPTR
CODE:512b  75 f0 17                 MOV B,#0x17
CODE:512e  a4                       MUL AB
CODE:512f  24 00                    ADD A,#0x0
CODE:5131  f5 82                    MOV DPL,A
CODE:5133  e4                       CLR A
CODE:5134  34 00                    ADDC A,#0x0
CODE:5136  f5 83                    MOV DPH,A
CODE:5138  78 31                    MOV R0,#0x31
CODE:513a  e6                       MOV A,@R0
CODE:513b  fe                       MOV R6,A
CODE:513c  25 82                    ADD A,DPL
CODE:513e  f5 82                    MOV DPL,A
CODE:5140  e4                       CLR A
CODE:5141  35 83                    ADDC A,DPH
CODE:5143  f5 83                    MOV DPH,A
CODE:5145  74 01                    MOV A,#0x1
CODE:5147  f0                       MOVX @DPTR,A
CODE:5148  74 97                    MOV A,#0x97
CODE:514a  2f                       ADD A,R7
CODE:514b  f5 82                    MOV DPL,A
CODE:514d  e4                       CLR A
CODE:514e  34 02                    ADDC A,#0x2
CODE:5150  f5 83                    MOV DPH,A
CODE:5152  e0                       MOVX A,@DPTR
CODE:5153  fd                       MOV R5,A
CODE:5154  ef                       MOV A,R7
CODE:5155  75 f0 06                 MOV B,#0x6
CODE:5158  a4                       MUL AB
CODE:5159  24 1f                    ADD A,#0x1f
CODE:515b  f5 82                    MOV DPL,A
CODE:515d  e4                       CLR A
CODE:515e  34 01                    ADDC A,#0x1
CODE:5160  f5 83                    MOV DPH,A
CODE:5162  e5 82                    MOV A,DPL
CODE:5164  2d                       ADD A,R5
CODE:5165  f5 82                    MOV DPL,A
CODE:5167  e4                       CLR A
CODE:5168  35 83                    ADDC A,DPH
CODE:516a  f5 83                    MOV DPH,A
CODE:516c  ee                       MOV A,R6
CODE:516d  f0                       MOVX @DPTR,A
CODE:516e  74 97                    MOV A,#0x97
CODE:5170  2f                       ADD A,R7
CODE:5171  f5 82                    MOV DPL,A
CODE:5173  e4                       CLR A
CODE:5174  34 02                    ADDC A,#0x2
CODE:5176  f5 83                    MOV DPH,A
CODE:5178  e0                       MOVX A,@DPTR
CODE:5179  fd                       MOV R5,A
CODE:517a  ef                       MOV A,R7
CODE:517b  75 f0 06                 MOV B,#0x6
CODE:517e  a4                       MUL AB
CODE:517f  24 3d                    ADD A,#0x3d
CODE:5181  f5 82                    MOV DPL,A
CODE:5183  e4                       CLR A
CODE:5184  34 01                    ADDC A,#0x1
CODE:5186  f5 83                    MOV DPH,A
CODE:5188  e5 82                    MOV A,DPL
CODE:518a  2d                       ADD A,R5
CODE:518b  f5 82                    MOV DPL,A
CODE:518d  e4                       CLR A
CODE:518e  35 83                    ADDC A,DPH
CODE:5190  f5 83                    MOV DPH,A
CODE:5192  ee                       MOV A,R6
CODE:5193  f0                       MOVX @DPTR,A
LAB_CODE_5194:
CODE:5194  74 f1                    MOV A,#0xf1   ; XREF: CODE:5110 
CODE:5196  2f                       ADD A,R7
CODE:5197  f5 82                    MOV DPL,A
CODE:5199  e4                       CLR A
CODE:519a  34 01                    ADDC A,#0x1
CODE:519c  f5 83                    MOV DPH,A
CODE:519e  e0                       MOVX A,@DPTR
CODE:519f  c3                       CLR CY
CODE:51a0  94 05                    SUBB A,#0x5
CODE:51a2  40 03                    JC 0x51a7
CODE:51a4  02 52 28                 LJMP 0x5228
LAB_CODE_51a7:
CODE:51a7  74 f1                    MOV A,#0xf1   ; XREF: CODE:51a2 
CODE:51a9  2f                       ADD A,R7
CODE:51aa  f5 82                    MOV DPL,A
CODE:51ac  e4                       CLR A
CODE:51ad  34 01                    ADDC A,#0x1
CODE:51af  f5 83                    MOV DPH,A
CODE:51b1  e0                       MOVX A,@DPTR
CODE:51b2  04                       INC A
CODE:51b3  f0                       MOVX @DPTR,A
CODE:51b4  74 f1                    MOV A,#0xf1
CODE:51b6  2f                       ADD A,R7
CODE:51b7  f5 82                    MOV DPL,A
CODE:51b9  e4                       CLR A
CODE:51ba  34 01                    ADDC A,#0x1
CODE:51bc  f5 83                    MOV DPH,A
CODE:51be  e0                       MOVX A,@DPTR
CODE:51bf  75 f0 17                 MOV B,#0x17
CODE:51c2  a4                       MUL AB
CODE:51c3  24 00                    ADD A,#0x0
CODE:51c5  f5 82                    MOV DPL,A
CODE:51c7  e4                       CLR A
CODE:51c8  34 00                    ADDC A,#0x0
CODE:51ca  f5 83                    MOV DPH,A
CODE:51cc  78 31                    MOV R0,#0x31
CODE:51ce  e6                       MOV A,@R0
CODE:51cf  fe                       MOV R6,A
CODE:51d0  25 82                    ADD A,DPL
CODE:51d2  f5 82                    MOV DPL,A
CODE:51d4  e4                       CLR A
CODE:51d5  35 83                    ADDC A,DPH
CODE:51d7  f5 83                    MOV DPH,A
CODE:51d9  74 01                    MOV A,#0x1
CODE:51db  f0                       MOVX @DPTR,A
CODE:51dc  74 f1                    MOV A,#0xf1
CODE:51de  2f                       ADD A,R7
CODE:51df  f5 82                    MOV DPL,A
CODE:51e1  e4                       CLR A
CODE:51e2  34 01                    ADDC A,#0x1
CODE:51e4  f5 83                    MOV DPH,A
CODE:51e6  e0                       MOVX A,@DPTR
CODE:51e7  fd                       MOV R5,A
CODE:51e8  ef                       MOV A,R7
CODE:51e9  75 f0 06                 MOV B,#0x6
CODE:51ec  a4                       MUL AB
CODE:51ed  24 1f                    ADD A,#0x1f
CODE:51ef  f5 82                    MOV DPL,A
CODE:51f1  e4                       CLR A
CODE:51f2  34 01                    ADDC A,#0x1
CODE:51f4  f5 83                    MOV DPH,A
CODE:51f6  e5 82                    MOV A,DPL
CODE:51f8  2d                       ADD A,R5
CODE:51f9  f5 82                    MOV DPL,A
CODE:51fb  e4                       CLR A
CODE:51fc  35 83                    ADDC A,DPH
CODE:51fe  f5 83                    MOV DPH,A
CODE:5200  ee                       MOV A,R6
CODE:5201  f0                       MOVX @DPTR,A
CODE:5202  74 f1                    MOV A,#0xf1
CODE:5204  2f                       ADD A,R7
CODE:5205  f5 82                    MOV DPL,A
CODE:5207  e4                       CLR A
CODE:5208  34 01                    ADDC A,#0x1
CODE:520a  f5 83                    MOV DPH,A
CODE:520c  e0                       MOVX A,@DPTR
CODE:520d  fd                       MOV R5,A
CODE:520e  ef                       MOV A,R7
CODE:520f  75 f0 06                 MOV B,#0x6
CODE:5212  a4                       MUL AB
CODE:5213  24 3d                    ADD A,#0x3d
CODE:5215  f5 82                    MOV DPL,A
CODE:5217  e4                       CLR A
CODE:5218  34 01                    ADDC A,#0x1
CODE:521a  f5 83                    MOV DPH,A
CODE:521c  e5 82                    MOV A,DPL
CODE:521e  2d                       ADD A,R5
CODE:521f  f5 82                    MOV DPL,A
CODE:5221  e4                       CLR A
CODE:5222  35 83                    ADDC A,DPH
CODE:5224  f5 83                    MOV DPH,A
CODE:5226  ee                       MOV A,R6
CODE:5227  f0                       MOVX @DPTR,A
LAB_CODE_5228:
CODE:5228  e4                       CLR A   ; XREF: CODE:51a4 
CODE:5229  fe                       MOV R6,A
LAB_CODE_522a:
CODE:522a  ef                       MOV A,R7   ; XREF: CODE:530c 
CODE:522b  75 f0 06                 MOV B,#0x6
CODE:522e  a4                       MUL AB
CODE:522f  24 3d                    ADD A,#0x3d
CODE:5231  f5 82                    MOV DPL,A
CODE:5233  e4                       CLR A
CODE:5234  34 01                    ADDC A,#0x1
CODE:5236  f5 83                    MOV DPH,A
CODE:5238  e5 82                    MOV A,DPL
CODE:523a  2e                       ADD A,R6
CODE:523b  f5 82                    MOV DPL,A
CODE:523d  e4                       CLR A
CODE:523e  35 83                    ADDC A,DPH
CODE:5240  f5 83                    MOV DPH,A
CODE:5242  e0                       MOVX A,@DPTR
CODE:5243  d3                       SETB CY
CODE:5244  94 00                    SUBB A,#0x0
CODE:5246  40 50                    JC 0x5298
CODE:5248  ef                       MOV A,R7
CODE:5249  75 f0 06                 MOV B,#0x6
CODE:524c  a4                       MUL AB
CODE:524d  24 3d                    ADD A,#0x3d
CODE:524f  f5 82                    MOV DPL,A
CODE:5251  e4                       CLR A
CODE:5252  34 01                    ADDC A,#0x1
CODE:5254  f5 83                    MOV DPH,A
CODE:5256  e5 82                    MOV A,DPL
CODE:5258  2e                       ADD A,R6
CODE:5259  f5 82                    MOV DPL,A
CODE:525b  e4                       CLR A
CODE:525c  35 83                    ADDC A,DPH
CODE:525e  f5 83                    MOV DPH,A
CODE:5260  e0                       MOVX A,@DPTR
CODE:5261  14                       DEC A
CODE:5262  f0                       MOVX @DPTR,A
CODE:5263  ef                       MOV A,R7
CODE:5264  75 f0 06                 MOV B,#0x6
CODE:5267  a4                       MUL AB
CODE:5268  24 3d                    ADD A,#0x3d
CODE:526a  f5 82                    MOV DPL,A
CODE:526c  e4                       CLR A
CODE:526d  34 01                    ADDC A,#0x1
CODE:526f  f5 83                    MOV DPH,A
CODE:5271  e5 82                    MOV A,DPL
CODE:5273  2e                       ADD A,R6
CODE:5274  f5 82                    MOV DPL,A
CODE:5276  e4                       CLR A
CODE:5277  35 83                    ADDC A,DPH
CODE:5279  f5 83                    MOV DPH,A
CODE:527b  e0                       MOVX A,@DPTR
CODE:527c  fd                       MOV R5,A
CODE:527d  ee                       MOV A,R6
CODE:527e  75 f0 17                 MOV B,#0x17
CODE:5281  a4                       MUL AB
CODE:5282  24 00                    ADD A,#0x0
CODE:5284  f5 82                    MOV DPL,A
CODE:5286  e4                       CLR A
CODE:5287  34 00                    ADDC A,#0x0
CODE:5289  f5 83                    MOV DPH,A
CODE:528b  e5 82                    MOV A,DPL
CODE:528d  2d                       ADD A,R5
CODE:528e  f5 82                    MOV DPL,A
CODE:5290  e4                       CLR A
CODE:5291  35 83                    ADDC A,DPH
CODE:5293  f5 83                    MOV DPH,A
CODE:5295  74 01                    MOV A,#0x1
CODE:5297  f0                       MOVX @DPTR,A
LAB_CODE_5298:
CODE:5298  ef                       MOV A,R7   ; XREF: CODE:5246 
CODE:5299  75 f0 06                 MOV B,#0x6
CODE:529c  a4                       MUL AB
CODE:529d  24 1f                    ADD A,#0x1f
CODE:529f  f5 82                    MOV DPL,A
CODE:52a1  e4                       CLR A
CODE:52a2  34 01                    ADDC A,#0x1
CODE:52a4  f5 83                    MOV DPH,A
CODE:52a6  e5 82                    MOV A,DPL
CODE:52a8  2e                       ADD A,R6
CODE:52a9  f5 82                    MOV DPL,A
CODE:52ab  e4                       CLR A
CODE:52ac  35 83                    ADDC A,DPH
CODE:52ae  f5 83                    MOV DPH,A
CODE:52b0  e0                       MOVX A,@DPTR
CODE:52b1  c3                       CLR CY
CODE:52b2  94 16                    SUBB A,#0x16
CODE:52b4  50 50                    JNC 0x5306
CODE:52b6  ef                       MOV A,R7
CODE:52b7  75 f0 06                 MOV B,#0x6
CODE:52ba  a4                       MUL AB
CODE:52bb  24 1f                    ADD A,#0x1f
CODE:52bd  f5 82                    MOV DPL,A
CODE:52bf  e4                       CLR A
CODE:52c0  34 01                    ADDC A,#0x1
CODE:52c2  f5 83                    MOV DPH,A
CODE:52c4  e5 82                    MOV A,DPL
CODE:52c6  2e                       ADD A,R6
CODE:52c7  f5 82                    MOV DPL,A
CODE:52c9  e4                       CLR A
CODE:52ca  35 83                    ADDC A,DPH
CODE:52cc  f5 83                    MOV DPH,A
CODE:52ce  e0                       MOVX A,@DPTR
CODE:52cf  04                       INC A
CODE:52d0  f0                       MOVX @DPTR,A
CODE:52d1  ef                       MOV A,R7
CODE:52d2  75 f0 06                 MOV B,#0x6
CODE:52d5  a4                       MUL AB
CODE:52d6  24 1f                    ADD A,#0x1f
CODE:52d8  f5 82                    MOV DPL,A
CODE:52da  e4                       CLR A
CODE:52db  34 01                    ADDC A,#0x1
CODE:52dd  f5 83                    MOV DPH,A
CODE:52df  e5 82                    MOV A,DPL
CODE:52e1  2e                       ADD A,R6
CODE:52e2  f5 82                    MOV DPL,A
CODE:52e4  e4                       CLR A
CODE:52e5  35 83                    ADDC A,DPH
CODE:52e7  f5 83                    MOV DPH,A
CODE:52e9  e0                       MOVX A,@DPTR
CODE:52ea  fd                       MOV R5,A
CODE:52eb  ee                       MOV A,R6
CODE:52ec  75 f0 17                 MOV B,#0x17
CODE:52ef  a4                       MUL AB
CODE:52f0  24 00                    ADD A,#0x0
CODE:52f2  f5 82                    MOV DPL,A
CODE:52f4  e4                       CLR A
CODE:52f5  34 00                    ADDC A,#0x0
CODE:52f7  f5 83                    MOV DPH,A
CODE:52f9  e5 82                    MOV A,DPL
CODE:52fb  2d                       ADD A,R5
CODE:52fc  f5 82                    MOV DPL,A
CODE:52fe  e4                       CLR A
CODE:52ff  35 83                    ADDC A,DPH
CODE:5301  f5 83                    MOV DPH,A
CODE:5303  74 01                    MOV A,#0x1
CODE:5305  f0                       MOVX @DPTR,A
LAB_CODE_5306:
CODE:5306  0e                       INC R6   ; XREF: CODE:52b4 
CODE:5307  ee                       MOV A,R6
CODE:5308  64 06                    XRL A,#0x6
CODE:530a  60 03                    JZ 0x530f
CODE:530c  02 52 2a                 LJMP 0x522a
LAB_CODE_530f:
CODE:530f  22                       RET   ; XREF: CODE:50fd CODE:530a 

; ===== FUNCTION thunk_FUN_CODE_58db @ CODE:58c9 =====
CODE:58c9  80 10                    SJMP 0x58db   ; XREF: CODE:7ea1 

; ===== FUNCTION FUN_CODE_58cb @ CODE:58cb =====
CODE:58cb  90 08 f6                 MOV DPTR,#0x8f6   ; XREF: CODE:58ea 
CODE:58ce  e0                       MOVX A,@DPTR
CODE:58cf  24 56                    ADD A,#0x56
CODE:58d1  f5 82                    MOV DPL,A
CODE:58d3  e4                       CLR A
CODE:58d4  34 09                    ADDC A,#0x9
CODE:58d6  f5 83                    MOV DPH,A
CODE:58d8  e0                       MOVX A,@DPTR
CODE:58d9  60 11                    JZ 0x58ec

; ===== FUNCTION FUN_CODE_58db @ CODE:58db =====
CODE:58db  12 b7 9e                 LCALL 0xb79e   ; XREF: CODE:58c9 
CODE:58de  90 08 f6                 MOV DPTR,#0x8f6
CODE:58e1  ef                       MOV A,R7
CODE:58e2  f0                       MOVX @DPTR,A
CODE:58e3  75 f0 17                 MOV B,#0x17
CODE:58e6  84                       DIV AB
CODE:58e7  e5 f0                    MOV A,B
CODE:58e9  f0                       MOVX @DPTR,A
CODE:58ea  80 df                    SJMP 0x58cb
LAB_CODE_58ec:
CODE:58ec  90 08 f6                 MOV DPTR,#0x8f6   ; XREF: CODE:58d9 
CODE:58ef  e0                       MOVX A,@DPTR
CODE:58f0  24 56                    ADD A,#0x56
CODE:58f2  f5 82                    MOV DPL,A
CODE:58f4  e4                       CLR A
CODE:58f5  34 09                    ADDC A,#0x9
CODE:58f7  f5 83                    MOV DPH,A
CODE:58f9  74 01                    MOV A,#0x1
CODE:58fb  f0                       MOVX @DPTR,A
CODE:58fc  12 b7 9e                 LCALL 0xb79e
CODE:58ff  ef                       MOV A,R7
CODE:5900  75 f0 06                 MOV B,#0x6
CODE:5903  84                       DIV AB
CODE:5904  af f0                    MOV R7,B
CODE:5906  90 08 f6                 MOV DPTR,#0x8f6
CODE:5909  e0                       MOVX A,@DPTR
CODE:590a  fd                       MOV R5,A
CODE:590b  75 f0 02                 MOV B,#0x2
CODE:590e  a4                       MUL AB
CODE:590f  24 cb                    ADD A,#0xcb
CODE:5911  f5 82                    MOV DPL,A
CODE:5913  e5 f0                    MOV A,B
CODE:5915  34 03                    ADDC A,#0x3
CODE:5917  f5 83                    MOV DPH,A
CODE:5919  e4                       CLR A
CODE:591a  f0                       MOVX @DPTR,A
CODE:591b  a3                       INC DPTR
CODE:591c  ef                       MOV A,R7
CODE:591d  f0                       MOVX @DPTR,A
CODE:591e  75 f0 02                 MOV B,#0x2
CODE:5921  ed                       MOV A,R5
CODE:5922  a4                       MUL AB
CODE:5923  24 cb                    ADD A,#0xcb
CODE:5925  f5 82                    MOV DPL,A
CODE:5927  e5 f0                    MOV A,B
CODE:5929  34 03                    ADDC A,#0x3
CODE:592b  f5 83                    MOV DPH,A
CODE:592d  e0                       MOVX A,@DPTR
CODE:592e  fe                       MOV R6,A
CODE:592f  a3                       INC DPTR
CODE:5930  e0                       MOVX A,@DPTR
CODE:5931  24 02                    ADD A,#0x2
CODE:5933  fd                       MOV R5,A
CODE:5934  e4                       CLR A
CODE:5935  3e                       ADDC A,R6
CODE:5936  fc                       MOV R4,A
CODE:5937  90 08 f6                 MOV DPTR,#0x8f6
CODE:593a  e0                       MOVX A,@DPTR
CODE:593b  f9                       MOV R1,A
CODE:593c  25 e0                    ADD A,A
CODE:593e  ff                       MOV R7,A
CODE:593f  e4                       CLR A
CODE:5940  33                       RLC A
CODE:5941  fe                       MOV R6,A
CODE:5942  74 f9                    MOV A,#0xf9
CODE:5944  2f                       ADD A,R7
CODE:5945  f5 82                    MOV DPL,A
CODE:5947  74 03                    MOV A,#0x3
CODE:5949  3e                       ADDC A,R6
CODE:594a  f5 83                    MOV DPH,A
CODE:594c  ec                       MOV A,R4
CODE:594d  f0                       MOVX @DPTR,A
CODE:594e  a3                       INC DPTR
CODE:594f  ed                       MOV A,R5
CODE:5950  f0                       MOVX @DPTR,A
CODE:5951  75 f0 02                 MOV B,#0x2
CODE:5954  e9                       MOV A,R1
CODE:5955  a4                       MUL AB
CODE:5956  24 cb                    ADD A,#0xcb
CODE:5958  f5 82                    MOV DPL,A
CODE:595a  e5 f0                    MOV A,B
CODE:595c  34 03                    ADDC A,#0x3
CODE:595e  f5 83                    MOV DPH,A
CODE:5960  e0                       MOVX A,@DPTR
CODE:5961  fc                       MOV R4,A
CODE:5962  a3                       INC DPTR
CODE:5963  e0                       MOVX A,@DPTR
CODE:5964  24 03                    ADD A,#0x3
CODE:5966  fd                       MOV R5,A
CODE:5967  e4                       CLR A
CODE:5968  3c                       ADDC A,R4
CODE:5969  fc                       MOV R4,A
CODE:596a  74 27                    MOV A,#0x27
CODE:596c  2f                       ADD A,R7
CODE:596d  f5 82                    MOV DPL,A
CODE:596f  74 04                    MOV A,#0x4
CODE:5971  3e                       ADDC A,R6
CODE:5972  f5 83                    MOV DPH,A
CODE:5974  ec                       MOV A,R4
CODE:5975  f0                       MOVX @DPTR,A
CODE:5976  a3                       INC DPTR
CODE:5977  ed                       MOV A,R5
CODE:5978  f0                       MOVX @DPTR,A
CODE:5979  75 f0 02                 MOV B,#0x2
CODE:597c  e9                       MOV A,R1
CODE:597d  a4                       MUL AB
CODE:597e  24 cb                    ADD A,#0xcb
CODE:5980  f5 82                    MOV DPL,A
CODE:5982  e5 f0                    MOV A,B
CODE:5984  34 03                    ADDC A,#0x3
CODE:5986  f5 83                    MOV DPH,A
CODE:5988  e0                       MOVX A,@DPTR
CODE:5989  fe                       MOV R6,A
CODE:598a  a3                       INC DPTR
CODE:598b  e0                       MOVX A,@DPTR
CODE:598c  24 04                    ADD A,#0x4
CODE:598e  fd                       MOV R5,A
CODE:598f  e4                       CLR A
CODE:5990  3e                       ADDC A,R6
CODE:5991  fc                       MOV R4,A
CODE:5992  e9                       MOV A,R1
CODE:5993  25 e0                    ADD A,A
CODE:5995  ff                       MOV R7,A
CODE:5996  e4                       CLR A
CODE:5997  33                       RLC A
CODE:5998  fe                       MOV R6,A
CODE:5999  74 55                    MOV A,#0x55
CODE:599b  2f                       ADD A,R7
CODE:599c  f5 82                    MOV DPL,A
CODE:599e  74 04                    MOV A,#0x4
CODE:59a0  3e                       ADDC A,R6
CODE:59a1  f5 83                    MOV DPH,A
CODE:59a3  ec                       MOV A,R4
CODE:59a4  f0                       MOVX @DPTR,A
CODE:59a5  a3                       INC DPTR
CODE:59a6  ed                       MOV A,R5
CODE:59a7  f0                       MOVX @DPTR,A
CODE:59a8  75 f0 02                 MOV B,#0x2
CODE:59ab  e9                       MOV A,R1
CODE:59ac  a4                       MUL AB
CODE:59ad  24 cb                    ADD A,#0xcb
CODE:59af  f5 82                    MOV DPL,A
CODE:59b1  e5 f0                    MOV A,B
CODE:59b3  34 03                    ADDC A,#0x3
CODE:59b5  f5 83                    MOV DPH,A
CODE:59b7  e0                       MOVX A,@DPTR
CODE:59b8  fc                       MOV R4,A
CODE:59b9  a3                       INC DPTR
CODE:59ba  e0                       MOVX A,@DPTR
CODE:59bb  24 05                    ADD A,#0x5
CODE:59bd  fd                       MOV R5,A
CODE:59be  e4                       CLR A
CODE:59bf  3c                       ADDC A,R4
CODE:59c0  fc                       MOV R4,A
CODE:59c1  74 83                    MOV A,#0x83
CODE:59c3  2f                       ADD A,R7
CODE:59c4  f5 82                    MOV DPL,A
CODE:59c6  74 04                    MOV A,#0x4
CODE:59c8  3e                       ADDC A,R6
CODE:59c9  f5 83                    MOV DPH,A
CODE:59cb  ec                       MOV A,R4
CODE:59cc  f0                       MOVX @DPTR,A
CODE:59cd  a3                       INC DPTR
CODE:59ce  ed                       MOV A,R5
CODE:59cf  f0                       MOVX @DPTR,A
CODE:59d0  75 f0 02                 MOV B,#0x2
CODE:59d3  e9                       MOV A,R1
CODE:59d4  a4                       MUL AB
CODE:59d5  24 cb                    ADD A,#0xcb
CODE:59d7  f5 82                    MOV DPL,A
CODE:59d9  e5 f0                    MOV A,B
CODE:59db  34 03                    ADDC A,#0x3
CODE:59dd  f5 83                    MOV DPH,A
CODE:59df  e0                       MOVX A,@DPTR
CODE:59e0  fe                       MOV R6,A
CODE:59e1  a3                       INC DPTR
CODE:59e2  e0                       MOVX A,@DPTR
CODE:59e3  24 06                    ADD A,#0x6
CODE:59e5  fd                       MOV R5,A
CODE:59e6  e4                       CLR A
CODE:59e7  3e                       ADDC A,R6
CODE:59e8  fc                       MOV R4,A
CODE:59e9  e9                       MOV A,R1
CODE:59ea  25 e0                    ADD A,A
CODE:59ec  ff                       MOV R7,A
CODE:59ed  e4                       CLR A
CODE:59ee  33                       RLC A
CODE:59ef  fe                       MOV R6,A
CODE:59f0  74 b1                    MOV A,#0xb1
CODE:59f2  2f                       ADD A,R7
CODE:59f3  f5 82                    MOV DPL,A
CODE:59f5  74 04                    MOV A,#0x4
CODE:59f7  3e                       ADDC A,R6
CODE:59f8  f5 83                    MOV DPH,A
CODE:59fa  ec                       MOV A,R4
CODE:59fb  f0                       MOVX @DPTR,A
CODE:59fc  a3                       INC DPTR
CODE:59fd  ed                       MOV A,R5
CODE:59fe  f0                       MOVX @DPTR,A
CODE:59ff  12 b7 9e                 LCALL 0xb79e
CODE:5a02  90 08 f6                 MOV DPTR,#0x8f6
CODE:5a05  e0                       MOVX A,@DPTR
CODE:5a06  fe                       MOV R6,A
CODE:5a07  24 31                    ADD A,#0x31
CODE:5a09  f5 82                    MOV DPL,A
CODE:5a0b  e4                       CLR A
CODE:5a0c  34 03                    ADDC A,#0x3
CODE:5a0e  f5 83                    MOV DPH,A
CODE:5a10  ef                       MOV A,R7
CODE:5a11  f0                       MOVX @DPTR,A
CODE:5a12  74 31                    MOV A,#0x31
CODE:5a14  2e                       ADD A,R6
CODE:5a15  f5 82                    MOV DPL,A
CODE:5a17  e4                       CLR A
CODE:5a18  34 03                    ADDC A,#0x3
CODE:5a1a  f5 83                    MOV DPH,A
CODE:5a1c  e0                       MOVX A,@DPTR
CODE:5a1d  fd                       MOV R5,A
CODE:5a1e  7f ff                    MOV R7,#0xff
CODE:5a20  12 9f 11                 LCALL 0x9f11
CODE:5a23  90 08 f6                 MOV DPTR,#0x8f6
CODE:5a26  e0                       MOVX A,@DPTR
CODE:5a27  24 5c                    ADD A,#0x5c
CODE:5a29  f5 82                    MOV DPL,A
CODE:5a2b  e4                       CLR A
CODE:5a2c  34 01                    ADDC A,#0x1
CODE:5a2e  f5 83                    MOV DPH,A
CODE:5a30  ef                       MOV A,R7
CODE:5a31  f0                       MOVX @DPTR,A
CODE:5a32  12 b7 9e                 LCALL 0xb79e
CODE:5a35  90 08 f6                 MOV DPTR,#0x8f6
CODE:5a38  e0                       MOVX A,@DPTR
CODE:5a39  fe                       MOV R6,A
CODE:5a3a  24 48                    ADD A,#0x48
CODE:5a3c  f5 82                    MOV DPL,A
CODE:5a3e  e4                       CLR A
CODE:5a3f  34 03                    ADDC A,#0x3
CODE:5a41  f5 83                    MOV DPH,A
CODE:5a43  ef                       MOV A,R7
CODE:5a44  f0                       MOVX @DPTR,A
CODE:5a45  74 48                    MOV A,#0x48
CODE:5a47  2e                       ADD A,R6
CODE:5a48  f5 82                    MOV DPL,A
CODE:5a4a  e4                       CLR A
CODE:5a4b  34 03                    ADDC A,#0x3
CODE:5a4d  f5 83                    MOV DPH,A
CODE:5a4f  e0                       MOVX A,@DPTR
CODE:5a50  fd                       MOV R5,A
CODE:5a51  7f ff                    MOV R7,#0xff
CODE:5a53  12 9f 11                 LCALL 0x9f11
CODE:5a56  90 08 f6                 MOV DPTR,#0x8f6
CODE:5a59  e0                       MOVX A,@DPTR
CODE:5a5a  24 73                    ADD A,#0x73
CODE:5a5c  f5 82                    MOV DPL,A
CODE:5a5e  e4                       CLR A
CODE:5a5f  34 01                    ADDC A,#0x1
CODE:5a61  f5 83                    MOV DPH,A
CODE:5a63  ef                       MOV A,R7
CODE:5a64  f0                       MOVX @DPTR,A
CODE:5a65  12 b7 9e                 LCALL 0xb79e
CODE:5a68  90 08 f6                 MOV DPTR,#0x8f6
CODE:5a6b  e0                       MOVX A,@DPTR
CODE:5a6c  fe                       MOV R6,A
CODE:5a6d  24 5f                    ADD A,#0x5f
CODE:5a6f  f5 82                    MOV DPL,A
CODE:5a71  e4                       CLR A
CODE:5a72  34 03                    ADDC A,#0x3
CODE:5a74  f5 83                    MOV DPH,A
CODE:5a76  ef                       MOV A,R7
CODE:5a77  f0                       MOVX @DPTR,A
CODE:5a78  74 5f                    MOV A,#0x5f
CODE:5a7a  2e                       ADD A,R6
CODE:5a7b  f5 82                    MOV DPL,A
CODE:5a7d  e4                       CLR A
CODE:5a7e  34 03                    ADDC A,#0x3
CODE:5a80  f5 83                    MOV DPH,A
CODE:5a82  e0                       MOVX A,@DPTR
CODE:5a83  fd                       MOV R5,A
CODE:5a84  7f ff                    MOV R7,#0xff
CODE:5a86  12 9f 11                 LCALL 0x9f11
CODE:5a89  90 08 f6                 MOV DPTR,#0x8f6
CODE:5a8c  e0                       MOVX A,@DPTR
CODE:5a8d  24 8a                    ADD A,#0x8a
CODE:5a8f  f5 82                    MOV DPL,A
CODE:5a91  e4                       CLR A
CODE:5a92  34 01                    ADDC A,#0x1
CODE:5a94  f5 83                    MOV DPH,A
CODE:5a96  ef                       MOV A,R7
CODE:5a97  f0                       MOVX @DPTR,A
CODE:5a98  12 b7 9e                 LCALL 0xb79e
CODE:5a9b  90 08 f6                 MOV DPTR,#0x8f6
CODE:5a9e  e0                       MOVX A,@DPTR
CODE:5a9f  fe                       MOV R6,A
CODE:5aa0  24 76                    ADD A,#0x76
CODE:5aa2  f5 82                    MOV DPL,A
CODE:5aa4  e4                       CLR A
CODE:5aa5  34 03                    ADDC A,#0x3
CODE:5aa7  f5 83                    MOV DPH,A
CODE:5aa9  ef                       MOV A,R7
CODE:5aaa  f0                       MOVX @DPTR,A
CODE:5aab  74 76                    MOV A,#0x76
CODE:5aad  2e                       ADD A,R6
CODE:5aae  f5 82                    MOV DPL,A
CODE:5ab0  e4                       CLR A
CODE:5ab1  34 03                    ADDC A,#0x3
CODE:5ab3  f5 83                    MOV DPH,A
CODE:5ab5  e0                       MOVX A,@DPTR
CODE:5ab6  fd                       MOV R5,A
CODE:5ab7  7f ff                    MOV R7,#0xff
CODE:5ab9  12 9f 11                 LCALL 0x9f11
CODE:5abc  90 08 f6                 MOV DPTR,#0x8f6
CODE:5abf  e0                       MOVX A,@DPTR
CODE:5ac0  24 a1                    ADD A,#0xa1
CODE:5ac2  f5 82                    MOV DPL,A
CODE:5ac4  e4                       CLR A
CODE:5ac5  34 01                    ADDC A,#0x1
CODE:5ac7  f5 83                    MOV DPH,A
CODE:5ac9  ef                       MOV A,R7
CODE:5aca  f0                       MOVX @DPTR,A
CODE:5acb  12 b7 9e                 LCALL 0xb79e
CODE:5ace  90 08 f6                 MOV DPTR,#0x8f6
CODE:5ad1  e0                       MOVX A,@DPTR
CODE:5ad2  fe                       MOV R6,A
CODE:5ad3  24 8d                    ADD A,#0x8d
CODE:5ad5  f5 82                    MOV DPL,A
CODE:5ad7  e4                       CLR A
CODE:5ad8  34 03                    ADDC A,#0x3
CODE:5ada  f5 83                    MOV DPH,A
CODE:5adc  ef                       MOV A,R7
CODE:5add  f0                       MOVX @DPTR,A
CODE:5ade  74 8d                    MOV A,#0x8d
CODE:5ae0  2e                       ADD A,R6
CODE:5ae1  f5 82                    MOV DPL,A
CODE:5ae3  e4                       CLR A
CODE:5ae4  34 03                    ADDC A,#0x3
CODE:5ae6  f5 83                    MOV DPH,A
CODE:5ae8  e0                       MOVX A,@DPTR
CODE:5ae9  fd                       MOV R5,A
CODE:5aea  7f ff                    MOV R7,#0xff
CODE:5aec  12 9f 11                 LCALL 0x9f11
CODE:5aef  90 08 f6                 MOV DPTR,#0x8f6
CODE:5af2  e0                       MOVX A,@DPTR
CODE:5af3  24 b8                    ADD A,#0xb8
CODE:5af5  f5 82                    MOV DPL,A
CODE:5af7  e4                       CLR A
CODE:5af8  34 01                    ADDC A,#0x1
CODE:5afa  f5 83                    MOV DPH,A
CODE:5afc  ef                       MOV A,R7
CODE:5afd  f0                       MOVX @DPTR,A
CODE:5afe  12 b7 9e                 LCALL 0xb79e
CODE:5b01  90 08 f6                 MOV DPTR,#0x8f6
CODE:5b04  e0                       MOVX A,@DPTR
CODE:5b05  fe                       MOV R6,A
CODE:5b06  24 a4                    ADD A,#0xa4
CODE:5b08  f5 82                    MOV DPL,A
CODE:5b0a  e4                       CLR A
CODE:5b0b  34 03                    ADDC A,#0x3
CODE:5b0d  f5 83                    MOV DPH,A
CODE:5b0f  ef                       MOV A,R7
CODE:5b10  f0                       MOVX @DPTR,A
CODE:5b11  74 a4                    MOV A,#0xa4
CODE:5b13  2e                       ADD A,R6
CODE:5b14  f5 82                    MOV DPL,A
CODE:5b16  e4                       CLR A
CODE:5b17  34 03                    ADDC A,#0x3
CODE:5b19  f5 83                    MOV DPH,A
CODE:5b1b  e0                       MOVX A,@DPTR
CODE:5b1c  fd                       MOV R5,A
CODE:5b1d  7f ff                    MOV R7,#0xff
CODE:5b1f  12 9f 11                 LCALL 0x9f11
CODE:5b22  90 08 f6                 MOV DPTR,#0x8f6
CODE:5b25  e0                       MOVX A,@DPTR
CODE:5b26  24 cf                    ADD A,#0xcf
CODE:5b28  f5 82                    MOV DPL,A
CODE:5b2a  e4                       CLR A
CODE:5b2b  34 01                    ADDC A,#0x1
CODE:5b2d  f5 83                    MOV DPH,A
CODE:5b2f  ef                       MOV A,R7
CODE:5b30  f0                       MOVX @DPTR,A
CODE:5b31  22                       RET

; ===== FUNCTION FUN_CODE_5b32 @ CODE:5b32 =====
CODE:5b32  30 2f 0b                 JNB 0x2f,0x5b40   ; XREF: CODE:492e CODE:4a85 CODE:2d58 CODE:9357 
CODE:5b35  90 07 c5                 MOV DPTR,#0x7c5
CODE:5b38  e0                       MOVX A,@DPTR
CODE:5b39  64 65                    XRL A,#0x65
CODE:5b3b  70 03                    JNZ 0x5b40
CODE:5b3d  02 5d 7f                 LJMP 0x5d7f
LAB_CODE_5b40:
CODE:5b40  90 07 c5                 MOV DPTR,#0x7c5   ; XREF: CODE:5b32 CODE:5b3b 
CODE:5b43  e0                       MOVX A,@DPTR
CODE:5b44  54 f0                    ANL A,#0xf0
CODE:5b46  ff                       MOV R7,A
CODE:5b47  bf e0 0d                 CJNE R7,#0xe0,0x5b57
CODE:5b4a  90 07 c8                 MOV DPTR,#0x7c8
CODE:5b4d  e0                       MOVX A,@DPTR
CODE:5b4e  64 04                    XRL A,#0x4
CODE:5b50  60 05                    JZ 0x5b57
CODE:5b52  d2 02                    SETB 0x02
CODE:5b54  02 bc 9d                 LJMP 0xbc9d
LAB_CODE_5b57:
CODE:5b57  20 00 03                 JB 0x00,0x5b5d   ; XREF: CODE:5b47 CODE:5b50 
CODE:5b5a  02 5c 4f                 LJMP 0x5c4f
LAB_CODE_5b5d:
CODE:5b5d  20 2e 58                 JB 0x2e,0x5bb8   ; XREF: CODE:5b57 
CODE:5b60  e4                       CLR A
CODE:5b61  90 08 ea                 MOV DPTR,#0x8ea
CODE:5b64  f0                       MOVX @DPTR,A
LAB_CODE_5b65:
CODE:5b65  90 08 ea                 MOV DPTR,#0x8ea   ; XREF: CODE:5bb6 
CODE:5b68  e0                       MOVX A,@DPTR
CODE:5b69  ff                       MOV R7,A
CODE:5b6a  c3                       CLR CY
CODE:5b6b  94 06                    SUBB A,#0x6
CODE:5b6d  40 03                    JC 0x5b72
CODE:5b6f  02 5d 7f                 LJMP 0x5d7f
LAB_CODE_5b72:
CODE:5b72  74 08                    MOV A,#0x8   ; XREF: CODE:5b6d 
CODE:5b74  2f                       ADD A,R7
CODE:5b75  f5 82                    MOV DPL,A
CODE:5b77  e4                       CLR A
CODE:5b78  34 07                    ADDC A,#0x7
CODE:5b7a  f5 83                    MOV DPH,A
CODE:5b7c  e0                       MOVX A,@DPTR
CODE:5b7d  70 16                    JNZ 0x5b95
CODE:5b7f  90 07 c5                 MOV DPTR,#0x7c5
CODE:5b82  e0                       MOVX A,@DPTR
CODE:5b83  ff                       MOV R7,A
CODE:5b84  90 08 ea                 MOV DPTR,#0x8ea
CODE:5b87  e0                       MOVX A,@DPTR
CODE:5b88  24 08                    ADD A,#0x8
CODE:5b8a  f5 82                    MOV DPL,A
CODE:5b8c  e4                       CLR A
CODE:5b8d  34 07                    ADDC A,#0x7
CODE:5b8f  f5 83                    MOV DPH,A
CODE:5b91  ef                       MOV A,R7
CODE:5b92  f0                       MOVX @DPTR,A
CODE:5b93  d2 02                    SETB 0x02
LAB_CODE_5b95:
CODE:5b95  90 08 ea                 MOV DPTR,#0x8ea   ; XREF: CODE:5b7d 
CODE:5b98  e0                       MOVX A,@DPTR
CODE:5b99  24 08                    ADD A,#0x8
CODE:5b9b  f5 82                    MOV DPL,A
CODE:5b9d  e4                       CLR A
CODE:5b9e  34 07                    ADDC A,#0x7
CODE:5ba0  f5 83                    MOV DPH,A
CODE:5ba2  e0                       MOVX A,@DPTR
CODE:5ba3  ff                       MOV R7,A
CODE:5ba4  90 07 c5                 MOV DPTR,#0x7c5
CODE:5ba7  e0                       MOVX A,@DPTR
CODE:5ba8  fe                       MOV R6,A
CODE:5ba9  ef                       MOV A,R7
CODE:5baa  6e                       XRL A,R6
CODE:5bab  70 03                    JNZ 0x5bb0
CODE:5bad  02 5d 7f                 LJMP 0x5d7f
LAB_CODE_5bb0:
CODE:5bb0  90 08 ea                 MOV DPTR,#0x8ea   ; XREF: CODE:5bab 
CODE:5bb3  e0                       MOVX A,@DPTR
CODE:5bb4  04                       INC A
CODE:5bb5  f0                       MOVX @DPTR,A
CODE:5bb6  80 ad                    SJMP 0x5b65
LAB_CODE_5bb8:
CODE:5bb8  e4                       CLR A   ; XREF: CODE:5b5d 
CODE:5bb9  90 08 ea                 MOV DPTR,#0x8ea
CODE:5bbc  f0                       MOVX @DPTR,A
LAB_CODE_5bbd:
CODE:5bbd  90 08 ea                 MOV DPTR,#0x8ea   ; XREF: CODE:5bfe 
CODE:5bc0  e0                       MOVX A,@DPTR
CODE:5bc1  ff                       MOV R7,A
CODE:5bc2  c3                       CLR CY
CODE:5bc3  94 06                    SUBB A,#0x6
CODE:5bc5  50 39                    JNC 0x5c00
CODE:5bc7  74 08                    MOV A,#0x8
CODE:5bc9  2f                       ADD A,R7
CODE:5bca  f5 82                    MOV DPL,A
CODE:5bcc  e4                       CLR A
CODE:5bcd  34 07                    ADDC A,#0x7
CODE:5bcf  f5 83                    MOV DPH,A
CODE:5bd1  e0                       MOVX A,@DPTR
CODE:5bd2  ff                       MOV R7,A
CODE:5bd3  70 19                    JNZ 0x5bee
CODE:5bd5  90 07 c5                 MOV DPTR,#0x7c5
CODE:5bd8  e0                       MOVX A,@DPTR
CODE:5bd9  fe                       MOV R6,A
CODE:5bda  90 08 ea                 MOV DPTR,#0x8ea
CODE:5bdd  e0                       MOVX A,@DPTR
CODE:5bde  24 08                    ADD A,#0x8
CODE:5be0  f5 82                    MOV DPL,A
CODE:5be2  e4                       CLR A
CODE:5be3  34 07                    ADDC A,#0x7
CODE:5be5  f5 83                    MOV DPH,A
CODE:5be7  ee                       MOV A,R6
CODE:5be8  f0                       MOVX @DPTR,A
CODE:5be9  d2 02                    SETB 0x02
CODE:5beb  d2 0e                    SETB 0x0e
CODE:5bed  22                       RET
LAB_CODE_5bee:
CODE:5bee  90 07 c5                 MOV DPTR,#0x7c5   ; XREF: CODE:5bd3 
CODE:5bf1  e0                       MOVX A,@DPTR
CODE:5bf2  6f                       XRL A,R7
CODE:5bf3  70 03                    JNZ 0x5bf8
CODE:5bf5  02 5d 7f                 LJMP 0x5d7f
LAB_CODE_5bf8:
CODE:5bf8  90 08 ea                 MOV DPTR,#0x8ea   ; XREF: CODE:5bf3 
CODE:5bfb  e0                       MOVX A,@DPTR
CODE:5bfc  04                       INC A
CODE:5bfd  f0                       MOVX @DPTR,A
CODE:5bfe  80 bd                    SJMP 0x5bbd
LAB_CODE_5c00:
CODE:5c00  90 07 c5                 MOV DPTR,#0x7c5   ; XREF: CODE:5bc5 
CODE:5c03  e0                       MOVX A,@DPTR
CODE:5c04  ff                       MOV R7,A
CODE:5c05  54 07                    ANL A,#0x7
CODE:5c07  fe                       MOV R6,A
CODE:5c08  74 01                    MOV A,#0x1
CODE:5c0a  a8 06                    MOV R0,0x06
CODE:5c0c  08                       INC R0
CODE:5c0d  80 02                    SJMP 0x5c11
LAB_CODE_5c0f:
CODE:5c0f  c3                       CLR CY   ; XREF: CODE:5c11 
CODE:5c10  33                       RLC A
LAB_CODE_5c11:
CODE:5c11  d8 fc                    DJNZ R0,0x5c0f   ; XREF: CODE:5c0d 
CODE:5c13  90 08 ea                 MOV DPTR,#0x8ea
CODE:5c16  f0                       MOVX @DPTR,A
CODE:5c17  e4                       CLR A
CODE:5c18  d3                       SETB CY
CODE:5c19  9f                       SUBB A,R7
CODE:5c1a  40 03                    JC 0x5c1f
CODE:5c1c  02 5d 7f                 LJMP 0x5d7f
LAB_CODE_5c1f:
CODE:5c1f  90 07 c5                 MOV DPTR,#0x7c5   ; XREF: CODE:5c1a 
CODE:5c22  e0                       MOVX A,@DPTR
CODE:5c23  ff                       MOV R7,A
CODE:5c24  94 65                    SUBB A,#0x65
CODE:5c26  40 03                    JC 0x5c2b
CODE:5c28  02 5d 7f                 LJMP 0x5d7f
LAB_CODE_5c2b:
CODE:5c2b  ef                       MOV A,R7   ; XREF: CODE:5c26 
CODE:5c2c  13                       RRC A
CODE:5c2d  13                       RRC A
CODE:5c2e  13                       RRC A
CODE:5c2f  54 1f                    ANL A,#0x1f
CODE:5c31  24 46                    ADD A,#0x46
CODE:5c33  f5 82                    MOV DPL,A
CODE:5c35  e4                       CLR A
CODE:5c36  34 07                    ADDC A,#0x7
CODE:5c38  f5 83                    MOV DPH,A
CODE:5c3a  c0 83                    PUSH DPH
CODE:5c3c  c0 82                    PUSH DPL
CODE:5c3e  e0                       MOVX A,@DPTR
CODE:5c3f  ff                       MOV R7,A
CODE:5c40  90 08 ea                 MOV DPTR,#0x8ea
CODE:5c43  e0                       MOVX A,@DPTR
CODE:5c44  fe                       MOV R6,A
CODE:5c45  ef                       MOV A,R7
CODE:5c46  4e                       ORL A,R6
CODE:5c47  d0 82                    POP DPL
CODE:5c49  d0 83                    POP DPH
CODE:5c4b  f0                       MOVX @DPTR,A
CODE:5c4c  02 5d 7b                 LJMP 0x5d7b
LAB_CODE_5c4f:
CODE:5c4f  20 2e 6d                 JB 0x2e,0x5cbf   ; XREF: CODE:5b5a 
CODE:5c52  e4                       CLR A
CODE:5c53  90 08 ea                 MOV DPTR,#0x8ea
CODE:5c56  f0                       MOVX @DPTR,A
LAB_CODE_5c57:
CODE:5c57  90 08 ea                 MOV DPTR,#0x8ea   ; XREF: CODE:5cbd 
CODE:5c5a  e0                       MOVX A,@DPTR
CODE:5c5b  ff                       MOV R7,A
CODE:5c5c  c3                       CLR CY
CODE:5c5d  94 06                    SUBB A,#0x6
CODE:5c5f  40 03                    JC 0x5c64
CODE:5c61  02 5d 7f                 LJMP 0x5d7f
LAB_CODE_5c64:
CODE:5c64  74 08                    MOV A,#0x8   ; XREF: CODE:5c5f 
CODE:5c66  2f                       ADD A,R7
CODE:5c67  f5 82                    MOV DPL,A
CODE:5c69  e4                       CLR A
CODE:5c6a  34 07                    ADDC A,#0x7
CODE:5c6c  f5 83                    MOV DPH,A
CODE:5c6e  e0                       MOVX A,@DPTR
CODE:5c6f  ff                       MOV R7,A
CODE:5c70  90 07 c5                 MOV DPTR,#0x7c5
CODE:5c73  e0                       MOVX A,@DPTR
CODE:5c74  fe                       MOV R6,A
CODE:5c75  ef                       MOV A,R7
CODE:5c76  6e                       XRL A,R6
CODE:5c77  70 3e                    JNZ 0x5cb7
CODE:5c79  90 08 ea                 MOV DPTR,#0x8ea
CODE:5c7c  e0                       MOVX A,@DPTR
CODE:5c7d  ff                       MOV R7,A
CODE:5c7e  c3                       CLR CY
CODE:5c7f  94 05                    SUBB A,#0x5
CODE:5c81  50 2d                    JNC 0x5cb0
CODE:5c83  a3                       INC DPTR
CODE:5c84  ef                       MOV A,R7
CODE:5c85  f0                       MOVX @DPTR,A
LAB_CODE_5c86:
CODE:5c86  90 08 eb                 MOV DPTR,#0x8eb   ; XREF: CODE:5cae 
CODE:5c89  e0                       MOVX A,@DPTR
CODE:5c8a  c3                       CLR CY
CODE:5c8b  94 05                    SUBB A,#0x5
CODE:5c8d  50 21                    JNC 0x5cb0
CODE:5c8f  e0                       MOVX A,@DPTR
CODE:5c90  ff                       MOV R7,A
CODE:5c91  24 09                    ADD A,#0x9
CODE:5c93  f5 82                    MOV DPL,A
CODE:5c95  e4                       CLR A
CODE:5c96  34 07                    ADDC A,#0x7
CODE:5c98  f5 83                    MOV DPH,A
CODE:5c9a  e0                       MOVX A,@DPTR
CODE:5c9b  fe                       MOV R6,A
CODE:5c9c  74 08                    MOV A,#0x8
CODE:5c9e  2f                       ADD A,R7
CODE:5c9f  f5 82                    MOV DPL,A
CODE:5ca1  e4                       CLR A
CODE:5ca2  34 07                    ADDC A,#0x7
CODE:5ca4  f5 83                    MOV DPH,A
CODE:5ca6  ee                       MOV A,R6
CODE:5ca7  f0                       MOVX @DPTR,A
CODE:5ca8  90 08 eb                 MOV DPTR,#0x8eb
CODE:5cab  e0                       MOVX A,@DPTR
CODE:5cac  04                       INC A
CODE:5cad  f0                       MOVX @DPTR,A
CODE:5cae  80 d6                    SJMP 0x5c86
LAB_CODE_5cb0:
CODE:5cb0  e4                       CLR A   ; XREF: CODE:5c81 CODE:5c8d 
CODE:5cb1  90 07 0d                 MOV DPTR,#0x70d
CODE:5cb4  f0                       MOVX @DPTR,A
CODE:5cb5  d2 02                    SETB 0x02
LAB_CODE_5cb7:
CODE:5cb7  90 08 ea                 MOV DPTR,#0x8ea   ; XREF: CODE:5c77 
CODE:5cba  e0                       MOVX A,@DPTR
CODE:5cbb  04                       INC A
CODE:5cbc  f0                       MOVX @DPTR,A
CODE:5cbd  80 98                    SJMP 0x5c57
LAB_CODE_5cbf:
CODE:5cbf  e4                       CLR A   ; XREF: CODE:5c4f 
CODE:5cc0  90 08 ea                 MOV DPTR,#0x8ea
CODE:5cc3  f0                       MOVX @DPTR,A
LAB_CODE_5cc4:
CODE:5cc4  90 08 ea                 MOV DPTR,#0x8ea   ; XREF: CODE:5d29 
CODE:5cc7  e0                       MOVX A,@DPTR
CODE:5cc8  ff                       MOV R7,A
CODE:5cc9  c3                       CLR CY
CODE:5cca  94 06                    SUBB A,#0x6
CODE:5ccc  50 5d                    JNC 0x5d2b
CODE:5cce  74 08                    MOV A,#0x8
CODE:5cd0  2f                       ADD A,R7
CODE:5cd1  f5 82                    MOV DPL,A
CODE:5cd3  e4                       CLR A
CODE:5cd4  34 07                    ADDC A,#0x7
CODE:5cd6  f5 83                    MOV DPH,A
CODE:5cd8  e0                       MOVX A,@DPTR
CODE:5cd9  ff                       MOV R7,A
CODE:5cda  90 07 c5                 MOV DPTR,#0x7c5
CODE:5cdd  e0                       MOVX A,@DPTR
CODE:5cde  fe                       MOV R6,A
CODE:5cdf  ef                       MOV A,R7
CODE:5ce0  6e                       XRL A,R6
CODE:5ce1  70 40                    JNZ 0x5d23
CODE:5ce3  90 08 ea                 MOV DPTR,#0x8ea
CODE:5ce6  e0                       MOVX A,@DPTR
CODE:5ce7  ff                       MOV R7,A
CODE:5ce8  c3                       CLR CY
CODE:5ce9  94 05                    SUBB A,#0x5
CODE:5ceb  50 2d                    JNC 0x5d1a
CODE:5ced  a3                       INC DPTR
CODE:5cee  ef                       MOV A,R7
CODE:5cef  f0                       MOVX @DPTR,A
LAB_CODE_5cf0:
CODE:5cf0  90 08 eb                 MOV DPTR,#0x8eb   ; XREF: CODE:5d18 
CODE:5cf3  e0                       MOVX A,@DPTR
CODE:5cf4  c3                       CLR CY
CODE:5cf5  94 05                    SUBB A,#0x5
CODE:5cf7  50 21                    JNC 0x5d1a
CODE:5cf9  e0                       MOVX A,@DPTR
CODE:5cfa  ff                       MOV R7,A
CODE:5cfb  24 09                    ADD A,#0x9
CODE:5cfd  f5 82                    MOV DPL,A
CODE:5cff  e4                       CLR A
CODE:5d00  34 07                    ADDC A,#0x7
CODE:5d02  f5 83                    MOV DPH,A
CODE:5d04  e0                       MOVX A,@DPTR
CODE:5d05  fe                       MOV R6,A
CODE:5d06  74 08                    MOV A,#0x8
CODE:5d08  2f                       ADD A,R7
CODE:5d09  f5 82                    MOV DPL,A
CODE:5d0b  e4                       CLR A
CODE:5d0c  34 07                    ADDC A,#0x7
CODE:5d0e  f5 83                    MOV DPH,A
CODE:5d10  ee                       MOV A,R6
CODE:5d11  f0                       MOVX @DPTR,A
CODE:5d12  90 08 eb                 MOV DPTR,#0x8eb
CODE:5d15  e0                       MOVX A,@DPTR
CODE:5d16  04                       INC A
CODE:5d17  f0                       MOVX @DPTR,A
CODE:5d18  80 d6                    SJMP 0x5cf0
LAB_CODE_5d1a:
CODE:5d1a  e4                       CLR A   ; XREF: CODE:5ceb CODE:5cf7 
CODE:5d1b  90 07 0d                 MOV DPTR,#0x70d
CODE:5d1e  f0                       MOVX @DPTR,A
CODE:5d1f  d2 02                    SETB 0x02
CODE:5d21  d2 0e                    SETB 0x0e
LAB_CODE_5d23:
CODE:5d23  90 08 ea                 MOV DPTR,#0x8ea   ; XREF: CODE:5ce1 
CODE:5d26  e0                       MOVX A,@DPTR
CODE:5d27  04                       INC A
CODE:5d28  f0                       MOVX @DPTR,A
CODE:5d29  80 99                    SJMP 0x5cc4
LAB_CODE_5d2b:
CODE:5d2b  90 07 c5                 MOV DPTR,#0x7c5   ; XREF: CODE:5ccc 
CODE:5d2e  e0                       MOVX A,@DPTR
CODE:5d2f  ff                       MOV R7,A
CODE:5d30  54 07                    ANL A,#0x7
CODE:5d32  fe                       MOV R6,A
CODE:5d33  74 01                    MOV A,#0x1
CODE:5d35  a8 06                    MOV R0,0x06
CODE:5d37  08                       INC R0
CODE:5d38  80 02                    SJMP 0x5d3c
LAB_CODE_5d3a:
CODE:5d3a  c3                       CLR CY   ; XREF: CODE:5d3c 
CODE:5d3b  33                       RLC A
LAB_CODE_5d3c:
CODE:5d3c  d8 fc                    DJNZ R0,0x5d3a   ; XREF: CODE:5d38 
CODE:5d3e  90 08 ea                 MOV DPTR,#0x8ea
CODE:5d41  f0                       MOVX @DPTR,A
CODE:5d42  e4                       CLR A
CODE:5d43  d3                       SETB CY
CODE:5d44  9f                       SUBB A,R7
CODE:5d45  50 38                    JNC 0x5d7f
CODE:5d47  90 07 c5                 MOV DPTR,#0x7c5
CODE:5d4a  e0                       MOVX A,@DPTR
CODE:5d4b  ff                       MOV R7,A
CODE:5d4c  94 65                    SUBB A,#0x65
CODE:5d4e  50 2f                    JNC 0x5d7f
CODE:5d50  ef                       MOV A,R7
CODE:5d51  13                       RRC A
CODE:5d52  13                       RRC A
CODE:5d53  13                       RRC A
CODE:5d54  54 1f                    ANL A,#0x1f
CODE:5d56  ff                       MOV R7,A
CODE:5d57  24 46                    ADD A,#0x46
CODE:5d59  f5 82                    MOV DPL,A
CODE:5d5b  e4                       CLR A
CODE:5d5c  34 07                    ADDC A,#0x7
CODE:5d5e  f5 83                    MOV DPH,A
CODE:5d60  e0                       MOVX A,@DPTR
CODE:5d61  fe                       MOV R6,A
CODE:5d62  90 08 ea                 MOV DPTR,#0x8ea
CODE:5d65  e0                       MOVX A,@DPTR
CODE:5d66  fd                       MOV R5,A
CODE:5d67  ee                       MOV A,R6
CODE:5d68  5d                       ANL A,R5
CODE:5d69  60 10                    JZ 0x5d7b
CODE:5d6b  74 46                    MOV A,#0x46
CODE:5d6d  2f                       ADD A,R7
CODE:5d6e  f5 82                    MOV DPL,A
CODE:5d70  e4                       CLR A
CODE:5d71  34 07                    ADDC A,#0x7
CODE:5d73  f5 83                    MOV DPH,A
CODE:5d75  ed                       MOV A,R5
CODE:5d76  f4                       CPL A
CODE:5d77  ff                       MOV R7,A
CODE:5d78  ee                       MOV A,R6
CODE:5d79  5f                       ANL A,R7
CODE:5d7a  f0                       MOVX @DPTR,A
LAB_CODE_5d7b:
CODE:5d7b  d2 02                    SETB 0x02   ; XREF: CODE:5c4c CODE:5d69 
CODE:5d7d  d2 0f                    SETB 0x0f
LAB_CODE_5d7f:
CODE:5d7f  22                       RET   ; XREF: CODE:5b3d CODE:5b6f CODE:5bad CODE:5bf5 CODE:5c1c CODE:5c28 CODE:5c61 CODE:5d45 CODE:5d4e 

; ===== FUNCTION FUN_CODE_5fcc @ CODE:5fcc =====
CODE:5fcc  e5 9a                    MOV A,0x9a   ; XREF: CODE:44f8 
CODE:5fce  30 e2 03                 JNB 0xe2,0x5fd4
CODE:5fd1  02 62 13                 LJMP 0x6213
LAB_CODE_5fd4:
CODE:5fd4  20 2e 03                 JB 0x2e,0x5fda   ; XREF: CODE:5fce 
CODE:5fd7  02 61 0d                 LJMP 0x610d
LAB_CODE_5fda:
CODE:5fda  20 02 03                 JB 0x02,0x5fe0   ; XREF: CODE:5fd4 
CODE:5fdd  02 61 cd                 LJMP 0x61cd
LAB_CODE_5fe0:
CODE:5fe0  c2 02                    CLR 0x02   ; XREF: CODE:5fda 
CODE:5fe2  c2 af                    CLR 0xaf
CODE:5fe4  20 0e 03                 JB 0x0e,0x5fea
CODE:5fe7  02 60 a7                 LJMP 0x60a7
LAB_CODE_5fea:
CODE:5fea  90 09 36                 MOV DPTR,#0x936   ; XREF: CODE:5fe4 
CODE:5fed  74 11                    MOV A,#0x11
CODE:5fef  f0                       MOVX @DPTR,A
CODE:5ff0  a3                       INC DPTR
CODE:5ff1  74 20                    MOV A,#0x20
CODE:5ff3  f0                       MOVX @DPTR,A
CODE:5ff4  90 07 06                 MOV DPTR,#0x706
CODE:5ff7  e0                       MOVX A,@DPTR
CODE:5ff8  b4 ac 02                 CJNE A,#0xac,0x5ffd
CODE:5ffb  e4                       CLR A
CODE:5ffc  f0                       MOVX @DPTR,A
LAB_CODE_5ffd:
CODE:5ffd  90 07 08                 MOV DPTR,#0x708   ; XREF: CODE:5ff8 
CODE:6000  e0                       MOVX A,@DPTR
CODE:6001  b4 ac 02                 CJNE A,#0xac,0x6006
CODE:6004  e4                       CLR A
CODE:6005  f0                       MOVX @DPTR,A
LAB_CODE_6006:
CODE:6006  90 07 09                 MOV DPTR,#0x709   ; XREF: CODE:6001 
CODE:6009  e0                       MOVX A,@DPTR
CODE:600a  b4 ac 02                 CJNE A,#0xac,0x600f
CODE:600d  e4                       CLR A
CODE:600e  f0                       MOVX @DPTR,A
LAB_CODE_600f:
CODE:600f  90 07 0a                 MOV DPTR,#0x70a   ; XREF: CODE:600a 
CODE:6012  e0                       MOVX A,@DPTR
CODE:6013  b4 ac 02                 CJNE A,#0xac,0x6018
CODE:6016  e4                       CLR A
CODE:6017  f0                       MOVX @DPTR,A
LAB_CODE_6018:
CODE:6018  90 07 0b                 MOV DPTR,#0x70b   ; XREF: CODE:6013 
CODE:601b  e0                       MOVX A,@DPTR
CODE:601c  b4 ac 02                 CJNE A,#0xac,0x6021
CODE:601f  e4                       CLR A
CODE:6020  f0                       MOVX @DPTR,A
LAB_CODE_6021:
CODE:6021  90 07 0c                 MOV DPTR,#0x70c   ; XREF: CODE:601c 
CODE:6024  e0                       MOVX A,@DPTR
CODE:6025  b4 ac 02                 CJNE A,#0xac,0x602a
CODE:6028  e4                       CLR A
CODE:6029  f0                       MOVX @DPTR,A
LAB_CODE_602a:
CODE:602a  90 07 0d                 MOV DPTR,#0x70d   ; XREF: CODE:6025 
CODE:602d  e0                       MOVX A,@DPTR
CODE:602e  b4 ac 02                 CJNE A,#0xac,0x6033
CODE:6031  e4                       CLR A
CODE:6032  f0                       MOVX @DPTR,A
LAB_CODE_6033:
CODE:6033  90 07 06                 MOV DPTR,#0x706   ; XREF: CODE:602e 
CODE:6036  e0                       MOVX A,@DPTR
CODE:6037  fe                       MOV R6,A
CODE:6038  90 09 36                 MOV DPTR,#0x936
CODE:603b  e0                       MOVX A,@DPTR
CODE:603c  fc                       MOV R4,A
CODE:603d  a3                       INC DPTR
CODE:603e  e0                       MOVX A,@DPTR
CODE:603f  fd                       MOV R5,A
CODE:6040  f5 82                    MOV DPL,A
CODE:6042  8c 83                    MOV DPH,R4
CODE:6044  ee                       MOV A,R6
CODE:6045  f0                       MOVX @DPTR,A
CODE:6046  8d 82                    MOV DPL,R5
CODE:6048  8c 83                    MOV DPH,R4
CODE:604a  a3                       INC DPTR
CODE:604b  e4                       CLR A
CODE:604c  f0                       MOVX @DPTR,A
CODE:604d  90 07 08                 MOV DPTR,#0x708
CODE:6050  e0                       MOVX A,@DPTR
CODE:6051  8d 82                    MOV DPL,R5
CODE:6053  8c 83                    MOV DPH,R4
CODE:6055  a3                       INC DPTR
CODE:6056  a3                       INC DPTR
CODE:6057  f0                       MOVX @DPTR,A
CODE:6058  90 07 09                 MOV DPTR,#0x709
CODE:605b  e0                       MOVX A,@DPTR
CODE:605c  8d 82                    MOV DPL,R5
CODE:605e  8c 83                    MOV DPH,R4
CODE:6060  a3                       INC DPTR
CODE:6061  a3                       INC DPTR
CODE:6062  a3                       INC DPTR
CODE:6063  f0                       MOVX @DPTR,A
CODE:6064  90 07 0a                 MOV DPTR,#0x70a
CODE:6067  e0                       MOVX A,@DPTR
CODE:6068  fe                       MOV R6,A
CODE:6069  ed                       MOV A,R5
CODE:606a  24 04                    ADD A,#0x4
CODE:606c  f5 82                    MOV DPL,A
CODE:606e  e4                       CLR A
CODE:606f  3c                       ADDC A,R4
CODE:6070  f5 83                    MOV DPH,A
CODE:6072  ee                       MOV A,R6
CODE:6073  f0                       MOVX @DPTR,A
CODE:6074  90 07 0b                 MOV DPTR,#0x70b
CODE:6077  e0                       MOVX A,@DPTR
CODE:6078  fe                       MOV R6,A
CODE:6079  ed                       MOV A,R5
CODE:607a  24 05                    ADD A,#0x5
CODE:607c  f5 82                    MOV DPL,A
CODE:607e  e4                       CLR A
CODE:607f  3c                       ADDC A,R4
CODE:6080  f5 83                    MOV DPH,A
CODE:6082  ee                       MOV A,R6
CODE:6083  f0                       MOVX @DPTR,A
CODE:6084  90 07 0c                 MOV DPTR,#0x70c
CODE:6087  e0                       MOVX A,@DPTR
CODE:6088  fe                       MOV R6,A
CODE:6089  ed                       MOV A,R5
CODE:608a  24 06                    ADD A,#0x6
CODE:608c  f5 82                    MOV DPL,A
CODE:608e  e4                       CLR A
CODE:608f  3c                       ADDC A,R4
CODE:6090  f5 83                    MOV DPH,A
CODE:6092  ee                       MOV A,R6
CODE:6093  f0                       MOVX @DPTR,A
CODE:6094  90 07 0d                 MOV DPTR,#0x70d
CODE:6097  e0                       MOVX A,@DPTR
CODE:6098  fe                       MOV R6,A
CODE:6099  ed                       MOV A,R5
CODE:609a  24 07                    ADD A,#0x7
CODE:609c  f5 82                    MOV DPL,A
CODE:609e  e4                       CLR A
CODE:609f  3c                       ADDC A,R4
CODE:60a0  f5 83                    MOV DPH,A
CODE:60a2  ee                       MOV A,R6
CODE:60a3  f0                       MOVX @DPTR,A
CODE:60a4  75 9c 08                 MOV 0x9c,#0x8
LAB_CODE_60a7:
CODE:60a7  30 0f 3d                 JNB 0x0f,0x60e7   ; XREF: CODE:5fe7 
CODE:60aa  90 09 36                 MOV DPTR,#0x936
CODE:60ad  74 11                    MOV A,#0x11
CODE:60af  f0                       MOVX @DPTR,A
CODE:60b0  a3                       INC DPTR
CODE:60b1  74 80                    MOV A,#0x80
CODE:60b3  f0                       MOVX @DPTR,A
CODE:60b4  90 09 36                 MOV DPTR,#0x936
CODE:60b7  e0                       MOVX A,@DPTR
CODE:60b8  fc                       MOV R4,A
CODE:60b9  a3                       INC DPTR
CODE:60ba  e0                       MOVX A,@DPTR
CODE:60bb  f5 82                    MOV DPL,A
CODE:60bd  8c 83                    MOV DPH,R4
CODE:60bf  74 01                    MOV A,#0x1
CODE:60c1  f0                       MOVX @DPTR,A
CODE:60c2  ff                       MOV R7,A
LAB_CODE_60c3:
CODE:60c3  74 45                    MOV A,#0x45   ; XREF: CODE:60e1 
CODE:60c5  2f                       ADD A,R7
CODE:60c6  f5 82                    MOV DPL,A
CODE:60c8  e4                       CLR A
CODE:60c9  34 07                    ADDC A,#0x7
CODE:60cb  f5 83                    MOV DPH,A
CODE:60cd  e0                       MOVX A,@DPTR
CODE:60ce  fe                       MOV R6,A
CODE:60cf  90 09 36                 MOV DPTR,#0x936
CODE:60d2  e0                       MOVX A,@DPTR
CODE:60d3  fc                       MOV R4,A
CODE:60d4  a3                       INC DPTR
CODE:60d5  e0                       MOVX A,@DPTR
CODE:60d6  2f                       ADD A,R7
CODE:60d7  f5 82                    MOV DPL,A
CODE:60d9  e4                       CLR A
CODE:60da  3c                       ADDC A,R4
CODE:60db  f5 83                    MOV DPH,A
CODE:60dd  ee                       MOV A,R6
CODE:60de  f0                       MOVX @DPTR,A
CODE:60df  0f                       INC R7
CODE:60e0  ef                       MOV A,R7
CODE:60e1  b4 0f df                 CJNE A,#0xf,0x60c3
CODE:60e4  75 9d 0f                 MOV 0x9d,#0xf
LAB_CODE_60e7:
CODE:60e7  30 0e 0c                 JNB 0x0e,0x60f6   ; XREF: CODE:60a7 
CODE:60ea  30 0f 09                 JNB 0x0f,0x60f6
CODE:60ed  c2 0e                    CLR 0x0e
CODE:60ef  c2 0f                    CLR 0x0f
CODE:60f1  43 99 04                 ORL 0x99,#0x4
CODE:60f4  80 0f                    SJMP 0x6105
LAB_CODE_60f6:
CODE:60f6  30 0e 07                 JNB 0x0e,0x6100   ; XREF: CODE:60e7 CODE:60ea 
CODE:60f9  c2 0e                    CLR 0x0e
CODE:60fb  43 99 04                 ORL 0x99,#0x4
CODE:60fe  80 08                    SJMP 0x6108
LAB_CODE_6100:
CODE:6100  30 0f 05                 JNB 0x0f,0x6108   ; XREF: CODE:60f6 
CODE:6103  c2 0f                    CLR 0x0f
LAB_CODE_6105:
CODE:6105  43 9a 04                 ORL 0x9a,#0x4   ; XREF: CODE:60f4 
LAB_CODE_6108:
CODE:6108  d2 af                    SETB 0xaf   ; XREF: CODE:60fe CODE:6100 
CODE:610a  02 61 cd                 LJMP 0x61cd
LAB_CODE_610d:
CODE:610d  20 14 03                 JB 0x14,0x6113   ; XREF: CODE:5fd7 
CODE:6110  02 61 cd                 LJMP 0x61cd
LAB_CODE_6113:
CODE:6113  c2 14                    CLR 0x14   ; XREF: CODE:610d 
CODE:6115  c2 af                    CLR 0xaf
CODE:6117  30 0e 5c                 JNB 0x0e,0x6176
CODE:611a  90 09 36                 MOV DPTR,#0x936
CODE:611d  74 11                    MOV A,#0x11
CODE:611f  f0                       MOVX @DPTR,A
CODE:6120  a3                       INC DPTR
CODE:6121  74 20                    MOV A,#0x20
CODE:6123  f0                       MOVX @DPTR,A
CODE:6124  90 09 36                 MOV DPTR,#0x936
CODE:6127  e0                       MOVX A,@DPTR
CODE:6128  fc                       MOV R4,A
CODE:6129  a3                       INC DPTR
CODE:612a  e0                       MOVX A,@DPTR
CODE:612b  fd                       MOV R5,A
CODE:612c  f5 82                    MOV DPL,A
CODE:612e  8c 83                    MOV DPH,R4
CODE:6130  e4                       CLR A
CODE:6131  f0                       MOVX @DPTR,A
CODE:6132  8d 82                    MOV DPL,R5
CODE:6134  8c 83                    MOV DPH,R4
CODE:6136  a3                       INC DPTR
CODE:6137  f0                       MOVX @DPTR,A
CODE:6138  8d 82                    MOV DPL,R5
CODE:613a  8c 83                    MOV DPH,R4
CODE:613c  a3                       INC DPTR
CODE:613d  a3                       INC DPTR
CODE:613e  f0                       MOVX @DPTR,A
CODE:613f  8d 82                    MOV DPL,R5
CODE:6141  8c 83                    MOV DPH,R4
CODE:6143  a3                       INC DPTR
CODE:6144  a3                       INC DPTR
CODE:6145  a3                       INC DPTR
CODE:6146  f0                       MOVX @DPTR,A
CODE:6147  ed                       MOV A,R5
CODE:6148  24 04                    ADD A,#0x4
CODE:614a  f5 82                    MOV DPL,A
CODE:614c  e4                       CLR A
CODE:614d  3c                       ADDC A,R4
CODE:614e  f5 83                    MOV DPH,A
CODE:6150  e4                       CLR A
CODE:6151  f0                       MOVX @DPTR,A
CODE:6152  ed                       MOV A,R5
CODE:6153  24 05                    ADD A,#0x5
CODE:6155  f5 82                    MOV DPL,A
CODE:6157  e4                       CLR A
CODE:6158  3c                       ADDC A,R4
CODE:6159  f5 83                    MOV DPH,A
CODE:615b  e4                       CLR A
CODE:615c  f0                       MOVX @DPTR,A
CODE:615d  ed                       MOV A,R5
CODE:615e  24 06                    ADD A,#0x6
CODE:6160  f5 82                    MOV DPL,A
CODE:6162  e4                       CLR A
CODE:6163  3c                       ADDC A,R4
CODE:6164  f5 83                    MOV DPH,A
CODE:6166  e4                       CLR A
CODE:6167  f0                       MOVX @DPTR,A
CODE:6168  ed                       MOV A,R5
CODE:6169  24 07                    ADD A,#0x7
CODE:616b  f5 82                    MOV DPL,A
CODE:616d  e4                       CLR A
CODE:616e  3c                       ADDC A,R4
CODE:616f  f5 83                    MOV DPH,A
CODE:6171  e4                       CLR A
CODE:6172  f0                       MOVX @DPTR,A
CODE:6173  75 9c 08                 MOV 0x9c,#0x8
LAB_CODE_6176:
CODE:6176  30 0f 31                 JNB 0x0f,0x61aa   ; XREF: CODE:6117 
CODE:6179  90 09 36                 MOV DPTR,#0x936
CODE:617c  74 11                    MOV A,#0x11
CODE:617e  f0                       MOVX @DPTR,A
CODE:617f  a3                       INC DPTR
CODE:6180  74 80                    MOV A,#0x80
CODE:6182  f0                       MOVX @DPTR,A
CODE:6183  90 09 36                 MOV DPTR,#0x936
CODE:6186  e0                       MOVX A,@DPTR
CODE:6187  fe                       MOV R6,A
CODE:6188  a3                       INC DPTR
CODE:6189  e0                       MOVX A,@DPTR
CODE:618a  f5 82                    MOV DPL,A
CODE:618c  8e 83                    MOV DPH,R6
CODE:618e  74 01                    MOV A,#0x1
CODE:6190  f0                       MOVX @DPTR,A
CODE:6191  ff                       MOV R7,A
LAB_CODE_6192:
CODE:6192  90 09 36                 MOV DPTR,#0x936   ; XREF: CODE:61a4 
CODE:6195  e0                       MOVX A,@DPTR
CODE:6196  fc                       MOV R4,A
CODE:6197  a3                       INC DPTR
CODE:6198  e0                       MOVX A,@DPTR
CODE:6199  2f                       ADD A,R7
CODE:619a  f5 82                    MOV DPL,A
CODE:619c  e4                       CLR A
CODE:619d  3c                       ADDC A,R4
CODE:619e  f5 83                    MOV DPH,A
CODE:61a0  e4                       CLR A
CODE:61a1  f0                       MOVX @DPTR,A
CODE:61a2  0f                       INC R7
CODE:61a3  ef                       MOV A,R7
CODE:61a4  b4 10 eb                 CJNE A,#0x10,0x6192
CODE:61a7  75 9d 10                 MOV 0x9d,#0x10
LAB_CODE_61aa:
CODE:61aa  30 0e 0c                 JNB 0x0e,0x61b9   ; XREF: CODE:6176 
CODE:61ad  30 0f 09                 JNB 0x0f,0x61b9
CODE:61b0  c2 0e                    CLR 0x0e
CODE:61b2  c2 0f                    CLR 0x0f
CODE:61b4  43 99 04                 ORL 0x99,#0x4
CODE:61b7  80 0f                    SJMP 0x61c8
LAB_CODE_61b9:
CODE:61b9  30 0e 07                 JNB 0x0e,0x61c3   ; XREF: CODE:61aa CODE:61ad 
CODE:61bc  c2 0e                    CLR 0x0e
CODE:61be  43 99 04                 ORL 0x99,#0x4
CODE:61c1  80 08                    SJMP 0x61cb
LAB_CODE_61c3:
CODE:61c3  30 0f 05                 JNB 0x0f,0x61cb   ; XREF: CODE:61b9 
CODE:61c6  c2 0f                    CLR 0x0f
LAB_CODE_61c8:
CODE:61c8  43 9a 04                 ORL 0x9a,#0x4   ; XREF: CODE:61b7 
LAB_CODE_61cb:
CODE:61cb  d2 af                    SETB 0xaf   ; XREF: CODE:61c1 CODE:61c3 
LAB_CODE_61cd:
CODE:61cd  30 03 43                 JNB 0x03,0x6213   ; XREF: CODE:5fdd CODE:610a CODE:6110 
CODE:61d0  c2 03                    CLR 0x03
CODE:61d2  c2 af                    CLR 0xaf
CODE:61d4  90 09 36                 MOV DPTR,#0x936
CODE:61d7  74 11                    MOV A,#0x11
CODE:61d9  f0                       MOVX @DPTR,A
CODE:61da  a3                       INC DPTR
CODE:61db  74 80                    MOV A,#0x80
CODE:61dd  f0                       MOVX @DPTR,A
CODE:61de  90 09 36                 MOV DPTR,#0x936
CODE:61e1  e0                       MOVX A,@DPTR
CODE:61e2  fc                       MOV R4,A
CODE:61e3  a3                       INC DPTR
CODE:61e4  e0                       MOVX A,@DPTR
CODE:61e5  fd                       MOV R5,A
CODE:61e6  f5 82                    MOV DPL,A
CODE:61e8  8c 83                    MOV DPH,R4
CODE:61ea  74 02                    MOV A,#0x2
CODE:61ec  f0                       MOVX @DPTR,A
CODE:61ed  90 07 cb                 MOV DPTR,#0x7cb
CODE:61f0  e0                       MOVX A,@DPTR
CODE:61f1  8d 82                    MOV DPL,R5
CODE:61f3  8c 83                    MOV DPH,R4
CODE:61f5  a3                       INC DPTR
CODE:61f6  f0                       MOVX @DPTR,A
CODE:61f7  90 07 cc                 MOV DPTR,#0x7cc
CODE:61fa  e0                       MOVX A,@DPTR
CODE:61fb  fe                       MOV R6,A
CODE:61fc  90 09 36                 MOV DPTR,#0x936
CODE:61ff  e0                       MOVX A,@DPTR
CODE:6200  fc                       MOV R4,A
CODE:6201  a3                       INC DPTR
CODE:6202  e0                       MOVX A,@DPTR
CODE:6203  f5 82                    MOV DPL,A
CODE:6205  8c 83                    MOV DPH,R4
CODE:6207  a3                       INC DPTR
CODE:6208  a3                       INC DPTR
CODE:6209  ee                       MOV A,R6
CODE:620a  f0                       MOVX @DPTR,A
CODE:620b  75 9d 03                 MOV 0x9d,#0x3
CODE:620e  43 9a 04                 ORL 0x9a,#0x4
CODE:6211  d2 af                    SETB 0xaf
LAB_CODE_6213:
CODE:6213  22                       RET   ; XREF: CODE:5fd1 CODE:61cd 

; ===== FUNCTION FUN_CODE_6214 @ CODE:6214 =====
CODE:6214  90 ff 80                 MOV DPTR,#0xff80   ; XREF: CODE:c09e 
CODE:6217  74 90                    MOV A,#0x90
CODE:6219  f0                       MOVX @DPTR,A
CODE:621a  a3                       INC DPTR
CODE:621b  74 10                    MOV A,#0x10
CODE:621d  f0                       MOVX @DPTR,A
CODE:621e  a3                       INC DPTR
CODE:621f  f0                       MOVX @DPTR,A
CODE:6220  a3                       INC DPTR
CODE:6221  f0                       MOVX @DPTR,A
CODE:6222  a3                       INC DPTR
CODE:6223  f0                       MOVX @DPTR,A
CODE:6224  a3                       INC DPTR
CODE:6225  f0                       MOVX @DPTR,A
CODE:6226  90 ff 9c                 MOV DPTR,#0xff9c
CODE:6229  e4                       CLR A
CODE:622a  f0                       MOVX @DPTR,A
CODE:622b  90 ff 98                 MOV DPTR,#0xff98
CODE:622e  74 ff                    MOV A,#0xff
CODE:6230  f0                       MOVX @DPTR,A
CODE:6231  90 ff b8                 MOV DPTR,#0xffb8
CODE:6234  e4                       CLR A
CODE:6235  f0                       MOVX @DPTR,A
CODE:6236  90 ff a0                 MOV DPTR,#0xffa0
CODE:6239  f0                       MOVX @DPTR,A
CODE:623a  90 ff e8                 MOV DPTR,#0xffe8
CODE:623d  f0                       MOVX @DPTR,A
CODE:623e  90 ff d0                 MOV DPTR,#0xffd0
CODE:6241  74 ff                    MOV A,#0xff
CODE:6243  f0                       MOVX @DPTR,A
CODE:6244  90 ff b9                 MOV DPTR,#0xffb9
CODE:6247  e4                       CLR A
CODE:6248  f0                       MOVX @DPTR,A
CODE:6249  90 ff a1                 MOV DPTR,#0xffa1
CODE:624c  f0                       MOVX @DPTR,A
CODE:624d  90 ff e9                 MOV DPTR,#0xffe9
CODE:6250  f0                       MOVX @DPTR,A
CODE:6251  90 ff d1                 MOV DPTR,#0xffd1
CODE:6254  74 ff                    MOV A,#0xff
CODE:6256  f0                       MOVX @DPTR,A
CODE:6257  90 ff ba                 MOV DPTR,#0xffba
CODE:625a  e4                       CLR A
CODE:625b  f0                       MOVX @DPTR,A
CODE:625c  90 ff a2                 MOV DPTR,#0xffa2
CODE:625f  f0                       MOVX @DPTR,A
CODE:6260  90 ff ea                 MOV DPTR,#0xffea
CODE:6263  f0                       MOVX @DPTR,A
CODE:6264  90 ff d2                 MOV DPTR,#0xffd2
CODE:6267  74 ff                    MOV A,#0xff
CODE:6269  f0                       MOVX @DPTR,A
CODE:626a  90 ff bb                 MOV DPTR,#0xffbb
CODE:626d  e4                       CLR A
CODE:626e  f0                       MOVX @DPTR,A
CODE:626f  90 ff a3                 MOV DPTR,#0xffa3
CODE:6272  f0                       MOVX @DPTR,A
CODE:6273  90 ff eb                 MOV DPTR,#0xffeb
CODE:6276  f0                       MOVX @DPTR,A
CODE:6277  90 ff d3                 MOV DPTR,#0xffd3
CODE:627a  74 ff                    MOV A,#0xff
CODE:627c  f0                       MOVX @DPTR,A
CODE:627d  90 ff bc                 MOV DPTR,#0xffbc
CODE:6280  e4                       CLR A
CODE:6281  f0                       MOVX @DPTR,A
CODE:6282  90 ff a4                 MOV DPTR,#0xffa4
CODE:6285  f0                       MOVX @DPTR,A
CODE:6286  90 ff ec                 MOV DPTR,#0xffec
CODE:6289  f0                       MOVX @DPTR,A
CODE:628a  90 ff d4                 MOV DPTR,#0xffd4
CODE:628d  74 ff                    MOV A,#0xff
CODE:628f  f0                       MOVX @DPTR,A
CODE:6290  90 ff bd                 MOV DPTR,#0xffbd
CODE:6293  e4                       CLR A
CODE:6294  f0                       MOVX @DPTR,A
CODE:6295  90 ff a5                 MOV DPTR,#0xffa5
CODE:6298  f0                       MOVX @DPTR,A
CODE:6299  90 ff ed                 MOV DPTR,#0xffed
CODE:629c  f0                       MOVX @DPTR,A
CODE:629d  90 ff d5                 MOV DPTR,#0xffd5
CODE:62a0  74 ff                    MOV A,#0xff
CODE:62a2  f0                       MOVX @DPTR,A
CODE:62a3  90 ff 86                 MOV DPTR,#0xff86
CODE:62a6  74 90                    MOV A,#0x90
CODE:62a8  f0                       MOVX @DPTR,A
CODE:62a9  a3                       INC DPTR
CODE:62aa  74 10                    MOV A,#0x10
CODE:62ac  f0                       MOVX @DPTR,A
CODE:62ad  a3                       INC DPTR
CODE:62ae  f0                       MOVX @DPTR,A
CODE:62af  a3                       INC DPTR
CODE:62b0  f0                       MOVX @DPTR,A
CODE:62b1  a3                       INC DPTR
CODE:62b2  f0                       MOVX @DPTR,A
CODE:62b3  a3                       INC DPTR
CODE:62b4  f0                       MOVX @DPTR,A
CODE:62b5  90 ff 9d                 MOV DPTR,#0xff9d
CODE:62b8  e4                       CLR A
CODE:62b9  f0                       MOVX @DPTR,A
CODE:62ba  90 ff 99                 MOV DPTR,#0xff99
CODE:62bd  74 ff                    MOV A,#0xff
CODE:62bf  f0                       MOVX @DPTR,A
CODE:62c0  90 ff be                 MOV DPTR,#0xffbe
CODE:62c3  e4                       CLR A
CODE:62c4  f0                       MOVX @DPTR,A
CODE:62c5  90 ff a6                 MOV DPTR,#0xffa6
CODE:62c8  f0                       MOVX @DPTR,A
CODE:62c9  90 ff ee                 MOV DPTR,#0xffee
CODE:62cc  f0                       MOVX @DPTR,A
CODE:62cd  90 ff d6                 MOV DPTR,#0xffd6
CODE:62d0  74 ff                    MOV A,#0xff
CODE:62d2  f0                       MOVX @DPTR,A
CODE:62d3  90 ff bf                 MOV DPTR,#0xffbf
CODE:62d6  e4                       CLR A
CODE:62d7  f0                       MOVX @DPTR,A
CODE:62d8  90 ff a7                 MOV DPTR,#0xffa7
CODE:62db  f0                       MOVX @DPTR,A
CODE:62dc  90 ff ef                 MOV DPTR,#0xffef
CODE:62df  f0                       MOVX @DPTR,A
CODE:62e0  90 ff d7                 MOV DPTR,#0xffd7
CODE:62e3  74 ff                    MOV A,#0xff
CODE:62e5  f0                       MOVX @DPTR,A
CODE:62e6  90 ff c0                 MOV DPTR,#0xffc0
CODE:62e9  e4                       CLR A
CODE:62ea  f0                       MOVX @DPTR,A
CODE:62eb  90 ff a8                 MOV DPTR,#0xffa8
CODE:62ee  f0                       MOVX @DPTR,A
CODE:62ef  90 ff f0                 MOV DPTR,#0xfff0
CODE:62f2  f0                       MOVX @DPTR,A
CODE:62f3  90 ff d8                 MOV DPTR,#0xffd8
CODE:62f6  74 ff                    MOV A,#0xff
CODE:62f8  f0                       MOVX @DPTR,A
CODE:62f9  90 ff c1                 MOV DPTR,#0xffc1
CODE:62fc  e4                       CLR A
CODE:62fd  f0                       MOVX @DPTR,A
CODE:62fe  90 ff a9                 MOV DPTR,#0xffa9
CODE:6301  f0                       MOVX @DPTR,A
CODE:6302  90 ff f1                 MOV DPTR,#0xfff1
CODE:6305  f0                       MOVX @DPTR,A
CODE:6306  90 ff d9                 MOV DPTR,#0xffd9
CODE:6309  74 ff                    MOV A,#0xff
CODE:630b  f0                       MOVX @DPTR,A
CODE:630c  90 ff c2                 MOV DPTR,#0xffc2
CODE:630f  e4                       CLR A
CODE:6310  f0                       MOVX @DPTR,A
CODE:6311  90 ff aa                 MOV DPTR,#0xffaa
CODE:6314  f0                       MOVX @DPTR,A
CODE:6315  90 ff f2                 MOV DPTR,#0xfff2
CODE:6318  f0                       MOVX @DPTR,A
CODE:6319  90 ff da                 MOV DPTR,#0xffda
CODE:631c  74 ff                    MOV A,#0xff
CODE:631e  f0                       MOVX @DPTR,A
CODE:631f  90 ff c3                 MOV DPTR,#0xffc3
CODE:6322  e4                       CLR A
CODE:6323  f0                       MOVX @DPTR,A
CODE:6324  90 ff ab                 MOV DPTR,#0xffab
CODE:6327  f0                       MOVX @DPTR,A
CODE:6328  90 ff f3                 MOV DPTR,#0xfff3
CODE:632b  f0                       MOVX @DPTR,A
CODE:632c  90 ff db                 MOV DPTR,#0xffdb
CODE:632f  74 ff                    MOV A,#0xff
CODE:6331  f0                       MOVX @DPTR,A
CODE:6332  90 ff 8c                 MOV DPTR,#0xff8c
CODE:6335  74 90                    MOV A,#0x90
CODE:6337  f0                       MOVX @DPTR,A
CODE:6338  a3                       INC DPTR
CODE:6339  74 10                    MOV A,#0x10
CODE:633b  f0                       MOVX @DPTR,A
CODE:633c  a3                       INC DPTR
CODE:633d  f0                       MOVX @DPTR,A
CODE:633e  a3                       INC DPTR
CODE:633f  f0                       MOVX @DPTR,A
CODE:6340  a3                       INC DPTR
CODE:6341  f0                       MOVX @DPTR,A
CODE:6342  a3                       INC DPTR
CODE:6343  f0                       MOVX @DPTR,A
CODE:6344  90 ff 9e                 MOV DPTR,#0xff9e
CODE:6347  e4                       CLR A
CODE:6348  f0                       MOVX @DPTR,A
CODE:6349  90 ff 9a                 MOV DPTR,#0xff9a
CODE:634c  74 ff                    MOV A,#0xff
CODE:634e  f0                       MOVX @DPTR,A
CODE:634f  90 ff c4                 MOV DPTR,#0xffc4
CODE:6352  e4                       CLR A
CODE:6353  f0                       MOVX @DPTR,A
CODE:6354  90 ff ac                 MOV DPTR,#0xffac
CODE:6357  f0                       MOVX @DPTR,A
CODE:6358  90 ff f4                 MOV DPTR,#0xfff4
CODE:635b  f0                       MOVX @DPTR,A
CODE:635c  90 ff dc                 MOV DPTR,#0xffdc
CODE:635f  74 ff                    MOV A,#0xff
CODE:6361  f0                       MOVX @DPTR,A
CODE:6362  90 ff c5                 MOV DPTR,#0xffc5
CODE:6365  e4                       CLR A
CODE:6366  f0                       MOVX @DPTR,A
CODE:6367  90 ff ad                 MOV DPTR,#0xffad
CODE:636a  f0                       MOVX @DPTR,A
CODE:636b  90 ff f5                 MOV DPTR,#0xfff5
CODE:636e  f0                       MOVX @DPTR,A
CODE:636f  90 ff dd                 MOV DPTR,#0xffdd
CODE:6372  74 ff                    MOV A,#0xff
CODE:6374  f0                       MOVX @DPTR,A
CODE:6375  90 ff c6                 MOV DPTR,#0xffc6
CODE:6378  e4                       CLR A
CODE:6379  f0                       MOVX @DPTR,A
CODE:637a  90 ff ae                 MOV DPTR,#0xffae
CODE:637d  f0                       MOVX @DPTR,A
CODE:637e  90 ff f6                 MOV DPTR,#0xfff6
CODE:6381  f0                       MOVX @DPTR,A
CODE:6382  90 ff de                 MOV DPTR,#0xffde
CODE:6385  74 ff                    MOV A,#0xff
CODE:6387  f0                       MOVX @DPTR,A
CODE:6388  90 ff c7                 MOV DPTR,#0xffc7
CODE:638b  e4                       CLR A
CODE:638c  f0                       MOVX @DPTR,A
CODE:638d  90 ff af                 MOV DPTR,#0xffaf
CODE:6390  f0                       MOVX @DPTR,A
CODE:6391  90 ff f7                 MOV DPTR,#0xfff7
CODE:6394  f0                       MOVX @DPTR,A
CODE:6395  90 ff df                 MOV DPTR,#0xffdf
CODE:6398  74 ff                    MOV A,#0xff
CODE:639a  f0                       MOVX @DPTR,A
CODE:639b  90 ff c8                 MOV DPTR,#0xffc8
CODE:639e  e4                       CLR A
CODE:639f  f0                       MOVX @DPTR,A
CODE:63a0  90 ff b0                 MOV DPTR,#0xffb0
CODE:63a3  f0                       MOVX @DPTR,A
CODE:63a4  90 ff f8                 MOV DPTR,#0xfff8
CODE:63a7  f0                       MOVX @DPTR,A
CODE:63a8  90 ff e0                 MOV DPTR,#0xffe0
CODE:63ab  74 ff                    MOV A,#0xff
CODE:63ad  f0                       MOVX @DPTR,A
CODE:63ae  90 ff c9                 MOV DPTR,#0xffc9
CODE:63b1  e4                       CLR A
CODE:63b2  f0                       MOVX @DPTR,A
CODE:63b3  90 ff b1                 MOV DPTR,#0xffb1
CODE:63b6  f0                       MOVX @DPTR,A
CODE:63b7  90 ff f9                 MOV DPTR,#0xfff9
CODE:63ba  f0                       MOVX @DPTR,A
CODE:63bb  90 ff e1                 MOV DPTR,#0xffe1
CODE:63be  74 ff                    MOV A,#0xff
CODE:63c0  f0                       MOVX @DPTR,A
CODE:63c1  90 ff 92                 MOV DPTR,#0xff92
CODE:63c4  74 90                    MOV A,#0x90
CODE:63c6  f0                       MOVX @DPTR,A
CODE:63c7  a3                       INC DPTR
CODE:63c8  74 10                    MOV A,#0x10
CODE:63ca  f0                       MOVX @DPTR,A
CODE:63cb  a3                       INC DPTR
CODE:63cc  f0                       MOVX @DPTR,A
CODE:63cd  a3                       INC DPTR
CODE:63ce  f0                       MOVX @DPTR,A
CODE:63cf  90 ff 9f                 MOV DPTR,#0xff9f
CODE:63d2  e4                       CLR A
CODE:63d3  f0                       MOVX @DPTR,A
CODE:63d4  90 ff 9b                 MOV DPTR,#0xff9b
CODE:63d7  74 ff                    MOV A,#0xff
CODE:63d9  f0                       MOVX @DPTR,A
CODE:63da  90 ff ca                 MOV DPTR,#0xffca
CODE:63dd  e4                       CLR A
CODE:63de  f0                       MOVX @DPTR,A
CODE:63df  90 ff b2                 MOV DPTR,#0xffb2
CODE:63e2  f0                       MOVX @DPTR,A
CODE:63e3  90 ff fa                 MOV DPTR,#0xfffa
CODE:63e6  f0                       MOVX @DPTR,A
CODE:63e7  90 ff e2                 MOV DPTR,#0xffe2
CODE:63ea  74 ff                    MOV A,#0xff
CODE:63ec  f0                       MOVX @DPTR,A
CODE:63ed  90 ff cb                 MOV DPTR,#0xffcb
CODE:63f0  e4                       CLR A
CODE:63f1  f0                       MOVX @DPTR,A
CODE:63f2  90 ff b3                 MOV DPTR,#0xffb3
CODE:63f5  f0                       MOVX @DPTR,A
CODE:63f6  90 ff fb                 MOV DPTR,#0xfffb
CODE:63f9  f0                       MOVX @DPTR,A
CODE:63fa  90 ff e3                 MOV DPTR,#0xffe3
CODE:63fd  74 ff                    MOV A,#0xff
CODE:63ff  f0                       MOVX @DPTR,A
CODE:6400  90 ff cc                 MOV DPTR,#0xffcc
CODE:6403  e4                       CLR A
CODE:6404  f0                       MOVX @DPTR,A
CODE:6405  90 ff b4                 MOV DPTR,#0xffb4
CODE:6408  f0                       MOVX @DPTR,A
CODE:6409  90 ff fc                 MOV DPTR,#0xfffc
CODE:640c  f0                       MOVX @DPTR,A
CODE:640d  90 ff e4                 MOV DPTR,#0xffe4
CODE:6410  74 ff                    MOV A,#0xff
CODE:6412  f0                       MOVX @DPTR,A
CODE:6413  90 ff cd                 MOV DPTR,#0xffcd
CODE:6416  e4                       CLR A
CODE:6417  f0                       MOVX @DPTR,A
CODE:6418  90 ff b5                 MOV DPTR,#0xffb5
CODE:641b  f0                       MOVX @DPTR,A
CODE:641c  90 ff fd                 MOV DPTR,#0xfffd
CODE:641f  f0                       MOVX @DPTR,A
CODE:6420  90 ff e5                 MOV DPTR,#0xffe5
CODE:6423  74 ff                    MOV A,#0xff
CODE:6425  f0                       MOVX @DPTR,A
CODE:6426  75 da 02                 MOV 0xda,#0x2
CODE:6429  e4                       CLR A
CODE:642a  f5 db                    MOV 0xdb,A
CODE:642c  f5 dc                    MOV 0xdc,A
CODE:642e  f5 de                    MOV 0xde,A
CODE:6430  75 dd 64                 MOV 0xdd,#0x64
CODE:6433  f5 d5                    MOV 0xd5,A
CODE:6435  f5 d2                    MOV 0xd2,A
CODE:6437  f5 c3                    MOV 0xc3,A
CODE:6439  75 ce 32                 MOV 0xce,#0x32
CODE:643c  f5 d6                    MOV 0xd6,A
CODE:643e  f5 d3                    MOV 0xd3,A
CODE:6440  f5 c4                    MOV 0xc4,A
CODE:6442  75 c1 32                 MOV 0xc1,#0x32
CODE:6445  f5 d7                    MOV 0xd7,A
CODE:6447  f5 d4                    MOV 0xd4,A
CODE:6449  f5 c5                    MOV 0xc5,A
CODE:644b  75 c2 32                 MOV 0xc2,#0x32
CODE:644e  22                       RET

; ===== FUNCTION FUN_CODE_667f @ CODE:667f =====
CODE:667f  e4                       CLR A   ; XREF: CODE:7f33 
CODE:6680  78 31                    MOV R0,#0x31
CODE:6682  f6                       MOV @R0,A
LAB_CODE_6683:
CODE:6683  e4                       CLR A   ; XREF: CODE:67e8 
CODE:6684  78 2f                    MOV R0,#0x2f
CODE:6686  f6                       MOV @R0,A
LAB_CODE_6687:
CODE:6687  78 2f                    MOV R0,#0x2f   ; XREF: CODE:67dd 
CODE:6689  e6                       MOV A,@R0
CODE:668a  ff                       MOV R7,A
CODE:668b  c3                       CLR CY
CODE:668c  94 17                    SUBB A,#0x17
CODE:668e  40 03                    JC 0x6693
CODE:6690  02 67 e0                 LJMP 0x67e0
LAB_CODE_6693:
CODE:6693  78 31                    MOV R0,#0x31   ; XREF: CODE:668e 
CODE:6695  e6                       MOV A,@R0
CODE:6696  fe                       MOV R6,A
CODE:6697  75 f0 17                 MOV B,#0x17
CODE:669a  a4                       MUL AB
CODE:669b  2f                       ADD A,R7
CODE:669c  18                       DEC R0
CODE:669d  f6                       MOV @R0,A
CODE:669e  75 f0 02                 MOV B,#0x2
CODE:66a1  a4                       MUL AB
CODE:66a2  24 cb                    ADD A,#0xcb
CODE:66a4  f5 82                    MOV DPL,A
CODE:66a6  e5 f0                    MOV A,B
CODE:66a8  34 03                    ADDC A,#0x3
CODE:66aa  f5 83                    MOV DPH,A
CODE:66ac  e0                       MOVX A,@DPTR
CODE:66ad  fc                       MOV R4,A
CODE:66ae  a3                       INC DPTR
CODE:66af  e0                       MOVX A,@DPTR
CODE:66b0  4c                       ORL A,R4
CODE:66b1  60 03                    JZ 0x66b6
CODE:66b3  02 67 da                 LJMP 0x67da
LAB_CODE_66b6:
CODE:66b6  e6                       MOV A,@R0   ; XREF: CODE:66b1 
CODE:66b7  ff                       MOV R7,A
CODE:66b8  24 8a                    ADD A,#0x8a
CODE:66ba  f5 82                    MOV DPL,A
CODE:66bc  e4                       CLR A
CODE:66bd  34 00                    ADDC A,#0x0
CODE:66bf  f5 83                    MOV DPH,A
CODE:66c1  e0                       MOVX A,@DPTR
CODE:66c2  70 4e                    JNZ 0x6712
CODE:66c4  74 9c                    MOV A,#0x9c
CODE:66c6  2f                       ADD A,R7
CODE:66c7  f5 82                    MOV DPL,A
CODE:66c9  e4                       CLR A
CODE:66ca  34 02                    ADDC A,#0x2
CODE:66cc  f5 83                    MOV DPH,A
CODE:66ce  e0                       MOVX A,@DPTR
CODE:66cf  90 00 56                 MOV DPTR,#0x56
CODE:66d2  93                       MOVC A,@A+DPTR
CODE:66d3  fd                       MOV R5,A
CODE:66d4  74 f6                    MOV A,#0xf6
CODE:66d6  2f                       ADD A,R7
CODE:66d7  f5 82                    MOV DPL,A
CODE:66d9  e4                       CLR A
CODE:66da  34 01                    ADDC A,#0x1
CODE:66dc  f5 83                    MOV DPH,A
CODE:66de  ed                       MOV A,R5
CODE:66df  f0                       MOVX @DPTR,A
CODE:66e0  e6                       MOV A,@R0
CODE:66e1  ff                       MOV R7,A
CODE:66e2  24 9c                    ADD A,#0x9c
CODE:66e4  f5 82                    MOV DPL,A
CODE:66e6  e4                       CLR A
CODE:66e7  34 02                    ADDC A,#0x2
CODE:66e9  f5 83                    MOV DPH,A
CODE:66eb  e0                       MOVX A,@DPTR
CODE:66ec  24 18                    ADD A,#0x18
CODE:66ee  f0                       MOVX @DPTR,A
CODE:66ef  74 9c                    MOV A,#0x9c
CODE:66f1  2f                       ADD A,R7
CODE:66f2  f5 82                    MOV DPL,A
CODE:66f4  e4                       CLR A
CODE:66f5  34 02                    ADDC A,#0x2
CODE:66f7  f5 83                    MOV DPH,A
CODE:66f9  e0                       MOVX A,@DPTR
CODE:66fa  c3                       CLR CY
CODE:66fb  94 64                    SUBB A,#0x64
CODE:66fd  50 03                    JNC 0x6702
CODE:66ff  02 67 da                 LJMP 0x67da
LAB_CODE_6702:
CODE:6702  e6                       MOV A,@R0   ; XREF: CODE:66fd 
CODE:6703  24 8a                    ADD A,#0x8a
CODE:6705  f5 82                    MOV DPL,A
CODE:6707  e4                       CLR A
CODE:6708  34 00                    ADDC A,#0x0
CODE:670a  f5 83                    MOV DPH,A
CODE:670c  74 01                    MOV A,#0x1
CODE:670e  f0                       MOVX @DPTR,A
CODE:670f  02 67 da                 LJMP 0x67da
LAB_CODE_6712:
CODE:6712  78 30                    MOV R0,#0x30   ; XREF: CODE:66c2 
CODE:6714  e6                       MOV A,@R0
CODE:6715  ff                       MOV R7,A
CODE:6716  24 9c                    ADD A,#0x9c
CODE:6718  f5 82                    MOV DPL,A
CODE:671a  e4                       CLR A
CODE:671b  34 02                    ADDC A,#0x2
CODE:671d  f5 83                    MOV DPH,A
CODE:671f  e0                       MOVX A,@DPTR
CODE:6720  24 fc                    ADD A,#0xfc
CODE:6722  f0                       MOVX @DPTR,A
CODE:6723  74 9c                    MOV A,#0x9c
CODE:6725  2f                       ADD A,R7
CODE:6726  f5 82                    MOV DPL,A
CODE:6728  e4                       CLR A
CODE:6729  34 02                    ADDC A,#0x2
CODE:672b  f5 83                    MOV DPH,A
CODE:672d  e0                       MOVX A,@DPTR
CODE:672e  90 00 56                 MOV DPTR,#0x56
CODE:6731  93                       MOVC A,@A+DPTR
CODE:6732  ff                       MOV R7,A
CODE:6733  e6                       MOV A,@R0
CODE:6734  fd                       MOV R5,A
CODE:6735  24 f6                    ADD A,#0xf6
CODE:6737  f5 82                    MOV DPL,A
CODE:6739  e4                       CLR A
CODE:673a  34 01                    ADDC A,#0x1
CODE:673c  f5 83                    MOV DPH,A
CODE:673e  ef                       MOV A,R7
CODE:673f  f0                       MOVX @DPTR,A
CODE:6740  74 9c                    MOV A,#0x9c
CODE:6742  2d                       ADD A,R5
CODE:6743  f5 82                    MOV DPL,A
CODE:6745  e4                       CLR A
CODE:6746  34 02                    ADDC A,#0x2
CODE:6748  f5 83                    MOV DPH,A
CODE:674a  e0                       MOVX A,@DPTR
CODE:674b  c3                       CLR CY
CODE:674c  94 0a                    SUBB A,#0xa
CODE:674e  40 03                    JC 0x6753
CODE:6750  02 67 da                 LJMP 0x67da
LAB_CODE_6753:
CODE:6753  e6                       MOV A,@R0   ; XREF: CODE:674e 
CODE:6754  ff                       MOV R7,A
CODE:6755  24 9c                    ADD A,#0x9c
CODE:6757  f5 82                    MOV DPL,A
CODE:6759  e4                       CLR A
CODE:675a  34 02                    ADDC A,#0x2
CODE:675c  f5 83                    MOV DPH,A
CODE:675e  e4                       CLR A
CODE:675f  f0                       MOVX @DPTR,A
CODE:6760  74 f6                    MOV A,#0xf6
CODE:6762  2f                       ADD A,R7
CODE:6763  f5 82                    MOV DPL,A
CODE:6765  e4                       CLR A
CODE:6766  34 01                    ADDC A,#0x1
CODE:6768  f5 83                    MOV DPH,A
CODE:676a  e4                       CLR A
CODE:676b  f0                       MOVX @DPTR,A
CODE:676c  74 8a                    MOV A,#0x8a
CODE:676e  2f                       ADD A,R7
CODE:676f  f5 82                    MOV DPL,A
CODE:6771  e4                       CLR A
CODE:6772  34 00                    ADDC A,#0x0
CODE:6774  f5 83                    MOV DPH,A
CODE:6776  e4                       CLR A
CODE:6777  f0                       MOVX @DPTR,A
CODE:6778  75 f0 02                 MOV B,#0x2
CODE:677b  ef                       MOV A,R7
CODE:677c  a4                       MUL AB
CODE:677d  24 cb                    ADD A,#0xcb
CODE:677f  f5 82                    MOV DPL,A
CODE:6781  e5 f0                    MOV A,B
CODE:6783  34 03                    ADDC A,#0x3
CODE:6785  f5 83                    MOV DPH,A
CODE:6787  e4                       CLR A
CODE:6788  f0                       MOVX @DPTR,A
CODE:6789  a3                       INC DPTR
CODE:678a  74 ff                    MOV A,#0xff
CODE:678c  f0                       MOVX @DPTR,A
CODE:678d  90 09 88                 MOV DPTR,#0x988
CODE:6790  e0                       MOVX A,@DPTR
CODE:6791  70 47                    JNZ 0x67da
CODE:6793  ee                       MOV A,R6
CODE:6794  b4 01 0f                 CJNE A,#0x1,0x67a6
CODE:6797  18                       DEC R0
CODE:6798  e6                       MOV A,@R0
CODE:6799  ff                       MOV R7,A
CODE:679a  d3                       SETB CY
CODE:679b  94 09                    SUBB A,#0x9
CODE:679d  40 3b                    JC 0x67da
CODE:679f  ef                       MOV A,R7
CODE:67a0  94 0e                    SUBB A,#0xe
CODE:67a2  50 36                    JNC 0x67da
CODE:67a4  80 1f                    SJMP 0x67c5
LAB_CODE_67a6:
CODE:67a6  78 31                    MOV R0,#0x31   ; XREF: CODE:6794 
CODE:67a8  e6                       MOV A,@R0
CODE:67a9  ff                       MOV R7,A
CODE:67aa  64 02                    XRL A,#0x2
CODE:67ac  60 09                    JZ 0x67b7
CODE:67ae  ef                       MOV A,R7
CODE:67af  64 03                    XRL A,#0x3
CODE:67b1  60 04                    JZ 0x67b7
CODE:67b3  ef                       MOV A,R7
CODE:67b4  b4 04 23                 CJNE A,#0x4,0x67da
LAB_CODE_67b7:
CODE:67b7  78 2f                    MOV R0,#0x2f   ; XREF: CODE:67ac CODE:67b1 
CODE:67b9  e6                       MOV A,@R0
CODE:67ba  ff                       MOV R7,A
CODE:67bb  d3                       SETB CY
CODE:67bc  94 08                    SUBB A,#0x8
CODE:67be  40 1a                    JC 0x67da
CODE:67c0  ef                       MOV A,R7
CODE:67c1  94 0e                    SUBB A,#0xe
CODE:67c3  50 15                    JNC 0x67da
LAB_CODE_67c5:
CODE:67c5  08                       INC R0   ; XREF: CODE:67a4 
CODE:67c6  e6                       MOV A,@R0
CODE:67c7  75 f0 02                 MOV B,#0x2
CODE:67ca  a4                       MUL AB
CODE:67cb  24 cb                    ADD A,#0xcb
CODE:67cd  f5 82                    MOV DPL,A
CODE:67cf  e5 f0                    MOV A,B
CODE:67d1  34 03                    ADDC A,#0x3
CODE:67d3  f5 83                    MOV DPH,A
CODE:67d5  e4                       CLR A
CODE:67d6  f0                       MOVX @DPTR,A
CODE:67d7  a3                       INC DPTR
CODE:67d8  04                       INC A
CODE:67d9  f0                       MOVX @DPTR,A
LAB_CODE_67da:
CODE:67da  78 2f                    MOV R0,#0x2f   ; XREF: CODE:66b3 CODE:66ff CODE:670f CODE:6750 CODE:6791 CODE:679d CODE:67a2 CODE:67b4 CODE:67be CODE:67c3 
CODE:67dc  06                       INC @R0
CODE:67dd  02 66 87                 LJMP 0x6687
LAB_CODE_67e0:
CODE:67e0  78 31                    MOV R0,#0x31   ; XREF: CODE:6690 
CODE:67e2  06                       INC @R0
CODE:67e3  e6                       MOV A,@R0
CODE:67e4  64 06                    XRL A,#0x6
CODE:67e6  60 03                    JZ 0x67eb
CODE:67e8  02 66 83                 LJMP 0x6683
LAB_CODE_67eb:
CODE:67eb  78 5a                    MOV R0,#0x5a   ; XREF: CODE:67e6 
CODE:67ed  06                       INC @R0
CODE:67ee  e6                       MOV A,@R0
CODE:67ef  d3                       SETB CY
CODE:67f0  94 04                    SUBB A,#0x4
CODE:67f2  50 03                    JNC 0x67f7
CODE:67f4  02 68 8d                 LJMP 0x688d
LAB_CODE_67f7:
CODE:67f7  e4                       CLR A   ; XREF: CODE:67f2 
CODE:67f8  f6                       MOV @R0,A
CODE:67f9  78 30                    MOV R0,#0x30
CODE:67fb  f6                       MOV @R0,A
LAB_CODE_67fc:
CODE:67fc  78 30                    MOV R0,#0x30   ; XREF: CODE:688a 
CODE:67fe  e6                       MOV A,@R0
CODE:67ff  ff                       MOV R7,A
CODE:6800  c3                       CLR CY
CODE:6801  94 8a                    SUBB A,#0x8a
CODE:6803  40 03                    JC 0x6808
CODE:6805  02 68 8d                 LJMP 0x688d
LAB_CODE_6808:
CODE:6808  75 f0 02                 MOV B,#0x2   ; XREF: CODE:6803 
CODE:680b  ef                       MOV A,R7
CODE:680c  a4                       MUL AB
CODE:680d  24 cb                    ADD A,#0xcb
CODE:680f  f5 82                    MOV DPL,A
CODE:6811  e5 f0                    MOV A,B
CODE:6813  34 03                    ADDC A,#0x3
CODE:6815  f5 83                    MOV DPH,A
CODE:6817  e0                       MOVX A,@DPTR
CODE:6818  fe                       MOV R6,A
CODE:6819  a3                       INC DPTR
CODE:681a  e0                       MOVX A,@DPTR
CODE:681b  ff                       MOV R7,A
CODE:681c  d3                       SETB CY
CODE:681d  94 00                    SUBB A,#0x0
CODE:681f  ee                       MOV A,R6
CODE:6820  94 00                    SUBB A,#0x0
CODE:6822  40 63                    JC 0x6887
CODE:6824  ef                       MOV A,R7
CODE:6825  f4                       CPL A
CODE:6826  4e                       ORL A,R6
CODE:6827  60 5e                    JZ 0x6887
CODE:6829  e6                       MOV A,@R0
CODE:682a  ff                       MOV R7,A
CODE:682b  75 f0 02                 MOV B,#0x2
CODE:682e  a4                       MUL AB
CODE:682f  24 cb                    ADD A,#0xcb
CODE:6831  f5 82                    MOV DPL,A
CODE:6833  e5 f0                    MOV A,B
CODE:6835  34 03                    ADDC A,#0x3
CODE:6837  f5 83                    MOV DPH,A
CODE:6839  74 ff                    MOV A,#0xff
CODE:683b  f5 f0                    MOV B,A
CODE:683d  12 80 f2                 LCALL 0x80f2
CODE:6840  75 f0 02                 MOV B,#0x2
CODE:6843  ef                       MOV A,R7
CODE:6844  a4                       MUL AB
CODE:6845  24 cb                    ADD A,#0xcb
CODE:6847  f5 82                    MOV DPL,A
CODE:6849  e5 f0                    MOV A,B
CODE:684b  34 03                    ADDC A,#0x3
CODE:684d  f5 83                    MOV DPH,A
CODE:684f  e0                       MOVX A,@DPTR
CODE:6850  fe                       MOV R6,A
CODE:6851  a3                       INC DPTR
CODE:6852  e0                       MOVX A,@DPTR
CODE:6853  4e                       ORL A,R6
CODE:6854  70 31                    JNZ 0x6887
CODE:6856  12 b7 9e                 LCALL 0xb79e
CODE:6859  78 30                    MOV R0,#0x30
CODE:685b  e6                       MOV A,@R0
CODE:685c  fe                       MOV R6,A
CODE:685d  24 31                    ADD A,#0x31
CODE:685f  f5 82                    MOV DPL,A
CODE:6861  e4                       CLR A
CODE:6862  34 03                    ADDC A,#0x3
CODE:6864  f5 83                    MOV DPH,A
CODE:6866  ef                       MOV A,R7
CODE:6867  f0                       MOVX @DPTR,A
CODE:6868  74 31                    MOV A,#0x31
CODE:686a  2e                       ADD A,R6
CODE:686b  f5 82                    MOV DPL,A
CODE:686d  e4                       CLR A
CODE:686e  34 03                    ADDC A,#0x3
CODE:6870  f5 83                    MOV DPH,A
CODE:6872  e0                       MOVX A,@DPTR
CODE:6873  fd                       MOV R5,A
CODE:6874  7f ff                    MOV R7,#0xff
CODE:6876  12 9f 11                 LCALL 0x9f11
CODE:6879  78 30                    MOV R0,#0x30
CODE:687b  e6                       MOV A,@R0
CODE:687c  24 5c                    ADD A,#0x5c
CODE:687e  f5 82                    MOV DPL,A
CODE:6880  e4                       CLR A
CODE:6881  34 01                    ADDC A,#0x1
CODE:6883  f5 83                    MOV DPH,A
CODE:6885  ef                       MOV A,R7
CODE:6886  f0                       MOVX @DPTR,A
LAB_CODE_6887:
CODE:6887  78 30                    MOV R0,#0x30   ; XREF: CODE:6822 CODE:6827 CODE:6854 
CODE:6889  06                       INC @R0
CODE:688a  02 67 fc                 LJMP 0x67fc
LAB_CODE_688d:
CODE:688d  22                       RET   ; XREF: CODE:67f4 CODE:6805 

; ===== FUNCTION FUN_CODE_688e @ CODE:688e =====
CODE:688e  90 08 f5                 MOV DPTR,#0x8f5   ; XREF: CODE:302b 
CODE:6891  ef                       MOV A,R7
CODE:6892  f0                       MOVX @DPTR,A
CODE:6893  12 bb dd                 LCALL 0xbbdd
CODE:6896  75 c0 ff                 MOV 0xc0,#0xff
CODE:6899  43 88 87                 ORL 0x88,#0x87
CODE:689c  43 b0 7f                 ORL 0xb0,#0x7f
CODE:689f  d2 fc                    SETB 0xfc
CODE:68a1  43 80 e0                 ORL 0x80,#0xe0
CODE:68a4  90 08 f5                 MOV DPTR,#0x8f5
CODE:68a7  e0                       MOVX A,@DPTR
CODE:68a8  ff                       MOV R7,A
CODE:68a9  24 f6                    ADD A,#0xf6
CODE:68ab  f5 82                    MOV DPL,A
CODE:68ad  e4                       CLR A
CODE:68ae  34 04                    ADDC A,#0x4
CODE:68b0  f5 83                    MOV DPH,A
CODE:68b2  e0                       MOVX A,@DPTR
CODE:68b3  90 ff a0                 MOV DPTR,#0xffa0
CODE:68b6  f0                       MOVX @DPTR,A
CODE:68b7  74 8b                    MOV A,#0x8b
CODE:68b9  2f                       ADD A,R7
CODE:68ba  f5 82                    MOV DPL,A
CODE:68bc  e4                       CLR A
CODE:68bd  34 05                    ADDC A,#0x5
CODE:68bf  f5 83                    MOV DPH,A
CODE:68c1  e0                       MOVX A,@DPTR
CODE:68c2  90 ff a1                 MOV DPTR,#0xffa1
CODE:68c5  f0                       MOVX @DPTR,A
CODE:68c6  90 08 f5                 MOV DPTR,#0x8f5
CODE:68c9  e0                       MOVX A,@DPTR
CODE:68ca  ff                       MOV R7,A
CODE:68cb  24 20                    ADD A,#0x20
CODE:68cd  f5 82                    MOV DPL,A
CODE:68cf  e4                       CLR A
CODE:68d0  34 06                    ADDC A,#0x6
CODE:68d2  f5 83                    MOV DPH,A
CODE:68d4  e0                       MOVX A,@DPTR
CODE:68d5  90 ff a2                 MOV DPTR,#0xffa2
CODE:68d8  f0                       MOVX @DPTR,A
CODE:68d9  74 0d                    MOV A,#0xd
CODE:68db  2f                       ADD A,R7
CODE:68dc  f5 82                    MOV DPL,A
CODE:68de  e4                       CLR A
CODE:68df  34 05                    ADDC A,#0x5
CODE:68e1  f5 83                    MOV DPH,A
CODE:68e3  e0                       MOVX A,@DPTR
CODE:68e4  90 ff a3                 MOV DPTR,#0xffa3
CODE:68e7  f0                       MOVX @DPTR,A
CODE:68e8  90 08 f5                 MOV DPTR,#0x8f5
CODE:68eb  e0                       MOVX A,@DPTR
CODE:68ec  ff                       MOV R7,A
CODE:68ed  24 a2                    ADD A,#0xa2
CODE:68ef  f5 82                    MOV DPL,A
CODE:68f1  e4                       CLR A
CODE:68f2  34 05                    ADDC A,#0x5
CODE:68f4  f5 83                    MOV DPH,A
CODE:68f6  e0                       MOVX A,@DPTR
CODE:68f7  90 ff a4                 MOV DPTR,#0xffa4
CODE:68fa  f0                       MOVX @DPTR,A
CODE:68fb  74 37                    MOV A,#0x37
CODE:68fd  2f                       ADD A,R7
CODE:68fe  f5 82                    MOV DPL,A
CODE:6900  e4                       CLR A
CODE:6901  34 06                    ADDC A,#0x6
CODE:6903  f5 83                    MOV DPH,A
CODE:6905  e0                       MOVX A,@DPTR
CODE:6906  90 ff a5                 MOV DPTR,#0xffa5
CODE:6909  f0                       MOVX @DPTR,A
CODE:690a  90 08 f5                 MOV DPTR,#0x8f5
CODE:690d  e0                       MOVX A,@DPTR
CODE:690e  ff                       MOV R7,A
CODE:690f  24 24                    ADD A,#0x24
CODE:6911  f5 82                    MOV DPL,A
CODE:6913  e4                       CLR A
CODE:6914  34 05                    ADDC A,#0x5
CODE:6916  f5 83                    MOV DPH,A
CODE:6918  e0                       MOVX A,@DPTR
CODE:6919  90 ff a6                 MOV DPTR,#0xffa6
CODE:691c  f0                       MOVX @DPTR,A
CODE:691d  74 b9                    MOV A,#0xb9
CODE:691f  2f                       ADD A,R7
CODE:6920  f5 82                    MOV DPL,A
CODE:6922  e4                       CLR A
CODE:6923  34 05                    ADDC A,#0x5
CODE:6925  f5 83                    MOV DPH,A
CODE:6927  e0                       MOVX A,@DPTR
CODE:6928  90 ff a7                 MOV DPTR,#0xffa7
CODE:692b  f0                       MOVX @DPTR,A
CODE:692c  90 08 f5                 MOV DPTR,#0x8f5
CODE:692f  e0                       MOVX A,@DPTR
CODE:6930  ff                       MOV R7,A
CODE:6931  24 4e                    ADD A,#0x4e
CODE:6933  f5 82                    MOV DPL,A
CODE:6935  e4                       CLR A
CODE:6936  34 06                    ADDC A,#0x6
CODE:6938  f5 83                    MOV DPH,A
CODE:693a  e0                       MOVX A,@DPTR
CODE:693b  90 ff a8                 MOV DPTR,#0xffa8
CODE:693e  f0                       MOVX @DPTR,A
CODE:693f  74 3b                    MOV A,#0x3b
CODE:6941  2f                       ADD A,R7
CODE:6942  f5 82                    MOV DPL,A
CODE:6944  e4                       CLR A
CODE:6945  34 05                    ADDC A,#0x5
CODE:6947  f5 83                    MOV DPH,A
CODE:6949  e0                       MOVX A,@DPTR
CODE:694a  90 ff a9                 MOV DPTR,#0xffa9
CODE:694d  f0                       MOVX @DPTR,A
CODE:694e  90 08 f5                 MOV DPTR,#0x8f5
CODE:6951  e0                       MOVX A,@DPTR
CODE:6952  ff                       MOV R7,A
CODE:6953  24 d0                    ADD A,#0xd0
CODE:6955  f5 82                    MOV DPL,A
CODE:6957  e4                       CLR A
CODE:6958  34 05                    ADDC A,#0x5
CODE:695a  f5 83                    MOV DPH,A
CODE:695c  e0                       MOVX A,@DPTR
CODE:695d  90 ff aa                 MOV DPTR,#0xffaa
CODE:6960  f0                       MOVX @DPTR,A
CODE:6961  74 65                    MOV A,#0x65
CODE:6963  2f                       ADD A,R7
CODE:6964  f5 82                    MOV DPL,A
CODE:6966  e4                       CLR A
CODE:6967  34 06                    ADDC A,#0x6
CODE:6969  f5 83                    MOV DPH,A
CODE:696b  e0                       MOVX A,@DPTR
CODE:696c  90 ff ab                 MOV DPTR,#0xffab
CODE:696f  f0                       MOVX @DPTR,A
CODE:6970  90 08 f5                 MOV DPTR,#0x8f5
CODE:6973  e0                       MOVX A,@DPTR
CODE:6974  ff                       MOV R7,A
CODE:6975  24 52                    ADD A,#0x52
CODE:6977  f5 82                    MOV DPL,A
CODE:6979  e4                       CLR A
CODE:697a  34 05                    ADDC A,#0x5
CODE:697c  f5 83                    MOV DPH,A
CODE:697e  e0                       MOVX A,@DPTR
CODE:697f  90 ff ac                 MOV DPTR,#0xffac
CODE:6982  f0                       MOVX @DPTR,A
CODE:6983  74 e7                    MOV A,#0xe7
CODE:6985  2f                       ADD A,R7
CODE:6986  f5 82                    MOV DPL,A
CODE:6988  e4                       CLR A
CODE:6989  34 05                    ADDC A,#0x5
CODE:698b  f5 83                    MOV DPH,A
CODE:698d  e0                       MOVX A,@DPTR
CODE:698e  90 ff ad                 MOV DPTR,#0xffad
CODE:6991  f0                       MOVX @DPTR,A
CODE:6992  90 08 f5                 MOV DPTR,#0x8f5
CODE:6995  e0                       MOVX A,@DPTR
CODE:6996  ff                       MOV R7,A
CODE:6997  24 7c                    ADD A,#0x7c
CODE:6999  f5 82                    MOV DPL,A
CODE:699b  e4                       CLR A
CODE:699c  34 06                    ADDC A,#0x6
CODE:699e  f5 83                    MOV DPH,A
CODE:69a0  e0                       MOVX A,@DPTR
CODE:69a1  90 ff ae                 MOV DPTR,#0xffae
CODE:69a4  f0                       MOVX @DPTR,A
CODE:69a5  74 69                    MOV A,#0x69
CODE:69a7  2f                       ADD A,R7
CODE:69a8  f5 82                    MOV DPL,A
CODE:69aa  e4                       CLR A
CODE:69ab  34 05                    ADDC A,#0x5
CODE:69ad  f5 83                    MOV DPH,A
CODE:69af  e0                       MOVX A,@DPTR
CODE:69b0  90 ff af                 MOV DPTR,#0xffaf
CODE:69b3  f0                       MOVX @DPTR,A
CODE:69b4  90 08 f5                 MOV DPTR,#0x8f5
CODE:69b7  e0                       MOVX A,@DPTR
CODE:69b8  ff                       MOV R7,A
CODE:69b9  24 fe                    ADD A,#0xfe
CODE:69bb  f5 82                    MOV DPL,A
CODE:69bd  e4                       CLR A
CODE:69be  34 05                    ADDC A,#0x5
CODE:69c0  f5 83                    MOV DPH,A
CODE:69c2  e0                       MOVX A,@DPTR
CODE:69c3  90 ff b0                 MOV DPTR,#0xffb0
CODE:69c6  f0                       MOVX @DPTR,A
CODE:69c7  74 93                    MOV A,#0x93
CODE:69c9  2f                       ADD A,R7
CODE:69ca  f5 82                    MOV DPL,A
CODE:69cc  e4                       CLR A
CODE:69cd  34 06                    ADDC A,#0x6
CODE:69cf  f5 83                    MOV DPH,A
CODE:69d1  e0                       MOVX A,@DPTR
CODE:69d2  90 ff b1                 MOV DPTR,#0xffb1
CODE:69d5  f0                       MOVX @DPTR,A
CODE:69d6  00                       NOP
CODE:69d7  00                       NOP
CODE:69d8  00                       NOP
CODE:69d9  12 bd f7                 LCALL 0xbdf7
CODE:69dc  7f 01                    MOV R7,#0x1
CODE:69de  7e 00                    MOV R6,#0x0
CODE:69e0  12 bd 5a                 LCALL 0xbd5a
CODE:69e3  90 08 f5                 MOV DPTR,#0x8f5
CODE:69e6  e0                       MOVX A,@DPTR
CODE:69e7  b4 17 00                 CJNE A,#0x17,0x69ea
LAB_CODE_69ea:
CODE:69ea  40 03                    JC 0x69ef   ; XREF: CODE:69e7 
CODE:69ec  02 6a 8d                 LJMP 0x6a8d
LAB_CODE_69ef:
CODE:69ef  90 69 f6                 MOV DPTR,#0x69f6   ; XREF: CODE:69ea 
CODE:69f2  f8                       MOV R0,A
CODE:69f3  28                       ADD A,R0
CODE:69f4  28                       ADD A,R0
CODE:69f5  73                       JMP @A+DPTR
LAB_CODE_6a8d:
CODE:6a8d  22                       RET   ; XREF: CODE:69ec 

; ===== FUNCTION FUN_CODE_6a8e @ CODE:6a8e =====
CODE:6a8e  e4                       CLR A   ; XREF: CODE:7f50 
CODE:6a8f  78 31                    MOV R0,#0x31
CODE:6a91  f6                       MOV @R0,A
LAB_CODE_6a92:
CODE:6a92  e4                       CLR A   ; XREF: CODE:6bcf 
CODE:6a93  78 2f                    MOV R0,#0x2f
CODE:6a95  f6                       MOV @R0,A
LAB_CODE_6a96:
CODE:6a96  78 2f                    MOV R0,#0x2f   ; XREF: CODE:6bc4 
CODE:6a98  e6                       MOV A,@R0
CODE:6a99  ff                       MOV R7,A
CODE:6a9a  c3                       CLR CY
CODE:6a9b  94 17                    SUBB A,#0x17
CODE:6a9d  40 03                    JC 0x6aa2
CODE:6a9f  02 6b c7                 LJMP 0x6bc7
LAB_CODE_6aa2:
CODE:6aa2  78 31                    MOV R0,#0x31   ; XREF: CODE:6a9d 
CODE:6aa4  e6                       MOV A,@R0
CODE:6aa5  75 f0 17                 MOV B,#0x17
CODE:6aa8  a4                       MUL AB
CODE:6aa9  2f                       ADD A,R7
CODE:6aaa  18                       DEC R0
CODE:6aab  f6                       MOV @R0,A
CODE:6aac  75 f0 02                 MOV B,#0x2
CODE:6aaf  a4                       MUL AB
CODE:6ab0  24 cb                    ADD A,#0xcb
CODE:6ab2  f5 82                    MOV DPL,A
CODE:6ab4  e5 f0                    MOV A,B
CODE:6ab6  34 03                    ADDC A,#0x3
CODE:6ab8  f5 83                    MOV DPH,A
CODE:6aba  e0                       MOVX A,@DPTR
CODE:6abb  fe                       MOV R6,A
CODE:6abc  a3                       INC DPTR
CODE:6abd  e0                       MOVX A,@DPTR
CODE:6abe  4e                       ORL A,R6
CODE:6abf  60 03                    JZ 0x6ac4
CODE:6ac1  02 6b c1                 LJMP 0x6bc1
LAB_CODE_6ac4:
CODE:6ac4  e6                       MOV A,@R0   ; XREF: CODE:6abf 
CODE:6ac5  ff                       MOV R7,A
CODE:6ac6  24 8a                    ADD A,#0x8a
CODE:6ac8  f5 82                    MOV DPL,A
CODE:6aca  e4                       CLR A
CODE:6acb  34 00                    ADDC A,#0x0
CODE:6acd  f5 83                    MOV DPH,A
CODE:6acf  e0                       MOVX A,@DPTR
CODE:6ad0  70 4e                    JNZ 0x6b20
CODE:6ad2  74 9c                    MOV A,#0x9c
CODE:6ad4  2f                       ADD A,R7
CODE:6ad5  f5 82                    MOV DPL,A
CODE:6ad7  e4                       CLR A
CODE:6ad8  34 02                    ADDC A,#0x2
CODE:6ada  f5 83                    MOV DPH,A
CODE:6adc  e0                       MOVX A,@DPTR
CODE:6add  90 00 56                 MOV DPTR,#0x56
CODE:6ae0  93                       MOVC A,@A+DPTR
CODE:6ae1  fe                       MOV R6,A
CODE:6ae2  74 f6                    MOV A,#0xf6
CODE:6ae4  2f                       ADD A,R7
CODE:6ae5  f5 82                    MOV DPL,A
CODE:6ae7  e4                       CLR A
CODE:6ae8  34 01                    ADDC A,#0x1
CODE:6aea  f5 83                    MOV DPH,A
CODE:6aec  ee                       MOV A,R6
CODE:6aed  f0                       MOVX @DPTR,A
CODE:6aee  e6                       MOV A,@R0
CODE:6aef  ff                       MOV R7,A
CODE:6af0  24 9c                    ADD A,#0x9c
CODE:6af2  f5 82                    MOV DPL,A
CODE:6af4  e4                       CLR A
CODE:6af5  34 02                    ADDC A,#0x2
CODE:6af7  f5 83                    MOV DPH,A
CODE:6af9  e0                       MOVX A,@DPTR
CODE:6afa  24 0a                    ADD A,#0xa
CODE:6afc  f0                       MOVX @DPTR,A
CODE:6afd  74 9c                    MOV A,#0x9c
CODE:6aff  2f                       ADD A,R7
CODE:6b00  f5 82                    MOV DPL,A
CODE:6b02  e4                       CLR A
CODE:6b03  34 02                    ADDC A,#0x2
CODE:6b05  f5 83                    MOV DPH,A
CODE:6b07  e0                       MOVX A,@DPTR
CODE:6b08  c3                       CLR CY
CODE:6b09  94 64                    SUBB A,#0x64
CODE:6b0b  50 03                    JNC 0x6b10
CODE:6b0d  02 6b c1                 LJMP 0x6bc1
LAB_CODE_6b10:
CODE:6b10  e6                       MOV A,@R0   ; XREF: CODE:6b0b 
CODE:6b11  24 8a                    ADD A,#0x8a
CODE:6b13  f5 82                    MOV DPL,A
CODE:6b15  e4                       CLR A
CODE:6b16  34 00                    ADDC A,#0x0
CODE:6b18  f5 83                    MOV DPH,A
CODE:6b1a  74 01                    MOV A,#0x1
CODE:6b1c  f0                       MOVX @DPTR,A
CODE:6b1d  02 6b c1                 LJMP 0x6bc1
LAB_CODE_6b20:
CODE:6b20  78 30                    MOV R0,#0x30   ; XREF: CODE:6ad0 
CODE:6b22  e6                       MOV A,@R0
CODE:6b23  ff                       MOV R7,A
CODE:6b24  24 9c                    ADD A,#0x9c
CODE:6b26  f5 82                    MOV DPL,A
CODE:6b28  e4                       CLR A
CODE:6b29  34 02                    ADDC A,#0x2
CODE:6b2b  f5 83                    MOV DPH,A
CODE:6b2d  e0                       MOVX A,@DPTR
CODE:6b2e  24 fc                    ADD A,#0xfc
CODE:6b30  f0                       MOVX @DPTR,A
CODE:6b31  74 9c                    MOV A,#0x9c
CODE:6b33  2f                       ADD A,R7
CODE:6b34  f5 82                    MOV DPL,A
CODE:6b36  e4                       CLR A
CODE:6b37  34 02                    ADDC A,#0x2
CODE:6b39  f5 83                    MOV DPH,A
CODE:6b3b  e0                       MOVX A,@DPTR
CODE:6b3c  90 00 56                 MOV DPTR,#0x56
CODE:6b3f  93                       MOVC A,@A+DPTR
CODE:6b40  ff                       MOV R7,A
CODE:6b41  e6                       MOV A,@R0
CODE:6b42  fe                       MOV R6,A
CODE:6b43  24 f6                    ADD A,#0xf6
CODE:6b45  f5 82                    MOV DPL,A
CODE:6b47  e4                       CLR A
CODE:6b48  34 01                    ADDC A,#0x1
CODE:6b4a  f5 83                    MOV DPH,A
CODE:6b4c  ef                       MOV A,R7
CODE:6b4d  f0                       MOVX @DPTR,A
CODE:6b4e  74 9c                    MOV A,#0x9c
CODE:6b50  2e                       ADD A,R6
CODE:6b51  f5 82                    MOV DPL,A
CODE:6b53  e4                       CLR A
CODE:6b54  34 02                    ADDC A,#0x2
CODE:6b56  f5 83                    MOV DPH,A
CODE:6b58  e0                       MOVX A,@DPTR
CODE:6b59  c3                       CLR CY
CODE:6b5a  94 0a                    SUBB A,#0xa
CODE:6b5c  50 63                    JNC 0x6bc1
CODE:6b5e  e6                       MOV A,@R0
CODE:6b5f  ff                       MOV R7,A
CODE:6b60  24 9c                    ADD A,#0x9c
CODE:6b62  f5 82                    MOV DPL,A
CODE:6b64  e4                       CLR A
CODE:6b65  34 02                    ADDC A,#0x2
CODE:6b67  f5 83                    MOV DPH,A
CODE:6b69  e4                       CLR A
CODE:6b6a  f0                       MOVX @DPTR,A
CODE:6b6b  74 f6                    MOV A,#0xf6
CODE:6b6d  2f                       ADD A,R7
CODE:6b6e  f5 82                    MOV DPL,A
CODE:6b70  e4                       CLR A
CODE:6b71  34 01                    ADDC A,#0x1
CODE:6b73  f5 83                    MOV DPH,A
CODE:6b75  e4                       CLR A
CODE:6b76  f0                       MOVX @DPTR,A
CODE:6b77  74 8a                    MOV A,#0x8a
CODE:6b79  2f                       ADD A,R7
CODE:6b7a  f5 82                    MOV DPL,A
CODE:6b7c  e4                       CLR A
CODE:6b7d  34 00                    ADDC A,#0x0
CODE:6b7f  f5 83                    MOV DPH,A
CODE:6b81  e4                       CLR A
CODE:6b82  f0                       MOVX @DPTR,A
CODE:6b83  78 6b                    MOV R0,#0x6b
CODE:6b85  e6                       MOV A,@R0
CODE:6b86  c3                       CLR CY
CODE:6b87  94 02                    SUBB A,#0x2
CODE:6b89  75 f0 02                 MOV B,#0x2
CODE:6b8c  ee                       MOV A,R6
CODE:6b8d  40 13                    JC 0x6ba2
CODE:6b8f  a4                       MUL AB
CODE:6b90  24 cb                    ADD A,#0xcb
CODE:6b92  f5 82                    MOV DPL,A
CODE:6b94  e5 f0                    MOV A,B
CODE:6b96  34 03                    ADDC A,#0x3
CODE:6b98  f5 83                    MOV DPH,A
CODE:6b9a  e4                       CLR A
CODE:6b9b  f0                       MOVX @DPTR,A
CODE:6b9c  a3                       INC DPTR
CODE:6b9d  74 ff                    MOV A,#0xff
CODE:6b9f  f0                       MOVX @DPTR,A
CODE:6ba0  80 10                    SJMP 0x6bb2
LAB_CODE_6ba2:
CODE:6ba2  a4                       MUL AB   ; XREF: CODE:6b8d 
CODE:6ba3  24 cb                    ADD A,#0xcb
CODE:6ba5  f5 82                    MOV DPL,A
CODE:6ba7  e5 f0                    MOV A,B
CODE:6ba9  34 03                    ADDC A,#0x3
CODE:6bab  f5 83                    MOV DPH,A
CODE:6bad  e4                       CLR A
CODE:6bae  f0                       MOVX @DPTR,A
CODE:6baf  a3                       INC DPTR
CODE:6bb0  04                       INC A
CODE:6bb1  f0                       MOVX @DPTR,A
LAB_CODE_6bb2:
CODE:6bb2  90 04 3d                 MOV DPTR,#0x43d   ; XREF: CODE:6ba0 
CODE:6bb5  e0                       MOVX A,@DPTR
CODE:6bb6  70 04                    JNZ 0x6bbc
CODE:6bb8  a3                       INC DPTR
CODE:6bb9  e0                       MOVX A,@DPTR
CODE:6bba  64 01                    XRL A,#0x1
LAB_CODE_6bbc:
CODE:6bbc  70 03                    JNZ 0x6bc1   ; XREF: CODE:6bb6 
CODE:6bbe  78 6b                    MOV R0,#0x6b
CODE:6bc0  06                       INC @R0
LAB_CODE_6bc1:
CODE:6bc1  78 2f                    MOV R0,#0x2f   ; XREF: CODE:6ac1 CODE:6b0d CODE:6b1d CODE:6b5c CODE:6bbc 
CODE:6bc3  06                       INC @R0
CODE:6bc4  02 6a 96                 LJMP 0x6a96
LAB_CODE_6bc7:
CODE:6bc7  78 31                    MOV R0,#0x31   ; XREF: CODE:6a9f 
CODE:6bc9  06                       INC @R0
CODE:6bca  e6                       MOV A,@R0
CODE:6bcb  64 06                    XRL A,#0x6
CODE:6bcd  60 03                    JZ 0x6bd2
CODE:6bcf  02 6a 92                 LJMP 0x6a92
LAB_CODE_6bd2:
CODE:6bd2  78 5a                    MOV R0,#0x5a   ; XREF: CODE:6bcd 
CODE:6bd4  06                       INC @R0
CODE:6bd5  e6                       MOV A,@R0
CODE:6bd6  d3                       SETB CY
CODE:6bd7  94 04                    SUBB A,#0x4
CODE:6bd9  50 03                    JNC 0x6bde
CODE:6bdb  02 6c 74                 LJMP 0x6c74
LAB_CODE_6bde:
CODE:6bde  e4                       CLR A   ; XREF: CODE:6bd9 
CODE:6bdf  f6                       MOV @R0,A
CODE:6be0  78 30                    MOV R0,#0x30
CODE:6be2  f6                       MOV @R0,A
LAB_CODE_6be3:
CODE:6be3  78 30                    MOV R0,#0x30   ; XREF: CODE:6c71 
CODE:6be5  e6                       MOV A,@R0
CODE:6be6  ff                       MOV R7,A
CODE:6be7  c3                       CLR CY
CODE:6be8  94 8a                    SUBB A,#0x8a
CODE:6bea  40 03                    JC 0x6bef
CODE:6bec  02 6c 74                 LJMP 0x6c74
LAB_CODE_6bef:
CODE:6bef  75 f0 02                 MOV B,#0x2   ; XREF: CODE:6bea 
CODE:6bf2  ef                       MOV A,R7
CODE:6bf3  a4                       MUL AB
CODE:6bf4  24 cb                    ADD A,#0xcb
CODE:6bf6  f5 82                    MOV DPL,A
CODE:6bf8  e5 f0                    MOV A,B
CODE:6bfa  34 03                    ADDC A,#0x3
CODE:6bfc  f5 83                    MOV DPH,A
CODE:6bfe  e0                       MOVX A,@DPTR
CODE:6bff  fe                       MOV R6,A
CODE:6c00  a3                       INC DPTR
CODE:6c01  e0                       MOVX A,@DPTR
CODE:6c02  ff                       MOV R7,A
CODE:6c03  d3                       SETB CY
CODE:6c04  94 00                    SUBB A,#0x0
CODE:6c06  ee                       MOV A,R6
CODE:6c07  94 00                    SUBB A,#0x0
CODE:6c09  40 63                    JC 0x6c6e
CODE:6c0b  ef                       MOV A,R7
CODE:6c0c  f4                       CPL A
CODE:6c0d  4e                       ORL A,R6
CODE:6c0e  60 5e                    JZ 0x6c6e
CODE:6c10  e6                       MOV A,@R0
CODE:6c11  ff                       MOV R7,A
CODE:6c12  75 f0 02                 MOV B,#0x2
CODE:6c15  a4                       MUL AB
CODE:6c16  24 cb                    ADD A,#0xcb
CODE:6c18  f5 82                    MOV DPL,A
CODE:6c1a  e5 f0                    MOV A,B
CODE:6c1c  34 03                    ADDC A,#0x3
CODE:6c1e  f5 83                    MOV DPH,A
CODE:6c20  74 ff                    MOV A,#0xff
CODE:6c22  f5 f0                    MOV B,A
CODE:6c24  12 80 f2                 LCALL 0x80f2
CODE:6c27  75 f0 02                 MOV B,#0x2
CODE:6c2a  ef                       MOV A,R7
CODE:6c2b  a4                       MUL AB
CODE:6c2c  24 cb                    ADD A,#0xcb
CODE:6c2e  f5 82                    MOV DPL,A
CODE:6c30  e5 f0                    MOV A,B
CODE:6c32  34 03                    ADDC A,#0x3
CODE:6c34  f5 83                    MOV DPH,A
CODE:6c36  e0                       MOVX A,@DPTR
CODE:6c37  fe                       MOV R6,A
CODE:6c38  a3                       INC DPTR
CODE:6c39  e0                       MOVX A,@DPTR
CODE:6c3a  4e                       ORL A,R6
CODE:6c3b  70 31                    JNZ 0x6c6e
CODE:6c3d  12 b7 9e                 LCALL 0xb79e
CODE:6c40  78 30                    MOV R0,#0x30
CODE:6c42  e6                       MOV A,@R0
CODE:6c43  fe                       MOV R6,A
CODE:6c44  24 31                    ADD A,#0x31
CODE:6c46  f5 82                    MOV DPL,A
CODE:6c48  e4                       CLR A
CODE:6c49  34 03                    ADDC A,#0x3
CODE:6c4b  f5 83                    MOV DPH,A
CODE:6c4d  ef                       MOV A,R7
CODE:6c4e  f0                       MOVX @DPTR,A
CODE:6c4f  74 31                    MOV A,#0x31
CODE:6c51  2e                       ADD A,R6
CODE:6c52  f5 82                    MOV DPL,A
CODE:6c54  e4                       CLR A
CODE:6c55  34 03                    ADDC A,#0x3
CODE:6c57  f5 83                    MOV DPH,A
CODE:6c59  e0                       MOVX A,@DPTR
CODE:6c5a  fd                       MOV R5,A
CODE:6c5b  7f ff                    MOV R7,#0xff
CODE:6c5d  12 9f 11                 LCALL 0x9f11
CODE:6c60  78 30                    MOV R0,#0x30
CODE:6c62  e6                       MOV A,@R0
CODE:6c63  24 5c                    ADD A,#0x5c
CODE:6c65  f5 82                    MOV DPL,A
CODE:6c67  e4                       CLR A
CODE:6c68  34 01                    ADDC A,#0x1
CODE:6c6a  f5 83                    MOV DPH,A
CODE:6c6c  ef                       MOV A,R7
CODE:6c6d  f0                       MOVX @DPTR,A
LAB_CODE_6c6e:
CODE:6c6e  78 30                    MOV R0,#0x30   ; XREF: CODE:6c09 CODE:6c0e CODE:6c3b 
CODE:6c70  06                       INC @R0
CODE:6c71  02 6b e3                 LJMP 0x6be3
LAB_CODE_6c74:
CODE:6c74  22                       RET   ; XREF: CODE:6bdb CODE:6bec 

; ===== FUNCTION FUN_CODE_6e45 @ CODE:6e45 =====
CODE:6e45  e4                       CLR A   ; XREF: CODE:7549 
CODE:6e46  90 08 fa                 MOV DPTR,#0x8fa
CODE:6e49  f0                       MOVX @DPTR,A
LAB_CODE_6e4a:
CODE:6e4a  90 08 fa                 MOV DPTR,#0x8fa   ; XREF: CODE:6f59 
CODE:6e4d  e0                       MOVX A,@DPTR
CODE:6e4e  ff                       MOV R7,A
CODE:6e4f  c3                       CLR CY
CODE:6e50  94 8a                    SUBB A,#0x8a
CODE:6e52  40 03                    JC 0x6e57
CODE:6e54  02 6f 5c                 LJMP 0x6f5c
LAB_CODE_6e57:
CODE:6e57  75 f0 02                 MOV B,#0x2   ; XREF: CODE:6e52 
CODE:6e5a  ef                       MOV A,R7
CODE:6e5b  a4                       MUL AB
CODE:6e5c  24 cb                    ADD A,#0xcb
CODE:6e5e  f5 82                    MOV DPL,A
CODE:6e60  e5 f0                    MOV A,B
CODE:6e62  34 03                    ADDC A,#0x3
CODE:6e64  f5 83                    MOV DPH,A
CODE:6e66  e0                       MOVX A,@DPTR
CODE:6e67  fe                       MOV R6,A
CODE:6e68  a3                       INC DPTR
CODE:6e69  e0                       MOVX A,@DPTR
CODE:6e6a  4e                       ORL A,R6
CODE:6e6b  60 03                    JZ 0x6e70
CODE:6e6d  02 6f 53                 LJMP 0x6f53
LAB_CODE_6e70:
CODE:6e70  90 08 fa                 MOV DPTR,#0x8fa   ; XREF: CODE:6e6b 
CODE:6e73  e0                       MOVX A,@DPTR
CODE:6e74  24 8a                    ADD A,#0x8a
CODE:6e76  f5 82                    MOV DPL,A
CODE:6e78  e4                       CLR A
CODE:6e79  34 00                    ADDC A,#0x0
CODE:6e7b  f5 83                    MOV DPH,A
CODE:6e7d  e0                       MOVX A,@DPTR
CODE:6e7e  70 54                    JNZ 0x6ed4
CODE:6e80  74 9c                    MOV A,#0x9c
CODE:6e82  2f                       ADD A,R7
CODE:6e83  f5 82                    MOV DPL,A
CODE:6e85  e4                       CLR A
CODE:6e86  34 02                    ADDC A,#0x2
CODE:6e88  f5 83                    MOV DPH,A
CODE:6e8a  e0                       MOVX A,@DPTR
CODE:6e8b  90 00 56                 MOV DPTR,#0x56
CODE:6e8e  93                       MOVC A,@A+DPTR
CODE:6e8f  fe                       MOV R6,A
CODE:6e90  74 f6                    MOV A,#0xf6
CODE:6e92  2f                       ADD A,R7
CODE:6e93  f5 82                    MOV DPL,A
CODE:6e95  e4                       CLR A
CODE:6e96  34 01                    ADDC A,#0x1
CODE:6e98  f5 83                    MOV DPH,A
CODE:6e9a  ee                       MOV A,R6
CODE:6e9b  f0                       MOVX @DPTR,A
CODE:6e9c  90 08 fa                 MOV DPTR,#0x8fa
CODE:6e9f  e0                       MOVX A,@DPTR
CODE:6ea0  ff                       MOV R7,A
CODE:6ea1  24 9c                    ADD A,#0x9c
CODE:6ea3  f5 82                    MOV DPL,A
CODE:6ea5  e4                       CLR A
CODE:6ea6  34 02                    ADDC A,#0x2
CODE:6ea8  f5 83                    MOV DPH,A
CODE:6eaa  e0                       MOVX A,@DPTR
CODE:6eab  24 14                    ADD A,#0x14
CODE:6ead  f0                       MOVX @DPTR,A
CODE:6eae  74 9c                    MOV A,#0x9c
CODE:6eb0  2f                       ADD A,R7
CODE:6eb1  f5 82                    MOV DPL,A
CODE:6eb3  e4                       CLR A
CODE:6eb4  34 02                    ADDC A,#0x2
CODE:6eb6  f5 83                    MOV DPH,A
CODE:6eb8  e0                       MOVX A,@DPTR
CODE:6eb9  c3                       CLR CY
CODE:6eba  94 64                    SUBB A,#0x64
CODE:6ebc  50 03                    JNC 0x6ec1
CODE:6ebe  02 6f 53                 LJMP 0x6f53
LAB_CODE_6ec1:
CODE:6ec1  90 08 fa                 MOV DPTR,#0x8fa   ; XREF: CODE:6ebc 
CODE:6ec4  e0                       MOVX A,@DPTR
CODE:6ec5  24 8a                    ADD A,#0x8a
CODE:6ec7  f5 82                    MOV DPL,A
CODE:6ec9  e4                       CLR A
CODE:6eca  34 00                    ADDC A,#0x0
CODE:6ecc  f5 83                    MOV DPH,A
CODE:6ece  74 01                    MOV A,#0x1
CODE:6ed0  f0                       MOVX @DPTR,A
CODE:6ed1  02 6f 53                 LJMP 0x6f53
LAB_CODE_6ed4:
CODE:6ed4  90 08 fa                 MOV DPTR,#0x8fa   ; XREF: CODE:6e7e 
CODE:6ed7  e0                       MOVX A,@DPTR
CODE:6ed8  ff                       MOV R7,A
CODE:6ed9  24 9c                    ADD A,#0x9c
CODE:6edb  f5 82                    MOV DPL,A
CODE:6edd  e4                       CLR A
CODE:6ede  34 02                    ADDC A,#0x2
CODE:6ee0  f5 83                    MOV DPH,A
CODE:6ee2  e0                       MOVX A,@DPTR
CODE:6ee3  24 fb                    ADD A,#0xfb
CODE:6ee5  f0                       MOVX @DPTR,A
CODE:6ee6  74 9c                    MOV A,#0x9c
CODE:6ee8  2f                       ADD A,R7
CODE:6ee9  f5 82                    MOV DPL,A
CODE:6eeb  e4                       CLR A
CODE:6eec  34 02                    ADDC A,#0x2
CODE:6eee  f5 83                    MOV DPH,A
CODE:6ef0  e0                       MOVX A,@DPTR
CODE:6ef1  90 00 56                 MOV DPTR,#0x56
CODE:6ef4  93                       MOVC A,@A+DPTR
CODE:6ef5  ff                       MOV R7,A
CODE:6ef6  90 08 fa                 MOV DPTR,#0x8fa
CODE:6ef9  e0                       MOVX A,@DPTR
CODE:6efa  fe                       MOV R6,A
CODE:6efb  24 f6                    ADD A,#0xf6
CODE:6efd  f5 82                    MOV DPL,A
CODE:6eff  e4                       CLR A
CODE:6f00  34 01                    ADDC A,#0x1
CODE:6f02  f5 83                    MOV DPH,A
CODE:6f04  ef                       MOV A,R7
CODE:6f05  f0                       MOVX @DPTR,A
CODE:6f06  74 9c                    MOV A,#0x9c
CODE:6f08  2e                       ADD A,R6
CODE:6f09  f5 82                    MOV DPL,A
CODE:6f0b  e4                       CLR A
CODE:6f0c  34 02                    ADDC A,#0x2
CODE:6f0e  f5 83                    MOV DPH,A
CODE:6f10  e0                       MOVX A,@DPTR
CODE:6f11  c3                       CLR CY
CODE:6f12  94 0a                    SUBB A,#0xa
CODE:6f14  50 3d                    JNC 0x6f53
CODE:6f16  90 08 fa                 MOV DPTR,#0x8fa
CODE:6f19  e0                       MOVX A,@DPTR
CODE:6f1a  ff                       MOV R7,A
CODE:6f1b  24 9c                    ADD A,#0x9c
CODE:6f1d  f5 82                    MOV DPL,A
CODE:6f1f  e4                       CLR A
CODE:6f20  34 02                    ADDC A,#0x2
CODE:6f22  f5 83                    MOV DPH,A
CODE:6f24  e4                       CLR A
CODE:6f25  f0                       MOVX @DPTR,A
CODE:6f26  74 f6                    MOV A,#0xf6
CODE:6f28  2f                       ADD A,R7
CODE:6f29  f5 82                    MOV DPL,A
CODE:6f2b  e4                       CLR A
CODE:6f2c  34 01                    ADDC A,#0x1
CODE:6f2e  f5 83                    MOV DPH,A
CODE:6f30  e4                       CLR A
CODE:6f31  f0                       MOVX @DPTR,A
CODE:6f32  74 8a                    MOV A,#0x8a
CODE:6f34  2f                       ADD A,R7
CODE:6f35  f5 82                    MOV DPL,A
CODE:6f37  e4                       CLR A
CODE:6f38  34 00                    ADDC A,#0x0
CODE:6f3a  f5 83                    MOV DPH,A
CODE:6f3c  e4                       CLR A
CODE:6f3d  f0                       MOVX @DPTR,A
CODE:6f3e  75 f0 02                 MOV B,#0x2
CODE:6f41  ef                       MOV A,R7
CODE:6f42  a4                       MUL AB
CODE:6f43  24 cb                    ADD A,#0xcb
CODE:6f45  f5 82                    MOV DPL,A
CODE:6f47  e5 f0                    MOV A,B
CODE:6f49  34 03                    ADDC A,#0x3
CODE:6f4b  f5 83                    MOV DPH,A
CODE:6f4d  e4                       CLR A
CODE:6f4e  f0                       MOVX @DPTR,A
CODE:6f4f  a3                       INC DPTR
CODE:6f50  74 ff                    MOV A,#0xff
CODE:6f52  f0                       MOVX @DPTR,A
LAB_CODE_6f53:
CODE:6f53  90 08 fa                 MOV DPTR,#0x8fa   ; XREF: CODE:6e6d CODE:6ebe CODE:6ed1 CODE:6f14 
CODE:6f56  e0                       MOVX A,@DPTR
CODE:6f57  04                       INC A
CODE:6f58  f0                       MOVX @DPTR,A
CODE:6f59  02 6e 4a                 LJMP 0x6e4a
LAB_CODE_6f5c:
CODE:6f5c  78 5a                    MOV R0,#0x5a   ; XREF: CODE:6e54 
CODE:6f5e  06                       INC @R0
CODE:6f5f  e6                       MOV A,@R0
CODE:6f60  d3                       SETB CY
CODE:6f61  94 04                    SUBB A,#0x4
CODE:6f63  50 03                    JNC 0x6f68
CODE:6f65  02 70 08                 LJMP 0x7008
LAB_CODE_6f68:
CODE:6f68  e4                       CLR A   ; XREF: CODE:6f63 
CODE:6f69  f6                       MOV @R0,A
CODE:6f6a  90 08 fa                 MOV DPTR,#0x8fa
CODE:6f6d  f0                       MOVX @DPTR,A
LAB_CODE_6f6e:
CODE:6f6e  90 08 fa                 MOV DPTR,#0x8fa   ; XREF: CODE:7005 
CODE:6f71  e0                       MOVX A,@DPTR
CODE:6f72  ff                       MOV R7,A
CODE:6f73  c3                       CLR CY
CODE:6f74  94 8a                    SUBB A,#0x8a
CODE:6f76  40 03                    JC 0x6f7b
CODE:6f78  02 70 08                 LJMP 0x7008
LAB_CODE_6f7b:
CODE:6f7b  75 f0 02                 MOV B,#0x2   ; XREF: CODE:6f76 
CODE:6f7e  ef                       MOV A,R7
CODE:6f7f  a4                       MUL AB
CODE:6f80  24 cb                    ADD A,#0xcb
CODE:6f82  f5 82                    MOV DPL,A
CODE:6f84  e5 f0                    MOV A,B
CODE:6f86  34 03                    ADDC A,#0x3
CODE:6f88  f5 83                    MOV DPH,A
CODE:6f8a  e0                       MOVX A,@DPTR
CODE:6f8b  fe                       MOV R6,A
CODE:6f8c  a3                       INC DPTR
CODE:6f8d  e0                       MOVX A,@DPTR
CODE:6f8e  ff                       MOV R7,A
CODE:6f8f  d3                       SETB CY
CODE:6f90  94 00                    SUBB A,#0x0
CODE:6f92  ee                       MOV A,R6
CODE:6f93  94 00                    SUBB A,#0x0
CODE:6f95  40 68                    JC 0x6fff
CODE:6f97  ef                       MOV A,R7
CODE:6f98  f4                       CPL A
CODE:6f99  4e                       ORL A,R6
CODE:6f9a  60 63                    JZ 0x6fff
CODE:6f9c  90 08 fa                 MOV DPTR,#0x8fa
CODE:6f9f  e0                       MOVX A,@DPTR
CODE:6fa0  ff                       MOV R7,A
CODE:6fa1  75 f0 02                 MOV B,#0x2
CODE:6fa4  a4                       MUL AB
CODE:6fa5  24 cb                    ADD A,#0xcb
CODE:6fa7  f5 82                    MOV DPL,A
CODE:6fa9  e5 f0                    MOV A,B
CODE:6fab  34 03                    ADDC A,#0x3
CODE:6fad  f5 83                    MOV DPH,A
CODE:6faf  74 ff                    MOV A,#0xff
CODE:6fb1  f5 f0                    MOV B,A
CODE:6fb3  12 80 f2                 LCALL 0x80f2
CODE:6fb6  75 f0 02                 MOV B,#0x2
CODE:6fb9  ef                       MOV A,R7
CODE:6fba  a4                       MUL AB
CODE:6fbb  24 cb                    ADD A,#0xcb
CODE:6fbd  f5 82                    MOV DPL,A
CODE:6fbf  e5 f0                    MOV A,B
CODE:6fc1  34 03                    ADDC A,#0x3
CODE:6fc3  f5 83                    MOV DPH,A
CODE:6fc5  e0                       MOVX A,@DPTR
CODE:6fc6  fe                       MOV R6,A
CODE:6fc7  a3                       INC DPTR
CODE:6fc8  e0                       MOVX A,@DPTR
CODE:6fc9  4e                       ORL A,R6
CODE:6fca  70 33                    JNZ 0x6fff
CODE:6fcc  12 b7 9e                 LCALL 0xb79e
CODE:6fcf  90 08 fa                 MOV DPTR,#0x8fa
CODE:6fd2  e0                       MOVX A,@DPTR
CODE:6fd3  fe                       MOV R6,A
CODE:6fd4  24 31                    ADD A,#0x31
CODE:6fd6  f5 82                    MOV DPL,A
CODE:6fd8  e4                       CLR A
CODE:6fd9  34 03                    ADDC A,#0x3
CODE:6fdb  f5 83                    MOV DPH,A
CODE:6fdd  ef                       MOV A,R7
CODE:6fde  f0                       MOVX @DPTR,A
CODE:6fdf  74 31                    MOV A,#0x31
CODE:6fe1  2e                       ADD A,R6
CODE:6fe2  f5 82                    MOV DPL,A
CODE:6fe4  e4                       CLR A
CODE:6fe5  34 03                    ADDC A,#0x3
CODE:6fe7  f5 83                    MOV DPH,A
CODE:6fe9  e0                       MOVX A,@DPTR
CODE:6fea  fd                       MOV R5,A
CODE:6feb  7f ff                    MOV R7,#0xff
CODE:6fed  12 9f 11                 LCALL 0x9f11
CODE:6ff0  90 08 fa                 MOV DPTR,#0x8fa
CODE:6ff3  e0                       MOVX A,@DPTR
CODE:6ff4  24 5c                    ADD A,#0x5c
CODE:6ff6  f5 82                    MOV DPL,A
CODE:6ff8  e4                       CLR A
CODE:6ff9  34 01                    ADDC A,#0x1
CODE:6ffb  f5 83                    MOV DPH,A
CODE:6ffd  ef                       MOV A,R7
CODE:6ffe  f0                       MOVX @DPTR,A
LAB_CODE_6fff:
CODE:6fff  90 08 fa                 MOV DPTR,#0x8fa   ; XREF: CODE:6f95 CODE:6f9a CODE:6fca 
CODE:7002  e0                       MOVX A,@DPTR
CODE:7003  04                       INC A
CODE:7004  f0                       MOVX @DPTR,A
CODE:7005  02 6f 6e                 LJMP 0x6f6e
LAB_CODE_7008:
CODE:7008  22                       RET   ; XREF: CODE:6f65 CODE:6f78 

; ===== FUNCTION FUN_CODE_7009 @ CODE:7009 =====
CODE:7009  e4                       CLR A   ; XREF: CODE:95f6 CODE:9613 
CODE:700a  90 08 f6                 MOV DPTR,#0x8f6
CODE:700d  f0                       MOVX @DPTR,A
LAB_CODE_700e:
CODE:700e  90 08 f6                 MOV DPTR,#0x8f6   ; XREF: CODE:711d 
CODE:7011  e0                       MOVX A,@DPTR
CODE:7012  ff                       MOV R7,A
CODE:7013  c3                       CLR CY
CODE:7014  94 8a                    SUBB A,#0x8a
CODE:7016  40 03                    JC 0x701b
CODE:7018  02 71 20                 LJMP 0x7120
LAB_CODE_701b:
CODE:701b  75 f0 02                 MOV B,#0x2   ; XREF: CODE:7016 
CODE:701e  ef                       MOV A,R7
CODE:701f  a4                       MUL AB
CODE:7020  24 cb                    ADD A,#0xcb
CODE:7022  f5 82                    MOV DPL,A
CODE:7024  e5 f0                    MOV A,B
CODE:7026  34 03                    ADDC A,#0x3
CODE:7028  f5 83                    MOV DPH,A
CODE:702a  e0                       MOVX A,@DPTR
CODE:702b  fe                       MOV R6,A
CODE:702c  a3                       INC DPTR
CODE:702d  e0                       MOVX A,@DPTR
CODE:702e  4e                       ORL A,R6
CODE:702f  60 03                    JZ 0x7034
CODE:7031  02 71 17                 LJMP 0x7117
LAB_CODE_7034:
CODE:7034  90 08 f6                 MOV DPTR,#0x8f6   ; XREF: CODE:702f 
CODE:7037  e0                       MOVX A,@DPTR
CODE:7038  24 8a                    ADD A,#0x8a
CODE:703a  f5 82                    MOV DPL,A
CODE:703c  e4                       CLR A
CODE:703d  34 00                    ADDC A,#0x0
CODE:703f  f5 83                    MOV DPH,A
CODE:7041  e0                       MOVX A,@DPTR
CODE:7042  70 54                    JNZ 0x7098
CODE:7044  74 9c                    MOV A,#0x9c
CODE:7046  2f                       ADD A,R7
CODE:7047  f5 82                    MOV DPL,A
CODE:7049  e4                       CLR A
CODE:704a  34 02                    ADDC A,#0x2
CODE:704c  f5 83                    MOV DPH,A
CODE:704e  e0                       MOVX A,@DPTR
CODE:704f  90 00 56                 MOV DPTR,#0x56
CODE:7052  93                       MOVC A,@A+DPTR
CODE:7053  fe                       MOV R6,A
CODE:7054  74 f6                    MOV A,#0xf6
CODE:7056  2f                       ADD A,R7
CODE:7057  f5 82                    MOV DPL,A
CODE:7059  e4                       CLR A
CODE:705a  34 01                    ADDC A,#0x1
CODE:705c  f5 83                    MOV DPH,A
CODE:705e  ee                       MOV A,R6
CODE:705f  f0                       MOVX @DPTR,A
CODE:7060  90 08 f6                 MOV DPTR,#0x8f6
CODE:7063  e0                       MOVX A,@DPTR
CODE:7064  ff                       MOV R7,A
CODE:7065  24 9c                    ADD A,#0x9c
CODE:7067  f5 82                    MOV DPL,A
CODE:7069  e4                       CLR A
CODE:706a  34 02                    ADDC A,#0x2
CODE:706c  f5 83                    MOV DPH,A
CODE:706e  e0                       MOVX A,@DPTR
CODE:706f  24 14                    ADD A,#0x14
CODE:7071  f0                       MOVX @DPTR,A
CODE:7072  74 9c                    MOV A,#0x9c
CODE:7074  2f                       ADD A,R7
CODE:7075  f5 82                    MOV DPL,A
CODE:7077  e4                       CLR A
CODE:7078  34 02                    ADDC A,#0x2
CODE:707a  f5 83                    MOV DPH,A
CODE:707c  e0                       MOVX A,@DPTR
CODE:707d  c3                       CLR CY
CODE:707e  94 64                    SUBB A,#0x64
CODE:7080  50 03                    JNC 0x7085
CODE:7082  02 71 17                 LJMP 0x7117
LAB_CODE_7085:
CODE:7085  90 08 f6                 MOV DPTR,#0x8f6   ; XREF: CODE:7080 
CODE:7088  e0                       MOVX A,@DPTR
CODE:7089  24 8a                    ADD A,#0x8a
CODE:708b  f5 82                    MOV DPL,A
CODE:708d  e4                       CLR A
CODE:708e  34 00                    ADDC A,#0x0
CODE:7090  f5 83                    MOV DPH,A
CODE:7092  74 01                    MOV A,#0x1
CODE:7094  f0                       MOVX @DPTR,A
CODE:7095  02 71 17                 LJMP 0x7117
LAB_CODE_7098:
CODE:7098  90 08 f6                 MOV DPTR,#0x8f6   ; XREF: CODE:7042 
CODE:709b  e0                       MOVX A,@DPTR
CODE:709c  ff                       MOV R7,A
CODE:709d  24 9c                    ADD A,#0x9c
CODE:709f  f5 82                    MOV DPL,A
CODE:70a1  e4                       CLR A
CODE:70a2  34 02                    ADDC A,#0x2
CODE:70a4  f5 83                    MOV DPH,A
CODE:70a6  e0                       MOVX A,@DPTR
CODE:70a7  24 fb                    ADD A,#0xfb
CODE:70a9  f0                       MOVX @DPTR,A
CODE:70aa  74 9c                    MOV A,#0x9c
CODE:70ac  2f                       ADD A,R7
CODE:70ad  f5 82                    MOV DPL,A
CODE:70af  e4                       CLR A
CODE:70b0  34 02                    ADDC A,#0x2
CODE:70b2  f5 83                    MOV DPH,A
CODE:70b4  e0                       MOVX A,@DPTR
CODE:70b5  90 00 56                 MOV DPTR,#0x56
CODE:70b8  93                       MOVC A,@A+DPTR
CODE:70b9  ff                       MOV R7,A
CODE:70ba  90 08 f6                 MOV DPTR,#0x8f6
CODE:70bd  e0                       MOVX A,@DPTR
CODE:70be  fe                       MOV R6,A
CODE:70bf  24 f6                    ADD A,#0xf6
CODE:70c1  f5 82                    MOV DPL,A
CODE:70c3  e4                       CLR A
CODE:70c4  34 01                    ADDC A,#0x1
CODE:70c6  f5 83                    MOV DPH,A
CODE:70c8  ef                       MOV A,R7
CODE:70c9  f0                       MOVX @DPTR,A
CODE:70ca  74 9c                    MOV A,#0x9c
CODE:70cc  2e                       ADD A,R6
CODE:70cd  f5 82                    MOV DPL,A
CODE:70cf  e4                       CLR A
CODE:70d0  34 02                    ADDC A,#0x2
CODE:70d2  f5 83                    MOV DPH,A
CODE:70d4  e0                       MOVX A,@DPTR
CODE:70d5  c3                       CLR CY
CODE:70d6  94 0a                    SUBB A,#0xa
CODE:70d8  50 3d                    JNC 0x7117
CODE:70da  90 08 f6                 MOV DPTR,#0x8f6
CODE:70dd  e0                       MOVX A,@DPTR
CODE:70de  ff                       MOV R7,A
CODE:70df  24 9c                    ADD A,#0x9c
CODE:70e1  f5 82                    MOV DPL,A
CODE:70e3  e4                       CLR A
CODE:70e4  34 02                    ADDC A,#0x2
CODE:70e6  f5 83                    MOV DPH,A
CODE:70e8  e4                       CLR A
CODE:70e9  f0                       MOVX @DPTR,A
CODE:70ea  74 f6                    MOV A,#0xf6
CODE:70ec  2f                       ADD A,R7
CODE:70ed  f5 82                    MOV DPL,A
CODE:70ef  e4                       CLR A
CODE:70f0  34 01                    ADDC A,#0x1
CODE:70f2  f5 83                    MOV DPH,A
CODE:70f4  e4                       CLR A
CODE:70f5  f0                       MOVX @DPTR,A
CODE:70f6  74 8a                    MOV A,#0x8a
CODE:70f8  2f                       ADD A,R7
CODE:70f9  f5 82                    MOV DPL,A
CODE:70fb  e4                       CLR A
CODE:70fc  34 00                    ADDC A,#0x0
CODE:70fe  f5 83                    MOV DPH,A
CODE:7100  e4                       CLR A
CODE:7101  f0                       MOVX @DPTR,A
CODE:7102  75 f0 02                 MOV B,#0x2
CODE:7105  ef                       MOV A,R7
CODE:7106  a4                       MUL AB
CODE:7107  24 cb                    ADD A,#0xcb
CODE:7109  f5 82                    MOV DPL,A
CODE:710b  e5 f0                    MOV A,B
CODE:710d  34 03                    ADDC A,#0x3
CODE:710f  f5 83                    MOV DPH,A
CODE:7111  e4                       CLR A
CODE:7112  f0                       MOVX @DPTR,A
CODE:7113  a3                       INC DPTR
CODE:7114  74 ff                    MOV A,#0xff
CODE:7116  f0                       MOVX @DPTR,A
LAB_CODE_7117:
CODE:7117  90 08 f6                 MOV DPTR,#0x8f6   ; XREF: CODE:7031 CODE:7082 CODE:7095 CODE:70d8 
CODE:711a  e0                       MOVX A,@DPTR
CODE:711b  04                       INC A
CODE:711c  f0                       MOVX @DPTR,A
CODE:711d  02 70 0e                 LJMP 0x700e
LAB_CODE_7120:
CODE:7120  78 5a                    MOV R0,#0x5a   ; XREF: CODE:7018 
CODE:7122  06                       INC @R0
CODE:7123  e6                       MOV A,@R0
CODE:7124  d3                       SETB CY
CODE:7125  94 02                    SUBB A,#0x2
CODE:7127  50 03                    JNC 0x712c
CODE:7129  02 71 c5                 LJMP 0x71c5
LAB_CODE_712c:
CODE:712c  e4                       CLR A   ; XREF: CODE:7127 
CODE:712d  f6                       MOV @R0,A
CODE:712e  90 08 f6                 MOV DPTR,#0x8f6
CODE:7131  f0                       MOVX @DPTR,A
LAB_CODE_7132:
CODE:7132  90 08 f6                 MOV DPTR,#0x8f6   ; XREF: CODE:71c2 
CODE:7135  e0                       MOVX A,@DPTR
CODE:7136  ff                       MOV R7,A
CODE:7137  c3                       CLR CY
CODE:7138  94 8a                    SUBB A,#0x8a
CODE:713a  40 03                    JC 0x713f
CODE:713c  02 71 c5                 LJMP 0x71c5
LAB_CODE_713f:
CODE:713f  75 f0 02                 MOV B,#0x2   ; XREF: CODE:713a 
CODE:7142  ef                       MOV A,R7
CODE:7143  a4                       MUL AB
CODE:7144  24 cb                    ADD A,#0xcb
CODE:7146  f5 82                    MOV DPL,A
CODE:7148  e5 f0                    MOV A,B
CODE:714a  34 03                    ADDC A,#0x3
CODE:714c  f5 83                    MOV DPH,A
CODE:714e  e0                       MOVX A,@DPTR
CODE:714f  fe                       MOV R6,A
CODE:7150  a3                       INC DPTR
CODE:7151  e0                       MOVX A,@DPTR
CODE:7152  d3                       SETB CY
CODE:7153  94 00                    SUBB A,#0x0
CODE:7155  ee                       MOV A,R6
CODE:7156  94 00                    SUBB A,#0x0
CODE:7158  40 62                    JC 0x71bc
CODE:715a  90 08 f6                 MOV DPTR,#0x8f6
CODE:715d  e0                       MOVX A,@DPTR
CODE:715e  75 f0 02                 MOV B,#0x2
CODE:7161  a4                       MUL AB
CODE:7162  24 cb                    ADD A,#0xcb
CODE:7164  f5 82                    MOV DPL,A
CODE:7166  e5 f0                    MOV A,B
CODE:7168  34 03                    ADDC A,#0x3
CODE:716a  f5 83                    MOV DPH,A
CODE:716c  74 ff                    MOV A,#0xff
CODE:716e  f5 f0                    MOV B,A
CODE:7170  12 80 f2                 LCALL 0x80f2
CODE:7173  75 f0 02                 MOV B,#0x2
CODE:7176  ef                       MOV A,R7
CODE:7177  a4                       MUL AB
CODE:7178  24 cb                    ADD A,#0xcb
CODE:717a  f5 82                    MOV DPL,A
CODE:717c  e5 f0                    MOV A,B
CODE:717e  34 03                    ADDC A,#0x3
CODE:7180  f5 83                    MOV DPH,A
CODE:7182  e0                       MOVX A,@DPTR
CODE:7183  fe                       MOV R6,A
CODE:7184  a3                       INC DPTR
CODE:7185  e0                       MOVX A,@DPTR
CODE:7186  4e                       ORL A,R6
CODE:7187  70 33                    JNZ 0x71bc
CODE:7189  12 b7 9e                 LCALL 0xb79e
CODE:718c  90 08 f6                 MOV DPTR,#0x8f6
CODE:718f  e0                       MOVX A,@DPTR
CODE:7190  fe                       MOV R6,A
CODE:7191  24 31                    ADD A,#0x31
CODE:7193  f5 82                    MOV DPL,A
CODE:7195  e4                       CLR A
CODE:7196  34 03                    ADDC A,#0x3
CODE:7198  f5 83                    MOV DPH,A
CODE:719a  ef                       MOV A,R7
CODE:719b  f0                       MOVX @DPTR,A
CODE:719c  74 31                    MOV A,#0x31
CODE:719e  2e                       ADD A,R6
CODE:719f  f5 82                    MOV DPL,A
CODE:71a1  e4                       CLR A
CODE:71a2  34 03                    ADDC A,#0x3
CODE:71a4  f5 83                    MOV DPH,A
CODE:71a6  e0                       MOVX A,@DPTR
CODE:71a7  fd                       MOV R5,A
CODE:71a8  7f ff                    MOV R7,#0xff
CODE:71aa  12 9f 11                 LCALL 0x9f11
CODE:71ad  90 08 f6                 MOV DPTR,#0x8f6
CODE:71b0  e0                       MOVX A,@DPTR
CODE:71b1  24 5c                    ADD A,#0x5c
CODE:71b3  f5 82                    MOV DPL,A
CODE:71b5  e4                       CLR A
CODE:71b6  34 01                    ADDC A,#0x1
CODE:71b8  f5 83                    MOV DPH,A
CODE:71ba  ef                       MOV A,R7
CODE:71bb  f0                       MOVX @DPTR,A
LAB_CODE_71bc:
CODE:71bc  90 08 f6                 MOV DPTR,#0x8f6   ; XREF: CODE:7158 CODE:7187 
CODE:71bf  e0                       MOVX A,@DPTR
CODE:71c0  04                       INC A
CODE:71c1  f0                       MOVX @DPTR,A
CODE:71c2  02 71 32                 LJMP 0x7132
LAB_CODE_71c5:
CODE:71c5  22                       RET   ; XREF: CODE:7129 CODE:713c 

; ===== FUNCTION FUN_CODE_71c6 @ CODE:71c6 =====
CODE:71c6  e4                       CLR A   ; XREF: CODE:7fe1 
CODE:71c7  78 31                    MOV R0,#0x31
CODE:71c9  f6                       MOV @R0,A
LAB_CODE_71ca:
CODE:71ca  e4                       CLR A   ; XREF: CODE:72dd 
CODE:71cb  78 2f                    MOV R0,#0x2f
CODE:71cd  f6                       MOV @R0,A
LAB_CODE_71ce:
CODE:71ce  78 2f                    MOV R0,#0x2f   ; XREF: CODE:72d2 
CODE:71d0  e6                       MOV A,@R0
CODE:71d1  ff                       MOV R7,A
CODE:71d2  c3                       CLR CY
CODE:71d3  94 17                    SUBB A,#0x17
CODE:71d5  40 03                    JC 0x71da
CODE:71d7  02 72 d5                 LJMP 0x72d5
LAB_CODE_71da:
CODE:71da  78 31                    MOV R0,#0x31   ; XREF: CODE:71d5 
CODE:71dc  e6                       MOV A,@R0
CODE:71dd  75 f0 17                 MOV B,#0x17
CODE:71e0  a4                       MUL AB
CODE:71e1  2f                       ADD A,R7
CODE:71e2  18                       DEC R0
CODE:71e3  f6                       MOV @R0,A
CODE:71e4  75 f0 02                 MOV B,#0x2
CODE:71e7  a4                       MUL AB
CODE:71e8  24 cb                    ADD A,#0xcb
CODE:71ea  f5 82                    MOV DPL,A
CODE:71ec  e5 f0                    MOV A,B
CODE:71ee  34 03                    ADDC A,#0x3
CODE:71f0  f5 83                    MOV DPH,A
CODE:71f2  e0                       MOVX A,@DPTR
CODE:71f3  fe                       MOV R6,A
CODE:71f4  a3                       INC DPTR
CODE:71f5  e0                       MOVX A,@DPTR
CODE:71f6  4e                       ORL A,R6
CODE:71f7  60 03                    JZ 0x71fc
CODE:71f9  02 72 cf                 LJMP 0x72cf
LAB_CODE_71fc:
CODE:71fc  e6                       MOV A,@R0   ; XREF: CODE:71f7 
CODE:71fd  ff                       MOV R7,A
CODE:71fe  24 8a                    ADD A,#0x8a
CODE:7200  f5 82                    MOV DPL,A
CODE:7202  e4                       CLR A
CODE:7203  34 00                    ADDC A,#0x0
CODE:7205  f5 83                    MOV DPH,A
CODE:7207  e0                       MOVX A,@DPTR
CODE:7208  70 4d                    JNZ 0x7257
CODE:720a  74 9c                    MOV A,#0x9c
CODE:720c  2f                       ADD A,R7
CODE:720d  f5 82                    MOV DPL,A
CODE:720f  e4                       CLR A
CODE:7210  34 02                    ADDC A,#0x2
CODE:7212  f5 83                    MOV DPH,A
CODE:7214  e0                       MOVX A,@DPTR
CODE:7215  90 00 56                 MOV DPTR,#0x56
CODE:7218  93                       MOVC A,@A+DPTR
CODE:7219  fe                       MOV R6,A
CODE:721a  74 f6                    MOV A,#0xf6
CODE:721c  2f                       ADD A,R7
CODE:721d  f5 82                    MOV DPL,A
CODE:721f  e4                       CLR A
CODE:7220  34 01                    ADDC A,#0x1
CODE:7222  f5 83                    MOV DPH,A
CODE:7224  ee                       MOV A,R6
CODE:7225  f0                       MOVX @DPTR,A
CODE:7226  e6                       MOV A,@R0
CODE:7227  ff                       MOV R7,A
CODE:7228  24 9c                    ADD A,#0x9c
CODE:722a  f5 82                    MOV DPL,A
CODE:722c  e4                       CLR A
CODE:722d  34 02                    ADDC A,#0x2
CODE:722f  f5 83                    MOV DPH,A
CODE:7231  e0                       MOVX A,@DPTR
CODE:7232  24 0c                    ADD A,#0xc
CODE:7234  f0                       MOVX @DPTR,A
CODE:7235  74 9c                    MOV A,#0x9c
CODE:7237  2f                       ADD A,R7
CODE:7238  f5 82                    MOV DPL,A
CODE:723a  e4                       CLR A
CODE:723b  34 02                    ADDC A,#0x2
CODE:723d  f5 83                    MOV DPH,A
CODE:723f  e0                       MOVX A,@DPTR
CODE:7240  c3                       CLR CY
CODE:7241  94 64                    SUBB A,#0x64
CODE:7243  50 03                    JNC 0x7248
CODE:7245  02 72 cf                 LJMP 0x72cf
LAB_CODE_7248:
CODE:7248  e6                       MOV A,@R0   ; XREF: CODE:7243 
CODE:7249  24 8a                    ADD A,#0x8a
CODE:724b  f5 82                    MOV DPL,A
CODE:724d  e4                       CLR A
CODE:724e  34 00                    ADDC A,#0x0
CODE:7250  f5 83                    MOV DPH,A
CODE:7252  74 01                    MOV A,#0x1
CODE:7254  f0                       MOVX @DPTR,A
CODE:7255  80 78                    SJMP 0x72cf
LAB_CODE_7257:
CODE:7257  78 30                    MOV R0,#0x30   ; XREF: CODE:7208 
CODE:7259  e6                       MOV A,@R0
CODE:725a  ff                       MOV R7,A
CODE:725b  24 9c                    ADD A,#0x9c
CODE:725d  f5 82                    MOV DPL,A
CODE:725f  e4                       CLR A
CODE:7260  34 02                    ADDC A,#0x2
CODE:7262  f5 83                    MOV DPH,A
CODE:7264  e0                       MOVX A,@DPTR
CODE:7265  24 fe                    ADD A,#0xfe
CODE:7267  f0                       MOVX @DPTR,A
CODE:7268  74 9c                    MOV A,#0x9c
CODE:726a  2f                       ADD A,R7
CODE:726b  f5 82                    MOV DPL,A
CODE:726d  e4                       CLR A
CODE:726e  34 02                    ADDC A,#0x2
CODE:7270  f5 83                    MOV DPH,A
CODE:7272  e0                       MOVX A,@DPTR
CODE:7273  90 00 56                 MOV DPTR,#0x56
CODE:7276  93                       MOVC A,@A+DPTR
CODE:7277  ff                       MOV R7,A
CODE:7278  e6                       MOV A,@R0
CODE:7279  fe                       MOV R6,A
CODE:727a  24 f6                    ADD A,#0xf6
CODE:727c  f5 82                    MOV DPL,A
CODE:727e  e4                       CLR A
CODE:727f  34 01                    ADDC A,#0x1
CODE:7281  f5 83                    MOV DPH,A
CODE:7283  ef                       MOV A,R7
CODE:7284  f0                       MOVX @DPTR,A
CODE:7285  74 9c                    MOV A,#0x9c
CODE:7287  2e                       ADD A,R6
CODE:7288  f5 82                    MOV DPL,A
CODE:728a  e4                       CLR A
CODE:728b  34 02                    ADDC A,#0x2
CODE:728d  f5 83                    MOV DPH,A
CODE:728f  e0                       MOVX A,@DPTR
CODE:7290  c3                       CLR CY
CODE:7291  94 0a                    SUBB A,#0xa
CODE:7293  50 3a                    JNC 0x72cf
CODE:7295  e6                       MOV A,@R0
CODE:7296  ff                       MOV R7,A
CODE:7297  24 9c                    ADD A,#0x9c
CODE:7299  f5 82                    MOV DPL,A
CODE:729b  e4                       CLR A
CODE:729c  34 02                    ADDC A,#0x2
CODE:729e  f5 83                    MOV DPH,A
CODE:72a0  e4                       CLR A
CODE:72a1  f0                       MOVX @DPTR,A
CODE:72a2  74 f6                    MOV A,#0xf6
CODE:72a4  2f                       ADD A,R7
CODE:72a5  f5 82                    MOV DPL,A
CODE:72a7  e4                       CLR A
CODE:72a8  34 01                    ADDC A,#0x1
CODE:72aa  f5 83                    MOV DPH,A
CODE:72ac  e4                       CLR A
CODE:72ad  f0                       MOVX @DPTR,A
CODE:72ae  74 8a                    MOV A,#0x8a
CODE:72b0  2f                       ADD A,R7
CODE:72b1  f5 82                    MOV DPL,A
CODE:72b3  e4                       CLR A
CODE:72b4  34 00                    ADDC A,#0x0
CODE:72b6  f5 83                    MOV DPH,A
CODE:72b8  e4                       CLR A
CODE:72b9  f0                       MOVX @DPTR,A
CODE:72ba  75 f0 02                 MOV B,#0x2
CODE:72bd  ef                       MOV A,R7
CODE:72be  a4                       MUL AB
CODE:72bf  24 cb                    ADD A,#0xcb
CODE:72c1  f5 82                    MOV DPL,A
CODE:72c3  e5 f0                    MOV A,B
CODE:72c5  34 03                    ADDC A,#0x3
CODE:72c7  f5 83                    MOV DPH,A
CODE:72c9  e4                       CLR A
CODE:72ca  f0                       MOVX @DPTR,A
CODE:72cb  a3                       INC DPTR
CODE:72cc  74 ff                    MOV A,#0xff
CODE:72ce  f0                       MOVX @DPTR,A
LAB_CODE_72cf:
CODE:72cf  78 2f                    MOV R0,#0x2f   ; XREF: CODE:71f9 CODE:7245 CODE:7255 CODE:7293 
CODE:72d1  06                       INC @R0
CODE:72d2  02 71 ce                 LJMP 0x71ce
LAB_CODE_72d5:
CODE:72d5  78 31                    MOV R0,#0x31   ; XREF: CODE:71d7 
CODE:72d7  06                       INC @R0
CODE:72d8  e6                       MOV A,@R0
CODE:72d9  64 06                    XRL A,#0x6
CODE:72db  60 03                    JZ 0x72e0
CODE:72dd  02 71 ca                 LJMP 0x71ca
LAB_CODE_72e0:
CODE:72e0  78 5a                    MOV R0,#0x5a   ; XREF: CODE:72db 
CODE:72e2  06                       INC @R0
CODE:72e3  e6                       MOV A,@R0
CODE:72e4  d3                       SETB CY
CODE:72e5  94 02                    SUBB A,#0x2
CODE:72e7  50 03                    JNC 0x72ec
CODE:72e9  02 73 82                 LJMP 0x7382
LAB_CODE_72ec:
CODE:72ec  e4                       CLR A   ; XREF: CODE:72e7 
CODE:72ed  f6                       MOV @R0,A
CODE:72ee  78 30                    MOV R0,#0x30
CODE:72f0  f6                       MOV @R0,A
LAB_CODE_72f1:
CODE:72f1  78 30                    MOV R0,#0x30   ; XREF: CODE:737f 
CODE:72f3  e6                       MOV A,@R0
CODE:72f4  ff                       MOV R7,A
CODE:72f5  c3                       CLR CY
CODE:72f6  94 8a                    SUBB A,#0x8a
CODE:72f8  40 03                    JC 0x72fd
CODE:72fa  02 73 82                 LJMP 0x7382
LAB_CODE_72fd:
CODE:72fd  75 f0 02                 MOV B,#0x2   ; XREF: CODE:72f8 
CODE:7300  ef                       MOV A,R7
CODE:7301  a4                       MUL AB
CODE:7302  24 cb                    ADD A,#0xcb
CODE:7304  f5 82                    MOV DPL,A
CODE:7306  e5 f0                    MOV A,B
CODE:7308  34 03                    ADDC A,#0x3
CODE:730a  f5 83                    MOV DPH,A
CODE:730c  e0                       MOVX A,@DPTR
CODE:730d  fe                       MOV R6,A
CODE:730e  a3                       INC DPTR
CODE:730f  e0                       MOVX A,@DPTR
CODE:7310  ff                       MOV R7,A
CODE:7311  d3                       SETB CY
CODE:7312  94 00                    SUBB A,#0x0
CODE:7314  ee                       MOV A,R6
CODE:7315  94 00                    SUBB A,#0x0
CODE:7317  40 63                    JC 0x737c
CODE:7319  ef                       MOV A,R7
CODE:731a  f4                       CPL A
CODE:731b  4e                       ORL A,R6
CODE:731c  60 5e                    JZ 0x737c
CODE:731e  e6                       MOV A,@R0
CODE:731f  ff                       MOV R7,A
CODE:7320  75 f0 02                 MOV B,#0x2
CODE:7323  a4                       MUL AB
CODE:7324  24 cb                    ADD A,#0xcb
CODE:7326  f5 82                    MOV DPL,A
CODE:7328  e5 f0                    MOV A,B
CODE:732a  34 03                    ADDC A,#0x3
CODE:732c  f5 83                    MOV DPH,A
CODE:732e  74 ff                    MOV A,#0xff
CODE:7330  f5 f0                    MOV B,A
CODE:7332  12 80 f2                 LCALL 0x80f2
CODE:7335  75 f0 02                 MOV B,#0x2
CODE:7338  ef                       MOV A,R7
CODE:7339  a4                       MUL AB
CODE:733a  24 cb                    ADD A,#0xcb
CODE:733c  f5 82                    MOV DPL,A
CODE:733e  e5 f0                    MOV A,B
CODE:7340  34 03                    ADDC A,#0x3
CODE:7342  f5 83                    MOV DPH,A
CODE:7344  e0                       MOVX A,@DPTR
CODE:7345  fe                       MOV R6,A
CODE:7346  a3                       INC DPTR
CODE:7347  e0                       MOVX A,@DPTR
CODE:7348  4e                       ORL A,R6
CODE:7349  70 31                    JNZ 0x737c
CODE:734b  12 b7 9e                 LCALL 0xb79e
CODE:734e  78 30                    MOV R0,#0x30
CODE:7350  e6                       MOV A,@R0
CODE:7351  fe                       MOV R6,A
CODE:7352  24 31                    ADD A,#0x31
CODE:7354  f5 82                    MOV DPL,A
CODE:7356  e4                       CLR A
CODE:7357  34 03                    ADDC A,#0x3
CODE:7359  f5 83                    MOV DPH,A
CODE:735b  ef                       MOV A,R7
CODE:735c  f0                       MOVX @DPTR,A
CODE:735d  74 31                    MOV A,#0x31
CODE:735f  2e                       ADD A,R6
CODE:7360  f5 82                    MOV DPL,A
CODE:7362  e4                       CLR A
CODE:7363  34 03                    ADDC A,#0x3
CODE:7365  f5 83                    MOV DPH,A
CODE:7367  e0                       MOVX A,@DPTR
CODE:7368  fd                       MOV R5,A
CODE:7369  7f ff                    MOV R7,#0xff
CODE:736b  12 9f 11                 LCALL 0x9f11
CODE:736e  78 30                    MOV R0,#0x30
CODE:7370  e6                       MOV A,@R0
CODE:7371  24 5c                    ADD A,#0x5c
CODE:7373  f5 82                    MOV DPL,A
CODE:7375  e4                       CLR A
CODE:7376  34 01                    ADDC A,#0x1
CODE:7378  f5 83                    MOV DPH,A
CODE:737a  ef                       MOV A,R7
CODE:737b  f0                       MOVX @DPTR,A
LAB_CODE_737c:
CODE:737c  78 30                    MOV R0,#0x30   ; XREF: CODE:7317 CODE:731c CODE:7349 
CODE:737e  06                       INC @R0
CODE:737f  02 72 f1                 LJMP 0x72f1
LAB_CODE_7382:
CODE:7382  22                       RET   ; XREF: CODE:72e9 CODE:72fa 

; ===== FUNCTION FUN_CODE_7537 @ CODE:7537 =====
CODE:7537  90 08 f5                 MOV DPTR,#0x8f5   ; XREF: CODE:2f92 
CODE:753a  ef                       MOV A,R7
CODE:753b  f0                       MOVX @DPTR,A
CODE:753c  79 57                    MOV R1,#0x57
CODE:753e  e7                       MOV A,@R1
CODE:753f  d3                       SETB CY
CODE:7540  78 1b                    MOV R0,#0x1b
CODE:7542  96                       SUBB A,@R0
CODE:7543  40 07                    JC 0x754c
CODE:7545  e4                       CLR A
CODE:7546  78 57                    MOV R0,#0x57
CODE:7548  f6                       MOV @R0,A
CODE:7549  12 6e 45                 LCALL 0x6e45
LAB_CODE_754c:
CODE:754c  e4                       CLR A   ; XREF: CODE:7543 
CODE:754d  78 2d                    MOV R0,#0x2d
CODE:754f  f6                       MOV @R0,A
LAB_CODE_7550:
CODE:7550  78 2d                    MOV R0,#0x2d   ; XREF: CODE:75b5 
CODE:7552  e6                       MOV A,@R0
CODE:7553  ff                       MOV R7,A
CODE:7554  c3                       CLR CY
CODE:7555  94 06                    SUBB A,#0x6
CODE:7557  50 5e                    JNC 0x75b7
CODE:7559  ef                       MOV A,R7
CODE:755a  75 f0 17                 MOV B,#0x17
CODE:755d  a4                       MUL AB
CODE:755e  ff                       MOV R7,A
CODE:755f  90 08 f5                 MOV DPTR,#0x8f5
CODE:7562  e0                       MOVX A,@DPTR
CODE:7563  2f                       ADD A,R7
CODE:7564  08                       INC R0
CODE:7565  f6                       MOV @R0,A
CODE:7566  e6                       MOV A,@R0
CODE:7567  ff                       MOV R7,A
CODE:7568  24 f6                    ADD A,#0xf6
CODE:756a  f5 82                    MOV DPL,A
CODE:756c  e4                       CLR A
CODE:756d  34 01                    ADDC A,#0x1
CODE:756f  f5 83                    MOV DPH,A
CODE:7571  e0                       MOVX A,@DPTR
CODE:7572  d3                       SETB CY
CODE:7573  94 00                    SUBB A,#0x0
CODE:7575  40 14                    JC 0x758b
CODE:7577  78 5c                    MOV R0,#0x5c
CODE:7579  e6                       MOV A,@R0
CODE:757a  b4 07 05                 CJNE A,#0x7,0x7582
CODE:757d  12 88 05                 LCALL 0x8805
CODE:7580  80 30                    SJMP 0x75b2
LAB_CODE_7582:
CODE:7582  78 2e                    MOV R0,#0x2e   ; XREF: CODE:757a 
CODE:7584  e6                       MOV A,@R0
CODE:7585  ff                       MOV R7,A
CODE:7586  12 9e 7f                 LCALL 0x9e7f
CODE:7589  80 27                    SJMP 0x75b2
LAB_CODE_758b:
CODE:758b  78 2e                    MOV R0,#0x2e   ; XREF: CODE:7575 
CODE:758d  e6                       MOV A,@R0
CODE:758e  ff                       MOV R7,A
CODE:758f  24 20                    ADD A,#0x20
CODE:7591  f5 82                    MOV DPL,A
CODE:7593  e4                       CLR A
CODE:7594  34 06                    ADDC A,#0x6
CODE:7596  f5 83                    MOV DPH,A
CODE:7598  e4                       CLR A
CODE:7599  f0                       MOVX @DPTR,A
CODE:759a  74 8b                    MOV A,#0x8b
CODE:759c  2f                       ADD A,R7
CODE:759d  f5 82                    MOV DPL,A
CODE:759f  e4                       CLR A
CODE:75a0  34 05                    ADDC A,#0x5
CODE:75a2  f5 83                    MOV DPH,A
CODE:75a4  e4                       CLR A
CODE:75a5  f0                       MOVX @DPTR,A
CODE:75a6  74 f6                    MOV A,#0xf6
CODE:75a8  2f                       ADD A,R7
CODE:75a9  f5 82                    MOV DPL,A
CODE:75ab  e4                       CLR A
CODE:75ac  34 04                    ADDC A,#0x4
CODE:75ae  f5 83                    MOV DPH,A
CODE:75b0  e4                       CLR A
CODE:75b1  f0                       MOVX @DPTR,A
LAB_CODE_75b2:
CODE:75b2  78 2d                    MOV R0,#0x2d   ; XREF: CODE:7580 CODE:7589 
CODE:75b4  06                       INC @R0
CODE:75b5  80 99                    SJMP 0x7550
LAB_CODE_75b7:
CODE:75b7  90 08 f5                 MOV DPTR,#0x8f5   ; XREF: CODE:7557 
CODE:75ba  e0                       MOVX A,@DPTR
CODE:75bb  ff                       MOV R7,A
CODE:75bc  24 3f                    ADD A,#0x3f
CODE:75be  f5 82                    MOV DPL,A
CODE:75c0  e4                       CLR A
CODE:75c1  34 09                    ADDC A,#0x9
CODE:75c3  f5 83                    MOV DPH,A
CODE:75c5  e0                       MOVX A,@DPTR
CODE:75c6  60 03                    JZ 0x75cb
CODE:75c8  02 76 58                 LJMP 0x7658
LAB_CODE_75cb:
CODE:75cb  ef                       MOV A,R7   ; XREF: CODE:75c6 
CODE:75cc  fd                       MOV R5,A
CODE:75cd  7c 00                    MOV R4,#0x0
CODE:75cf  25 e0                    ADD A,A
CODE:75d1  ff                       MOV R7,A
CODE:75d2  ec                       MOV A,R4
CODE:75d3  33                       RLC A
CODE:75d4  fe                       MOV R6,A
CODE:75d5  74 83                    MOV A,#0x83
CODE:75d7  2f                       ADD A,R7
CODE:75d8  f5 82                    MOV DPL,A
CODE:75da  74 04                    MOV A,#0x4
CODE:75dc  3e                       ADDC A,R6
CODE:75dd  f5 83                    MOV DPH,A
CODE:75df  e0                       MOVX A,@DPTR
CODE:75e0  fe                       MOV R6,A
CODE:75e1  a3                       INC DPTR
CODE:75e2  e0                       MOVX A,@DPTR
CODE:75e3  f4                       CPL A
CODE:75e4  4e                       ORL A,R6
CODE:75e5  60 03                    JZ 0x75ea
CODE:75e7  02 76 ea                 LJMP 0x76ea
LAB_CODE_75ea:
CODE:75ea  90 08 f5                 MOV DPTR,#0x8f5   ; XREF: CODE:75e5 
CODE:75ed  e0                       MOVX A,@DPTR
CODE:75ee  24 3f                    ADD A,#0x3f
CODE:75f0  f5 82                    MOV DPL,A
CODE:75f2  e4                       CLR A
CODE:75f3  34 09                    ADDC A,#0x9
CODE:75f5  f5 83                    MOV DPH,A
CODE:75f7  74 01                    MOV A,#0x1
CODE:75f9  f0                       MOVX @DPTR,A
CODE:75fa  ed                       MOV A,R5
CODE:75fb  25 e0                    ADD A,A
CODE:75fd  ff                       MOV R7,A
CODE:75fe  ec                       MOV A,R4
CODE:75ff  33                       RLC A
CODE:7600  fe                       MOV R6,A
CODE:7601  74 b1                    MOV A,#0xb1
CODE:7603  2f                       ADD A,R7
CODE:7604  f5 82                    MOV DPL,A
CODE:7606  74 04                    MOV A,#0x4
CODE:7608  3e                       ADDC A,R6
CODE:7609  f5 83                    MOV DPH,A
CODE:760b  e4                       CLR A
CODE:760c  f0                       MOVX @DPTR,A
CODE:760d  a3                       INC DPTR
CODE:760e  f0                       MOVX @DPTR,A
CODE:760f  74 83                    MOV A,#0x83
CODE:7611  2f                       ADD A,R7
CODE:7612  f5 82                    MOV DPL,A
CODE:7614  74 04                    MOV A,#0x4
CODE:7616  3e                       ADDC A,R6
CODE:7617  f5 83                    MOV DPH,A
CODE:7619  e4                       CLR A
CODE:761a  f0                       MOVX @DPTR,A
CODE:761b  a3                       INC DPTR
CODE:761c  04                       INC A
CODE:761d  f0                       MOVX @DPTR,A
CODE:761e  74 55                    MOV A,#0x55
CODE:7620  2f                       ADD A,R7
CODE:7621  f5 82                    MOV DPL,A
CODE:7623  74 04                    MOV A,#0x4
CODE:7625  3e                       ADDC A,R6
CODE:7626  f5 83                    MOV DPH,A
CODE:7628  e4                       CLR A
CODE:7629  f0                       MOVX @DPTR,A
CODE:762a  a3                       INC DPTR
CODE:762b  74 02                    MOV A,#0x2
CODE:762d  f0                       MOVX @DPTR,A
CODE:762e  74 27                    MOV A,#0x27
CODE:7630  2f                       ADD A,R7
CODE:7631  f5 82                    MOV DPL,A
CODE:7633  74 04                    MOV A,#0x4
CODE:7635  3e                       ADDC A,R6
CODE:7636  f5 83                    MOV DPH,A
CODE:7638  e4                       CLR A
CODE:7639  f0                       MOVX @DPTR,A
CODE:763a  a3                       INC DPTR
CODE:763b  74 03                    MOV A,#0x3
CODE:763d  f0                       MOVX @DPTR,A
CODE:763e  74 f9                    MOV A,#0xf9
CODE:7640  2f                       ADD A,R7
CODE:7641  f5 82                    MOV DPL,A
CODE:7643  74 03                    MOV A,#0x3
CODE:7645  3e                       ADDC A,R6
CODE:7646  f5 83                    MOV DPH,A
CODE:7648  e4                       CLR A
CODE:7649  f0                       MOVX @DPTR,A
CODE:764a  a3                       INC DPTR
CODE:764b  74 04                    MOV A,#0x4
CODE:764d  f0                       MOVX @DPTR,A
CODE:764e  74 cb                    MOV A,#0xcb
CODE:7650  2f                       ADD A,R7
CODE:7651  f5 82                    MOV DPL,A
CODE:7653  74 03                    MOV A,#0x3
CODE:7655  02 76 e1                 LJMP 0x76e1
LAB_CODE_7658:
CODE:7658  90 08 f5                 MOV DPTR,#0x8f5   ; XREF: CODE:75c8 
CODE:765b  e0                       MOVX A,@DPTR
CODE:765c  fd                       MOV R5,A
CODE:765d  7c 00                    MOV R4,#0x0
CODE:765f  25 e0                    ADD A,A
CODE:7661  ff                       MOV R7,A
CODE:7662  ec                       MOV A,R4
CODE:7663  33                       RLC A
CODE:7664  fe                       MOV R6,A
CODE:7665  74 f9                    MOV A,#0xf9
CODE:7667  2f                       ADD A,R7
CODE:7668  f5 82                    MOV DPL,A
CODE:766a  74 03                    MOV A,#0x3
CODE:766c  3e                       ADDC A,R6
CODE:766d  f5 83                    MOV DPH,A
CODE:766f  e0                       MOVX A,@DPTR
CODE:7670  fe                       MOV R6,A
CODE:7671  a3                       INC DPTR
CODE:7672  e0                       MOVX A,@DPTR
CODE:7673  f4                       CPL A
CODE:7674  4e                       ORL A,R6
CODE:7675  70 73                    JNZ 0x76ea
CODE:7677  90 08 f5                 MOV DPTR,#0x8f5
CODE:767a  e0                       MOVX A,@DPTR
CODE:767b  24 3f                    ADD A,#0x3f
CODE:767d  f5 82                    MOV DPL,A
CODE:767f  e4                       CLR A
CODE:7680  34 09                    ADDC A,#0x9
CODE:7682  f5 83                    MOV DPH,A
CODE:7684  e4                       CLR A
CODE:7685  f0                       MOVX @DPTR,A
CODE:7686  ed                       MOV A,R5
CODE:7687  25 e0                    ADD A,A
CODE:7689  ff                       MOV R7,A
CODE:768a  ec                       MOV A,R4
CODE:768b  33                       RLC A
CODE:768c  fe                       MOV R6,A
CODE:768d  74 cb                    MOV A,#0xcb
CODE:768f  2f                       ADD A,R7
CODE:7690  f5 82                    MOV DPL,A
CODE:7692  74 03                    MOV A,#0x3
CODE:7694  3e                       ADDC A,R6
CODE:7695  f5 83                    MOV DPH,A
CODE:7697  e4                       CLR A
CODE:7698  f0                       MOVX @DPTR,A
CODE:7699  a3                       INC DPTR
CODE:769a  f0                       MOVX @DPTR,A
CODE:769b  74 f9                    MOV A,#0xf9
CODE:769d  2f                       ADD A,R7
CODE:769e  f5 82                    MOV DPL,A
CODE:76a0  74 03                    MOV A,#0x3
CODE:76a2  3e                       ADDC A,R6
CODE:76a3  f5 83                    MOV DPH,A
CODE:76a5  e4                       CLR A
CODE:76a6  f0                       MOVX @DPTR,A
CODE:76a7  a3                       INC DPTR
CODE:76a8  04                       INC A
CODE:76a9  f0                       MOVX @DPTR,A
CODE:76aa  74 27                    MOV A,#0x27
CODE:76ac  2f                       ADD A,R7
CODE:76ad  f5 82                    MOV DPL,A
CODE:76af  74 04                    MOV A,#0x4
CODE:76b1  3e                       ADDC A,R6
CODE:76b2  f5 83                    MOV DPH,A
CODE:76b4  e4                       CLR A
CODE:76b5  f0                       MOVX @DPTR,A
CODE:76b6  a3                       INC DPTR
CODE:76b7  74 02                    MOV A,#0x2
CODE:76b9  f0                       MOVX @DPTR,A
CODE:76ba  74 55                    MOV A,#0x55
CODE:76bc  2f                       ADD A,R7
CODE:76bd  f5 82                    MOV DPL,A
CODE:76bf  74 04                    MOV A,#0x4
CODE:76c1  3e                       ADDC A,R6
CODE:76c2  f5 83                    MOV DPH,A
CODE:76c4  e4                       CLR A
CODE:76c5  f0                       MOVX @DPTR,A
CODE:76c6  a3                       INC DPTR
CODE:76c7  74 03                    MOV A,#0x3
CODE:76c9  f0                       MOVX @DPTR,A
CODE:76ca  74 83                    MOV A,#0x83
CODE:76cc  2f                       ADD A,R7
CODE:76cd  f5 82                    MOV DPL,A
CODE:76cf  74 04                    MOV A,#0x4
CODE:76d1  3e                       ADDC A,R6
CODE:76d2  f5 83                    MOV DPH,A
CODE:76d4  e4                       CLR A
CODE:76d5  f0                       MOVX @DPTR,A
CODE:76d6  a3                       INC DPTR
CODE:76d7  74 04                    MOV A,#0x4
CODE:76d9  f0                       MOVX @DPTR,A
CODE:76da  74 b1                    MOV A,#0xb1
CODE:76dc  2f                       ADD A,R7
CODE:76dd  f5 82                    MOV DPL,A
CODE:76df  74 04                    MOV A,#0x4
LAB_CODE_76e1:
CODE:76e1  3e                       ADDC A,R6   ; XREF: CODE:7655 
CODE:76e2  f5 83                    MOV DPH,A
CODE:76e4  e4                       CLR A
CODE:76e5  f0                       MOVX @DPTR,A
CODE:76e6  a3                       INC DPTR
CODE:76e7  74 05                    MOV A,#0x5
CODE:76e9  f0                       MOVX @DPTR,A
LAB_CODE_76ea:
CODE:76ea  22                       RET   ; XREF: CODE:75e7 CODE:7675 

; ===== FUNCTION FUN_CODE_76eb @ CODE:76eb =====
CODE:76eb  e4                       CLR A   ; XREF: CODE:bfb1 
CODE:76ec  90 08 f5                 MOV DPTR,#0x8f5
CODE:76ef  f0                       MOVX @DPTR,A
LAB_CODE_76f0:
CODE:76f0  90 08 f5                 MOV DPTR,#0x8f5   ; XREF: CODE:77ee 
CODE:76f3  e0                       MOVX A,@DPTR
CODE:76f4  ff                       MOV R7,A
CODE:76f5  c3                       CLR CY
CODE:76f6  94 8a                    SUBB A,#0x8a
CODE:76f8  40 03                    JC 0x76fd
CODE:76fa  02 77 f1                 LJMP 0x77f1
LAB_CODE_76fd:
CODE:76fd  75 f0 02                 MOV B,#0x2   ; XREF: CODE:76f8 
CODE:7700  ef                       MOV A,R7
CODE:7701  a4                       MUL AB
CODE:7702  24 cb                    ADD A,#0xcb
CODE:7704  f5 82                    MOV DPL,A
CODE:7706  e5 f0                    MOV A,B
CODE:7708  34 03                    ADDC A,#0x3
CODE:770a  f5 83                    MOV DPH,A
CODE:770c  e0                       MOVX A,@DPTR
CODE:770d  fe                       MOV R6,A
CODE:770e  a3                       INC DPTR
CODE:770f  e0                       MOVX A,@DPTR
CODE:7710  4e                       ORL A,R6
CODE:7711  60 03                    JZ 0x7716
CODE:7713  02 77 e8                 LJMP 0x77e8
LAB_CODE_7716:
CODE:7716  90 08 f5                 MOV DPTR,#0x8f5   ; XREF: CODE:7711 
CODE:7719  e0                       MOVX A,@DPTR
CODE:771a  24 8a                    ADD A,#0x8a
CODE:771c  f5 82                    MOV DPL,A
CODE:771e  e4                       CLR A
CODE:771f  34 00                    ADDC A,#0x0
CODE:7721  f5 83                    MOV DPH,A
CODE:7723  e0                       MOVX A,@DPTR
CODE:7724  70 50                    JNZ 0x7776
CODE:7726  74 9c                    MOV A,#0x9c
CODE:7728  2f                       ADD A,R7
CODE:7729  f5 82                    MOV DPL,A
CODE:772b  e4                       CLR A
CODE:772c  34 02                    ADDC A,#0x2
CODE:772e  f5 83                    MOV DPH,A
CODE:7730  e0                       MOVX A,@DPTR
CODE:7731  90 00 56                 MOV DPTR,#0x56
CODE:7734  93                       MOVC A,@A+DPTR
CODE:7735  fe                       MOV R6,A
CODE:7736  74 f6                    MOV A,#0xf6
CODE:7738  2f                       ADD A,R7
CODE:7739  f5 82                    MOV DPL,A
CODE:773b  e4                       CLR A
CODE:773c  34 01                    ADDC A,#0x1
CODE:773e  f5 83                    MOV DPH,A
CODE:7740  ee                       MOV A,R6
CODE:7741  f0                       MOVX @DPTR,A
CODE:7742  90 08 f5                 MOV DPTR,#0x8f5
CODE:7745  e0                       MOVX A,@DPTR
CODE:7746  ff                       MOV R7,A
CODE:7747  24 9c                    ADD A,#0x9c
CODE:7749  f5 82                    MOV DPL,A
CODE:774b  e4                       CLR A
CODE:774c  34 02                    ADDC A,#0x2
CODE:774e  f5 83                    MOV DPH,A
CODE:7750  e0                       MOVX A,@DPTR
CODE:7751  24 0a                    ADD A,#0xa
CODE:7753  f0                       MOVX @DPTR,A
CODE:7754  74 9c                    MOV A,#0x9c
CODE:7756  2f                       ADD A,R7
CODE:7757  f5 82                    MOV DPL,A
CODE:7759  e4                       CLR A
CODE:775a  34 02                    ADDC A,#0x2
CODE:775c  f5 83                    MOV DPH,A
CODE:775e  e0                       MOVX A,@DPTR
CODE:775f  c3                       CLR CY
CODE:7760  94 64                    SUBB A,#0x64
CODE:7762  40 43                    JC 0x77a7
CODE:7764  90 08 f5                 MOV DPTR,#0x8f5
CODE:7767  e0                       MOVX A,@DPTR
CODE:7768  24 8a                    ADD A,#0x8a
CODE:776a  f5 82                    MOV DPL,A
CODE:776c  e4                       CLR A
CODE:776d  34 00                    ADDC A,#0x0
CODE:776f  f5 83                    MOV DPH,A
CODE:7771  74 01                    MOV A,#0x1
CODE:7773  f0                       MOVX @DPTR,A
CODE:7774  80 31                    SJMP 0x77a7
LAB_CODE_7776:
CODE:7776  90 08 f5                 MOV DPTR,#0x8f5   ; XREF: CODE:7724 
CODE:7779  e0                       MOVX A,@DPTR
CODE:777a  ff                       MOV R7,A
CODE:777b  24 9c                    ADD A,#0x9c
CODE:777d  f5 82                    MOV DPL,A
CODE:777f  e4                       CLR A
CODE:7780  34 02                    ADDC A,#0x2
CODE:7782  f5 83                    MOV DPH,A
CODE:7784  e0                       MOVX A,@DPTR
CODE:7785  24 fe                    ADD A,#0xfe
CODE:7787  f0                       MOVX @DPTR,A
CODE:7788  74 9c                    MOV A,#0x9c
CODE:778a  2f                       ADD A,R7
CODE:778b  f5 82                    MOV DPL,A
CODE:778d  e4                       CLR A
CODE:778e  34 02                    ADDC A,#0x2
CODE:7790  f5 83                    MOV DPH,A
CODE:7792  e0                       MOVX A,@DPTR
CODE:7793  90 00 56                 MOV DPTR,#0x56
CODE:7796  93                       MOVC A,@A+DPTR
CODE:7797  ff                       MOV R7,A
CODE:7798  90 08 f5                 MOV DPTR,#0x8f5
CODE:779b  e0                       MOVX A,@DPTR
CODE:779c  24 f6                    ADD A,#0xf6
CODE:779e  f5 82                    MOV DPL,A
CODE:77a0  e4                       CLR A
CODE:77a1  34 01                    ADDC A,#0x1
CODE:77a3  f5 83                    MOV DPH,A
CODE:77a5  ef                       MOV A,R7
CODE:77a6  f0                       MOVX @DPTR,A
LAB_CODE_77a7:
CODE:77a7  90 08 f5                 MOV DPTR,#0x8f5   ; XREF: CODE:7762 CODE:7774 
CODE:77aa  e0                       MOVX A,@DPTR
CODE:77ab  24 9c                    ADD A,#0x9c
CODE:77ad  f5 82                    MOV DPL,A
CODE:77af  e4                       CLR A
CODE:77b0  34 02                    ADDC A,#0x2
CODE:77b2  f5 83                    MOV DPH,A
CODE:77b4  e0                       MOVX A,@DPTR
CODE:77b5  70 31                    JNZ 0x77e8
CODE:77b7  90 08 f5                 MOV DPTR,#0x8f5
CODE:77ba  e0                       MOVX A,@DPTR
CODE:77bb  ff                       MOV R7,A
CODE:77bc  24 f6                    ADD A,#0xf6
CODE:77be  f5 82                    MOV DPL,A
CODE:77c0  e4                       CLR A
CODE:77c1  34 01                    ADDC A,#0x1
CODE:77c3  f5 83                    MOV DPH,A
CODE:77c5  e4                       CLR A
CODE:77c6  f0                       MOVX @DPTR,A
CODE:77c7  74 8a                    MOV A,#0x8a
CODE:77c9  2f                       ADD A,R7
CODE:77ca  f5 82                    MOV DPL,A
CODE:77cc  e4                       CLR A
CODE:77cd  34 00                    ADDC A,#0x0
CODE:77cf  f5 83                    MOV DPH,A
CODE:77d1  e4                       CLR A
CODE:77d2  f0                       MOVX @DPTR,A
CODE:77d3  75 f0 02                 MOV B,#0x2
CODE:77d6  ef                       MOV A,R7
CODE:77d7  a4                       MUL AB
CODE:77d8  24 cb                    ADD A,#0xcb
CODE:77da  f5 82                    MOV DPL,A
CODE:77dc  e5 f0                    MOV A,B
CODE:77de  34 03                    ADDC A,#0x3
CODE:77e0  f5 83                    MOV DPH,A
CODE:77e2  e4                       CLR A
CODE:77e3  f0                       MOVX @DPTR,A
CODE:77e4  a3                       INC DPTR
CODE:77e5  74 ff                    MOV A,#0xff
CODE:77e7  f0                       MOVX @DPTR,A
LAB_CODE_77e8:
CODE:77e8  90 08 f5                 MOV DPTR,#0x8f5   ; XREF: CODE:7713 CODE:77b5 
CODE:77eb  e0                       MOVX A,@DPTR
CODE:77ec  04                       INC A
CODE:77ed  f0                       MOVX @DPTR,A
CODE:77ee  02 76 f0                 LJMP 0x76f0
LAB_CODE_77f1:
CODE:77f1  78 5a                    MOV R0,#0x5a   ; XREF: CODE:76fa 
CODE:77f3  06                       INC @R0
CODE:77f4  e6                       MOV A,@R0
CODE:77f5  d3                       SETB CY
CODE:77f6  94 01                    SUBB A,#0x1
CODE:77f8  50 03                    JNC 0x77fd
CODE:77fa  02 78 96                 LJMP 0x7896
LAB_CODE_77fd:
CODE:77fd  e4                       CLR A   ; XREF: CODE:77f8 
CODE:77fe  f6                       MOV @R0,A
CODE:77ff  90 08 f5                 MOV DPTR,#0x8f5
CODE:7802  f0                       MOVX @DPTR,A
LAB_CODE_7803:
CODE:7803  90 08 f5                 MOV DPTR,#0x8f5   ; XREF: CODE:7893 
CODE:7806  e0                       MOVX A,@DPTR
CODE:7807  ff                       MOV R7,A
CODE:7808  c3                       CLR CY
CODE:7809  94 8a                    SUBB A,#0x8a
CODE:780b  40 03                    JC 0x7810
CODE:780d  02 78 96                 LJMP 0x7896
LAB_CODE_7810:
CODE:7810  75 f0 02                 MOV B,#0x2   ; XREF: CODE:780b 
CODE:7813  ef                       MOV A,R7
CODE:7814  a4                       MUL AB
CODE:7815  24 cb                    ADD A,#0xcb
CODE:7817  f5 82                    MOV DPL,A
CODE:7819  e5 f0                    MOV A,B
CODE:781b  34 03                    ADDC A,#0x3
CODE:781d  f5 83                    MOV DPH,A
CODE:781f  e0                       MOVX A,@DPTR
CODE:7820  fe                       MOV R6,A
CODE:7821  a3                       INC DPTR
CODE:7822  e0                       MOVX A,@DPTR
CODE:7823  d3                       SETB CY
CODE:7824  94 00                    SUBB A,#0x0
CODE:7826  ee                       MOV A,R6
CODE:7827  94 00                    SUBB A,#0x0
CODE:7829  40 62                    JC 0x788d
CODE:782b  90 08 f5                 MOV DPTR,#0x8f5
CODE:782e  e0                       MOVX A,@DPTR
CODE:782f  75 f0 02                 MOV B,#0x2
CODE:7832  a4                       MUL AB
CODE:7833  24 cb                    ADD A,#0xcb
CODE:7835  f5 82                    MOV DPL,A
CODE:7837  e5 f0                    MOV A,B
CODE:7839  34 03                    ADDC A,#0x3
CODE:783b  f5 83                    MOV DPH,A
CODE:783d  74 ff                    MOV A,#0xff
CODE:783f  f5 f0                    MOV B,A
CODE:7841  12 80 f2                 LCALL 0x80f2
CODE:7844  75 f0 02                 MOV B,#0x2
CODE:7847  ef                       MOV A,R7
CODE:7848  a4                       MUL AB
CODE:7849  24 cb                    ADD A,#0xcb
CODE:784b  f5 82                    MOV DPL,A
CODE:784d  e5 f0                    MOV A,B
CODE:784f  34 03                    ADDC A,#0x3
CODE:7851  f5 83                    MOV DPH,A
CODE:7853  e0                       MOVX A,@DPTR
CODE:7854  fe                       MOV R6,A
CODE:7855  a3                       INC DPTR
CODE:7856  e0                       MOVX A,@DPTR
CODE:7857  4e                       ORL A,R6
CODE:7858  70 33                    JNZ 0x788d
CODE:785a  12 b7 9e                 LCALL 0xb79e
CODE:785d  90 08 f5                 MOV DPTR,#0x8f5
CODE:7860  e0                       MOVX A,@DPTR
CODE:7861  fe                       MOV R6,A
CODE:7862  24 31                    ADD A,#0x31
CODE:7864  f5 82                    MOV DPL,A
CODE:7866  e4                       CLR A
CODE:7867  34 03                    ADDC A,#0x3
CODE:7869  f5 83                    MOV DPH,A
CODE:786b  ef                       MOV A,R7
CODE:786c  f0                       MOVX @DPTR,A
CODE:786d  74 31                    MOV A,#0x31
CODE:786f  2e                       ADD A,R6
CODE:7870  f5 82                    MOV DPL,A
CODE:7872  e4                       CLR A
CODE:7873  34 03                    ADDC A,#0x3
CODE:7875  f5 83                    MOV DPH,A
CODE:7877  e0                       MOVX A,@DPTR
CODE:7878  fd                       MOV R5,A
CODE:7879  7f ff                    MOV R7,#0xff
CODE:787b  12 9f 11                 LCALL 0x9f11
CODE:787e  90 08 f5                 MOV DPTR,#0x8f5
CODE:7881  e0                       MOVX A,@DPTR
CODE:7882  24 5c                    ADD A,#0x5c
CODE:7884  f5 82                    MOV DPL,A
CODE:7886  e4                       CLR A
CODE:7887  34 01                    ADDC A,#0x1
CODE:7889  f5 83                    MOV DPH,A
CODE:788b  ef                       MOV A,R7
CODE:788c  f0                       MOVX @DPTR,A
LAB_CODE_788d:
CODE:788d  90 08 f5                 MOV DPTR,#0x8f5   ; XREF: CODE:7829 CODE:7858 
CODE:7890  e0                       MOVX A,@DPTR
CODE:7891  04                       INC A
CODE:7892  f0                       MOVX @DPTR,A
CODE:7893  02 78 03                 LJMP 0x7803
LAB_CODE_7896:
CODE:7896  22                       RET   ; XREF: CODE:77fa CODE:780d 

; ===== FUNCTION FUN_CODE_7897 @ CODE:7897 =====
CODE:7897  e4                       CLR A   ; XREF: CODE:ae4f CODE:ae6a 
CODE:7898  78 2d                    MOV R0,#0x2d
CODE:789a  f6                       MOV @R0,A
LAB_CODE_789b:
CODE:789b  78 2d                    MOV R0,#0x2d   ; XREF: CODE:7996 
CODE:789d  e6                       MOV A,@R0
CODE:789e  ff                       MOV R7,A
CODE:789f  c3                       CLR CY
CODE:78a0  94 8a                    SUBB A,#0x8a
CODE:78a2  40 03                    JC 0x78a7
CODE:78a4  02 79 99                 LJMP 0x7999
LAB_CODE_78a7:
CODE:78a7  75 f0 02                 MOV B,#0x2   ; XREF: CODE:78a2 
CODE:78aa  ef                       MOV A,R7
CODE:78ab  a4                       MUL AB
CODE:78ac  24 cb                    ADD A,#0xcb
CODE:78ae  f5 82                    MOV DPL,A
CODE:78b0  e5 f0                    MOV A,B
CODE:78b2  34 03                    ADDC A,#0x3
CODE:78b4  f5 83                    MOV DPH,A
CODE:78b6  e0                       MOVX A,@DPTR
CODE:78b7  fe                       MOV R6,A
CODE:78b8  a3                       INC DPTR
CODE:78b9  e0                       MOVX A,@DPTR
CODE:78ba  4e                       ORL A,R6
CODE:78bb  60 03                    JZ 0x78c0
CODE:78bd  02 79 93                 LJMP 0x7993
LAB_CODE_78c0:
CODE:78c0  e6                       MOV A,@R0   ; XREF: CODE:78bb 
CODE:78c1  ff                       MOV R7,A
CODE:78c2  24 8a                    ADD A,#0x8a
CODE:78c4  f5 82                    MOV DPL,A
CODE:78c6  e4                       CLR A
CODE:78c7  34 00                    ADDC A,#0x0
CODE:78c9  f5 83                    MOV DPH,A
CODE:78cb  e0                       MOVX A,@DPTR
CODE:78cc  70 4d                    JNZ 0x791b
CODE:78ce  74 9c                    MOV A,#0x9c
CODE:78d0  2f                       ADD A,R7
CODE:78d1  f5 82                    MOV DPL,A
CODE:78d3  e4                       CLR A
CODE:78d4  34 02                    ADDC A,#0x2
CODE:78d6  f5 83                    MOV DPH,A
CODE:78d8  e0                       MOVX A,@DPTR
CODE:78d9  90 00 56                 MOV DPTR,#0x56
CODE:78dc  93                       MOVC A,@A+DPTR
CODE:78dd  fe                       MOV R6,A
CODE:78de  74 f6                    MOV A,#0xf6
CODE:78e0  2f                       ADD A,R7
CODE:78e1  f5 82                    MOV DPL,A
CODE:78e3  e4                       CLR A
CODE:78e4  34 01                    ADDC A,#0x1
CODE:78e6  f5 83                    MOV DPH,A
CODE:78e8  ee                       MOV A,R6
CODE:78e9  f0                       MOVX @DPTR,A
CODE:78ea  e6                       MOV A,@R0
CODE:78eb  ff                       MOV R7,A
CODE:78ec  24 9c                    ADD A,#0x9c
CODE:78ee  f5 82                    MOV DPL,A
CODE:78f0  e4                       CLR A
CODE:78f1  34 02                    ADDC A,#0x2
CODE:78f3  f5 83                    MOV DPH,A
CODE:78f5  e0                       MOVX A,@DPTR
CODE:78f6  24 0a                    ADD A,#0xa
CODE:78f8  f0                       MOVX @DPTR,A
CODE:78f9  74 9c                    MOV A,#0x9c
CODE:78fb  2f                       ADD A,R7
CODE:78fc  f5 82                    MOV DPL,A
CODE:78fe  e4                       CLR A
CODE:78ff  34 02                    ADDC A,#0x2
CODE:7901  f5 83                    MOV DPH,A
CODE:7903  e0                       MOVX A,@DPTR
CODE:7904  c3                       CLR CY
CODE:7905  94 64                    SUBB A,#0x64
CODE:7907  50 03                    JNC 0x790c
CODE:7909  02 79 93                 LJMP 0x7993
LAB_CODE_790c:
CODE:790c  e6                       MOV A,@R0   ; XREF: CODE:7907 
CODE:790d  24 8a                    ADD A,#0x8a
CODE:790f  f5 82                    MOV DPL,A
CODE:7911  e4                       CLR A
CODE:7912  34 00                    ADDC A,#0x0
CODE:7914  f5 83                    MOV DPH,A
CODE:7916  74 01                    MOV A,#0x1
CODE:7918  f0                       MOVX @DPTR,A
CODE:7919  80 78                    SJMP 0x7993
LAB_CODE_791b:
CODE:791b  78 2d                    MOV R0,#0x2d   ; XREF: CODE:78cc 
CODE:791d  e6                       MOV A,@R0
CODE:791e  ff                       MOV R7,A
CODE:791f  24 9c                    ADD A,#0x9c
CODE:7921  f5 82                    MOV DPL,A
CODE:7923  e4                       CLR A
CODE:7924  34 02                    ADDC A,#0x2
CODE:7926  f5 83                    MOV DPH,A
CODE:7928  e0                       MOVX A,@DPTR
CODE:7929  24 fb                    ADD A,#0xfb
CODE:792b  f0                       MOVX @DPTR,A
CODE:792c  74 9c                    MOV A,#0x9c
CODE:792e  2f                       ADD A,R7
CODE:792f  f5 82                    MOV DPL,A
CODE:7931  e4                       CLR A
CODE:7932  34 02                    ADDC A,#0x2
CODE:7934  f5 83                    MOV DPH,A
CODE:7936  e0                       MOVX A,@DPTR
CODE:7937  90 00 56                 MOV DPTR,#0x56
CODE:793a  93                       MOVC A,@A+DPTR
CODE:793b  ff                       MOV R7,A
CODE:793c  e6                       MOV A,@R0
CODE:793d  fe                       MOV R6,A
CODE:793e  24 f6                    ADD A,#0xf6
CODE:7940  f5 82                    MOV DPL,A
CODE:7942  e4                       CLR A
CODE:7943  34 01                    ADDC A,#0x1
CODE:7945  f5 83                    MOV DPH,A
CODE:7947  ef                       MOV A,R7
CODE:7948  f0                       MOVX @DPTR,A
CODE:7949  74 9c                    MOV A,#0x9c
CODE:794b  2e                       ADD A,R6
CODE:794c  f5 82                    MOV DPL,A
CODE:794e  e4                       CLR A
CODE:794f  34 02                    ADDC A,#0x2
CODE:7951  f5 83                    MOV DPH,A
CODE:7953  e0                       MOVX A,@DPTR
CODE:7954  c3                       CLR CY
CODE:7955  94 0b                    SUBB A,#0xb
CODE:7957  50 3a                    JNC 0x7993
CODE:7959  e6                       MOV A,@R0
CODE:795a  ff                       MOV R7,A
CODE:795b  24 9c                    ADD A,#0x9c
CODE:795d  f5 82                    MOV DPL,A
CODE:795f  e4                       CLR A
CODE:7960  34 02                    ADDC A,#0x2
CODE:7962  f5 83                    MOV DPH,A
CODE:7964  e4                       CLR A
CODE:7965  f0                       MOVX @DPTR,A
CODE:7966  74 f6                    MOV A,#0xf6
CODE:7968  2f                       ADD A,R7
CODE:7969  f5 82                    MOV DPL,A
CODE:796b  e4                       CLR A
CODE:796c  34 01                    ADDC A,#0x1
CODE:796e  f5 83                    MOV DPH,A
CODE:7970  e4                       CLR A
CODE:7971  f0                       MOVX @DPTR,A
CODE:7972  74 8a                    MOV A,#0x8a
CODE:7974  2f                       ADD A,R7
CODE:7975  f5 82                    MOV DPL,A
CODE:7977  e4                       CLR A
CODE:7978  34 00                    ADDC A,#0x0
CODE:797a  f5 83                    MOV DPH,A
CODE:797c  e4                       CLR A
CODE:797d  f0                       MOVX @DPTR,A
CODE:797e  75 f0 02                 MOV B,#0x2
CODE:7981  ef                       MOV A,R7
CODE:7982  a4                       MUL AB
CODE:7983  24 cb                    ADD A,#0xcb
CODE:7985  f5 82                    MOV DPL,A
CODE:7987  e5 f0                    MOV A,B
CODE:7989  34 03                    ADDC A,#0x3
CODE:798b  f5 83                    MOV DPH,A
CODE:798d  e4                       CLR A
CODE:798e  f0                       MOVX @DPTR,A
CODE:798f  a3                       INC DPTR
CODE:7990  74 ff                    MOV A,#0xff
CODE:7992  f0                       MOVX @DPTR,A
LAB_CODE_7993:
CODE:7993  78 2d                    MOV R0,#0x2d   ; XREF: CODE:78bd CODE:7909 CODE:7919 CODE:7957 
CODE:7995  06                       INC @R0
CODE:7996  02 78 9b                 LJMP 0x789b
LAB_CODE_7999:
CODE:7999  78 5a                    MOV R0,#0x5a   ; XREF: CODE:78a4 
CODE:799b  06                       INC @R0
CODE:799c  e6                       MOV A,@R0
CODE:799d  d3                       SETB CY
CODE:799e  94 02                    SUBB A,#0x2
CODE:79a0  50 03                    JNC 0x79a5
CODE:79a2  02 7a 3e                 LJMP 0x7a3e
LAB_CODE_79a5:
CODE:79a5  e4                       CLR A   ; XREF: CODE:79a0 
CODE:79a6  f6                       MOV @R0,A
CODE:79a7  78 2d                    MOV R0,#0x2d
CODE:79a9  f6                       MOV @R0,A
LAB_CODE_79aa:
CODE:79aa  78 2d                    MOV R0,#0x2d   ; XREF: CODE:7a3b 
CODE:79ac  e6                       MOV A,@R0
CODE:79ad  ff                       MOV R7,A
CODE:79ae  c3                       CLR CY
CODE:79af  94 8a                    SUBB A,#0x8a
CODE:79b1  40 03                    JC 0x79b6
CODE:79b3  02 7a 3e                 LJMP 0x7a3e
LAB_CODE_79b6:
CODE:79b6  75 f0 02                 MOV B,#0x2   ; XREF: CODE:79b1 
CODE:79b9  ef                       MOV A,R7
CODE:79ba  a4                       MUL AB
CODE:79bb  24 cb                    ADD A,#0xcb
CODE:79bd  f5 82                    MOV DPL,A
CODE:79bf  e5 f0                    MOV A,B
CODE:79c1  34 03                    ADDC A,#0x3
CODE:79c3  f5 83                    MOV DPH,A
CODE:79c5  e0                       MOVX A,@DPTR
CODE:79c6  fe                       MOV R6,A
CODE:79c7  a3                       INC DPTR
CODE:79c8  e0                       MOVX A,@DPTR
CODE:79c9  ff                       MOV R7,A
CODE:79ca  d3                       SETB CY
CODE:79cb  94 00                    SUBB A,#0x0
CODE:79cd  ee                       MOV A,R6
CODE:79ce  94 00                    SUBB A,#0x0
CODE:79d0  40 66                    JC 0x7a38
CODE:79d2  ef                       MOV A,R7
CODE:79d3  94 ff                    SUBB A,#0xff
CODE:79d5  ee                       MOV A,R6
CODE:79d6  94 00                    SUBB A,#0x0
CODE:79d8  50 5e                    JNC 0x7a38
CODE:79da  e6                       MOV A,@R0
CODE:79db  ff                       MOV R7,A
CODE:79dc  75 f0 02                 MOV B,#0x2
CODE:79df  a4                       MUL AB
CODE:79e0  24 cb                    ADD A,#0xcb
CODE:79e2  f5 82                    MOV DPL,A
CODE:79e4  e5 f0                    MOV A,B
CODE:79e6  34 03                    ADDC A,#0x3
CODE:79e8  f5 83                    MOV DPH,A
CODE:79ea  74 ff                    MOV A,#0xff
CODE:79ec  f5 f0                    MOV B,A
CODE:79ee  12 80 f2                 LCALL 0x80f2
CODE:79f1  75 f0 02                 MOV B,#0x2
CODE:79f4  ef                       MOV A,R7
CODE:79f5  a4                       MUL AB
CODE:79f6  24 cb                    ADD A,#0xcb
CODE:79f8  f5 82                    MOV DPL,A
CODE:79fa  e5 f0                    MOV A,B
CODE:79fc  34 03                    ADDC A,#0x3
CODE:79fe  f5 83                    MOV DPH,A
CODE:7a00  e0                       MOVX A,@DPTR
CODE:7a01  fe                       MOV R6,A
CODE:7a02  a3                       INC DPTR
CODE:7a03  e0                       MOVX A,@DPTR
CODE:7a04  4e                       ORL A,R6
CODE:7a05  70 31                    JNZ 0x7a38
CODE:7a07  12 b7 9e                 LCALL 0xb79e
CODE:7a0a  78 2d                    MOV R0,#0x2d
CODE:7a0c  e6                       MOV A,@R0
CODE:7a0d  fe                       MOV R6,A
CODE:7a0e  24 31                    ADD A,#0x31
CODE:7a10  f5 82                    MOV DPL,A
CODE:7a12  e4                       CLR A
CODE:7a13  34 03                    ADDC A,#0x3
CODE:7a15  f5 83                    MOV DPH,A
CODE:7a17  ef                       MOV A,R7
CODE:7a18  f0                       MOVX @DPTR,A
CODE:7a19  74 31                    MOV A,#0x31
CODE:7a1b  2e                       ADD A,R6
CODE:7a1c  f5 82                    MOV DPL,A
CODE:7a1e  e4                       CLR A
CODE:7a1f  34 03                    ADDC A,#0x3
CODE:7a21  f5 83                    MOV DPH,A
CODE:7a23  e0                       MOVX A,@DPTR
CODE:7a24  fd                       MOV R5,A
CODE:7a25  7f ff                    MOV R7,#0xff
CODE:7a27  12 9f 11                 LCALL 0x9f11
CODE:7a2a  78 2d                    MOV R0,#0x2d
CODE:7a2c  e6                       MOV A,@R0
CODE:7a2d  24 5c                    ADD A,#0x5c
CODE:7a2f  f5 82                    MOV DPL,A
CODE:7a31  e4                       CLR A
CODE:7a32  34 01                    ADDC A,#0x1
CODE:7a34  f5 83                    MOV DPH,A
CODE:7a36  ef                       MOV A,R7
CODE:7a37  f0                       MOVX @DPTR,A
LAB_CODE_7a38:
CODE:7a38  78 2d                    MOV R0,#0x2d   ; XREF: CODE:79d0 CODE:79d8 CODE:7a05 
CODE:7a3a  06                       INC @R0
CODE:7a3b  02 79 aa                 LJMP 0x79aa
LAB_CODE_7a3e:
CODE:7a3e  22                       RET   ; XREF: CODE:79a2 CODE:79b3 

; ===== FUNCTION FUN_CODE_7a3f @ CODE:7a3f =====
CODE:7a3f  90 08 f5                 MOV DPTR,#0x8f5   ; XREF: CODE:2f1a 
CODE:7a42  ef                       MOV A,R7
CODE:7a43  f0                       MOVX @DPTR,A
CODE:7a44  79 57                    MOV R1,#0x57
CODE:7a46  e7                       MOV A,@R1
CODE:7a47  d3                       SETB CY
CODE:7a48  78 1b                    MOV R0,#0x1b
CODE:7a4a  96                       SUBB A,@R0
CODE:7a4b  40 65                    JC 0x7ab2
CODE:7a4d  e4                       CLR A
CODE:7a4e  78 57                    MOV R0,#0x57
CODE:7a50  f6                       MOV @R0,A
CODE:7a51  12 ac a8                 LCALL 0xaca8
CODE:7a54  12 bb dd                 LCALL 0xbbdd
CODE:7a57  e4                       CLR A
CODE:7a58  78 2d                    MOV R0,#0x2d
CODE:7a5a  f6                       MOV @R0,A
LAB_CODE_7a5b:
CODE:7a5b  78 2d                    MOV R0,#0x2d   ; XREF: CODE:7aad 
CODE:7a5d  e6                       MOV A,@R0
CODE:7a5e  ff                       MOV R7,A
CODE:7a5f  c3                       CLR CY
CODE:7a60  94 17                    SUBB A,#0x17
CODE:7a62  50 4b                    JNC 0x7aaf
CODE:7a64  75 f0 02                 MOV B,#0x2
CODE:7a67  ef                       MOV A,R7
CODE:7a68  a4                       MUL AB
CODE:7a69  24 cb                    ADD A,#0xcb
CODE:7a6b  f5 82                    MOV DPL,A
CODE:7a6d  e5 f0                    MOV A,B
CODE:7a6f  34 03                    ADDC A,#0x3
CODE:7a71  f5 83                    MOV DPH,A
CODE:7a73  e4                       CLR A
CODE:7a74  75 f0 02                 MOV B,#0x2
CODE:7a77  12 80 f2                 LCALL 0x80f2
CODE:7a7a  75 f0 02                 MOV B,#0x2
CODE:7a7d  ef                       MOV A,R7
CODE:7a7e  a4                       MUL AB
CODE:7a7f  24 cb                    ADD A,#0xcb
CODE:7a81  f5 82                    MOV DPL,A
CODE:7a83  e5 f0                    MOV A,B
CODE:7a85  34 03                    ADDC A,#0x3
CODE:7a87  f5 83                    MOV DPH,A
CODE:7a89  e0                       MOVX A,@DPTR
CODE:7a8a  fe                       MOV R6,A
CODE:7a8b  a3                       INC DPTR
CODE:7a8c  e0                       MOVX A,@DPTR
CODE:7a8d  d3                       SETB CY
CODE:7a8e  94 ff                    SUBB A,#0xff
CODE:7a90  ee                       MOV A,R6
CODE:7a91  94 02                    SUBB A,#0x2
CODE:7a93  40 15                    JC 0x7aaa
CODE:7a95  78 2d                    MOV R0,#0x2d
CODE:7a97  e6                       MOV A,@R0
CODE:7a98  75 f0 02                 MOV B,#0x2
CODE:7a9b  a4                       MUL AB
CODE:7a9c  24 cb                    ADD A,#0xcb
CODE:7a9e  f5 82                    MOV DPL,A
CODE:7aa0  e5 f0                    MOV A,B
CODE:7aa2  34 03                    ADDC A,#0x3
CODE:7aa4  f5 83                    MOV DPH,A
CODE:7aa6  e4                       CLR A
CODE:7aa7  f0                       MOVX @DPTR,A
CODE:7aa8  a3                       INC DPTR
CODE:7aa9  f0                       MOVX @DPTR,A
LAB_CODE_7aaa:
CODE:7aaa  78 2d                    MOV R0,#0x2d   ; XREF: CODE:7a93 
CODE:7aac  06                       INC @R0
CODE:7aad  80 ac                    SJMP 0x7a5b
LAB_CODE_7aaf:
CODE:7aaf  12 ad 0a                 LCALL 0xad0a   ; XREF: CODE:7a62 
LAB_CODE_7ab2:
CODE:7ab2  90 08 f5                 MOV DPTR,#0x8f5   ; XREF: CODE:7a4b 
CODE:7ab5  e0                       MOVX A,@DPTR
CODE:7ab6  ff                       MOV R7,A
CODE:7ab7  75 f0 02                 MOV B,#0x2
CODE:7aba  a4                       MUL AB
CODE:7abb  24 cb                    ADD A,#0xcb
CODE:7abd  f5 82                    MOV DPL,A
CODE:7abf  e5 f0                    MOV A,B
CODE:7ac1  34 03                    ADDC A,#0x3
CODE:7ac3  f5 83                    MOV DPH,A
CODE:7ac5  e0                       MOVX A,@DPTR
CODE:7ac6  fc                       MOV R4,A
CODE:7ac7  a3                       INC DPTR
CODE:7ac8  e0                       MOVX A,@DPTR
CODE:7ac9  fd                       MOV R5,A
CODE:7aca  24 ba                    ADD A,#0xba
CODE:7acc  f5 82                    MOV DPL,A
CODE:7ace  74 00                    MOV A,#0x0
CODE:7ad0  3c                       ADDC A,R4
CODE:7ad1  f5 83                    MOV DPH,A
CODE:7ad3  e4                       CLR A
CODE:7ad4  93                       MOVC A,@A+DPTR
CODE:7ad5  90 08 f6                 MOV DPTR,#0x8f6
CODE:7ad8  f0                       MOVX @DPTR,A
CODE:7ad9  74 e6                    MOV A,#0xe6
CODE:7adb  2d                       ADD A,R5
CODE:7adc  f5 82                    MOV DPL,A
CODE:7ade  74 04                    MOV A,#0x4
CODE:7ae0  3c                       ADDC A,R4
CODE:7ae1  f5 83                    MOV DPH,A
CODE:7ae3  e4                       CLR A
CODE:7ae4  93                       MOVC A,@A+DPTR
CODE:7ae5  90 08 f7                 MOV DPTR,#0x8f7
CODE:7ae8  f0                       MOVX @DPTR,A
CODE:7ae9  75 f0 02                 MOV B,#0x2
CODE:7aec  ef                       MOV A,R7
CODE:7aed  a4                       MUL AB
CODE:7aee  24 cb                    ADD A,#0xcb
CODE:7af0  f5 82                    MOV DPL,A
CODE:7af2  e5 f0                    MOV A,B
CODE:7af4  34 03                    ADDC A,#0x3
CODE:7af6  f5 83                    MOV DPH,A
CODE:7af8  e0                       MOVX A,@DPTR
CODE:7af9  fe                       MOV R6,A
CODE:7afa  a3                       INC DPTR
CODE:7afb  e0                       MOVX A,@DPTR
CODE:7afc  24 12                    ADD A,#0x12
CODE:7afe  f5 82                    MOV DPL,A
CODE:7b00  74 09                    MOV A,#0x9
CODE:7b02  3e                       ADDC A,R6
CODE:7b03  f5 83                    MOV DPH,A
CODE:7b05  e4                       CLR A
CODE:7b06  93                       MOVC A,@A+DPTR
CODE:7b07  90 08 f8                 MOV DPTR,#0x8f8
CODE:7b0a  f0                       MOVX @DPTR,A
CODE:7b0b  c3                       CLR CY
CODE:7b0c  74 17                    MOV A,#0x17
CODE:7b0e  9f                       SUBB A,R7
CODE:7b0f  ff                       MOV R7,A
CODE:7b10  e4                       CLR A
CODE:7b11  94 00                    SUBB A,#0x0
CODE:7b13  fe                       MOV R6,A
CODE:7b14  ef                       MOV A,R7
CODE:7b15  25 e0                    ADD A,A
CODE:7b17  ff                       MOV R7,A
CODE:7b18  ee                       MOV A,R6
CODE:7b19  33                       RLC A
CODE:7b1a  fe                       MOV R6,A
CODE:7b1b  74 cb                    MOV A,#0xcb
CODE:7b1d  2f                       ADD A,R7
CODE:7b1e  f5 82                    MOV DPL,A
CODE:7b20  74 03                    MOV A,#0x3
CODE:7b22  3e                       ADDC A,R6
CODE:7b23  f5 83                    MOV DPH,A
CODE:7b25  e0                       MOVX A,@DPTR
CODE:7b26  fc                       MOV R4,A
CODE:7b27  a3                       INC DPTR
CODE:7b28  e0                       MOVX A,@DPTR
CODE:7b29  fd                       MOV R5,A
CODE:7b2a  24 ba                    ADD A,#0xba
CODE:7b2c  f5 82                    MOV DPL,A
CODE:7b2e  74 00                    MOV A,#0x0
CODE:7b30  3c                       ADDC A,R4
CODE:7b31  f5 83                    MOV DPH,A
CODE:7b33  e4                       CLR A
CODE:7b34  93                       MOVC A,@A+DPTR
CODE:7b35  90 08 f9                 MOV DPTR,#0x8f9
CODE:7b38  f0                       MOVX @DPTR,A
CODE:7b39  74 e6                    MOV A,#0xe6
CODE:7b3b  2d                       ADD A,R5
CODE:7b3c  f5 82                    MOV DPL,A
CODE:7b3e  74 04                    MOV A,#0x4
CODE:7b40  3c                       ADDC A,R4
CODE:7b41  f5 83                    MOV DPH,A
CODE:7b43  e4                       CLR A
CODE:7b44  93                       MOVC A,@A+DPTR
CODE:7b45  90 08 fa                 MOV DPTR,#0x8fa
CODE:7b48  f0                       MOVX @DPTR,A
CODE:7b49  74 cb                    MOV A,#0xcb
CODE:7b4b  2f                       ADD A,R7
CODE:7b4c  f5 82                    MOV DPL,A
CODE:7b4e  74 03                    MOV A,#0x3
CODE:7b50  3e                       ADDC A,R6
CODE:7b51  f5 83                    MOV DPH,A
CODE:7b53  e0                       MOVX A,@DPTR
CODE:7b54  fe                       MOV R6,A
CODE:7b55  a3                       INC DPTR
CODE:7b56  e0                       MOVX A,@DPTR
CODE:7b57  24 12                    ADD A,#0x12
CODE:7b59  f5 82                    MOV DPL,A
CODE:7b5b  74 09                    MOV A,#0x9
CODE:7b5d  3e                       ADDC A,R6
CODE:7b5e  f5 83                    MOV DPH,A
CODE:7b60  e4                       CLR A
CODE:7b61  93                       MOVC A,@A+DPTR
CODE:7b62  90 08 fb                 MOV DPTR,#0x8fb
CODE:7b65  f0                       MOVX @DPTR,A
CODE:7b66  e4                       CLR A
CODE:7b67  78 2d                    MOV R0,#0x2d
CODE:7b69  f6                       MOV @R0,A
LAB_CODE_7b6a:
CODE:7b6a  78 2d                    MOV R0,#0x2d   ; XREF: CODE:7be2 
CODE:7b6c  e6                       MOV A,@R0
CODE:7b6d  ff                       MOV R7,A
CODE:7b6e  75 f0 17                 MOV B,#0x17
CODE:7b71  a4                       MUL AB
CODE:7b72  fe                       MOV R6,A
CODE:7b73  90 08 f5                 MOV DPTR,#0x8f5
CODE:7b76  e0                       MOVX A,@DPTR
CODE:7b77  2e                       ADD A,R6
CODE:7b78  08                       INC R0
CODE:7b79  f6                       MOV @R0,A
CODE:7b7a  ef                       MOV A,R7
CODE:7b7b  c3                       CLR CY
CODE:7b7c  94 03                    SUBB A,#0x3
CODE:7b7e  50 26                    JNC 0x7ba6
CODE:7b80  a3                       INC DPTR
CODE:7b81  e0                       MOVX A,@DPTR
CODE:7b82  ff                       MOV R7,A
CODE:7b83  e6                       MOV A,@R0
CODE:7b84  fe                       MOV R6,A
CODE:7b85  24 20                    ADD A,#0x20
CODE:7b87  f5 82                    MOV DPL,A
CODE:7b89  e4                       CLR A
CODE:7b8a  34 06                    ADDC A,#0x6
CODE:7b8c  f5 83                    MOV DPH,A
CODE:7b8e  ef                       MOV A,R7
CODE:7b8f  f0                       MOVX @DPTR,A
CODE:7b90  90 08 f7                 MOV DPTR,#0x8f7
CODE:7b93  e0                       MOVX A,@DPTR
CODE:7b94  ff                       MOV R7,A
CODE:7b95  74 8b                    MOV A,#0x8b
CODE:7b97  2e                       ADD A,R6
CODE:7b98  f5 82                    MOV DPL,A
CODE:7b9a  e4                       CLR A
CODE:7b9b  34 05                    ADDC A,#0x5
CODE:7b9d  f5 83                    MOV DPH,A
CODE:7b9f  ef                       MOV A,R7
CODE:7ba0  f0                       MOVX @DPTR,A
CODE:7ba1  90 08 f8                 MOV DPTR,#0x8f8
CODE:7ba4  80 28                    SJMP 0x7bce
LAB_CODE_7ba6:
CODE:7ba6  90 08 f9                 MOV DPTR,#0x8f9   ; XREF: CODE:7b7e 
CODE:7ba9  e0                       MOVX A,@DPTR
CODE:7baa  ff                       MOV R7,A
CODE:7bab  78 2e                    MOV R0,#0x2e
CODE:7bad  e6                       MOV A,@R0
CODE:7bae  fe                       MOV R6,A
CODE:7baf  24 20                    ADD A,#0x20
CODE:7bb1  f5 82                    MOV DPL,A
CODE:7bb3  e4                       CLR A
CODE:7bb4  34 06                    ADDC A,#0x6
CODE:7bb6  f5 83                    MOV DPH,A
CODE:7bb8  ef                       MOV A,R7
CODE:7bb9  f0                       MOVX @DPTR,A
CODE:7bba  90 08 fa                 MOV DPTR,#0x8fa
CODE:7bbd  e0                       MOVX A,@DPTR
CODE:7bbe  ff                       MOV R7,A
CODE:7bbf  74 8b                    MOV A,#0x8b
CODE:7bc1  2e                       ADD A,R6
CODE:7bc2  f5 82                    MOV DPL,A
CODE:7bc4  e4                       CLR A
CODE:7bc5  34 05                    ADDC A,#0x5
CODE:7bc7  f5 83                    MOV DPH,A
CODE:7bc9  ef                       MOV A,R7
CODE:7bca  f0                       MOVX @DPTR,A
CODE:7bcb  90 08 fb                 MOV DPTR,#0x8fb
LAB_CODE_7bce:
CODE:7bce  e0                       MOVX A,@DPTR   ; XREF: CODE:7ba4 
CODE:7bcf  ff                       MOV R7,A
CODE:7bd0  74 f6                    MOV A,#0xf6
CODE:7bd2  2e                       ADD A,R6
CODE:7bd3  f5 82                    MOV DPL,A
CODE:7bd5  e4                       CLR A
CODE:7bd6  34 04                    ADDC A,#0x4
CODE:7bd8  f5 83                    MOV DPH,A
CODE:7bda  ef                       MOV A,R7
CODE:7bdb  f0                       MOVX @DPTR,A
CODE:7bdc  78 2d                    MOV R0,#0x2d
CODE:7bde  06                       INC @R0
CODE:7bdf  e6                       MOV A,@R0
CODE:7be0  64 06                    XRL A,#0x6
CODE:7be2  70 86                    JNZ 0x7b6a
CODE:7be4  22                       RET

; ===== FUNCTION FUN_CODE_7d83 @ CODE:7d83 =====
CODE:7d83  e4                       CLR A   ; XREF: CODE:a7c1 
CODE:7d84  78 31                    MOV R0,#0x31
CODE:7d86  f6                       MOV @R0,A
LAB_CODE_7d87:
CODE:7d87  e4                       CLR A   ; XREF: CODE:7eb3 
CODE:7d88  78 2f                    MOV R0,#0x2f
CODE:7d8a  f6                       MOV @R0,A
LAB_CODE_7d8b:
CODE:7d8b  78 2f                    MOV R0,#0x2f   ; XREF: CODE:7ea7 
CODE:7d8d  e6                       MOV A,@R0
CODE:7d8e  ff                       MOV R7,A
CODE:7d8f  c3                       CLR CY
CODE:7d90  94 17                    SUBB A,#0x17
CODE:7d92  40 03                    JC 0x7d97
CODE:7d94  02 7e aa                 LJMP 0x7eaa
LAB_CODE_7d97:
CODE:7d97  78 31                    MOV R0,#0x31   ; XREF: CODE:7d92 
CODE:7d99  e6                       MOV A,@R0
CODE:7d9a  fe                       MOV R6,A
CODE:7d9b  75 f0 17                 MOV B,#0x17
CODE:7d9e  a4                       MUL AB
CODE:7d9f  2f                       ADD A,R7
CODE:7da0  18                       DEC R0
CODE:7da1  f6                       MOV @R0,A
CODE:7da2  75 f0 02                 MOV B,#0x2
CODE:7da5  a4                       MUL AB
CODE:7da6  24 cb                    ADD A,#0xcb
CODE:7da8  f5 82                    MOV DPL,A
CODE:7daa  e5 f0                    MOV A,B
CODE:7dac  34 03                    ADDC A,#0x3
CODE:7dae  f5 83                    MOV DPH,A
CODE:7db0  e0                       MOVX A,@DPTR
CODE:7db1  fc                       MOV R4,A
CODE:7db2  a3                       INC DPTR
CODE:7db3  e0                       MOVX A,@DPTR
CODE:7db4  4c                       ORL A,R4
CODE:7db5  60 03                    JZ 0x7dba
CODE:7db7  02 7e a4                 LJMP 0x7ea4
LAB_CODE_7dba:
CODE:7dba  e6                       MOV A,@R0   ; XREF: CODE:7db5 
CODE:7dbb  ff                       MOV R7,A
CODE:7dbc  24 8a                    ADD A,#0x8a
CODE:7dbe  f5 82                    MOV DPL,A
CODE:7dc0  e4                       CLR A
CODE:7dc1  34 00                    ADDC A,#0x0
CODE:7dc3  f5 83                    MOV DPH,A
CODE:7dc5  e0                       MOVX A,@DPTR
CODE:7dc6  70 5c                    JNZ 0x7e24
CODE:7dc8  74 9c                    MOV A,#0x9c
CODE:7dca  2f                       ADD A,R7
CODE:7dcb  f5 82                    MOV DPL,A
CODE:7dcd  e4                       CLR A
CODE:7dce  34 02                    ADDC A,#0x2
CODE:7dd0  f5 83                    MOV DPH,A
CODE:7dd2  e0                       MOVX A,@DPTR
CODE:7dd3  90 00 56                 MOV DPTR,#0x56
CODE:7dd6  93                       MOVC A,@A+DPTR
CODE:7dd7  fd                       MOV R5,A
CODE:7dd8  74 f6                    MOV A,#0xf6
CODE:7dda  2f                       ADD A,R7
CODE:7ddb  f5 82                    MOV DPL,A
CODE:7ddd  e4                       CLR A
CODE:7dde  34 01                    ADDC A,#0x1
CODE:7de0  f5 83                    MOV DPH,A
CODE:7de2  ed                       MOV A,R5
CODE:7de3  f0                       MOVX @DPTR,A
CODE:7de4  e6                       MOV A,@R0
CODE:7de5  ff                       MOV R7,A
CODE:7de6  24 9c                    ADD A,#0x9c
CODE:7de8  f5 82                    MOV DPL,A
CODE:7dea  e4                       CLR A
CODE:7deb  34 02                    ADDC A,#0x2
CODE:7ded  f5 83                    MOV DPH,A
CODE:7def  e0                       MOVX A,@DPTR
CODE:7df0  24 28                    ADD A,#0x28
CODE:7df2  f0                       MOVX @DPTR,A
CODE:7df3  74 9c                    MOV A,#0x9c
CODE:7df5  2f                       ADD A,R7
CODE:7df6  f5 82                    MOV DPL,A
CODE:7df8  e4                       CLR A
CODE:7df9  34 02                    ADDC A,#0x2
CODE:7dfb  f5 83                    MOV DPH,A
CODE:7dfd  e0                       MOVX A,@DPTR
CODE:7dfe  c3                       CLR CY
CODE:7dff  94 c8                    SUBB A,#0xc8
CODE:7e01  50 03                    JNC 0x7e06
CODE:7e03  02 7e a4                 LJMP 0x7ea4
LAB_CODE_7e06:
CODE:7e06  e6                       MOV A,@R0   ; XREF: CODE:7e01 
CODE:7e07  ff                       MOV R7,A
CODE:7e08  24 9c                    ADD A,#0x9c
CODE:7e0a  f5 82                    MOV DPL,A
CODE:7e0c  e4                       CLR A
CODE:7e0d  34 02                    ADDC A,#0x2
CODE:7e0f  f5 83                    MOV DPH,A
CODE:7e11  74 c8                    MOV A,#0xc8
CODE:7e13  f0                       MOVX @DPTR,A
CODE:7e14  74 8a                    MOV A,#0x8a
CODE:7e16  2f                       ADD A,R7
CODE:7e17  f5 82                    MOV DPL,A
CODE:7e19  e4                       CLR A
CODE:7e1a  34 00                    ADDC A,#0x0
CODE:7e1c  f5 83                    MOV DPH,A
CODE:7e1e  74 01                    MOV A,#0x1
CODE:7e20  f0                       MOVX @DPTR,A
CODE:7e21  02 7e a4                 LJMP 0x7ea4
LAB_CODE_7e24:
CODE:7e24  78 30                    MOV R0,#0x30   ; XREF: CODE:7dc6 
CODE:7e26  e6                       MOV A,@R0
CODE:7e27  ff                       MOV R7,A
CODE:7e28  24 9c                    ADD A,#0x9c
CODE:7e2a  f5 82                    MOV DPL,A
CODE:7e2c  e4                       CLR A
CODE:7e2d  34 02                    ADDC A,#0x2
CODE:7e2f  f5 83                    MOV DPH,A
CODE:7e31  e0                       MOVX A,@DPTR
CODE:7e32  24 f6                    ADD A,#0xf6
CODE:7e34  f0                       MOVX @DPTR,A
CODE:7e35  74 9c                    MOV A,#0x9c
CODE:7e37  2f                       ADD A,R7
CODE:7e38  f5 82                    MOV DPL,A
CODE:7e3a  e4                       CLR A
CODE:7e3b  34 02                    ADDC A,#0x2
CODE:7e3d  f5 83                    MOV DPH,A
CODE:7e3f  e0                       MOVX A,@DPTR
CODE:7e40  90 00 56                 MOV DPTR,#0x56
CODE:7e43  93                       MOVC A,@A+DPTR
CODE:7e44  ff                       MOV R7,A
CODE:7e45  e6                       MOV A,@R0
CODE:7e46  fd                       MOV R5,A
CODE:7e47  24 f6                    ADD A,#0xf6
CODE:7e49  f5 82                    MOV DPL,A
CODE:7e4b  e4                       CLR A
CODE:7e4c  34 01                    ADDC A,#0x1
CODE:7e4e  f5 83                    MOV DPH,A
CODE:7e50  ef                       MOV A,R7
CODE:7e51  f0                       MOVX @DPTR,A
CODE:7e52  74 9c                    MOV A,#0x9c
CODE:7e54  2d                       ADD A,R5
CODE:7e55  f5 82                    MOV DPL,A
CODE:7e57  e4                       CLR A
CODE:7e58  34 02                    ADDC A,#0x2
CODE:7e5a  f5 83                    MOV DPH,A
CODE:7e5c  e0                       MOVX A,@DPTR
CODE:7e5d  c3                       CLR CY
CODE:7e5e  94 0f                    SUBB A,#0xf
CODE:7e60  50 42                    JNC 0x7ea4
CODE:7e62  e6                       MOV A,@R0
CODE:7e63  ff                       MOV R7,A
CODE:7e64  24 9c                    ADD A,#0x9c
CODE:7e66  f5 82                    MOV DPL,A
CODE:7e68  e4                       CLR A
CODE:7e69  34 02                    ADDC A,#0x2
CODE:7e6b  f5 83                    MOV DPH,A
CODE:7e6d  e4                       CLR A
CODE:7e6e  f0                       MOVX @DPTR,A
CODE:7e6f  74 8a                    MOV A,#0x8a
CODE:7e71  2f                       ADD A,R7
CODE:7e72  f5 82                    MOV DPL,A
CODE:7e74  e4                       CLR A
CODE:7e75  34 00                    ADDC A,#0x0
CODE:7e77  f5 83                    MOV DPH,A
CODE:7e79  e4                       CLR A
CODE:7e7a  f0                       MOVX @DPTR,A
CODE:7e7b  75 f0 02                 MOV B,#0x2
CODE:7e7e  ef                       MOV A,R7
CODE:7e7f  a4                       MUL AB
CODE:7e80  24 cb                    ADD A,#0xcb
CODE:7e82  f5 82                    MOV DPL,A
CODE:7e84  e5 f0                    MOV A,B
CODE:7e86  34 03                    ADDC A,#0x3
CODE:7e88  f5 83                    MOV DPH,A
CODE:7e8a  e4                       CLR A
CODE:7e8b  f0                       MOVX @DPTR,A
CODE:7e8c  a3                       INC DPTR
CODE:7e8d  74 ff                    MOV A,#0xff
CODE:7e8f  f0                       MOVX @DPTR,A
CODE:7e90  ee                       MOV A,R6
CODE:7e91  b4 05 10                 CJNE A,#0x5,0x7ea4
CODE:7e94  18                       DEC R0
CODE:7e95  e6                       MOV A,@R0
CODE:7e96  24 56                    ADD A,#0x56
CODE:7e98  f5 82                    MOV DPL,A
CODE:7e9a  e4                       CLR A
CODE:7e9b  34 09                    ADDC A,#0x9
CODE:7e9d  f5 83                    MOV DPH,A
CODE:7e9f  e4                       CLR A
CODE:7ea0  f0                       MOVX @DPTR,A
CODE:7ea1  12 58 c9                 LCALL 0x58c9
LAB_CODE_7ea4:
CODE:7ea4  78 2f                    MOV R0,#0x2f   ; XREF: CODE:7db7 CODE:7e03 CODE:7e21 CODE:7e60 CODE:7e91 
CODE:7ea6  06                       INC @R0
CODE:7ea7  02 7d 8b                 LJMP 0x7d8b
LAB_CODE_7eaa:
CODE:7eaa  78 31                    MOV R0,#0x31   ; XREF: CODE:7d94 
CODE:7eac  06                       INC @R0
CODE:7ead  e6                       MOV A,@R0
CODE:7eae  c3                       CLR CY
CODE:7eaf  94 06                    SUBB A,#0x6
CODE:7eb1  50 03                    JNC 0x7eb6
CODE:7eb3  02 7d 87                 LJMP 0x7d87
LAB_CODE_7eb6:
CODE:7eb6  78 5a                    MOV R0,#0x5a   ; XREF: CODE:7eb1 
CODE:7eb8  06                       INC @R0
CODE:7eb9  e6                       MOV A,@R0
CODE:7eba  d3                       SETB CY
CODE:7ebb  94 09                    SUBB A,#0x9
CODE:7ebd  40 4a                    JC 0x7f09
CODE:7ebf  e4                       CLR A
CODE:7ec0  f6                       MOV @R0,A
CODE:7ec1  78 30                    MOV R0,#0x30
CODE:7ec3  f6                       MOV @R0,A
LAB_CODE_7ec4:
CODE:7ec4  78 30                    MOV R0,#0x30   ; XREF: CODE:7f07 
CODE:7ec6  e6                       MOV A,@R0
CODE:7ec7  ff                       MOV R7,A
CODE:7ec8  c3                       CLR CY
CODE:7ec9  94 8a                    SUBB A,#0x8a
CODE:7ecb  50 3c                    JNC 0x7f09
CODE:7ecd  75 f0 02                 MOV B,#0x2
CODE:7ed0  ef                       MOV A,R7
CODE:7ed1  a4                       MUL AB
CODE:7ed2  24 cb                    ADD A,#0xcb
CODE:7ed4  f5 82                    MOV DPL,A
CODE:7ed6  e5 f0                    MOV A,B
CODE:7ed8  34 03                    ADDC A,#0x3
CODE:7eda  f5 83                    MOV DPH,A
CODE:7edc  e0                       MOVX A,@DPTR
CODE:7edd  fe                       MOV R6,A
CODE:7ede  a3                       INC DPTR
CODE:7edf  e0                       MOVX A,@DPTR
CODE:7ee0  ff                       MOV R7,A
CODE:7ee1  d3                       SETB CY
CODE:7ee2  94 00                    SUBB A,#0x0
CODE:7ee4  ee                       MOV A,R6
CODE:7ee5  94 00                    SUBB A,#0x0
CODE:7ee7  40 1b                    JC 0x7f04
CODE:7ee9  ef                       MOV A,R7
CODE:7eea  f4                       CPL A
CODE:7eeb  4e                       ORL A,R6
CODE:7eec  60 16                    JZ 0x7f04
CODE:7eee  e6                       MOV A,@R0
CODE:7eef  75 f0 02                 MOV B,#0x2
CODE:7ef2  a4                       MUL AB
CODE:7ef3  24 cb                    ADD A,#0xcb
CODE:7ef5  f5 82                    MOV DPL,A
CODE:7ef7  e5 f0                    MOV A,B
CODE:7ef9  34 03                    ADDC A,#0x3
CODE:7efb  f5 83                    MOV DPH,A
CODE:7efd  74 ff                    MOV A,#0xff
CODE:7eff  f5 f0                    MOV B,A
CODE:7f01  12 80 f2                 LCALL 0x80f2
LAB_CODE_7f04:
CODE:7f04  78 30                    MOV R0,#0x30   ; XREF: CODE:7ee7 CODE:7eec 
CODE:7f06  06                       INC @R0
CODE:7f07  80 bb                    SJMP 0x7ec4
LAB_CODE_7f09:
CODE:7f09  22                       RET   ; XREF: CODE:7ebd CODE:7ecb 

; ===== FUNCTION FUN_CODE_7f0a @ CODE:7f0a =====
CODE:7f0a  90 08 f5                 MOV DPTR,#0x8f5   ; XREF: CODE:2f82 
CODE:7f0d  ef                       MOV A,R7
CODE:7f0e  f0                       MOVX @DPTR,A
CODE:7f0f  79 57                    MOV R1,#0x57
CODE:7f11  e7                       MOV A,@R1
CODE:7f12  d3                       SETB CY
CODE:7f13  78 1b                    MOV R0,#0x1b
CODE:7f15  96                       SUBB A,@R0
CODE:7f16  50 03                    JNC 0x7f1b
CODE:7f18  02 80 1f                 LJMP 0x801f
LAB_CODE_7f1b:
CODE:7f1b  e4                       CLR A   ; XREF: CODE:7f16 
CODE:7f1c  78 57                    MOV R0,#0x57
CODE:7f1e  f6                       MOV @R0,A
CODE:7f1f  90 09 88                 MOV DPTR,#0x988
CODE:7f22  e0                       MOVX A,@DPTR
CODE:7f23  14                       DEC A
CODE:7f24  60 2a                    JZ 0x7f50
CODE:7f26  14                       DEC A
CODE:7f27  70 03                    JNZ 0x7f2c
CODE:7f29  02 7f d6                 LJMP 0x7fd6
LAB_CODE_7f2c:
CODE:7f2c  24 02                    ADD A,#0x2   ; XREF: CODE:7f27 
CODE:7f2e  60 03                    JZ 0x7f33
CODE:7f30  02 80 1f                 LJMP 0x801f
LAB_CODE_7f33:
CODE:7f33  12 66 7f                 LCALL 0x667f   ; XREF: CODE:7f2e 
CODE:7f36  d3                       SETB CY
CODE:7f37  90 04 34                 MOV DPTR,#0x434
CODE:7f3a  e0                       MOVX A,@DPTR
CODE:7f3b  94 c8                    SUBB A,#0xc8
CODE:7f3d  90 04 33                 MOV DPTR,#0x433
CODE:7f40  e0                       MOVX A,@DPTR
CODE:7f41  94 00                    SUBB A,#0x0
CODE:7f43  50 03                    JNC 0x7f48
CODE:7f45  02 80 1f                 LJMP 0x801f
LAB_CODE_7f48:
CODE:7f48  90 09 88                 MOV DPTR,#0x988   ; XREF: CODE:7f43 
CODE:7f4b  74 01                    MOV A,#0x1
CODE:7f4d  02 7f d0                 LJMP 0x7fd0
LAB_CODE_7f50:
CODE:7f50  12 6a 8e                 LCALL 0x6a8e   ; XREF: CODE:7f24 
CODE:7f53  78 6a                    MOV R0,#0x6a
CODE:7f55  e6                       MOV A,@R0
CODE:7f56  70 4a                    JNZ 0x7fa2
CODE:7f58  08                       INC R0
CODE:7f59  e6                       MOV A,@R0
CODE:7f5a  c3                       CLR CY
CODE:7f5b  94 02                    SUBB A,#0x2
CODE:7f5d  50 03                    JNC 0x7f62
CODE:7f5f  02 80 1f                 LJMP 0x801f
LAB_CODE_7f62:
CODE:7f62  d3                       SETB CY   ; XREF: CODE:7f5d 
CODE:7f63  90 04 6a                 MOV DPTR,#0x46a
CODE:7f66  e0                       MOVX A,@DPTR
CODE:7f67  94 c8                    SUBB A,#0xc8
CODE:7f69  90 04 69                 MOV DPTR,#0x469
CODE:7f6c  e0                       MOVX A,@DPTR
CODE:7f6d  94 00                    SUBB A,#0x0
CODE:7f6f  50 03                    JNC 0x7f74
CODE:7f71  02 80 1f                 LJMP 0x801f
LAB_CODE_7f74:
CODE:7f74  90 04 37                 MOV DPTR,#0x437   ; XREF: CODE:7f6f 
CODE:7f77  e4                       CLR A
CODE:7f78  f0                       MOVX @DPTR,A
CODE:7f79  a3                       INC DPTR
CODE:7f7a  04                       INC A
CODE:7f7b  f0                       MOVX @DPTR,A
CODE:7f7c  a3                       INC DPTR
CODE:7f7d  e4                       CLR A
CODE:7f7e  f0                       MOVX @DPTR,A
CODE:7f7f  a3                       INC DPTR
CODE:7f80  74 02                    MOV A,#0x2
CODE:7f82  f0                       MOVX @DPTR,A
CODE:7f83  a3                       INC DPTR
CODE:7f84  e4                       CLR A
CODE:7f85  f0                       MOVX @DPTR,A
CODE:7f86  a3                       INC DPTR
CODE:7f87  74 03                    MOV A,#0x3
CODE:7f89  f0                       MOVX @DPTR,A
CODE:7f8a  90 04 67                 MOV DPTR,#0x467
CODE:7f8d  e4                       CLR A
CODE:7f8e  f0                       MOVX @DPTR,A
CODE:7f8f  a3                       INC DPTR
CODE:7f90  04                       INC A
CODE:7f91  f0                       MOVX @DPTR,A
CODE:7f92  90 04 65                 MOV DPTR,#0x465
CODE:7f95  e4                       CLR A
CODE:7f96  f0                       MOVX @DPTR,A
CODE:7f97  a3                       INC DPTR
CODE:7f98  74 02                    MOV A,#0x2
CODE:7f9a  f0                       MOVX @DPTR,A
CODE:7f9b  18                       DEC R0
CODE:7f9c  06                       INC @R0
CODE:7f9d  78 6c                    MOV R0,#0x6c
CODE:7f9f  06                       INC @R0
CODE:7fa0  80 7d                    SJMP 0x801f
LAB_CODE_7fa2:
CODE:7fa2  d3                       SETB CY   ; XREF: CODE:7f56 
CODE:7fa3  90 04 3c                 MOV DPTR,#0x43c
CODE:7fa6  e0                       MOVX A,@DPTR
CODE:7fa7  94 c8                    SUBB A,#0xc8
CODE:7fa9  90 04 3b                 MOV DPTR,#0x43b
CODE:7fac  e0                       MOVX A,@DPTR
CODE:7fad  94 00                    SUBB A,#0x0
CODE:7faf  40 6e                    JC 0x801f
CODE:7fb1  30 2b 05                 JNB 0x2b,0x7fb9
CODE:7fb4  e4                       CLR A
CODE:7fb5  78 6c                    MOV R0,#0x6c
CODE:7fb7  80 07                    SJMP 0x7fc0
LAB_CODE_7fb9:
CODE:7fb9  78 6c                    MOV R0,#0x6c   ; XREF: CODE:7fb1 
CODE:7fbb  e6                       MOV A,@R0
CODE:7fbc  b4 03 07                 CJNE A,#0x3,0x7fc6
CODE:7fbf  e4                       CLR A
LAB_CODE_7fc0:
CODE:7fc0  f6                       MOV @R0,A   ; XREF: CODE:7fb7 
CODE:7fc1  12 9a 30                 LCALL 0x9a30
CODE:7fc4  80 59                    SJMP 0x801f
LAB_CODE_7fc6:
CODE:7fc6  e4                       CLR A   ; XREF: CODE:7fbc 
CODE:7fc7  78 6a                    MOV R0,#0x6a
CODE:7fc9  f6                       MOV @R0,A
CODE:7fca  08                       INC R0
CODE:7fcb  f6                       MOV @R0,A
CODE:7fcc  90 09 88                 MOV DPTR,#0x988
CODE:7fcf  04                       INC A
LAB_CODE_7fd0:
CODE:7fd0  f0                       MOVX @DPTR,A   ; XREF: CODE:7f4d 
CODE:7fd1  12 af 33                 LCALL 0xaf33
CODE:7fd4  80 49                    SJMP 0x801f
LAB_CODE_7fd6:
CODE:7fd6  78 6c                    MOV R0,#0x6c   ; XREF: CODE:7f29 
CODE:7fd8  06                       INC @R0
CODE:7fd9  e6                       MOV A,@R0
CODE:7fda  d3                       SETB CY
CODE:7fdb  94 1e                    SUBB A,#0x1e
CODE:7fdd  40 40                    JC 0x801f
CODE:7fdf  76 1e                    MOV @R0,#0x1e
CODE:7fe1  12 71 c6                 LCALL 0x71c6
CODE:7fe4  d3                       SETB CY
CODE:7fe5  90 04 da                 MOV DPTR,#0x4da
CODE:7fe8  e0                       MOVX A,@DPTR
CODE:7fe9  94 c8                    SUBB A,#0xc8
CODE:7feb  90 04 d9                 MOV DPTR,#0x4d9
CODE:7fee  e0                       MOVX A,@DPTR
CODE:7fef  94 00                    SUBB A,#0x0
CODE:7ff1  40 2c                    JC 0x801f
CODE:7ff3  30 2b 21                 JNB 0x2b,0x8017
CODE:7ff6  c2 2b                    CLR 0x2b
CODE:7ff8  90 e4 06                 MOV DPTR,#0xe406
CODE:7ffb  e4                       CLR A
CODE:7ffc  93                       MOVC A,@A+DPTR
CODE:7ffd  78 5c                    MOV R0,#0x5c
CODE:7fff  f6                       MOV @R0,A
CODE:8000  e6                       MOV A,@R0
CODE:8001  ff                       MOV R7,A
CODE:8002  12 9d eb                 LCALL 0x9deb
CODE:8005  78 69                    MOV R0,#0x69
CODE:8007  e6                       MOV A,@R0
CODE:8008  c3                       CLR CY
CODE:8009  94 13                    SUBB A,#0x13
CODE:800b  50 05                    JNC 0x8012
CODE:800d  12 9d 55                 LCALL 0x9d55
CODE:8010  80 0d                    SJMP 0x801f
LAB_CODE_8012:
CODE:8012  12 a0 bf                 LCALL 0xa0bf   ; XREF: CODE:800b 
CODE:8015  80 08                    SJMP 0x801f
LAB_CODE_8017:
CODE:8017  e4                       CLR A   ; XREF: CODE:7ff3 
CODE:8018  90 09 88                 MOV DPTR,#0x988
CODE:801b  f0                       MOVX @DPTR,A
CODE:801c  12 a5 15                 LCALL 0xa515
LAB_CODE_801f:
CODE:801f  e4                       CLR A   ; XREF: CODE:7f18 CODE:7f30 CODE:7f45 CODE:7f5f CODE:7f71 CODE:7fa0 CODE:7faf CODE:7fc4 CODE:7fd4 CODE:7fdd CODE:7ff1 CODE:8010 CODE:8015 
CODE:8020  78 2d                    MOV R0,#0x2d
CODE:8022  f6                       MOV @R0,A
LAB_CODE_8023:
CODE:8023  78 2d                    MOV R0,#0x2d   ; XREF: CODE:8088 
CODE:8025  e6                       MOV A,@R0
CODE:8026  ff                       MOV R7,A
CODE:8027  c3                       CLR CY
CODE:8028  94 06                    SUBB A,#0x6
CODE:802a  50 5e                    JNC 0x808a
CODE:802c  ef                       MOV A,R7
CODE:802d  75 f0 17                 MOV B,#0x17
CODE:8030  a4                       MUL AB
CODE:8031  ff                       MOV R7,A
CODE:8032  90 08 f5                 MOV DPTR,#0x8f5
CODE:8035  e0                       MOVX A,@DPTR
CODE:8036  2f                       ADD A,R7
CODE:8037  08                       INC R0
CODE:8038  f6                       MOV @R0,A
CODE:8039  e6                       MOV A,@R0
CODE:803a  ff                       MOV R7,A
CODE:803b  24 f6                    ADD A,#0xf6
CODE:803d  f5 82                    MOV DPL,A
CODE:803f  e4                       CLR A
CODE:8040  34 01                    ADDC A,#0x1
CODE:8042  f5 83                    MOV DPH,A
CODE:8044  e0                       MOVX A,@DPTR
CODE:8045  d3                       SETB CY
CODE:8046  94 00                    SUBB A,#0x0
CODE:8048  40 14                    JC 0x805e
CODE:804a  78 5c                    MOV R0,#0x5c
CODE:804c  e6                       MOV A,@R0
CODE:804d  b4 07 05                 CJNE A,#0x7,0x8055
CODE:8050  12 88 05                 LCALL 0x8805
CODE:8053  80 30                    SJMP 0x8085
LAB_CODE_8055:
CODE:8055  78 2e                    MOV R0,#0x2e   ; XREF: CODE:804d 
CODE:8057  e6                       MOV A,@R0
CODE:8058  ff                       MOV R7,A
CODE:8059  12 9e 7f                 LCALL 0x9e7f
CODE:805c  80 27                    SJMP 0x8085
LAB_CODE_805e:
CODE:805e  78 2e                    MOV R0,#0x2e   ; XREF: CODE:8048 
CODE:8060  e6                       MOV A,@R0
CODE:8061  ff                       MOV R7,A
CODE:8062  24 20                    ADD A,#0x20
CODE:8064  f5 82                    MOV DPL,A
CODE:8066  e4                       CLR A
CODE:8067  34 06                    ADDC A,#0x6
CODE:8069  f5 83                    MOV DPH,A
CODE:806b  e4                       CLR A
CODE:806c  f0                       MOVX @DPTR,A
CODE:806d  74 8b                    MOV A,#0x8b
CODE:806f  2f                       ADD A,R7
CODE:8070  f5 82                    MOV DPL,A
CODE:8072  e4                       CLR A
CODE:8073  34 05                    ADDC A,#0x5
CODE:8075  f5 83                    MOV DPH,A
CODE:8077  e4                       CLR A
CODE:8078  f0                       MOVX @DPTR,A
CODE:8079  74 f6                    MOV A,#0xf6
CODE:807b  2f                       ADD A,R7
CODE:807c  f5 82                    MOV DPL,A
CODE:807e  e4                       CLR A
CODE:807f  34 04                    ADDC A,#0x4
CODE:8081  f5 83                    MOV DPH,A
CODE:8083  e4                       CLR A
CODE:8084  f0                       MOVX @DPTR,A
LAB_CODE_8085:
CODE:8085  78 2d                    MOV R0,#0x2d   ; XREF: CODE:8053 CODE:805c 
CODE:8087  06                       INC @R0
CODE:8088  80 99                    SJMP 0x8023
LAB_CODE_808a:
CODE:808a  22                       RET   ; XREF: CODE:802a 

; ===== FUNCTION FUN_CODE_80f2 @ CODE:80f2 =====
CODE:80f2  c5 f0                    XCH A,B   ; XREF: CODE:6fb3 CODE:7a77 CODE:683d CODE:6c24 CODE:7332 CODE:85f1 CODE:7170 CODE:9c5e CODE:9fdb CODE:a069 CODE:a183 CODE:7f01 CODE:ab2d CODE:79ee CODE:7841 
CODE:80f4  f8                       MOV R0,A
CODE:80f5  a3                       INC DPTR
CODE:80f6  e0                       MOVX A,@DPTR
CODE:80f7  28                       ADD A,R0
CODE:80f8  f0                       MOVX @DPTR,A
CODE:80f9  c5 f0                    XCH A,B
CODE:80fb  f8                       MOV R0,A
CODE:80fc  e5 82                    MOV A,DPL
CODE:80fe  15 82                    DEC DPL
CODE:8100  70 02                    JNZ 0x8104
CODE:8102  15 83                    DEC DPH
LAB_CODE_8104:
CODE:8104  e0                       MOVX A,@DPTR   ; XREF: CODE:8100 
CODE:8105  38                       ADDC A,R0
CODE:8106  f0                       MOVX @DPTR,A
CODE:8107  22                       RET

; ===== FUNCTION FUN_CODE_811e @ CODE:811e =====
CODE:811e  eb                       MOV A,R3   ; XREF: CODE:8e8c 
CODE:811f  9f                       SUBB A,R7
CODE:8120  f5 f0                    MOV B,A
CODE:8122  ea                       MOV A,R2
CODE:8123  9e                       SUBB A,R6
CODE:8124  42 f0                    ORL B,A
CODE:8126  e9                       MOV A,R1
CODE:8127  9d                       SUBB A,R5
CODE:8128  42 f0                    ORL B,A
CODE:812a  ec                       MOV A,R4
CODE:812b  64 80                    XRL A,#0x80
CODE:812d  c8                       XCH A,R0
CODE:812e  64 80                    XRL A,#0x80
CODE:8130  98                       SUBB A,R0
CODE:8131  45 f0                    ORL A,B
CODE:8133  22                       RET

; ===== FUNCTION FUN_CODE_8134 @ CODE:8134 =====
CODE:8134  eb                       MOV A,R3   ; XREF: CODE:9118 CODE:96e0 
CODE:8135  9f                       SUBB A,R7
CODE:8136  f5 f0                    MOV B,A
CODE:8138  ea                       MOV A,R2
CODE:8139  9e                       SUBB A,R6
CODE:813a  42 f0                    ORL B,A
CODE:813c  e9                       MOV A,R1
CODE:813d  9d                       SUBB A,R5
CODE:813e  42 f0                    ORL B,A
CODE:8140  e8                       MOV A,R0
CODE:8141  9c                       SUBB A,R4
CODE:8142  45 f0                    ORL A,B
CODE:8144  22                       RET

; ===== FUNCTION FUN_CODE_8145 @ CODE:8145 =====
CODE:8145  e8                       MOV A,R0   ; XREF: CODE:18ac CODE:18d9 CODE:2773 CODE:27a8 CODE:280c CODE:2841 CODE:28a5 CODE:28da CODE:293c CODE:2971 CODE:29d3 CODE:2a08 CODE:2a6a CODE:2a9f CODE:2b01 CODE:2b36 CODE:2b4d CODE:2b9b CODE:2bd1 CODE:2be8 CODE:b9bc CODE:b9d2 CODE:b3bf CODE:b3d5 CODE:befe 
CODE:8146  60 0f                    JZ 0x8157
LAB_CODE_8148:
CODE:8148  ec                       MOV A,R4   ; XREF: CODE:8155 
CODE:8149  c3                       CLR CY
CODE:814a  13                       RRC A
CODE:814b  fc                       MOV R4,A
CODE:814c  ed                       MOV A,R5
CODE:814d  13                       RRC A
CODE:814e  fd                       MOV R5,A
CODE:814f  ee                       MOV A,R6
CODE:8150  13                       RRC A
CODE:8151  fe                       MOV R6,A
CODE:8152  ef                       MOV A,R7
CODE:8153  13                       RRC A
CODE:8154  ff                       MOV R7,A
CODE:8155  d8 f1                    DJNZ R0,0x8148
LAB_CODE_8157:
CODE:8157  22                       RET   ; XREF: CODE:8146 

; ===== FUNCTION FUN_CODE_8158 @ CODE:8158 =====
CODE:8158  e8                       MOV A,R0   ; XREF: CODE:9cf1 
CODE:8159  60 0f                    JZ 0x816a
LAB_CODE_815b:
CODE:815b  ef                       MOV A,R7   ; XREF: CODE:8168 
CODE:815c  c3                       CLR CY
CODE:815d  33                       RLC A
CODE:815e  ff                       MOV R7,A
CODE:815f  ee                       MOV A,R6
CODE:8160  33                       RLC A
CODE:8161  fe                       MOV R6,A
CODE:8162  ed                       MOV A,R5
CODE:8163  33                       RLC A
CODE:8164  fd                       MOV R5,A
CODE:8165  ec                       MOV A,R4
CODE:8166  33                       RLC A
CODE:8167  fc                       MOV R4,A
CODE:8168  d8 f1                    DJNZ R0,0x815b
LAB_CODE_816a:
CODE:816a  22                       RET   ; XREF: CODE:8159 

; ===== FUNCTION FUN_CODE_816b @ CODE:816b =====
CODE:816b  e6                       MOV A,@R0   ; XREF: CODE:9167 
CODE:816c  fc                       MOV R4,A
CODE:816d  08                       INC R0
CODE:816e  e6                       MOV A,@R0
CODE:816f  fd                       MOV R5,A
CODE:8170  08                       INC R0
CODE:8171  e6                       MOV A,@R0
CODE:8172  fe                       MOV R6,A
CODE:8173  08                       INC R0
CODE:8174  e6                       MOV A,@R0
CODE:8175  ff                       MOV R7,A
CODE:8176  22                       RET

; ===== FUNCTION FUN_CODE_8177 @ CODE:8177 =====
CODE:8177  e4                       CLR A   ; XREF: CODE:275c CODE:27f5 CODE:288e CODE:2925 CODE:29bc CODE:2a53 CODE:2aea CODE:2b84 CODE:276e CODE:27a3 CODE:2807 CODE:283c CODE:28a0 CODE:28d5 CODE:2937 CODE:296c CODE:29ce CODE:2a03 CODE:2a65 CODE:2a9a CODE:2afc CODE:2b31 CODE:2b48 CODE:2b96 CODE:2bcc CODE:2be3 
CODE:8178  93                       MOVC A,@A+DPTR
CODE:8179  fc                       MOV R4,A
CODE:817a  74 01                    MOV A,#0x1
CODE:817c  93                       MOVC A,@A+DPTR
CODE:817d  fd                       MOV R5,A
CODE:817e  74 02                    MOV A,#0x2
CODE:8180  93                       MOVC A,@A+DPTR
CODE:8181  fe                       MOV R6,A
CODE:8182  74 03                    MOV A,#0x3
CODE:8184  93                       MOVC A,@A+DPTR
CODE:8185  ff                       MOV R7,A
CODE:8186  22                       RET

; ===== FUNCTION FUN_CODE_8187 @ CODE:8187 =====
CODE:8187  ec                       MOV A,R4   ; XREF: CODE:9162 
CODE:8188  f6                       MOV @R0,A
CODE:8189  08                       INC R0
CODE:818a  ed                       MOV A,R5
CODE:818b  f6                       MOV @R0,A
CODE:818c  08                       INC R0
CODE:818d  ee                       MOV A,R6
CODE:818e  f6                       MOV @R0,A
CODE:818f  08                       INC R0
CODE:8190  ef                       MOV A,R7
CODE:8191  f6                       MOV @R0,A
CODE:8192  22                       RET

; ===== FUNCTION FUN_CODE_8193 @ CODE:8193 =====
CODE:8193  ec                       MOV A,R4   ; XREF: CODE:916d CODE:91a3 CODE:b7d4 CODE:b9a1 CODE:9740 CODE:9d29 CODE:b3a1 CODE:bf7c 
CODE:8194  f0                       MOVX @DPTR,A
CODE:8195  a3                       INC DPTR
CODE:8196  ed                       MOV A,R5
CODE:8197  f0                       MOVX @DPTR,A
CODE:8198  a3                       INC DPTR
CODE:8199  ee                       MOV A,R6
CODE:819a  f0                       MOVX @DPTR,A
CODE:819b  a3                       INC DPTR
CODE:819c  ef                       MOV A,R7
CODE:819d  f0                       MOVX @DPTR,A
CODE:819e  22                       RET

; ===== FUNCTION FUN_CODE_819f @ CODE:819f =====
CODE:819f  a8 82                    MOV R0,DPL   ; XREF: CODE:b5cd CODE:b5e2 
CODE:81a1  85 83 f0                 MOV B,DPH
CODE:81a4  d0 83                    POP DPH
CODE:81a6  d0 82                    POP DPL
CODE:81a8  12 81 b6                 LCALL 0x81b6
CODE:81ab  12 81 b6                 LCALL 0x81b6
CODE:81ae  12 81 b6                 LCALL 0x81b6
CODE:81b1  12 81 b6                 LCALL 0x81b6
CODE:81b4  e4                       CLR A
CODE:81b5  73                       JMP @A+DPTR

; ===== FUNCTION FUN_CODE_81b6 @ CODE:81b6 =====
CODE:81b6  e4                       CLR A   ; XREF: CODE:81a8 CODE:81ab CODE:81ae CODE:81b1 
CODE:81b7  93                       MOVC A,@A+DPTR
CODE:81b8  a3                       INC DPTR
CODE:81b9  c5 83                    XCH A,DPH
CODE:81bb  c5 f0                    XCH A,B
CODE:81bd  c5 83                    XCH A,DPH
CODE:81bf  c8                       XCH A,R0
CODE:81c0  c5 82                    XCH A,DPL
CODE:81c2  c8                       XCH A,R0
CODE:81c3  f0                       MOVX @DPTR,A
CODE:81c4  a3                       INC DPTR
CODE:81c5  c5 83                    XCH A,DPH
CODE:81c7  c5 f0                    XCH A,B
CODE:81c9  c5 83                    XCH A,DPH
CODE:81cb  c8                       XCH A,R0
CODE:81cc  c5 82                    XCH A,DPL
CODE:81ce  c8                       XCH A,R0
CODE:81cf  22                       RET

; ===== FUNCTION FUN_CODE_81d0 @ CODE:81d0 =====
CODE:81d0  8a 83                    MOV DPH,R2   ; XREF: CODE:a6a7 
CODE:81d2  89 82                    MOV DPL,R1
CODE:81d4  e4                       CLR A
CODE:81d5  73                       JMP @A+DPTR

; ===== FUNCTION FUN_CODE_81d6 @ CODE:81d6 =====
CODE:81d6  e0                       MOVX A,@DPTR   ; XREF: CODE:b7a1 
CODE:81d7  fc                       MOV R4,A
CODE:81d8  a3                       INC DPTR
CODE:81d9  e0                       MOVX A,@DPTR
CODE:81da  fd                       MOV R5,A
CODE:81db  a3                       INC DPTR
CODE:81dc  e0                       MOVX A,@DPTR
CODE:81dd  fe                       MOV R6,A
CODE:81de  a3                       INC DPTR
CODE:81df  e0                       MOVX A,@DPTR
CODE:81e0  ff                       MOV R7,A
CODE:81e1  22                       RET

; ===== FUNCTION FUN_CODE_8332 @ CODE:8332 =====
CODE:8332  e5 99                    MOV A,0x99   ; XREF: CODE:44f5 
CODE:8334  30 e2 03                 JNB 0xe2,0x833a
CODE:8337  02 84 79                 LJMP 0x8479
LAB_CODE_833a:
CODE:833a  30 2e 03                 JNB 0x2e,0x8340   ; XREF: CODE:8334 
CODE:833d  02 84 11                 LJMP 0x8411
LAB_CODE_8340:
CODE:8340  90 07 56                 MOV DPTR,#0x756   ; XREF: CODE:833a 
CODE:8343  e0                       MOVX A,@DPTR
CODE:8344  d3                       SETB CY
CODE:8345  94 06                    SUBB A,#0x6
CODE:8347  40 03                    JC 0x834c
CODE:8349  02 84 79                 LJMP 0x8479
LAB_CODE_834c:
CODE:834c  20 02 03                 JB 0x02,0x8352   ; XREF: CODE:8347 
CODE:834f  02 84 79                 LJMP 0x8479
LAB_CODE_8352:
CODE:8352  c2 02                    CLR 0x02   ; XREF: CODE:834c 
CODE:8354  c2 af                    CLR 0xaf
CODE:8356  90 09 36                 MOV DPTR,#0x936
CODE:8359  74 11                    MOV A,#0x11
CODE:835b  f0                       MOVX @DPTR,A
CODE:835c  a3                       INC DPTR
CODE:835d  74 20                    MOV A,#0x20
CODE:835f  f0                       MOVX @DPTR,A
CODE:8360  90 07 06                 MOV DPTR,#0x706
CODE:8363  e0                       MOVX A,@DPTR
CODE:8364  b4 ac 02                 CJNE A,#0xac,0x8369
CODE:8367  e4                       CLR A
CODE:8368  f0                       MOVX @DPTR,A
LAB_CODE_8369:
CODE:8369  90 07 08                 MOV DPTR,#0x708   ; XREF: CODE:8364 
CODE:836c  e0                       MOVX A,@DPTR
CODE:836d  b4 ac 02                 CJNE A,#0xac,0x8372
CODE:8370  e4                       CLR A
CODE:8371  f0                       MOVX @DPTR,A
LAB_CODE_8372:
CODE:8372  90 07 09                 MOV DPTR,#0x709   ; XREF: CODE:836d 
CODE:8375  e0                       MOVX A,@DPTR
CODE:8376  b4 ac 02                 CJNE A,#0xac,0x837b
CODE:8379  e4                       CLR A
CODE:837a  f0                       MOVX @DPTR,A
LAB_CODE_837b:
CODE:837b  90 07 0a                 MOV DPTR,#0x70a   ; XREF: CODE:8376 
CODE:837e  e0                       MOVX A,@DPTR
CODE:837f  b4 ac 02                 CJNE A,#0xac,0x8384
CODE:8382  e4                       CLR A
CODE:8383  f0                       MOVX @DPTR,A
LAB_CODE_8384:
CODE:8384  90 07 0b                 MOV DPTR,#0x70b   ; XREF: CODE:837f 
CODE:8387  e0                       MOVX A,@DPTR
CODE:8388  b4 ac 02                 CJNE A,#0xac,0x838d
CODE:838b  e4                       CLR A
CODE:838c  f0                       MOVX @DPTR,A
LAB_CODE_838d:
CODE:838d  90 07 0c                 MOV DPTR,#0x70c   ; XREF: CODE:8388 
CODE:8390  e0                       MOVX A,@DPTR
CODE:8391  b4 ac 02                 CJNE A,#0xac,0x8396
CODE:8394  e4                       CLR A
CODE:8395  f0                       MOVX @DPTR,A
LAB_CODE_8396:
CODE:8396  90 07 0d                 MOV DPTR,#0x70d   ; XREF: CODE:8391 
CODE:8399  e0                       MOVX A,@DPTR
CODE:839a  b4 ac 02                 CJNE A,#0xac,0x839f
CODE:839d  e4                       CLR A
CODE:839e  f0                       MOVX @DPTR,A
LAB_CODE_839f:
CODE:839f  90 07 06                 MOV DPTR,#0x706   ; XREF: CODE:839a 
CODE:83a2  e0                       MOVX A,@DPTR
CODE:83a3  ff                       MOV R7,A
CODE:83a4  90 09 36                 MOV DPTR,#0x936
CODE:83a7  e0                       MOVX A,@DPTR
CODE:83a8  fc                       MOV R4,A
CODE:83a9  a3                       INC DPTR
CODE:83aa  e0                       MOVX A,@DPTR
CODE:83ab  fd                       MOV R5,A
CODE:83ac  f5 82                    MOV DPL,A
CODE:83ae  8c 83                    MOV DPH,R4
CODE:83b0  ef                       MOV A,R7
CODE:83b1  f0                       MOVX @DPTR,A
CODE:83b2  8d 82                    MOV DPL,R5
CODE:83b4  8c 83                    MOV DPH,R4
CODE:83b6  a3                       INC DPTR
CODE:83b7  e4                       CLR A
CODE:83b8  f0                       MOVX @DPTR,A
CODE:83b9  90 07 08                 MOV DPTR,#0x708
CODE:83bc  e0                       MOVX A,@DPTR
CODE:83bd  8d 82                    MOV DPL,R5
CODE:83bf  8c 83                    MOV DPH,R4
CODE:83c1  a3                       INC DPTR
CODE:83c2  a3                       INC DPTR
CODE:83c3  f0                       MOVX @DPTR,A
CODE:83c4  90 07 09                 MOV DPTR,#0x709
CODE:83c7  e0                       MOVX A,@DPTR
CODE:83c8  8d 82                    MOV DPL,R5
CODE:83ca  8c 83                    MOV DPH,R4
CODE:83cc  a3                       INC DPTR
CODE:83cd  a3                       INC DPTR
CODE:83ce  a3                       INC DPTR
CODE:83cf  f0                       MOVX @DPTR,A
CODE:83d0  90 07 0a                 MOV DPTR,#0x70a
CODE:83d3  e0                       MOVX A,@DPTR
CODE:83d4  ff                       MOV R7,A
CODE:83d5  ed                       MOV A,R5
CODE:83d6  24 04                    ADD A,#0x4
CODE:83d8  f5 82                    MOV DPL,A
CODE:83da  e4                       CLR A
CODE:83db  3c                       ADDC A,R4
CODE:83dc  f5 83                    MOV DPH,A
CODE:83de  ef                       MOV A,R7
CODE:83df  f0                       MOVX @DPTR,A
CODE:83e0  90 07 0b                 MOV DPTR,#0x70b
CODE:83e3  e0                       MOVX A,@DPTR
CODE:83e4  ff                       MOV R7,A
CODE:83e5  ed                       MOV A,R5
CODE:83e6  24 05                    ADD A,#0x5
CODE:83e8  f5 82                    MOV DPL,A
CODE:83ea  e4                       CLR A
CODE:83eb  3c                       ADDC A,R4
CODE:83ec  f5 83                    MOV DPH,A
CODE:83ee  ef                       MOV A,R7
CODE:83ef  f0                       MOVX @DPTR,A
CODE:83f0  90 07 0c                 MOV DPTR,#0x70c
CODE:83f3  e0                       MOVX A,@DPTR
CODE:83f4  ff                       MOV R7,A
CODE:83f5  ed                       MOV A,R5
CODE:83f6  24 06                    ADD A,#0x6
CODE:83f8  f5 82                    MOV DPL,A
CODE:83fa  e4                       CLR A
CODE:83fb  3c                       ADDC A,R4
CODE:83fc  f5 83                    MOV DPH,A
CODE:83fe  ef                       MOV A,R7
CODE:83ff  f0                       MOVX @DPTR,A
CODE:8400  90 07 0d                 MOV DPTR,#0x70d
CODE:8403  e0                       MOVX A,@DPTR
CODE:8404  ff                       MOV R7,A
CODE:8405  ed                       MOV A,R5
CODE:8406  24 07                    ADD A,#0x7
CODE:8408  f5 82                    MOV DPL,A
CODE:840a  e4                       CLR A
CODE:840b  3c                       ADDC A,R4
CODE:840c  f5 83                    MOV DPH,A
CODE:840e  ef                       MOV A,R7
CODE:840f  80 5f                    SJMP 0x8470
LAB_CODE_8411:
CODE:8411  30 14 65                 JNB 0x14,0x8479   ; XREF: CODE:833d 
CODE:8414  c2 14                    CLR 0x14
CODE:8416  c2 af                    CLR 0xaf
CODE:8418  90 09 36                 MOV DPTR,#0x936
CODE:841b  74 11                    MOV A,#0x11
CODE:841d  f0                       MOVX @DPTR,A
CODE:841e  a3                       INC DPTR
CODE:841f  74 20                    MOV A,#0x20
CODE:8421  f0                       MOVX @DPTR,A
CODE:8422  90 09 36                 MOV DPTR,#0x936
CODE:8425  e0                       MOVX A,@DPTR
CODE:8426  fe                       MOV R6,A
CODE:8427  a3                       INC DPTR
CODE:8428  e0                       MOVX A,@DPTR
CODE:8429  ff                       MOV R7,A
CODE:842a  f5 82                    MOV DPL,A
CODE:842c  8e 83                    MOV DPH,R6
CODE:842e  e4                       CLR A
CODE:842f  f0                       MOVX @DPTR,A
CODE:8430  8f 82                    MOV DPL,R7
CODE:8432  8e 83                    MOV DPH,R6
CODE:8434  a3                       INC DPTR
CODE:8435  f0                       MOVX @DPTR,A
CODE:8436  8f 82                    MOV DPL,R7
CODE:8438  8e 83                    MOV DPH,R6
CODE:843a  a3                       INC DPTR
CODE:843b  a3                       INC DPTR
CODE:843c  f0                       MOVX @DPTR,A
CODE:843d  8f 82                    MOV DPL,R7
CODE:843f  8e 83                    MOV DPH,R6
CODE:8441  a3                       INC DPTR
CODE:8442  a3                       INC DPTR
CODE:8443  a3                       INC DPTR
CODE:8444  f0                       MOVX @DPTR,A
CODE:8445  ef                       MOV A,R7
CODE:8446  24 04                    ADD A,#0x4
CODE:8448  f5 82                    MOV DPL,A
CODE:844a  e4                       CLR A
CODE:844b  3e                       ADDC A,R6
CODE:844c  f5 83                    MOV DPH,A
CODE:844e  e4                       CLR A
CODE:844f  f0                       MOVX @DPTR,A
CODE:8450  ef                       MOV A,R7
CODE:8451  24 05                    ADD A,#0x5
CODE:8453  f5 82                    MOV DPL,A
CODE:8455  e4                       CLR A
CODE:8456  3e                       ADDC A,R6
CODE:8457  f5 83                    MOV DPH,A
CODE:8459  e4                       CLR A
CODE:845a  f0                       MOVX @DPTR,A
CODE:845b  ef                       MOV A,R7
CODE:845c  24 06                    ADD A,#0x6
CODE:845e  f5 82                    MOV DPL,A
CODE:8460  e4                       CLR A
CODE:8461  3e                       ADDC A,R6
CODE:8462  f5 83                    MOV DPH,A
CODE:8464  e4                       CLR A
CODE:8465  f0                       MOVX @DPTR,A
CODE:8466  ef                       MOV A,R7
CODE:8467  24 07                    ADD A,#0x7
CODE:8469  f5 82                    MOV DPL,A
CODE:846b  e4                       CLR A
CODE:846c  3e                       ADDC A,R6
CODE:846d  f5 83                    MOV DPH,A
CODE:846f  e4                       CLR A
LAB_CODE_8470:
CODE:8470  f0                       MOVX @DPTR,A   ; XREF: CODE:840f 
CODE:8471  75 9c 08                 MOV 0x9c,#0x8
CODE:8474  43 99 04                 ORL 0x99,#0x4
CODE:8477  d2 af                    SETB 0xaf
LAB_CODE_8479:
CODE:8479  22                       RET   ; XREF: CODE:8337 CODE:8349 CODE:834f CODE:8411 

; ===== FUNCTION FUN_CODE_847a @ CODE:847a =====
CODE:847a  c2 36                    CLR 0x36   ; XREF: CODE:8d7d 
CODE:847c  e4                       CLR A
CODE:847d  90 08 f9                 MOV DPTR,#0x8f9
CODE:8480  f0                       MOVX @DPTR,A
LAB_CODE_8481:
CODE:8481  e4                       CLR A   ; XREF: CODE:85b5 
CODE:8482  90 08 fa                 MOV DPTR,#0x8fa
CODE:8485  f0                       MOVX @DPTR,A
LAB_CODE_8486:
CODE:8486  90 08 fa                 MOV DPTR,#0x8fa   ; XREF: CODE:85a6 
CODE:8489  e0                       MOVX A,@DPTR
CODE:848a  ff                       MOV R7,A
CODE:848b  c3                       CLR CY
CODE:848c  94 17                    SUBB A,#0x17
CODE:848e  40 03                    JC 0x8493
CODE:8490  02 85 a9                 LJMP 0x85a9
LAB_CODE_8493:
CODE:8493  90 08 f9                 MOV DPTR,#0x8f9   ; XREF: CODE:848e 
CODE:8496  e0                       MOVX A,@DPTR
CODE:8497  fe                       MOV R6,A
CODE:8498  75 f0 17                 MOV B,#0x17
CODE:849b  a4                       MUL AB
CODE:849c  fd                       MOV R5,A
CODE:849d  ef                       MOV A,R7
CODE:849e  2d                       ADD A,R5
CODE:849f  78 30                    MOV R0,#0x30
CODE:84a1  f6                       MOV @R0,A
CODE:84a2  ee                       MOV A,R6
CODE:84a3  75 f0 17                 MOV B,#0x17
CODE:84a6  a4                       MUL AB
CODE:84a7  24 00                    ADD A,#0x0
CODE:84a9  f5 82                    MOV DPL,A
CODE:84ab  e4                       CLR A
CODE:84ac  34 00                    ADDC A,#0x0
CODE:84ae  f5 83                    MOV DPH,A
CODE:84b0  e5 82                    MOV A,DPL
CODE:84b2  2f                       ADD A,R7
CODE:84b3  f5 82                    MOV DPL,A
CODE:84b5  e4                       CLR A
CODE:84b6  35 83                    ADDC A,DPH
CODE:84b8  f5 83                    MOV DPH,A
CODE:84ba  e0                       MOVX A,@DPTR
CODE:84bb  d3                       SETB CY
CODE:84bc  94 00                    SUBB A,#0x0
CODE:84be  50 03                    JNC 0x84c3
CODE:84c0  02 85 a0                 LJMP 0x85a0
LAB_CODE_84c3:
CODE:84c3  e6                       MOV A,@R0   ; XREF: CODE:84be 
CODE:84c4  ff                       MOV R7,A
CODE:84c5  24 9c                    ADD A,#0x9c
CODE:84c7  f5 82                    MOV DPL,A
CODE:84c9  e4                       CLR A
CODE:84ca  34 02                    ADDC A,#0x2
CODE:84cc  f5 83                    MOV DPH,A
CODE:84ce  e0                       MOVX A,@DPTR
CODE:84cf  90 00 56                 MOV DPTR,#0x56
CODE:84d2  93                       MOVC A,@A+DPTR
CODE:84d3  fe                       MOV R6,A
CODE:84d4  74 f6                    MOV A,#0xf6
CODE:84d6  2f                       ADD A,R7
CODE:84d7  f5 82                    MOV DPL,A
CODE:84d9  e4                       CLR A
CODE:84da  34 01                    ADDC A,#0x1
CODE:84dc  f5 83                    MOV DPH,A
CODE:84de  ee                       MOV A,R6
CODE:84df  f0                       MOVX @DPTR,A
CODE:84e0  e6                       MOV A,@R0
CODE:84e1  24 8a                    ADD A,#0x8a
CODE:84e3  f5 82                    MOV DPL,A
CODE:84e5  e4                       CLR A
CODE:84e6  34 00                    ADDC A,#0x0
CODE:84e8  f5 83                    MOV DPH,A
CODE:84ea  e0                       MOVX A,@DPTR
CODE:84eb  70 50                    JNZ 0x853d
CODE:84ed  e6                       MOV A,@R0
CODE:84ee  ff                       MOV R7,A
CODE:84ef  24 9c                    ADD A,#0x9c
CODE:84f1  f5 82                    MOV DPL,A
CODE:84f3  e4                       CLR A
CODE:84f4  34 02                    ADDC A,#0x2
CODE:84f6  f5 83                    MOV DPH,A
CODE:84f8  e0                       MOVX A,@DPTR
CODE:84f9  24 03                    ADD A,#0x3
CODE:84fb  f0                       MOVX @DPTR,A
CODE:84fc  74 9c                    MOV A,#0x9c
CODE:84fe  2f                       ADD A,R7
CODE:84ff  f5 82                    MOV DPL,A
CODE:8501  e4                       CLR A
CODE:8502  34 02                    ADDC A,#0x2
CODE:8504  f5 83                    MOV DPH,A
CODE:8506  e0                       MOVX A,@DPTR
CODE:8507  b4 03 11                 CJNE A,#0x3,0x851b
CODE:850a  12 b7 9e                 LCALL 0xb79e
CODE:850d  78 30                    MOV R0,#0x30
CODE:850f  e6                       MOV A,@R0
CODE:8510  24 31                    ADD A,#0x31
CODE:8512  f5 82                    MOV DPL,A
CODE:8514  e4                       CLR A
CODE:8515  34 03                    ADDC A,#0x3
CODE:8517  f5 83                    MOV DPH,A
CODE:8519  ef                       MOV A,R7
CODE:851a  f0                       MOVX @DPTR,A
LAB_CODE_851b:
CODE:851b  78 30                    MOV R0,#0x30   ; XREF: CODE:8507 
CODE:851d  e6                       MOV A,@R0
CODE:851e  ff                       MOV R7,A
CODE:851f  24 9c                    ADD A,#0x9c
CODE:8521  f5 82                    MOV DPL,A
CODE:8523  e4                       CLR A
CODE:8524  34 02                    ADDC A,#0x2
CODE:8526  f5 83                    MOV DPH,A
CODE:8528  e0                       MOVX A,@DPTR
CODE:8529  d3                       SETB CY
CODE:852a  94 03                    SUBB A,#0x3
CODE:852c  40 72                    JC 0x85a0
CODE:852e  74 8a                    MOV A,#0x8a
CODE:8530  2f                       ADD A,R7
CODE:8531  f5 82                    MOV DPL,A
CODE:8533  e4                       CLR A
CODE:8534  34 00                    ADDC A,#0x0
CODE:8536  f5 83                    MOV DPH,A
CODE:8538  74 01                    MOV A,#0x1
CODE:853a  f0                       MOVX @DPTR,A
CODE:853b  80 63                    SJMP 0x85a0
LAB_CODE_853d:
CODE:853d  d2 36                    SETB 0x36   ; XREF: CODE:84eb 
CODE:853f  78 30                    MOV R0,#0x30
CODE:8541  e6                       MOV A,@R0
CODE:8542  ff                       MOV R7,A
CODE:8543  24 9c                    ADD A,#0x9c
CODE:8545  f5 82                    MOV DPL,A
CODE:8547  e4                       CLR A
CODE:8548  34 02                    ADDC A,#0x2
CODE:854a  f5 83                    MOV DPH,A
CODE:854c  e0                       MOVX A,@DPTR
CODE:854d  24 fd                    ADD A,#0xfd
CODE:854f  f0                       MOVX @DPTR,A
CODE:8550  74 9c                    MOV A,#0x9c
CODE:8552  2f                       ADD A,R7
CODE:8553  f5 82                    MOV DPL,A
CODE:8555  e4                       CLR A
CODE:8556  34 02                    ADDC A,#0x2
CODE:8558  f5 83                    MOV DPH,A
CODE:855a  e0                       MOVX A,@DPTR
CODE:855b  c3                       CLR CY
CODE:855c  94 04                    SUBB A,#0x4
CODE:855e  50 40                    JNC 0x85a0
CODE:8560  e6                       MOV A,@R0
CODE:8561  ff                       MOV R7,A
CODE:8562  24 8a                    ADD A,#0x8a
CODE:8564  f5 82                    MOV DPL,A
CODE:8566  e4                       CLR A
CODE:8567  34 00                    ADDC A,#0x0
CODE:8569  f5 83                    MOV DPH,A
CODE:856b  e4                       CLR A
CODE:856c  f0                       MOVX @DPTR,A
CODE:856d  90 08 fa                 MOV DPTR,#0x8fa
CODE:8570  e0                       MOVX A,@DPTR
CODE:8571  fe                       MOV R6,A
CODE:8572  90 08 f9                 MOV DPTR,#0x8f9
CODE:8575  e0                       MOVX A,@DPTR
CODE:8576  75 f0 17                 MOV B,#0x17
CODE:8579  a4                       MUL AB
CODE:857a  24 00                    ADD A,#0x0
CODE:857c  f5 82                    MOV DPL,A
CODE:857e  e4                       CLR A
CODE:857f  34 00                    ADDC A,#0x0
CODE:8581  f5 83                    MOV DPH,A
CODE:8583  e5 82                    MOV A,DPL
CODE:8585  2e                       ADD A,R6
CODE:8586  f5 82                    MOV DPL,A
CODE:8588  e4                       CLR A
CODE:8589  35 83                    ADDC A,DPH
CODE:858b  f5 83                    MOV DPH,A
CODE:858d  e4                       CLR A
CODE:858e  f0                       MOVX @DPTR,A
CODE:858f  74 f6                    MOV A,#0xf6
CODE:8591  2f                       ADD A,R7
CODE:8592  f5 82                    MOV DPL,A
CODE:8594  e4                       CLR A
CODE:8595  34 01                    ADDC A,#0x1
CODE:8597  f5 83                    MOV DPH,A
CODE:8599  e4                       CLR A
CODE:859a  f0                       MOVX @DPTR,A
CODE:859b  90 01 5b                 MOV DPTR,#0x15b
CODE:859e  04                       INC A
CODE:859f  f0                       MOVX @DPTR,A
LAB_CODE_85a0:
CODE:85a0  90 08 fa                 MOV DPTR,#0x8fa   ; XREF: CODE:84c0 CODE:852c CODE:853b CODE:855e 
CODE:85a3  e0                       MOVX A,@DPTR
CODE:85a4  04                       INC A
CODE:85a5  f0                       MOVX @DPTR,A
CODE:85a6  02 84 86                 LJMP 0x8486
LAB_CODE_85a9:
CODE:85a9  90 08 f9                 MOV DPTR,#0x8f9   ; XREF: CODE:8490 
CODE:85ac  e0                       MOVX A,@DPTR
CODE:85ad  04                       INC A
CODE:85ae  f0                       MOVX @DPTR,A
CODE:85af  e0                       MOVX A,@DPTR
CODE:85b0  c3                       CLR CY
CODE:85b1  94 06                    SUBB A,#0x6
CODE:85b3  50 03                    JNC 0x85b8
CODE:85b5  02 84 81                 LJMP 0x8481
LAB_CODE_85b8:
CODE:85b8  22                       RET   ; XREF: CODE:85b3 

; ===== FUNCTION FUN_CODE_85b9 @ CODE:85b9 =====
CODE:85b9  90 08 f5                 MOV DPTR,#0x8f5   ; XREF: CODE:2e95 
CODE:85bc  ef                       MOV A,R7
CODE:85bd  f0                       MOVX @DPTR,A
CODE:85be  79 57                    MOV R1,#0x57
CODE:85c0  e7                       MOV A,@R1
CODE:85c1  d3                       SETB CY
CODE:85c2  78 1b                    MOV R0,#0x1b
CODE:85c4  96                       SUBB A,@R0
CODE:85c5  40 65                    JC 0x862c
CODE:85c7  e4                       CLR A
CODE:85c8  78 57                    MOV R0,#0x57
CODE:85ca  f6                       MOV @R0,A
CODE:85cb  12 ac a8                 LCALL 0xaca8
CODE:85ce  12 bb dd                 LCALL 0xbbdd
CODE:85d1  e4                       CLR A
CODE:85d2  78 2d                    MOV R0,#0x2d
CODE:85d4  f6                       MOV @R0,A
LAB_CODE_85d5:
CODE:85d5  78 2d                    MOV R0,#0x2d   ; XREF: CODE:8627 
CODE:85d7  e6                       MOV A,@R0
CODE:85d8  ff                       MOV R7,A
CODE:85d9  c3                       CLR CY
CODE:85da  94 17                    SUBB A,#0x17
CODE:85dc  50 4b                    JNC 0x8629
CODE:85de  75 f0 02                 MOV B,#0x2
CODE:85e1  ef                       MOV A,R7
CODE:85e2  a4                       MUL AB
CODE:85e3  24 cb                    ADD A,#0xcb
CODE:85e5  f5 82                    MOV DPL,A
CODE:85e7  e5 f0                    MOV A,B
CODE:85e9  34 03                    ADDC A,#0x3
CODE:85eb  f5 83                    MOV DPH,A
CODE:85ed  e4                       CLR A
CODE:85ee  75 f0 02                 MOV B,#0x2
CODE:85f1  12 80 f2                 LCALL 0x80f2
CODE:85f4  75 f0 02                 MOV B,#0x2
CODE:85f7  ef                       MOV A,R7
CODE:85f8  a4                       MUL AB
CODE:85f9  24 cb                    ADD A,#0xcb
CODE:85fb  f5 82                    MOV DPL,A
CODE:85fd  e5 f0                    MOV A,B
CODE:85ff  34 03                    ADDC A,#0x3
CODE:8601  f5 83                    MOV DPH,A
CODE:8603  e0                       MOVX A,@DPTR
CODE:8604  fe                       MOV R6,A
CODE:8605  a3                       INC DPTR
CODE:8606  e0                       MOVX A,@DPTR
CODE:8607  d3                       SETB CY
CODE:8608  94 ff                    SUBB A,#0xff
CODE:860a  ee                       MOV A,R6
CODE:860b  94 02                    SUBB A,#0x2
CODE:860d  40 15                    JC 0x8624
CODE:860f  78 2d                    MOV R0,#0x2d
CODE:8611  e6                       MOV A,@R0
CODE:8612  75 f0 02                 MOV B,#0x2
CODE:8615  a4                       MUL AB
CODE:8616  24 cb                    ADD A,#0xcb
CODE:8618  f5 82                    MOV DPL,A
CODE:861a  e5 f0                    MOV A,B
CODE:861c  34 03                    ADDC A,#0x3
CODE:861e  f5 83                    MOV DPH,A
CODE:8620  e4                       CLR A
CODE:8621  f0                       MOVX @DPTR,A
CODE:8622  a3                       INC DPTR
CODE:8623  f0                       MOVX @DPTR,A
LAB_CODE_8624:
CODE:8624  78 2d                    MOV R0,#0x2d   ; XREF: CODE:860d 
CODE:8626  06                       INC @R0
CODE:8627  80 ac                    SJMP 0x85d5
LAB_CODE_8629:
CODE:8629  12 ad 0a                 LCALL 0xad0a   ; XREF: CODE:85dc 
LAB_CODE_862c:
CODE:862c  90 08 f5                 MOV DPTR,#0x8f5   ; XREF: CODE:85c5 
CODE:862f  e0                       MOVX A,@DPTR
CODE:8630  ff                       MOV R7,A
CODE:8631  75 f0 02                 MOV B,#0x2
CODE:8634  a4                       MUL AB
CODE:8635  24 cb                    ADD A,#0xcb
CODE:8637  f5 82                    MOV DPL,A
CODE:8639  e5 f0                    MOV A,B
CODE:863b  34 03                    ADDC A,#0x3
CODE:863d  f5 83                    MOV DPH,A
CODE:863f  e0                       MOVX A,@DPTR
CODE:8640  fc                       MOV R4,A
CODE:8641  a3                       INC DPTR
CODE:8642  e0                       MOVX A,@DPTR
CODE:8643  fd                       MOV R5,A
CODE:8644  24 ba                    ADD A,#0xba
CODE:8646  f5 82                    MOV DPL,A
CODE:8648  74 00                    MOV A,#0x0
CODE:864a  3c                       ADDC A,R4
CODE:864b  f5 83                    MOV DPH,A
CODE:864d  e4                       CLR A
CODE:864e  93                       MOVC A,@A+DPTR
CODE:864f  fb                       MOV R3,A
CODE:8650  90 08 f6                 MOV DPTR,#0x8f6
CODE:8653  e4                       CLR A
CODE:8654  f0                       MOVX @DPTR,A
CODE:8655  a3                       INC DPTR
CODE:8656  eb                       MOV A,R3
CODE:8657  f0                       MOVX @DPTR,A
CODE:8658  74 e6                    MOV A,#0xe6
CODE:865a  2d                       ADD A,R5
CODE:865b  f5 82                    MOV DPL,A
CODE:865d  74 04                    MOV A,#0x4
CODE:865f  3c                       ADDC A,R4
CODE:8660  f5 83                    MOV DPH,A
CODE:8662  e4                       CLR A
CODE:8663  93                       MOVC A,@A+DPTR
CODE:8664  fd                       MOV R5,A
CODE:8665  90 08 f8                 MOV DPTR,#0x8f8
CODE:8668  e4                       CLR A
CODE:8669  f0                       MOVX @DPTR,A
CODE:866a  a3                       INC DPTR
CODE:866b  ed                       MOV A,R5
CODE:866c  f0                       MOVX @DPTR,A
CODE:866d  75 f0 02                 MOV B,#0x2
CODE:8670  ef                       MOV A,R7
CODE:8671  a4                       MUL AB
CODE:8672  24 cb                    ADD A,#0xcb
CODE:8674  f5 82                    MOV DPL,A
CODE:8676  e5 f0                    MOV A,B
CODE:8678  34 03                    ADDC A,#0x3
CODE:867a  f5 83                    MOV DPH,A
CODE:867c  e0                       MOVX A,@DPTR
CODE:867d  fe                       MOV R6,A
CODE:867e  a3                       INC DPTR
CODE:867f  e0                       MOVX A,@DPTR
CODE:8680  24 12                    ADD A,#0x12
CODE:8682  f5 82                    MOV DPL,A
CODE:8684  74 09                    MOV A,#0x9
CODE:8686  3e                       ADDC A,R6
CODE:8687  f5 83                    MOV DPH,A
CODE:8689  e4                       CLR A
CODE:868a  93                       MOVC A,@A+DPTR
CODE:868b  ff                       MOV R7,A
CODE:868c  90 08 fa                 MOV DPTR,#0x8fa
CODE:868f  e4                       CLR A
CODE:8690  f0                       MOVX @DPTR,A
CODE:8691  a3                       INC DPTR
CODE:8692  ef                       MOV A,R7
CODE:8693  f0                       MOVX @DPTR,A
CODE:8694  e4                       CLR A
CODE:8695  78 2d                    MOV R0,#0x2d
CODE:8697  f6                       MOV @R0,A
LAB_CODE_8698:
CODE:8698  78 2d                    MOV R0,#0x2d   ; XREF: CODE:86e5 
CODE:869a  e6                       MOV A,@R0
CODE:869b  ff                       MOV R7,A
CODE:869c  c3                       CLR CY
CODE:869d  94 06                    SUBB A,#0x6
CODE:869f  50 46                    JNC 0x86e7
CODE:86a1  ef                       MOV A,R7
CODE:86a2  75 f0 17                 MOV B,#0x17
CODE:86a5  a4                       MUL AB
CODE:86a6  ff                       MOV R7,A
CODE:86a7  90 08 f5                 MOV DPTR,#0x8f5
CODE:86aa  e0                       MOVX A,@DPTR
CODE:86ab  2f                       ADD A,R7
CODE:86ac  08                       INC R0
CODE:86ad  f6                       MOV @R0,A
CODE:86ae  a3                       INC DPTR
CODE:86af  a3                       INC DPTR
CODE:86b0  e0                       MOVX A,@DPTR
CODE:86b1  ff                       MOV R7,A
CODE:86b2  e6                       MOV A,@R0
CODE:86b3  fe                       MOV R6,A
CODE:86b4  24 20                    ADD A,#0x20
CODE:86b6  f5 82                    MOV DPL,A
CODE:86b8  e4                       CLR A
CODE:86b9  34 06                    ADDC A,#0x6
CODE:86bb  f5 83                    MOV DPH,A
CODE:86bd  ef                       MOV A,R7
CODE:86be  f0                       MOVX @DPTR,A
CODE:86bf  90 08 f8                 MOV DPTR,#0x8f8
CODE:86c2  a3                       INC DPTR
CODE:86c3  e0                       MOVX A,@DPTR
CODE:86c4  ff                       MOV R7,A
CODE:86c5  74 8b                    MOV A,#0x8b
CODE:86c7  2e                       ADD A,R6
CODE:86c8  f5 82                    MOV DPL,A
CODE:86ca  e4                       CLR A
CODE:86cb  34 05                    ADDC A,#0x5
CODE:86cd  f5 83                    MOV DPH,A
CODE:86cf  ef                       MOV A,R7
CODE:86d0  f0                       MOVX @DPTR,A
CODE:86d1  90 08 fa                 MOV DPTR,#0x8fa
CODE:86d4  a3                       INC DPTR
CODE:86d5  e0                       MOVX A,@DPTR
CODE:86d6  ff                       MOV R7,A
CODE:86d7  e6                       MOV A,@R0
CODE:86d8  24 f6                    ADD A,#0xf6
CODE:86da  f5 82                    MOV DPL,A
CODE:86dc  e4                       CLR A
CODE:86dd  34 04                    ADDC A,#0x4
CODE:86df  f5 83                    MOV DPH,A
CODE:86e1  ef                       MOV A,R7
CODE:86e2  f0                       MOVX @DPTR,A
CODE:86e3  18                       DEC R0
CODE:86e4  06                       INC @R0
CODE:86e5  80 b1                    SJMP 0x8698
LAB_CODE_86e7:
CODE:86e7  22                       RET   ; XREF: CODE:869f 

; ===== FUNCTION FUN_CODE_86e8 @ CODE:86e8 =====
CODE:86e8  53 e5 80                 ANL 0xe5,#0x80   ; XREF: CODE:9ccd 
CODE:86eb  43 ed 7f                 ORL 0xed,#0x7f
CODE:86ee  75 e7 00                 MOV 0xe7,#0x0
CODE:86f1  75 ef ff                 MOV 0xef,#0xff
CODE:86f4  53 e6 78                 ANL 0xe6,#0x78
CODE:86f7  43 ee 87                 ORL 0xee,#0x87
CODE:86fa  53 e1 1f                 ANL 0xe1,#0x1f
CODE:86fd  43 e9 e0                 ORL 0xe9,#0xe0
CODE:8700  53 d1 ef                 ANL 0xd1,#0xef
CODE:8703  43 d9 10                 ORL 0xd9,#0x10
CODE:8706  ef                       MOV A,R7
CODE:8707  b4 17 00                 CJNE A,#0x17,0x870a
LAB_CODE_870a:
CODE:870a  40 03                    JC 0x870f   ; XREF: CODE:8707 
CODE:870c  02 87 fe                 LJMP 0x87fe
LAB_CODE_870f:
CODE:870f  90 87 16                 MOV DPTR,#0x8716   ; XREF: CODE:870a 
CODE:8712  f8                       MOV R0,A
CODE:8713  28                       ADD A,R0
CODE:8714  28                       ADD A,R0
CODE:8715  73                       JMP @A+DPTR
LAB_CODE_87fe:
CODE:87fe  7f 01                    MOV R7,#0x1   ; XREF: CODE:870c 
CODE:8800  7e 00                    MOV R6,#0x0
CODE:8802  02 bd 5a                 LJMP 0xbd5a

; ===== FUNCTION FUN_CODE_8805 @ CODE:8805 =====
CODE:8805  74 31                    MOV A,#0x31   ; XREF: CODE:2fd8 CODE:757d CODE:8050 CODE:8c1b CODE:965e CODE:98ef CODE:a5e6 CODE:a7f5 CODE:a964 CODE:aa4b 
CODE:8807  2f                       ADD A,R7
CODE:8808  f5 82                    MOV DPL,A
CODE:880a  e4                       CLR A
CODE:880b  34 03                    ADDC A,#0x3
CODE:880d  f5 83                    MOV DPH,A
CODE:880f  e0                       MOVX A,@DPTR
CODE:8810  78 30                    MOV R0,#0x30
CODE:8812  f6                       MOV @R0,A
CODE:8813  e6                       MOV A,@R0
CODE:8814  fe                       MOV R6,A
CODE:8815  90 03 ba                 MOV DPTR,#0x3ba
CODE:8818  93                       MOVC A,@A+DPTR
CODE:8819  fd                       MOV R5,A
CODE:881a  74 5c                    MOV A,#0x5c
CODE:881c  2f                       ADD A,R7
CODE:881d  f5 82                    MOV DPL,A
CODE:881f  e4                       CLR A
CODE:8820  34 01                    ADDC A,#0x1
CODE:8822  f5 83                    MOV DPH,A
CODE:8824  e0                       MOVX A,@DPTR
CODE:8825  fc                       MOV R4,A
CODE:8826  ed                       MOV A,R5
CODE:8827  8c f0                    MOV B,R4
CODE:8829  a4                       MUL AB
CODE:882a  08                       INC R0
CODE:882b  f6                       MOV @R0,A
CODE:882c  75 f0 64                 MOV B,#0x64
CODE:882f  84                       DIV AB
CODE:8830  fd                       MOV R5,A
CODE:8831  f6                       MOV @R0,A
CODE:8832  74 f6                    MOV A,#0xf6
CODE:8834  2f                       ADD A,R7
CODE:8835  f5 82                    MOV DPL,A
CODE:8837  e4                       CLR A
CODE:8838  34 01                    ADDC A,#0x1
CODE:883a  f5 83                    MOV DPH,A
CODE:883c  e0                       MOVX A,@DPTR
CODE:883d  fc                       MOV R4,A
CODE:883e  ed                       MOV A,R5
CODE:883f  8c f0                    MOV B,R4
CODE:8841  a4                       MUL AB
CODE:8842  fd                       MOV R5,A
CODE:8843  f6                       MOV @R0,A
CODE:8844  74 20                    MOV A,#0x20
CODE:8846  2f                       ADD A,R7
CODE:8847  f5 82                    MOV DPL,A
CODE:8849  e4                       CLR A
CODE:884a  34 06                    ADDC A,#0x6
CODE:884c  f5 83                    MOV DPH,A
CODE:884e  ed                       MOV A,R5
CODE:884f  f0                       MOVX @DPTR,A
CODE:8850  ee                       MOV A,R6
CODE:8851  90 07 e6                 MOV DPTR,#0x7e6
CODE:8854  93                       MOVC A,@A+DPTR
CODE:8855  fe                       MOV R6,A
CODE:8856  74 5c                    MOV A,#0x5c
CODE:8858  2f                       ADD A,R7
CODE:8859  f5 82                    MOV DPL,A
CODE:885b  e4                       CLR A
CODE:885c  34 01                    ADDC A,#0x1
CODE:885e  f5 83                    MOV DPH,A
CODE:8860  e0                       MOVX A,@DPTR
CODE:8861  fd                       MOV R5,A
CODE:8862  ee                       MOV A,R6
CODE:8863  8d f0                    MOV B,R5
CODE:8865  a4                       MUL AB
CODE:8866  08                       INC R0
CODE:8867  f6                       MOV @R0,A
CODE:8868  75 f0 64                 MOV B,#0x64
CODE:886b  84                       DIV AB
CODE:886c  fe                       MOV R6,A
CODE:886d  f6                       MOV @R0,A
CODE:886e  74 f6                    MOV A,#0xf6
CODE:8870  2f                       ADD A,R7
CODE:8871  f5 82                    MOV DPL,A
CODE:8873  e4                       CLR A
CODE:8874  34 01                    ADDC A,#0x1
CODE:8876  f5 83                    MOV DPH,A
CODE:8878  e0                       MOVX A,@DPTR
CODE:8879  fd                       MOV R5,A
CODE:887a  ee                       MOV A,R6
CODE:887b  8d f0                    MOV B,R5
CODE:887d  a4                       MUL AB
CODE:887e  fe                       MOV R6,A
CODE:887f  f6                       MOV @R0,A
CODE:8880  74 8b                    MOV A,#0x8b
CODE:8882  2f                       ADD A,R7
CODE:8883  f5 82                    MOV DPL,A
CODE:8885  e4                       CLR A
CODE:8886  34 05                    ADDC A,#0x5
CODE:8888  f5 83                    MOV DPH,A
CODE:888a  ee                       MOV A,R6
CODE:888b  f0                       MOVX @DPTR,A
CODE:888c  78 30                    MOV R0,#0x30
CODE:888e  e6                       MOV A,@R0
CODE:888f  90 0c 12                 MOV DPTR,#0xc12
CODE:8892  93                       MOVC A,@A+DPTR
CODE:8893  fe                       MOV R6,A
CODE:8894  74 5c                    MOV A,#0x5c
CODE:8896  2f                       ADD A,R7
CODE:8897  f5 82                    MOV DPL,A
CODE:8899  e4                       CLR A
CODE:889a  34 01                    ADDC A,#0x1
CODE:889c  f5 83                    MOV DPH,A
CODE:889e  e0                       MOVX A,@DPTR
CODE:889f  fd                       MOV R5,A
CODE:88a0  ee                       MOV A,R6
CODE:88a1  8d f0                    MOV B,R5
CODE:88a3  a4                       MUL AB
CODE:88a4  78 33                    MOV R0,#0x33
CODE:88a6  f6                       MOV @R0,A
CODE:88a7  75 f0 64                 MOV B,#0x64
CODE:88aa  84                       DIV AB
CODE:88ab  fe                       MOV R6,A
CODE:88ac  f6                       MOV @R0,A
CODE:88ad  74 f6                    MOV A,#0xf6
CODE:88af  2f                       ADD A,R7
CODE:88b0  f5 82                    MOV DPL,A
CODE:88b2  e4                       CLR A
CODE:88b3  34 01                    ADDC A,#0x1
CODE:88b5  f5 83                    MOV DPH,A
CODE:88b7  e0                       MOVX A,@DPTR
CODE:88b8  fd                       MOV R5,A
CODE:88b9  ee                       MOV A,R6
CODE:88ba  8d f0                    MOV B,R5
CODE:88bc  a4                       MUL AB
CODE:88bd  fe                       MOV R6,A
CODE:88be  f6                       MOV @R0,A
CODE:88bf  74 f6                    MOV A,#0xf6
CODE:88c1  2f                       ADD A,R7
CODE:88c2  f5 82                    MOV DPL,A
CODE:88c4  e4                       CLR A
CODE:88c5  34 04                    ADDC A,#0x4
CODE:88c7  f5 83                    MOV DPH,A
CODE:88c9  ee                       MOV A,R6
CODE:88ca  f0                       MOVX @DPTR,A
CODE:88cb  78 69                    MOV R0,#0x69
CODE:88cd  e6                       MOV A,@R0
CODE:88ce  64 10                    XRL A,#0x10
CODE:88d0  70 4a                    JNZ 0x891c
CODE:88d2  74 20                    MOV A,#0x20
CODE:88d4  2f                       ADD A,R7
CODE:88d5  f5 82                    MOV DPL,A
CODE:88d7  e4                       CLR A
CODE:88d8  34 06                    ADDC A,#0x6
CODE:88da  f5 83                    MOV DPH,A
CODE:88dc  e0                       MOVX A,@DPTR
CODE:88dd  c3                       CLR CY
CODE:88de  94 1e                    SUBB A,#0x1e
CODE:88e0  50 3a                    JNC 0x891c
CODE:88e2  74 8b                    MOV A,#0x8b
CODE:88e4  2f                       ADD A,R7
CODE:88e5  f5 82                    MOV DPL,A
CODE:88e7  e4                       CLR A
CODE:88e8  34 05                    ADDC A,#0x5
CODE:88ea  f5 83                    MOV DPH,A
CODE:88ec  e0                       MOVX A,@DPTR
CODE:88ed  c3                       CLR CY
CODE:88ee  94 1e                    SUBB A,#0x1e
CODE:88f0  50 2a                    JNC 0x891c
CODE:88f2  74 f6                    MOV A,#0xf6
CODE:88f4  2f                       ADD A,R7
CODE:88f5  f5 82                    MOV DPL,A
CODE:88f7  e4                       CLR A
CODE:88f8  34 04                    ADDC A,#0x4
CODE:88fa  f5 83                    MOV DPH,A
CODE:88fc  e0                       MOVX A,@DPTR
CODE:88fd  c3                       CLR CY
CODE:88fe  94 1e                    SUBB A,#0x1e
CODE:8900  50 1a                    JNC 0x891c
CODE:8902  74 20                    MOV A,#0x20
CODE:8904  2f                       ADD A,R7
CODE:8905  f5 82                    MOV DPL,A
CODE:8907  e4                       CLR A
CODE:8908  34 06                    ADDC A,#0x6
CODE:890a  f5 83                    MOV DPH,A
CODE:890c  74 c8                    MOV A,#0xc8
CODE:890e  f0                       MOVX @DPTR,A
CODE:890f  74 8b                    MOV A,#0x8b
CODE:8911  2f                       ADD A,R7
CODE:8912  f5 82                    MOV DPL,A
CODE:8914  e4                       CLR A
CODE:8915  34 05                    ADDC A,#0x5
CODE:8917  f5 83                    MOV DPH,A
CODE:8919  74 c8                    MOV A,#0xc8
CODE:891b  f0                       MOVX @DPTR,A
LAB_CODE_891c:
CODE:891c  22                       RET   ; XREF: CODE:88d0 CODE:88e0 CODE:88f0 CODE:8900 

; ===== FUNCTION FUN_CODE_8b45 @ CODE:8b45 =====
CODE:8b45  90 08 f5                 MOV DPTR,#0x8f5   ; XREF: CODE:2ec5 
CODE:8b48  ef                       MOV A,R7
CODE:8b49  f0                       MOVX @DPTR,A
CODE:8b4a  79 57                    MOV R1,#0x57
CODE:8b4c  e7                       MOV A,@R1
CODE:8b4d  d3                       SETB CY
CODE:8b4e  78 1b                    MOV R0,#0x1b
CODE:8b50  96                       SUBB A,@R0
CODE:8b51  50 03                    JNC 0x8b56
CODE:8b53  02 8b e9                 LJMP 0x8be9
LAB_CODE_8b56:
CODE:8b56  e4                       CLR A   ; XREF: CODE:8b51 
CODE:8b57  78 57                    MOV R0,#0x57
CODE:8b59  f6                       MOV @R0,A
CODE:8b5a  78 2e                    MOV R0,#0x2e
CODE:8b5c  f6                       MOV @R0,A
LAB_CODE_8b5d:
CODE:8b5d  e4                       CLR A   ; XREF: CODE:8be6 
CODE:8b5e  78 2d                    MOV R0,#0x2d
CODE:8b60  f6                       MOV @R0,A
LAB_CODE_8b61:
CODE:8b61  78 2d                    MOV R0,#0x2d   ; XREF: CODE:8bdc 
CODE:8b63  e6                       MOV A,@R0
CODE:8b64  ff                       MOV R7,A
CODE:8b65  c3                       CLR CY
CODE:8b66  94 06                    SUBB A,#0x6
CODE:8b68  50 74                    JNC 0x8bde
CODE:8b6a  ef                       MOV A,R7
CODE:8b6b  75 f0 17                 MOV B,#0x17
CODE:8b6e  a4                       MUL AB
CODE:8b6f  08                       INC R0
CODE:8b70  26                       ADD A,@R0
CODE:8b71  08                       INC R0
CODE:8b72  f6                       MOV @R0,A
CODE:8b73  75 f0 02                 MOV B,#0x2
CODE:8b76  a4                       MUL AB
CODE:8b77  24 cb                    ADD A,#0xcb
CODE:8b79  f5 82                    MOV DPL,A
CODE:8b7b  e5 f0                    MOV A,B
CODE:8b7d  34 03                    ADDC A,#0x3
CODE:8b7f  f5 83                    MOV DPH,A
CODE:8b81  e0                       MOVX A,@DPTR
CODE:8b82  fe                       MOV R6,A
CODE:8b83  a3                       INC DPTR
CODE:8b84  e0                       MOVX A,@DPTR
CODE:8b85  d3                       SETB CY
CODE:8b86  94 00                    SUBB A,#0x0
CODE:8b88  ee                       MOV A,R6
CODE:8b89  94 00                    SUBB A,#0x0
CODE:8b8b  40 4c                    JC 0x8bd9
CODE:8b8d  e6                       MOV A,@R0
CODE:8b8e  ff                       MOV R7,A
CODE:8b8f  24 f6                    ADD A,#0xf6
CODE:8b91  f5 82                    MOV DPL,A
CODE:8b93  e4                       CLR A
CODE:8b94  34 01                    ADDC A,#0x1
CODE:8b96  f5 83                    MOV DPH,A
CODE:8b98  e0                       MOVX A,@DPTR
CODE:8b99  c3                       CLR CY
CODE:8b9a  94 01                    SUBB A,#0x1
CODE:8b9c  50 2e                    JNC 0x8bcc
CODE:8b9e  e6                       MOV A,@R0
CODE:8b9f  fe                       MOV R6,A
CODE:8ba0  24 f6                    ADD A,#0xf6
CODE:8ba2  f5 82                    MOV DPL,A
CODE:8ba4  e4                       CLR A
CODE:8ba5  34 01                    ADDC A,#0x1
CODE:8ba7  f5 83                    MOV DPH,A
CODE:8ba9  e4                       CLR A
CODE:8baa  f0                       MOVX @DPTR,A
CODE:8bab  75 f0 02                 MOV B,#0x2
CODE:8bae  ee                       MOV A,R6
CODE:8baf  a4                       MUL AB
CODE:8bb0  24 cb                    ADD A,#0xcb
CODE:8bb2  f5 82                    MOV DPL,A
CODE:8bb4  e5 f0                    MOV A,B
CODE:8bb6  34 03                    ADDC A,#0x3
CODE:8bb8  f5 83                    MOV DPH,A
CODE:8bba  e4                       CLR A
CODE:8bbb  f0                       MOVX @DPTR,A
CODE:8bbc  a3                       INC DPTR
CODE:8bbd  f0                       MOVX @DPTR,A
CODE:8bbe  74 31                    MOV A,#0x31
CODE:8bc0  2e                       ADD A,R6
CODE:8bc1  f5 82                    MOV DPL,A
CODE:8bc3  e4                       CLR A
CODE:8bc4  34 03                    ADDC A,#0x3
CODE:8bc6  f5 83                    MOV DPH,A
CODE:8bc8  e4                       CLR A
CODE:8bc9  f0                       MOVX @DPTR,A
CODE:8bca  80 0d                    SJMP 0x8bd9
LAB_CODE_8bcc:
CODE:8bcc  74 f6                    MOV A,#0xf6   ; XREF: CODE:8b9c 
CODE:8bce  2f                       ADD A,R7
CODE:8bcf  f5 82                    MOV DPL,A
CODE:8bd1  e4                       CLR A
CODE:8bd2  34 01                    ADDC A,#0x1
CODE:8bd4  f5 83                    MOV DPH,A
CODE:8bd6  e0                       MOVX A,@DPTR
CODE:8bd7  14                       DEC A
CODE:8bd8  f0                       MOVX @DPTR,A
LAB_CODE_8bd9:
CODE:8bd9  78 2d                    MOV R0,#0x2d   ; XREF: CODE:8b8b CODE:8bca 
CODE:8bdb  06                       INC @R0
CODE:8bdc  80 83                    SJMP 0x8b61
LAB_CODE_8bde:
CODE:8bde  78 2e                    MOV R0,#0x2e   ; XREF: CODE:8b68 
CODE:8be0  06                       INC @R0
CODE:8be1  e6                       MOV A,@R0
CODE:8be2  64 17                    XRL A,#0x17
CODE:8be4  60 03                    JZ 0x8be9
CODE:8be6  02 8b 5d                 LJMP 0x8b5d
LAB_CODE_8be9:
CODE:8be9  e4                       CLR A   ; XREF: CODE:8b53 CODE:8be4 
CODE:8bea  78 2d                    MOV R0,#0x2d
CODE:8bec  f6                       MOV @R0,A
LAB_CODE_8bed:
CODE:8bed  78 2d                    MOV R0,#0x2d   ; XREF: CODE:8c53 
CODE:8bef  e6                       MOV A,@R0
CODE:8bf0  ff                       MOV R7,A
CODE:8bf1  c3                       CLR CY
CODE:8bf2  94 06                    SUBB A,#0x6
CODE:8bf4  50 5f                    JNC 0x8c55
CODE:8bf6  ef                       MOV A,R7
CODE:8bf7  75 f0 17                 MOV B,#0x17
CODE:8bfa  a4                       MUL AB
CODE:8bfb  ff                       MOV R7,A
CODE:8bfc  90 08 f5                 MOV DPTR,#0x8f5
CODE:8bff  e0                       MOVX A,@DPTR
CODE:8c00  2f                       ADD A,R7
CODE:8c01  78 2f                    MOV R0,#0x2f
CODE:8c03  f6                       MOV @R0,A
CODE:8c04  e6                       MOV A,@R0
CODE:8c05  ff                       MOV R7,A
CODE:8c06  24 f6                    ADD A,#0xf6
CODE:8c08  f5 82                    MOV DPL,A
CODE:8c0a  e4                       CLR A
CODE:8c0b  34 01                    ADDC A,#0x1
CODE:8c0d  f5 83                    MOV DPH,A
CODE:8c0f  e0                       MOVX A,@DPTR
CODE:8c10  d3                       SETB CY
CODE:8c11  94 00                    SUBB A,#0x0
CODE:8c13  40 14                    JC 0x8c29
CODE:8c15  78 5c                    MOV R0,#0x5c
CODE:8c17  e6                       MOV A,@R0
CODE:8c18  b4 07 05                 CJNE A,#0x7,0x8c20
CODE:8c1b  12 88 05                 LCALL 0x8805
CODE:8c1e  80 30                    SJMP 0x8c50
LAB_CODE_8c20:
CODE:8c20  78 2f                    MOV R0,#0x2f   ; XREF: CODE:8c18 
CODE:8c22  e6                       MOV A,@R0
CODE:8c23  ff                       MOV R7,A
CODE:8c24  12 9e 7f                 LCALL 0x9e7f
CODE:8c27  80 27                    SJMP 0x8c50
LAB_CODE_8c29:
CODE:8c29  78 2f                    MOV R0,#0x2f   ; XREF: CODE:8c13 
CODE:8c2b  e6                       MOV A,@R0
CODE:8c2c  ff                       MOV R7,A
CODE:8c2d  24 20                    ADD A,#0x20
CODE:8c2f  f5 82                    MOV DPL,A
CODE:8c31  e4                       CLR A
CODE:8c32  34 06                    ADDC A,#0x6
CODE:8c34  f5 83                    MOV DPH,A
CODE:8c36  e4                       CLR A
CODE:8c37  f0                       MOVX @DPTR,A
CODE:8c38  74 8b                    MOV A,#0x8b
CODE:8c3a  2f                       ADD A,R7
CODE:8c3b  f5 82                    MOV DPL,A
CODE:8c3d  e4                       CLR A
CODE:8c3e  34 05                    ADDC A,#0x5
CODE:8c40  f5 83                    MOV DPH,A
CODE:8c42  e4                       CLR A
CODE:8c43  f0                       MOVX @DPTR,A
CODE:8c44  74 f6                    MOV A,#0xf6
CODE:8c46  2f                       ADD A,R7
CODE:8c47  f5 82                    MOV DPL,A
CODE:8c49  e4                       CLR A
CODE:8c4a  34 04                    ADDC A,#0x4
CODE:8c4c  f5 83                    MOV DPH,A
CODE:8c4e  e4                       CLR A
CODE:8c4f  f0                       MOVX @DPTR,A
LAB_CODE_8c50:
CODE:8c50  78 2d                    MOV R0,#0x2d   ; XREF: CODE:8c1e CODE:8c27 
CODE:8c52  06                       INC @R0
CODE:8c53  80 98                    SJMP 0x8bed
LAB_CODE_8c55:
CODE:8c55  22                       RET   ; XREF: CODE:8bf4 

; ===== FUNCTION FUN_CODE_8c56 @ CODE:8c56 =====
CODE:8c56  90 09 24                 MOV DPTR,#0x924   ; XREF: CODE:bb78 
CODE:8c59  e5 92                    MOV A,0x92
CODE:8c5b  f0                       MOVX @DPTR,A
CODE:8c5c  e0                       MOVX A,@DPTR
CODE:8c5d  70 03                    JNZ 0x8c62
CODE:8c5f  02 8d 01                 LJMP 0x8d01
LAB_CODE_8c62:
CODE:8c62  30 e3 52                 JNB 0xe3,0x8cb7   ; XREF: CODE:8c5d 
CODE:8c65  53 92 f7                 ANL 0x92,#0xf7
CODE:8c68  d2 21                    SETB 0x21
CODE:8c6a  30 19 1c                 JNB 0x19,0x8c89
CODE:8c6d  78 1d                    MOV R0,#0x1d
CODE:8c6f  06                       INC @R0
CODE:8c70  e6                       MOV A,@R0
CODE:8c71  18                       DEC R0
CODE:8c72  70 01                    JNZ 0x8c75
CODE:8c74  06                       INC @R0
LAB_CODE_8c75:
CODE:8c75  d3                       SETB CY   ; XREF: CODE:8c72 
CODE:8c76  78 1d                    MOV R0,#0x1d
CODE:8c78  e6                       MOV A,@R0
CODE:8c79  94 d0                    SUBB A,#0xd0
CODE:8c7b  18                       DEC R0
CODE:8c7c  e6                       MOV A,@R0
CODE:8c7d  94 07                    SUBB A,#0x7
CODE:8c7f  40 08                    JC 0x8c89
CODE:8c81  c2 19                    CLR 0x19
CODE:8c83  e4                       CLR A
CODE:8c84  f6                       MOV @R0,A
CODE:8c85  08                       INC R0
CODE:8c86  f6                       MOV @R0,A
CODE:8c87  d2 1d                    SETB 0x1d
LAB_CODE_8c89:
CODE:8c89  e5 0b                    MOV A,0x0b   ; XREF: CODE:8c6a CODE:8c7f 
CODE:8c8b  45 0a                    ORL A,0x0a
CODE:8c8d  60 08                    JZ 0x8c97
CODE:8c8f  e5 0b                    MOV A,0x0b
CODE:8c91  15 0b                    DEC 0x0b
CODE:8c93  70 02                    JNZ 0x8c97
CODE:8c95  15 0a                    DEC 0x0a
LAB_CODE_8c97:
CODE:8c97  c3                       CLR CY   ; XREF: CODE:8c8d CODE:8c93 
CODE:8c98  e5 15                    MOV A,0x15
CODE:8c9a  94 f4                    SUBB A,#0xf4
CODE:8c9c  e5 14                    MOV A,0x14
CODE:8c9e  94 01                    SUBB A,#0x1
CODE:8ca0  40 0c                    JC 0x8cae
CODE:8ca2  20 22 03                 JB 0x22,0x8ca8
CODE:8ca5  02 8d 4c                 LJMP 0x8d4c
LAB_CODE_8ca8:
CODE:8ca8  c2 22                    CLR 0x22   ; XREF: CODE:8ca2 
CODE:8caa  43 a8 01                 ORL 0xa8,#0x1
CODE:8cad  22                       RET
LAB_CODE_8cae:
CODE:8cae  05 15                    INC 0x15   ; XREF: CODE:8ca0 
CODE:8cb0  e5 15                    MOV A,0x15
CODE:8cb2  70 02                    JNZ 0x8cb6
CODE:8cb4  05 14                    INC 0x14
LAB_CODE_8cb6:
CODE:8cb6  22                       RET   ; XREF: CODE:8cb2 
LAB_CODE_8cb7:
CODE:8cb7  53 92 e7                 ANL 0x92,#0xe7   ; XREF: CODE:8c62 
CODE:8cba  53 92 9f                 ANL 0x92,#0x9f
CODE:8cbd  90 09 24                 MOV DPTR,#0x924
CODE:8cc0  e0                       MOVX A,@DPTR
CODE:8cc1  ff                       MOV R7,A
CODE:8cc2  30 e7 04                 JNB 0xe7,0x8cc9
CODE:8cc5  53 92 7f                 ANL 0x92,#0x7f
CODE:8cc8  22                       RET
LAB_CODE_8cc9:
CODE:8cc9  ef                       MOV A,R7   ; XREF: CODE:8cc2 
CODE:8cca  30 e4 03                 JNB 0xe4,0x8cd0
CODE:8ccd  02 a6 24                 LJMP 0xa624
LAB_CODE_8cd0:
CODE:8cd0  90 09 24                 MOV DPTR,#0x924   ; XREF: CODE:8cca 
CODE:8cd3  e0                       MOVX A,@DPTR
CODE:8cd4  ff                       MOV R7,A
CODE:8cd5  30 e2 04                 JNB 0xe2,0x8cdc
CODE:8cd8  53 92 fb                 ANL 0x92,#0xfb
CODE:8cdb  22                       RET
LAB_CODE_8cdc:
CODE:8cdc  ef                       MOV A,R7   ; XREF: CODE:8cd5 
CODE:8cdd  30 e1 06                 JNB 0xe1,0x8ce6
CODE:8ce0  53 92 fd                 ANL 0x92,#0xfd
CODE:8ce3  02 c1 40                 LJMP 0xc140
LAB_CODE_8ce6:
CODE:8ce6  90 09 24                 MOV DPTR,#0x924   ; XREF: CODE:8cdd 
CODE:8ce9  e0                       MOVX A,@DPTR
CODE:8cea  30 e0 5f                 JNB 0xe0,0x8d4c
CODE:8ced  53 92 fe                 ANL 0x92,#0xfe
CODE:8cf0  43 91 20                 ORL 0x91,#0x20
CODE:8cf3  00                       NOP
CODE:8cf4  00                       NOP
CODE:8cf5  00                       NOP
CODE:8cf6  00                       NOP
CODE:8cf7  00                       NOP
CODE:8cf8  00                       NOP
CODE:8cf9  53 91 df                 ANL 0x91,#0xdf
CODE:8cfc  12 c1 13                 LCALL 0xc113
CODE:8cff  80 26                    SJMP 0x8d27
LAB_CODE_8d01:
CODE:8d01  90 09 25                 MOV DPTR,#0x925   ; XREF: CODE:8c5f 
CODE:8d04  e5 93                    MOV A,0x93
CODE:8d06  f0                       MOVX @DPTR,A
CODE:8d07  e0                       MOVX A,@DPTR
CODE:8d08  ff                       MOV R7,A
CODE:8d09  60 41                    JZ 0x8d4c
CODE:8d0b  30 e6 07                 JNB 0xe6,0x8d15
CODE:8d0e  53 93 bf                 ANL 0x93,#0xbf
CODE:8d11  43 9a 01                 ORL 0x9a,#0x1
CODE:8d14  22                       RET
LAB_CODE_8d15:
CODE:8d15  ef                       MOV A,R7   ; XREF: CODE:8d0b 
CODE:8d16  30 e5 04                 JNB 0xe5,0x8d1d
CODE:8d19  53 93 df                 ANL 0x93,#0xdf
CODE:8d1c  22                       RET
LAB_CODE_8d1d:
CODE:8d1d  ef                       MOV A,R7   ; XREF: CODE:8d16 
CODE:8d1e  30 e4 0d                 JNB 0xe4,0x8d2e
CODE:8d21  53 93 ef                 ANL 0x93,#0xef
CODE:8d24  12 3b 56                 LCALL 0x3b56
LAB_CODE_8d27:
CODE:8d27  53 92 af                 ANL 0x92,#0xaf   ; XREF: CODE:8cff 
CODE:8d2a  43 97 01                 ORL 0x97,#0x1
CODE:8d2d  22                       RET
LAB_CODE_8d2e:
CODE:8d2e  90 09 25                 MOV DPTR,#0x925   ; XREF: CODE:8d1e 
CODE:8d31  e0                       MOVX A,@DPTR
CODE:8d32  ff                       MOV R7,A
CODE:8d33  30 e2 04                 JNB 0xe2,0x8d3a
CODE:8d36  53 93 fb                 ANL 0x93,#0xfb
CODE:8d39  22                       RET
LAB_CODE_8d3a:
CODE:8d3a  ef                       MOV A,R7   ; XREF: CODE:8d33 
CODE:8d3b  30 e1 04                 JNB 0xe1,0x8d42
CODE:8d3e  53 93 fd                 ANL 0x93,#0xfd
CODE:8d41  22                       RET
LAB_CODE_8d42:
CODE:8d42  ef                       MOV A,R7   ; XREF: CODE:8d3b 
CODE:8d43  30 e0 06                 JNB 0xe0,0x8d4c
CODE:8d46  53 93 fe                 ANL 0x93,#0xfe
CODE:8d49  12 bc 5f                 LCALL 0xbc5f
LAB_CODE_8d4c:
CODE:8d4c  22                       RET   ; XREF: CODE:8ca5 CODE:8cea CODE:8d09 CODE:8d43 

; ===== FUNCTION FUN_CODE_8d4d @ CODE:8d4d =====
CODE:8d4d  90 08 f5                 MOV DPTR,#0x8f5   ; XREF: CODE:2ea5 
CODE:8d50  ef                       MOV A,R7
CODE:8d51  f0                       MOVX @DPTR,A
CODE:8d52  78 1b                    MOV R0,#0x1b
CODE:8d54  e6                       MOV A,@R0
CODE:8d55  24 02                    ADD A,#0x2
CODE:8d57  ff                       MOV R7,A
CODE:8d58  e4                       CLR A
CODE:8d59  33                       RLC A
CODE:8d5a  fe                       MOV R6,A
CODE:8d5b  78 57                    MOV R0,#0x57
CODE:8d5d  e6                       MOV A,@R0
CODE:8d5e  d3                       SETB CY
CODE:8d5f  9f                       SUBB A,R7
CODE:8d60  ee                       MOV A,R6
CODE:8d61  64 80                    XRL A,#0x80
CODE:8d63  f8                       MOV R0,A
CODE:8d64  74 80                    MOV A,#0x80
CODE:8d66  98                       SUBB A,R0
CODE:8d67  40 17                    JC 0x8d80
CODE:8d69  e4                       CLR A
CODE:8d6a  fc                       MOV R4,A
LAB_CODE_8d6b:
CODE:8d6b  af 04                    MOV R7,0x04   ; XREF: CODE:8d72 
CODE:8d6d  12 4f b4                 LCALL 0x4fb4
CODE:8d70  0c                       INC R4
CODE:8d71  ec                       MOV A,R4
CODE:8d72  b4 05 f6                 CJNE A,#0x5,0x8d6b
CODE:8d75  e4                       CLR A
CODE:8d76  78 57                    MOV R0,#0x57
CODE:8d78  f6                       MOV @R0,A
CODE:8d79  90 01 5b                 MOV DPTR,#0x15b
CODE:8d7c  f0                       MOVX @DPTR,A
CODE:8d7d  12 84 7a                 LCALL 0x847a
LAB_CODE_8d80:
CODE:8d80  e4                       CLR A   ; XREF: CODE:8d67 
CODE:8d81  78 2d                    MOV R0,#0x2d
CODE:8d83  f6                       MOV @R0,A
LAB_CODE_8d84:
CODE:8d84  78 2d                    MOV R0,#0x2d   ; XREF: CODE:8e2f 
CODE:8d86  e6                       MOV A,@R0
CODE:8d87  ff                       MOV R7,A
CODE:8d88  c3                       CLR CY
CODE:8d89  94 06                    SUBB A,#0x6
CODE:8d8b  40 03                    JC 0x8d90
CODE:8d8d  02 8e 32                 LJMP 0x8e32
LAB_CODE_8d90:
CODE:8d90  ef                       MOV A,R7   ; XREF: CODE:8d8b 
CODE:8d91  75 f0 17                 MOV B,#0x17
CODE:8d94  a4                       MUL AB
CODE:8d95  ff                       MOV R7,A
CODE:8d96  90 08 f5                 MOV DPTR,#0x8f5
CODE:8d99  e0                       MOVX A,@DPTR
CODE:8d9a  2f                       ADD A,R7
CODE:8d9b  78 2f                    MOV R0,#0x2f
CODE:8d9d  f6                       MOV @R0,A
CODE:8d9e  e6                       MOV A,@R0
CODE:8d9f  24 f6                    ADD A,#0xf6
CODE:8da1  f5 82                    MOV DPL,A
CODE:8da3  e4                       CLR A
CODE:8da4  34 01                    ADDC A,#0x1
CODE:8da6  f5 83                    MOV DPH,A
CODE:8da8  e0                       MOVX A,@DPTR
CODE:8da9  60 5a                    JZ 0x8e05
CODE:8dab  e6                       MOV A,@R0
CODE:8dac  ff                       MOV R7,A
CODE:8dad  24 31                    ADD A,#0x31
CODE:8daf  f5 82                    MOV DPL,A
CODE:8db1  e4                       CLR A
CODE:8db2  34 03                    ADDC A,#0x3
CODE:8db4  f5 83                    MOV DPH,A
CODE:8db6  e0                       MOVX A,@DPTR
CODE:8db7  75 f0 03                 MOV B,#0x3
CODE:8dba  a4                       MUL AB
CODE:8dbb  18                       DEC R0
CODE:8dbc  f6                       MOV @R0,A
CODE:8dbd  e6                       MOV A,@R0
CODE:8dbe  fe                       MOV R6,A
CODE:8dbf  90 03 ba                 MOV DPTR,#0x3ba
CODE:8dc2  93                       MOVC A,@A+DPTR
CODE:8dc3  fd                       MOV R5,A
CODE:8dc4  90 08 f6                 MOV DPTR,#0x8f6
CODE:8dc7  f0                       MOVX @DPTR,A
CODE:8dc8  74 20                    MOV A,#0x20
CODE:8dca  2f                       ADD A,R7
CODE:8dcb  f5 82                    MOV DPL,A
CODE:8dcd  e4                       CLR A
CODE:8dce  34 06                    ADDC A,#0x6
CODE:8dd0  f5 83                    MOV DPH,A
CODE:8dd2  ed                       MOV A,R5
CODE:8dd3  f0                       MOVX @DPTR,A
CODE:8dd4  ee                       MOV A,R6
CODE:8dd5  90 07 e6                 MOV DPTR,#0x7e6
CODE:8dd8  93                       MOVC A,@A+DPTR
CODE:8dd9  ff                       MOV R7,A
CODE:8dda  90 08 f7                 MOV DPTR,#0x8f7
CODE:8ddd  f0                       MOVX @DPTR,A
CODE:8dde  08                       INC R0
CODE:8ddf  e6                       MOV A,@R0
CODE:8de0  fe                       MOV R6,A
CODE:8de1  24 8b                    ADD A,#0x8b
CODE:8de3  f5 82                    MOV DPL,A
CODE:8de5  e4                       CLR A
CODE:8de6  34 05                    ADDC A,#0x5
CODE:8de8  f5 83                    MOV DPH,A
CODE:8dea  ef                       MOV A,R7
CODE:8deb  f0                       MOVX @DPTR,A
CODE:8dec  18                       DEC R0
CODE:8ded  e6                       MOV A,@R0
CODE:8dee  90 0c 12                 MOV DPTR,#0xc12
CODE:8df1  93                       MOVC A,@A+DPTR
CODE:8df2  ff                       MOV R7,A
CODE:8df3  90 08 f8                 MOV DPTR,#0x8f8
CODE:8df6  f0                       MOVX @DPTR,A
CODE:8df7  74 f6                    MOV A,#0xf6
CODE:8df9  2e                       ADD A,R6
CODE:8dfa  f5 82                    MOV DPL,A
CODE:8dfc  e4                       CLR A
CODE:8dfd  34 04                    ADDC A,#0x4
CODE:8dff  f5 83                    MOV DPH,A
CODE:8e01  ef                       MOV A,R7
CODE:8e02  f0                       MOVX @DPTR,A
CODE:8e03  80 27                    SJMP 0x8e2c
LAB_CODE_8e05:
CODE:8e05  78 2f                    MOV R0,#0x2f   ; XREF: CODE:8da9 
CODE:8e07  e6                       MOV A,@R0
CODE:8e08  ff                       MOV R7,A
CODE:8e09  24 20                    ADD A,#0x20
CODE:8e0b  f5 82                    MOV DPL,A
CODE:8e0d  e4                       CLR A
CODE:8e0e  34 06                    ADDC A,#0x6
CODE:8e10  f5 83                    MOV DPH,A
CODE:8e12  e4                       CLR A
CODE:8e13  f0                       MOVX @DPTR,A
CODE:8e14  74 8b                    MOV A,#0x8b
CODE:8e16  2f                       ADD A,R7
CODE:8e17  f5 82                    MOV DPL,A
CODE:8e19  e4                       CLR A
CODE:8e1a  34 05                    ADDC A,#0x5
CODE:8e1c  f5 83                    MOV DPH,A
CODE:8e1e  e4                       CLR A
CODE:8e1f  f0                       MOVX @DPTR,A
CODE:8e20  74 f6                    MOV A,#0xf6
CODE:8e22  2f                       ADD A,R7
CODE:8e23  f5 82                    MOV DPL,A
CODE:8e25  e4                       CLR A
CODE:8e26  34 04                    ADDC A,#0x4
CODE:8e28  f5 83                    MOV DPH,A
CODE:8e2a  e4                       CLR A
CODE:8e2b  f0                       MOVX @DPTR,A
LAB_CODE_8e2c:
CODE:8e2c  78 2d                    MOV R0,#0x2d   ; XREF: CODE:8e03 
CODE:8e2e  06                       INC @R0
CODE:8e2f  02 8d 84                 LJMP 0x8d84
LAB_CODE_8e32:
CODE:8e32  22                       RET   ; XREF: CODE:8d8d 

; ===== FUNCTION FUN_CODE_8e33 @ CODE:8e33 =====
CODE:8e33  90 08 f9                 MOV DPTR,#0x8f9   ; XREF: CODE:926f 
CODE:8e36  ef                       MOV A,R7
CODE:8e37  f0                       MOVX @DPTR,A
CODE:8e38  12 b7 9e                 LCALL 0xb79e
CODE:8e3b  90 08 1e                 MOV DPTR,#0x81e
CODE:8e3e  ef                       MOV A,R7
CODE:8e3f  f0                       MOVX @DPTR,A
CODE:8e40  d3                       SETB CY
CODE:8e41  94 fa                    SUBB A,#0xfa
CODE:8e43  40 03                    JC 0x8e48
CODE:8e45  74 fb                    MOV A,#0xfb
CODE:8e47  f0                       MOVX @DPTR,A
LAB_CODE_8e48:
CODE:8e48  90 08 1e                 MOV DPTR,#0x81e   ; XREF: CODE:8e43 
CODE:8e4b  e0                       MOVX A,@DPTR
CODE:8e4c  ff                       MOV R7,A
CODE:8e4d  75 f0 2a                 MOV B,#0x2a
CODE:8e50  84                       DIV AB
CODE:8e51  90 08 fa                 MOV DPTR,#0x8fa
CODE:8e54  f0                       MOVX @DPTR,A
CODE:8e55  ef                       MOV A,R7
CODE:8e56  75 f0 0f                 MOV B,#0xf
CODE:8e59  84                       DIV AB
CODE:8e5a  e5 f0                    MOV A,B
CODE:8e5c  24 05                    ADD A,#0x5
CODE:8e5e  a3                       INC DPTR
CODE:8e5f  f0                       MOVX @DPTR,A
LAB_CODE_8e60:
CODE:8e60  90 08 fa                 MOV DPTR,#0x8fa   ; XREF: CODE:8ebf 
CODE:8e63  e0                       MOVX A,@DPTR
CODE:8e64  ff                       MOV R7,A
CODE:8e65  90 08 1d                 MOV DPTR,#0x81d
CODE:8e68  e0                       MOVX A,@DPTR
CODE:8e69  6f                       XRL A,R7
CODE:8e6a  70 55                    JNZ 0x8ec1
CODE:8e6c  90 08 1c                 MOV DPTR,#0x81c
CODE:8e6f  e0                       MOVX A,@DPTR
CODE:8e70  04                       INC A
CODE:8e71  f0                       MOVX @DPTR,A
CODE:8e72  70 06                    JNZ 0x8e7a
CODE:8e74  90 08 1b                 MOV DPTR,#0x81b
CODE:8e77  e0                       MOVX A,@DPTR
CODE:8e78  04                       INC A
CODE:8e79  f0                       MOVX @DPTR,A
LAB_CODE_8e7a:
CODE:8e7a  90 08 1b                 MOV DPTR,#0x81b   ; XREF: CODE:8e72 
CODE:8e7d  e0                       MOVX A,@DPTR
CODE:8e7e  fe                       MOV R6,A
CODE:8e7f  a3                       INC DPTR
CODE:8e80  e0                       MOVX A,@DPTR
CODE:8e81  ff                       MOV R7,A
CODE:8e82  e4                       CLR A
CODE:8e83  fc                       MOV R4,A
CODE:8e84  fd                       MOV R5,A
CODE:8e85  7b fa                    MOV R3,#0xfa
CODE:8e87  7a ff                    MOV R2,#0xff
CODE:8e89  f9                       MOV R1,A
CODE:8e8a  f8                       MOV R0,A
CODE:8e8b  c3                       CLR CY
CODE:8e8c  12 81 1e                 LCALL 0x811e
CODE:8e8f  50 07                    JNC 0x8e98
CODE:8e91  e4                       CLR A
CODE:8e92  90 08 1b                 MOV DPTR,#0x81b
CODE:8e95  f0                       MOVX @DPTR,A
CODE:8e96  a3                       INC DPTR
CODE:8e97  f0                       MOVX @DPTR,A
LAB_CODE_8e98:
CODE:8e98  90 08 1b                 MOV DPTR,#0x81b   ; XREF: CODE:8e8f 
CODE:8e9b  e0                       MOVX A,@DPTR
CODE:8e9c  fe                       MOV R6,A
CODE:8e9d  a3                       INC DPTR
CODE:8e9e  e0                       MOVX A,@DPTR
CODE:8e9f  ff                       MOV R7,A
CODE:8ea0  12 b7 dc                 LCALL 0xb7dc
CODE:8ea3  12 b7 9e                 LCALL 0xb79e
CODE:8ea6  90 08 1e                 MOV DPTR,#0x81e
CODE:8ea9  ef                       MOV A,R7
CODE:8eaa  f0                       MOVX @DPTR,A
CODE:8eab  d3                       SETB CY
CODE:8eac  94 fa                    SUBB A,#0xfa
CODE:8eae  40 03                    JC 0x8eb3
CODE:8eb0  74 fb                    MOV A,#0xfb
CODE:8eb2  f0                       MOVX @DPTR,A
LAB_CODE_8eb3:
CODE:8eb3  90 08 1e                 MOV DPTR,#0x81e   ; XREF: CODE:8eae 
CODE:8eb6  e0                       MOVX A,@DPTR
CODE:8eb7  75 f0 2a                 MOV B,#0x2a
CODE:8eba  84                       DIV AB
CODE:8ebb  90 08 fa                 MOV DPTR,#0x8fa
CODE:8ebe  f0                       MOVX @DPTR,A
CODE:8ebf  80 9f                    SJMP 0x8e60
LAB_CODE_8ec1:
CODE:8ec1  90 08 fa                 MOV DPTR,#0x8fa   ; XREF: CODE:8e6a 
CODE:8ec4  e0                       MOVX A,@DPTR
CODE:8ec5  75 f0 17                 MOV B,#0x17
CODE:8ec8  a4                       MUL AB
CODE:8ec9  ff                       MOV R7,A
CODE:8eca  90 08 f9                 MOV DPTR,#0x8f9
CODE:8ecd  e0                       MOVX A,@DPTR
CODE:8ece  2f                       ADD A,R7
CODE:8ecf  78 2f                    MOV R0,#0x2f
CODE:8ed1  f6                       MOV @R0,A
CODE:8ed2  12 b7 9e                 LCALL 0xb79e
CODE:8ed5  78 2f                    MOV R0,#0x2f
CODE:8ed7  e6                       MOV A,@R0
CODE:8ed8  fe                       MOV R6,A
CODE:8ed9  24 31                    ADD A,#0x31
CODE:8edb  f5 82                    MOV DPL,A
CODE:8edd  e4                       CLR A
CODE:8ede  34 03                    ADDC A,#0x3
CODE:8ee0  f5 83                    MOV DPH,A
CODE:8ee2  ef                       MOV A,R7
CODE:8ee3  f0                       MOVX @DPTR,A
CODE:8ee4  90 08 fb                 MOV DPTR,#0x8fb
CODE:8ee7  e0                       MOVX A,@DPTR
CODE:8ee8  ff                       MOV R7,A
CODE:8ee9  74 1f                    MOV A,#0x1f
CODE:8eeb  2e                       ADD A,R6
CODE:8eec  f5 82                    MOV DPL,A
CODE:8eee  e4                       CLR A
CODE:8eef  34 08                    ADDC A,#0x8
CODE:8ef1  f5 83                    MOV DPH,A
CODE:8ef3  ef                       MOV A,R7
CODE:8ef4  f0                       MOVX @DPTR,A
CODE:8ef5  74 31                    MOV A,#0x31
CODE:8ef7  2e                       ADD A,R6
CODE:8ef8  f5 82                    MOV DPL,A
CODE:8efa  e4                       CLR A
CODE:8efb  34 03                    ADDC A,#0x3
CODE:8efd  f5 83                    MOV DPH,A
CODE:8eff  e0                       MOVX A,@DPTR
CODE:8f00  fd                       MOV R5,A
CODE:8f01  7f ff                    MOV R7,#0xff
CODE:8f03  12 9f 11                 LCALL 0x9f11
CODE:8f06  78 2f                    MOV R0,#0x2f
CODE:8f08  e6                       MOV A,@R0
CODE:8f09  24 5c                    ADD A,#0x5c
CODE:8f0b  f5 82                    MOV DPL,A
CODE:8f0d  e4                       CLR A
CODE:8f0e  34 01                    ADDC A,#0x1
CODE:8f10  f5 83                    MOV DPH,A
CODE:8f12  ef                       MOV A,R7
CODE:8f13  f0                       MOVX @DPTR,A
CODE:8f14  22                       RET

; ===== FUNCTION FUN_CODE_8ff5 @ CODE:8ff5 =====
CODE:8ff5  e4                       CLR A   ; XREF: CODE:ae81 
CODE:8ff6  78 2f                    MOV R0,#0x2f
CODE:8ff8  f6                       MOV @R0,A
LAB_CODE_8ff9:
CODE:8ff9  78 2f                    MOV R0,#0x2f   ; XREF: CODE:904e 
CODE:8ffb  e6                       MOV A,@R0
CODE:8ffc  ff                       MOV R7,A
CODE:8ffd  c3                       CLR CY
CODE:8ffe  94 8a                    SUBB A,#0x8a
CODE:9000  50 4e                    JNC 0x9050
CODE:9002  74 f6                    MOV A,#0xf6
CODE:9004  2f                       ADD A,R7
CODE:9005  f5 82                    MOV DPL,A
CODE:9007  e4                       CLR A
CODE:9008  34 01                    ADDC A,#0x1
CODE:900a  f5 83                    MOV DPH,A
CODE:900c  e4                       CLR A
CODE:900d  f0                       MOVX @DPTR,A
CODE:900e  ef                       MOV A,R7
CODE:900f  90 89 1d                 MOV DPTR,#0x891d
CODE:9012  93                       MOVC A,@A+DPTR
CODE:9013  ff                       MOV R7,A
CODE:9014  e6                       MOV A,@R0
CODE:9015  fd                       MOV R5,A
CODE:9016  75 f0 02                 MOV B,#0x2
CODE:9019  a4                       MUL AB
CODE:901a  24 cb                    ADD A,#0xcb
CODE:901c  f5 82                    MOV DPL,A
CODE:901e  e5 f0                    MOV A,B
CODE:9020  34 03                    ADDC A,#0x3
CODE:9022  f5 83                    MOV DPH,A
CODE:9024  e4                       CLR A
CODE:9025  f0                       MOVX @DPTR,A
CODE:9026  a3                       INC DPTR
CODE:9027  ef                       MOV A,R7
CODE:9028  f0                       MOVX @DPTR,A
CODE:9029  74 31                    MOV A,#0x31
CODE:902b  2d                       ADD A,R5
CODE:902c  f5 82                    MOV DPL,A
CODE:902e  e4                       CLR A
CODE:902f  34 03                    ADDC A,#0x3
CODE:9031  f5 83                    MOV DPH,A
CODE:9033  e4                       CLR A
CODE:9034  f0                       MOVX @DPTR,A
CODE:9035  74 8a                    MOV A,#0x8a
CODE:9037  2d                       ADD A,R5
CODE:9038  f5 82                    MOV DPL,A
CODE:903a  e4                       CLR A
CODE:903b  34 00                    ADDC A,#0x0
CODE:903d  f5 83                    MOV DPH,A
CODE:903f  e4                       CLR A
CODE:9040  f0                       MOVX @DPTR,A
CODE:9041  74 9c                    MOV A,#0x9c
CODE:9043  2d                       ADD A,R5
CODE:9044  f5 82                    MOV DPL,A
CODE:9046  e4                       CLR A
CODE:9047  34 02                    ADDC A,#0x2
CODE:9049  f5 83                    MOV DPH,A
CODE:904b  e4                       CLR A
CODE:904c  f0                       MOVX @DPTR,A
CODE:904d  06                       INC @R0
CODE:904e  80 a9                    SJMP 0x8ff9
LAB_CODE_9050:
CODE:9050  12 b7 9e                 LCALL 0xb79e   ; XREF: CODE:9000 
CODE:9053  90 03 31                 MOV DPTR,#0x331
CODE:9056  ef                       MOV A,R7
CODE:9057  f0                       MOVX @DPTR,A
CODE:9058  fd                       MOV R5,A
CODE:9059  7f ff                    MOV R7,#0xff
CODE:905b  12 9f 11                 LCALL 0x9f11
CODE:905e  90 01 5c                 MOV DPTR,#0x15c
CODE:9061  ef                       MOV A,R7
CODE:9062  f0                       MOVX @DPTR,A
CODE:9063  12 b7 9e                 LCALL 0xb79e
CODE:9066  90 03 44                 MOV DPTR,#0x344
CODE:9069  ef                       MOV A,R7
CODE:906a  f0                       MOVX @DPTR,A
CODE:906b  fd                       MOV R5,A
CODE:906c  7f ff                    MOV R7,#0xff
CODE:906e  12 9f 11                 LCALL 0x9f11
CODE:9071  90 01 6f                 MOV DPTR,#0x16f
CODE:9074  ef                       MOV A,R7
CODE:9075  f0                       MOVX @DPTR,A
CODE:9076  12 b7 9e                 LCALL 0xb79e
CODE:9079  90 03 57                 MOV DPTR,#0x357
CODE:907c  ef                       MOV A,R7
CODE:907d  f0                       MOVX @DPTR,A
CODE:907e  fd                       MOV R5,A
CODE:907f  7f ff                    MOV R7,#0xff
CODE:9081  12 9f 11                 LCALL 0x9f11
CODE:9084  90 01 82                 MOV DPTR,#0x182
CODE:9087  ef                       MOV A,R7
CODE:9088  f0                       MOVX @DPTR,A
CODE:9089  12 b7 9e                 LCALL 0xb79e
CODE:908c  90 03 6a                 MOV DPTR,#0x36a
CODE:908f  ef                       MOV A,R7
CODE:9090  f0                       MOVX @DPTR,A
CODE:9091  fd                       MOV R5,A
CODE:9092  7f ff                    MOV R7,#0xff
CODE:9094  12 9f 11                 LCALL 0x9f11
CODE:9097  90 01 95                 MOV DPTR,#0x195
CODE:909a  ef                       MOV A,R7
CODE:909b  f0                       MOVX @DPTR,A
CODE:909c  12 b7 9e                 LCALL 0xb79e
CODE:909f  90 03 7d                 MOV DPTR,#0x37d
CODE:90a2  ef                       MOV A,R7
CODE:90a3  f0                       MOVX @DPTR,A
CODE:90a4  fd                       MOV R5,A
CODE:90a5  7f ff                    MOV R7,#0xff
CODE:90a7  12 9f 11                 LCALL 0x9f11
CODE:90aa  90 01 a8                 MOV DPTR,#0x1a8
CODE:90ad  ef                       MOV A,R7
CODE:90ae  f0                       MOVX @DPTR,A
CODE:90af  12 b7 9e                 LCALL 0xb79e
CODE:90b2  90 03 90                 MOV DPTR,#0x390
CODE:90b5  ef                       MOV A,R7
CODE:90b6  f0                       MOVX @DPTR,A
CODE:90b7  fd                       MOV R5,A
CODE:90b8  7f ff                    MOV R7,#0xff
CODE:90ba  12 9f 11                 LCALL 0x9f11
CODE:90bd  90 01 bb                 MOV DPTR,#0x1bb
CODE:90c0  ef                       MOV A,R7
CODE:90c1  f0                       MOVX @DPTR,A
CODE:90c2  e4                       CLR A
CODE:90c3  90 09 84                 MOV DPTR,#0x984
CODE:90c6  f0                       MOVX @DPTR,A
CODE:90c7  a3                       INC DPTR
CODE:90c8  f0                       MOVX @DPTR,A
CODE:90c9  78 5a                    MOV R0,#0x5a
CODE:90cb  f6                       MOV @R0,A
CODE:90cc  78 5c                    MOV R0,#0x5c
CODE:90ce  e6                       MOV A,@R0
CODE:90cf  ff                       MOV R7,A
CODE:90d0  02 9d eb                 LJMP 0x9deb

; ===== FUNCTION FUN_CODE_90d3 @ CODE:90d3 =====
CODE:90d3  e4                       CLR A   ; XREF: CODE:4b2d 
CODE:90d4  90 08 e3                 MOV DPTR,#0x8e3
CODE:90d7  f0                       MOVX @DPTR,A
LAB_CODE_90d8:
CODE:90d8  90 08 e3                 MOV DPTR,#0x8e3   ; XREF: CODE:91ac 
CODE:90db  e0                       MOVX A,@DPTR
CODE:90dc  ff                       MOV R7,A
CODE:90dd  c3                       CLR CY
CODE:90de  94 06                    SUBB A,#0x6
CODE:90e0  40 03                    JC 0x90e5
CODE:90e2  02 91 af                 LJMP 0x91af
LAB_CODE_90e5:
CODE:90e5  ef                       MOV A,R7   ; XREF: CODE:90e0 
CODE:90e6  25 e0                    ADD A,A
CODE:90e8  25 e0                    ADD A,A
CODE:90ea  24 aa                    ADD A,#0xaa
CODE:90ec  f5 82                    MOV DPL,A
CODE:90ee  e4                       CLR A
CODE:90ef  34 07                    ADDC A,#0x7
CODE:90f1  f5 83                    MOV DPH,A
CODE:90f3  e0                       MOVX A,@DPTR
CODE:90f4  f8                       MOV R0,A
CODE:90f5  a3                       INC DPTR
CODE:90f6  e0                       MOVX A,@DPTR
CODE:90f7  f9                       MOV R1,A
CODE:90f8  a3                       INC DPTR
CODE:90f9  e0                       MOVX A,@DPTR
CODE:90fa  fa                       MOV R2,A
CODE:90fb  a3                       INC DPTR
CODE:90fc  e0                       MOVX A,@DPTR
CODE:90fd  fb                       MOV R3,A
CODE:90fe  ef                       MOV A,R7
CODE:90ff  25 e0                    ADD A,A
CODE:9101  25 e0                    ADD A,A
CODE:9103  24 c7                    ADD A,#0xc7
CODE:9105  f5 82                    MOV DPL,A
CODE:9107  e4                       CLR A
CODE:9108  34 08                    ADDC A,#0x8
CODE:910a  f5 83                    MOV DPH,A
CODE:910c  e0                       MOVX A,@DPTR
CODE:910d  fc                       MOV R4,A
CODE:910e  a3                       INC DPTR
CODE:910f  e0                       MOVX A,@DPTR
CODE:9110  fd                       MOV R5,A
CODE:9111  a3                       INC DPTR
CODE:9112  e0                       MOVX A,@DPTR
CODE:9113  fe                       MOV R6,A
CODE:9114  a3                       INC DPTR
CODE:9115  e0                       MOVX A,@DPTR
CODE:9116  ff                       MOV R7,A
CODE:9117  c3                       CLR CY
CODE:9118  12 81 34                 LCALL 0x8134
CODE:911b  70 03                    JNZ 0x9120
CODE:911d  02 91 a6                 LJMP 0x91a6
LAB_CODE_9120:
CODE:9120  90 08 e3                 MOV DPTR,#0x8e3   ; XREF: CODE:911b 
CODE:9123  e0                       MOVX A,@DPTR
CODE:9124  ff                       MOV R7,A
CODE:9125  25 e0                    ADD A,A
CODE:9127  25 e0                    ADD A,A
CODE:9129  24 aa                    ADD A,#0xaa
CODE:912b  f5 82                    MOV DPL,A
CODE:912d  e4                       CLR A
CODE:912e  34 07                    ADDC A,#0x7
CODE:9130  f5 83                    MOV DPH,A
CODE:9132  e0                       MOVX A,@DPTR
CODE:9133  f8                       MOV R0,A
CODE:9134  a3                       INC DPTR
CODE:9135  e0                       MOVX A,@DPTR
CODE:9136  f9                       MOV R1,A
CODE:9137  a3                       INC DPTR
CODE:9138  e0                       MOVX A,@DPTR
CODE:9139  fa                       MOV R2,A
CODE:913a  a3                       INC DPTR
CODE:913b  e0                       MOVX A,@DPTR
CODE:913c  fb                       MOV R3,A
CODE:913d  ef                       MOV A,R7
CODE:913e  25 e0                    ADD A,A
CODE:9140  25 e0                    ADD A,A
CODE:9142  24 c7                    ADD A,#0xc7
CODE:9144  f5 82                    MOV DPL,A
CODE:9146  e4                       CLR A
CODE:9147  34 08                    ADDC A,#0x8
CODE:9149  f5 83                    MOV DPH,A
CODE:914b  e0                       MOVX A,@DPTR
CODE:914c  fc                       MOV R4,A
CODE:914d  a3                       INC DPTR
CODE:914e  e0                       MOVX A,@DPTR
CODE:914f  fd                       MOV R5,A
CODE:9150  a3                       INC DPTR
CODE:9151  e0                       MOVX A,@DPTR
CODE:9152  fe                       MOV R6,A
CODE:9153  a3                       INC DPTR
CODE:9154  e0                       MOVX A,@DPTR
CODE:9155  6b                       XRL A,R3
CODE:9156  ff                       MOV R7,A
CODE:9157  ee                       MOV A,R6
CODE:9158  6a                       XRL A,R2
CODE:9159  fe                       MOV R6,A
CODE:915a  ed                       MOV A,R5
CODE:915b  69                       XRL A,R1
CODE:915c  fd                       MOV R5,A
CODE:915d  ec                       MOV A,R4
CODE:915e  68                       XRL A,R0
CODE:915f  fc                       MOV R4,A
CODE:9160  78 27                    MOV R0,#0x27
CODE:9162  12 81 87                 LCALL 0x8187
CODE:9165  78 27                    MOV R0,#0x27
CODE:9167  12 81 6b                 LCALL 0x816b
CODE:916a  90 08 e5                 MOV DPTR,#0x8e5
CODE:916d  12 81 93                 LCALL 0x8193
CODE:9170  90 08 e3                 MOV DPTR,#0x8e3
CODE:9173  e0                       MOVX A,@DPTR
CODE:9174  ff                       MOV R7,A
CODE:9175  12 18 87                 LCALL 0x1887
CODE:9178  90 08 e3                 MOV DPTR,#0x8e3
CODE:917b  e0                       MOVX A,@DPTR
CODE:917c  fb                       MOV R3,A
CODE:917d  25 e0                    ADD A,A
CODE:917f  25 e0                    ADD A,A
CODE:9181  24 c7                    ADD A,#0xc7
CODE:9183  f5 82                    MOV DPL,A
CODE:9185  e4                       CLR A
CODE:9186  34 08                    ADDC A,#0x8
CODE:9188  f5 83                    MOV DPH,A
CODE:918a  e0                       MOVX A,@DPTR
CODE:918b  fc                       MOV R4,A
CODE:918c  a3                       INC DPTR
CODE:918d  e0                       MOVX A,@DPTR
CODE:918e  fd                       MOV R5,A
CODE:918f  a3                       INC DPTR
CODE:9190  e0                       MOVX A,@DPTR
CODE:9191  fe                       MOV R6,A
CODE:9192  a3                       INC DPTR
CODE:9193  e0                       MOVX A,@DPTR
CODE:9194  ff                       MOV R7,A
CODE:9195  eb                       MOV A,R3
CODE:9196  25 e0                    ADD A,A
CODE:9198  25 e0                    ADD A,A
CODE:919a  24 aa                    ADD A,#0xaa
CODE:919c  f5 82                    MOV DPL,A
CODE:919e  e4                       CLR A
CODE:919f  34 07                    ADDC A,#0x7
CODE:91a1  f5 83                    MOV DPH,A
CODE:91a3  12 81 93                 LCALL 0x8193
LAB_CODE_91a6:
CODE:91a6  90 08 e3                 MOV DPTR,#0x8e3   ; XREF: CODE:911d 
CODE:91a9  e0                       MOVX A,@DPTR
CODE:91aa  04                       INC A
CODE:91ab  f0                       MOVX @DPTR,A
CODE:91ac  02 90 d8                 LJMP 0x90d8
LAB_CODE_91af:
CODE:91af  22                       RET   ; XREF: CODE:90e2 

; ===== FUNCTION FUN_CODE_91b0 @ CODE:91b0 =====
CODE:91b0  e4                       CLR A   ; XREF: CODE:a5af 
CODE:91b1  90 08 f8                 MOV DPTR,#0x8f8
CODE:91b4  f0                       MOVX @DPTR,A
LAB_CODE_91b5:
CODE:91b5  e4                       CLR A   ; XREF: CODE:9287 
CODE:91b6  90 08 f7                 MOV DPTR,#0x8f7
CODE:91b9  f0                       MOVX @DPTR,A
LAB_CODE_91ba:
CODE:91ba  90 08 f7                 MOV DPTR,#0x8f7   ; XREF: CODE:9278 
CODE:91bd  e0                       MOVX A,@DPTR
CODE:91be  ff                       MOV R7,A
CODE:91bf  c3                       CLR CY
CODE:91c0  94 17                    SUBB A,#0x17
CODE:91c2  40 03                    JC 0x91c7
CODE:91c4  02 92 7b                 LJMP 0x927b
LAB_CODE_91c7:
CODE:91c7  a3                       INC DPTR   ; XREF: CODE:91c2 
CODE:91c8  e0                       MOVX A,@DPTR
CODE:91c9  75 f0 17                 MOV B,#0x17
CODE:91cc  a4                       MUL AB
CODE:91cd  fe                       MOV R6,A
CODE:91ce  ef                       MOV A,R7
CODE:91cf  2e                       ADD A,R6
CODE:91d0  78 2e                    MOV R0,#0x2e
CODE:91d2  f6                       MOV @R0,A
CODE:91d3  e6                       MOV A,@R0
CODE:91d4  fd                       MOV R5,A
CODE:91d5  24 8a                    ADD A,#0x8a
CODE:91d7  f5 82                    MOV DPL,A
CODE:91d9  e4                       CLR A
CODE:91da  34 00                    ADDC A,#0x0
CODE:91dc  f5 83                    MOV DPH,A
CODE:91de  e0                       MOVX A,@DPTR
CODE:91df  70 46                    JNZ 0x9227
CODE:91e1  e6                       MOV A,@R0
CODE:91e2  ff                       MOV R7,A
CODE:91e3  24 f6                    ADD A,#0xf6
CODE:91e5  f5 82                    MOV DPL,A
CODE:91e7  e4                       CLR A
CODE:91e8  34 01                    ADDC A,#0x1
CODE:91ea  f5 83                    MOV DPH,A
CODE:91ec  e0                       MOVX A,@DPTR
CODE:91ed  04                       INC A
CODE:91ee  f0                       MOVX @DPTR,A
CODE:91ef  74 1f                    MOV A,#0x1f
CODE:91f1  2f                       ADD A,R7
CODE:91f2  f5 82                    MOV DPL,A
CODE:91f4  e4                       CLR A
CODE:91f5  34 08                    ADDC A,#0x8
CODE:91f7  f5 83                    MOV DPH,A
CODE:91f9  e0                       MOVX A,@DPTR
CODE:91fa  75 f0 05                 MOV B,#0x5
CODE:91fd  a4                       MUL AB
CODE:91fe  ff                       MOV R7,A
CODE:91ff  74 f6                    MOV A,#0xf6
CODE:9201  2d                       ADD A,R5
CODE:9202  f5 82                    MOV DPL,A
CODE:9204  e4                       CLR A
CODE:9205  34 01                    ADDC A,#0x1
CODE:9207  f5 83                    MOV DPH,A
CODE:9209  e0                       MOVX A,@DPTR
CODE:920a  c3                       CLR CY
CODE:920b  9f                       SUBB A,R7
CODE:920c  e5 f0                    MOV A,B
CODE:920e  64 80                    XRL A,#0x80
CODE:9210  f8                       MOV R0,A
CODE:9211  74 80                    MOV A,#0x80
CODE:9213  98                       SUBB A,R0
CODE:9214  40 21                    JC 0x9237
CODE:9216  78 2e                    MOV R0,#0x2e
CODE:9218  e6                       MOV A,@R0
CODE:9219  24 8a                    ADD A,#0x8a
CODE:921b  f5 82                    MOV DPL,A
CODE:921d  e4                       CLR A
CODE:921e  34 00                    ADDC A,#0x0
CODE:9220  f5 83                    MOV DPH,A
CODE:9222  74 01                    MOV A,#0x1
CODE:9224  f0                       MOVX @DPTR,A
CODE:9225  80 10                    SJMP 0x9237
LAB_CODE_9227:
CODE:9227  78 2e                    MOV R0,#0x2e   ; XREF: CODE:91df 
CODE:9229  e6                       MOV A,@R0
CODE:922a  24 f6                    ADD A,#0xf6
CODE:922c  f5 82                    MOV DPL,A
CODE:922e  e4                       CLR A
CODE:922f  34 01                    ADDC A,#0x1
CODE:9231  f5 83                    MOV DPH,A
CODE:9233  e0                       MOVX A,@DPTR
CODE:9234  24 fe                    ADD A,#0xfe
CODE:9236  f0                       MOVX @DPTR,A
LAB_CODE_9237:
CODE:9237  78 2e                    MOV R0,#0x2e   ; XREF: CODE:9214 CODE:9225 
CODE:9239  e6                       MOV A,@R0
CODE:923a  24 f6                    ADD A,#0xf6
CODE:923c  f5 82                    MOV DPL,A
CODE:923e  e4                       CLR A
CODE:923f  34 01                    ADDC A,#0x1
CODE:9241  f5 83                    MOV DPH,A
CODE:9243  e0                       MOVX A,@DPTR
CODE:9244  c3                       CLR CY
CODE:9245  94 05                    SUBB A,#0x5
CODE:9247  50 29                    JNC 0x9272
CODE:9249  e6                       MOV A,@R0
CODE:924a  ff                       MOV R7,A
CODE:924b  24 8a                    ADD A,#0x8a
CODE:924d  f5 82                    MOV DPL,A
CODE:924f  e4                       CLR A
CODE:9250  34 00                    ADDC A,#0x0
CODE:9252  f5 83                    MOV DPH,A
CODE:9254  e4                       CLR A
CODE:9255  f0                       MOVX @DPTR,A
CODE:9256  74 31                    MOV A,#0x31
CODE:9258  2f                       ADD A,R7
CODE:9259  f5 82                    MOV DPL,A
CODE:925b  e4                       CLR A
CODE:925c  34 03                    ADDC A,#0x3
CODE:925e  f5 83                    MOV DPH,A
CODE:9260  e4                       CLR A
CODE:9261  f0                       MOVX @DPTR,A
CODE:9262  90 08 f8                 MOV DPTR,#0x8f8
CODE:9265  e0                       MOVX A,@DPTR
CODE:9266  90 08 1d                 MOV DPTR,#0x81d
CODE:9269  f0                       MOVX @DPTR,A
CODE:926a  90 08 f7                 MOV DPTR,#0x8f7
CODE:926d  e0                       MOVX A,@DPTR
CODE:926e  ff                       MOV R7,A
CODE:926f  12 8e 33                 LCALL 0x8e33
LAB_CODE_9272:
CODE:9272  90 08 f7                 MOV DPTR,#0x8f7   ; XREF: CODE:9247 
CODE:9275  e0                       MOVX A,@DPTR
CODE:9276  04                       INC A
CODE:9277  f0                       MOVX @DPTR,A
CODE:9278  02 91 ba                 LJMP 0x91ba
LAB_CODE_927b:
CODE:927b  90 08 f8                 MOV DPTR,#0x8f8   ; XREF: CODE:91c4 
CODE:927e  e0                       MOVX A,@DPTR
CODE:927f  04                       INC A
CODE:9280  f0                       MOVX @DPTR,A
CODE:9281  e0                       MOVX A,@DPTR
CODE:9282  c3                       CLR CY
CODE:9283  94 06                    SUBB A,#0x6
CODE:9285  50 03                    JNC 0x928a
CODE:9287  02 91 b5                 LJMP 0x91b5
LAB_CODE_928a:
CODE:928a  22                       RET   ; XREF: CODE:9285 

; ===== FUNCTION FUN_CODE_928b @ CODE:928b =====
CODE:928b  90 07 c5                 MOV DPTR,#0x7c5   ; XREF: CODE:2d92 
CODE:928e  e0                       MOVX A,@DPTR
CODE:928f  ff                       MOV R7,A
CODE:9290  64 fe                    XRL A,#0xfe
CODE:9292  60 03                    JZ 0x9297
CODE:9294  02 93 33                 LJMP 0x9333
LAB_CODE_9297:
CODE:9297  f0                       MOVX @DPTR,A   ; XREF: CODE:9292 
CODE:9298  90 09 36                 MOV DPTR,#0x936
CODE:929b  74 11                    MOV A,#0x11
CODE:929d  30 00 36                 JNB 0x00,0x92d6
CODE:92a0  f0                       MOVX @DPTR,A
CODE:92a1  a3                       INC DPTR
CODE:92a2  74 80                    MOV A,#0x80
CODE:92a4  f0                       MOVX @DPTR,A
CODE:92a5  90 09 36                 MOV DPTR,#0x936
CODE:92a8  e0                       MOVX A,@DPTR
CODE:92a9  fc                       MOV R4,A
CODE:92aa  a3                       INC DPTR
CODE:92ab  e0                       MOVX A,@DPTR
CODE:92ac  fd                       MOV R5,A
CODE:92ad  f5 82                    MOV DPL,A
CODE:92af  8c 83                    MOV DPH,R4
CODE:92b1  74 0d                    MOV A,#0xd
CODE:92b3  f0                       MOVX @DPTR,A
CODE:92b4  8d 82                    MOV DPL,R5
CODE:92b6  8c 83                    MOV DPH,R4
CODE:92b8  a3                       INC DPTR
CODE:92b9  74 05                    MOV A,#0x5
CODE:92bb  f0                       MOVX @DPTR,A
CODE:92bc  78 6d                    MOV R0,#0x6d
CODE:92be  e6                       MOV A,@R0
CODE:92bf  fe                       MOV R6,A
CODE:92c0  90 09 36                 MOV DPTR,#0x936
CODE:92c3  e0                       MOVX A,@DPTR
CODE:92c4  fc                       MOV R4,A
CODE:92c5  a3                       INC DPTR
CODE:92c6  e0                       MOVX A,@DPTR
CODE:92c7  fd                       MOV R5,A
CODE:92c8  f5 82                    MOV DPL,A
CODE:92ca  8c 83                    MOV DPH,R4
CODE:92cc  a3                       INC DPTR
CODE:92cd  a3                       INC DPTR
CODE:92ce  ee                       MOV A,R6
CODE:92cf  f0                       MOVX @DPTR,A
CODE:92d0  90 07 a8                 MOV DPTR,#0x7a8
CODE:92d3  e0                       MOVX A,@DPTR
CODE:92d4  80 22                    SJMP 0x92f8
LAB_CODE_92d6:
CODE:92d6  f0                       MOVX @DPTR,A   ; XREF: CODE:929d 
CODE:92d7  a3                       INC DPTR
CODE:92d8  74 80                    MOV A,#0x80
CODE:92da  f0                       MOVX @DPTR,A
CODE:92db  90 09 36                 MOV DPTR,#0x936
CODE:92de  e0                       MOVX A,@DPTR
CODE:92df  fc                       MOV R4,A
CODE:92e0  a3                       INC DPTR
CODE:92e1  e0                       MOVX A,@DPTR
CODE:92e2  fd                       MOV R5,A
CODE:92e3  f5 82                    MOV DPL,A
CODE:92e5  8c 83                    MOV DPH,R4
CODE:92e7  74 0d                    MOV A,#0xd
CODE:92e9  f0                       MOVX @DPTR,A
CODE:92ea  8d 82                    MOV DPL,R5
CODE:92ec  8c 83                    MOV DPH,R4
CODE:92ee  a3                       INC DPTR
CODE:92ef  e4                       CLR A
CODE:92f0  f0                       MOVX @DPTR,A
CODE:92f1  8d 82                    MOV DPL,R5
CODE:92f3  8c 83                    MOV DPH,R4
CODE:92f5  a3                       INC DPTR
CODE:92f6  a3                       INC DPTR
CODE:92f7  f0                       MOVX @DPTR,A
LAB_CODE_92f8:
CODE:92f8  8d 82                    MOV DPL,R5   ; XREF: CODE:92d4 
CODE:92fa  8c 83                    MOV DPH,R4
CODE:92fc  a3                       INC DPTR
CODE:92fd  a3                       INC DPTR
CODE:92fe  a3                       INC DPTR
CODE:92ff  f0                       MOVX @DPTR,A
CODE:9300  ed                       MOV A,R5
CODE:9301  24 04                    ADD A,#0x4
CODE:9303  f5 82                    MOV DPL,A
CODE:9305  e4                       CLR A
CODE:9306  3c                       ADDC A,R4
CODE:9307  f5 83                    MOV DPH,A
CODE:9309  e4                       CLR A
CODE:930a  f0                       MOVX @DPTR,A
CODE:930b  ed                       MOV A,R5
CODE:930c  24 05                    ADD A,#0x5
CODE:930e  f5 82                    MOV DPL,A
CODE:9310  e4                       CLR A
CODE:9311  3c                       ADDC A,R4
CODE:9312  f5 83                    MOV DPH,A
CODE:9314  e4                       CLR A
CODE:9315  f0                       MOVX @DPTR,A
CODE:9316  ed                       MOV A,R5
CODE:9317  24 06                    ADD A,#0x6
CODE:9319  f5 82                    MOV DPL,A
CODE:931b  e4                       CLR A
CODE:931c  3c                       ADDC A,R4
CODE:931d  f5 83                    MOV DPH,A
CODE:931f  e4                       CLR A
CODE:9320  f0                       MOVX @DPTR,A
CODE:9321  ed                       MOV A,R5
CODE:9322  24 07                    ADD A,#0x7
CODE:9324  f5 82                    MOV DPL,A
CODE:9326  e4                       CLR A
CODE:9327  3c                       ADDC A,R4
CODE:9328  f5 83                    MOV DPH,A
CODE:932a  e4                       CLR A
CODE:932b  f0                       MOVX @DPTR,A
CODE:932c  75 9d 08                 MOV 0x9d,#0x8
CODE:932f  43 9a 04                 ORL 0x9a,#0x4
CODE:9332  22                       RET
LAB_CODE_9333:
CODE:9333  ef                       MOV A,R7   ; XREF: CODE:9294 
CODE:9334  54 f0                    ANL A,#0xf0
CODE:9336  ff                       MOV R7,A
CODE:9337  bf e0 0d                 CJNE R7,#0xe0,0x9347
CODE:933a  90 07 c8                 MOV DPTR,#0x7c8
CODE:933d  e0                       MOVX A,@DPTR
CODE:933e  64 04                    XRL A,#0x4
CODE:9340  60 05                    JZ 0x9347
CODE:9342  d2 02                    SETB 0x02
CODE:9344  02 bc 9d                 LJMP 0xbc9d
LAB_CODE_9347:
CODE:9347  90 07 c8                 MOV DPTR,#0x7c8   ; XREF: CODE:9337 CODE:9340 
CODE:934a  e0                       MOVX A,@DPTR
CODE:934b  24 fc                    ADD A,#0xfc
CODE:934d  60 0b                    JZ 0x935a
CODE:934f  24 f5                    ADD A,#0xf5
CODE:9351  60 0c                    JZ 0x935f
CODE:9353  24 0f                    ADD A,#0xf
CODE:9355  70 0d                    JNZ 0x9364
CODE:9357  02 5b 32                 LJMP 0x5b32
LAB_CODE_935a:
CODE:935a  d2 03                    SETB 0x03   ; XREF: CODE:934d 
CODE:935c  02 c0 69                 LJMP 0xc069
LAB_CODE_935f:
CODE:935f  d2 04                    SETB 0x04   ; XREF: CODE:9351 
CODE:9361  12 b7 eb                 LCALL 0xb7eb
LAB_CODE_9364:
CODE:9364  22                       RET   ; XREF: CODE:9355 

; ===== FUNCTION FUN_CODE_9365 @ CODE:9365 =====
CODE:9365  e4                       CLR A   ; XREF: CODE:ae67 
CODE:9366  78 2d                    MOV R0,#0x2d
CODE:9368  f6                       MOV @R0,A
LAB_CODE_9369:
CODE:9369  78 2d                    MOV R0,#0x2d   ; XREF: CODE:93be 
CODE:936b  e6                       MOV A,@R0
CODE:936c  ff                       MOV R7,A
CODE:936d  c3                       CLR CY
CODE:936e  94 8a                    SUBB A,#0x8a
CODE:9370  50 4e                    JNC 0x93c0
CODE:9372  74 f6                    MOV A,#0xf6
CODE:9374  2f                       ADD A,R7
CODE:9375  f5 82                    MOV DPL,A
CODE:9377  e4                       CLR A
CODE:9378  34 01                    ADDC A,#0x1
CODE:937a  f5 83                    MOV DPH,A
CODE:937c  e4                       CLR A
CODE:937d  f0                       MOVX @DPTR,A
CODE:937e  ef                       MOV A,R7
CODE:937f  90 89 a7                 MOV DPTR,#0x89a7
CODE:9382  93                       MOVC A,@A+DPTR
CODE:9383  ff                       MOV R7,A
CODE:9384  e6                       MOV A,@R0
CODE:9385  fd                       MOV R5,A
CODE:9386  75 f0 02                 MOV B,#0x2
CODE:9389  a4                       MUL AB
CODE:938a  24 cb                    ADD A,#0xcb
CODE:938c  f5 82                    MOV DPL,A
CODE:938e  e5 f0                    MOV A,B
CODE:9390  34 03                    ADDC A,#0x3
CODE:9392  f5 83                    MOV DPH,A
CODE:9394  e4                       CLR A
CODE:9395  f0                       MOVX @DPTR,A
CODE:9396  a3                       INC DPTR
CODE:9397  ef                       MOV A,R7
CODE:9398  f0                       MOVX @DPTR,A
CODE:9399  74 31                    MOV A,#0x31
CODE:939b  2d                       ADD A,R5
CODE:939c  f5 82                    MOV DPL,A
CODE:939e  e4                       CLR A
CODE:939f  34 03                    ADDC A,#0x3
CODE:93a1  f5 83                    MOV DPH,A
CODE:93a3  e4                       CLR A
CODE:93a4  f0                       MOVX @DPTR,A
CODE:93a5  74 8a                    MOV A,#0x8a
CODE:93a7  2d                       ADD A,R5
CODE:93a8  f5 82                    MOV DPL,A
CODE:93aa  e4                       CLR A
CODE:93ab  34 00                    ADDC A,#0x0
CODE:93ad  f5 83                    MOV DPH,A
CODE:93af  e4                       CLR A
CODE:93b0  f0                       MOVX @DPTR,A
CODE:93b1  74 9c                    MOV A,#0x9c
CODE:93b3  2d                       ADD A,R5
CODE:93b4  f5 82                    MOV DPL,A
CODE:93b6  e4                       CLR A
CODE:93b7  34 02                    ADDC A,#0x2
CODE:93b9  f5 83                    MOV DPH,A
CODE:93bb  e4                       CLR A
CODE:93bc  f0                       MOVX @DPTR,A
CODE:93bd  06                       INC @R0
CODE:93be  80 a9                    SJMP 0x9369
LAB_CODE_93c0:
CODE:93c0  12 b7 9e                 LCALL 0xb79e   ; XREF: CODE:9370 
CODE:93c3  90 03 43                 MOV DPTR,#0x343
CODE:93c6  ef                       MOV A,R7
CODE:93c7  f0                       MOVX @DPTR,A
CODE:93c8  fd                       MOV R5,A
CODE:93c9  7f ff                    MOV R7,#0xff
CODE:93cb  12 9f 11                 LCALL 0x9f11
CODE:93ce  90 01 6e                 MOV DPTR,#0x16e
CODE:93d1  ef                       MOV A,R7
CODE:93d2  f0                       MOVX @DPTR,A
CODE:93d3  12 b7 9e                 LCALL 0xb79e
CODE:93d6  90 03 56                 MOV DPTR,#0x356
CODE:93d9  ef                       MOV A,R7
CODE:93da  f0                       MOVX @DPTR,A
CODE:93db  fd                       MOV R5,A
CODE:93dc  7f ff                    MOV R7,#0xff
CODE:93de  12 9f 11                 LCALL 0x9f11
CODE:93e1  90 01 81                 MOV DPTR,#0x181
CODE:93e4  ef                       MOV A,R7
CODE:93e5  f0                       MOVX @DPTR,A
CODE:93e6  12 b7 9e                 LCALL 0xb79e
CODE:93e9  90 03 69                 MOV DPTR,#0x369
CODE:93ec  ef                       MOV A,R7
CODE:93ed  f0                       MOVX @DPTR,A
CODE:93ee  fd                       MOV R5,A
CODE:93ef  7f ff                    MOV R7,#0xff
CODE:93f1  12 9f 11                 LCALL 0x9f11
CODE:93f4  90 01 94                 MOV DPTR,#0x194
CODE:93f7  ef                       MOV A,R7
CODE:93f8  f0                       MOVX @DPTR,A
CODE:93f9  12 b7 9e                 LCALL 0xb79e
CODE:93fc  90 03 7c                 MOV DPTR,#0x37c
CODE:93ff  ef                       MOV A,R7
CODE:9400  f0                       MOVX @DPTR,A
CODE:9401  fd                       MOV R5,A
CODE:9402  7f ff                    MOV R7,#0xff
CODE:9404  12 9f 11                 LCALL 0x9f11
CODE:9407  90 01 a7                 MOV DPTR,#0x1a7
CODE:940a  ef                       MOV A,R7
CODE:940b  f0                       MOVX @DPTR,A
CODE:940c  12 b7 9e                 LCALL 0xb79e
CODE:940f  90 03 8f                 MOV DPTR,#0x38f
CODE:9412  ef                       MOV A,R7
CODE:9413  f0                       MOVX @DPTR,A
CODE:9414  fd                       MOV R5,A
CODE:9415  7f ff                    MOV R7,#0xff
CODE:9417  12 9f 11                 LCALL 0x9f11
CODE:941a  90 01 ba                 MOV DPTR,#0x1ba
CODE:941d  ef                       MOV A,R7
CODE:941e  f0                       MOVX @DPTR,A
CODE:941f  12 b7 9e                 LCALL 0xb79e
CODE:9422  90 03 a2                 MOV DPTR,#0x3a2
CODE:9425  ef                       MOV A,R7
CODE:9426  f0                       MOVX @DPTR,A
CODE:9427  fd                       MOV R5,A
CODE:9428  7f ff                    MOV R7,#0xff
CODE:942a  12 9f 11                 LCALL 0x9f11
CODE:942d  90 01 cd                 MOV DPTR,#0x1cd
CODE:9430  ef                       MOV A,R7
CODE:9431  f0                       MOVX @DPTR,A
CODE:9432  90 09 84                 MOV DPTR,#0x984
CODE:9435  74 01                    MOV A,#0x1
CODE:9437  f0                       MOVX @DPTR,A
CODE:9438  e4                       CLR A
CODE:9439  a3                       INC DPTR
CODE:943a  f0                       MOVX @DPTR,A
CODE:943b  78 5a                    MOV R0,#0x5a
CODE:943d  f6                       MOV @R0,A
CODE:943e  22                       RET

; ===== FUNCTION FUN_CODE_943f @ CODE:943f =====
CODE:943f  78 69                    MOV R0,#0x69   ; XREF: CODE:1927 CODE:1f84 CODE:1fb7 CODE:1fe4 CODE:203b CODE:2084 CODE:2147 CODE:218a CODE:21e3 CODE:223f CODE:237c CODE:23c8 CODE:2414 CODE:2460 CODE:24aa CODE:24f4 CODE:253e CODE:2588 CODE:25d2 CODE:261b CODE:2d9e 
CODE:9441  e6                       MOV A,@R0
CODE:9442  64 0f                    XRL A,#0xf
CODE:9444  60 03                    JZ 0x9449
CODE:9446  02 95 17                 LJMP 0x9517
LAB_CODE_9449:
CODE:9449  ef                       MOV A,R7   ; XREF: CODE:9444 
CODE:944a  75 f0 17                 MOV B,#0x17
CODE:944d  a4                       MUL AB
CODE:944e  2d                       ADD A,R5
CODE:944f  78 2c                    MOV R0,#0x2c
CODE:9451  f6                       MOV @R0,A
CODE:9452  30 00 62                 JNB 0x00,0x94b7
CODE:9455  e6                       MOV A,@R0
CODE:9456  24 f6                    ADD A,#0xf6
CODE:9458  f5 82                    MOV DPL,A
CODE:945a  e4                       CLR A
CODE:945b  34 01                    ADDC A,#0x1
CODE:945d  f5 83                    MOV DPH,A
CODE:945f  e0                       MOVX A,@DPTR
CODE:9460  70 31                    JNZ 0x9493
CODE:9462  12 b7 9e                 LCALL 0xb79e
CODE:9465  78 2c                    MOV R0,#0x2c
CODE:9467  e6                       MOV A,@R0
CODE:9468  fe                       MOV R6,A
CODE:9469  24 31                    ADD A,#0x31
CODE:946b  f5 82                    MOV DPL,A
CODE:946d  e4                       CLR A
CODE:946e  34 03                    ADDC A,#0x3
CODE:9470  f5 83                    MOV DPH,A
CODE:9472  ef                       MOV A,R7
CODE:9473  f0                       MOVX @DPTR,A
CODE:9474  74 31                    MOV A,#0x31
CODE:9476  2e                       ADD A,R6
CODE:9477  f5 82                    MOV DPL,A
CODE:9479  e4                       CLR A
CODE:947a  34 03                    ADDC A,#0x3
CODE:947c  f5 83                    MOV DPH,A
CODE:947e  e0                       MOVX A,@DPTR
CODE:947f  fd                       MOV R5,A
CODE:9480  7f ff                    MOV R7,#0xff
CODE:9482  12 9f 11                 LCALL 0x9f11
CODE:9485  78 2c                    MOV R0,#0x2c
CODE:9487  e6                       MOV A,@R0
CODE:9488  24 5c                    ADD A,#0x5c
CODE:948a  f5 82                    MOV DPL,A
CODE:948c  e4                       CLR A
CODE:948d  34 01                    ADDC A,#0x1
CODE:948f  f5 83                    MOV DPH,A
CODE:9491  ef                       MOV A,R7
CODE:9492  f0                       MOVX @DPTR,A
LAB_CODE_9493:
CODE:9493  78 2c                    MOV R0,#0x2c   ; XREF: CODE:9460 
CODE:9495  e6                       MOV A,@R0
CODE:9496  ff                       MOV R7,A
CODE:9497  24 f6                    ADD A,#0xf6
CODE:9499  f5 82                    MOV DPL,A
CODE:949b  e4                       CLR A
CODE:949c  34 01                    ADDC A,#0x1
CODE:949e  f5 83                    MOV DPH,A
CODE:94a0  74 64                    MOV A,#0x64
CODE:94a2  f0                       MOVX @DPTR,A
CODE:94a3  75 f0 02                 MOV B,#0x2
CODE:94a6  ef                       MOV A,R7
CODE:94a7  a4                       MUL AB
CODE:94a8  24 cb                    ADD A,#0xcb
CODE:94aa  f5 82                    MOV DPL,A
CODE:94ac  e5 f0                    MOV A,B
CODE:94ae  34 03                    ADDC A,#0x3
CODE:94b0  f5 83                    MOV DPH,A
CODE:94b2  e4                       CLR A
CODE:94b3  f0                       MOVX @DPTR,A
CODE:94b4  a3                       INC DPTR
CODE:94b5  f0                       MOVX @DPTR,A
CODE:94b6  22                       RET
LAB_CODE_94b7:
CODE:94b7  78 5a                    MOV R0,#0x5a   ; XREF: CODE:9452 
CODE:94b9  e6                       MOV A,@R0
CODE:94ba  64 aa                    XRL A,#0xaa
CODE:94bc  70 35                    JNZ 0x94f3
CODE:94be  12 b7 9e                 LCALL 0xb79e
CODE:94c1  78 2c                    MOV R0,#0x2c
CODE:94c3  e6                       MOV A,@R0
CODE:94c4  fe                       MOV R6,A
CODE:94c5  24 31                    ADD A,#0x31
CODE:94c7  f5 82                    MOV DPL,A
CODE:94c9  e4                       CLR A
CODE:94ca  34 03                    ADDC A,#0x3
CODE:94cc  f5 83                    MOV DPH,A
CODE:94ce  ef                       MOV A,R7
CODE:94cf  f0                       MOVX @DPTR,A
CODE:94d0  74 31                    MOV A,#0x31
CODE:94d2  2e                       ADD A,R6
CODE:94d3  f5 82                    MOV DPL,A
CODE:94d5  e4                       CLR A
CODE:94d6  34 03                    ADDC A,#0x3
CODE:94d8  f5 83                    MOV DPH,A
CODE:94da  e0                       MOVX A,@DPTR
CODE:94db  fd                       MOV R5,A
CODE:94dc  7f ff                    MOV R7,#0xff
CODE:94de  12 9f 11                 LCALL 0x9f11
CODE:94e1  78 2c                    MOV R0,#0x2c
CODE:94e3  e6                       MOV A,@R0
CODE:94e4  24 5c                    ADD A,#0x5c
CODE:94e6  f5 82                    MOV DPL,A
CODE:94e8  e4                       CLR A
CODE:94e9  34 01                    ADDC A,#0x1
CODE:94eb  f5 83                    MOV DPH,A
CODE:94ed  ef                       MOV A,R7
CODE:94ee  f0                       MOVX @DPTR,A
CODE:94ef  e4                       CLR A
CODE:94f0  78 5a                    MOV R0,#0x5a
CODE:94f2  f6                       MOV @R0,A
LAB_CODE_94f3:
CODE:94f3  78 2c                    MOV R0,#0x2c   ; XREF: CODE:94bc 
CODE:94f5  e6                       MOV A,@R0
CODE:94f6  ff                       MOV R7,A
CODE:94f7  24 f6                    ADD A,#0xf6
CODE:94f9  f5 82                    MOV DPL,A
CODE:94fb  e4                       CLR A
CODE:94fc  34 01                    ADDC A,#0x1
CODE:94fe  f5 83                    MOV DPH,A
CODE:9500  74 64                    MOV A,#0x64
CODE:9502  f0                       MOVX @DPTR,A
CODE:9503  75 f0 02                 MOV B,#0x2
CODE:9506  ef                       MOV A,R7
CODE:9507  a4                       MUL AB
CODE:9508  24 cb                    ADD A,#0xcb
CODE:950a  f5 82                    MOV DPL,A
CODE:950c  e5 f0                    MOV A,B
CODE:950e  34 03                    ADDC A,#0x3
CODE:9510  f5 83                    MOV DPH,A
CODE:9512  e4                       CLR A
CODE:9513  f0                       MOVX @DPTR,A
CODE:9514  a3                       INC DPTR
CODE:9515  04                       INC A
CODE:9516  f0                       MOVX @DPTR,A
LAB_CODE_9517:
CODE:9517  22                       RET   ; XREF: CODE:9446 

; ===== FUNCTION FUN_CODE_9518 @ CODE:9518 =====
CODE:9518  c2 af                    CLR 0xaf   ; XREF: CODE:4b36 
CODE:951a  e4                       CLR A
CODE:951b  f5 b1                    MOV 0xb1,A
CODE:951d  c2 20                    CLR 0x20
CODE:951f  90 09 1b                 MOV DPTR,#0x91b
CODE:9522  f0                       MOVX @DPTR,A
CODE:9523  c2 23                    CLR 0x23
CODE:9525  12 bb dd                 LCALL 0xbbdd
CODE:9528  90 ff 94                 MOV DPTR,#0xff94
CODE:952b  74 10                    MOV A,#0x10
CODE:952d  f0                       MOVX @DPTR,A
CODE:952e  c2 ff                    CLR 0xff
CODE:9530  a3                       INC DPTR
CODE:9531  f0                       MOVX @DPTR,A
CODE:9532  d2 b7                    SETB 0xb7
CODE:9534  53 a8 fe                 ANL 0xa8,#0xfe
CODE:9537  43 e5 7f                 ORL 0xe5,#0x7f
CODE:953a  43 ed 7f                 ORL 0xed,#0x7f
CODE:953d  75 e7 ff                 MOV 0xe7,#0xff
CODE:9540  75 ef ff                 MOV 0xef,#0xff
CODE:9543  43 e6 87                 ORL 0xe6,#0x87
CODE:9546  43 ee 87                 ORL 0xee,#0x87
CODE:9549  43 e1 e0                 ORL 0xe1,#0xe0
CODE:954c  43 e9 e0                 ORL 0xe9,#0xe0
CODE:954f  43 d1 10                 ORL 0xd1,#0x10
CODE:9552  43 d9 10                 ORL 0xd9,#0x10
CODE:9555  53 b0 80                 ANL 0xb0,#0x80
CODE:9558  75 c0 00                 MOV 0xc0,#0x0
CODE:955b  53 88 78                 ANL 0x88,#0x78
CODE:955e  53 80 1f                 ANL 0x80,#0x1f
CODE:9561  53 f8 ef                 ANL 0xf8,#0xef
CODE:9564  30 1e 0a                 JNB 0x1e,0x9571
CODE:9567  c2 34                    CLR 0x34
CODE:9569  43 a8 02                 ORL 0xa8,#0x2
CODE:956c  75 ba f3                 MOV 0xba,#0xf3
CODE:956f  80 06                    SJMP 0x9577
LAB_CODE_9571:
CODE:9571  53 a8 fd                 ANL 0xa8,#0xfd   ; XREF: CODE:9564 
CODE:9574  e4                       CLR A
CODE:9575  f5 ba                    MOV 0xba,A
LAB_CODE_9577:
CODE:9577  43 91 01                 ORL 0x91,#0x1   ; XREF: CODE:956f 
CODE:957a  53 b2 fb                 ANL 0xb2,#0xfb
CODE:957d  53 bc fe                 ANL 0xbc,#0xfe
CODE:9580  53 bc fd                 ANL 0xbc,#0xfd
CODE:9583  75 94 95                 MOV 0x94,#0x95
CODE:9586  43 a9 01                 ORL 0xa9,#0x1
CODE:9589  d2 af                    SETB 0xaf
CODE:958b  75 8e 55                 MOV 0x8e,#0x55
CODE:958e  43 87 02                 ORL 0x87,#0x2
CODE:9591  e4                       CLR A
CODE:9592  f5 b1                    MOV 0xb1,A
CODE:9594  f5 b1                    MOV 0xb1,A
CODE:9596  00                       NOP
CODE:9597  00                       NOP
CODE:9598  00                       NOP
CODE:9599  00                       NOP
CODE:959a  00                       NOP
CODE:959b  c2 af                    CLR 0xaf
CODE:959d  53 a8 fd                 ANL 0xa8,#0xfd
CODE:95a0  f5 ba                    MOV 0xba,A
CODE:95a2  43 b2 08                 ORL 0xb2,#0x8
CODE:95a5  43 bc 02                 ORL 0xbc,#0x2
CODE:95a8  7f 14                    MOV R7,#0x14
CODE:95aa  fe                       MOV R6,A
CODE:95ab  12 bd 5a                 LCALL 0xbd5a
CODE:95ae  e4                       CLR A
CODE:95af  f5 b1                    MOV 0xb1,A
CODE:95b1  75 bc 03                 MOV 0xbc,#0x3
CODE:95b4  75 b2 0c                 MOV 0xb2,#0xc
CODE:95b7  30 34 11                 JNB 0x34,0x95cb
CODE:95ba  c2 34                    CLR 0x34
CODE:95bc  53 91 fe                 ANL 0x91,#0xfe
CODE:95bf  43 91 02                 ORL 0x91,#0x2
CODE:95c2  7f 88                    MOV R7,#0x88
CODE:95c4  7e 13                    MOV R6,#0x13
CODE:95c6  12 bd 5a                 LCALL 0xbd5a
CODE:95c9  80 03                    SJMP 0x95ce
LAB_CODE_95cb:
CODE:95cb  53 91 fe                 ANL 0x91,#0xfe   ; XREF: CODE:95b7 
LAB_CODE_95ce:
CODE:95ce  75 94 5f                 MOV 0x94,#0x5f   ; XREF: CODE:95c9 
CODE:95d1  12 ac 41                 LCALL 0xac41
CODE:95d4  43 a8 01                 ORL 0xa8,#0x1
CODE:95d7  d2 af                    SETB 0xaf
CODE:95d9  22                       RET

; ===== FUNCTION FUN_CODE_95da @ CODE:95da =====
CODE:95da  90 08 f5                 MOV DPTR,#0x8f5   ; XREF: CODE:2f72 
CODE:95dd  ef                       MOV A,R7
CODE:95de  f0                       MOVX @DPTR,A
CODE:95df  79 57                    MOV R1,#0x57
CODE:95e1  e7                       MOV A,@R1
CODE:95e2  d3                       SETB CY
CODE:95e3  78 1b                    MOV R0,#0x1b
CODE:95e5  96                       SUBB A,@R0
CODE:95e6  40 45                    JC 0x962d
CODE:95e8  e4                       CLR A
CODE:95e9  78 57                    MOV R0,#0x57
CODE:95eb  f6                       MOV @R0,A
CODE:95ec  90 09 86                 MOV DPTR,#0x986
CODE:95ef  e0                       MOVX A,@DPTR
CODE:95f0  14                       DEC A
CODE:95f1  60 20                    JZ 0x9613
CODE:95f3  04                       INC A
CODE:95f4  70 37                    JNZ 0x962d
CODE:95f6  12 70 09                 LCALL 0x7009
CODE:95f9  d3                       SETB CY
CODE:95fa  90 04 ae                 MOV DPTR,#0x4ae
CODE:95fd  e0                       MOVX A,@DPTR
CODE:95fe  94 c8                    SUBB A,#0xc8
CODE:9600  90 04 ad                 MOV DPTR,#0x4ad
CODE:9603  e0                       MOVX A,@DPTR
CODE:9604  94 00                    SUBB A,#0x0
CODE:9606  40 25                    JC 0x962d
CODE:9608  90 09 86                 MOV DPTR,#0x986
CODE:960b  74 01                    MOV A,#0x1
CODE:960d  f0                       MOVX @DPTR,A
CODE:960e  12 aa 86                 LCALL 0xaa86
CODE:9611  80 1a                    SJMP 0x962d
LAB_CODE_9613:
CODE:9613  12 70 09                 LCALL 0x7009   ; XREF: CODE:95f1 
CODE:9616  d3                       SETB CY
CODE:9617  90 03 cc                 MOV DPTR,#0x3cc
CODE:961a  e0                       MOVX A,@DPTR
CODE:961b  94 c8                    SUBB A,#0xc8
CODE:961d  90 03 cb                 MOV DPTR,#0x3cb
CODE:9620  e0                       MOVX A,@DPTR
CODE:9621  94 00                    SUBB A,#0x0
CODE:9623  40 08                    JC 0x962d
CODE:9625  e4                       CLR A
CODE:9626  90 09 86                 MOV DPTR,#0x986
CODE:9629  f0                       MOVX @DPTR,A
CODE:962a  12 ab 67                 LCALL 0xab67
LAB_CODE_962d:
CODE:962d  e4                       CLR A   ; XREF: CODE:95e6 CODE:95f4 CODE:9606 CODE:9611 CODE:9623 
CODE:962e  78 2d                    MOV R0,#0x2d
CODE:9630  f6                       MOV @R0,A
LAB_CODE_9631:
CODE:9631  78 2d                    MOV R0,#0x2d   ; XREF: CODE:9696 
CODE:9633  e6                       MOV A,@R0
CODE:9634  ff                       MOV R7,A
CODE:9635  c3                       CLR CY
CODE:9636  94 06                    SUBB A,#0x6
CODE:9638  50 5e                    JNC 0x9698
CODE:963a  ef                       MOV A,R7
CODE:963b  75 f0 17                 MOV B,#0x17
CODE:963e  a4                       MUL AB
CODE:963f  ff                       MOV R7,A
CODE:9640  90 08 f5                 MOV DPTR,#0x8f5
CODE:9643  e0                       MOVX A,@DPTR
CODE:9644  2f                       ADD A,R7
CODE:9645  08                       INC R0
CODE:9646  f6                       MOV @R0,A
CODE:9647  e6                       MOV A,@R0
CODE:9648  ff                       MOV R7,A
CODE:9649  24 f6                    ADD A,#0xf6
CODE:964b  f5 82                    MOV DPL,A
CODE:964d  e4                       CLR A
CODE:964e  34 01                    ADDC A,#0x1
CODE:9650  f5 83                    MOV DPH,A
CODE:9652  e0                       MOVX A,@DPTR
CODE:9653  d3                       SETB CY
CODE:9654  94 00                    SUBB A,#0x0
CODE:9656  40 14                    JC 0x966c
CODE:9658  78 5c                    MOV R0,#0x5c
CODE:965a  e6                       MOV A,@R0
CODE:965b  b4 07 05                 CJNE A,#0x7,0x9663
CODE:965e  12 88 05                 LCALL 0x8805
CODE:9661  80 30                    SJMP 0x9693
LAB_CODE_9663:
CODE:9663  78 2e                    MOV R0,#0x2e   ; XREF: CODE:965b 
CODE:9665  e6                       MOV A,@R0
CODE:9666  ff                       MOV R7,A
CODE:9667  12 9e 7f                 LCALL 0x9e7f
CODE:966a  80 27                    SJMP 0x9693
LAB_CODE_966c:
CODE:966c  78 2e                    MOV R0,#0x2e   ; XREF: CODE:9656 
CODE:966e  e6                       MOV A,@R0
CODE:966f  ff                       MOV R7,A
CODE:9670  24 20                    ADD A,#0x20
CODE:9672  f5 82                    MOV DPL,A
CODE:9674  e4                       CLR A
CODE:9675  34 06                    ADDC A,#0x6
CODE:9677  f5 83                    MOV DPH,A
CODE:9679  e4                       CLR A
CODE:967a  f0                       MOVX @DPTR,A
CODE:967b  74 8b                    MOV A,#0x8b
CODE:967d  2f                       ADD A,R7
CODE:967e  f5 82                    MOV DPL,A
CODE:9680  e4                       CLR A
CODE:9681  34 05                    ADDC A,#0x5
CODE:9683  f5 83                    MOV DPH,A
CODE:9685  e4                       CLR A
CODE:9686  f0                       MOVX @DPTR,A
CODE:9687  74 f6                    MOV A,#0xf6
CODE:9689  2f                       ADD A,R7
CODE:968a  f5 82                    MOV DPL,A
CODE:968c  e4                       CLR A
CODE:968d  34 04                    ADDC A,#0x4
CODE:968f  f5 83                    MOV DPH,A
CODE:9691  e4                       CLR A
CODE:9692  f0                       MOVX @DPTR,A
LAB_CODE_9693:
CODE:9693  78 2d                    MOV R0,#0x2d   ; XREF: CODE:9661 CODE:966a 
CODE:9695  06                       INC @R0
CODE:9696  80 99                    SJMP 0x9631
LAB_CODE_9698:
CODE:9698  22                       RET   ; XREF: CODE:9638 

; ===== FUNCTION FUN_CODE_9699 @ CODE:9699 =====
CODE:9699  12 9c bd                 LCALL 0x9cbd   ; XREF: CODE:3063 
CODE:969c  c2 05                    CLR 0x05
CODE:969e  e4                       CLR A
CODE:969f  90 08 f5                 MOV DPTR,#0x8f5
CODE:96a2  f0                       MOVX @DPTR,A
LAB_CODE_96a3:
CODE:96a3  90 08 f5                 MOV DPTR,#0x8f5   ; XREF: CODE:96ef 
CODE:96a6  e0                       MOVX A,@DPTR
CODE:96a7  ff                       MOV R7,A
CODE:96a8  c3                       CLR CY
CODE:96a9  94 06                    SUBB A,#0x6
CODE:96ab  50 44                    JNC 0x96f1
CODE:96ad  ef                       MOV A,R7
CODE:96ae  25 e0                    ADD A,A
CODE:96b0  25 e0                    ADD A,A
CODE:96b2  24 ae                    ADD A,#0xae
CODE:96b4  f5 82                    MOV DPL,A
CODE:96b6  e4                       CLR A
CODE:96b7  34 08                    ADDC A,#0x8
CODE:96b9  f5 83                    MOV DPH,A
CODE:96bb  e0                       MOVX A,@DPTR
CODE:96bc  f8                       MOV R0,A
CODE:96bd  a3                       INC DPTR
CODE:96be  e0                       MOVX A,@DPTR
CODE:96bf  f9                       MOV R1,A
CODE:96c0  a3                       INC DPTR
CODE:96c1  e0                       MOVX A,@DPTR
CODE:96c2  fa                       MOV R2,A
CODE:96c3  a3                       INC DPTR
CODE:96c4  e0                       MOVX A,@DPTR
CODE:96c5  fb                       MOV R3,A
CODE:96c6  ef                       MOV A,R7
CODE:96c7  25 e0                    ADD A,A
CODE:96c9  25 e0                    ADD A,A
CODE:96cb  24 c7                    ADD A,#0xc7
CODE:96cd  f5 82                    MOV DPL,A
CODE:96cf  e4                       CLR A
CODE:96d0  34 08                    ADDC A,#0x8
CODE:96d2  f5 83                    MOV DPH,A
CODE:96d4  e0                       MOVX A,@DPTR
CODE:96d5  fc                       MOV R4,A
CODE:96d6  a3                       INC DPTR
CODE:96d7  e0                       MOVX A,@DPTR
CODE:96d8  fd                       MOV R5,A
CODE:96d9  a3                       INC DPTR
CODE:96da  e0                       MOVX A,@DPTR
CODE:96db  fe                       MOV R6,A
CODE:96dc  a3                       INC DPTR
CODE:96dd  e0                       MOVX A,@DPTR
CODE:96de  ff                       MOV R7,A
CODE:96df  c3                       CLR CY
CODE:96e0  12 81 34                 LCALL 0x8134
CODE:96e3  60 04                    JZ 0x96e9
CODE:96e5  d2 05                    SETB 0x05
CODE:96e7  80 08                    SJMP 0x96f1
LAB_CODE_96e9:
CODE:96e9  90 08 f5                 MOV DPTR,#0x8f5   ; XREF: CODE:96e3 
CODE:96ec  e0                       MOVX A,@DPTR
CODE:96ed  04                       INC A
CODE:96ee  f0                       MOVX @DPTR,A
CODE:96ef  80 b2                    SJMP 0x96a3
LAB_CODE_96f1:
CODE:96f1  30 05 07                 JNB 0x05,0x96fb   ; XREF: CODE:96ab CODE:96e7 
CODE:96f4  e4                       CLR A
CODE:96f5  90 08 c6                 MOV DPTR,#0x8c6
CODE:96f8  f0                       MOVX @DPTR,A
CODE:96f9  80 0f                    SJMP 0x970a
LAB_CODE_96fb:
CODE:96fb  90 08 c6                 MOV DPTR,#0x8c6   ; XREF: CODE:96f1 
CODE:96fe  e0                       MOVX A,@DPTR
CODE:96ff  04                       INC A
CODE:9700  f0                       MOVX @DPTR,A
CODE:9701  e0                       MOVX A,@DPTR
CODE:9702  d3                       SETB CY
CODE:9703  94 c8                    SUBB A,#0xc8
CODE:9705  40 03                    JC 0x970a
CODE:9707  74 c8                    MOV A,#0xc8
CODE:9709  f0                       MOVX @DPTR,A
LAB_CODE_970a:
CODE:970a  e4                       CLR A   ; XREF: CODE:96f9 CODE:9705 
CODE:970b  90 08 f5                 MOV DPTR,#0x8f5
CODE:970e  f0                       MOVX @DPTR,A
LAB_CODE_970f:
CODE:970f  90 08 f5                 MOV DPTR,#0x8f5   ; XREF: CODE:9749 
CODE:9712  e0                       MOVX A,@DPTR
CODE:9713  fb                       MOV R3,A
CODE:9714  c3                       CLR CY
CODE:9715  94 06                    SUBB A,#0x6
CODE:9717  50 32                    JNC 0x974b
CODE:9719  eb                       MOV A,R3
CODE:971a  25 e0                    ADD A,A
CODE:971c  25 e0                    ADD A,A
CODE:971e  24 c7                    ADD A,#0xc7
CODE:9720  f5 82                    MOV DPL,A
CODE:9722  e4                       CLR A
CODE:9723  34 08                    ADDC A,#0x8
CODE:9725  f5 83                    MOV DPH,A
CODE:9727  e0                       MOVX A,@DPTR
CODE:9728  fc                       MOV R4,A
CODE:9729  a3                       INC DPTR
CODE:972a  e0                       MOVX A,@DPTR
CODE:972b  fd                       MOV R5,A
CODE:972c  a3                       INC DPTR
CODE:972d  e0                       MOVX A,@DPTR
CODE:972e  fe                       MOV R6,A
CODE:972f  a3                       INC DPTR
CODE:9730  e0                       MOVX A,@DPTR
CODE:9731  ff                       MOV R7,A
CODE:9732  eb                       MOV A,R3
CODE:9733  25 e0                    ADD A,A
CODE:9735  25 e0                    ADD A,A
CODE:9737  24 ae                    ADD A,#0xae
CODE:9739  f5 82                    MOV DPL,A
CODE:973b  e4                       CLR A
CODE:973c  34 08                    ADDC A,#0x8
CODE:973e  f5 83                    MOV DPH,A
CODE:9740  12 81 93                 LCALL 0x8193
CODE:9743  90 08 f5                 MOV DPTR,#0x8f5
CODE:9746  e0                       MOVX A,@DPTR
CODE:9747  04                       INC A
CODE:9748  f0                       MOVX @DPTR,A
CODE:9749  80 c4                    SJMP 0x970f
LAB_CODE_974b:
CODE:974b  90 08 c6                 MOV DPTR,#0x8c6   ; XREF: CODE:9717 
CODE:974e  e0                       MOVX A,@DPTR
CODE:974f  b4 01 02                 CJNE A,#0x1,0x9754
CODE:9752  d2 01                    SETB 0x01
LAB_CODE_9754:
CODE:9754  22                       RET   ; XREF: CODE:974f 

; ===== FUNCTION FUN_CODE_980f @ CODE:980f =====
CODE:980f  ef                       MOV A,R7   ; XREF: CODE:9cb1 CODE:a028 CODE:a0b6 CODE:a1d0 CODE:c05d 
CODE:9810  75 f0 17                 MOV B,#0x17
CODE:9813  a4                       MUL AB
CODE:9814  2d                       ADD A,R5
CODE:9815  78 2f                    MOV R0,#0x2f
CODE:9817  f6                       MOV @R0,A
CODE:9818  e6                       MOV A,@R0
CODE:9819  fe                       MOV R6,A
CODE:981a  75 f0 02                 MOV B,#0x2
CODE:981d  a4                       MUL AB
CODE:981e  24 cb                    ADD A,#0xcb
CODE:9820  f5 82                    MOV DPL,A
CODE:9822  e5 f0                    MOV A,B
CODE:9824  34 03                    ADDC A,#0x3
CODE:9826  f5 83                    MOV DPH,A
CODE:9828  e0                       MOVX A,@DPTR
CODE:9829  fc                       MOV R4,A
CODE:982a  a3                       INC DPTR
CODE:982b  e0                       MOVX A,@DPTR
CODE:982c  24 3e                    ADD A,#0x3e
CODE:982e  f5 82                    MOV DPL,A
CODE:9830  74 0d                    MOV A,#0xd
CODE:9832  3c                       ADDC A,R4
CODE:9833  f5 83                    MOV DPH,A
CODE:9835  e4                       CLR A
CODE:9836  93                       MOVC A,@A+DPTR
CODE:9837  fd                       MOV R5,A
CODE:9838  74 30                    MOV A,#0x30
CODE:983a  2f                       ADD A,R7
CODE:983b  f8                       MOV R0,A
CODE:983c  a6 05                    MOV @R0,0x05
CODE:983e  75 f0 02                 MOV B,#0x2
CODE:9841  ee                       MOV A,R6
CODE:9842  a4                       MUL AB
CODE:9843  24 cb                    ADD A,#0xcb
CODE:9845  f5 82                    MOV DPL,A
CODE:9847  e5 f0                    MOV A,B
CODE:9849  34 03                    ADDC A,#0x3
CODE:984b  f5 83                    MOV DPH,A
CODE:984d  e0                       MOVX A,@DPTR
CODE:984e  fc                       MOV R4,A
CODE:984f  a3                       INC DPTR
CODE:9850  e0                       MOVX A,@DPTR
CODE:9851  24 01                    ADD A,#0x1
CODE:9853  f5 82                    MOV DPL,A
CODE:9855  74 11                    MOV A,#0x11
CODE:9857  3c                       ADDC A,R4
CODE:9858  f5 83                    MOV DPH,A
CODE:985a  e4                       CLR A
CODE:985b  93                       MOVC A,@A+DPTR
CODE:985c  fe                       MOV R6,A
CODE:985d  74 36                    MOV A,#0x36
CODE:985f  2f                       ADD A,R7
CODE:9860  f8                       MOV R0,A
CODE:9861  a6 06                    MOV @R0,0x06
CODE:9863  78 2f                    MOV R0,#0x2f
CODE:9865  e6                       MOV A,@R0
CODE:9866  fe                       MOV R6,A
CODE:9867  75 f0 02                 MOV B,#0x2
CODE:986a  a4                       MUL AB
CODE:986b  24 cb                    ADD A,#0xcb
CODE:986d  f5 82                    MOV DPL,A
CODE:986f  e5 f0                    MOV A,B
CODE:9871  34 03                    ADDC A,#0x3
CODE:9873  f5 83                    MOV DPH,A
CODE:9875  e0                       MOVX A,@DPTR
CODE:9876  fc                       MOV R4,A
CODE:9877  a3                       INC DPTR
CODE:9878  e0                       MOVX A,@DPTR
CODE:9879  24 c4                    ADD A,#0xc4
CODE:987b  f5 82                    MOV DPL,A
CODE:987d  74 14                    MOV A,#0x14
CODE:987f  3c                       ADDC A,R4
CODE:9880  f5 83                    MOV DPH,A
CODE:9882  e4                       CLR A
CODE:9883  93                       MOVC A,@A+DPTR
CODE:9884  fd                       MOV R5,A
CODE:9885  74 3c                    MOV A,#0x3c
CODE:9887  2f                       ADD A,R7
CODE:9888  f8                       MOV R0,A
CODE:9889  a6 05                    MOV @R0,0x05
CODE:988b  74 3c                    MOV A,#0x3c
CODE:988d  2f                       ADD A,R7
CODE:988e  f8                       MOV R0,A
CODE:988f  e6                       MOV A,@R0
CODE:9890  fd                       MOV R5,A
CODE:9891  74 f6                    MOV A,#0xf6
CODE:9893  2e                       ADD A,R6
CODE:9894  f5 82                    MOV DPL,A
CODE:9896  e4                       CLR A
CODE:9897  34 04                    ADDC A,#0x4
CODE:9899  f5 83                    MOV DPH,A
CODE:989b  ed                       MOV A,R5
CODE:989c  f0                       MOVX @DPTR,A
CODE:989d  74 30                    MOV A,#0x30
CODE:989f  2f                       ADD A,R7
CODE:98a0  f8                       MOV R0,A
CODE:98a1  e6                       MOV A,@R0
CODE:98a2  fe                       MOV R6,A
CODE:98a3  78 2f                    MOV R0,#0x2f
CODE:98a5  e6                       MOV A,@R0
CODE:98a6  fd                       MOV R5,A
CODE:98a7  24 20                    ADD A,#0x20
CODE:98a9  f5 82                    MOV DPL,A
CODE:98ab  e4                       CLR A
CODE:98ac  34 06                    ADDC A,#0x6
CODE:98ae  f5 83                    MOV DPH,A
CODE:98b0  ee                       MOV A,R6
CODE:98b1  f0                       MOVX @DPTR,A
CODE:98b2  74 36                    MOV A,#0x36
CODE:98b4  2f                       ADD A,R7
CODE:98b5  f8                       MOV R0,A
CODE:98b6  e6                       MOV A,@R0
CODE:98b7  ff                       MOV R7,A
CODE:98b8  74 8b                    MOV A,#0x8b
CODE:98ba  2d                       ADD A,R5
CODE:98bb  f5 82                    MOV DPL,A
CODE:98bd  e4                       CLR A
CODE:98be  34 05                    ADDC A,#0x5
CODE:98c0  f5 83                    MOV DPH,A
CODE:98c2  ef                       MOV A,R7
CODE:98c3  f0                       MOVX @DPTR,A
CODE:98c4  22                       RET

; ===== FUNCTION FUN_CODE_98c5 @ CODE:98c5 =====
CODE:98c5  90 08 f5                 MOV DPTR,#0x8f5   ; XREF: CODE:2eb5 
CODE:98c8  ef                       MOV A,R7
CODE:98c9  f0                       MOVX @DPTR,A
CODE:98ca  e4                       CLR A
CODE:98cb  78 57                    MOV R0,#0x57
CODE:98cd  f6                       MOV @R0,A
CODE:98ce  78 5c                    MOV R0,#0x5c
CODE:98d0  e6                       MOV A,@R0
CODE:98d1  64 07                    XRL A,#0x7
CODE:98d3  70 44                    JNZ 0x9919
CODE:98d5  78 2d                    MOV R0,#0x2d
CODE:98d7  f6                       MOV @R0,A
LAB_CODE_98d8:
CODE:98d8  78 2d                    MOV R0,#0x2d   ; XREF: CODE:98f5 
CODE:98da  e6                       MOV A,@R0
CODE:98db  ff                       MOV R7,A
CODE:98dc  c3                       CLR CY
CODE:98dd  94 06                    SUBB A,#0x6
CODE:98df  50 16                    JNC 0x98f7
CODE:98e1  ef                       MOV A,R7
CODE:98e2  75 f0 17                 MOV B,#0x17
CODE:98e5  a4                       MUL AB
CODE:98e6  ff                       MOV R7,A
CODE:98e7  90 08 f5                 MOV DPTR,#0x8f5
CODE:98ea  e0                       MOVX A,@DPTR
CODE:98eb  2f                       ADD A,R7
CODE:98ec  ff                       MOV R7,A
CODE:98ed  08                       INC R0
CODE:98ee  f6                       MOV @R0,A
CODE:98ef  12 88 05                 LCALL 0x8805
CODE:98f2  78 2d                    MOV R0,#0x2d
CODE:98f4  06                       INC @R0
CODE:98f5  80 e1                    SJMP 0x98d8
LAB_CODE_98f7:
CODE:98f7  90 03 cc                 MOV DPTR,#0x3cc   ; XREF: CODE:98df 
CODE:98fa  e0                       MOVX A,@DPTR
CODE:98fb  04                       INC A
CODE:98fc  f0                       MOVX @DPTR,A
CODE:98fd  70 06                    JNZ 0x9905
CODE:98ff  90 03 cb                 MOV DPTR,#0x3cb
CODE:9902  e0                       MOVX A,@DPTR
CODE:9903  04                       INC A
CODE:9904  f0                       MOVX @DPTR,A
LAB_CODE_9905:
CODE:9905  c3                       CLR CY   ; XREF: CODE:98fd 
CODE:9906  90 03 cc                 MOV DPTR,#0x3cc
CODE:9909  e0                       MOVX A,@DPTR
CODE:990a  94 ff                    SUBB A,#0xff
CODE:990c  90 03 cb                 MOV DPTR,#0x3cb
CODE:990f  e0                       MOVX A,@DPTR
CODE:9910  94 02                    SUBB A,#0x2
CODE:9912  40 66                    JC 0x997a
CODE:9914  e4                       CLR A
CODE:9915  f0                       MOVX @DPTR,A
CODE:9916  a3                       INC DPTR
CODE:9917  f0                       MOVX @DPTR,A
CODE:9918  22                       RET
LAB_CODE_9919:
CODE:9919  78 5f                    MOV R0,#0x5f   ; XREF: CODE:98d3 
CODE:991b  e6                       MOV A,@R0
CODE:991c  90 08 f6                 MOV DPTR,#0x8f6
CODE:991f  f0                       MOVX @DPTR,A
CODE:9920  18                       DEC R0
CODE:9921  e6                       MOV A,@R0
CODE:9922  a3                       INC DPTR
CODE:9923  f0                       MOVX @DPTR,A
CODE:9924  18                       DEC R0
CODE:9925  e6                       MOV A,@R0
CODE:9926  a3                       INC DPTR
CODE:9927  f0                       MOVX @DPTR,A
CODE:9928  e4                       CLR A
CODE:9929  78 2d                    MOV R0,#0x2d
CODE:992b  f6                       MOV @R0,A
LAB_CODE_992c:
CODE:992c  78 2d                    MOV R0,#0x2d   ; XREF: CODE:9978 
CODE:992e  e6                       MOV A,@R0
CODE:992f  ff                       MOV R7,A
CODE:9930  c3                       CLR CY
CODE:9931  94 06                    SUBB A,#0x6
CODE:9933  50 45                    JNC 0x997a
CODE:9935  ef                       MOV A,R7
CODE:9936  75 f0 17                 MOV B,#0x17
CODE:9939  a4                       MUL AB
CODE:993a  ff                       MOV R7,A
CODE:993b  90 08 f5                 MOV DPTR,#0x8f5
CODE:993e  e0                       MOVX A,@DPTR
CODE:993f  2f                       ADD A,R7
CODE:9940  08                       INC R0
CODE:9941  f6                       MOV @R0,A
CODE:9942  90 08 f8                 MOV DPTR,#0x8f8
CODE:9945  e0                       MOVX A,@DPTR
CODE:9946  ff                       MOV R7,A
CODE:9947  e6                       MOV A,@R0
CODE:9948  fe                       MOV R6,A
CODE:9949  24 20                    ADD A,#0x20
CODE:994b  f5 82                    MOV DPL,A
CODE:994d  e4                       CLR A
CODE:994e  34 06                    ADDC A,#0x6
CODE:9950  f5 83                    MOV DPH,A
CODE:9952  ef                       MOV A,R7
CODE:9953  f0                       MOVX @DPTR,A
CODE:9954  90 08 f7                 MOV DPTR,#0x8f7
CODE:9957  e0                       MOVX A,@DPTR
CODE:9958  ff                       MOV R7,A
CODE:9959  74 8b                    MOV A,#0x8b
CODE:995b  2e                       ADD A,R6
CODE:995c  f5 82                    MOV DPL,A
CODE:995e  e4                       CLR A
CODE:995f  34 05                    ADDC A,#0x5
CODE:9961  f5 83                    MOV DPH,A
CODE:9963  ef                       MOV A,R7
CODE:9964  f0                       MOVX @DPTR,A
CODE:9965  90 08 f6                 MOV DPTR,#0x8f6
CODE:9968  e0                       MOVX A,@DPTR
CODE:9969  ff                       MOV R7,A
CODE:996a  74 f6                    MOV A,#0xf6
CODE:996c  2e                       ADD A,R6
CODE:996d  f5 82                    MOV DPL,A
CODE:996f  e4                       CLR A
CODE:9970  34 04                    ADDC A,#0x4
CODE:9972  f5 83                    MOV DPH,A
CODE:9974  ef                       MOV A,R7
CODE:9975  f0                       MOVX @DPTR,A
CODE:9976  18                       DEC R0
CODE:9977  06                       INC @R0
CODE:9978  80 b2                    SJMP 0x992c
LAB_CODE_997a:
CODE:997a  22                       RET   ; XREF: CODE:9912 CODE:9933 

; ===== FUNCTION FUN_CODE_9a30 @ CODE:9a30 =====
CODE:9a30  e4                       CLR A   ; XREF: CODE:7fc1 
CODE:9a31  ff                       MOV R7,A
LAB_CODE_9a32:
CODE:9a32  ef                       MOV A,R7   ; XREF: CODE:9a72 
CODE:9a33  90 7c f9                 MOV DPTR,#0x7cf9
CODE:9a36  93                       MOVC A,@A+DPTR
CODE:9a37  fd                       MOV R5,A
CODE:9a38  75 f0 02                 MOV B,#0x2
CODE:9a3b  ef                       MOV A,R7
CODE:9a3c  a4                       MUL AB
CODE:9a3d  24 cb                    ADD A,#0xcb
CODE:9a3f  f5 82                    MOV DPL,A
CODE:9a41  e5 f0                    MOV A,B
CODE:9a43  34 03                    ADDC A,#0x3
CODE:9a45  f5 83                    MOV DPH,A
CODE:9a47  e4                       CLR A
CODE:9a48  f0                       MOVX @DPTR,A
CODE:9a49  a3                       INC DPTR
CODE:9a4a  ed                       MOV A,R5
CODE:9a4b  f0                       MOVX @DPTR,A
CODE:9a4c  74 8a                    MOV A,#0x8a
CODE:9a4e  2f                       ADD A,R7
CODE:9a4f  f5 82                    MOV DPL,A
CODE:9a51  e4                       CLR A
CODE:9a52  34 00                    ADDC A,#0x0
CODE:9a54  f5 83                    MOV DPH,A
CODE:9a56  e4                       CLR A
CODE:9a57  f0                       MOVX @DPTR,A
CODE:9a58  74 9c                    MOV A,#0x9c
CODE:9a5a  2f                       ADD A,R7
CODE:9a5b  f5 82                    MOV DPL,A
CODE:9a5d  e4                       CLR A
CODE:9a5e  34 02                    ADDC A,#0x2
CODE:9a60  f5 83                    MOV DPH,A
CODE:9a62  e4                       CLR A
CODE:9a63  f0                       MOVX @DPTR,A
CODE:9a64  74 f6                    MOV A,#0xf6
CODE:9a66  2f                       ADD A,R7
CODE:9a67  f5 82                    MOV DPL,A
CODE:9a69  e4                       CLR A
CODE:9a6a  34 01                    ADDC A,#0x1
CODE:9a6c  f5 83                    MOV DPH,A
CODE:9a6e  e4                       CLR A
CODE:9a6f  f0                       MOVX @DPTR,A
CODE:9a70  0f                       INC R7
CODE:9a71  ef                       MOV A,R7
CODE:9a72  b4 8a bd                 CJNE A,#0x8a,0x9a32
CODE:9a75  12 b7 9e                 LCALL 0xb79e
CODE:9a78  90 03 66                 MOV DPTR,#0x366
CODE:9a7b  ef                       MOV A,R7
CODE:9a7c  f0                       MOVX @DPTR,A
CODE:9a7d  fd                       MOV R5,A
CODE:9a7e  7f ff                    MOV R7,#0xff
CODE:9a80  12 9f 11                 LCALL 0x9f11
CODE:9a83  90 01 91                 MOV DPTR,#0x191
CODE:9a86  ef                       MOV A,R7
CODE:9a87  f0                       MOVX @DPTR,A
CODE:9a88  12 b7 9e                 LCALL 0xb79e
CODE:9a8b  90 03 67                 MOV DPTR,#0x367
CODE:9a8e  ef                       MOV A,R7
CODE:9a8f  f0                       MOVX @DPTR,A
CODE:9a90  fd                       MOV R5,A
CODE:9a91  7f ff                    MOV R7,#0xff
CODE:9a93  12 9f 11                 LCALL 0x9f11
CODE:9a96  90 01 92                 MOV DPTR,#0x192
CODE:9a99  ef                       MOV A,R7
CODE:9a9a  f0                       MOVX @DPTR,A
CODE:9a9b  12 b7 9e                 LCALL 0xb79e
CODE:9a9e  90 03 68                 MOV DPTR,#0x368
CODE:9aa1  ef                       MOV A,R7
CODE:9aa2  f0                       MOVX @DPTR,A
CODE:9aa3  fd                       MOV R5,A
CODE:9aa4  7f ff                    MOV R7,#0xff
CODE:9aa6  12 9f 11                 LCALL 0x9f11
CODE:9aa9  90 01 93                 MOV DPTR,#0x193
CODE:9aac  ef                       MOV A,R7
CODE:9aad  f0                       MOVX @DPTR,A
CODE:9aae  12 b7 9e                 LCALL 0xb79e
CODE:9ab1  90 03 7e                 MOV DPTR,#0x37e
CODE:9ab4  ef                       MOV A,R7
CODE:9ab5  f0                       MOVX @DPTR,A
CODE:9ab6  fd                       MOV R5,A
CODE:9ab7  7f ff                    MOV R7,#0xff
CODE:9ab9  12 9f 11                 LCALL 0x9f11
CODE:9abc  90 01 a9                 MOV DPTR,#0x1a9
CODE:9abf  ef                       MOV A,R7
CODE:9ac0  f0                       MOVX @DPTR,A
CODE:9ac1  12 b7 9e                 LCALL 0xb79e
CODE:9ac4  90 03 7f                 MOV DPTR,#0x37f
CODE:9ac7  ef                       MOV A,R7
CODE:9ac8  f0                       MOVX @DPTR,A
CODE:9ac9  fd                       MOV R5,A
CODE:9aca  7f ff                    MOV R7,#0xff
CODE:9acc  12 9f 11                 LCALL 0x9f11
CODE:9acf  90 01 aa                 MOV DPTR,#0x1aa
CODE:9ad2  ef                       MOV A,R7
CODE:9ad3  f0                       MOVX @DPTR,A
CODE:9ad4  90 09 88                 MOV DPTR,#0x988
CODE:9ad7  74 02                    MOV A,#0x2
CODE:9ad9  f0                       MOVX @DPTR,A
CODE:9ada  e4                       CLR A
CODE:9adb  a3                       INC DPTR
CODE:9adc  f0                       MOVX @DPTR,A
CODE:9add  78 5a                    MOV R0,#0x5a
CODE:9adf  f6                       MOV @R0,A
CODE:9ae0  78 6c                    MOV R0,#0x6c
CODE:9ae2  f6                       MOV @R0,A
CODE:9ae3  22                       RET

; ===== FUNCTION FUN_CODE_9c24 @ CODE:9c24 =====
CODE:9c24  90 08 f5                 MOV DPTR,#0x8f5   ; XREF: CODE:2f4a 
CODE:9c27  ef                       MOV A,R7
CODE:9c28  f0                       MOVX @DPTR,A
CODE:9c29  79 57                    MOV R1,#0x57
CODE:9c2b  e7                       MOV A,@R1
CODE:9c2c  d3                       SETB CY
CODE:9c2d  78 1b                    MOV R0,#0x1b
CODE:9c2f  96                       SUBB A,@R0
CODE:9c30  40 6b                    JC 0x9c9d
CODE:9c32  e4                       CLR A
CODE:9c33  78 57                    MOV R0,#0x57
CODE:9c35  f6                       MOV @R0,A
CODE:9c36  12 ac a8                 LCALL 0xaca8
CODE:9c39  12 bb dd                 LCALL 0xbbdd
CODE:9c3c  e4                       CLR A
CODE:9c3d  90 08 f6                 MOV DPTR,#0x8f6
CODE:9c40  f0                       MOVX @DPTR,A
LAB_CODE_9c41:
CODE:9c41  90 08 f6                 MOV DPTR,#0x8f6   ; XREF: CODE:9c98 
CODE:9c44  e0                       MOVX A,@DPTR
CODE:9c45  ff                       MOV R7,A
CODE:9c46  c3                       CLR CY
CODE:9c47  94 8a                    SUBB A,#0x8a
CODE:9c49  50 4f                    JNC 0x9c9a
CODE:9c4b  75 f0 02                 MOV B,#0x2
CODE:9c4e  ef                       MOV A,R7
CODE:9c4f  a4                       MUL AB
CODE:9c50  24 cb                    ADD A,#0xcb
CODE:9c52  f5 82                    MOV DPL,A
CODE:9c54  e5 f0                    MOV A,B
CODE:9c56  34 03                    ADDC A,#0x3
CODE:9c58  f5 83                    MOV DPH,A
CODE:9c5a  e4                       CLR A
CODE:9c5b  75 f0 03                 MOV B,#0x3
CODE:9c5e  12 80 f2                 LCALL 0x80f2
CODE:9c61  75 f0 02                 MOV B,#0x2
CODE:9c64  ef                       MOV A,R7
CODE:9c65  a4                       MUL AB
CODE:9c66  24 cb                    ADD A,#0xcb
CODE:9c68  f5 82                    MOV DPL,A
CODE:9c6a  e5 f0                    MOV A,B
CODE:9c6c  34 03                    ADDC A,#0x3
CODE:9c6e  f5 83                    MOV DPH,A
CODE:9c70  e0                       MOVX A,@DPTR
CODE:9c71  fe                       MOV R6,A
CODE:9c72  a3                       INC DPTR
CODE:9c73  e0                       MOVX A,@DPTR
CODE:9c74  d3                       SETB CY
CODE:9c75  94 ba                    SUBB A,#0xba
CODE:9c77  ee                       MOV A,R6
CODE:9c78  94 03                    SUBB A,#0x3
CODE:9c7a  40 16                    JC 0x9c92
CODE:9c7c  90 08 f6                 MOV DPTR,#0x8f6
CODE:9c7f  e0                       MOVX A,@DPTR
CODE:9c80  75 f0 02                 MOV B,#0x2
CODE:9c83  a4                       MUL AB
CODE:9c84  24 cb                    ADD A,#0xcb
CODE:9c86  f5 82                    MOV DPL,A
CODE:9c88  e5 f0                    MOV A,B
CODE:9c8a  34 03                    ADDC A,#0x3
CODE:9c8c  f5 83                    MOV DPH,A
CODE:9c8e  e4                       CLR A
CODE:9c8f  f0                       MOVX @DPTR,A
CODE:9c90  a3                       INC DPTR
CODE:9c91  f0                       MOVX @DPTR,A
LAB_CODE_9c92:
CODE:9c92  90 08 f6                 MOV DPTR,#0x8f6   ; XREF: CODE:9c7a 
CODE:9c95  e0                       MOVX A,@DPTR
CODE:9c96  04                       INC A
CODE:9c97  f0                       MOVX @DPTR,A
CODE:9c98  80 a7                    SJMP 0x9c41
LAB_CODE_9c9a:
CODE:9c9a  12 ad 0a                 LCALL 0xad0a   ; XREF: CODE:9c49 
LAB_CODE_9c9d:
CODE:9c9d  e4                       CLR A   ; XREF: CODE:9c30 
CODE:9c9e  90 08 f6                 MOV DPTR,#0x8f6
CODE:9ca1  f0                       MOVX @DPTR,A
LAB_CODE_9ca2:
CODE:9ca2  90 08 f6                 MOV DPTR,#0x8f6   ; XREF: CODE:9cba 
CODE:9ca5  e0                       MOVX A,@DPTR
CODE:9ca6  ff                       MOV R7,A
CODE:9ca7  c3                       CLR CY
CODE:9ca8  94 06                    SUBB A,#0x6
CODE:9caa  50 10                    JNC 0x9cbc
CODE:9cac  90 08 f5                 MOV DPTR,#0x8f5
CODE:9caf  e0                       MOVX A,@DPTR
CODE:9cb0  fd                       MOV R5,A
CODE:9cb1  12 98 0f                 LCALL 0x980f
CODE:9cb4  90 08 f6                 MOV DPTR,#0x8f6
CODE:9cb7  e0                       MOVX A,@DPTR
CODE:9cb8  04                       INC A
CODE:9cb9  f0                       MOVX @DPTR,A
CODE:9cba  80 e6                    SJMP 0x9ca2
LAB_CODE_9cbc:
CODE:9cbc  22                       RET   ; XREF: CODE:9caa 

; ===== FUNCTION FUN_CODE_9cbd @ CODE:9cbd =====
CODE:9cbd  12 b1 f2                 LCALL 0xb1f2   ; XREF: CODE:9699 
CODE:9cc0  e4                       CLR A
CODE:9cc1  78 2d                    MOV R0,#0x2d
CODE:9cc3  f6                       MOV @R0,A
LAB_CODE_9cc4:
CODE:9cc4  78 2d                    MOV R0,#0x2d   ; XREF: CODE:9d34 
CODE:9cc6  e6                       MOV A,@R0
CODE:9cc7  ff                       MOV R7,A
CODE:9cc8  c3                       CLR CY
CODE:9cc9  94 17                    SUBB A,#0x17
CODE:9ccb  50 69                    JNC 0x9d36
CODE:9ccd  12 86 e8                 LCALL 0x86e8
CODE:9cd0  e4                       CLR A
CODE:9cd1  78 2e                    MOV R0,#0x2e
CODE:9cd3  f6                       MOV @R0,A
LAB_CODE_9cd4:
CODE:9cd4  78 2e                    MOV R0,#0x2e   ; XREF: CODE:9d2f 
CODE:9cd6  e6                       MOV A,@R0
CODE:9cd7  ff                       MOV R7,A
CODE:9cd8  c3                       CLR CY
CODE:9cd9  94 06                    SUBB A,#0x6
CODE:9cdb  50 54                    JNC 0x9d31
CODE:9cdd  12 be 2a                 LCALL 0xbe2a
CODE:9ce0  e4                       CLR A
CODE:9ce1  33                       RLC A
CODE:9ce2  08                       INC R0
CODE:9ce3  f6                       MOV @R0,A
CODE:9ce4  60 46                    JZ 0x9d2c
CODE:9ce6  e4                       CLR A
CODE:9ce7  7f 01                    MOV R7,#0x1
CODE:9ce9  fe                       MOV R6,A
CODE:9cea  fd                       MOV R5,A
CODE:9ceb  fc                       MOV R4,A
CODE:9cec  78 2d                    MOV R0,#0x2d
CODE:9cee  e6                       MOV A,@R0
CODE:9cef  f9                       MOV R1,A
CODE:9cf0  f8                       MOV R0,A
CODE:9cf1  12 81 58                 LCALL 0x8158
CODE:9cf4  78 2e                    MOV R0,#0x2e
CODE:9cf6  e6                       MOV A,@R0
CODE:9cf7  25 e0                    ADD A,A
CODE:9cf9  25 e0                    ADD A,A
CODE:9cfb  24 c7                    ADD A,#0xc7
CODE:9cfd  f5 82                    MOV DPL,A
CODE:9cff  e4                       CLR A
CODE:9d00  34 08                    ADDC A,#0x8
CODE:9d02  f5 83                    MOV DPH,A
CODE:9d04  e0                       MOVX A,@DPTR
CODE:9d05  f8                       MOV R0,A
CODE:9d06  a3                       INC DPTR
CODE:9d07  e0                       MOVX A,@DPTR
CODE:9d08  f9                       MOV R1,A
CODE:9d09  a3                       INC DPTR
CODE:9d0a  e0                       MOVX A,@DPTR
CODE:9d0b  fa                       MOV R2,A
CODE:9d0c  a3                       INC DPTR
CODE:9d0d  e0                       MOVX A,@DPTR
CODE:9d0e  4f                       ORL A,R7
CODE:9d0f  ff                       MOV R7,A
CODE:9d10  ea                       MOV A,R2
CODE:9d11  4e                       ORL A,R6
CODE:9d12  fe                       MOV R6,A
CODE:9d13  e9                       MOV A,R1
CODE:9d14  4d                       ORL A,R5
CODE:9d15  fd                       MOV R5,A
CODE:9d16  e8                       MOV A,R0
CODE:9d17  4c                       ORL A,R4
CODE:9d18  fc                       MOV R4,A
CODE:9d19  78 2e                    MOV R0,#0x2e
CODE:9d1b  e6                       MOV A,@R0
CODE:9d1c  25 e0                    ADD A,A
CODE:9d1e  25 e0                    ADD A,A
CODE:9d20  24 c7                    ADD A,#0xc7
CODE:9d22  f5 82                    MOV DPL,A
CODE:9d24  e4                       CLR A
CODE:9d25  34 08                    ADDC A,#0x8
CODE:9d27  f5 83                    MOV DPH,A
CODE:9d29  12 81 93                 LCALL 0x8193
LAB_CODE_9d2c:
CODE:9d2c  78 2e                    MOV R0,#0x2e   ; XREF: CODE:9ce4 
CODE:9d2e  06                       INC @R0
CODE:9d2f  80 a3                    SJMP 0x9cd4
LAB_CODE_9d31:
CODE:9d31  78 2d                    MOV R0,#0x2d   ; XREF: CODE:9cdb 
CODE:9d33  06                       INC @R0
CODE:9d34  80 8e                    SJMP 0x9cc4
LAB_CODE_9d36:
CODE:9d36  43 e5 7f                 ORL 0xe5,#0x7f   ; XREF: CODE:9ccb 
CODE:9d39  43 ed 7f                 ORL 0xed,#0x7f
CODE:9d3c  75 e7 ff                 MOV 0xe7,#0xff
CODE:9d3f  75 ef ff                 MOV 0xef,#0xff
CODE:9d42  43 e6 87                 ORL 0xe6,#0x87
CODE:9d45  43 ee 87                 ORL 0xee,#0x87
CODE:9d48  43 e1 e0                 ORL 0xe1,#0xe0
CODE:9d4b  43 e9 e0                 ORL 0xe9,#0xe0
CODE:9d4e  43 d1 10                 ORL 0xd1,#0x10
CODE:9d51  43 d9 10                 ORL 0xd9,#0x10
CODE:9d54  22                       RET

; ===== FUNCTION FUN_CODE_9d55 @ CODE:9d55 =====
CODE:9d55  e4                       CLR A   ; XREF: CODE:2e15 CODE:800d 
CODE:9d56  90 09 70                 MOV DPTR,#0x970
CODE:9d59  f0                       MOVX @DPTR,A
CODE:9d5a  12 bb dd                 LCALL 0xbbdd
CODE:9d5d  78 69                    MOV R0,#0x69
CODE:9d5f  e6                       MOV A,@R0
CODE:9d60  b4 13 00                 CJNE A,#0x13,0x9d63
LAB_CODE_9d63:
CODE:9d63  40 03                    JC 0x9d68   ; XREF: CODE:9d60 
CODE:9d65  02 9d ea                 LJMP 0x9dea
LAB_CODE_9d68:
CODE:9d68  90 9d 6f                 MOV DPTR,#0x9d6f   ; XREF: CODE:9d63 
CODE:9d6b  f8                       MOV R0,A
CODE:9d6c  28                       ADD A,R0
CODE:9d6d  28                       ADD A,R0
CODE:9d6e  73                       JMP @A+DPTR
LAB_CODE_9dea:
CODE:9dea  22                       RET   ; XREF: CODE:9d65 

; ===== FUNCTION FUN_CODE_9deb @ CODE:9deb =====
CODE:9deb  ef                       MOV A,R7   ; XREF: CODE:2075 CODE:bc3a CODE:2e1c CODE:8002 CODE:aa0a CODE:90d0 
CODE:9dec  b4 08 00                 CJNE A,#0x8,0x9def
LAB_CODE_9def:
CODE:9def  40 03                    JC 0x9df4   ; XREF: CODE:9dec 
CODE:9df1  02 9e 7e                 LJMP 0x9e7e
LAB_CODE_9df4:
CODE:9df4  90 9d fb                 MOV DPTR,#0x9dfb   ; XREF: CODE:9def 
CODE:9df7  f8                       MOV R0,A
CODE:9df8  28                       ADD A,R0
CODE:9df9  28                       ADD A,R0
CODE:9dfa  73                       JMP @A+DPTR
LAB_CODE_9e7e:
CODE:9e7e  22                       RET   ; XREF: CODE:9df1 

; ===== FUNCTION FUN_CODE_9e7f @ CODE:9e7f =====
CODE:9e7f  90 04 f5                 MOV DPTR,#0x4f5   ; XREF: CODE:7586 CODE:8059 CODE:8c24 CODE:9667 CODE:a5ef CODE:a7fe CODE:a96d CODE:aa54 
CODE:9e82  e0                       MOVX A,@DPTR
CODE:9e83  fe                       MOV R6,A
CODE:9e84  78 5d                    MOV R0,#0x5d
CODE:9e86  e6                       MOV A,@R0
CODE:9e87  8e f0                    MOV B,R6
CODE:9e89  a4                       MUL AB
CODE:9e8a  78 30                    MOV R0,#0x30
CODE:9e8c  f6                       MOV @R0,A
CODE:9e8d  75 f0 64                 MOV B,#0x64
CODE:9e90  84                       DIV AB
CODE:9e91  fd                       MOV R5,A
CODE:9e92  f6                       MOV @R0,A
CODE:9e93  74 f6                    MOV A,#0xf6
CODE:9e95  2f                       ADD A,R7
CODE:9e96  f5 82                    MOV DPL,A
CODE:9e98  e4                       CLR A
CODE:9e99  34 01                    ADDC A,#0x1
CODE:9e9b  f5 83                    MOV DPH,A
CODE:9e9d  e0                       MOVX A,@DPTR
CODE:9e9e  fc                       MOV R4,A
CODE:9e9f  ed                       MOV A,R5
CODE:9ea0  8c f0                    MOV B,R4
CODE:9ea2  a4                       MUL AB
CODE:9ea3  fd                       MOV R5,A
CODE:9ea4  f6                       MOV @R0,A
CODE:9ea5  74 20                    MOV A,#0x20
CODE:9ea7  2f                       ADD A,R7
CODE:9ea8  f5 82                    MOV DPL,A
CODE:9eaa  e4                       CLR A
CODE:9eab  34 06                    ADDC A,#0x6
CODE:9ead  f5 83                    MOV DPH,A
CODE:9eaf  ed                       MOV A,R5
CODE:9eb0  f0                       MOVX @DPTR,A
CODE:9eb1  78 5e                    MOV R0,#0x5e
CODE:9eb3  e6                       MOV A,@R0
CODE:9eb4  8e f0                    MOV B,R6
CODE:9eb6  a4                       MUL AB
CODE:9eb7  78 31                    MOV R0,#0x31
CODE:9eb9  f6                       MOV @R0,A
CODE:9eba  75 f0 64                 MOV B,#0x64
CODE:9ebd  84                       DIV AB
CODE:9ebe  fe                       MOV R6,A
CODE:9ebf  f6                       MOV @R0,A
CODE:9ec0  74 f6                    MOV A,#0xf6
CODE:9ec2  2f                       ADD A,R7
CODE:9ec3  f5 82                    MOV DPL,A
CODE:9ec5  e4                       CLR A
CODE:9ec6  34 01                    ADDC A,#0x1
CODE:9ec8  f5 83                    MOV DPH,A
CODE:9eca  e0                       MOVX A,@DPTR
CODE:9ecb  fd                       MOV R5,A
CODE:9ecc  ee                       MOV A,R6
CODE:9ecd  8d f0                    MOV B,R5
CODE:9ecf  a4                       MUL AB
CODE:9ed0  fe                       MOV R6,A
CODE:9ed1  f6                       MOV @R0,A
CODE:9ed2  74 8b                    MOV A,#0x8b
CODE:9ed4  2f                       ADD A,R7
CODE:9ed5  f5 82                    MOV DPL,A
CODE:9ed7  e4                       CLR A
CODE:9ed8  34 05                    ADDC A,#0x5
CODE:9eda  f5 83                    MOV DPH,A
CODE:9edc  ee                       MOV A,R6
CODE:9edd  f0                       MOVX @DPTR,A
CODE:9ede  90 04 f5                 MOV DPTR,#0x4f5
CODE:9ee1  e0                       MOVX A,@DPTR
CODE:9ee2  fe                       MOV R6,A
CODE:9ee3  78 5f                    MOV R0,#0x5f
CODE:9ee5  e6                       MOV A,@R0
CODE:9ee6  8e f0                    MOV B,R6
CODE:9ee8  a4                       MUL AB
CODE:9ee9  78 32                    MOV R0,#0x32
CODE:9eeb  f6                       MOV @R0,A
CODE:9eec  75 f0 64                 MOV B,#0x64
CODE:9eef  84                       DIV AB
CODE:9ef0  fe                       MOV R6,A
CODE:9ef1  f6                       MOV @R0,A
CODE:9ef2  74 f6                    MOV A,#0xf6
CODE:9ef4  2f                       ADD A,R7
CODE:9ef5  f5 82                    MOV DPL,A
CODE:9ef7  e4                       CLR A
CODE:9ef8  34 01                    ADDC A,#0x1
CODE:9efa  f5 83                    MOV DPH,A
CODE:9efc  e0                       MOVX A,@DPTR
CODE:9efd  fd                       MOV R5,A
CODE:9efe  ee                       MOV A,R6
CODE:9eff  8d f0                    MOV B,R5
CODE:9f01  a4                       MUL AB
CODE:9f02  fe                       MOV R6,A
CODE:9f03  f6                       MOV @R0,A
CODE:9f04  74 f6                    MOV A,#0xf6
CODE:9f06  2f                       ADD A,R7
CODE:9f07  f5 82                    MOV DPL,A
CODE:9f09  e4                       CLR A
CODE:9f0a  34 04                    ADDC A,#0x4
CODE:9f0c  f5 83                    MOV DPH,A
CODE:9f0e  ee                       MOV A,R6
CODE:9f0f  f0                       MOVX @DPTR,A
CODE:9f10  22                       RET

; ===== FUNCTION FUN_CODE_9f11 @ CODE:9f11 =====
CODE:9f11  ed                       MOV A,R5   ; XREF: CODE:9482 CODE:94de CODE:a235 CODE:a248 CODE:a571 CODE:a584 CODE:6fed CODE:6876 CODE:6c5d CODE:736b CODE:71aa CODE:9a80 CODE:9a93 CODE:9aa6 CODE:9ab9 CODE:9acc CODE:8f03 CODE:5a20 CODE:5a53 CODE:5a86 CODE:5ab9 CODE:5aec CODE:5b1f CODE:aae2 CODE:abc3 CODE:93cb CODE:93de CODE:93f1 CODE:9404 CODE:9417 CODE:942a CODE:7a27 CODE:905b CODE:906e CODE:9081 CODE:9094 CODE:90a7 CODE:90ba CODE:787b CODE:a9fe 
CODE:9f12  90 03 ba                 MOV DPTR,#0x3ba
CODE:9f15  93                       MOVC A,@A+DPTR
CODE:9f16  90 08 fd                 MOV DPTR,#0x8fd
CODE:9f19  f0                       MOVX @DPTR,A
CODE:9f1a  ed                       MOV A,R5
CODE:9f1b  90 07 e6                 MOV DPTR,#0x7e6
CODE:9f1e  93                       MOVC A,@A+DPTR
CODE:9f1f  90 08 fe                 MOV DPTR,#0x8fe
CODE:9f22  f0                       MOVX @DPTR,A
CODE:9f23  ed                       MOV A,R5
CODE:9f24  90 0c 12                 MOV DPTR,#0xc12
CODE:9f27  93                       MOVC A,@A+DPTR
CODE:9f28  90 08 ff                 MOV DPTR,#0x8ff
CODE:9f2b  f0                       MOVX @DPTR,A
CODE:9f2c  90 08 fd                 MOV DPTR,#0x8fd
CODE:9f2f  e0                       MOVX A,@DPTR
CODE:9f30  c3                       CLR CY
CODE:9f31  94 04                    SUBB A,#0x4
CODE:9f33  50 03                    JNC 0x9f38
CODE:9f35  74 04                    MOV A,#0x4
CODE:9f37  f0                       MOVX @DPTR,A
LAB_CODE_9f38:
CODE:9f38  90 08 fe                 MOV DPTR,#0x8fe   ; XREF: CODE:9f33 
CODE:9f3b  e0                       MOVX A,@DPTR
CODE:9f3c  c3                       CLR CY
CODE:9f3d  94 04                    SUBB A,#0x4
CODE:9f3f  50 03                    JNC 0x9f44
CODE:9f41  74 04                    MOV A,#0x4
CODE:9f43  f0                       MOVX @DPTR,A
LAB_CODE_9f44:
CODE:9f44  90 08 ff                 MOV DPTR,#0x8ff   ; XREF: CODE:9f3f 
CODE:9f47  e0                       MOVX A,@DPTR
CODE:9f48  c3                       CLR CY
CODE:9f49  94 04                    SUBB A,#0x4
CODE:9f4b  50 03                    JNC 0x9f50
CODE:9f4d  74 04                    MOV A,#0x4
CODE:9f4f  f0                       MOVX @DPTR,A
LAB_CODE_9f50:
CODE:9f50  90 08 fd                 MOV DPTR,#0x8fd   ; XREF: CODE:9f4b 
CODE:9f53  e0                       MOVX A,@DPTR
CODE:9f54  fd                       MOV R5,A
CODE:9f55  ef                       MOV A,R7
CODE:9f56  8d f0                    MOV B,R5
CODE:9f58  84                       DIV AB
CODE:9f59  90 09 00                 MOV DPTR,#0x900
CODE:9f5c  f0                       MOVX @DPTR,A
CODE:9f5d  90 08 fe                 MOV DPTR,#0x8fe
CODE:9f60  e0                       MOVX A,@DPTR
CODE:9f61  fd                       MOV R5,A
CODE:9f62  ef                       MOV A,R7
CODE:9f63  8d f0                    MOV B,R5
CODE:9f65  84                       DIV AB
CODE:9f66  90 09 01                 MOV DPTR,#0x901
CODE:9f69  f0                       MOVX @DPTR,A
CODE:9f6a  90 08 ff                 MOV DPTR,#0x8ff
CODE:9f6d  e0                       MOVX A,@DPTR
CODE:9f6e  fd                       MOV R5,A
CODE:9f6f  ef                       MOV A,R7
CODE:9f70  8d f0                    MOV B,R5
CODE:9f72  84                       DIV AB
CODE:9f73  90 09 02                 MOV DPTR,#0x902
CODE:9f76  f0                       MOVX @DPTR,A
CODE:9f77  90 09 01                 MOV DPTR,#0x901
CODE:9f7a  e0                       MOVX A,@DPTR
CODE:9f7b  ff                       MOV R7,A
CODE:9f7c  90 09 00                 MOV DPTR,#0x900
CODE:9f7f  e0                       MOVX A,@DPTR
CODE:9f80  fd                       MOV R5,A
CODE:9f81  c3                       CLR CY
CODE:9f82  9f                       SUBB A,R7
CODE:9f83  50 07                    JNC 0x9f8c
CODE:9f85  ae 05                    MOV R6,0x05
CODE:9f87  ef                       MOV A,R7
CODE:9f88  f0                       MOVX @DPTR,A
CODE:9f89  a3                       INC DPTR
CODE:9f8a  ee                       MOV A,R6
CODE:9f8b  f0                       MOVX @DPTR,A
LAB_CODE_9f8c:
CODE:9f8c  90 09 02                 MOV DPTR,#0x902   ; XREF: CODE:9f83 
CODE:9f8f  e0                       MOVX A,@DPTR
CODE:9f90  ff                       MOV R7,A
CODE:9f91  90 09 01                 MOV DPTR,#0x901
CODE:9f94  e0                       MOVX A,@DPTR
CODE:9f95  fd                       MOV R5,A
CODE:9f96  d3                       SETB CY
CODE:9f97  9f                       SUBB A,R7
CODE:9f98  40 04                    JC 0x9f9e
CODE:9f9a  ae 07                    MOV R6,0x07
CODE:9f9c  80 02                    SJMP 0x9fa0
LAB_CODE_9f9e:
CODE:9f9e  ae 05                    MOV R6,0x05   ; XREF: CODE:9f98 
LAB_CODE_9fa0:
CODE:9fa0  af 06                    MOV R7,0x06   ; XREF: CODE:9f9c 
CODE:9fa2  22                       RET

; ===== FUNCTION FUN_CODE_9fa3 @ CODE:9fa3 =====
CODE:9fa3  90 08 f5                 MOV DPTR,#0x8f5   ; XREF: CODE:2f32 
CODE:9fa6  ef                       MOV A,R7
CODE:9fa7  f0                       MOVX @DPTR,A
CODE:9fa8  79 57                    MOV R1,#0x57
CODE:9faa  e7                       MOV A,@R1
CODE:9fab  d3                       SETB CY
CODE:9fac  78 1b                    MOV R0,#0x1b
CODE:9fae  96                       SUBB A,@R0
CODE:9faf  40 65                    JC 0xa016
CODE:9fb1  e4                       CLR A
CODE:9fb2  78 57                    MOV R0,#0x57
CODE:9fb4  f6                       MOV @R0,A
CODE:9fb5  12 ac a8                 LCALL 0xaca8
CODE:9fb8  12 bb dd                 LCALL 0xbbdd
CODE:9fbb  e4                       CLR A
CODE:9fbc  78 2d                    MOV R0,#0x2d
CODE:9fbe  f6                       MOV @R0,A
LAB_CODE_9fbf:
CODE:9fbf  78 2d                    MOV R0,#0x2d   ; XREF: CODE:a011 
CODE:9fc1  e6                       MOV A,@R0
CODE:9fc2  ff                       MOV R7,A
CODE:9fc3  c3                       CLR CY
CODE:9fc4  94 8a                    SUBB A,#0x8a
CODE:9fc6  50 4b                    JNC 0xa013
CODE:9fc8  75 f0 02                 MOV B,#0x2
CODE:9fcb  ef                       MOV A,R7
CODE:9fcc  a4                       MUL AB
CODE:9fcd  24 cb                    ADD A,#0xcb
CODE:9fcf  f5 82                    MOV DPL,A
CODE:9fd1  e5 f0                    MOV A,B
CODE:9fd3  34 03                    ADDC A,#0x3
CODE:9fd5  f5 83                    MOV DPH,A
CODE:9fd7  e4                       CLR A
CODE:9fd8  75 f0 03                 MOV B,#0x3
CODE:9fdb  12 80 f2                 LCALL 0x80f2
CODE:9fde  75 f0 02                 MOV B,#0x2
CODE:9fe1  ef                       MOV A,R7
CODE:9fe2  a4                       MUL AB
CODE:9fe3  24 cb                    ADD A,#0xcb
CODE:9fe5  f5 82                    MOV DPL,A
CODE:9fe7  e5 f0                    MOV A,B
CODE:9fe9  34 03                    ADDC A,#0x3
CODE:9feb  f5 83                    MOV DPH,A
CODE:9fed  e0                       MOVX A,@DPTR
CODE:9fee  fe                       MOV R6,A
CODE:9fef  a3                       INC DPTR
CODE:9ff0  e0                       MOVX A,@DPTR
CODE:9ff1  d3                       SETB CY
CODE:9ff2  94 ba                    SUBB A,#0xba
CODE:9ff4  ee                       MOV A,R6
CODE:9ff5  94 03                    SUBB A,#0x3
CODE:9ff7  40 15                    JC 0xa00e
CODE:9ff9  78 2d                    MOV R0,#0x2d
CODE:9ffb  e6                       MOV A,@R0
CODE:9ffc  75 f0 02                 MOV B,#0x2
CODE:9fff  a4                       MUL AB
CODE:a000  24 cb                    ADD A,#0xcb
CODE:a002  f5 82                    MOV DPL,A
CODE:a004  e5 f0                    MOV A,B
CODE:a006  34 03                    ADDC A,#0x3
CODE:a008  f5 83                    MOV DPH,A
CODE:a00a  e4                       CLR A
CODE:a00b  f0                       MOVX @DPTR,A
CODE:a00c  a3                       INC DPTR
CODE:a00d  f0                       MOVX @DPTR,A
LAB_CODE_a00e:
CODE:a00e  78 2d                    MOV R0,#0x2d   ; XREF: CODE:9ff7 
CODE:a010  06                       INC @R0
CODE:a011  80 ac                    SJMP 0x9fbf
LAB_CODE_a013:
CODE:a013  12 ad 0a                 LCALL 0xad0a   ; XREF: CODE:9fc6 
LAB_CODE_a016:
CODE:a016  e4                       CLR A   ; XREF: CODE:9faf 
CODE:a017  78 2e                    MOV R0,#0x2e
CODE:a019  f6                       MOV @R0,A
LAB_CODE_a01a:
CODE:a01a  78 2e                    MOV R0,#0x2e   ; XREF: CODE:a02e 
CODE:a01c  e6                       MOV A,@R0
CODE:a01d  ff                       MOV R7,A
CODE:a01e  c3                       CLR CY
CODE:a01f  94 06                    SUBB A,#0x6
CODE:a021  50 0d                    JNC 0xa030
CODE:a023  90 08 f5                 MOV DPTR,#0x8f5
CODE:a026  e0                       MOVX A,@DPTR
CODE:a027  fd                       MOV R5,A
CODE:a028  12 98 0f                 LCALL 0x980f
CODE:a02b  78 2e                    MOV R0,#0x2e
CODE:a02d  06                       INC @R0
CODE:a02e  80 ea                    SJMP 0xa01a
LAB_CODE_a030:
CODE:a030  22                       RET   ; XREF: CODE:a021 

; ===== FUNCTION FUN_CODE_a031 @ CODE:a031 =====
CODE:a031  90 08 f5                 MOV DPTR,#0x8f5   ; XREF: CODE:2f62 
CODE:a034  ef                       MOV A,R7
CODE:a035  f0                       MOVX @DPTR,A
CODE:a036  79 57                    MOV R1,#0x57
CODE:a038  e7                       MOV A,@R1
CODE:a039  d3                       SETB CY
CODE:a03a  78 1b                    MOV R0,#0x1b
CODE:a03c  96                       SUBB A,@R0
CODE:a03d  40 65                    JC 0xa0a4
CODE:a03f  e4                       CLR A
CODE:a040  78 57                    MOV R0,#0x57
CODE:a042  f6                       MOV @R0,A
CODE:a043  12 ac a8                 LCALL 0xaca8
CODE:a046  12 bb dd                 LCALL 0xbbdd
CODE:a049  e4                       CLR A
CODE:a04a  78 2d                    MOV R0,#0x2d
CODE:a04c  f6                       MOV @R0,A
LAB_CODE_a04d:
CODE:a04d  78 2d                    MOV R0,#0x2d   ; XREF: CODE:a09f 
CODE:a04f  e6                       MOV A,@R0
CODE:a050  ff                       MOV R7,A
CODE:a051  c3                       CLR CY
CODE:a052  94 8a                    SUBB A,#0x8a
CODE:a054  50 4b                    JNC 0xa0a1
CODE:a056  75 f0 02                 MOV B,#0x2
CODE:a059  ef                       MOV A,R7
CODE:a05a  a4                       MUL AB
CODE:a05b  24 cb                    ADD A,#0xcb
CODE:a05d  f5 82                    MOV DPL,A
CODE:a05f  e5 f0                    MOV A,B
CODE:a061  34 03                    ADDC A,#0x3
CODE:a063  f5 83                    MOV DPH,A
CODE:a065  e4                       CLR A
CODE:a066  75 f0 02                 MOV B,#0x2
CODE:a069  12 80 f2                 LCALL 0x80f2
CODE:a06c  75 f0 02                 MOV B,#0x2
CODE:a06f  ef                       MOV A,R7
CODE:a070  a4                       MUL AB
CODE:a071  24 cb                    ADD A,#0xcb
CODE:a073  f5 82                    MOV DPL,A
CODE:a075  e5 f0                    MOV A,B
CODE:a077  34 03                    ADDC A,#0x3
CODE:a079  f5 83                    MOV DPH,A
CODE:a07b  e0                       MOVX A,@DPTR
CODE:a07c  fe                       MOV R6,A
CODE:a07d  a3                       INC DPTR
CODE:a07e  e0                       MOVX A,@DPTR
CODE:a07f  d3                       SETB CY
CODE:a080  94 ba                    SUBB A,#0xba
CODE:a082  ee                       MOV A,R6
CODE:a083  94 03                    SUBB A,#0x3
CODE:a085  40 15                    JC 0xa09c
CODE:a087  78 2d                    MOV R0,#0x2d
CODE:a089  e6                       MOV A,@R0
CODE:a08a  75 f0 02                 MOV B,#0x2
CODE:a08d  a4                       MUL AB
CODE:a08e  24 cb                    ADD A,#0xcb
CODE:a090  f5 82                    MOV DPL,A
CODE:a092  e5 f0                    MOV A,B
CODE:a094  34 03                    ADDC A,#0x3
CODE:a096  f5 83                    MOV DPH,A
CODE:a098  e4                       CLR A
CODE:a099  f0                       MOVX @DPTR,A
CODE:a09a  a3                       INC DPTR
CODE:a09b  f0                       MOVX @DPTR,A
LAB_CODE_a09c:
CODE:a09c  78 2d                    MOV R0,#0x2d   ; XREF: CODE:a085 
CODE:a09e  06                       INC @R0
CODE:a09f  80 ac                    SJMP 0xa04d
LAB_CODE_a0a1:
CODE:a0a1  12 ad 0a                 LCALL 0xad0a   ; XREF: CODE:a054 
LAB_CODE_a0a4:
CODE:a0a4  e4                       CLR A   ; XREF: CODE:a03d 
CODE:a0a5  78 2e                    MOV R0,#0x2e
CODE:a0a7  f6                       MOV @R0,A
LAB_CODE_a0a8:
CODE:a0a8  78 2e                    MOV R0,#0x2e   ; XREF: CODE:a0bc 
CODE:a0aa  e6                       MOV A,@R0
CODE:a0ab  ff                       MOV R7,A
CODE:a0ac  c3                       CLR CY
CODE:a0ad  94 06                    SUBB A,#0x6
CODE:a0af  50 0d                    JNC 0xa0be
CODE:a0b1  90 08 f5                 MOV DPTR,#0x8f5
CODE:a0b4  e0                       MOVX A,@DPTR
CODE:a0b5  fd                       MOV R5,A
CODE:a0b6  12 98 0f                 LCALL 0x980f
CODE:a0b9  78 2e                    MOV R0,#0x2e
CODE:a0bb  06                       INC @R0
CODE:a0bc  80 ea                    SJMP 0xa0a8
LAB_CODE_a0be:
CODE:a0be  22                       RET   ; XREF: CODE:a0af 

; ===== FUNCTION FUN_CODE_a0bf @ CODE:a0bf =====
CODE:a0bf  78 69                    MOV R0,#0x69   ; XREF: CODE:19a4 CODE:2e10 CODE:8012 
CODE:a0c1  e6                       MOV A,@R0
CODE:a0c2  fd                       MOV R5,A
CODE:a0c3  b4 13 06                 CJNE A,#0x13,0xa0cc
CODE:a0c6  7e d8                    MOV R6,#0xd8
CODE:a0c8  7f 00                    MOV R7,#0x0
CODE:a0ca  80 30                    SJMP 0xa0fc
LAB_CODE_a0cc:
CODE:a0cc  ed                       MOV A,R5   ; XREF: CODE:a0c3 
CODE:a0cd  b4 20 06                 CJNE A,#0x20,0xa0d6
CODE:a0d0  7e ec                    MOV R6,#0xec
CODE:a0d2  7f 00                    MOV R7,#0x0
CODE:a0d4  80 26                    SJMP 0xa0fc
LAB_CODE_a0d6:
CODE:a0d6  ed                       MOV A,R5   ; XREF: CODE:a0cd 
CODE:a0d7  b4 21 06                 CJNE A,#0x21,0xa0e0
CODE:a0da  7e e6                    MOV R6,#0xe6
CODE:a0dc  7f 00                    MOV R7,#0x0
CODE:a0de  80 1c                    SJMP 0xa0fc
LAB_CODE_a0e0:
CODE:a0e0  ed                       MOV A,R5   ; XREF: CODE:a0d7 
CODE:a0e1  b4 22 06                 CJNE A,#0x22,0xa0ea
CODE:a0e4  7e e8                    MOV R6,#0xe8
CODE:a0e6  7f 00                    MOV R7,#0x0
CODE:a0e8  80 12                    SJMP 0xa0fc
LAB_CODE_a0ea:
CODE:a0ea  ed                       MOV A,R5   ; XREF: CODE:a0e1 
CODE:a0eb  b4 23 06                 CJNE A,#0x23,0xa0f4
CODE:a0ee  7e ea                    MOV R6,#0xea
CODE:a0f0  7f 00                    MOV R7,#0x0
CODE:a0f2  80 08                    SJMP 0xa0fc
LAB_CODE_a0f4:
CODE:a0f4  ed                       MOV A,R5   ; XREF: CODE:a0eb 
CODE:a0f5  b4 24 04                 CJNE A,#0x24,0xa0fc
CODE:a0f8  7e da                    MOV R6,#0xda
CODE:a0fa  7f 00                    MOV R7,#0x0
LAB_CODE_a0fc:
CODE:a0fc  e4                       CLR A   ; XREF: CODE:a0ca CODE:a0d4 CODE:a0de CODE:a0e8 CODE:a0f2 CODE:a0f5 
CODE:a0fd  fd                       MOV R5,A
LAB_CODE_a0fe:
CODE:a0fe  8f 82                    MOV DPL,R7   ; XREF: CODE:a148 
CODE:a100  8e 83                    MOV DPH,R6
CODE:a102  e4                       CLR A
CODE:a103  93                       MOVC A,@A+DPTR
CODE:a104  fc                       MOV R4,A
CODE:a105  74 f6                    MOV A,#0xf6
CODE:a107  2d                       ADD A,R5
CODE:a108  f5 82                    MOV DPL,A
CODE:a10a  e4                       CLR A
CODE:a10b  34 04                    ADDC A,#0x4
CODE:a10d  f5 83                    MOV DPH,A
CODE:a10f  ec                       MOV A,R4
CODE:a110  f0                       MOVX @DPTR,A
CODE:a111  0f                       INC R7
CODE:a112  bf 00 01                 CJNE R7,#0x0,0xa116
CODE:a115  0e                       INC R6
LAB_CODE_a116:
CODE:a116  8f 82                    MOV DPL,R7   ; XREF: CODE:a112 
CODE:a118  8e 83                    MOV DPH,R6
CODE:a11a  e4                       CLR A
CODE:a11b  93                       MOVC A,@A+DPTR
CODE:a11c  fc                       MOV R4,A
CODE:a11d  74 8b                    MOV A,#0x8b
CODE:a11f  2d                       ADD A,R5
CODE:a120  f5 82                    MOV DPL,A
CODE:a122  e4                       CLR A
CODE:a123  34 05                    ADDC A,#0x5
CODE:a125  f5 83                    MOV DPH,A
CODE:a127  ec                       MOV A,R4
CODE:a128  f0                       MOVX @DPTR,A
CODE:a129  0f                       INC R7
CODE:a12a  bf 00 01                 CJNE R7,#0x0,0xa12e
CODE:a12d  0e                       INC R6
LAB_CODE_a12e:
CODE:a12e  8f 82                    MOV DPL,R7   ; XREF: CODE:a12a 
CODE:a130  8e 83                    MOV DPH,R6
CODE:a132  e4                       CLR A
CODE:a133  93                       MOVC A,@A+DPTR
CODE:a134  fc                       MOV R4,A
CODE:a135  74 20                    MOV A,#0x20
CODE:a137  2d                       ADD A,R5
CODE:a138  f5 82                    MOV DPL,A
CODE:a13a  e4                       CLR A
CODE:a13b  34 06                    ADDC A,#0x6
CODE:a13d  f5 83                    MOV DPH,A
CODE:a13f  ec                       MOV A,R4
CODE:a140  f0                       MOVX @DPTR,A
CODE:a141  0f                       INC R7
CODE:a142  bf 00 01                 CJNE R7,#0x0,0xa146
CODE:a145  0e                       INC R6
LAB_CODE_a146:
CODE:a146  0d                       INC R5   ; XREF: CODE:a142 
CODE:a147  ed                       MOV A,R5
CODE:a148  b4 8a b3                 CJNE A,#0x8a,0xa0fe
CODE:a14b  22                       RET

; ===== FUNCTION FUN_CODE_a14c @ CODE:a14c =====
CODE:a14c  90 08 f5                 MOV DPTR,#0x8f5   ; XREF: CODE:2f02 
CODE:a14f  ef                       MOV A,R7
CODE:a150  f0                       MOVX @DPTR,A
CODE:a151  79 57                    MOV R1,#0x57
CODE:a153  e7                       MOV A,@R1
CODE:a154  d3                       SETB CY
CODE:a155  78 1b                    MOV R0,#0x1b
CODE:a157  96                       SUBB A,@R0
CODE:a158  40 64                    JC 0xa1be
CODE:a15a  12 ac a8                 LCALL 0xaca8
CODE:a15d  12 bb dd                 LCALL 0xbbdd
CODE:a160  e4                       CLR A
CODE:a161  78 57                    MOV R0,#0x57
CODE:a163  f6                       MOV @R0,A
CODE:a164  78 2d                    MOV R0,#0x2d
CODE:a166  f6                       MOV @R0,A
LAB_CODE_a167:
CODE:a167  78 2d                    MOV R0,#0x2d   ; XREF: CODE:a1b9 
CODE:a169  e6                       MOV A,@R0
CODE:a16a  ff                       MOV R7,A
CODE:a16b  c3                       CLR CY
CODE:a16c  94 8a                    SUBB A,#0x8a
CODE:a16e  50 4b                    JNC 0xa1bb
CODE:a170  75 f0 02                 MOV B,#0x2
CODE:a173  ef                       MOV A,R7
CODE:a174  a4                       MUL AB
CODE:a175  24 cb                    ADD A,#0xcb
CODE:a177  f5 82                    MOV DPL,A
CODE:a179  e5 f0                    MOV A,B
CODE:a17b  34 03                    ADDC A,#0x3
CODE:a17d  f5 83                    MOV DPH,A
CODE:a17f  e4                       CLR A
CODE:a180  75 f0 01                 MOV B,#0x1
CODE:a183  12 80 f2                 LCALL 0x80f2
CODE:a186  75 f0 02                 MOV B,#0x2
CODE:a189  ef                       MOV A,R7
CODE:a18a  a4                       MUL AB
CODE:a18b  24 cb                    ADD A,#0xcb
CODE:a18d  f5 82                    MOV DPL,A
CODE:a18f  e5 f0                    MOV A,B
CODE:a191  34 03                    ADDC A,#0x3
CODE:a193  f5 83                    MOV DPH,A
CODE:a195  e0                       MOVX A,@DPTR
CODE:a196  fe                       MOV R6,A
CODE:a197  a3                       INC DPTR
CODE:a198  e0                       MOVX A,@DPTR
CODE:a199  d3                       SETB CY
CODE:a19a  94 ba                    SUBB A,#0xba
CODE:a19c  ee                       MOV A,R6
CODE:a19d  94 03                    SUBB A,#0x3
CODE:a19f  40 15                    JC 0xa1b6
CODE:a1a1  78 2d                    MOV R0,#0x2d
CODE:a1a3  e6                       MOV A,@R0
CODE:a1a4  75 f0 02                 MOV B,#0x2
CODE:a1a7  a4                       MUL AB
CODE:a1a8  24 cb                    ADD A,#0xcb
CODE:a1aa  f5 82                    MOV DPL,A
CODE:a1ac  e5 f0                    MOV A,B
CODE:a1ae  34 03                    ADDC A,#0x3
CODE:a1b0  f5 83                    MOV DPH,A
CODE:a1b2  e4                       CLR A
CODE:a1b3  f0                       MOVX @DPTR,A
CODE:a1b4  a3                       INC DPTR
CODE:a1b5  f0                       MOVX @DPTR,A
LAB_CODE_a1b6:
CODE:a1b6  78 2d                    MOV R0,#0x2d   ; XREF: CODE:a19f 
CODE:a1b8  06                       INC @R0
CODE:a1b9  80 ac                    SJMP 0xa167
LAB_CODE_a1bb:
CODE:a1bb  12 ad 0a                 LCALL 0xad0a   ; XREF: CODE:a16e 
LAB_CODE_a1be:
CODE:a1be  e4                       CLR A   ; XREF: CODE:a158 
CODE:a1bf  78 2e                    MOV R0,#0x2e
CODE:a1c1  f6                       MOV @R0,A
LAB_CODE_a1c2:
CODE:a1c2  78 2e                    MOV R0,#0x2e   ; XREF: CODE:a1d6 
CODE:a1c4  e6                       MOV A,@R0
CODE:a1c5  ff                       MOV R7,A
CODE:a1c6  c3                       CLR CY
CODE:a1c7  94 06                    SUBB A,#0x6
CODE:a1c9  50 0d                    JNC 0xa1d8
CODE:a1cb  90 08 f5                 MOV DPTR,#0x8f5
CODE:a1ce  e0                       MOVX A,@DPTR
CODE:a1cf  fd                       MOV R5,A
CODE:a1d0  12 98 0f                 LCALL 0x980f
CODE:a1d3  78 2e                    MOV R0,#0x2e
CODE:a1d5  06                       INC @R0
CODE:a1d6  80 ea                    SJMP 0xa1c2
LAB_CODE_a1d8:
CODE:a1d8  22                       RET   ; XREF: CODE:a1c9 

; ===== FUNCTION FUN_CODE_a1d9 @ CODE:a1d9 =====
CODE:a1d9  e4                       CLR A   ; XREF: CODE:44d4 CODE:4561 
CODE:a1da  ff                       MOV R7,A
LAB_CODE_a1db:
CODE:a1db  74 f6                    MOV A,#0xf6   ; XREF: CODE:a227 
CODE:a1dd  2f                       ADD A,R7
CODE:a1de  f5 82                    MOV DPL,A
CODE:a1e0  e4                       CLR A
CODE:a1e1  34 01                    ADDC A,#0x1
CODE:a1e3  f5 83                    MOV DPH,A
CODE:a1e5  e4                       CLR A
CODE:a1e6  f0                       MOVX @DPTR,A
CODE:a1e7  ef                       MOV A,R7
CODE:a1e8  90 7b e5                 MOV DPTR,#0x7be5
CODE:a1eb  93                       MOVC A,@A+DPTR
CODE:a1ec  fd                       MOV R5,A
CODE:a1ed  75 f0 02                 MOV B,#0x2
CODE:a1f0  ef                       MOV A,R7
CODE:a1f1  a4                       MUL AB
CODE:a1f2  24 cb                    ADD A,#0xcb
CODE:a1f4  f5 82                    MOV DPL,A
CODE:a1f6  e5 f0                    MOV A,B
CODE:a1f8  34 03                    ADDC A,#0x3
CODE:a1fa  f5 83                    MOV DPH,A
CODE:a1fc  e4                       CLR A
CODE:a1fd  f0                       MOVX @DPTR,A
CODE:a1fe  a3                       INC DPTR
CODE:a1ff  ed                       MOV A,R5
CODE:a200  f0                       MOVX @DPTR,A
CODE:a201  74 31                    MOV A,#0x31
CODE:a203  2f                       ADD A,R7
CODE:a204  f5 82                    MOV DPL,A
CODE:a206  e4                       CLR A
CODE:a207  34 03                    ADDC A,#0x3
CODE:a209  f5 83                    MOV DPH,A
CODE:a20b  e4                       CLR A
CODE:a20c  f0                       MOVX @DPTR,A
CODE:a20d  74 8a                    MOV A,#0x8a
CODE:a20f  2f                       ADD A,R7
CODE:a210  f5 82                    MOV DPL,A
CODE:a212  e4                       CLR A
CODE:a213  34 00                    ADDC A,#0x0
CODE:a215  f5 83                    MOV DPH,A
CODE:a217  e4                       CLR A
CODE:a218  f0                       MOVX @DPTR,A
CODE:a219  74 9c                    MOV A,#0x9c
CODE:a21b  2f                       ADD A,R7
CODE:a21c  f5 82                    MOV DPL,A
CODE:a21e  e4                       CLR A
CODE:a21f  34 02                    ADDC A,#0x2
CODE:a221  f5 83                    MOV DPH,A
CODE:a223  e4                       CLR A
CODE:a224  f0                       MOVX @DPTR,A
CODE:a225  0f                       INC R7
CODE:a226  ef                       MOV A,R7
CODE:a227  b4 8a b1                 CJNE A,#0x8a,0xa1db
CODE:a22a  12 b7 9e                 LCALL 0xb79e
CODE:a22d  90 03 31                 MOV DPTR,#0x331
CODE:a230  ef                       MOV A,R7
CODE:a231  f0                       MOVX @DPTR,A
CODE:a232  fd                       MOV R5,A
CODE:a233  7f ff                    MOV R7,#0xff
CODE:a235  12 9f 11                 LCALL 0x9f11
CODE:a238  90 01 5c                 MOV DPTR,#0x15c
CODE:a23b  ef                       MOV A,R7
CODE:a23c  f0                       MOVX @DPTR,A
CODE:a23d  12 b7 9e                 LCALL 0xb79e
CODE:a240  90 03 ba                 MOV DPTR,#0x3ba
CODE:a243  ef                       MOV A,R7
CODE:a244  f0                       MOVX @DPTR,A
CODE:a245  fd                       MOV R5,A
CODE:a246  7f ff                    MOV R7,#0xff
CODE:a248  12 9f 11                 LCALL 0x9f11
CODE:a24b  90 01 e5                 MOV DPTR,#0x1e5
CODE:a24e  ef                       MOV A,R7
CODE:a24f  f0                       MOVX @DPTR,A
CODE:a250  e4                       CLR A
CODE:a251  78 6b                    MOV R0,#0x6b
CODE:a253  f6                       MOV @R0,A
CODE:a254  90 09 88                 MOV DPTR,#0x988
CODE:a257  f0                       MOVX @DPTR,A
CODE:a258  a3                       INC DPTR
CODE:a259  f0                       MOVX @DPTR,A
CODE:a25a  78 5a                    MOV R0,#0x5a
CODE:a25c  f6                       MOV @R0,A
CODE:a25d  78 6a                    MOV R0,#0x6a
CODE:a25f  f6                       MOV @R0,A
CODE:a260  78 6c                    MOV R0,#0x6c
CODE:a262  f6                       MOV @R0,A
CODE:a263  22                       RET

; ===== FUNCTION FUN_CODE_a48c @ CODE:a48c =====
CODE:a48c  90 09 22                 MOV DPTR,#0x922   ; XREF: CODE:bc66 
CODE:a48f  e0                       MOVX A,@DPTR
CODE:a490  fe                       MOV R6,A
CODE:a491  a3                       INC DPTR
CODE:a492  e0                       MOVX A,@DPTR
CODE:a493  ff                       MOV R7,A
CODE:a494  4e                       ORL A,R6
CODE:a495  70 0c                    JNZ 0xa4a3
CODE:a497  90 09 35                 MOV DPTR,#0x935
CODE:a49a  74 02                    MOV A,#0x2
CODE:a49c  f0                       MOVX @DPTR,A
CODE:a49d  53 9b f0                 ANL 0x9b,#0xf0
CODE:a4a0  02 a5 11                 LJMP 0xa511
LAB_CODE_a4a3:
CODE:a4a3  d3                       SETB CY   ; XREF: CODE:a495 
CODE:a4a4  ef                       MOV A,R7
CODE:a4a5  94 08                    SUBB A,#0x8
CODE:a4a7  ee                       MOV A,R6
CODE:a4a8  94 00                    SUBB A,#0x0
CODE:a4aa  40 25                    JC 0xa4d1
CODE:a4ac  90 09 35                 MOV DPTR,#0x935
CODE:a4af  74 01                    MOV A,#0x1
CODE:a4b1  f0                       MOVX @DPTR,A
CODE:a4b2  90 09 23                 MOV DPTR,#0x923
CODE:a4b5  e0                       MOVX A,@DPTR
CODE:a4b6  24 f8                    ADD A,#0xf8
CODE:a4b8  f0                       MOVX @DPTR,A
CODE:a4b9  90 09 22                 MOV DPTR,#0x922
CODE:a4bc  e0                       MOVX A,@DPTR
CODE:a4bd  34 ff                    ADDC A,#0xff
CODE:a4bf  12 b1 9e                 LCALL 0xb19e
CODE:a4c2  90 09 29                 MOV DPTR,#0x929
CODE:a4c5  e0                       MOVX A,@DPTR
CODE:a4c6  24 08                    ADD A,#0x8
CODE:a4c8  f0                       MOVX @DPTR,A
CODE:a4c9  90 09 28                 MOV DPTR,#0x928
CODE:a4cc  e0                       MOVX A,@DPTR
CODE:a4cd  34 00                    ADDC A,#0x0
CODE:a4cf  80 19                    SJMP 0xa4ea
LAB_CODE_a4d1:
CODE:a4d1  90 09 22                 MOV DPTR,#0x922   ; XREF: CODE:a4aa 
CODE:a4d4  e0                       MOVX A,@DPTR
CODE:a4d5  70 04                    JNZ 0xa4db
CODE:a4d7  a3                       INC DPTR
CODE:a4d8  e0                       MOVX A,@DPTR
CODE:a4d9  64 08                    XRL A,#0x8
LAB_CODE_a4db:
CODE:a4db  90 09 35                 MOV DPTR,#0x935   ; XREF: CODE:a4d5 
CODE:a4de  70 13                    JNZ 0xa4f3
CODE:a4e0  04                       INC A
CODE:a4e1  12 b1 9e                 LCALL 0xb19e
CODE:a4e4  e4                       CLR A
CODE:a4e5  90 09 22                 MOV DPTR,#0x922
CODE:a4e8  f0                       MOVX @DPTR,A
CODE:a4e9  a3                       INC DPTR
LAB_CODE_a4ea:
CODE:a4ea  f0                       MOVX @DPTR,A   ; XREF: CODE:a4cf 
CODE:a4eb  53 9b f0                 ANL 0x9b,#0xf0
CODE:a4ee  43 9b 08                 ORL 0x9b,#0x8
CODE:a4f1  80 1e                    SJMP 0xa511
LAB_CODE_a4f3:
CODE:a4f3  74 02                    MOV A,#0x2   ; XREF: CODE:a4de 
CODE:a4f5  f0                       MOVX @DPTR,A
CODE:a4f6  90 09 28                 MOV DPTR,#0x928
CODE:a4f9  e0                       MOVX A,@DPTR
CODE:a4fa  fe                       MOV R6,A
CODE:a4fb  a3                       INC DPTR
CODE:a4fc  e0                       MOVX A,@DPTR
CODE:a4fd  ff                       MOV R7,A
CODE:a4fe  90 09 22                 MOV DPTR,#0x922
CODE:a501  a3                       INC DPTR
CODE:a502  e0                       MOVX A,@DPTR
CODE:a503  fd                       MOV R5,A
CODE:a504  12 b1 a9                 LCALL 0xb1a9
CODE:a507  53 9b f0                 ANL 0x9b,#0xf0
CODE:a50a  90 09 22                 MOV DPTR,#0x922
CODE:a50d  a3                       INC DPTR
CODE:a50e  e0                       MOVX A,@DPTR
CODE:a50f  42 9b                    ORL 0x9b,A
LAB_CODE_a511:
CODE:a511  53 93 fe                 ANL 0x93,#0xfe   ; XREF: CODE:a4a0 CODE:a4f1 
CODE:a514  22                       RET

; ===== FUNCTION FUN_CODE_a515 @ CODE:a515 =====
CODE:a515  e4                       CLR A   ; XREF: CODE:44d7 CODE:4564 CODE:801c 
CODE:a516  ff                       MOV R7,A
LAB_CODE_a517:
CODE:a517  74 f6                    MOV A,#0xf6   ; XREF: CODE:a563 
CODE:a519  2f                       ADD A,R7
CODE:a51a  f5 82                    MOV DPL,A
CODE:a51c  e4                       CLR A
CODE:a51d  34 01                    ADDC A,#0x1
CODE:a51f  f5 83                    MOV DPH,A
CODE:a521  e4                       CLR A
CODE:a522  f0                       MOVX @DPTR,A
CODE:a523  ef                       MOV A,R7
CODE:a524  90 7b e5                 MOV DPTR,#0x7be5
CODE:a527  93                       MOVC A,@A+DPTR
CODE:a528  fd                       MOV R5,A
CODE:a529  75 f0 02                 MOV B,#0x2
CODE:a52c  ef                       MOV A,R7
CODE:a52d  a4                       MUL AB
CODE:a52e  24 cb                    ADD A,#0xcb
CODE:a530  f5 82                    MOV DPL,A
CODE:a532  e5 f0                    MOV A,B
CODE:a534  34 03                    ADDC A,#0x3
CODE:a536  f5 83                    MOV DPH,A
CODE:a538  e4                       CLR A
CODE:a539  f0                       MOVX @DPTR,A
CODE:a53a  a3                       INC DPTR
CODE:a53b  ed                       MOV A,R5
CODE:a53c  f0                       MOVX @DPTR,A
CODE:a53d  74 31                    MOV A,#0x31
CODE:a53f  2f                       ADD A,R7
CODE:a540  f5 82                    MOV DPL,A
CODE:a542  e4                       CLR A
CODE:a543  34 03                    ADDC A,#0x3
CODE:a545  f5 83                    MOV DPH,A
CODE:a547  e4                       CLR A
CODE:a548  f0                       MOVX @DPTR,A
CODE:a549  74 8a                    MOV A,#0x8a
CODE:a54b  2f                       ADD A,R7
CODE:a54c  f5 82                    MOV DPL,A
CODE:a54e  e4                       CLR A
CODE:a54f  34 00                    ADDC A,#0x0
CODE:a551  f5 83                    MOV DPH,A
CODE:a553  e4                       CLR A
CODE:a554  f0                       MOVX @DPTR,A
CODE:a555  74 9c                    MOV A,#0x9c
CODE:a557  2f                       ADD A,R7
CODE:a558  f5 82                    MOV DPL,A
CODE:a55a  e4                       CLR A
CODE:a55b  34 02                    ADDC A,#0x2
CODE:a55d  f5 83                    MOV DPH,A
CODE:a55f  e4                       CLR A
CODE:a560  f0                       MOVX @DPTR,A
CODE:a561  0f                       INC R7
CODE:a562  ef                       MOV A,R7
CODE:a563  b4 8a b1                 CJNE A,#0x8a,0xa517
CODE:a566  12 b7 9e                 LCALL 0xb79e
CODE:a569  90 03 31                 MOV DPTR,#0x331
CODE:a56c  ef                       MOV A,R7
CODE:a56d  f0                       MOVX @DPTR,A
CODE:a56e  fd                       MOV R5,A
CODE:a56f  7f ff                    MOV R7,#0xff
CODE:a571  12 9f 11                 LCALL 0x9f11
CODE:a574  90 01 5c                 MOV DPTR,#0x15c
CODE:a577  ef                       MOV A,R7
CODE:a578  f0                       MOVX @DPTR,A
CODE:a579  12 b7 9e                 LCALL 0xb79e
CODE:a57c  90 03 a2                 MOV DPTR,#0x3a2
CODE:a57f  ef                       MOV A,R7
CODE:a580  f0                       MOVX @DPTR,A
CODE:a581  fd                       MOV R5,A
CODE:a582  7f ff                    MOV R7,#0xff
CODE:a584  12 9f 11                 LCALL 0x9f11
CODE:a587  90 01 cd                 MOV DPTR,#0x1cd
CODE:a58a  ef                       MOV A,R7
CODE:a58b  f0                       MOVX @DPTR,A
CODE:a58c  e4                       CLR A
CODE:a58d  78 6b                    MOV R0,#0x6b
CODE:a58f  f6                       MOV @R0,A
CODE:a590  90 09 88                 MOV DPTR,#0x988
CODE:a593  f0                       MOVX @DPTR,A
CODE:a594  a3                       INC DPTR
CODE:a595  f0                       MOVX @DPTR,A
CODE:a596  78 5a                    MOV R0,#0x5a
CODE:a598  f6                       MOV @R0,A
CODE:a599  78 6c                    MOV R0,#0x6c
CODE:a59b  f6                       MOV @R0,A
CODE:a59c  22                       RET

; ===== FUNCTION FUN_CODE_a59d @ CODE:a59d =====
CODE:a59d  90 08 f5                 MOV DPTR,#0x8f5   ; XREF: CODE:2eea 
CODE:a5a0  ef                       MOV A,R7
CODE:a5a1  f0                       MOVX @DPTR,A
CODE:a5a2  79 57                    MOV R1,#0x57
CODE:a5a4  e7                       MOV A,@R1
CODE:a5a5  d3                       SETB CY
CODE:a5a6  78 1b                    MOV R0,#0x1b
CODE:a5a8  96                       SUBB A,@R0
CODE:a5a9  40 07                    JC 0xa5b2
CODE:a5ab  e4                       CLR A
CODE:a5ac  78 57                    MOV R0,#0x57
CODE:a5ae  f6                       MOV @R0,A
CODE:a5af  12 91 b0                 LCALL 0x91b0
LAB_CODE_a5b2:
CODE:a5b2  e4                       CLR A   ; XREF: CODE:a5a9 
CODE:a5b3  90 08 f6                 MOV DPTR,#0x8f6
CODE:a5b6  f0                       MOVX @DPTR,A
LAB_CODE_a5b7:
CODE:a5b7  90 08 f6                 MOV DPTR,#0x8f6   ; XREF: CODE:a621 
CODE:a5ba  e0                       MOVX A,@DPTR
CODE:a5bb  ff                       MOV R7,A
CODE:a5bc  c3                       CLR CY
CODE:a5bd  94 06                    SUBB A,#0x6
CODE:a5bf  50 62                    JNC 0xa623
CODE:a5c1  ef                       MOV A,R7
CODE:a5c2  75 f0 17                 MOV B,#0x17
CODE:a5c5  a4                       MUL AB
CODE:a5c6  ff                       MOV R7,A
CODE:a5c7  90 08 f5                 MOV DPTR,#0x8f5
CODE:a5ca  e0                       MOVX A,@DPTR
CODE:a5cb  2f                       ADD A,R7
CODE:a5cc  78 2d                    MOV R0,#0x2d
CODE:a5ce  f6                       MOV @R0,A
CODE:a5cf  e6                       MOV A,@R0
CODE:a5d0  ff                       MOV R7,A
CODE:a5d1  24 f6                    ADD A,#0xf6
CODE:a5d3  f5 82                    MOV DPL,A
CODE:a5d5  e4                       CLR A
CODE:a5d6  34 01                    ADDC A,#0x1
CODE:a5d8  f5 83                    MOV DPH,A
CODE:a5da  e0                       MOVX A,@DPTR
CODE:a5db  d3                       SETB CY
CODE:a5dc  94 00                    SUBB A,#0x0
CODE:a5de  40 14                    JC 0xa5f4
CODE:a5e0  78 5c                    MOV R0,#0x5c
CODE:a5e2  e6                       MOV A,@R0
CODE:a5e3  b4 07 05                 CJNE A,#0x7,0xa5eb
CODE:a5e6  12 88 05                 LCALL 0x8805
CODE:a5e9  80 30                    SJMP 0xa61b
LAB_CODE_a5eb:
CODE:a5eb  78 2d                    MOV R0,#0x2d   ; XREF: CODE:a5e3 
CODE:a5ed  e6                       MOV A,@R0
CODE:a5ee  ff                       MOV R7,A
CODE:a5ef  12 9e 7f                 LCALL 0x9e7f
CODE:a5f2  80 27                    SJMP 0xa61b
LAB_CODE_a5f4:
CODE:a5f4  78 2d                    MOV R0,#0x2d   ; XREF: CODE:a5de 
CODE:a5f6  e6                       MOV A,@R0
CODE:a5f7  ff                       MOV R7,A
CODE:a5f8  24 20                    ADD A,#0x20
CODE:a5fa  f5 82                    MOV DPL,A
CODE:a5fc  e4                       CLR A
CODE:a5fd  34 06                    ADDC A,#0x6
CODE:a5ff  f5 83                    MOV DPH,A
CODE:a601  e4                       CLR A
CODE:a602  f0                       MOVX @DPTR,A
CODE:a603  74 8b                    MOV A,#0x8b
CODE:a605  2f                       ADD A,R7
CODE:a606  f5 82                    MOV DPL,A
CODE:a608  e4                       CLR A
CODE:a609  34 05                    ADDC A,#0x5
CODE:a60b  f5 83                    MOV DPH,A
CODE:a60d  e4                       CLR A
CODE:a60e  f0                       MOVX @DPTR,A
CODE:a60f  74 f6                    MOV A,#0xf6
CODE:a611  2f                       ADD A,R7
CODE:a612  f5 82                    MOV DPL,A
CODE:a614  e4                       CLR A
CODE:a615  34 04                    ADDC A,#0x4
CODE:a617  f5 83                    MOV DPH,A
CODE:a619  e4                       CLR A
CODE:a61a  f0                       MOVX @DPTR,A
LAB_CODE_a61b:
CODE:a61b  90 08 f6                 MOV DPTR,#0x8f6   ; XREF: CODE:a5e9 CODE:a5f2 
CODE:a61e  e0                       MOVX A,@DPTR
CODE:a61f  04                       INC A
CODE:a620  f0                       MOVX @DPTR,A
CODE:a621  80 94                    SJMP 0xa5b7
LAB_CODE_a623:
CODE:a623  22                       RET   ; XREF: CODE:a5bf 

; ===== FUNCTION FUN_CODE_a624 @ CODE:a624 =====
CODE:a624  90 09 03                 MOV DPTR,#0x903   ; XREF: CODE:8ccd 
CODE:a627  74 5f                    MOV A,#0x5f
CODE:a629  f0                       MOVX @DPTR,A
CODE:a62a  a3                       INC DPTR
CODE:a62b  74 8d                    MOV A,#0x8d
CODE:a62d  f0                       MOVX @DPTR,A
CODE:a62e  12 a7 2e                 LCALL 0xa72e
CODE:a631  e4                       CLR A
CODE:a632  90 09 2a                 MOV DPTR,#0x92a
CODE:a635  f0                       MOVX @DPTR,A
LAB_CODE_a636:
CODE:a636  90 09 03                 MOV DPTR,#0x903   ; XREF: CODE:a68c 
CODE:a639  e0                       MOVX A,@DPTR
CODE:a63a  fe                       MOV R6,A
CODE:a63b  a3                       INC DPTR
CODE:a63c  e0                       MOVX A,@DPTR
CODE:a63d  ff                       MOV R7,A
CODE:a63e  f5 82                    MOV DPL,A
CODE:a640  8e 83                    MOV DPH,R6
CODE:a642  e4                       CLR A
CODE:a643  93                       MOVC A,@A+DPTR
CODE:a644  fd                       MOV R5,A
CODE:a645  90 09 0e                 MOV DPTR,#0x90e
CODE:a648  e0                       MOVX A,@DPTR
CODE:a649  fc                       MOV R4,A
CODE:a64a  ed                       MOV A,R5
CODE:a64b  b5 04 25                 CJNE A,0x04,0xa673
CODE:a64e  8f 82                    MOV DPL,R7
CODE:a650  8e 83                    MOV DPH,R6
CODE:a652  74 01                    MOV A,#0x1
CODE:a654  93                       MOVC A,@A+DPTR
CODE:a655  ff                       MOV R7,A
CODE:a656  90 09 0f                 MOV DPTR,#0x90f
CODE:a659  e0                       MOVX A,@DPTR
CODE:a65a  fe                       MOV R6,A
CODE:a65b  ef                       MOV A,R7
CODE:a65c  b5 06 14                 CJNE A,0x06,0xa673
CODE:a65f  90 09 03                 MOV DPTR,#0x903
CODE:a662  e0                       MOVX A,@DPTR
CODE:a663  fe                       MOV R6,A
CODE:a664  a3                       INC DPTR
CODE:a665  e0                       MOVX A,@DPTR
CODE:a666  f5 82                    MOV DPL,A
CODE:a668  8e 83                    MOV DPH,R6
CODE:a66a  74 02                    MOV A,#0x2
CODE:a66c  93                       MOVC A,@A+DPTR
CODE:a66d  90 09 2a                 MOV DPTR,#0x92a
CODE:a670  f0                       MOVX @DPTR,A
CODE:a671  80 1b                    SJMP 0xa68e
LAB_CODE_a673:
CODE:a673  90 09 04                 MOV DPTR,#0x904   ; XREF: CODE:a64b CODE:a65c 
CODE:a676  e0                       MOVX A,@DPTR
CODE:a677  24 03                    ADD A,#0x3
CODE:a679  f0                       MOVX @DPTR,A
CODE:a67a  90 09 03                 MOV DPTR,#0x903
CODE:a67d  e0                       MOVX A,@DPTR
CODE:a67e  34 00                    ADDC A,#0x0
CODE:a680  f0                       MOVX @DPTR,A
CODE:a681  c3                       CLR CY
CODE:a682  a3                       INC DPTR
CODE:a683  e0                       MOVX A,@DPTR
CODE:a684  94 cc                    SUBB A,#0xcc
CODE:a686  90 09 03                 MOV DPTR,#0x903
CODE:a689  e0                       MOVX A,@DPTR
CODE:a68a  94 5f                    SUBB A,#0x5f
CODE:a68c  40 a8                    JC 0xa636
LAB_CODE_a68e:
CODE:a68e  90 09 2a                 MOV DPTR,#0x92a   ; XREF: CODE:a671 
CODE:a691  e0                       MOVX A,@DPTR
CODE:a692  75 f0 03                 MOV B,#0x3
CODE:a695  a4                       MUL AB
CODE:a696  24 4e                    ADD A,#0x4e
CODE:a698  f5 82                    MOV DPL,A
CODE:a69a  e4                       CLR A
CODE:a69b  34 5f                    ADDC A,#0x5f
CODE:a69d  f5 83                    MOV DPH,A
CODE:a69f  74 01                    MOV A,#0x1
CODE:a6a1  93                       MOVC A,@A+DPTR
CODE:a6a2  fa                       MOV R2,A
CODE:a6a3  74 02                    MOV A,#0x2
CODE:a6a5  93                       MOVC A,@A+DPTR
CODE:a6a6  f9                       MOV R1,A
CODE:a6a7  02 81 d0                 LJMP 0x81d0

; ===== FUNCTION FUN_CODE_a72e @ CODE:a72e =====
CODE:a72e  90 09 36                 MOV DPTR,#0x936   ; XREF: CODE:a62e 
CODE:a731  74 11                    MOV A,#0x11
CODE:a733  f0                       MOVX @DPTR,A
CODE:a734  a3                       INC DPTR
CODE:a735  e4                       CLR A
CODE:a736  f0                       MOVX @DPTR,A
CODE:a737  90 09 36                 MOV DPTR,#0x936
CODE:a73a  e0                       MOVX A,@DPTR
CODE:a73b  fe                       MOV R6,A
CODE:a73c  a3                       INC DPTR
CODE:a73d  e0                       MOVX A,@DPTR
CODE:a73e  ff                       MOV R7,A
CODE:a73f  f5 82                    MOV DPL,A
CODE:a741  8e 83                    MOV DPH,R6
CODE:a743  e0                       MOVX A,@DPTR
CODE:a744  90 09 0e                 MOV DPTR,#0x90e
CODE:a747  f0                       MOVX @DPTR,A
CODE:a748  8f 82                    MOV DPL,R7
CODE:a74a  8e 83                    MOV DPH,R6
CODE:a74c  a3                       INC DPTR
CODE:a74d  e0                       MOVX A,@DPTR
CODE:a74e  90 09 0f                 MOV DPTR,#0x90f
CODE:a751  f0                       MOVX @DPTR,A
CODE:a752  90 09 36                 MOV DPTR,#0x936
CODE:a755  a3                       INC DPTR
CODE:a756  e0                       MOVX A,@DPTR
CODE:a757  f5 82                    MOV DPL,A
CODE:a759  8e 83                    MOV DPH,R6
CODE:a75b  a3                       INC DPTR
CODE:a75c  a3                       INC DPTR
CODE:a75d  e0                       MOVX A,@DPTR
CODE:a75e  90 09 10                 MOV DPTR,#0x910
CODE:a761  f0                       MOVX @DPTR,A
CODE:a762  8f 82                    MOV DPL,R7
CODE:a764  8e 83                    MOV DPH,R6
CODE:a766  a3                       INC DPTR
CODE:a767  a3                       INC DPTR
CODE:a768  a3                       INC DPTR
CODE:a769  e0                       MOVX A,@DPTR
CODE:a76a  90 09 11                 MOV DPTR,#0x911
CODE:a76d  f0                       MOVX @DPTR,A
CODE:a76e  90 09 36                 MOV DPTR,#0x936
CODE:a771  a3                       INC DPTR
CODE:a772  e0                       MOVX A,@DPTR
CODE:a773  24 04                    ADD A,#0x4
CODE:a775  f5 82                    MOV DPL,A
CODE:a777  e4                       CLR A
CODE:a778  3e                       ADDC A,R6
CODE:a779  f5 83                    MOV DPH,A
CODE:a77b  e0                       MOVX A,@DPTR
CODE:a77c  90 09 12                 MOV DPTR,#0x912
CODE:a77f  f0                       MOVX @DPTR,A
CODE:a780  ef                       MOV A,R7
CODE:a781  24 05                    ADD A,#0x5
CODE:a783  f5 82                    MOV DPL,A
CODE:a785  e4                       CLR A
CODE:a786  3e                       ADDC A,R6
CODE:a787  f5 83                    MOV DPH,A
CODE:a789  e0                       MOVX A,@DPTR
CODE:a78a  90 09 13                 MOV DPTR,#0x913
CODE:a78d  f0                       MOVX @DPTR,A
CODE:a78e  90 09 36                 MOV DPTR,#0x936
CODE:a791  a3                       INC DPTR
CODE:a792  e0                       MOVX A,@DPTR
CODE:a793  24 06                    ADD A,#0x6
CODE:a795  f5 82                    MOV DPL,A
CODE:a797  e4                       CLR A
CODE:a798  3e                       ADDC A,R6
CODE:a799  f5 83                    MOV DPH,A
CODE:a79b  e0                       MOVX A,@DPTR
CODE:a79c  90 09 14                 MOV DPTR,#0x914
CODE:a79f  f0                       MOVX @DPTR,A
CODE:a7a0  ef                       MOV A,R7
CODE:a7a1  24 07                    ADD A,#0x7
CODE:a7a3  f5 82                    MOV DPL,A
CODE:a7a5  e4                       CLR A
CODE:a7a6  3e                       ADDC A,R6
CODE:a7a7  f5 83                    MOV DPH,A
CODE:a7a9  e0                       MOVX A,@DPTR
CODE:a7aa  90 09 15                 MOV DPTR,#0x915
CODE:a7ad  f0                       MOVX @DPTR,A
CODE:a7ae  22                       RET

; ===== FUNCTION FUN_CODE_a7af @ CODE:a7af =====
CODE:a7af  90 08 f5                 MOV DPTR,#0x8f5   ; XREF: CODE:2fa9 
CODE:a7b2  ef                       MOV A,R7
CODE:a7b3  f0                       MOVX @DPTR,A
CODE:a7b4  79 57                    MOV R1,#0x57
CODE:a7b6  e7                       MOV A,@R1
CODE:a7b7  d3                       SETB CY
CODE:a7b8  78 1b                    MOV R0,#0x1b
CODE:a7ba  96                       SUBB A,@R0
CODE:a7bb  40 07                    JC 0xa7c4
CODE:a7bd  e4                       CLR A
CODE:a7be  78 57                    MOV R0,#0x57
CODE:a7c0  f6                       MOV @R0,A
CODE:a7c1  12 7d 83                 LCALL 0x7d83
LAB_CODE_a7c4:
CODE:a7c4  e4                       CLR A   ; XREF: CODE:a7bb 
CODE:a7c5  78 2d                    MOV R0,#0x2d
CODE:a7c7  f6                       MOV @R0,A
LAB_CODE_a7c8:
CODE:a7c8  78 2d                    MOV R0,#0x2d   ; XREF: CODE:a82d 
CODE:a7ca  e6                       MOV A,@R0
CODE:a7cb  ff                       MOV R7,A
CODE:a7cc  c3                       CLR CY
CODE:a7cd  94 06                    SUBB A,#0x6
CODE:a7cf  50 5e                    JNC 0xa82f
CODE:a7d1  ef                       MOV A,R7
CODE:a7d2  75 f0 17                 MOV B,#0x17
CODE:a7d5  a4                       MUL AB
CODE:a7d6  ff                       MOV R7,A
CODE:a7d7  90 08 f5                 MOV DPTR,#0x8f5
CODE:a7da  e0                       MOVX A,@DPTR
CODE:a7db  2f                       ADD A,R7
CODE:a7dc  08                       INC R0
CODE:a7dd  f6                       MOV @R0,A
CODE:a7de  e6                       MOV A,@R0
CODE:a7df  ff                       MOV R7,A
CODE:a7e0  24 f6                    ADD A,#0xf6
CODE:a7e2  f5 82                    MOV DPL,A
CODE:a7e4  e4                       CLR A
CODE:a7e5  34 01                    ADDC A,#0x1
CODE:a7e7  f5 83                    MOV DPH,A
CODE:a7e9  e0                       MOVX A,@DPTR
CODE:a7ea  d3                       SETB CY
CODE:a7eb  94 00                    SUBB A,#0x0
CODE:a7ed  40 14                    JC 0xa803
CODE:a7ef  78 5c                    MOV R0,#0x5c
CODE:a7f1  e6                       MOV A,@R0
CODE:a7f2  b4 07 05                 CJNE A,#0x7,0xa7fa
CODE:a7f5  12 88 05                 LCALL 0x8805
CODE:a7f8  80 30                    SJMP 0xa82a
LAB_CODE_a7fa:
CODE:a7fa  78 2e                    MOV R0,#0x2e   ; XREF: CODE:a7f2 
CODE:a7fc  e6                       MOV A,@R0
CODE:a7fd  ff                       MOV R7,A
CODE:a7fe  12 9e 7f                 LCALL 0x9e7f
CODE:a801  80 27                    SJMP 0xa82a
LAB_CODE_a803:
CODE:a803  78 2e                    MOV R0,#0x2e   ; XREF: CODE:a7ed 
CODE:a805  e6                       MOV A,@R0
CODE:a806  ff                       MOV R7,A
CODE:a807  24 20                    ADD A,#0x20
CODE:a809  f5 82                    MOV DPL,A
CODE:a80b  e4                       CLR A
CODE:a80c  34 06                    ADDC A,#0x6
CODE:a80e  f5 83                    MOV DPH,A
CODE:a810  e4                       CLR A
CODE:a811  f0                       MOVX @DPTR,A
CODE:a812  74 8b                    MOV A,#0x8b
CODE:a814  2f                       ADD A,R7
CODE:a815  f5 82                    MOV DPL,A
CODE:a817  e4                       CLR A
CODE:a818  34 05                    ADDC A,#0x5
CODE:a81a  f5 83                    MOV DPH,A
CODE:a81c  e4                       CLR A
CODE:a81d  f0                       MOVX @DPTR,A
CODE:a81e  74 f6                    MOV A,#0xf6
CODE:a820  2f                       ADD A,R7
CODE:a821  f5 82                    MOV DPL,A
CODE:a823  e4                       CLR A
CODE:a824  34 04                    ADDC A,#0x4
CODE:a826  f5 83                    MOV DPH,A
CODE:a828  e4                       CLR A
CODE:a829  f0                       MOVX @DPTR,A
LAB_CODE_a82a:
CODE:a82a  78 2d                    MOV R0,#0x2d   ; XREF: CODE:a7f8 CODE:a801 
CODE:a82c  06                       INC @R0
CODE:a82d  80 99                    SJMP 0xa7c8
LAB_CODE_a82f:
CODE:a82f  22                       RET   ; XREF: CODE:a7cf 

; ===== FUNCTION FUN_CODE_a92d @ CODE:a92d =====
CODE:a92d  90 08 f5                 MOV DPTR,#0x8f5   ; XREF: CODE:2e73 
CODE:a930  ef                       MOV A,R7
CODE:a931  f0                       MOVX @DPTR,A
CODE:a932  e4                       CLR A
CODE:a933  a3                       INC DPTR
CODE:a934  f0                       MOVX @DPTR,A
LAB_CODE_a935:
CODE:a935  90 08 f6                 MOV DPTR,#0x8f6   ; XREF: CODE:a99f 
CODE:a938  e0                       MOVX A,@DPTR
CODE:a939  ff                       MOV R7,A
CODE:a93a  c3                       CLR CY
CODE:a93b  94 06                    SUBB A,#0x6
CODE:a93d  50 62                    JNC 0xa9a1
CODE:a93f  ef                       MOV A,R7
CODE:a940  75 f0 17                 MOV B,#0x17
CODE:a943  a4                       MUL AB
CODE:a944  ff                       MOV R7,A
CODE:a945  90 08 f5                 MOV DPTR,#0x8f5
CODE:a948  e0                       MOVX A,@DPTR
CODE:a949  2f                       ADD A,R7
CODE:a94a  78 2d                    MOV R0,#0x2d
CODE:a94c  f6                       MOV @R0,A
CODE:a94d  e6                       MOV A,@R0
CODE:a94e  ff                       MOV R7,A
CODE:a94f  24 f6                    ADD A,#0xf6
CODE:a951  f5 82                    MOV DPL,A
CODE:a953  e4                       CLR A
CODE:a954  34 01                    ADDC A,#0x1
CODE:a956  f5 83                    MOV DPH,A
CODE:a958  e0                       MOVX A,@DPTR
CODE:a959  d3                       SETB CY
CODE:a95a  94 00                    SUBB A,#0x0
CODE:a95c  40 14                    JC 0xa972
CODE:a95e  78 5c                    MOV R0,#0x5c
CODE:a960  e6                       MOV A,@R0
CODE:a961  b4 07 05                 CJNE A,#0x7,0xa969
CODE:a964  12 88 05                 LCALL 0x8805
CODE:a967  80 30                    SJMP 0xa999
LAB_CODE_a969:
CODE:a969  78 2d                    MOV R0,#0x2d   ; XREF: CODE:a961 
CODE:a96b  e6                       MOV A,@R0
CODE:a96c  ff                       MOV R7,A
CODE:a96d  12 9e 7f                 LCALL 0x9e7f
CODE:a970  80 27                    SJMP 0xa999
LAB_CODE_a972:
CODE:a972  78 2d                    MOV R0,#0x2d   ; XREF: CODE:a95c 
CODE:a974  e6                       MOV A,@R0
CODE:a975  ff                       MOV R7,A
CODE:a976  24 20                    ADD A,#0x20
CODE:a978  f5 82                    MOV DPL,A
CODE:a97a  e4                       CLR A
CODE:a97b  34 06                    ADDC A,#0x6
CODE:a97d  f5 83                    MOV DPH,A
CODE:a97f  e4                       CLR A
CODE:a980  f0                       MOVX @DPTR,A
CODE:a981  74 8b                    MOV A,#0x8b
CODE:a983  2f                       ADD A,R7
CODE:a984  f5 82                    MOV DPL,A
CODE:a986  e4                       CLR A
CODE:a987  34 05                    ADDC A,#0x5
CODE:a989  f5 83                    MOV DPH,A
CODE:a98b  e4                       CLR A
CODE:a98c  f0                       MOVX @DPTR,A
CODE:a98d  74 f6                    MOV A,#0xf6
CODE:a98f  2f                       ADD A,R7
CODE:a990  f5 82                    MOV DPL,A
CODE:a992  e4                       CLR A
CODE:a993  34 04                    ADDC A,#0x4
CODE:a995  f5 83                    MOV DPH,A
CODE:a997  e4                       CLR A
CODE:a998  f0                       MOVX @DPTR,A
LAB_CODE_a999:
CODE:a999  90 08 f6                 MOV DPTR,#0x8f6   ; XREF: CODE:a967 CODE:a970 
CODE:a99c  e0                       MOVX A,@DPTR
CODE:a99d  04                       INC A
CODE:a99e  f0                       MOVX @DPTR,A
CODE:a99f  80 94                    SJMP 0xa935
LAB_CODE_a9a1:
CODE:a9a1  22                       RET   ; XREF: CODE:a93d 

; ===== FUNCTION FUN_CODE_a9a2 @ CODE:a9a2 =====
CODE:a9a2  e4                       CLR A   ; XREF: CODE:bfc3 
CODE:a9a3  ff                       MOV R7,A
LAB_CODE_a9a4:
CODE:a9a4  74 f6                    MOV A,#0xf6   ; XREF: CODE:a9f0 
CODE:a9a6  2f                       ADD A,R7
CODE:a9a7  f5 82                    MOV DPL,A
CODE:a9a9  e4                       CLR A
CODE:a9aa  34 01                    ADDC A,#0x1
CODE:a9ac  f5 83                    MOV DPH,A
CODE:a9ae  e4                       CLR A
CODE:a9af  f0                       MOVX @DPTR,A
CODE:a9b0  ef                       MOV A,R7
CODE:a9b1  90 a2 64                 MOV DPTR,#0xa264
CODE:a9b4  93                       MOVC A,@A+DPTR
CODE:a9b5  fd                       MOV R5,A
CODE:a9b6  75 f0 02                 MOV B,#0x2
CODE:a9b9  ef                       MOV A,R7
CODE:a9ba  a4                       MUL AB
CODE:a9bb  24 cb                    ADD A,#0xcb
CODE:a9bd  f5 82                    MOV DPL,A
CODE:a9bf  e5 f0                    MOV A,B
CODE:a9c1  34 03                    ADDC A,#0x3
CODE:a9c3  f5 83                    MOV DPH,A
CODE:a9c5  e4                       CLR A
CODE:a9c6  f0                       MOVX @DPTR,A
CODE:a9c7  a3                       INC DPTR
CODE:a9c8  ed                       MOV A,R5
CODE:a9c9  f0                       MOVX @DPTR,A
CODE:a9ca  74 31                    MOV A,#0x31
CODE:a9cc  2f                       ADD A,R7
CODE:a9cd  f5 82                    MOV DPL,A
CODE:a9cf  e4                       CLR A
CODE:a9d0  34 03                    ADDC A,#0x3
CODE:a9d2  f5 83                    MOV DPH,A
CODE:a9d4  e4                       CLR A
CODE:a9d5  f0                       MOVX @DPTR,A
CODE:a9d6  74 9c                    MOV A,#0x9c
CODE:a9d8  2f                       ADD A,R7
CODE:a9d9  f5 82                    MOV DPL,A
CODE:a9db  e4                       CLR A
CODE:a9dc  34 02                    ADDC A,#0x2
CODE:a9de  f5 83                    MOV DPH,A
CODE:a9e0  e4                       CLR A
CODE:a9e1  f0                       MOVX @DPTR,A
CODE:a9e2  74 8a                    MOV A,#0x8a
CODE:a9e4  2f                       ADD A,R7
CODE:a9e5  f5 82                    MOV DPL,A
CODE:a9e7  e4                       CLR A
CODE:a9e8  34 00                    ADDC A,#0x0
CODE:a9ea  f5 83                    MOV DPH,A
CODE:a9ec  e4                       CLR A
CODE:a9ed  f0                       MOVX @DPTR,A
CODE:a9ee  0f                       INC R7
CODE:a9ef  ef                       MOV A,R7
CODE:a9f0  b4 8a b1                 CJNE A,#0x8a,0xa9a4
CODE:a9f3  12 b7 9e                 LCALL 0xb79e
CODE:a9f6  90 03 31                 MOV DPTR,#0x331
CODE:a9f9  ef                       MOV A,R7
CODE:a9fa  f0                       MOVX @DPTR,A
CODE:a9fb  fd                       MOV R5,A
CODE:a9fc  7f ff                    MOV R7,#0xff
CODE:a9fe  12 9f 11                 LCALL 0x9f11
CODE:aa01  90 01 5c                 MOV DPTR,#0x15c
CODE:aa04  ef                       MOV A,R7
CODE:aa05  f0                       MOVX @DPTR,A
CODE:aa06  78 5c                    MOV R0,#0x5c
CODE:aa08  e6                       MOV A,@R0
CODE:aa09  ff                       MOV R7,A
CODE:aa0a  12 9d eb                 LCALL 0x9deb
CODE:aa0d  e4                       CLR A
CODE:aa0e  78 57                    MOV R0,#0x57
CODE:aa10  f6                       MOV @R0,A
CODE:aa11  78 5a                    MOV R0,#0x5a
CODE:aa13  f6                       MOV @R0,A
CODE:aa14  22                       RET

; ===== FUNCTION FUN_CODE_aa15 @ CODE:aa15 =====
CODE:aa15  90 08 f5                 MOV DPTR,#0x8f5   ; XREF: CODE:2e63 
CODE:aa18  ef                       MOV A,R7
CODE:aa19  f0                       MOVX @DPTR,A
CODE:aa1a  e4                       CLR A
CODE:aa1b  78 2d                    MOV R0,#0x2d
CODE:aa1d  f6                       MOV @R0,A
LAB_CODE_aa1e:
CODE:aa1e  78 2d                    MOV R0,#0x2d   ; XREF: CODE:aa83 
CODE:aa20  e6                       MOV A,@R0
CODE:aa21  ff                       MOV R7,A
CODE:aa22  c3                       CLR CY
CODE:aa23  94 06                    SUBB A,#0x6
CODE:aa25  50 5e                    JNC 0xaa85
CODE:aa27  ef                       MOV A,R7
CODE:aa28  75 f0 17                 MOV B,#0x17
CODE:aa2b  a4                       MUL AB
CODE:aa2c  ff                       MOV R7,A
CODE:aa2d  90 08 f5                 MOV DPTR,#0x8f5
CODE:aa30  e0                       MOVX A,@DPTR
CODE:aa31  2f                       ADD A,R7
CODE:aa32  08                       INC R0
CODE:aa33  f6                       MOV @R0,A
CODE:aa34  e6                       MOV A,@R0
CODE:aa35  ff                       MOV R7,A
CODE:aa36  24 f6                    ADD A,#0xf6
CODE:aa38  f5 82                    MOV DPL,A
CODE:aa3a  e4                       CLR A
CODE:aa3b  34 01                    ADDC A,#0x1
CODE:aa3d  f5 83                    MOV DPH,A
CODE:aa3f  e0                       MOVX A,@DPTR
CODE:aa40  d3                       SETB CY
CODE:aa41  94 00                    SUBB A,#0x0
CODE:aa43  40 14                    JC 0xaa59
CODE:aa45  78 5c                    MOV R0,#0x5c
CODE:aa47  e6                       MOV A,@R0
CODE:aa48  b4 07 05                 CJNE A,#0x7,0xaa50
CODE:aa4b  12 88 05                 LCALL 0x8805
CODE:aa4e  80 30                    SJMP 0xaa80
LAB_CODE_aa50:
CODE:aa50  78 2e                    MOV R0,#0x2e   ; XREF: CODE:aa48 
CODE:aa52  e6                       MOV A,@R0
CODE:aa53  ff                       MOV R7,A
CODE:aa54  12 9e 7f                 LCALL 0x9e7f
CODE:aa57  80 27                    SJMP 0xaa80
LAB_CODE_aa59:
CODE:aa59  78 2e                    MOV R0,#0x2e   ; XREF: CODE:aa43 
CODE:aa5b  e6                       MOV A,@R0
CODE:aa5c  ff                       MOV R7,A
CODE:aa5d  24 20                    ADD A,#0x20
CODE:aa5f  f5 82                    MOV DPL,A
CODE:aa61  e4                       CLR A
CODE:aa62  34 06                    ADDC A,#0x6
CODE:aa64  f5 83                    MOV DPH,A
CODE:aa66  e4                       CLR A
CODE:aa67  f0                       MOVX @DPTR,A
CODE:aa68  74 8b                    MOV A,#0x8b
CODE:aa6a  2f                       ADD A,R7
CODE:aa6b  f5 82                    MOV DPL,A
CODE:aa6d  e4                       CLR A
CODE:aa6e  34 05                    ADDC A,#0x5
CODE:aa70  f5 83                    MOV DPH,A
CODE:aa72  e4                       CLR A
CODE:aa73  f0                       MOVX @DPTR,A
CODE:aa74  74 f6                    MOV A,#0xf6
CODE:aa76  2f                       ADD A,R7
CODE:aa77  f5 82                    MOV DPL,A
CODE:aa79  e4                       CLR A
CODE:aa7a  34 04                    ADDC A,#0x4
CODE:aa7c  f5 83                    MOV DPH,A
CODE:aa7e  e4                       CLR A
CODE:aa7f  f0                       MOVX @DPTR,A
LAB_CODE_aa80:
CODE:aa80  78 2d                    MOV R0,#0x2d   ; XREF: CODE:aa4e CODE:aa57 
CODE:aa82  06                       INC @R0
CODE:aa83  80 99                    SJMP 0xaa1e
LAB_CODE_aa85:
CODE:aa85  22                       RET   ; XREF: CODE:aa25 

; ===== FUNCTION FUN_CODE_aa86 @ CODE:aa86 =====
CODE:aa86  e4                       CLR A   ; XREF: CODE:960e 
CODE:aa87  ff                       MOV R7,A
LAB_CODE_aa88:
CODE:aa88  74 f6                    MOV A,#0xf6   ; XREF: CODE:aad4 
CODE:aa8a  2f                       ADD A,R7
CODE:aa8b  f5 82                    MOV DPL,A
CODE:aa8d  e4                       CLR A
CODE:aa8e  34 01                    ADDC A,#0x1
CODE:aa90  f5 83                    MOV DPH,A
CODE:aa92  e4                       CLR A
CODE:aa93  f0                       MOVX @DPTR,A
CODE:aa94  ef                       MOV A,R7
CODE:aa95  90 8a bb                 MOV DPTR,#0x8abb
CODE:aa98  93                       MOVC A,@A+DPTR
CODE:aa99  fd                       MOV R5,A
CODE:aa9a  75 f0 02                 MOV B,#0x2
CODE:aa9d  ef                       MOV A,R7
CODE:aa9e  a4                       MUL AB
CODE:aa9f  24 cb                    ADD A,#0xcb
CODE:aaa1  f5 82                    MOV DPL,A
CODE:aaa3  e5 f0                    MOV A,B
CODE:aaa5  34 03                    ADDC A,#0x3
CODE:aaa7  f5 83                    MOV DPH,A
CODE:aaa9  e4                       CLR A
CODE:aaaa  f0                       MOVX @DPTR,A
CODE:aaab  a3                       INC DPTR
CODE:aaac  ed                       MOV A,R5
CODE:aaad  f0                       MOVX @DPTR,A
CODE:aaae  74 31                    MOV A,#0x31
CODE:aab0  2f                       ADD A,R7
CODE:aab1  f5 82                    MOV DPL,A
CODE:aab3  e4                       CLR A
CODE:aab4  34 03                    ADDC A,#0x3
CODE:aab6  f5 83                    MOV DPH,A
CODE:aab8  e4                       CLR A
CODE:aab9  f0                       MOVX @DPTR,A
CODE:aaba  74 8a                    MOV A,#0x8a
CODE:aabc  2f                       ADD A,R7
CODE:aabd  f5 82                    MOV DPL,A
CODE:aabf  e4                       CLR A
CODE:aac0  34 00                    ADDC A,#0x0
CODE:aac2  f5 83                    MOV DPH,A
CODE:aac4  e4                       CLR A
CODE:aac5  f0                       MOVX @DPTR,A
CODE:aac6  74 9c                    MOV A,#0x9c
CODE:aac8  2f                       ADD A,R7
CODE:aac9  f5 82                    MOV DPL,A
CODE:aacb  e4                       CLR A
CODE:aacc  34 02                    ADDC A,#0x2
CODE:aace  f5 83                    MOV DPH,A
CODE:aad0  e4                       CLR A
CODE:aad1  f0                       MOVX @DPTR,A
CODE:aad2  0f                       INC R7
CODE:aad3  ef                       MOV A,R7
CODE:aad4  b4 8a b1                 CJNE A,#0x8a,0xaa88
CODE:aad7  12 b7 9e                 LCALL 0xb79e
CODE:aada  90 03 a2                 MOV DPTR,#0x3a2
CODE:aadd  ef                       MOV A,R7
CODE:aade  f0                       MOVX @DPTR,A
CODE:aadf  fd                       MOV R5,A
CODE:aae0  7f ff                    MOV R7,#0xff
CODE:aae2  12 9f 11                 LCALL 0x9f11
CODE:aae5  90 01 cd                 MOV DPTR,#0x1cd
CODE:aae8  ef                       MOV A,R7
CODE:aae9  f0                       MOVX @DPTR,A
CODE:aaea  90 09 86                 MOV DPTR,#0x986
CODE:aaed  74 01                    MOV A,#0x1
CODE:aaef  f0                       MOVX @DPTR,A
CODE:aaf0  e4                       CLR A
CODE:aaf1  a3                       INC DPTR
CODE:aaf2  f0                       MOVX @DPTR,A
CODE:aaf3  78 5a                    MOV R0,#0x5a
CODE:aaf5  f6                       MOV @R0,A
CODE:aaf6  22                       RET

; ===== FUNCTION FUN_CODE_aaf7 @ CODE:aaf7 =====
CODE:aaf7  78 1b                    MOV R0,#0x1b   ; XREF: CODE:2e86 
CODE:aaf9  e6                       MOV A,@R0
CODE:aafa  24 02                    ADD A,#0x2
CODE:aafc  ff                       MOV R7,A
CODE:aafd  e4                       CLR A
CODE:aafe  33                       RLC A
CODE:aaff  fe                       MOV R6,A
CODE:ab00  78 57                    MOV R0,#0x57
CODE:ab02  e6                       MOV A,@R0
CODE:ab03  d3                       SETB CY
CODE:ab04  9f                       SUBB A,R7
CODE:ab05  ee                       MOV A,R6
CODE:ab06  64 80                    XRL A,#0x80
CODE:ab08  f8                       MOV R0,A
CODE:ab09  74 80                    MOV A,#0x80
CODE:ab0b  98                       SUBB A,R0
CODE:ab0c  40 58                    JC 0xab66
CODE:ab0e  e4                       CLR A
CODE:ab0f  78 57                    MOV R0,#0x57
CODE:ab11  f6                       MOV @R0,A
CODE:ab12  12 ac a8                 LCALL 0xaca8
CODE:ab15  12 bb dd                 LCALL 0xbbdd
CODE:ab18  e4                       CLR A
CODE:ab19  ff                       MOV R7,A
LAB_CODE_ab1a:
CODE:ab1a  75 f0 02                 MOV B,#0x2   ; XREF: CODE:ab60 
CODE:ab1d  ef                       MOV A,R7
CODE:ab1e  a4                       MUL AB
CODE:ab1f  24 cb                    ADD A,#0xcb
CODE:ab21  f5 82                    MOV DPL,A
CODE:ab23  e5 f0                    MOV A,B
CODE:ab25  34 03                    ADDC A,#0x3
CODE:ab27  f5 83                    MOV DPH,A
CODE:ab29  e4                       CLR A
CODE:ab2a  75 f0 03                 MOV B,#0x3
CODE:ab2d  12 80 f2                 LCALL 0x80f2
CODE:ab30  75 f0 02                 MOV B,#0x2
CODE:ab33  ef                       MOV A,R7
CODE:ab34  a4                       MUL AB
CODE:ab35  24 cb                    ADD A,#0xcb
CODE:ab37  f5 82                    MOV DPL,A
CODE:ab39  e5 f0                    MOV A,B
CODE:ab3b  34 03                    ADDC A,#0x3
CODE:ab3d  f5 83                    MOV DPH,A
CODE:ab3f  e0                       MOVX A,@DPTR
CODE:ab40  fc                       MOV R4,A
CODE:ab41  a3                       INC DPTR
CODE:ab42  e0                       MOVX A,@DPTR
CODE:ab43  d3                       SETB CY
CODE:ab44  94 ba                    SUBB A,#0xba
CODE:ab46  ec                       MOV A,R4
CODE:ab47  94 03                    SUBB A,#0x3
CODE:ab49  40 13                    JC 0xab5e
CODE:ab4b  75 f0 02                 MOV B,#0x2
CODE:ab4e  ef                       MOV A,R7
CODE:ab4f  a4                       MUL AB
CODE:ab50  24 cb                    ADD A,#0xcb
CODE:ab52  f5 82                    MOV DPL,A
CODE:ab54  e5 f0                    MOV A,B
CODE:ab56  34 03                    ADDC A,#0x3
CODE:ab58  f5 83                    MOV DPH,A
CODE:ab5a  e4                       CLR A
CODE:ab5b  f0                       MOVX @DPTR,A
CODE:ab5c  a3                       INC DPTR
CODE:ab5d  f0                       MOVX @DPTR,A
LAB_CODE_ab5e:
CODE:ab5e  0f                       INC R7   ; XREF: CODE:ab49 
CODE:ab5f  ef                       MOV A,R7
CODE:ab60  b4 8a b7                 CJNE A,#0x8a,0xab1a
CODE:ab63  12 ad 0a                 LCALL 0xad0a
LAB_CODE_ab66:
CODE:ab66  22                       RET   ; XREF: CODE:ab0c 

; ===== FUNCTION FUN_CODE_ab67 @ CODE:ab67 =====
CODE:ab67  e4                       CLR A   ; XREF: CODE:962a 
CODE:ab68  ff                       MOV R7,A
LAB_CODE_ab69:
CODE:ab69  74 f6                    MOV A,#0xf6   ; XREF: CODE:abb5 
CODE:ab6b  2f                       ADD A,R7
CODE:ab6c  f5 82                    MOV DPL,A
CODE:ab6e  e4                       CLR A
CODE:ab6f  34 01                    ADDC A,#0x1
CODE:ab71  f5 83                    MOV DPH,A
CODE:ab73  e4                       CLR A
CODE:ab74  f0                       MOVX @DPTR,A
CODE:ab75  ef                       MOV A,R7
CODE:ab76  90 8a 31                 MOV DPTR,#0x8a31
CODE:ab79  93                       MOVC A,@A+DPTR
CODE:ab7a  fd                       MOV R5,A
CODE:ab7b  75 f0 02                 MOV B,#0x2
CODE:ab7e  ef                       MOV A,R7
CODE:ab7f  a4                       MUL AB
CODE:ab80  24 cb                    ADD A,#0xcb
CODE:ab82  f5 82                    MOV DPL,A
CODE:ab84  e5 f0                    MOV A,B
CODE:ab86  34 03                    ADDC A,#0x3
CODE:ab88  f5 83                    MOV DPH,A
CODE:ab8a  e4                       CLR A
CODE:ab8b  f0                       MOVX @DPTR,A
CODE:ab8c  a3                       INC DPTR
CODE:ab8d  ed                       MOV A,R5
CODE:ab8e  f0                       MOVX @DPTR,A
CODE:ab8f  74 31                    MOV A,#0x31
CODE:ab91  2f                       ADD A,R7
CODE:ab92  f5 82                    MOV DPL,A
CODE:ab94  e4                       CLR A
CODE:ab95  34 03                    ADDC A,#0x3
CODE:ab97  f5 83                    MOV DPH,A
CODE:ab99  e4                       CLR A
CODE:ab9a  f0                       MOVX @DPTR,A
CODE:ab9b  74 8a                    MOV A,#0x8a
CODE:ab9d  2f                       ADD A,R7
CODE:ab9e  f5 82                    MOV DPL,A
CODE:aba0  e4                       CLR A
CODE:aba1  34 00                    ADDC A,#0x0
CODE:aba3  f5 83                    MOV DPH,A
CODE:aba5  e4                       CLR A
CODE:aba6  f0                       MOVX @DPTR,A
CODE:aba7  74 9c                    MOV A,#0x9c
CODE:aba9  2f                       ADD A,R7
CODE:abaa  f5 82                    MOV DPL,A
CODE:abac  e4                       CLR A
CODE:abad  34 02                    ADDC A,#0x2
CODE:abaf  f5 83                    MOV DPH,A
CODE:abb1  e4                       CLR A
CODE:abb2  f0                       MOVX @DPTR,A
CODE:abb3  0f                       INC R7
CODE:abb4  ef                       MOV A,R7
CODE:abb5  b4 8a b1                 CJNE A,#0x8a,0xab69
CODE:abb8  12 b7 9e                 LCALL 0xb79e
CODE:abbb  90 03 31                 MOV DPTR,#0x331
CODE:abbe  ef                       MOV A,R7
CODE:abbf  f0                       MOVX @DPTR,A
CODE:abc0  fd                       MOV R5,A
CODE:abc1  7f ff                    MOV R7,#0xff
CODE:abc3  12 9f 11                 LCALL 0x9f11
CODE:abc6  90 01 5c                 MOV DPTR,#0x15c
CODE:abc9  ef                       MOV A,R7
CODE:abca  f0                       MOVX @DPTR,A
CODE:abcb  e4                       CLR A
CODE:abcc  90 09 86                 MOV DPTR,#0x986
CODE:abcf  f0                       MOVX @DPTR,A
CODE:abd0  a3                       INC DPTR
CODE:abd1  f0                       MOVX @DPTR,A
CODE:abd2  78 5a                    MOV R0,#0x5a
CODE:abd4  f6                       MOV @R0,A
CODE:abd5  22                       RET

; ===== FUNCTION FUN_CODE_ac41 @ CODE:ac41 =====
CODE:ac41  78 69                    MOV R0,#0x69   ; XREF: CODE:213b CODE:217e CODE:95d1 CODE:3e0f CODE:c197 
CODE:ac43  e6                       MOV A,@R0
CODE:ac44  b4 01 02                 CJNE A,#0x1,0xac49
CODE:ac47  80 11                    SJMP 0xac5a
LAB_CODE_ac49:
CODE:ac49  78 1e                    MOV R0,#0x1e   ; XREF: CODE:ac44 
CODE:ac4b  e6                       MOV A,@R0
CODE:ac4c  ff                       MOV R7,A
CODE:ac4d  b4 04 17                 CJNE A,#0x4,0xac67
CODE:ac50  20 2b 07                 JB 0x2b,0xac5a
CODE:ac53  d2 2a                    SETB 0x2a
CODE:ac55  75 17 09                 MOV 0x17,#0x9
CODE:ac58  d2 26                    SETB 0x26
LAB_CODE_ac5a:
CODE:ac5a  90 ff 95                 MOV DPTR,#0xff95   ; XREF: CODE:ac47 CODE:ac50 
CODE:ac5d  74 18                    MOV A,#0x18
CODE:ac5f  f0                       MOVX @DPTR,A
CODE:ac60  90 ff b5                 MOV DPTR,#0xffb5
CODE:ac63  74 01                    MOV A,#0x1
CODE:ac65  f0                       MOVX @DPTR,A
CODE:ac66  22                       RET
LAB_CODE_ac67:
CODE:ac67  ef                       MOV A,R7   ; XREF: CODE:ac4d 
CODE:ac68  b4 03 0d                 CJNE A,#0x3,0xac78
CODE:ac6b  90 ff 95                 MOV DPTR,#0xff95
CODE:ac6e  74 18                    MOV A,#0x18
CODE:ac70  f0                       MOVX @DPTR,A
CODE:ac71  90 ff b5                 MOV DPTR,#0xffb5
CODE:ac74  74 80                    MOV A,#0x80
CODE:ac76  f0                       MOVX @DPTR,A
CODE:ac77  22                       RET
LAB_CODE_ac78:
CODE:ac78  ef                       MOV A,R7   ; XREF: CODE:ac68 
CODE:ac79  b4 02 0d                 CJNE A,#0x2,0xac89
CODE:ac7c  90 ff 95                 MOV DPTR,#0xff95
CODE:ac7f  74 18                    MOV A,#0x18
CODE:ac81  f0                       MOVX @DPTR,A
CODE:ac82  90 ff b5                 MOV DPTR,#0xffb5
CODE:ac85  74 b4                    MOV A,#0xb4
CODE:ac87  f0                       MOVX @DPTR,A
CODE:ac88  22                       RET
LAB_CODE_ac89:
CODE:ac89  ef                       MOV A,R7   ; XREF: CODE:ac79 
CODE:ac8a  b4 01 0d                 CJNE A,#0x1,0xac9a
CODE:ac8d  90 ff 95                 MOV DPTR,#0xff95
CODE:ac90  74 18                    MOV A,#0x18
CODE:ac92  f0                       MOVX @DPTR,A
CODE:ac93  90 ff b5                 MOV DPTR,#0xffb5
CODE:ac96  74 e6                    MOV A,#0xe6
CODE:ac98  f0                       MOVX @DPTR,A
CODE:ac99  22                       RET
LAB_CODE_ac9a:
CODE:ac9a  ef                       MOV A,R7   ; XREF: CODE:ac8a 
CODE:ac9b  70 0a                    JNZ 0xaca7
CODE:ac9d  d2 2a                    SETB 0x2a
CODE:ac9f  75 17 09                 MOV 0x17,#0x9
CODE:aca2  d2 26                    SETB 0x26
CODE:aca4  12 bb dd                 LCALL 0xbbdd
LAB_CODE_aca7:
CODE:aca7  22                       RET   ; XREF: CODE:ac9b 

; ===== FUNCTION FUN_CODE_aca8 @ CODE:aca8 =====
CODE:aca8  90 ff 80                 MOV DPTR,#0xff80   ; XREF: CODE:7a51 CODE:85cb CODE:9c36 CODE:9fb5 CODE:a043 CODE:a15a CODE:ab12 
CODE:acab  e0                       MOVX A,@DPTR
CODE:acac  78 42                    MOV R0,#0x42
CODE:acae  f6                       MOV @R0,A
CODE:acaf  a3                       INC DPTR
CODE:acb0  e0                       MOVX A,@DPTR
CODE:acb1  08                       INC R0
CODE:acb2  f6                       MOV @R0,A
CODE:acb3  a3                       INC DPTR
CODE:acb4  e0                       MOVX A,@DPTR
CODE:acb5  08                       INC R0
CODE:acb6  f6                       MOV @R0,A
CODE:acb7  a3                       INC DPTR
CODE:acb8  e0                       MOVX A,@DPTR
CODE:acb9  08                       INC R0
CODE:acba  f6                       MOV @R0,A
CODE:acbb  a3                       INC DPTR
CODE:acbc  e0                       MOVX A,@DPTR
CODE:acbd  08                       INC R0
CODE:acbe  f6                       MOV @R0,A
CODE:acbf  a3                       INC DPTR
CODE:acc0  e0                       MOVX A,@DPTR
CODE:acc1  08                       INC R0
CODE:acc2  f6                       MOV @R0,A
CODE:acc3  a3                       INC DPTR
CODE:acc4  e0                       MOVX A,@DPTR
CODE:acc5  08                       INC R0
CODE:acc6  f6                       MOV @R0,A
CODE:acc7  a3                       INC DPTR
CODE:acc8  e0                       MOVX A,@DPTR
CODE:acc9  08                       INC R0
CODE:acca  f6                       MOV @R0,A
CODE:accb  a3                       INC DPTR
CODE:accc  e0                       MOVX A,@DPTR
CODE:accd  08                       INC R0
CODE:acce  f6                       MOV @R0,A
CODE:accf  a3                       INC DPTR
CODE:acd0  e0                       MOVX A,@DPTR
CODE:acd1  08                       INC R0
CODE:acd2  f6                       MOV @R0,A
CODE:acd3  a3                       INC DPTR
CODE:acd4  e0                       MOVX A,@DPTR
CODE:acd5  08                       INC R0
CODE:acd6  f6                       MOV @R0,A
CODE:acd7  a3                       INC DPTR
CODE:acd8  e0                       MOVX A,@DPTR
CODE:acd9  08                       INC R0
CODE:acda  f6                       MOV @R0,A
CODE:acdb  a3                       INC DPTR
CODE:acdc  e0                       MOVX A,@DPTR
CODE:acdd  08                       INC R0
CODE:acde  f6                       MOV @R0,A
CODE:acdf  a3                       INC DPTR
CODE:ace0  e0                       MOVX A,@DPTR
CODE:ace1  08                       INC R0
CODE:ace2  f6                       MOV @R0,A
CODE:ace3  a3                       INC DPTR
CODE:ace4  e0                       MOVX A,@DPTR
CODE:ace5  08                       INC R0
CODE:ace6  f6                       MOV @R0,A
CODE:ace7  a3                       INC DPTR
CODE:ace8  e0                       MOVX A,@DPTR
CODE:ace9  08                       INC R0
CODE:acea  f6                       MOV @R0,A
CODE:aceb  a3                       INC DPTR
CODE:acec  e0                       MOVX A,@DPTR
CODE:aced  08                       INC R0
CODE:acee  f6                       MOV @R0,A
CODE:acef  a3                       INC DPTR
CODE:acf0  e0                       MOVX A,@DPTR
CODE:acf1  08                       INC R0
CODE:acf2  f6                       MOV @R0,A
CODE:acf3  90 08 a9                 MOV DPTR,#0x8a9
CODE:acf6  e5 c0                    MOV A,0xc0
CODE:acf8  f0                       MOVX @DPTR,A
CODE:acf9  a3                       INC DPTR
CODE:acfa  e5 88                    MOV A,0x88
CODE:acfc  f0                       MOVX @DPTR,A
CODE:acfd  a3                       INC DPTR
CODE:acfe  e5 b0                    MOV A,0xb0
CODE:ad00  f0                       MOVX @DPTR,A
CODE:ad01  a3                       INC DPTR
CODE:ad02  e5 f8                    MOV A,0xf8
CODE:ad04  f0                       MOVX @DPTR,A
CODE:ad05  a3                       INC DPTR
CODE:ad06  e5 80                    MOV A,0x80
CODE:ad08  f0                       MOVX @DPTR,A
CODE:ad09  22                       RET

; ===== FUNCTION FUN_CODE_ad0a @ CODE:ad0a =====
CODE:ad0a  78 42                    MOV R0,#0x42   ; XREF: CODE:7aaf CODE:8629 CODE:9c9a CODE:a013 CODE:a0a1 CODE:a1bb CODE:ab63 
CODE:ad0c  e6                       MOV A,@R0
CODE:ad0d  90 ff 80                 MOV DPTR,#0xff80
CODE:ad10  f0                       MOVX @DPTR,A
CODE:ad11  08                       INC R0
CODE:ad12  e6                       MOV A,@R0
CODE:ad13  a3                       INC DPTR
CODE:ad14  f0                       MOVX @DPTR,A
CODE:ad15  08                       INC R0
CODE:ad16  e6                       MOV A,@R0
CODE:ad17  a3                       INC DPTR
CODE:ad18  f0                       MOVX @DPTR,A
CODE:ad19  08                       INC R0
CODE:ad1a  e6                       MOV A,@R0
CODE:ad1b  a3                       INC DPTR
CODE:ad1c  f0                       MOVX @DPTR,A
CODE:ad1d  08                       INC R0
CODE:ad1e  e6                       MOV A,@R0
CODE:ad1f  a3                       INC DPTR
CODE:ad20  f0                       MOVX @DPTR,A
CODE:ad21  08                       INC R0
CODE:ad22  e6                       MOV A,@R0
CODE:ad23  a3                       INC DPTR
CODE:ad24  f0                       MOVX @DPTR,A
CODE:ad25  08                       INC R0
CODE:ad26  e6                       MOV A,@R0
CODE:ad27  a3                       INC DPTR
CODE:ad28  f0                       MOVX @DPTR,A
CODE:ad29  08                       INC R0
CODE:ad2a  e6                       MOV A,@R0
CODE:ad2b  a3                       INC DPTR
CODE:ad2c  f0                       MOVX @DPTR,A
CODE:ad2d  08                       INC R0
CODE:ad2e  e6                       MOV A,@R0
CODE:ad2f  a3                       INC DPTR
CODE:ad30  f0                       MOVX @DPTR,A
CODE:ad31  08                       INC R0
CODE:ad32  e6                       MOV A,@R0
CODE:ad33  a3                       INC DPTR
CODE:ad34  f0                       MOVX @DPTR,A
CODE:ad35  08                       INC R0
CODE:ad36  e6                       MOV A,@R0
CODE:ad37  a3                       INC DPTR
CODE:ad38  f0                       MOVX @DPTR,A
CODE:ad39  08                       INC R0
CODE:ad3a  e6                       MOV A,@R0
CODE:ad3b  a3                       INC DPTR
CODE:ad3c  f0                       MOVX @DPTR,A
CODE:ad3d  08                       INC R0
CODE:ad3e  e6                       MOV A,@R0
CODE:ad3f  a3                       INC DPTR
CODE:ad40  f0                       MOVX @DPTR,A
CODE:ad41  08                       INC R0
CODE:ad42  e6                       MOV A,@R0
CODE:ad43  a3                       INC DPTR
CODE:ad44  f0                       MOVX @DPTR,A
CODE:ad45  08                       INC R0
CODE:ad46  e6                       MOV A,@R0
CODE:ad47  a3                       INC DPTR
CODE:ad48  f0                       MOVX @DPTR,A
CODE:ad49  08                       INC R0
CODE:ad4a  e6                       MOV A,@R0
CODE:ad4b  a3                       INC DPTR
CODE:ad4c  f0                       MOVX @DPTR,A
CODE:ad4d  08                       INC R0
CODE:ad4e  e6                       MOV A,@R0
CODE:ad4f  a3                       INC DPTR
CODE:ad50  f0                       MOVX @DPTR,A
CODE:ad51  08                       INC R0
CODE:ad52  e6                       MOV A,@R0
CODE:ad53  a3                       INC DPTR
CODE:ad54  f0                       MOVX @DPTR,A
CODE:ad55  90 08 a9                 MOV DPTR,#0x8a9
CODE:ad58  e0                       MOVX A,@DPTR
CODE:ad59  f5 c0                    MOV 0xc0,A
CODE:ad5b  a3                       INC DPTR
CODE:ad5c  e0                       MOVX A,@DPTR
CODE:ad5d  f5 88                    MOV 0x88,A
CODE:ad5f  a3                       INC DPTR
CODE:ad60  e0                       MOVX A,@DPTR
CODE:ad61  f5 b0                    MOV 0xb0,A
CODE:ad63  a3                       INC DPTR
CODE:ad64  e0                       MOVX A,@DPTR
CODE:ad65  f5 f8                    MOV 0xf8,A
CODE:ad67  a3                       INC DPTR
CODE:ad68  e0                       MOVX A,@DPTR
CODE:ad69  f5 80                    MOV 0x80,A
CODE:ad6b  22                       RET

; ===== FUNCTION FUN_CODE_ae2a @ CODE:ae2a =====
CODE:ae2a  78 1b                    MOV R0,#0x1b   ; XREF: CODE:3b47 
CODE:ae2c  e6                       MOV A,@R0
CODE:ae2d  24 02                    ADD A,#0x2
CODE:ae2f  ff                       MOV R7,A
CODE:ae30  e4                       CLR A
CODE:ae31  33                       RLC A
CODE:ae32  fe                       MOV R6,A
CODE:ae33  78 57                    MOV R0,#0x57
CODE:ae35  e6                       MOV A,@R0
CODE:ae36  d3                       SETB CY
CODE:ae37  9f                       SUBB A,R7
CODE:ae38  ee                       MOV A,R6
CODE:ae39  64 80                    XRL A,#0x80
CODE:ae3b  f8                       MOV R0,A
CODE:ae3c  74 80                    MOV A,#0x80
CODE:ae3e  98                       SUBB A,R0
CODE:ae3f  40 43                    JC 0xae84
CODE:ae41  e4                       CLR A
CODE:ae42  78 57                    MOV R0,#0x57
CODE:ae44  f6                       MOV @R0,A
CODE:ae45  90 09 84                 MOV DPTR,#0x984
CODE:ae48  e0                       MOVX A,@DPTR
CODE:ae49  14                       DEC A
CODE:ae4a  60 1e                    JZ 0xae6a
CODE:ae4c  04                       INC A
CODE:ae4d  70 35                    JNZ 0xae84
CODE:ae4f  12 78 97                 LCALL 0x7897
CODE:ae52  d3                       SETB CY
CODE:ae53  90 04 ae                 MOV DPTR,#0x4ae
CODE:ae56  e0                       MOVX A,@DPTR
CODE:ae57  94 c8                    SUBB A,#0xc8
CODE:ae59  90 04 ad                 MOV DPTR,#0x4ad
CODE:ae5c  e0                       MOVX A,@DPTR
CODE:ae5d  94 00                    SUBB A,#0x0
CODE:ae5f  40 23                    JC 0xae84
CODE:ae61  90 09 84                 MOV DPTR,#0x984
CODE:ae64  74 01                    MOV A,#0x1
CODE:ae66  f0                       MOVX @DPTR,A
CODE:ae67  02 93 65                 LJMP 0x9365
LAB_CODE_ae6a:
CODE:ae6a  12 78 97                 LCALL 0x7897   ; XREF: CODE:ae4a 
CODE:ae6d  d3                       SETB CY
CODE:ae6e  90 04 8a                 MOV DPTR,#0x48a
CODE:ae71  e0                       MOVX A,@DPTR
CODE:ae72  94 c8                    SUBB A,#0xc8
CODE:ae74  90 04 89                 MOV DPTR,#0x489
CODE:ae77  e0                       MOVX A,@DPTR
CODE:ae78  94 00                    SUBB A,#0x0
CODE:ae7a  40 08                    JC 0xae84
CODE:ae7c  e4                       CLR A
CODE:ae7d  90 09 84                 MOV DPTR,#0x984
CODE:ae80  f0                       MOVX @DPTR,A
CODE:ae81  12 8f f5                 LCALL 0x8ff5
LAB_CODE_ae84:
CODE:ae84  22                       RET   ; XREF: CODE:ae3f CODE:ae4d CODE:ae5f CODE:ae7a 

; ===== FUNCTION FUN_CODE_ae85 @ CODE:ae85 =====
CODE:ae85  75 e1 fc                 MOV 0xe1,#0xfc   ; XREF: CODE:c098 
CODE:ae88  75 e2 3f                 MOV 0xe2,#0x3f
CODE:ae8b  75 e3 3f                 MOV 0xe3,#0x3f
CODE:ae8e  75 e4 3f                 MOV 0xe4,#0x3f
CODE:ae91  75 e5 ff                 MOV 0xe5,#0xff
CODE:ae94  75 e6 a7                 MOV 0xe6,#0xa7
CODE:ae97  75 e7 ff                 MOV 0xe7,#0xff
CODE:ae9a  75 d1 f0                 MOV 0xd1,#0xf0
CODE:ae9d  75 e9 e0                 MOV 0xe9,#0xe0
CODE:aea0  e4                       CLR A
CODE:aea1  f5 ea                    MOV 0xea,A
CODE:aea3  f5 eb                    MOV 0xeb,A
CODE:aea5  f5 ec                    MOV 0xec,A
CODE:aea7  75 ed 6d                 MOV 0xed,#0x6d
CODE:aeaa  75 ee 9f                 MOV 0xee,#0x9f
CODE:aead  75 ef ff                 MOV 0xef,#0xff
CODE:aeb0  75 d9 ef                 MOV 0xd9,#0xef
CODE:aeb3  75 80 01                 MOV 0x80,#0x1
CODE:aeb6  f5 90                    MOV 0x90,A
CODE:aeb8  f5 98                    MOV 0x98,A
CODE:aeba  f5 a0                    MOV 0xa0,A
CODE:aebc  75 b0 91                 MOV 0xb0,#0x91
CODE:aebf  75 88 01                 MOV 0x88,#0x1
CODE:aec2  f5 c0                    MOV 0xc0,A
CODE:aec4  75 f8 e0                 MOV 0xf8,#0xe0
CODE:aec7  c2 b7                    CLR 0xb7
CODE:aec9  75 8c 05                 MOV 0x8c,#0x5
CODE:aecc  f5 a5                    MOV 0xa5,A
CODE:aece  75 8c 45                 MOV 0x8c,#0x45
CODE:aed1  f5 a6                    MOV 0xa6,A
CODE:aed3  75 8c 85                 MOV 0x8c,#0x85
CODE:aed6  f5 bb                    MOV 0xbb,A
CODE:aed8  75 8c c5                 MOV 0x8c,#0xc5
CODE:aedb  f5 8d                    MOV 0x8d,A
CODE:aedd  22                       RET

; ===== FUNCTION FUN_CODE_aede @ CODE:aede =====
CODE:aede  ef                       MOV A,R7   ; XREF: CODE:2db3 CODE:2637 
CODE:aedf  75 f0 17                 MOV B,#0x17
CODE:aee2  a4                       MUL AB
CODE:aee3  24 00                    ADD A,#0x0
CODE:aee5  f5 82                    MOV DPL,A
CODE:aee7  e4                       CLR A
CODE:aee8  34 00                    ADDC A,#0x0
CODE:aeea  f5 83                    MOV DPH,A
CODE:aeec  e5 82                    MOV A,DPL
CODE:aeee  2d                       ADD A,R5
CODE:aeef  f5 82                    MOV DPL,A
CODE:aef1  e4                       CLR A
CODE:aef2  35 83                    ADDC A,DPH
CODE:aef4  f5 83                    MOV DPH,A
CODE:aef6  74 01                    MOV A,#0x1
CODE:aef8  f0                       MOVX @DPTR,A
CODE:aef9  ae 05                    MOV R6,0x05
CODE:aefb  90 02 95                 MOV DPTR,#0x295
CODE:aefe  e0                       MOVX A,@DPTR
CODE:aeff  fd                       MOV R5,A
CODE:af00  24 8b                    ADD A,#0x8b
CODE:af02  f5 82                    MOV DPL,A
CODE:af04  e4                       CLR A
CODE:af05  34 02                    ADDC A,#0x2
CODE:af07  f5 83                    MOV DPH,A
CODE:af09  ee                       MOV A,R6
CODE:af0a  f0                       MOVX @DPTR,A
CODE:af0b  74 90                    MOV A,#0x90
CODE:af0d  2d                       ADD A,R5
CODE:af0e  f5 82                    MOV DPL,A
CODE:af10  e4                       CLR A
CODE:af11  34 02                    ADDC A,#0x2
CODE:af13  f5 83                    MOV DPH,A
CODE:af15  ef                       MOV A,R7
CODE:af16  f0                       MOVX @DPTR,A
CODE:af17  74 c6                    MOV A,#0xc6
CODE:af19  2d                       ADD A,R5
CODE:af1a  f5 82                    MOV DPL,A
CODE:af1c  e4                       CLR A
CODE:af1d  34 03                    ADDC A,#0x3
CODE:af1f  f5 83                    MOV DPH,A
CODE:af21  74 01                    MOV A,#0x1
CODE:af23  f0                       MOVX @DPTR,A
CODE:af24  90 02 95                 MOV DPTR,#0x295
CODE:af27  e0                       MOVX A,@DPTR
CODE:af28  04                       INC A
CODE:af29  f0                       MOVX @DPTR,A
CODE:af2a  e0                       MOVX A,@DPTR
CODE:af2b  c3                       CLR CY
CODE:af2c  94 05                    SUBB A,#0x5
CODE:af2e  40 02                    JC 0xaf32
CODE:af30  e4                       CLR A
CODE:af31  f0                       MOVX @DPTR,A
LAB_CODE_af32:
CODE:af32  22                       RET   ; XREF: CODE:af2e 

; ===== FUNCTION FUN_CODE_af33 @ CODE:af33 =====
CODE:af33  e4                       CLR A   ; XREF: CODE:7fd1 
CODE:af34  ff                       MOV R7,A
LAB_CODE_af35:
CODE:af35  74 f6                    MOV A,#0xf6   ; XREF: CODE:af75 
CODE:af37  2f                       ADD A,R7
CODE:af38  f5 82                    MOV DPL,A
CODE:af3a  e4                       CLR A
CODE:af3b  34 01                    ADDC A,#0x1
CODE:af3d  f5 83                    MOV DPH,A
CODE:af3f  e4                       CLR A
CODE:af40  f0                       MOVX @DPTR,A
CODE:af41  ef                       MOV A,R7
CODE:af42  90 7c 6f                 MOV DPTR,#0x7c6f
CODE:af45  93                       MOVC A,@A+DPTR
CODE:af46  fd                       MOV R5,A
CODE:af47  75 f0 02                 MOV B,#0x2
CODE:af4a  ef                       MOV A,R7
CODE:af4b  a4                       MUL AB
CODE:af4c  24 cb                    ADD A,#0xcb
CODE:af4e  f5 82                    MOV DPL,A
CODE:af50  e5 f0                    MOV A,B
CODE:af52  34 03                    ADDC A,#0x3
CODE:af54  f5 83                    MOV DPH,A
CODE:af56  e4                       CLR A
CODE:af57  f0                       MOVX @DPTR,A
CODE:af58  a3                       INC DPTR
CODE:af59  ed                       MOV A,R5
CODE:af5a  f0                       MOVX @DPTR,A
CODE:af5b  74 8a                    MOV A,#0x8a
CODE:af5d  2f                       ADD A,R7
CODE:af5e  f5 82                    MOV DPL,A
CODE:af60  e4                       CLR A
CODE:af61  34 00                    ADDC A,#0x0
CODE:af63  f5 83                    MOV DPH,A
CODE:af65  e4                       CLR A
CODE:af66  f0                       MOVX @DPTR,A
CODE:af67  74 9c                    MOV A,#0x9c
CODE:af69  2f                       ADD A,R7
CODE:af6a  f5 82                    MOV DPL,A
CODE:af6c  e4                       CLR A
CODE:af6d  34 02                    ADDC A,#0x2
CODE:af6f  f5 83                    MOV DPH,A
CODE:af71  e4                       CLR A
CODE:af72  f0                       MOVX @DPTR,A
CODE:af73  0f                       INC R7
CODE:af74  ef                       MOV A,R7
CODE:af75  b4 8a bd                 CJNE A,#0x8a,0xaf35
CODE:af78  90 09 88                 MOV DPTR,#0x988
CODE:af7b  74 01                    MOV A,#0x1
CODE:af7d  f0                       MOVX @DPTR,A
CODE:af7e  e4                       CLR A
CODE:af7f  a3                       INC DPTR
CODE:af80  f0                       MOVX @DPTR,A
CODE:af81  78 5a                    MOV R0,#0x5a
CODE:af83  f6                       MOV @R0,A
CODE:af84  78 6a                    MOV R0,#0x6a
CODE:af86  f6                       MOV @R0,A
CODE:af87  22                       RET

; ===== FUNCTION FUN_CODE_afdc @ CODE:afdc =====
CODE:afdc  12 c1 b4                 LCALL 0xc1b4   ; XREF: CODE:451b CODE:48f4 
CODE:afdf  12 00 46                 LCALL 0x0046
CODE:afe2  7f 60                    MOV R7,#0x60
CODE:afe4  12 bf 01                 LCALL 0xbf01
CODE:afe7  12 c1 c5                 LCALL 0xc1c5
CODE:afea  7f b8                    MOV R7,#0xb8
CODE:afec  7e 0b                    MOV R6,#0xb
CODE:afee  12 bd 5a                 LCALL 0xbd5a
CODE:aff1  7f b8                    MOV R7,#0xb8
CODE:aff3  7e 0b                    MOV R6,#0xb
CODE:aff5  12 bd 5a                 LCALL 0xbd5a
LAB_CODE_aff8:
CODE:aff8  12 c1 9a                 LCALL 0xc19a   ; XREF: CODE:affc 
CODE:affb  ef                       MOV A,R7
CODE:affc  20 e0 f9                 JB 0xe0,0xaff8
CODE:afff  22                       RET

; ===== FUNCTION FUN_CODE_b19e @ CODE:b19e =====
CODE:b19e  f0                       MOVX @DPTR,A   ; XREF: CODE:a4bf CODE:a4e1 
CODE:b19f  90 09 28                 MOV DPTR,#0x928
CODE:b1a2  e0                       MOVX A,@DPTR
CODE:b1a3  fe                       MOV R6,A
CODE:b1a4  a3                       INC DPTR
CODE:b1a5  e0                       MOVX A,@DPTR
CODE:b1a6  ff                       MOV R7,A
CODE:b1a7  7d 08                    MOV R5,#0x8

; ===== FUNCTION FUN_CODE_b1a9 @ CODE:b1a9 =====
CODE:b1a9  90 09 05                 MOV DPTR,#0x905   ; XREF: CODE:a504 
CODE:b1ac  ee                       MOV A,R6
CODE:b1ad  f0                       MOVX @DPTR,A
CODE:b1ae  a3                       INC DPTR
CODE:b1af  ef                       MOV A,R7
CODE:b1b0  f0                       MOVX @DPTR,A
CODE:b1b1  90 09 36                 MOV DPTR,#0x936
CODE:b1b4  74 11                    MOV A,#0x11
CODE:b1b6  f0                       MOVX @DPTR,A
CODE:b1b7  a3                       INC DPTR
CODE:b1b8  74 08                    MOV A,#0x8
CODE:b1ba  f0                       MOVX @DPTR,A
CODE:b1bb  e4                       CLR A
CODE:b1bc  ff                       MOV R7,A
LAB_CODE_b1bd:
CODE:b1bd  ef                       MOV A,R7   ; XREF: CODE:b1ef 
CODE:b1be  c3                       CLR CY
CODE:b1bf  9d                       SUBB A,R5
CODE:b1c0  50 2f                    JNC 0xb1f1
CODE:b1c2  90 09 05                 MOV DPTR,#0x905
CODE:b1c5  e0                       MOVX A,@DPTR
CODE:b1c6  fa                       MOV R2,A
CODE:b1c7  a3                       INC DPTR
CODE:b1c8  e0                       MOVX A,@DPTR
CODE:b1c9  f5 82                    MOV DPL,A
CODE:b1cb  8a 83                    MOV DPH,R2
CODE:b1cd  e4                       CLR A
CODE:b1ce  93                       MOVC A,@A+DPTR
CODE:b1cf  fe                       MOV R6,A
CODE:b1d0  90 09 36                 MOV DPTR,#0x936
CODE:b1d3  e0                       MOVX A,@DPTR
CODE:b1d4  fa                       MOV R2,A
CODE:b1d5  a3                       INC DPTR
CODE:b1d6  e0                       MOVX A,@DPTR
CODE:b1d7  2f                       ADD A,R7
CODE:b1d8  f5 82                    MOV DPL,A
CODE:b1da  e4                       CLR A
CODE:b1db  3a                       ADDC A,R2
CODE:b1dc  f5 83                    MOV DPH,A
CODE:b1de  ee                       MOV A,R6
CODE:b1df  f0                       MOVX @DPTR,A
CODE:b1e0  90 09 06                 MOV DPTR,#0x906
CODE:b1e3  e0                       MOVX A,@DPTR
CODE:b1e4  04                       INC A
CODE:b1e5  f0                       MOVX @DPTR,A
CODE:b1e6  70 06                    JNZ 0xb1ee
CODE:b1e8  90 09 05                 MOV DPTR,#0x905
CODE:b1eb  e0                       MOVX A,@DPTR
CODE:b1ec  04                       INC A
CODE:b1ed  f0                       MOVX @DPTR,A
LAB_CODE_b1ee:
CODE:b1ee  0f                       INC R7   ; XREF: CODE:b1e6 
CODE:b1ef  80 cc                    SJMP 0xb1bd
LAB_CODE_b1f1:
CODE:b1f1  22                       RET   ; XREF: CODE:b1c0 

; ===== FUNCTION FUN_CODE_b1f2 @ CODE:b1f2 =====
CODE:b1f2  12 bb dd                 LCALL 0xbbdd   ; XREF: CODE:9cbd 
CODE:b1f5  7f 18                    MOV R7,#0x18
CODE:b1f7  90 08 c7                 MOV DPTR,#0x8c7
CODE:b1fa  e4                       CLR A
LAB_CODE_b1fb:
CODE:b1fb  f0                       MOVX @DPTR,A   ; XREF: CODE:b1fd 
CODE:b1fc  a3                       INC DPTR
CODE:b1fd  df fc                    DJNZ R7,0xb1fb
CODE:b1ff  22                       RET

; ===== FUNCTION FUN_CODE_b39e @ CODE:b39e =====
CODE:b39e  90 09 09                 MOV DPTR,#0x909   ; XREF: CODE:4384 CODE:43be CODE:43f9 CODE:4434 CODE:446f CODE:44aa 
CODE:b3a1  12 81 93                 LCALL 0x8193
CODE:b3a4  12 c1 b4                 LCALL 0xc1b4
CODE:b3a7  12 00 46                 LCALL 0x0046
CODE:b3aa  7f 02                    MOV R7,#0x2
CODE:b3ac  12 bf 01                 LCALL 0xbf01
CODE:b3af  90 09 09                 MOV DPTR,#0x909
CODE:b3b2  e0                       MOVX A,@DPTR
CODE:b3b3  fc                       MOV R4,A
CODE:b3b4  a3                       INC DPTR
CODE:b3b5  e0                       MOVX A,@DPTR
CODE:b3b6  fd                       MOV R5,A
CODE:b3b7  a3                       INC DPTR
CODE:b3b8  e0                       MOVX A,@DPTR
CODE:b3b9  fe                       MOV R6,A
CODE:b3ba  a3                       INC DPTR
CODE:b3bb  e0                       MOVX A,@DPTR
CODE:b3bc  ff                       MOV R7,A
CODE:b3bd  78 10                    MOV R0,#0x10
CODE:b3bf  12 81 45                 LCALL 0x8145
CODE:b3c2  12 bf 01                 LCALL 0xbf01
CODE:b3c5  90 09 09                 MOV DPTR,#0x909
CODE:b3c8  e0                       MOVX A,@DPTR
CODE:b3c9  fc                       MOV R4,A
CODE:b3ca  a3                       INC DPTR
CODE:b3cb  e0                       MOVX A,@DPTR
CODE:b3cc  fd                       MOV R5,A
CODE:b3cd  a3                       INC DPTR
CODE:b3ce  e0                       MOVX A,@DPTR
CODE:b3cf  fe                       MOV R6,A
CODE:b3d0  a3                       INC DPTR
CODE:b3d1  e0                       MOVX A,@DPTR
CODE:b3d2  ff                       MOV R7,A
CODE:b3d3  78 08                    MOV R0,#0x8
CODE:b3d5  12 81 45                 LCALL 0x8145
CODE:b3d8  12 bf 01                 LCALL 0xbf01
CODE:b3db  90 09 09                 MOV DPTR,#0x909
CODE:b3de  a3                       INC DPTR
CODE:b3df  a3                       INC DPTR
CODE:b3e0  a3                       INC DPTR
CODE:b3e1  e0                       MOVX A,@DPTR
CODE:b3e2  ff                       MOV R7,A
CODE:b3e3  12 bf 01                 LCALL 0xbf01
CODE:b3e6  12 c1 bf                 LCALL 0xc1bf
LAB_CODE_b3e9:
CODE:b3e9  12 c1 9a                 LCALL 0xc19a   ; XREF: CODE:b3ed 
CODE:b3ec  ef                       MOV A,R7
CODE:b3ed  20 e0 f9                 JB 0xe0,0xb3e9
CODE:b3f0  22                       RET

; ===== FUNCTION FUN_CODE_b59e @ CODE:b59e =====
CODE:b59e  c2 21                    CLR 0x21   ; XREF: CODE:2d8f 
CODE:b5a0  e4                       CLR A
CODE:b5a1  f5 0a                    MOV 0x0a,A
CODE:b5a3  f5 0b                    MOV 0x0b,A
CODE:b5a5  f5 0f                    MOV 0x0f,A
CODE:b5a7  fb                       MOV R3,A
LAB_CODE_b5a8:
CODE:b5a8  74 06                    MOV A,#0x6   ; XREF: CODE:b5b6 
CODE:b5aa  2b                       ADD A,R3
CODE:b5ab  f5 82                    MOV DPL,A
CODE:b5ad  e4                       CLR A
CODE:b5ae  34 07                    ADDC A,#0x7
CODE:b5b0  f5 83                    MOV DPH,A
CODE:b5b2  e4                       CLR A
CODE:b5b3  f0                       MOVX @DPTR,A
CODE:b5b4  0b                       INC R3
CODE:b5b5  eb                       MOV A,R3
CODE:b5b6  b4 10 ef                 CJNE A,#0x10,0xb5a8
CODE:b5b9  d2 02                    SETB 0x02
CODE:b5bb  d2 14                    SETB 0x14
CODE:b5bd  e4                       CLR A
CODE:b5be  fb                       MOV R3,A
LAB_CODE_b5bf:
CODE:b5bf  eb                       MOV A,R3   ; XREF: CODE:b5eb 
CODE:b5c0  25 e0                    ADD A,A
CODE:b5c2  25 e0                    ADD A,A
CODE:b5c4  24 aa                    ADD A,#0xaa
CODE:b5c6  f5 82                    MOV DPL,A
CODE:b5c8  e4                       CLR A
CODE:b5c9  34 07                    ADDC A,#0x7
CODE:b5cb  f5 83                    MOV DPH,A
CODE:b5cd  12 81 9f                 LCALL 0x819f
CODE:b5d0  00                       NOP
CODE:b5d1  00                       NOP
CODE:b5d2  00                       NOP
CODE:b5d3  00                       NOP
CODE:b5d4  eb                       MOV A,R3
CODE:b5d5  25 e0                    ADD A,A
CODE:b5d7  25 e0                    ADD A,A
CODE:b5d9  24 c7                    ADD A,#0xc7
CODE:b5db  f5 82                    MOV DPL,A
CODE:b5dd  e4                       CLR A
CODE:b5de  34 08                    ADDC A,#0x8
CODE:b5e0  f5 83                    MOV DPH,A
CODE:b5e2  12 81 9f                 LCALL 0x819f
CODE:b5e5  00                       NOP
CODE:b5e6  00                       NOP
CODE:b5e7  00                       NOP
CODE:b5e8  00                       NOP
CODE:b5e9  0b                       INC R3
CODE:b5ea  eb                       MOV A,R3
CODE:b5eb  b4 06 d1                 CJNE A,#0x6,0xb5bf
CODE:b5ee  22                       RET

; ===== FUNCTION FUN_CODE_b5ef @ CODE:b5ef =====
CODE:b5ef  75 a9 01                 MOV 0xa9,#0x1   ; XREF: CODE:c0a7 
CODE:b5f2  e4                       CLR A
CODE:b5f3  f5 ba                    MOV 0xba,A
CODE:b5f5  f5 b6                    MOV 0xb6,A
CODE:b5f7  f5 b4                    MOV 0xb4,A
CODE:b5f9  f5 b8                    MOV 0xb8,A
CODE:b5fb  f5 b5                    MOV 0xb5,A
CODE:b5fd  f5 b9                    MOV 0xb9,A
CODE:b5ff  22                       RET

; ===== FUNCTION FUN_CODE_b79e @ CODE:b79e =====
CODE:b79e  90 09 7e                 MOV DPTR,#0x97e   ; XREF: CODE:9462 CODE:94be CODE:a22a CODE:a23d CODE:a566 CODE:a579 CODE:6fcc CODE:6856 CODE:6c3d CODE:734b CODE:850a CODE:7189 CODE:9a75 CODE:9a88 CODE:9a9b CODE:9aae CODE:9ac1 CODE:8e38 CODE:8ea3 CODE:8ed2 CODE:58db CODE:58fc CODE:59ff CODE:5a32 CODE:5a65 CODE:5a98 CODE:5acb CODE:5afe CODE:aad7 CODE:abb8 CODE:93c0 CODE:93d3 CODE:93e6 CODE:93f9 CODE:940c CODE:941f CODE:7a07 CODE:9050 CODE:9063 CODE:9076 CODE:9089 CODE:909c CODE:90af CODE:785a CODE:a9f3 
CODE:b7a1  12 81 d6                 LCALL 0x81d6
CODE:b7a4  78 10                    MOV R0,#0x10
CODE:b7a6  ec                       MOV A,R4
CODE:b7a7  4d                       ORL A,R5
CODE:b7a8  4e                       ORL A,R6
CODE:b7a9  4f                       ORL A,R7
CODE:b7aa  70 04                    JNZ 0xb7b0
CODE:b7ac  7c a5                    MOV R4,#0xa5
CODE:b7ae  7d a5                    MOV R5,#0xa5
LAB_CODE_b7b0:
CODE:b7b0  c3                       CLR CY   ; XREF: CODE:b7aa CODE:b7cf 
CODE:b7b1  ec                       MOV A,R4
CODE:b7b2  13                       RRC A
CODE:b7b3  fc                       MOV R4,A
CODE:b7b4  ed                       MOV A,R5
CODE:b7b5  13                       RRC A
CODE:b7b6  fd                       MOV R5,A
CODE:b7b7  ee                       MOV A,R6
CODE:b7b8  13                       RRC A
CODE:b7b9  fe                       MOV R6,A
CODE:b7ba  ef                       MOV A,R7
CODE:b7bb  13                       RRC A
CODE:b7bc  ff                       MOV R7,A
CODE:b7bd  50 10                    JNC 0xb7cf
CODE:b7bf  ec                       MOV A,R4
CODE:b7c0  64 cc                    XRL A,#0xcc
CODE:b7c2  fc                       MOV R4,A
CODE:b7c3  ed                       MOV A,R5
CODE:b7c4  64 4c                    XRL A,#0x4c
CODE:b7c6  fd                       MOV R5,A
CODE:b7c7  ee                       MOV A,R6
CODE:b7c8  64 4e                    XRL A,#0x4e
CODE:b7ca  fe                       MOV R6,A
CODE:b7cb  ef                       MOV A,R7
CODE:b7cc  64 ce                    XRL A,#0xce
CODE:b7ce  ff                       MOV R7,A
LAB_CODE_b7cf:
CODE:b7cf  d8 df                    DJNZ R0,0xb7b0   ; XREF: CODE:b7bd 
CODE:b7d1  90 09 7e                 MOV DPTR,#0x97e
CODE:b7d4  12 81 93                 LCALL 0x8193
CODE:b7d7  ee                       MOV A,R6
CODE:b7d8  54 7f                    ANL A,#0x7f
CODE:b7da  fe                       MOV R6,A
CODE:b7db  22                       RET

; ===== FUNCTION FUN_CODE_b7dc @ CODE:b7dc =====
CODE:b7dc  90 09 7e                 MOV DPTR,#0x97e   ; XREF: CODE:8ea0 
CODE:b7df  ee                       MOV A,R6
CODE:b7e0  f0                       MOVX @DPTR,A
CODE:b7e1  ef                       MOV A,R7
CODE:b7e2  a3                       INC DPTR
CODE:b7e3  f0                       MOVX @DPTR,A
CODE:b7e4  a3                       INC DPTR
CODE:b7e5  74 a5                    MOV A,#0xa5
CODE:b7e7  f0                       MOVX @DPTR,A
CODE:b7e8  a3                       INC DPTR
CODE:b7e9  f0                       MOVX @DPTR,A
CODE:b7ea  22                       RET

; ===== FUNCTION FUN_CODE_b7eb @ CODE:b7eb =====
CODE:b7eb  90 07 57                 MOV DPTR,#0x757   ; XREF: CODE:9361 
CODE:b7ee  74 01                    MOV A,#0x1
CODE:b7f0  f0                       MOVX @DPTR,A
CODE:b7f1  30 00 06                 JNB 0x00,0xb7fa
CODE:b7f4  90 07 c5                 MOV DPTR,#0x7c5
CODE:b7f7  e0                       MOVX A,@DPTR
CODE:b7f8  80 01                    SJMP 0xb7fb
LAB_CODE_b7fa:
CODE:b7fa  e4                       CLR A   ; XREF: CODE:b7f1 
LAB_CODE_b7fb:
CODE:b7fb  90 07 58                 MOV DPTR,#0x758   ; XREF: CODE:b7f8 
CODE:b7fe  f0                       MOVX @DPTR,A
CODE:b7ff  22                       RET

; ===== FUNCTION FUN_CODE_b99e @ CODE:b99e =====
CODE:b99e  90 08 ea                 MOV DPTR,#0x8ea   ; XREF: CODE:4966 CODE:4982 CODE:49a1 CODE:49fe CODE:4a1a CODE:4a39 CODE:4aae CODE:4ada CODE:4b09 CODE:2c22 CODE:2c51 CODE:2c76 CODE:2c9b CODE:2cc0 
CODE:b9a1  12 81 93                 LCALL 0x8193
CODE:b9a4  12 00 46                 LCALL 0x0046
CODE:b9a7  7f 03                    MOV R7,#0x3
CODE:b9a9  12 bf 01                 LCALL 0xbf01
CODE:b9ac  90 08 ea                 MOV DPTR,#0x8ea
CODE:b9af  e0                       MOVX A,@DPTR
CODE:b9b0  fc                       MOV R4,A
CODE:b9b1  a3                       INC DPTR
CODE:b9b2  e0                       MOVX A,@DPTR
CODE:b9b3  fd                       MOV R5,A
CODE:b9b4  a3                       INC DPTR
CODE:b9b5  e0                       MOVX A,@DPTR
CODE:b9b6  fe                       MOV R6,A
CODE:b9b7  a3                       INC DPTR
CODE:b9b8  e0                       MOVX A,@DPTR
CODE:b9b9  ff                       MOV R7,A
CODE:b9ba  78 10                    MOV R0,#0x10
CODE:b9bc  12 81 45                 LCALL 0x8145
CODE:b9bf  12 bf 01                 LCALL 0xbf01
CODE:b9c2  90 08 ea                 MOV DPTR,#0x8ea
CODE:b9c5  e0                       MOVX A,@DPTR
CODE:b9c6  fc                       MOV R4,A
CODE:b9c7  a3                       INC DPTR
CODE:b9c8  e0                       MOVX A,@DPTR
CODE:b9c9  fd                       MOV R5,A
CODE:b9ca  a3                       INC DPTR
CODE:b9cb  e0                       MOVX A,@DPTR
CODE:b9cc  fe                       MOV R6,A
CODE:b9cd  a3                       INC DPTR
CODE:b9ce  e0                       MOVX A,@DPTR
CODE:b9cf  ff                       MOV R7,A
CODE:b9d0  78 08                    MOV R0,#0x8
CODE:b9d2  12 81 45                 LCALL 0x8145
CODE:b9d5  12 bf 01                 LCALL 0xbf01
CODE:b9d8  90 08 ea                 MOV DPTR,#0x8ea
CODE:b9db  a3                       INC DPTR
CODE:b9dc  a3                       INC DPTR
CODE:b9dd  a3                       INC DPTR
CODE:b9de  e0                       MOVX A,@DPTR
CODE:b9df  ff                       MOV R7,A
CODE:b9e0  12 bf 01                 LCALL 0xbf01
CODE:b9e3  12 00 1e                 LCALL 0x001e
CODE:b9e6  12 c1 c5                 LCALL 0xc1c5
CODE:b9e9  22                       RET

; ===== FUNCTION FUN_CODE_b9ea @ CODE:b9ea =====
CODE:b9ea  c0 e0                    PUSH A   ; XREF: CODE:0003 
CODE:b9ec  c0 f0                    PUSH B
CODE:b9ee  c0 83                    PUSH DPH
CODE:b9f0  c0 82                    PUSH DPL
CODE:b9f2  c0 d0                    PUSH PSW
CODE:b9f4  75 d0 00                 MOV PSW,#0x0
CODE:b9f7  c0 00                    PUSH 0x00
CODE:b9f9  c0 01                    PUSH 0x01
CODE:b9fb  c0 02                    PUSH 0x02
CODE:b9fd  c0 03                    PUSH 0x03
CODE:b9ff  c0 04                    PUSH 0x04
CODE:ba01  c0 05                    PUSH 0x05
CODE:ba03  c0 06                    PUSH 0x06
CODE:ba05  c0 07                    PUSH 0x07
CODE:ba07  c0 86                    PUSH 0x86
CODE:ba09  c0 a7                    PUSH 0xa7
CODE:ba0b  c2 cf                    CLR 0xcf
CODE:ba0d  20 1d 06                 JB 0x1d,0xba16
CODE:ba10  20 24 03                 JB 0x24,0xba16
CODE:ba13  12 2d bd                 LCALL 0x2dbd
LAB_CODE_ba16:
CODE:ba16  d0 a7                    POP 0xa7   ; XREF: CODE:ba0d CODE:ba10 
CODE:ba18  d0 86                    POP 0x86
CODE:ba1a  d0 07                    POP 0x07
CODE:ba1c  d0 06                    POP 0x06
CODE:ba1e  d0 05                    POP 0x05
CODE:ba20  d0 04                    POP 0x04
CODE:ba22  d0 03                    POP 0x03
CODE:ba24  d0 02                    POP 0x02
CODE:ba26  d0 01                    POP 0x01
CODE:ba28  d0 00                    POP 0x00
CODE:ba2a  d0 d0                    POP PSW
CODE:ba2c  d0 82                    POP DPL
CODE:ba2e  d0 83                    POP DPH
CODE:ba30  d0 f0                    POP B
CODE:ba32  d0 e0                    POP A
CODE:ba34  32                       RETI

; ===== FUNCTION FUN_CODE_baca @ CODE:baca =====
CODE:baca  90 09 76                 MOV DPTR,#0x976   ; XREF: CODE:455c CODE:2138 CODE:217b CODE:21cb CODE:2226 CODE:2078 CODE:2e1f 
CODE:bacd  74 aa                    MOV A,#0xaa
CODE:bacf  f0                       MOVX @DPTR,A
CODE:bad0  78 69                    MOV R0,#0x69
CODE:bad2  e6                       MOV A,@R0
CODE:bad3  a3                       INC DPTR
CODE:bad4  f0                       MOVX @DPTR,A
CODE:bad5  78 1b                    MOV R0,#0x1b
CODE:bad7  e6                       MOV A,@R0
CODE:bad8  a3                       INC DPTR
CODE:bad9  f0                       MOVX @DPTR,A
CODE:bada  78 1e                    MOV R0,#0x1e
CODE:badc  e6                       MOV A,@R0
CODE:badd  90 09 7b                 MOV DPTR,#0x97b
CODE:bae0  f0                       MOVX @DPTR,A
CODE:bae1  78 5c                    MOV R0,#0x5c
CODE:bae3  e6                       MOV A,@R0
CODE:bae4  a3                       INC DPTR
CODE:bae5  f0                       MOVX @DPTR,A
CODE:bae6  7f e4                    MOV R7,#0xe4
CODE:bae8  12 be bf                 LCALL 0xbebf
CODE:baeb  e4                       CLR A
CODE:baec  90 08 f5                 MOV DPTR,#0x8f5
CODE:baef  f0                       MOVX @DPTR,A
LAB_CODE_baf0:
CODE:baf0  90 08 f5                 MOV DPTR,#0x8f5   ; XREF: CODE:bb0f 
CODE:baf3  e0                       MOVX A,@DPTR
CODE:baf4  fd                       MOV R5,A
CODE:baf5  24 76                    ADD A,#0x76
CODE:baf7  f5 82                    MOV DPL,A
CODE:baf9  e4                       CLR A
CODE:bafa  34 09                    ADDC A,#0x9
CODE:bafc  f5 83                    MOV DPH,A
CODE:bafe  e0                       MOVX A,@DPTR
CODE:baff  fb                       MOV R3,A
CODE:bb00  7f e4                    MOV R7,#0xe4
CODE:bb02  12 bd c0                 LCALL 0xbdc0
CODE:bb05  90 08 f5                 MOV DPTR,#0x8f5
CODE:bb08  e0                       MOVX A,@DPTR
CODE:bb09  04                       INC A
CODE:bb0a  f0                       MOVX @DPTR,A
CODE:bb0b  e0                       MOVX A,@DPTR
CODE:bb0c  c3                       CLR CY
CODE:bb0d  94 07                    SUBB A,#0x7
CODE:bb0f  40 df                    JC 0xbaf0
CODE:bb11  22                       RET

; ===== FUNCTION FUN_CODE_bb57 @ CODE:bb57 =====
CODE:bb57  c0 e0                    PUSH A   ; XREF: CODE:003b 
CODE:bb59  c0 f0                    PUSH B
CODE:bb5b  c0 83                    PUSH DPH
CODE:bb5d  c0 82                    PUSH DPL
CODE:bb5f  c0 d0                    PUSH PSW
CODE:bb61  75 d0 00                 MOV PSW,#0x0
CODE:bb64  c0 00                    PUSH 0x00
CODE:bb66  c0 01                    PUSH 0x01
CODE:bb68  c0 02                    PUSH 0x02
CODE:bb6a  c0 03                    PUSH 0x03
CODE:bb6c  c0 04                    PUSH 0x04
CODE:bb6e  c0 05                    PUSH 0x05
CODE:bb70  c0 06                    PUSH 0x06
CODE:bb72  c0 07                    PUSH 0x07
CODE:bb74  c0 86                    PUSH 0x86
CODE:bb76  c0 a7                    PUSH 0xa7
CODE:bb78  12 8c 56                 LCALL 0x8c56
CODE:bb7b  d0 a7                    POP 0xa7
CODE:bb7d  d0 86                    POP 0x86
CODE:bb7f  d0 07                    POP 0x07
CODE:bb81  d0 06                    POP 0x06
CODE:bb83  d0 05                    POP 0x05
CODE:bb85  d0 04                    POP 0x04
CODE:bb87  d0 03                    POP 0x03
CODE:bb89  d0 02                    POP 0x02
CODE:bb8b  d0 01                    POP 0x01
CODE:bb8d  d0 00                    POP 0x00
CODE:bb8f  d0 d0                    POP PSW
CODE:bb91  d0 82                    POP DPL
CODE:bb93  d0 83                    POP DPH
CODE:bb95  d0 f0                    POP B
CODE:bb97  d0 e0                    POP A
CODE:bb99  32                       RETI

; ===== FUNCTION FUN_CODE_bbdd @ CODE:bbdd =====
CODE:bbdd  75 c0 ff                 MOV 0xc0,#0xff   ; XREF: CODE:450c CODE:48f1 CODE:201c CODE:9525 CODE:aca4 CODE:c191 CODE:2dc5 CODE:2ed4 CODE:2fb5 CODE:303d CODE:3055 CODE:31c3 CODE:3251 CODE:3b39 CODE:4b58 CODE:6893 CODE:7a54 CODE:85ce CODE:9c39 CODE:9d5a CODE:9fb8 CODE:a046 CODE:a15d CODE:ab15 CODE:b1f2 CODE:3cf7 CODE:3d75 CODE:3e18 CODE:3e42 
CODE:bbe0  43 88 87                 ORL 0x88,#0x87
CODE:bbe3  43 b0 7f                 ORL 0xb0,#0x7f
CODE:bbe6  d2 fc                    SETB 0xfc
CODE:bbe8  43 80 e0                 ORL 0x80,#0xe0
CODE:bbeb  90 ff 80                 MOV DPTR,#0xff80
CODE:bbee  74 b0                    MOV A,#0xb0
CODE:bbf0  f0                       MOVX @DPTR,A
CODE:bbf1  a3                       INC DPTR
CODE:bbf2  74 10                    MOV A,#0x10
CODE:bbf4  f0                       MOVX @DPTR,A
CODE:bbf5  a3                       INC DPTR
CODE:bbf6  f0                       MOVX @DPTR,A
CODE:bbf7  a3                       INC DPTR
CODE:bbf8  f0                       MOVX @DPTR,A
CODE:bbf9  a3                       INC DPTR
CODE:bbfa  f0                       MOVX @DPTR,A
CODE:bbfb  a3                       INC DPTR
CODE:bbfc  f0                       MOVX @DPTR,A
CODE:bbfd  a3                       INC DPTR
CODE:bbfe  74 b0                    MOV A,#0xb0
CODE:bc00  f0                       MOVX @DPTR,A
CODE:bc01  a3                       INC DPTR
CODE:bc02  74 10                    MOV A,#0x10
CODE:bc04  f0                       MOVX @DPTR,A
CODE:bc05  a3                       INC DPTR
CODE:bc06  f0                       MOVX @DPTR,A
CODE:bc07  a3                       INC DPTR
CODE:bc08  f0                       MOVX @DPTR,A
CODE:bc09  a3                       INC DPTR
CODE:bc0a  f0                       MOVX @DPTR,A
CODE:bc0b  a3                       INC DPTR
CODE:bc0c  f0                       MOVX @DPTR,A
CODE:bc0d  a3                       INC DPTR
CODE:bc0e  74 b0                    MOV A,#0xb0
CODE:bc10  f0                       MOVX @DPTR,A
CODE:bc11  a3                       INC DPTR
CODE:bc12  74 10                    MOV A,#0x10
CODE:bc14  f0                       MOVX @DPTR,A
CODE:bc15  a3                       INC DPTR
CODE:bc16  f0                       MOVX @DPTR,A
CODE:bc17  a3                       INC DPTR
CODE:bc18  f0                       MOVX @DPTR,A
CODE:bc19  a3                       INC DPTR
CODE:bc1a  f0                       MOVX @DPTR,A
CODE:bc1b  a3                       INC DPTR
CODE:bc1c  f0                       MOVX @DPTR,A
CODE:bc1d  22                       RET

; ===== FUNCTION FUN_CODE_bc1e @ CODE:bc1e =====
CODE:bc1e  90 e4 01                 MOV DPTR,#0xe401   ; XREF: CODE:c194 
CODE:bc21  e4                       CLR A
CODE:bc22  93                       MOVC A,@A+DPTR
CODE:bc23  78 69                    MOV R0,#0x69
CODE:bc25  f6                       MOV @R0,A
CODE:bc26  a3                       INC DPTR
CODE:bc27  e4                       CLR A
CODE:bc28  93                       MOVC A,@A+DPTR
CODE:bc29  78 1b                    MOV R0,#0x1b
CODE:bc2b  f6                       MOV @R0,A
CODE:bc2c  90 e4 05                 MOV DPTR,#0xe405
CODE:bc2f  e4                       CLR A
CODE:bc30  93                       MOVC A,@A+DPTR
CODE:bc31  78 1e                    MOV R0,#0x1e
CODE:bc33  f6                       MOV @R0,A
CODE:bc34  78 5c                    MOV R0,#0x5c
CODE:bc36  76 07                    MOV @R0,#0x7
CODE:bc38  7f 07                    MOV R7,#0x7
CODE:bc3a  12 9d eb                 LCALL 0x9deb
CODE:bc3d  90 ff 9c                 MOV DPTR,#0xff9c
CODE:bc40  e4                       CLR A
CODE:bc41  f0                       MOVX @DPTR,A
CODE:bc42  90 ff 98                 MOV DPTR,#0xff98
CODE:bc45  74 ff                    MOV A,#0xff
CODE:bc47  f0                       MOVX @DPTR,A
CODE:bc48  90 ff 9d                 MOV DPTR,#0xff9d
CODE:bc4b  e4                       CLR A
CODE:bc4c  f0                       MOVX @DPTR,A
CODE:bc4d  90 ff 99                 MOV DPTR,#0xff99
CODE:bc50  74 ff                    MOV A,#0xff
CODE:bc52  f0                       MOVX @DPTR,A
CODE:bc53  90 ff 9e                 MOV DPTR,#0xff9e
CODE:bc56  e4                       CLR A
CODE:bc57  f0                       MOVX @DPTR,A
CODE:bc58  90 ff 9a                 MOV DPTR,#0xff9a
CODE:bc5b  74 ff                    MOV A,#0xff
CODE:bc5d  f0                       MOVX @DPTR,A
CODE:bc5e  22                       RET

; ===== FUNCTION FUN_CODE_bc5f @ CODE:bc5f =====
CODE:bc5f  90 09 35                 MOV DPTR,#0x935   ; XREF: CODE:8d49 
CODE:bc62  e0                       MOVX A,@DPTR
CODE:bc63  b4 01 0d                 CJNE A,#0x1,0xbc73
CODE:bc66  12 a4 8c                 LCALL 0xa48c
CODE:bc69  43 97 04                 ORL 0x97,#0x4
CODE:bc6c  53 92 af                 ANL 0x92,#0xaf
CODE:bc6f  43 97 01                 ORL 0x97,#0x1
CODE:bc72  22                       RET
LAB_CODE_bc73:
CODE:bc73  90 09 35                 MOV DPTR,#0x935   ; XREF: CODE:bc63 
CODE:bc76  e0                       MOVX A,@DPTR
CODE:bc77  b4 02 0a                 CJNE A,#0x2,0xbc84
CODE:bc7a  53 92 af                 ANL 0x92,#0xaf
CODE:bc7d  43 97 01                 ORL 0x97,#0x1
CODE:bc80  43 97 08                 ORL 0x97,#0x8
CODE:bc83  22                       RET
LAB_CODE_bc84:
CODE:bc84  43 97 08                 ORL 0x97,#0x8   ; XREF: CODE:bc77 
CODE:bc87  53 92 af                 ANL 0x92,#0xaf
CODE:bc8a  43 97 01                 ORL 0x97,#0x1
CODE:bc8d  90 09 0e                 MOV DPTR,#0x90e
CODE:bc90  e0                       MOVX A,@DPTR
CODE:bc91  70 09                    JNZ 0xbc9c
CODE:bc93  a3                       INC DPTR
CODE:bc94  e0                       MOVX A,@DPTR
CODE:bc95  b4 05 04                 CJNE A,#0x5,0xbc9c
CODE:bc98  a3                       INC DPTR
CODE:bc99  e0                       MOVX A,@DPTR
CODE:bc9a  f5 96                    MOV 0x96,A
LAB_CODE_bc9c:
CODE:bc9c  22                       RET   ; XREF: CODE:bc91 CODE:bc95 

; ===== FUNCTION FUN_CODE_bc9d @ CODE:bc9d =====
CODE:bc9d  90 07 c5                 MOV DPTR,#0x7c5   ; XREF: CODE:5b54 CODE:9344 
CODE:bca0  e0                       MOVX A,@DPTR
CODE:bca1  ff                       MOV R7,A
CODE:bca2  b4 e3 08                 CJNE A,#0xe3,0xbcad
CODE:bca5  30 00 05                 JNB 0x00,0xbcad
CODE:bca8  30 10 02                 JNB 0x10,0xbcad
CODE:bcab  b2 2f                    CPL 0x2f
LAB_CODE_bcad:
CODE:bcad  d2 0e                    SETB 0x0e   ; XREF: CODE:bca2 CODE:bca5 CODE:bca8 
CODE:bcaf  30 2f 0a                 JNB 0x2f,0xbcbc
CODE:bcb2  ef                       MOV A,R7
CODE:bcb3  64 e3                    XRL A,#0xe3
CODE:bcb5  60 23                    JZ 0xbcda
CODE:bcb7  ef                       MOV A,R7
CODE:bcb8  64 e7                    XRL A,#0xe7
CODE:bcba  60 1e                    JZ 0xbcda
LAB_CODE_bcbc:
CODE:bcbc  ef                       MOV A,R7   ; XREF: CODE:bcaf 
CODE:bcbd  54 0f                    ANL A,#0xf
CODE:bcbf  ff                       MOV R7,A
CODE:bcc0  90 07 06                 MOV DPTR,#0x706
CODE:bcc3  e0                       MOVX A,@DPTR
CODE:bcc4  fe                       MOV R6,A
CODE:bcc5  ef                       MOV A,R7
CODE:bcc6  90 64 4f                 MOV DPTR,#0x644f
CODE:bcc9  93                       MOVC A,@A+DPTR
CODE:bcca  30 00 06                 JNB 0x00,0xbcd3
CODE:bccd  f4                       CPL A
CODE:bcce  ff                       MOV R7,A
CODE:bccf  ee                       MOV A,R6
CODE:bcd0  4f                       ORL A,R7
CODE:bcd1  80 03                    SJMP 0xbcd6
LAB_CODE_bcd3:
CODE:bcd3  ff                       MOV R7,A   ; XREF: CODE:bcca 
CODE:bcd4  ee                       MOV A,R6
CODE:bcd5  5f                       ANL A,R7
LAB_CODE_bcd6:
CODE:bcd6  90 07 06                 MOV DPTR,#0x706   ; XREF: CODE:bcd1 
CODE:bcd9  f0                       MOVX @DPTR,A
LAB_CODE_bcda:
CODE:bcda  22                       RET   ; XREF: CODE:bcb5 CODE:bcba 

; ===== FUNCTION FUN_CODE_bd51 @ CODE:bd51 =====
CODE:bd51  90 07 c4                 MOV DPTR,#0x7c4   ; XREF: CODE:4969 CODE:4a01 CODE:4ab1 

; ===== FUNCTION FUN_CODE_bd54 @ CODE:bd54 =====
CODE:bd54  ef                       MOV A,R7   ; XREF: CODE:4988 CODE:4a20 CODE:4ae0 
CODE:bd55  f0                       MOVX @DPTR,A
CODE:bd56  7f 14                    MOV R7,#0x14
CODE:bd58  7e 00                    MOV R6,#0x0

; ===== FUNCTION FUN_CODE_bd5a @ CODE:bd5a =====
CODE:bd5a  e4                       CLR A   ; XREF: CODE:48fb CODE:2c3a CODE:2c5d CODE:2c82 CODE:2ca7 CODE:95ab CODE:95c6 CODE:afee CODE:aff5 CODE:c095 CODE:c0cd CODE:c0d7 CODE:69e0 CODE:438b CODE:43c5 CODE:4400 CODE:443b CODE:4476 CODE:44b1 CODE:8802 
CODE:bd5b  f5 b1                    MOV 0xb1,A
CODE:bd5d  fd                       MOV R5,A
CODE:bd5e  fc                       MOV R4,A
CODE:bd5f  c3                       CLR CY
CODE:bd60  ed                       MOV A,R5
CODE:bd61  9f                       SUBB A,R7
CODE:bd62  ec                       MOV A,R4
CODE:bd63  9e                       SUBB A,R6
CODE:bd64  50 22                    JNC 0xbd88
CODE:bd66  e4                       CLR A
CODE:bd67  f5 b1                    MOV 0xb1,A
CODE:bd69  00                       NOP
CODE:bd6a  00                       NOP
CODE:bd6b  00                       NOP
CODE:bd6c  00                       NOP
CODE:bd6d  00                       NOP
CODE:bd6e  00                       NOP
CODE:bd6f  00                       NOP
CODE:bd70  00                       NOP
CODE:bd71  00                       NOP
CODE:bd72  00                       NOP
CODE:bd73  00                       NOP
CODE:bd74  00                       NOP
CODE:bd75  00                       NOP
CODE:bd76  00                       NOP
CODE:bd77  00                       NOP
CODE:bd78  00                       NOP
CODE:bd79  00                       NOP
LAB_CODE_bd88:
CODE:bd88  22                       RET   ; XREF: CODE:bd64 

; ===== FUNCTION FUN_CODE_bdc0 @ CODE:bdc0 =====
CODE:bdc0  a2 af                    MOV CY,0xaf   ; XREF: CODE:4588 CODE:45c3 CODE:45fe CODE:4639 CODE:4674 CODE:46af CODE:46ea CODE:4725 CODE:4760 CODE:479b CODE:47d6 CODE:4811 CODE:4852 CODE:488d CODE:48c8 CODE:1a49 CODE:1a68 CODE:1a88 CODE:1a9f CODE:1aaf CODE:1abf CODE:1ae4 CODE:1b04 CODE:1b25 CODE:bb02 CODE:3c51 CODE:3c89 CODE:3cc1 CODE:3e79 CODE:3e99 CODE:3ed5 CODE:3eed CODE:3f05 CODE:3f2f CODE:3f50 CODE:3f6f CODE:3fea CODE:400a CODE:402b CODE:404c CODE:406d CODE:40ae CODE:40c5 CODE:40dd CODE:40f5 CODE:410d CODE:414e CODE:416e CODE:418f CODE:41b0 CODE:41d1 CODE:4212 CODE:4229 CODE:4241 CODE:4259 CODE:4271 CODE:42aa CODE:42c1 CODE:42d9 CODE:42f1 CODE:4309 CODE:4321 
CODE:bdc2  92 32                    MOV 0x32,CY
CODE:bdc4  c2 af                    CLR 0xaf
CODE:bdc6  8f f7                    MOV 0xf7,R7
CODE:bdc8  af 05                    MOV R7,0x05
CODE:bdca  8f fb                    MOV 0xfb,R7
CODE:bdcc  af 03                    MOV R7,0x03
CODE:bdce  8f fc                    MOV 0xfc,R7
CODE:bdd0  75 f2 6e                 MOV 0xf2,#0x6e
CODE:bdd3  75 f3 05                 MOV 0xf3,#0x5
CODE:bdd6  75 f4 0a                 MOV 0xf4,#0xa
CODE:bdd9  75 f5 09                 MOV 0xf5,#0x9
CODE:bddc  75 f6 06                 MOV 0xf6,#0x6
CODE:bddf  00                       NOP
CODE:bde0  00                       NOP
CODE:bde1  00                       NOP
CODE:bde2  00                       NOP
CODE:bde3  00                       NOP
CODE:bde4  00                       NOP
CODE:bde5  00                       NOP
CODE:bde6  00                       NOP
CODE:bde7  e4                       CLR A
CODE:bde8  f5 f2                    MOV 0xf2,A
CODE:bdea  f5 f3                    MOV 0xf3,A
CODE:bdec  f5 f4                    MOV 0xf4,A
CODE:bdee  f5 f5                    MOV 0xf5,A
CODE:bdf0  f5 f6                    MOV 0xf6,A
CODE:bdf2  a2 32                    MOV CY,0x32
CODE:bdf4  92 af                    MOV 0xaf,CY
CODE:bdf6  22                       RET

; ===== FUNCTION FUN_CODE_bdf7 @ CODE:bdf7 =====
CODE:bdf7  90 ff 80                 MOV DPTR,#0xff80   ; XREF: CODE:69d9 
CODE:bdfa  74 b8                    MOV A,#0xb8
CODE:bdfc  f0                       MOVX @DPTR,A
CODE:bdfd  a3                       INC DPTR
CODE:bdfe  74 18                    MOV A,#0x18
CODE:be00  f0                       MOVX @DPTR,A
CODE:be01  a3                       INC DPTR
CODE:be02  f0                       MOVX @DPTR,A
CODE:be03  a3                       INC DPTR
CODE:be04  f0                       MOVX @DPTR,A
CODE:be05  a3                       INC DPTR
CODE:be06  f0                       MOVX @DPTR,A
CODE:be07  a3                       INC DPTR
CODE:be08  f0                       MOVX @DPTR,A
CODE:be09  a3                       INC DPTR
CODE:be0a  74 b8                    MOV A,#0xb8
CODE:be0c  f0                       MOVX @DPTR,A
CODE:be0d  a3                       INC DPTR
CODE:be0e  74 18                    MOV A,#0x18
CODE:be10  f0                       MOVX @DPTR,A
CODE:be11  a3                       INC DPTR
CODE:be12  f0                       MOVX @DPTR,A
CODE:be13  a3                       INC DPTR
CODE:be14  f0                       MOVX @DPTR,A
CODE:be15  a3                       INC DPTR
CODE:be16  f0                       MOVX @DPTR,A
CODE:be17  a3                       INC DPTR
CODE:be18  f0                       MOVX @DPTR,A
CODE:be19  a3                       INC DPTR
CODE:be1a  74 b8                    MOV A,#0xb8
CODE:be1c  f0                       MOVX @DPTR,A
CODE:be1d  a3                       INC DPTR
CODE:be1e  74 18                    MOV A,#0x18
CODE:be20  f0                       MOVX @DPTR,A
CODE:be21  a3                       INC DPTR
CODE:be22  f0                       MOVX @DPTR,A
CODE:be23  a3                       INC DPTR
CODE:be24  f0                       MOVX @DPTR,A
CODE:be25  a3                       INC DPTR
CODE:be26  f0                       MOVX @DPTR,A
CODE:be27  a3                       INC DPTR
CODE:be28  f0                       MOVX @DPTR,A
CODE:be29  22                       RET

; ===== FUNCTION FUN_CODE_be2a @ CODE:be2a =====
CODE:be2a  c2 31                    CLR 0x31   ; XREF: CODE:9cdd 
CODE:be2c  ef                       MOV A,R7
CODE:be2d  14                       DEC A
CODE:be2e  60 14                    JZ 0xbe44
CODE:be30  14                       DEC A
CODE:be31  60 15                    JZ 0xbe48
CODE:be33  14                       DEC A
CODE:be34  60 16                    JZ 0xbe4c
CODE:be36  14                       DEC A
CODE:be37  60 17                    JZ 0xbe50
CODE:be39  14                       DEC A
CODE:be3a  60 18                    JZ 0xbe54
CODE:be3c  24 05                    ADD A,#0x5
CODE:be3e  70 19                    JNZ 0xbe59
CODE:be40  a2 f8                    MOV CY,0xf8
CODE:be42  80 12                    SJMP 0xbe56
LAB_CODE_be44:
CODE:be44  a2 f9                    MOV CY,0xf9   ; XREF: CODE:be2e 
CODE:be46  80 0e                    SJMP 0xbe56
LAB_CODE_be48:
CODE:be48  a2 fa                    MOV CY,0xfa   ; XREF: CODE:be31 
CODE:be4a  80 0a                    SJMP 0xbe56
LAB_CODE_be4c:
CODE:be4c  a2 fb                    MOV CY,0xfb   ; XREF: CODE:be34 
CODE:be4e  80 06                    SJMP 0xbe56
LAB_CODE_be50:
CODE:be50  a2 8b                    MOV CY,0x8b   ; XREF: CODE:be37 
CODE:be52  80 02                    SJMP 0xbe56
LAB_CODE_be54:
CODE:be54  a2 8c                    MOV CY,0x8c   ; XREF: CODE:be3a 
LAB_CODE_be56:
CODE:be56  b3                       CPL CY   ; XREF: CODE:be42 CODE:be46 CODE:be4a CODE:be4e CODE:be52 
CODE:be57  92 31                    MOV 0x31,CY
LAB_CODE_be59:
CODE:be59  a2 31                    MOV CY,0x31   ; XREF: CODE:be3e 
CODE:be5b  22                       RET

; ===== FUNCTION FUN_CODE_be5c @ CODE:be5c =====
CODE:be5c  ef                       MOV A,R7   ; XREF: CODE:4b55 
CODE:be5d  24 ff                    ADD A,#0xff
CODE:be5f  92 b1                    MOV 0xb1,CY
CODE:be61  92 c0                    MOV 0xc0,CY
CODE:be63  92 c1                    MOV 0xc1,CY
CODE:be65  92 c2                    MOV 0xc2,CY
CODE:be67  92 c3                    MOV 0xc3,CY
CODE:be69  92 c4                    MOV 0xc4,CY
CODE:be6b  92 c5                    MOV 0xc5,CY
CODE:be6d  92 c6                    MOV 0xc6,CY
CODE:be6f  92 c7                    MOV 0xc7,CY
CODE:be71  92 88                    MOV 0x88,CY
CODE:be73  92 89                    MOV 0x89,CY
CODE:be75  92 8a                    MOV 0x8a,CY
CODE:be77  92 8f                    MOV 0x8f,CY
CODE:be79  92 b0                    MOV 0xb0,CY
CODE:be7b  92 b4                    MOV 0xb4,CY
CODE:be7d  92 b2                    MOV 0xb2,CY
CODE:be7f  92 b3                    MOV 0xb3,CY
CODE:be81  92 b5                    MOV 0xb5,CY
CODE:be83  92 b6                    MOV 0xb6,CY
CODE:be85  92 fc                    MOV 0xfc,CY
CODE:be87  92 85                    MOV 0x85,CY
CODE:be89  92 86                    MOV 0x86,CY
CODE:be8b  92 87                    MOV 0x87,CY
CODE:be8d  22                       RET

; ===== FUNCTION FUN_CODE_bebf @ CODE:bebf =====
CODE:bebf  a2 af                    MOV CY,0xaf   ; XREF: CODE:4520 CODE:4525 CODE:452a CODE:452f CODE:4534 CODE:4539 CODE:453e CODE:4543 CODE:1a20 CODE:bae8 CODE:3c2b CODE:3c30 CODE:3d1b CODE:3d20 CODE:3e21 
CODE:bec1  92 32                    MOV 0x32,CY
CODE:bec3  c2 af                    CLR 0xaf
CODE:bec5  8f f7                    MOV 0xf7,R7
CODE:bec7  e4                       CLR A
CODE:bec8  f5 fc                    MOV 0xfc,A
CODE:beca  75 f2 e6                 MOV 0xf2,#0xe6
CODE:becd  75 f3 05                 MOV 0xf3,#0x5
CODE:bed0  75 f4 0a                 MOV 0xf4,#0xa
CODE:bed3  75 f5 09                 MOV 0xf5,#0x9
CODE:bed6  75 f6 06                 MOV 0xf6,#0x6
CODE:bed9  00                       NOP
CODE:beda  00                       NOP
CODE:bedb  00                       NOP
CODE:bedc  00                       NOP
CODE:bedd  00                       NOP
CODE:bede  00                       NOP
CODE:bedf  00                       NOP
CODE:bee0  00                       NOP
CODE:bee1  f5 f2                    MOV 0xf2,A
CODE:bee3  f5 f3                    MOV 0xf3,A
CODE:bee5  f5 f4                    MOV 0xf4,A
CODE:bee7  f5 f5                    MOV 0xf5,A
CODE:bee9  f5 f6                    MOV 0xf6,A
CODE:beeb  a2 32                    MOV CY,0x32
CODE:beed  92 af                    MOV 0xaf,CY
CODE:beef  22                       RET

; ===== FUNCTION FUN_CODE_bef0 @ CODE:bef0 =====
CODE:bef0  90 09 09                 MOV DPTR,#0x909   ; XREF: CODE:bf8c CODE:bf91 
CODE:bef3  e0                       MOVX A,@DPTR
CODE:bef4  fc                       MOV R4,A
CODE:bef5  a3                       INC DPTR
CODE:bef6  e0                       MOVX A,@DPTR
CODE:bef7  fd                       MOV R5,A
CODE:bef8  a3                       INC DPTR
CODE:bef9  e0                       MOVX A,@DPTR
CODE:befa  fe                       MOV R6,A
CODE:befb  a3                       INC DPTR
CODE:befc  e0                       MOVX A,@DPTR
CODE:befd  ff                       MOV R7,A
CODE:befe  12 81 45                 LCALL 0x8145

; ===== FUNCTION FUN_CODE_bf01 @ CODE:bf01 =====
CODE:bf01  e4                       CLR A   ; XREF: CODE:afe4 CODE:b9a9 CODE:b9bf CODE:b9d5 CODE:b9e0 CODE:c19f CODE:c1b9 CODE:b3ac CODE:b3c2 CODE:b3d8 CODE:b3e3 CODE:bf87 CODE:c1c2 
CODE:bf02  fe                       MOV R6,A
LAB_CODE_bf03:
CODE:bf03  c2 83                    CLR 0x83   ; XREF: CODE:bf1b 
CODE:bf05  ef                       MOV A,R7
CODE:bf06  30 e7 04                 JNB 0xe7,0xbf0d
CODE:bf09  d2 84                    SETB 0x84
CODE:bf0b  80 02                    SJMP 0xbf0f
LAB_CODE_bf0d:
CODE:bf0d  c2 84                    CLR 0x84   ; XREF: CODE:bf06 
LAB_CODE_bf0f:
CODE:bf0f  ef                       MOV A,R7   ; XREF: CODE:bf0b 
CODE:bf10  25 e0                    ADD A,A
CODE:bf12  ff                       MOV R7,A
CODE:bf13  00                       NOP
CODE:bf14  00                       NOP
CODE:bf15  d2 83                    SETB 0x83
CODE:bf17  00                       NOP
CODE:bf18  00                       NOP
CODE:bf19  0e                       INC R6
CODE:bf1a  ee                       MOV A,R6
CODE:bf1b  b4 08 e5                 CJNE A,#0x8,0xbf03
CODE:bf1e  22                       RET

; ===== FUNCTION FUN_CODE_bf79 @ CODE:bf79 =====
CODE:bf79  90 09 09                 MOV DPTR,#0x909   ; XREF: CODE:3d8b 
CODE:bf7c  12 81 93                 LCALL 0x8193
CODE:bf7f  12 c1 b4                 LCALL 0xc1b4
CODE:bf82  12 00 46                 LCALL 0x0046
CODE:bf85  7f 81                    MOV R7,#0x81
CODE:bf87  12 bf 01                 LCALL 0xbf01
CODE:bf8a  78 10                    MOV R0,#0x10
CODE:bf8c  12 be f0                 LCALL 0xbef0
CODE:bf8f  78 08                    MOV R0,#0x8
CODE:bf91  12 be f0                 LCALL 0xbef0
CODE:bf94  90 09 09                 MOV DPTR,#0x909
CODE:bf97  a3                       INC DPTR
CODE:bf98  a3                       INC DPTR
CODE:bf99  12 c1 bf                 LCALL 0xc1bf
LAB_CODE_bf9c:
CODE:bf9c  12 c1 9a                 LCALL 0xc19a   ; XREF: CODE:bfa0 
CODE:bf9f  ef                       MOV A,R7
CODE:bfa0  20 e0 f9                 JB 0xe0,0xbf9c
CODE:bfa3  22                       RET

; ===== FUNCTION FUN_CODE_bfa4 @ CODE:bfa4 =====
CODE:bfa4  79 57                    MOV R1,#0x57   ; XREF: CODE:3b3c 
CODE:bfa6  e7                       MOV A,@R1
CODE:bfa7  d3                       SETB CY
CODE:bfa8  78 1b                    MOV R0,#0x1b
CODE:bfaa  96                       SUBB A,@R0
CODE:bfab  40 21                    JC 0xbfce
CODE:bfad  e4                       CLR A
CODE:bfae  78 57                    MOV R0,#0x57
CODE:bfb0  f6                       MOV @R0,A
CODE:bfb1  12 76 eb                 LCALL 0x76eb
CODE:bfb4  d3                       SETB CY
CODE:bfb5  90 04 5c                 MOV DPTR,#0x45c
CODE:bfb8  e0                       MOVX A,@DPTR
CODE:bfb9  94 c8                    SUBB A,#0xc8
CODE:bfbb  90 04 5b                 MOV DPTR,#0x45b
CODE:bfbe  e0                       MOVX A,@DPTR
CODE:bfbf  94 00                    SUBB A,#0x0
CODE:bfc1  40 0b                    JC 0xbfce
CODE:bfc3  12 a9 a2                 LCALL 0xa9a2
CODE:bfc6  78 59                    MOV R0,#0x59
CODE:bfc8  e6                       MOV A,@R0
CODE:bfc9  b4 55 02                 CJNE A,#0x55,0xbfce
CODE:bfcc  76 aa                    MOV @R0,#0xaa
LAB_CODE_bfce:
CODE:bfce  22                       RET   ; XREF: CODE:bfab CODE:bfc1 CODE:bfc9 

; ===== FUNCTION FUN_CODE_c044 @ CODE:c044 =====
CODE:c044  90 08 f5                 MOV DPTR,#0x8f5   ; XREF: CODE:2e83 
CODE:c047  ef                       MOV A,R7
CODE:c048  f0                       MOVX @DPTR,A
CODE:c049  e4                       CLR A
CODE:c04a  90 08 f7                 MOV DPTR,#0x8f7
CODE:c04d  f0                       MOVX @DPTR,A
LAB_CODE_c04e:
CODE:c04e  90 08 f7                 MOV DPTR,#0x8f7   ; XREF: CODE:c066 
CODE:c051  e0                       MOVX A,@DPTR
CODE:c052  ff                       MOV R7,A
CODE:c053  c3                       CLR CY
CODE:c054  94 06                    SUBB A,#0x6
CODE:c056  50 10                    JNC 0xc068
CODE:c058  90 08 f5                 MOV DPTR,#0x8f5
CODE:c05b  e0                       MOVX A,@DPTR
CODE:c05c  fd                       MOV R5,A
CODE:c05d  12 98 0f                 LCALL 0x980f
CODE:c060  90 08 f7                 MOV DPTR,#0x8f7
CODE:c063  e0                       MOVX A,@DPTR
CODE:c064  04                       INC A
CODE:c065  f0                       MOVX @DPTR,A
CODE:c066  80 e6                    SJMP 0xc04e
LAB_CODE_c068:
CODE:c068  22                       RET   ; XREF: CODE:c056 

; ===== FUNCTION FUN_CODE_c069 @ CODE:c069 =====
CODE:c069  90 07 ca                 MOV DPTR,#0x7ca   ; XREF: CODE:935c 
CODE:c06c  74 02                    MOV A,#0x2
CODE:c06e  f0                       MOVX @DPTR,A
CODE:c06f  30 00 11                 JNB 0x00,0xc083
CODE:c072  90 07 c5                 MOV DPTR,#0x7c5
CODE:c075  e0                       MOVX A,@DPTR
CODE:c076  90 07 cb                 MOV DPTR,#0x7cb
CODE:c079  f0                       MOVX @DPTR,A
CODE:c07a  90 07 c6                 MOV DPTR,#0x7c6
CODE:c07d  e0                       MOVX A,@DPTR
CODE:c07e  90 07 cc                 MOV DPTR,#0x7cc
CODE:c081  f0                       MOVX @DPTR,A
CODE:c082  22                       RET
LAB_CODE_c083:
CODE:c083  e4                       CLR A   ; XREF: CODE:c06f 
CODE:c084  90 07 cb                 MOV DPTR,#0x7cb
CODE:c087  f0                       MOVX @DPTR,A
CODE:c088  a3                       INC DPTR
CODE:c089  f0                       MOVX @DPTR,A
CODE:c08a  22                       RET

; ===== FUNCTION FUN_CODE_c08b @ CODE:c08b =====
CODE:c08b  12 c0 c6                 LCALL 0xc0c6   ; XREF: CODE:44c9 
CODE:c08e  12 00 16                 LCALL 0x0016
CODE:c091  7f f4                    MOV R7,#0xf4
CODE:c093  7e 01                    MOV R6,#0x1
CODE:c095  12 bd 5a                 LCALL 0xbd5a
CODE:c098  12 ae 85                 LCALL 0xae85
CODE:c09b  12 c1 53                 LCALL 0xc153
CODE:c09e  12 62 14                 LCALL 0x6214
CODE:c0a1  12 c1 e3                 LCALL 0xc1e3
CODE:c0a4  12 c1 13                 LCALL 0xc113
CODE:c0a7  02 b5 ef                 LJMP 0xb5ef

; ===== FUNCTION FUN_CODE_c0aa @ CODE:c0aa =====
CODE:c0aa  e4                       CLR A   ; XREF: CODE:44dc 
CODE:c0ab  90 07 56                 MOV DPTR,#0x756
CODE:c0ae  f0                       MOVX @DPTR,A
CODE:c0af  90 07 05                 MOV DPTR,#0x705
CODE:c0b2  f0                       MOVX @DPTR,A
CODE:c0b3  90 07 a7                 MOV DPTR,#0x7a7
CODE:c0b6  f0                       MOVX @DPTR,A
CODE:c0b7  90 08 1a                 MOV DPTR,#0x81a
CODE:c0ba  f0                       MOVX @DPTR,A
CODE:c0bb  c2 00                    CLR 0x00
CODE:c0bd  c2 01                    CLR 0x01
CODE:c0bf  c2 02                    CLR 0x02
CODE:c0c1  c2 03                    CLR 0x03
CODE:c0c3  c2 04                    CLR 0x04
CODE:c0c5  22                       RET

; ===== FUNCTION FUN_CODE_c0c6 @ CODE:c0c6 =====
CODE:c0c6  75 b2 08                 MOV 0xb2,#0x8   ; XREF: CODE:c08b 
CODE:c0c9  7f 05                    MOV R7,#0x5
CODE:c0cb  7e 00                    MOV R6,#0x0
CODE:c0cd  12 bd 5a                 LCALL 0xbd5a
CODE:c0d0  75 bc 02                 MOV 0xbc,#0x2
CODE:c0d3  7f c8                    MOV R7,#0xc8
CODE:c0d5  7e 00                    MOV R6,#0x0
CODE:c0d7  12 bd 5a                 LCALL 0xbd5a
CODE:c0da  75 bc 03                 MOV 0xbc,#0x3
CODE:c0dd  75 b2 0c                 MOV 0xb2,#0xc
CODE:c0e0  22                       RET

; ===== FUNCTION FUN_CODE_c0e1 @ CODE:c0e1 =====
CODE:c0e1  78 ff                    MOV R0,#0xff   ; XREF: CODE:0000 
CODE:c0e3  e4                       CLR A
LAB_CODE_c0e4:
CODE:c0e4  f6                       MOV @R0,A   ; XREF: CODE:c0e5 
CODE:c0e5  d8 fd                    DJNZ R0,0xc0e4
CODE:c0e7  90 00 00                 MOV DPTR,#0x0
CODE:c0ea  7f 00                    MOV R7,#0x0
CODE:c0ec  7e 10                    MOV R6,#0x10
CODE:c0ee  e4                       CLR A
LAB_CODE_c0ef:
CODE:c0ef  f0                       MOVX @DPTR,A   ; XREF: CODE:c0f1 CODE:c0f3 
CODE:c0f0  a3                       INC DPTR
CODE:c0f1  df fc                    DJNZ R7,0xc0ef
CODE:c0f3  de fa                    DJNZ R6,0xc0ef
CODE:c0f5  75 81 6e                 MOV 0x81,#0x6e
CODE:c0f8  02 44 c2                 LJMP 0x44c2

; ===== FUNCTION FUN_CODE_c113 @ CODE:c113 =====
CODE:c113  75 91 c0                 MOV 0x91,#0xc0   ; XREF: CODE:c0a4 CODE:8cfc 
CODE:c116  e4                       CLR A
CODE:c117  f5 96                    MOV 0x96,A
CODE:c119  75 94 5f                 MOV 0x94,#0x5f
CODE:c11c  75 95 11                 MOV 0x95,#0x11
CODE:c11f  90 09 1c                 MOV DPTR,#0x91c
CODE:c122  f0                       MOVX @DPTR,A
CODE:c123  90 09 1e                 MOV DPTR,#0x91e
CODE:c126  f0                       MOVX @DPTR,A
CODE:c127  c2 23                    CLR 0x23
CODE:c129  22                       RET

; ===== FUNCTION FUN_CODE_c140 @ CODE:c140 =====
CODE:c140  90 09 1b                 MOV DPTR,#0x91b   ; XREF: CODE:8ce3 
CODE:c143  e0                       MOVX A,@DPTR
CODE:c144  d3                       SETB CY
CODE:c145  94 c8                    SUBB A,#0xc8
CODE:c147  40 03                    JC 0xc14c
CODE:c149  d2 20                    SETB 0x20
CODE:c14b  22                       RET
LAB_CODE_c14c:
CODE:c14c  90 09 1b                 MOV DPTR,#0x91b   ; XREF: CODE:c147 
CODE:c14f  e0                       MOVX A,@DPTR
CODE:c150  04                       INC A
CODE:c151  f0                       MOVX @DPTR,A
CODE:c152  22                       RET

; ===== FUNCTION FUN_CODE_c153 @ CODE:c153 =====
CODE:c153  75 cd fe                 MOV 0xcd,#0xfe   ; XREF: CODE:c09b 
CODE:c156  75 cc 6f                 MOV 0xcc,#0x6f
CODE:c159  75 cb fe                 MOV 0xcb,#0xfe
CODE:c15c  75 ca 6f                 MOV 0xca,#0x6f
CODE:c15f  e4                       CLR A
CODE:c160  f5 c9                    MOV 0xc9,A
CODE:c162  f5 c8                    MOV 0xc8,A
CODE:c164  22                       RET

; ===== FUNCTION FUN_CODE_c189 @ CODE:c189 =====
CODE:c189  e4                       CLR A   ; XREF: CODE:44d1 
CODE:c18a  78 62                    MOV R0,#0x62
CODE:c18c  f6                       MOV @R0,A
CODE:c18d  c2 07                    CLR 0x07
CODE:c18f  c2 11                    CLR 0x11
CODE:c191  12 bb dd                 LCALL 0xbbdd
CODE:c194  12 bc 1e                 LCALL 0xbc1e
CODE:c197  02 ac 41                 LJMP 0xac41

; ===== FUNCTION FUN_CODE_c19a @ CODE:c19a =====
CODE:c19a  12 00 46                 LCALL 0x0046   ; XREF: CODE:aff8 CODE:b3e9 CODE:bf9c 
CODE:c19d  7f 05                    MOV R7,#0x5
CODE:c19f  12 bf 01                 LCALL 0xbf01
CODE:c1a2  12 00 1e                 LCALL 0x001e
CODE:c1a5  12 c1 c5                 LCALL 0xc1c5
CODE:c1a8  22                       RET

; ===== FUNCTION FUN_CODE_c1a9 @ CODE:c1a9 =====
CODE:c1a9  c2 af                    CLR 0xaf   ; XREF: CODE:3bb6 
CODE:c1ab  75 f0 a5                 MOV B,#0xa5
CODE:c1ae  74 5a                    MOV A,#0x5a
CODE:c1b0  02 ff 00                 LJMP 0xff00

; ===== FUNCTION FUN_CODE_c1b4 @ CODE:c1b4 =====
CODE:c1b4  12 00 46                 LCALL 0x0046   ; XREF: CODE:afdc CODE:b3a4 CODE:bf7f 
CODE:c1b7  7f 06                    MOV R7,#0x6
CODE:c1b9  12 bf 01                 LCALL 0xbf01
CODE:c1bc  02 c1 c5                 LJMP 0xc1c5

; ===== FUNCTION FUN_CODE_c1bf @ CODE:c1bf =====
CODE:c1bf  a3                       INC DPTR   ; XREF: CODE:b3e6 CODE:bf99 
CODE:c1c0  e0                       MOVX A,@DPTR
CODE:c1c1  ff                       MOV R7,A
CODE:c1c2  12 bf 01                 LCALL 0xbf01

; ===== FUNCTION FUN_CODE_c1c5 @ CODE:c1c5 =====
CODE:c1c5  d2 8d                    SETB 0x8d   ; XREF: CODE:afe7 CODE:b9e6 CODE:c1a5 CODE:c1bc 
CODE:c1c7  22                       RET

; ===== FUNCTION FUN_CODE_c1c8 @ CODE:c1c8 =====
CODE:c1c8  c2 08                    CLR 0x08   ; XREF: CODE:44cc 
CODE:c1ca  c2 01                    CLR 0x01
CODE:c1cc  c2 2f                    CLR 0x2f
CODE:c1ce  22                       RET

; ===== FUNCTION FUN_CODE_c1dd @ CODE:c1dd =====
CODE:c1dd  75 e8 00                 MOV 0xe8,#0x0   ; XREF: CODE:000b 
CODE:c1e0  d2 34                    SETB 0x34
CODE:c1e2  32                       RETI

; ===== FUNCTION FUN_CODE_c1e3 @ CODE:c1e3 =====
CODE:c1e3  e4                       CLR A   ; XREF: CODE:c0a1 
CODE:c1e4  f5 b3                    MOV 0xb3,A
CODE:c1e6  f5 89                    MOV 0x89,A
CODE:c1e8  22                       RET

; ===== FUNCTION FUN_CODE_c1e9 @ CODE:c1e9 =====
CODE:c1e9  d2 83                    SETB 0x83   ; XREF: CODE:0030 
CODE:c1eb  22                       RET
