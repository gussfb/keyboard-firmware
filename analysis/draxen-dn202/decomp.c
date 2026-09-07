// ===== RESET @ CODE:0000 =====

void RESET(void)

{
  undefined1 *puVar1;
  char cVar2;
  char cVar3;
  undefined1 *puVar4;
  
  puVar1 = (undefined1 *)0xff;
  do {
    *puVar1 = 0;
    puVar1 = puVar1 + -1;
  } while (puVar1 != (undefined1 *)0x0);
  puVar4 = (undefined1 *)0x0;
  cVar3 = '\0';
  cVar2 = '\t';
  do {
    do {
      *puVar4 = 0;
      puVar4 = puVar4 + 1;
      cVar3 = cVar3 + -1;
    } while (cVar3 != '\0');
    cVar2 = cVar2 + -1;
  } while (cVar2 != '\0');
  SP_ = 0x7e;
  FUN_CODE_583d();
  return;
}


// ===== ISR_03 @ CODE:0003 =====

undefined1 ISR_03(undefined1 param_1)

{
  char cVar1;
  undefined1 uVar2;
  undefined1 uVar3;
  undefined1 uVar4;
  undefined1 uVar5;
  undefined1 uVar6;
  undefined1 uVar7;
  undefined1 uVar8;
  undefined1 uVar9;
  undefined1 uVar10;
  undefined1 uVar11;
  char cVar12;
  
  uVar11 = BANK0_R7;
  uVar10 = BANK0_R6;
  uVar9 = BANK0_R5;
  uVar8 = BANK0_R4;
  uVar7 = BANK0_R3;
  uVar6 = BANK0_R2;
  uVar5 = BANK0_R1;
  uVar4 = BANK0_R0;
  uVar2 = DAT_SFR_86;
  uVar3 = WCON;
  TF2 = 0;
  cVar1 = DAT_INTMEM_5b + '\x01';
  cVar12 = DAT_INTMEM_5b + '\x02';
  DAT_INTMEM_5b = cVar1;
  if (cVar1 == -1) {
    DAT_INTMEM_5b = '\0';
  }
  if (_3_3 != '\x01') {
    FUN_CODE_0056(cVar12);
  }
  WCON = uVar3;
  DAT_SFR_86 = uVar2;
  BANK0_R7 = uVar11;
  BANK0_R6 = uVar10;
  BANK0_R5 = uVar9;
  BANK0_R4 = uVar8;
  BANK0_R3 = uVar7;
  BANK0_R2 = uVar6;
  BANK0_R1 = uVar5;
  BANK0_R0 = uVar4;
  return param_1;
}


// ===== FUN_CODE_0006 @ CODE:0006 =====

void FUN_CODE_0006(void)

{
  byte bVar1;
  
  bVar1 = DAT_SFR_b6;
  DAT_SFR_b6 = bVar1 & 0xfd;
  return;
}


// ===== FUN_CODE_000a @ CODE:000a =====

void FUN_CODE_000a(void)

{
  return;
}


// ===== ISR_0B @ CODE:000b =====

void ISR_0B(void)

{
  HIFLG = 0;
  _5_2 = 1;
  return;
}


// ===== FUN_CODE_000e @ CODE:000e =====

void FUN_CODE_000e(void)

{
  byte bVar1;
  
  bVar1 = DAT_SFR_b6;
  DAT_SFR_b6 = bVar1 & 0xfe;
  return;
}


// ===== FUN_CODE_0012 @ CODE:0012 =====

void FUN_CODE_0012(void)

{
  return;
}


// ===== ISR_13 @ CODE:0013 =====

void ISR_13(void)

{
  byte bVar1;
  
  bVar1 = DAT_SFR_b6;
  DAT_SFR_b6 = bVar1 & 0xfd;
  return;
}


// ===== FUN_CODE_0016 @ CODE:0016 =====

void FUN_CODE_0016(void)

{
  FADDR = 1;
  return;
}


// ===== FUN_CODE_001a @ CODE:001a =====

void FUN_CODE_001a(void)

{
  return;
}


// ===== ISR_1B @ CODE:001b =====

void ISR_1B(void)

{
  byte bVar1;
  
  bVar1 = DAT_SFR_b6;
  DAT_SFR_b6 = bVar1 & 0xfe;
  return;
}


// ===== FUN_CODE_001e @ CODE:001e =====

void FUN_CODE_001e(void)

{
  DAT_EXTMEM_0240 = 0;
  DAT_EXTMEM_01ff = 0;
  DAT_EXTMEM_0281 = 0;
  DAT_EXTMEM_02e4 = 0;
  _0_0 = 0;
  _0_1 = 0;
  _0_2 = 0;
  _0_3 = 0;
  _0_4 = 0;
  return;
}


// ===== ISR_23 @ CODE:0023 =====

void ISR_23(undefined1 param_1)

{
  DAT_EXTMEM_01ff = param_1;
  DAT_EXTMEM_0281 = param_1;
  DAT_EXTMEM_02e4 = param_1;
  _0_0 = 0;
  _0_1 = 0;
  _0_2 = 0;
  _0_3 = 0;
  _0_4 = 0;
  return;
}


// ===== ISR_2B @ CODE:002b =====

void ISR_2B(undefined1 param_1)

{
  DAT_EXTMEM_02e4 = param_1;
  _0_0 = 0;
  _0_1 = 0;
  _0_2 = 0;
  _0_3 = 0;
  _0_4 = 0;
  return;
}


// ===== ISR_33 @ CODE:0033 =====

void ISR_33(void)

{
  _0_2 = 0;
  _0_3 = 0;
  _0_4 = 0;
  return;
}


// ===== ISR_3B @ CODE:003b =====

undefined1 ISR_3B(undefined1 param_1)

{
  undefined1 uVar1;
  undefined1 uVar2;
  undefined1 uVar3;
  undefined1 uVar4;
  undefined1 uVar5;
  undefined1 uVar6;
  undefined1 uVar7;
  undefined1 uVar8;
  undefined1 uVar9;
  undefined1 uVar10;
  
  uVar10 = BANK0_R7;
  uVar9 = BANK0_R6;
  uVar8 = BANK0_R5;
  uVar7 = BANK0_R4;
  uVar6 = BANK0_R3;
  uVar5 = BANK0_R2;
  uVar4 = BANK0_R1;
  uVar3 = BANK0_R0;
  uVar1 = DAT_SFR_86;
  uVar2 = WCON;
  FUN_CODE_6b90();
  WCON = uVar2;
  DAT_SFR_86 = uVar1;
  BANK0_R7 = uVar10;
  BANK0_R6 = uVar9;
  BANK0_R5 = uVar8;
  BANK0_R4 = uVar7;
  BANK0_R3 = uVar6;
  BANK0_R2 = uVar5;
  BANK0_R1 = uVar4;
  BANK0_R0 = uVar3;
  return param_1;
}


// ===== ISR_43 @ CODE:0043 =====

void ISR_43(void)

{
  return;
}


// ===== ISR_4B @ CODE:004b =====

void ISR_4B(void)

{
  return;
}


// ===== ISR_53 @ CODE:0053 =====

void ISR_53(void)

{
  return;
}


// ===== FUN_CODE_0056 @ CODE:0056 =====

char FUN_CODE_0056(void)

{
  byte bVar1;
  char cVar2;
  
  if (0x16 < DAT_INTMEM_53) {
    cVar2 = FUN_CODE_0e57();
    return cVar2;
  }
  cVar2 = FUN_CODE_79c4(DAT_INTMEM_53 - 0x17);
  if (_3_2 != '\0') {
    return cVar2;
  }
  if (DAT_INTMEM_76 != '\x02') {
    cVar2 = FUN_CODE_01ca(DAT_INTMEM_76);
    return cVar2;
  }
  if (DAT_INTMEM_5a == '\0') {
    DAT_INTMEM_3f = 0xff;
    DAT_INTMEM_40 = 0xff;
    DAT_INTMEM_41 = DAT_INTMEM_55;
    goto LAB_CODE_00e4;
  }
  if (DAT_INTMEM_5a == '\x01') {
    DAT_INTMEM_3f = 0xff;
LAB_CODE_00cd:
    DAT_INTMEM_40 = DAT_INTMEM_55;
  }
  else {
    if (DAT_INTMEM_5a != '\x02') {
      if (DAT_INTMEM_5a == '\x03') {
        DAT_INTMEM_3f = 0xff;
      }
      else {
        if (DAT_INTMEM_5a == '\x04') {
          DAT_INTMEM_3f = DAT_INTMEM_55;
          DAT_INTMEM_40 = 0xff;
          DAT_INTMEM_41 = DAT_INTMEM_55;
          goto LAB_CODE_00e4;
        }
        if (DAT_INTMEM_5a == '\x05') {
          DAT_INTMEM_3f = DAT_INTMEM_55;
          goto LAB_CODE_00cd;
        }
        if (DAT_INTMEM_5a != '\x06') goto LAB_CODE_00e4;
        DAT_INTMEM_3f = DAT_INTMEM_55;
      }
      DAT_INTMEM_40 = DAT_INTMEM_55;
      DAT_INTMEM_41 = DAT_INTMEM_55;
      goto LAB_CODE_00e4;
    }
    DAT_INTMEM_3f = DAT_INTMEM_55;
    DAT_INTMEM_40 = 0xff;
  }
  DAT_INTMEM_41 = 0xff;
LAB_CODE_00e4:
  *(undefined1 *)(ushort)DAT_INTMEM_53 = DAT_INTMEM_3f;
  *(undefined1 *)CONCAT11(-(((0x6a < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x95) =
       DAT_INTMEM_40;
  *(undefined1 *)CONCAT11('\x01' - (((0xd5 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x2a) =
       DAT_INTMEM_41;
  *(undefined1 *)CONCAT11(-(((0xe8 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x17) =
       DAT_INTMEM_3f;
  *(undefined1 *)CONCAT11(-(((0x53 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0xac) =
       DAT_INTMEM_40;
  *(undefined1 *)CONCAT11('\x01' - (((0xbe < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x41) =
       DAT_INTMEM_41;
  *(undefined1 *)CONCAT11(-(((0xd1 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x2e) =
       DAT_INTMEM_3f;
  *(undefined1 *)CONCAT11(-(((0x3c < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 - 0x3d) =
       DAT_INTMEM_40;
  *(undefined1 *)CONCAT11('\x01' - (((0xa7 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x58) =
       DAT_INTMEM_41;
  *(undefined1 *)CONCAT11(-(((0xba < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x45) =
       DAT_INTMEM_3f;
  *(undefined1 *)CONCAT11(-(((0x25 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 - 0x26) =
       DAT_INTMEM_40;
  *(undefined1 *)CONCAT11('\x01' - (((0x90 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x6f) =
       DAT_INTMEM_41;
  *(undefined1 *)CONCAT11(-(((0xa3 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x5c) =
       DAT_INTMEM_3f;
  *(undefined1 *)CONCAT11(-(((0xe < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 - 0xf) = DAT_INTMEM_40;
  *(undefined1 *)CONCAT11('\x01' - (((0x79 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x86) =
       DAT_INTMEM_41;
  *(undefined1 *)CONCAT11(-(((0x8c < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x73) =
       DAT_INTMEM_3f;
  *(undefined1 *)CONCAT11('\x01' - (((0xf7 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 8) =
       DAT_INTMEM_40;
  *(undefined1 *)CONCAT11('\x01' - (((0x62 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x9d) =
       DAT_INTMEM_41;
  if (DAT_INTMEM_7a != '\0') {
    FUN_CODE_6580(DAT_INTMEM_53);
  }
  bVar1 = DAT_INTMEM_53 + 1;
  cVar2 = DAT_INTMEM_53 - 0x1a;
  DAT_INTMEM_53 = bVar1;
  if (0x1a < bVar1) {
    cVar2 = '\0';
    DAT_INTMEM_53 = 0;
  }
  return cVar2;
}


// ===== ISR_5B @ CODE:005b =====

char ISR_5B(char *param_1)

{
  byte bVar1;
  char cVar2;
  char in_PSW;
  
  *param_1 = *param_1 + -1;
  if (-1 < in_PSW) {
    cVar2 = FUN_CODE_0e57();
    return cVar2;
  }
  cVar2 = FUN_CODE_79c4();
  if (_3_2 != '\0') {
    return cVar2;
  }
  if (DAT_INTMEM_76 != '\x02') {
    cVar2 = FUN_CODE_01ca(DAT_INTMEM_76);
    return cVar2;
  }
  if (DAT_INTMEM_5a == '\0') {
    DAT_INTMEM_3f = 0xff;
    DAT_INTMEM_40 = 0xff;
    DAT_INTMEM_41 = DAT_INTMEM_55;
    goto LAB_CODE_00e4;
  }
  if (DAT_INTMEM_5a == '\x01') {
    DAT_INTMEM_3f = 0xff;
LAB_CODE_00cd:
    DAT_INTMEM_40 = DAT_INTMEM_55;
  }
  else {
    if (DAT_INTMEM_5a != '\x02') {
      if (DAT_INTMEM_5a == '\x03') {
        DAT_INTMEM_3f = 0xff;
      }
      else {
        if (DAT_INTMEM_5a == '\x04') {
          DAT_INTMEM_3f = DAT_INTMEM_55;
          DAT_INTMEM_40 = 0xff;
          DAT_INTMEM_41 = DAT_INTMEM_55;
          goto LAB_CODE_00e4;
        }
        if (DAT_INTMEM_5a == '\x05') {
          DAT_INTMEM_3f = DAT_INTMEM_55;
          goto LAB_CODE_00cd;
        }
        if (DAT_INTMEM_5a != '\x06') goto LAB_CODE_00e4;
        DAT_INTMEM_3f = DAT_INTMEM_55;
      }
      DAT_INTMEM_40 = DAT_INTMEM_55;
      DAT_INTMEM_41 = DAT_INTMEM_55;
      goto LAB_CODE_00e4;
    }
    DAT_INTMEM_3f = DAT_INTMEM_55;
    DAT_INTMEM_40 = 0xff;
  }
  DAT_INTMEM_41 = 0xff;
LAB_CODE_00e4:
  *(undefined1 *)(ushort)DAT_INTMEM_53 = DAT_INTMEM_3f;
  *(undefined1 *)CONCAT11(-(((0x6a < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x95) =
       DAT_INTMEM_40;
  *(undefined1 *)CONCAT11('\x01' - (((0xd5 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x2a) =
       DAT_INTMEM_41;
  *(undefined1 *)CONCAT11(-(((0xe8 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x17) =
       DAT_INTMEM_3f;
  *(undefined1 *)CONCAT11(-(((0x53 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0xac) =
       DAT_INTMEM_40;
  *(undefined1 *)CONCAT11('\x01' - (((0xbe < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x41) =
       DAT_INTMEM_41;
  *(undefined1 *)CONCAT11(-(((0xd1 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x2e) =
       DAT_INTMEM_3f;
  *(undefined1 *)CONCAT11(-(((0x3c < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 - 0x3d) =
       DAT_INTMEM_40;
  *(undefined1 *)CONCAT11('\x01' - (((0xa7 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x58) =
       DAT_INTMEM_41;
  *(undefined1 *)CONCAT11(-(((0xba < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x45) =
       DAT_INTMEM_3f;
  *(undefined1 *)CONCAT11(-(((0x25 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 - 0x26) =
       DAT_INTMEM_40;
  *(undefined1 *)CONCAT11('\x01' - (((0x90 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x6f) =
       DAT_INTMEM_41;
  *(undefined1 *)CONCAT11(-(((0xa3 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x5c) =
       DAT_INTMEM_3f;
  *(undefined1 *)CONCAT11(-(((0xe < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 - 0xf) = DAT_INTMEM_40;
  *(undefined1 *)CONCAT11('\x01' - (((0x79 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x86) =
       DAT_INTMEM_41;
  *(undefined1 *)CONCAT11(-(((0x8c < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x73) =
       DAT_INTMEM_3f;
  *(undefined1 *)CONCAT11('\x01' - (((0xf7 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 8) =
       DAT_INTMEM_40;
  *(undefined1 *)CONCAT11('\x01' - (((0x62 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x9d) =
       DAT_INTMEM_41;
  if (DAT_INTMEM_7a != '\0') {
    FUN_CODE_6580(DAT_INTMEM_53);
  }
  bVar1 = DAT_INTMEM_53 + 1;
  cVar2 = DAT_INTMEM_53 - 0x1a;
  DAT_INTMEM_53 = bVar1;
  if (0x1a < bVar1) {
    cVar2 = '\0';
    DAT_INTMEM_53 = 0;
  }
  return cVar2;
}


// ===== ISR_63 @ CODE:0063 =====

byte ISR_63(byte param_1)

{
  byte bVar1;
  byte bVar2;
  
  if (_3_2 != '\0') {
    return param_1 >> 4 | param_1 << 4;
  }
  if (DAT_INTMEM_76 != '\x02') {
    bVar1 = FUN_CODE_01ca(DAT_INTMEM_76);
    return bVar1;
  }
  if (DAT_INTMEM_5a == '\0') {
    DAT_INTMEM_3f = 0xff;
    DAT_INTMEM_40 = 0xff;
    DAT_INTMEM_41 = DAT_INTMEM_55;
    goto LAB_CODE_00e4;
  }
  if (DAT_INTMEM_5a == '\x01') {
    DAT_INTMEM_3f = 0xff;
LAB_CODE_00cd:
    DAT_INTMEM_40 = DAT_INTMEM_55;
  }
  else {
    if (DAT_INTMEM_5a != '\x02') {
      if (DAT_INTMEM_5a == '\x03') {
        DAT_INTMEM_3f = 0xff;
      }
      else {
        if (DAT_INTMEM_5a == '\x04') {
          DAT_INTMEM_3f = DAT_INTMEM_55;
          DAT_INTMEM_40 = 0xff;
          DAT_INTMEM_41 = DAT_INTMEM_55;
          goto LAB_CODE_00e4;
        }
        if (DAT_INTMEM_5a == '\x05') {
          DAT_INTMEM_3f = DAT_INTMEM_55;
          goto LAB_CODE_00cd;
        }
        if (DAT_INTMEM_5a != '\x06') goto LAB_CODE_00e4;
        DAT_INTMEM_3f = DAT_INTMEM_55;
      }
      DAT_INTMEM_40 = DAT_INTMEM_55;
      DAT_INTMEM_41 = DAT_INTMEM_55;
      goto LAB_CODE_00e4;
    }
    DAT_INTMEM_3f = DAT_INTMEM_55;
    DAT_INTMEM_40 = 0xff;
  }
  DAT_INTMEM_41 = 0xff;
LAB_CODE_00e4:
  *(undefined1 *)(ushort)DAT_INTMEM_53 = DAT_INTMEM_3f;
  *(undefined1 *)CONCAT11(-(((0x6a < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x95) =
       DAT_INTMEM_40;
  *(undefined1 *)CONCAT11('\x01' - (((0xd5 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x2a) =
       DAT_INTMEM_41;
  *(undefined1 *)CONCAT11(-(((0xe8 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x17) =
       DAT_INTMEM_3f;
  *(undefined1 *)CONCAT11(-(((0x53 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0xac) =
       DAT_INTMEM_40;
  *(undefined1 *)CONCAT11('\x01' - (((0xbe < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x41) =
       DAT_INTMEM_41;
  *(undefined1 *)CONCAT11(-(((0xd1 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x2e) =
       DAT_INTMEM_3f;
  *(undefined1 *)CONCAT11(-(((0x3c < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 - 0x3d) =
       DAT_INTMEM_40;
  *(undefined1 *)CONCAT11('\x01' - (((0xa7 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x58) =
       DAT_INTMEM_41;
  *(undefined1 *)CONCAT11(-(((0xba < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x45) =
       DAT_INTMEM_3f;
  *(undefined1 *)CONCAT11(-(((0x25 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 - 0x26) =
       DAT_INTMEM_40;
  *(undefined1 *)CONCAT11('\x01' - (((0x90 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x6f) =
       DAT_INTMEM_41;
  *(undefined1 *)CONCAT11(-(((0xa3 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x5c) =
       DAT_INTMEM_3f;
  *(undefined1 *)CONCAT11(-(((0xe < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 - 0xf) = DAT_INTMEM_40;
  *(undefined1 *)CONCAT11('\x01' - (((0x79 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x86) =
       DAT_INTMEM_41;
  *(undefined1 *)CONCAT11(-(((0x8c < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x73) =
       DAT_INTMEM_3f;
  *(undefined1 *)CONCAT11('\x01' - (((0xf7 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 8) =
       DAT_INTMEM_40;
  *(undefined1 *)CONCAT11('\x01' - (((0x62 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x9d) =
       DAT_INTMEM_41;
  if (DAT_INTMEM_7a != '\0') {
    FUN_CODE_6580(DAT_INTMEM_53);
  }
  bVar1 = DAT_INTMEM_53 + 1;
  bVar2 = DAT_INTMEM_53 - 0x1a;
  DAT_INTMEM_53 = bVar1;
  if (0x1a < bVar1) {
    bVar2 = 0;
    DAT_INTMEM_53 = 0;
  }
  return bVar2;
}


// ===== ISR_6B @ CODE:006b =====

char ISR_6B(char param_1,undefined1 *param_2)

{
  byte bVar1;
  char cVar2;
  
  *param_2 = 0xe6;
  if (param_1 != '\x02') {
    cVar2 = FUN_CODE_01ca(param_1);
    return cVar2;
  }
  if (DAT_INTMEM_5a == '\0') {
    DAT_INTMEM_3f = 0xff;
    DAT_INTMEM_40 = 0xff;
    DAT_INTMEM_41 = DAT_INTMEM_55;
    goto LAB_CODE_00e4;
  }
  if (DAT_INTMEM_5a == '\x01') {
    DAT_INTMEM_3f = 0xff;
LAB_CODE_00cd:
    DAT_INTMEM_40 = DAT_INTMEM_55;
  }
  else {
    if (DAT_INTMEM_5a != '\x02') {
      if (DAT_INTMEM_5a == '\x03') {
        DAT_INTMEM_3f = 0xff;
      }
      else {
        if (DAT_INTMEM_5a == '\x04') {
          DAT_INTMEM_3f = DAT_INTMEM_55;
          DAT_INTMEM_40 = 0xff;
          DAT_INTMEM_41 = DAT_INTMEM_55;
          goto LAB_CODE_00e4;
        }
        if (DAT_INTMEM_5a == '\x05') {
          DAT_INTMEM_3f = DAT_INTMEM_55;
          goto LAB_CODE_00cd;
        }
        if (DAT_INTMEM_5a != '\x06') goto LAB_CODE_00e4;
        DAT_INTMEM_3f = DAT_INTMEM_55;
      }
      DAT_INTMEM_40 = DAT_INTMEM_55;
      DAT_INTMEM_41 = DAT_INTMEM_55;
      goto LAB_CODE_00e4;
    }
    DAT_INTMEM_3f = DAT_INTMEM_55;
    DAT_INTMEM_40 = 0xff;
  }
  DAT_INTMEM_41 = 0xff;
LAB_CODE_00e4:
  *(undefined1 *)(ushort)DAT_INTMEM_53 = DAT_INTMEM_3f;
  *(undefined1 *)CONCAT11(-(((0x6a < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x95) =
       DAT_INTMEM_40;
  *(undefined1 *)CONCAT11('\x01' - (((0xd5 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x2a) =
       DAT_INTMEM_41;
  *(undefined1 *)CONCAT11(-(((0xe8 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x17) =
       DAT_INTMEM_3f;
  *(undefined1 *)CONCAT11(-(((0x53 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0xac) =
       DAT_INTMEM_40;
  *(undefined1 *)CONCAT11('\x01' - (((0xbe < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x41) =
       DAT_INTMEM_41;
  *(undefined1 *)CONCAT11(-(((0xd1 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x2e) =
       DAT_INTMEM_3f;
  *(undefined1 *)CONCAT11(-(((0x3c < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 - 0x3d) =
       DAT_INTMEM_40;
  *(undefined1 *)CONCAT11('\x01' - (((0xa7 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x58) =
       DAT_INTMEM_41;
  *(undefined1 *)CONCAT11(-(((0xba < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x45) =
       DAT_INTMEM_3f;
  *(undefined1 *)CONCAT11(-(((0x25 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 - 0x26) =
       DAT_INTMEM_40;
  *(undefined1 *)CONCAT11('\x01' - (((0x90 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x6f) =
       DAT_INTMEM_41;
  *(undefined1 *)CONCAT11(-(((0xa3 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x5c) =
       DAT_INTMEM_3f;
  *(undefined1 *)CONCAT11(-(((0xe < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 - 0xf) = DAT_INTMEM_40;
  *(undefined1 *)CONCAT11('\x01' - (((0x79 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x86) =
       DAT_INTMEM_41;
  *(undefined1 *)CONCAT11(-(((0x8c < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x73) =
       DAT_INTMEM_3f;
  *(undefined1 *)CONCAT11('\x01' - (((0xf7 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 8) =
       DAT_INTMEM_40;
  *(undefined1 *)CONCAT11('\x01' - (((0x62 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x9d) =
       DAT_INTMEM_41;
  if (DAT_INTMEM_7a != '\0') {
    FUN_CODE_6580(DAT_INTMEM_53);
  }
  bVar1 = DAT_INTMEM_53 + 1;
  cVar2 = DAT_INTMEM_53 - 0x1a;
  DAT_INTMEM_53 = bVar1;
  if (0x1a < bVar1) {
    cVar2 = '\0';
    DAT_INTMEM_53 = 0;
  }
  return cVar2;
}


// ===== ISR_73 @ CODE:0073 =====

char ISR_73(undefined1 *param_1)

{
  byte bVar1;
  char cVar2;
  
  DAT_INTMEM_3f = *param_1;
  DAT_INTMEM_41 = 0xff;
  *(undefined1 *)(ushort)DAT_INTMEM_53 = DAT_INTMEM_3f;
  *(undefined1 *)CONCAT11(-(((0x6a < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x95) =
       DAT_INTMEM_3f;
  *(undefined1 *)CONCAT11('\x01' - (((0xd5 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x2a) = 0xff
  ;
  *(undefined1 *)CONCAT11(-(((0xe8 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x17) =
       DAT_INTMEM_3f;
  *(undefined1 *)CONCAT11(-(((0x53 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0xac) =
       DAT_INTMEM_3f;
  *(undefined1 *)CONCAT11('\x01' - (((0xbe < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x41) = 0xff
  ;
  *(undefined1 *)CONCAT11(-(((0xd1 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x2e) =
       DAT_INTMEM_3f;
  *(undefined1 *)CONCAT11(-(((0x3c < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 - 0x3d) =
       DAT_INTMEM_3f;
  *(undefined1 *)CONCAT11('\x01' - (((0xa7 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x58) = 0xff
  ;
  *(undefined1 *)CONCAT11(-(((0xba < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x45) =
       DAT_INTMEM_3f;
  *(undefined1 *)CONCAT11(-(((0x25 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 - 0x26) =
       DAT_INTMEM_3f;
  *(undefined1 *)CONCAT11('\x01' - (((0x90 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x6f) = 0xff
  ;
  *(undefined1 *)CONCAT11(-(((0xa3 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x5c) =
       DAT_INTMEM_3f;
  *(undefined1 *)CONCAT11(-(((0xe < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 - 0xf) = DAT_INTMEM_3f;
  *(undefined1 *)CONCAT11('\x01' - (((0x79 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x86) = 0xff
  ;
  *(undefined1 *)CONCAT11(-(((0x8c < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x73) =
       DAT_INTMEM_3f;
  *(undefined1 *)CONCAT11('\x01' - (((0xf7 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 8) =
       DAT_INTMEM_3f;
  *(undefined1 *)CONCAT11('\x01' - (((0x62 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x9d) = 0xff
  ;
  DAT_INTMEM_40 = DAT_INTMEM_3f;
  if (DAT_INTMEM_7a != '\0') {
    FUN_CODE_6580(DAT_INTMEM_53);
  }
  bVar1 = DAT_INTMEM_53 + 1;
  cVar2 = DAT_INTMEM_53 - 0x1a;
  DAT_INTMEM_53 = bVar1;
  if (0x1a < bVar1) {
    cVar2 = '\0';
    DAT_INTMEM_53 = 0;
  }
  return cVar2;
}


// ===== ISR_7B @ CODE:007b =====

char ISR_7B(void)

{
  byte bVar1;
  char cVar2;
  
  DAT_INTMEM_3f = 0xff;
  DAT_INTMEM_40 = 0xff;
  DAT_INTMEM_41 = DAT_INTMEM_55;
  *(undefined1 *)(ushort)DAT_INTMEM_53 = 0xff;
  *(undefined1 *)CONCAT11(-(((0x6a < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x95) = 0xff;
  *(undefined1 *)CONCAT11('\x01' - (((0xd5 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x2a) =
       DAT_INTMEM_55;
  *(undefined1 *)CONCAT11(-(((0xe8 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x17) = 0xff;
  *(undefined1 *)CONCAT11(-(((0x53 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0xac) = 0xff;
  *(undefined1 *)CONCAT11('\x01' - (((0xbe < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x41) =
       DAT_INTMEM_55;
  *(undefined1 *)CONCAT11(-(((0xd1 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x2e) = 0xff;
  *(undefined1 *)CONCAT11(-(((0x3c < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 - 0x3d) = 0xff;
  *(undefined1 *)CONCAT11('\x01' - (((0xa7 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x58) =
       DAT_INTMEM_55;
  *(undefined1 *)CONCAT11(-(((0xba < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x45) = 0xff;
  *(undefined1 *)CONCAT11(-(((0x25 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 - 0x26) = 0xff;
  *(undefined1 *)CONCAT11('\x01' - (((0x90 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x6f) =
       DAT_INTMEM_55;
  *(undefined1 *)CONCAT11(-(((0xa3 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x5c) = 0xff;
  *(undefined1 *)CONCAT11(-(((0xe < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 - 0xf) = 0xff;
  *(undefined1 *)CONCAT11('\x01' - (((0x79 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x86) =
       DAT_INTMEM_55;
  *(undefined1 *)CONCAT11(-(((0x8c < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x73) = 0xff;
  *(undefined1 *)CONCAT11('\x01' - (((0xf7 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 8) = 0xff;
  *(undefined1 *)CONCAT11('\x01' - (((0x62 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x9d) =
       DAT_INTMEM_55;
  if (DAT_INTMEM_7a != '\0') {
    FUN_CODE_6580(DAT_INTMEM_53);
  }
  bVar1 = DAT_INTMEM_53 + 1;
  cVar2 = DAT_INTMEM_53 - 0x1a;
  DAT_INTMEM_53 = bVar1;
  if (0x1a < bVar1) {
    cVar2 = '\0';
    DAT_INTMEM_53 = 0;
  }
  return cVar2;
}


// ===== FUN_CODE_01ca @ CODE:01ca =====

char FUN_CODE_01ca(char param_1)

{
  char cVar1;
  byte bVar2;
  
  if (param_1 != '\x06') {
    if (DAT_INTMEM_76 != '\n') {
      cVar1 = FUN_CODE_0579(DAT_INTMEM_76);
      return cVar1;
    }
    *(undefined1 *)(ushort)DAT_INTMEM_53 =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + -0x54,(char)((ushort)DAT_INTMEM_53 * 3))
    ;
    bVar2 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11(-(((0x6a < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x95) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x54 - (((0xfe < bVar2) << 7) >> 7)),
                   bVar2 + 1);
    bVar2 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11('\x01' - (((0xd5 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x2a) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x54 - (((0xfd < bVar2) << 7) >> 7)),
                   bVar2 + 2);
    bVar2 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11(-(((0xe8 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x17) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x54 - (((0xba < bVar2) << 7) >> 7)),
                   bVar2 + 0x45);
    bVar2 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11(-(((0x53 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0xac) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x54 - (((0xb9 < bVar2) << 7) >> 7)),
                   bVar2 + 0x46);
    bVar2 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11('\x01' - (((0xbe < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x41) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x54 - (((0xb8 < bVar2) << 7) >> 7)),
                   bVar2 + 0x47);
    bVar2 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11(-(((0xd1 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x2e) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x54 - (((0x75 < bVar2) << 7) >> 7)),
                   bVar2 + 0x8a);
    bVar2 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11(-(((0x3c < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 - 0x3d) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x54 - (((0x74 < bVar2) << 7) >> 7)),
                   bVar2 + 0x8b);
    bVar2 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11('\x01' - (((0xa7 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x58) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x54 - (((0x73 < bVar2) << 7) >> 7)),
                   bVar2 + 0x8c);
    bVar2 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11(-(((0xba < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x45) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x54 - (((0x30 < bVar2) << 7) >> 7)),
                   bVar2 - 0x31);
    bVar2 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11(-(((0x25 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 - 0x26) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x54 - (((0x2f < bVar2) << 7) >> 7)),
                   bVar2 - 0x30);
    bVar2 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11('\x01' - (((0x90 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x6f) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x54 - (((0x2e < bVar2) << 7) >> 7)),
                   bVar2 - 0x2f);
    bVar2 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11(-(((0xa3 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x5c) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x53 - (((0xeb < bVar2) << 7) >> 7)),
                   bVar2 + 0x14);
    bVar2 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11(-(((0xe < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 - 0xf) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x53 - (((0xea < bVar2) << 7) >> 7)),
                   bVar2 + 0x15);
    bVar2 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11('\x01' - (((0x79 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x86) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x53 - (((0xe9 < bVar2) << 7) >> 7)),
                   bVar2 + 0x16);
    bVar2 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11(-(((0x8c < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x73) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x53 - (((0xa6 < bVar2) << 7) >> 7)),
                   bVar2 + 0x59);
    bVar2 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11('\x01' - (((0xf7 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 8) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x53 - (((0xa5 < bVar2) << 7) >> 7)),
                   bVar2 + 0x5a);
    bVar2 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11('\x01' - (((0x62 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x9d) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x53 - (((0xa4 < bVar2) << 7) >> 7)),
                   bVar2 + 0x5b);
    goto LAB_CODE_0e45;
  }
  if (DAT_INTMEM_5a == '\0') {
    DAT_INTMEM_3f = 0xff;
    DAT_INTMEM_40 = 0xff;
    DAT_INTMEM_41 = *(undefined1 *)(DAT_INTMEM_53 + 0x5f);
  }
  else {
    if (DAT_INTMEM_5a == '\x01') {
      DAT_INTMEM_3f = 0xff;
      DAT_INTMEM_40 = *(undefined1 *)(DAT_INTMEM_53 + 0x5f);
    }
    else {
      if (DAT_INTMEM_5a != '\x02') {
        if (DAT_INTMEM_5a == '\x03') {
          DAT_INTMEM_3f = *(undefined1 *)(DAT_INTMEM_53 + 0x5f);
          DAT_INTMEM_40 = 0xff;
          DAT_INTMEM_41 = DAT_INTMEM_3f;
        }
        else if (DAT_INTMEM_5a == '\x04') {
          DAT_INTMEM_3f = 0xff;
          DAT_INTMEM_40 = *(undefined1 *)(DAT_INTMEM_53 + 0x5f);
          DAT_INTMEM_41 = DAT_INTMEM_40;
        }
        else {
          if (DAT_INTMEM_5a == '\x05') {
            DAT_INTMEM_3f = *(undefined1 *)(DAT_INTMEM_53 + 0x5f);
            DAT_INTMEM_40 = DAT_INTMEM_3f;
            goto LAB_CODE_0244;
          }
          if (DAT_INTMEM_5a == '\x06') {
            DAT_INTMEM_3f = *(undefined1 *)(DAT_INTMEM_53 + 0x5f);
            DAT_INTMEM_40 = DAT_INTMEM_3f;
            DAT_INTMEM_41 = DAT_INTMEM_3f;
          }
        }
        goto LAB_CODE_025c;
      }
      DAT_INTMEM_3f = *(undefined1 *)(DAT_INTMEM_53 + 0x5f);
      DAT_INTMEM_40 = 0xff;
    }
LAB_CODE_0244:
    DAT_INTMEM_41 = 0xff;
  }
LAB_CODE_025c:
  *(undefined1 *)(ushort)DAT_INTMEM_53 = DAT_INTMEM_3f;
  *(undefined1 *)CONCAT11(-(((0x6a < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x95) =
       DAT_INTMEM_40;
  *(undefined1 *)CONCAT11('\x01' - (((0xd5 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x2a) =
       DAT_INTMEM_41;
  *(undefined1 *)CONCAT11(-(((0xe8 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x17) =
       DAT_INTMEM_3f;
  *(undefined1 *)CONCAT11(-(((0x53 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0xac) =
       DAT_INTMEM_40;
  *(undefined1 *)CONCAT11('\x01' - (((0xbe < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x41) =
       DAT_INTMEM_41;
  *(undefined1 *)CONCAT11(-(((0xd1 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x2e) =
       DAT_INTMEM_3f;
  *(undefined1 *)CONCAT11(-(((0x3c < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 - 0x3d) =
       DAT_INTMEM_40;
  *(undefined1 *)CONCAT11('\x01' - (((0xa7 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x58) =
       DAT_INTMEM_41;
  *(undefined1 *)CONCAT11(-(((0xba < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x45) =
       DAT_INTMEM_3f;
  *(undefined1 *)CONCAT11(-(((0x25 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 - 0x26) =
       DAT_INTMEM_40;
  *(undefined1 *)CONCAT11('\x01' - (((0x90 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x6f) =
       DAT_INTMEM_41;
  *(undefined1 *)CONCAT11(-(((0xa3 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x5c) =
       DAT_INTMEM_3f;
  *(undefined1 *)CONCAT11(-(((0xe < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 - 0xf) = DAT_INTMEM_40;
  *(undefined1 *)CONCAT11('\x01' - (((0x79 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x86) =
       DAT_INTMEM_41;
  *(undefined1 *)CONCAT11(-(((0x8c < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x73) =
       DAT_INTMEM_3f;
  *(undefined1 *)CONCAT11('\x01' - (((0xf7 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 8) =
       DAT_INTMEM_40;
  *(undefined1 *)CONCAT11('\x01' - (((0x62 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x9d) =
       DAT_INTMEM_41;
LAB_CODE_0e45:
  if (DAT_INTMEM_7a != '\0') {
    FUN_CODE_6580(DAT_INTMEM_53);
  }
  bVar2 = DAT_INTMEM_53 + 1;
  cVar1 = DAT_INTMEM_53 - 0x1a;
  DAT_INTMEM_53 = bVar2;
  if (0x1a < bVar2) {
    cVar1 = '\0';
    DAT_INTMEM_53 = 0;
  }
  return cVar1;
}


// ===== FUN_CODE_047f @ CODE:047f =====

char FUN_CODE_047f(undefined1 *param_1,byte *param_2,byte param_3)

{
  byte bVar1;
  byte bVar2;
  char cVar3;
  
  *(undefined1 *)CONCAT11(-(((0xba < param_3) << 7) >> 7),param_3 + 0x45) = *param_1;
  bVar1 = *param_2;
  bVar2 = (byte)((ushort)bVar1 * 3);
  *(undefined1 *)CONCAT11(-(((0x25 < bVar1) << 7) >> 7),bVar1 - 0x26) =
       *(undefined1 *)
        CONCAT11((char)((ushort)bVar1 * 3 >> 8) + (-0x54 - (((0x2f < bVar2) << 7) >> 7)),
                 bVar2 - 0x30);
  bVar1 = *param_2;
  bVar2 = (byte)((ushort)bVar1 * 3);
  *(undefined1 *)CONCAT11('\x01' - (((0x90 < bVar1) << 7) >> 7),bVar1 + 0x6f) =
       *(undefined1 *)
        CONCAT11((char)((ushort)bVar1 * 3 >> 8) + (-0x54 - (((0x2e < bVar2) << 7) >> 7)),
                 bVar2 - 0x2f);
  bVar1 = *param_2;
  bVar2 = (byte)((ushort)bVar1 * 3);
  *(undefined1 *)CONCAT11(-(((0xa3 < bVar1) << 7) >> 7),bVar1 + 0x5c) =
       *(undefined1 *)
        CONCAT11((char)((ushort)bVar1 * 3 >> 8) + (-0x53 - (((0xeb < bVar2) << 7) >> 7)),
                 bVar2 + 0x14);
  bVar1 = *param_2;
  bVar2 = (byte)((ushort)bVar1 * 3);
  *(undefined1 *)CONCAT11(-(((0xe < bVar1) << 7) >> 7),bVar1 - 0xf) =
       *(undefined1 *)
        CONCAT11((char)((ushort)bVar1 * 3 >> 8) + (-0x53 - (((0xea < bVar2) << 7) >> 7)),
                 bVar2 + 0x15);
  bVar1 = *param_2;
  bVar2 = (byte)((ushort)bVar1 * 3);
  *(undefined1 *)CONCAT11('\x01' - (((0x79 < bVar1) << 7) >> 7),bVar1 + 0x86) =
       *(undefined1 *)
        CONCAT11((char)((ushort)bVar1 * 3 >> 8) + (-0x53 - (((0xe9 < bVar2) << 7) >> 7)),
                 bVar2 + 0x16);
  bVar1 = *param_2;
  bVar2 = (byte)((ushort)bVar1 * 3);
  *(undefined1 *)CONCAT11(-(((0x8c < bVar1) << 7) >> 7),bVar1 + 0x73) =
       *(undefined1 *)
        CONCAT11((char)((ushort)bVar1 * 3 >> 8) + (-0x53 - (((0xa6 < bVar2) << 7) >> 7)),
                 bVar2 + 0x59);
  bVar1 = *param_2;
  bVar2 = (byte)((ushort)bVar1 * 3);
  *(undefined1 *)CONCAT11('\x01' - (((0xf7 < bVar1) << 7) >> 7),bVar1 + 8) =
       *(undefined1 *)
        CONCAT11((char)((ushort)bVar1 * 3 >> 8) + (-0x53 - (((0xa5 < bVar2) << 7) >> 7)),
                 bVar2 + 0x5a);
  bVar1 = *param_2;
  bVar2 = (byte)((ushort)bVar1 * 3);
  *(undefined1 *)CONCAT11('\x01' - (((0x62 < bVar1) << 7) >> 7),bVar1 + 0x9d) =
       *(undefined1 *)
        CONCAT11((char)((ushort)bVar1 * 3 >> 8) + (-0x53 - (((0xa4 < bVar2) << 7) >> 7)),
                 bVar2 + 0x5b);
  if (DAT_INTMEM_7a != '\0') {
    FUN_CODE_6580(DAT_INTMEM_53);
  }
  bVar1 = DAT_INTMEM_53 + 1;
  cVar3 = DAT_INTMEM_53 + -0x1a;
  DAT_INTMEM_53 = bVar1;
  if (0x1a < bVar1) {
    cVar3 = '\0';
    DAT_INTMEM_53 = 0;
  }
  return cVar3;
}


// ===== FUN_CODE_0579 @ CODE:0579 =====

char FUN_CODE_0579(char param_1)

{
  char cVar1;
  byte bVar2;
  
  if (param_1 == '\x10') {
    *(undefined1 *)(ushort)DAT_INTMEM_53 =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + -0x46,(char)((ushort)DAT_INTMEM_53 * 3))
    ;
    bVar2 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11(-(((0x6a < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x95) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x46 - (((0xfe < bVar2) << 7) >> 7)),
                   bVar2 + 1);
    bVar2 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11('\x01' - (((0xd5 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x2a) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x46 - (((0xfd < bVar2) << 7) >> 7)),
                   bVar2 + 2);
    bVar2 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11(-(((0xe8 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x17) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x46 - (((0xba < bVar2) << 7) >> 7)),
                   bVar2 + 0x45);
    bVar2 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11(-(((0x53 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0xac) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x46 - (((0xb9 < bVar2) << 7) >> 7)),
                   bVar2 + 0x46);
    bVar2 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11('\x01' - (((0xbe < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x41) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x46 - (((0xb8 < bVar2) << 7) >> 7)),
                   bVar2 + 0x47);
    bVar2 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11(-(((0xd1 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x2e) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x46 - (((0x75 < bVar2) << 7) >> 7)),
                   bVar2 + 0x8a);
    bVar2 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11(-(((0x3c < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 - 0x3d) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x46 - (((0x74 < bVar2) << 7) >> 7)),
                   bVar2 + 0x8b);
    bVar2 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11('\x01' - (((0xa7 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x58) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x46 - (((0x73 < bVar2) << 7) >> 7)),
                   bVar2 + 0x8c);
    bVar2 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11(-(((0xba < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x45) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x46 - (((0x30 < bVar2) << 7) >> 7)),
                   bVar2 - 0x31);
    bVar2 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11(-(((0x25 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 - 0x26) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x46 - (((0x2f < bVar2) << 7) >> 7)),
                   bVar2 - 0x30);
    bVar2 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11('\x01' - (((0x90 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x6f) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x46 - (((0x2e < bVar2) << 7) >> 7)),
                   bVar2 - 0x2f);
    bVar2 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11(-(((0xa3 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x5c) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x45 - (((0xeb < bVar2) << 7) >> 7)),
                   bVar2 + 0x14);
    bVar2 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11(-(((0xe < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 - 0xf) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x45 - (((0xea < bVar2) << 7) >> 7)),
                   bVar2 + 0x15);
    bVar2 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11('\x01' - (((0x79 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x86) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x45 - (((0xe9 < bVar2) << 7) >> 7)),
                   bVar2 + 0x16);
    bVar2 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11(-(((0x8c < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x73) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x45 - (((0xa6 < bVar2) << 7) >> 7)),
                   bVar2 + 0x59);
    bVar2 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11('\x01' - (((0xf7 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 8) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x45 - (((0xa5 < bVar2) << 7) >> 7)),
                   bVar2 + 0x5a);
    bVar2 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11('\x01' - (((0x62 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x9d) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x45 - (((0xa4 < bVar2) << 7) >> 7)),
                   bVar2 + 0x5b);
  }
  else {
    if (DAT_INTMEM_76 != '\x11') {
      cVar1 = FUN_CODE_09e1(DAT_INTMEM_76);
      return cVar1;
    }
    *(undefined1 *)(ushort)DAT_INTMEM_53 =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + -0x44,(char)((ushort)DAT_INTMEM_53 * 3))
    ;
    bVar2 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11(-(((0x6a < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x95) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x44 - (((0xfe < bVar2) << 7) >> 7)),
                   bVar2 + 1);
    bVar2 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11('\x01' - (((0xd5 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x2a) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x44 - (((0xfd < bVar2) << 7) >> 7)),
                   bVar2 + 2);
    bVar2 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11(-(((0xe8 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x17) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x44 - (((0xba < bVar2) << 7) >> 7)),
                   bVar2 + 0x45);
    bVar2 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11(-(((0x53 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0xac) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x44 - (((0xb9 < bVar2) << 7) >> 7)),
                   bVar2 + 0x46);
    bVar2 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11('\x01' - (((0xbe < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x41) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x44 - (((0xb8 < bVar2) << 7) >> 7)),
                   bVar2 + 0x47);
    bVar2 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11(-(((0xd1 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x2e) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x44 - (((0x75 < bVar2) << 7) >> 7)),
                   bVar2 + 0x8a);
    bVar2 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11(-(((0x3c < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 - 0x3d) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x44 - (((0x74 < bVar2) << 7) >> 7)),
                   bVar2 + 0x8b);
    bVar2 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11('\x01' - (((0xa7 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x58) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x44 - (((0x73 < bVar2) << 7) >> 7)),
                   bVar2 + 0x8c);
    bVar2 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11(-(((0xba < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x45) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x44 - (((0x30 < bVar2) << 7) >> 7)),
                   bVar2 - 0x31);
    bVar2 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11(-(((0x25 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 - 0x26) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x44 - (((0x2f < bVar2) << 7) >> 7)),
                   bVar2 - 0x30);
    bVar2 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11('\x01' - (((0x90 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x6f) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x44 - (((0x2e < bVar2) << 7) >> 7)),
                   bVar2 - 0x2f);
    bVar2 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11(-(((0xa3 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x5c) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x43 - (((0xeb < bVar2) << 7) >> 7)),
                   bVar2 + 0x14);
    bVar2 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11(-(((0xe < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 - 0xf) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x43 - (((0xea < bVar2) << 7) >> 7)),
                   bVar2 + 0x15);
    bVar2 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11('\x01' - (((0x79 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x86) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x43 - (((0xe9 < bVar2) << 7) >> 7)),
                   bVar2 + 0x16);
    bVar2 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11(-(((0x8c < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x73) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x43 - (((0xa6 < bVar2) << 7) >> 7)),
                   bVar2 + 0x59);
    bVar2 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11('\x01' - (((0xf7 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 8) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x43 - (((0xa5 < bVar2) << 7) >> 7)),
                   bVar2 + 0x5a);
    bVar2 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11('\x01' - (((0x62 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x9d) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x43 - (((0xa4 < bVar2) << 7) >> 7)),
                   bVar2 + 0x5b);
  }
  if (DAT_INTMEM_7a != '\0') {
    FUN_CODE_6580(DAT_INTMEM_53);
  }
  bVar2 = DAT_INTMEM_53 + 1;
  cVar1 = DAT_INTMEM_53 - 0x1a;
  DAT_INTMEM_53 = bVar2;
  if (0x1a < bVar2) {
    cVar1 = '\0';
    DAT_INTMEM_53 = 0;
  }
  return cVar1;
}


// ===== FUN_CODE_0890 @ CODE:0890 =====

char FUN_CODE_0890(byte param_1,byte *param_2,byte *param_3,undefined1 param_4,byte param_5)

{
  byte bVar1;
  byte bVar2;
  char cVar3;
  byte in_PSW;
  
  IB_CON4 = param_4;
  *param_2 = param_1;
  *(undefined1 *)CONCAT11(-(((0x3c < param_5) << 7) >> 7),param_5 - 0x3d) =
       *(undefined1 *)
        CONCAT11(param_1 + (-0x44 - ((char)((in_PSW >> 7 & param_1 >> 5 & 1) << 7) >> 7)),
                 (char)param_2);
  bVar1 = *param_3;
  bVar2 = (byte)((ushort)bVar1 * 3);
  *(undefined1 *)CONCAT11('\x01' - (((0xa7 < bVar1) << 7) >> 7),bVar1 + 0x58) =
       *(undefined1 *)
        CONCAT11((char)((ushort)bVar1 * 3 >> 8) + (-0x44 - (((0x73 < bVar2) << 7) >> 7)),
                 bVar2 + 0x8c);
  bVar1 = *param_3;
  bVar2 = (byte)((ushort)bVar1 * 3);
  *(undefined1 *)CONCAT11(-(((0xba < bVar1) << 7) >> 7),bVar1 + 0x45) =
       *(undefined1 *)
        CONCAT11((char)((ushort)bVar1 * 3 >> 8) + (-0x44 - (((0x30 < bVar2) << 7) >> 7)),
                 bVar2 - 0x31);
  bVar1 = *param_3;
  bVar2 = (byte)((ushort)bVar1 * 3);
  *(undefined1 *)CONCAT11(-(((0x25 < bVar1) << 7) >> 7),bVar1 - 0x26) =
       *(undefined1 *)
        CONCAT11((char)((ushort)bVar1 * 3 >> 8) + (-0x44 - (((0x2f < bVar2) << 7) >> 7)),
                 bVar2 - 0x30);
  bVar1 = *param_3;
  bVar2 = (byte)((ushort)bVar1 * 3);
  *(undefined1 *)CONCAT11('\x01' - (((0x90 < bVar1) << 7) >> 7),bVar1 + 0x6f) =
       *(undefined1 *)
        CONCAT11((char)((ushort)bVar1 * 3 >> 8) + (-0x44 - (((0x2e < bVar2) << 7) >> 7)),
                 bVar2 - 0x2f);
  bVar1 = *param_3;
  bVar2 = (byte)((ushort)bVar1 * 3);
  *(undefined1 *)CONCAT11(-(((0xa3 < bVar1) << 7) >> 7),bVar1 + 0x5c) =
       *(undefined1 *)
        CONCAT11((char)((ushort)bVar1 * 3 >> 8) + (-0x43 - (((0xeb < bVar2) << 7) >> 7)),
                 bVar2 + 0x14);
  bVar1 = *param_3;
  bVar2 = (byte)((ushort)bVar1 * 3);
  *(undefined1 *)CONCAT11(-(((0xe < bVar1) << 7) >> 7),bVar1 - 0xf) =
       *(undefined1 *)
        CONCAT11((char)((ushort)bVar1 * 3 >> 8) + (-0x43 - (((0xea < bVar2) << 7) >> 7)),
                 bVar2 + 0x15);
  bVar1 = *param_3;
  bVar2 = (byte)((ushort)bVar1 * 3);
  *(undefined1 *)CONCAT11('\x01' - (((0x79 < bVar1) << 7) >> 7),bVar1 + 0x86) =
       *(undefined1 *)
        CONCAT11((char)((ushort)bVar1 * 3 >> 8) + (-0x43 - (((0xe9 < bVar2) << 7) >> 7)),
                 bVar2 + 0x16);
  bVar1 = *param_3;
  bVar2 = (byte)((ushort)bVar1 * 3);
  *(undefined1 *)CONCAT11(-(((0x8c < bVar1) << 7) >> 7),bVar1 + 0x73) =
       *(undefined1 *)
        CONCAT11((char)((ushort)bVar1 * 3 >> 8) + (-0x43 - (((0xa6 < bVar2) << 7) >> 7)),
                 bVar2 + 0x59);
  bVar1 = *param_3;
  bVar2 = (byte)((ushort)bVar1 * 3);
  *(undefined1 *)CONCAT11('\x01' - (((0xf7 < bVar1) << 7) >> 7),bVar1 + 8) =
       *(undefined1 *)
        CONCAT11((char)((ushort)bVar1 * 3 >> 8) + (-0x43 - (((0xa5 < bVar2) << 7) >> 7)),
                 bVar2 + 0x5a);
  bVar1 = *param_3;
  bVar2 = (byte)((ushort)bVar1 * 3);
  *(undefined1 *)CONCAT11('\x01' - (((0x62 < bVar1) << 7) >> 7),bVar1 + 0x9d) =
       *(undefined1 *)
        CONCAT11((char)((ushort)bVar1 * 3 >> 8) + (-0x43 - (((0xa4 < bVar2) << 7) >> 7)),
                 bVar2 + 0x5b);
  if (DAT_INTMEM_7a != '\0') {
    FUN_CODE_6580(DAT_INTMEM_53);
  }
  bVar1 = DAT_INTMEM_53 + 1;
  cVar3 = DAT_INTMEM_53 + -0x1a;
  DAT_INTMEM_53 = bVar1;
  if (0x1a < bVar1) {
    cVar3 = '\0';
    DAT_INTMEM_53 = 0;
  }
  return cVar3;
}


// ===== FUN_CODE_09e1 @ CODE:09e1 =====

char FUN_CODE_09e1(char param_1)

{
  byte bVar1;
  char cVar2;
  
  if (param_1 == '\x12') {
    *(undefined1 *)(ushort)DAT_INTMEM_53 =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + -0x42,(char)((ushort)DAT_INTMEM_53 * 3))
    ;
    bVar1 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11(-(((0x6a < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x95) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x42 - (((0xfe < bVar1) << 7) >> 7)),
                   bVar1 + 1);
    bVar1 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11('\x01' - (((0xd5 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x2a) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x42 - (((0xfd < bVar1) << 7) >> 7)),
                   bVar1 + 2);
    bVar1 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11(-(((0xe8 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x17) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x42 - (((0xba < bVar1) << 7) >> 7)),
                   bVar1 + 0x45);
    bVar1 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11(-(((0x53 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0xac) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x42 - (((0xb9 < bVar1) << 7) >> 7)),
                   bVar1 + 0x46);
    bVar1 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11('\x01' - (((0xbe < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x41) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x42 - (((0xb8 < bVar1) << 7) >> 7)),
                   bVar1 + 0x47);
    bVar1 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11(-(((0xd1 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x2e) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x42 - (((0x75 < bVar1) << 7) >> 7)),
                   bVar1 + 0x8a);
    bVar1 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11(-(((0x3c < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 - 0x3d) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x42 - (((0x74 < bVar1) << 7) >> 7)),
                   bVar1 + 0x8b);
    bVar1 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11('\x01' - (((0xa7 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x58) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x42 - (((0x73 < bVar1) << 7) >> 7)),
                   bVar1 + 0x8c);
    bVar1 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11(-(((0xba < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x45) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x42 - (((0x30 < bVar1) << 7) >> 7)),
                   bVar1 - 0x31);
    bVar1 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11(-(((0x25 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 - 0x26) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x42 - (((0x2f < bVar1) << 7) >> 7)),
                   bVar1 - 0x30);
    bVar1 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11('\x01' - (((0x90 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x6f) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x42 - (((0x2e < bVar1) << 7) >> 7)),
                   bVar1 - 0x2f);
    bVar1 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11(-(((0xa3 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x5c) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x41 - (((0xeb < bVar1) << 7) >> 7)),
                   bVar1 + 0x14);
    bVar1 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11(-(((0xe < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 - 0xf) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x41 - (((0xea < bVar1) << 7) >> 7)),
                   bVar1 + 0x15);
    bVar1 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11('\x01' - (((0x79 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x86) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x41 - (((0xe9 < bVar1) << 7) >> 7)),
                   bVar1 + 0x16);
    bVar1 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11(-(((0x8c < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x73) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x41 - (((0xa6 < bVar1) << 7) >> 7)),
                   bVar1 + 0x59);
    bVar1 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11('\x01' - (((0xf7 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 8) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x41 - (((0xa5 < bVar1) << 7) >> 7)),
                   bVar1 + 0x5a);
    bVar1 = (byte)((ushort)DAT_INTMEM_53 * 3);
    cVar2 = (char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x41 - (((0xa4 < bVar1) << 7) >> 7));
  }
  else {
    if (DAT_INTMEM_76 != '\x13') goto LAB_CODE_0e45;
    *(undefined1 *)(ushort)DAT_INTMEM_53 =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + -0x40,(char)((ushort)DAT_INTMEM_53 * 3))
    ;
    bVar1 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11(-(((0x6a < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x95) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x40 - (((0xfe < bVar1) << 7) >> 7)),
                   bVar1 + 1);
    bVar1 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11('\x01' - (((0xd5 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x2a) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x40 - (((0xfd < bVar1) << 7) >> 7)),
                   bVar1 + 2);
    bVar1 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11(-(((0xe8 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x17) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x40 - (((0xba < bVar1) << 7) >> 7)),
                   bVar1 + 0x45);
    bVar1 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11(-(((0x53 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0xac) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x40 - (((0xb9 < bVar1) << 7) >> 7)),
                   bVar1 + 0x46);
    bVar1 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11('\x01' - (((0xbe < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x41) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x40 - (((0xb8 < bVar1) << 7) >> 7)),
                   bVar1 + 0x47);
    bVar1 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11(-(((0xd1 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x2e) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x40 - (((0x75 < bVar1) << 7) >> 7)),
                   bVar1 + 0x8a);
    bVar1 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11(-(((0x3c < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 - 0x3d) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x40 - (((0x74 < bVar1) << 7) >> 7)),
                   bVar1 + 0x8b);
    bVar1 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11('\x01' - (((0xa7 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x58) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x40 - (((0x73 < bVar1) << 7) >> 7)),
                   bVar1 + 0x8c);
    bVar1 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11(-(((0xba < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x45) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x40 - (((0x30 < bVar1) << 7) >> 7)),
                   bVar1 - 0x31);
    bVar1 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11(-(((0x25 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 - 0x26) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x40 - (((0x2f < bVar1) << 7) >> 7)),
                   bVar1 - 0x30);
    bVar1 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11('\x01' - (((0x90 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x6f) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x40 - (((0x2e < bVar1) << 7) >> 7)),
                   bVar1 - 0x2f);
    bVar1 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11(-(((0xa3 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x5c) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x3f - (((0xeb < bVar1) << 7) >> 7)),
                   bVar1 + 0x14);
    bVar1 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11(-(((0xe < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 - 0xf) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x3f - (((0xea < bVar1) << 7) >> 7)),
                   bVar1 + 0x15);
    bVar1 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11('\x01' - (((0x79 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x86) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x3f - (((0xe9 < bVar1) << 7) >> 7)),
                   bVar1 + 0x16);
    bVar1 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11(-(((0x8c < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x73) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x3f - (((0xa6 < bVar1) << 7) >> 7)),
                   bVar1 + 0x59);
    bVar1 = (byte)((ushort)DAT_INTMEM_53 * 3);
    *(undefined1 *)CONCAT11('\x01' - (((0xf7 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 8) =
         *(undefined1 *)
          CONCAT11((char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x3f - (((0xa5 < bVar1) << 7) >> 7)),
                   bVar1 + 0x5a);
    bVar1 = (byte)((ushort)DAT_INTMEM_53 * 3);
    cVar2 = (char)((ushort)DAT_INTMEM_53 * 3 >> 8) + (-0x3f - (((0xa4 < bVar1) << 7) >> 7));
  }
  *(undefined1 *)CONCAT11('\x01' - (((0x62 < DAT_INTMEM_53) << 7) >> 7),DAT_INTMEM_53 + 0x9d) =
       *(undefined1 *)CONCAT11(cVar2,bVar1 + 0x5b);
LAB_CODE_0e45:
  if (DAT_INTMEM_7a != '\0') {
    FUN_CODE_6580(DAT_INTMEM_53);
  }
  bVar1 = DAT_INTMEM_53 + 1;
  cVar2 = DAT_INTMEM_53 - 0x1a;
  DAT_INTMEM_53 = bVar1;
  if (0x1a < bVar1) {
    cVar2 = '\0';
    DAT_INTMEM_53 = 0;
  }
  return cVar2;
}


// ===== FUN_CODE_0e57 @ CODE:0e57 =====

/* WARNING: Removing unreachable block (CODE,0x1f35) */

char FUN_CODE_0e57(void)

{
  bool bVar1;
  byte bVar2;
  char cVar3;
  byte bVar4;
  char cVar5;
  byte *pbVar6;
  
  if (DAT_INTMEM_53 == '\x17') {
    P0_2 = 1;
    TH2 = 0xf3;
    TL2 = 0x7f;
    RCAP2H = 0xf3;
    RCAP2L = 0x7f;
    FUN_CODE_79d2();
    P2_0 = 0;
    P2_1 = 0;
    P2_2 = 0;
    P2_3 = 0;
    P2_4 = 0;
    P2_5 = 0;
    RI = 0;
    TI = 0;
    RB8 = 0;
    TB8 = 0;
    REN = 0;
    SM2 = 0;
    P1_0 = 0;
    P1_1 = 0;
    P1_2 = 0;
    P1_3 = 0;
    P1_4 = 0;
    P1_5 = 0;
    _1_0 = 1;
    goto LAB_CODE_38aa;
  }
  if (DAT_INTMEM_53 == '\x18') {
    TH2 = 0xfe;
    TL2 = 0x6f;
    RCAP2H = 0xfe;
    RCAP2L = 0x6f;
    FUN_CODE_79d2();
    P0_2 = 0;
    if (_2_5 == '\0') {
      if (_4_4 == '\0') {
        if ((BANK3_R0 & 1) == 0) {
          P2_0 = 0;
        }
        else {
          P2_0 = 1;
        }
        if ((BANK3_R0 >> 1 & 1) == 0) {
          P2_1 = 0;
        }
        else {
          P2_1 = 1;
        }
        if ((BANK3_R0 >> 2 & 1) == 0) {
          P2_2 = 0;
        }
        else {
          P2_2 = 1;
        }
        if (_5_0 == '\0') {
          P2_3 = 0;
        }
        else {
          P2_3 = 1;
        }
        if (_4_7 == '\0') {
          P2_4 = 0;
        }
        else {
          P2_4 = 1;
        }
        goto LAB_CODE_38aa;
      }
      DAT_INTMEM_56 = DAT_INTMEM_56 + 1;
      if (0xf < DAT_INTMEM_56) {
        DAT_INTMEM_56 = 0;
        if (BANK3_R7 == '\0') {
          _4_4 = '\0';
        }
        else {
          BANK3_R7 = BANK3_R7 + -1;
        }
        _4_2 = _4_2 ^ 1;
      }
    }
    else {
      DAT_INTMEM_56 = DAT_INTMEM_56 + 1;
      if (0x32 < DAT_INTMEM_56) {
        DAT_INTMEM_56 = 0;
        _4_2 = _4_2 ^ 1;
      }
    }
    if (_4_2 == 0) {
      P2_0 = 1;
      P2_1 = 1;
      P2_2 = 1;
      P2_3 = 1;
      P2_4 = 1;
    }
    else {
      P2_0 = 0;
      P2_1 = 0;
      P2_2 = 0;
      P2_3 = 0;
      P2_4 = 0;
    }
    goto LAB_CODE_38aa;
  }
  if (DAT_INTMEM_53 == '\x19') {
    P0_2 = 1;
    TH2 = 0xfe;
    TL2 = 0x6f;
    RCAP2H = 0xfe;
    RCAP2L = 0x6f;
    FUN_CODE_79d2();
    P2_0 = 0;
    P2_1 = 0;
    P2_2 = 0;
    P2_3 = 0;
    P2_4 = 0;
    P2_5 = 0;
    RI = 0;
    TI = 0;
    RB8 = 0;
    TB8 = 0;
    REN = 0;
    SM2 = 0;
    P1_0 = 0;
    P1_1 = 0;
    P1_2 = 0;
    P1_3 = 0;
    P1_4 = 0;
    P1_5 = 0;
    goto LAB_CODE_38aa;
  }
  if (DAT_INTMEM_53 != '\x1a') goto LAB_CODE_38aa;
  FUN_CODE_79c4();
  if (DAT_INTMEM_76 == '\0') {
    if (BANK3_R4 == 0) {
      DAT_INTMEM_3f = 0xff;
LAB_CODE_0fbf:
      DAT_INTMEM_41 = 0;
      DAT_INTMEM_40 = 0xff;
    }
    else {
      if (BANK3_R4 == 1) {
        DAT_INTMEM_3f = 0xff;
LAB_CODE_0fce:
        DAT_INTMEM_40 = 0;
      }
      else {
        if (BANK3_R4 != 2) {
          if (BANK3_R4 == 3) {
            DAT_INTMEM_3f = 0xff;
          }
          else {
            if (BANK3_R4 == 4) {
              DAT_INTMEM_3f = 0;
              goto LAB_CODE_0fbf;
            }
            if (BANK3_R4 == 5) {
              DAT_INTMEM_3f = 0;
              goto LAB_CODE_0fce;
            }
            if (BANK3_R4 != 6) goto LAB_CODE_0fe1;
            DAT_INTMEM_3f = 0;
          }
          DAT_INTMEM_40 = 0;
          DAT_INTMEM_41 = 0;
          goto LAB_CODE_0fe1;
        }
        DAT_INTMEM_3f = 0;
        DAT_INTMEM_40 = 0xff;
      }
      DAT_INTMEM_41 = 0xff;
    }
LAB_CODE_0fe1:
    DAT_INTMEM_57 = DAT_INTMEM_57 + 1;
    if (DAT_INTMEM_57 < 6 - DAT_INTMEM_77) goto LAB_CODE_38aa;
    DAT_INTMEM_57 = 0;
    if ((DAT_INTMEM_5e < 0xb) << 7 < '\0') {
      *(byte *)(ushort)DAT_INTMEM_5e = DAT_INTMEM_3f;
      *(byte *)CONCAT11(-(((0x6a < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e + 0x95) = DAT_INTMEM_40;
      *(byte *)CONCAT11('\x01' - (((0xd5 < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e + 0x2a) =
           DAT_INTMEM_41;
      *(undefined1 *)CONCAT11(-(((0xe8 < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e + 0x17) = 0xff;
      *(undefined1 *)CONCAT11(-(((0x53 < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e + 0xac) = 0xff;
      *(undefined1 *)CONCAT11('\x01' - (((0xbe < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e + 0x41) =
           0xff;
      *(byte *)CONCAT11(-(((0xd1 < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e + 0x2e) = DAT_INTMEM_3f;
      *(byte *)CONCAT11(-(((0x3c < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e - 0x3d) = DAT_INTMEM_40;
      *(byte *)CONCAT11('\x01' - (((0xa7 < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e + 0x58) =
           DAT_INTMEM_41;
      *(undefined1 *)CONCAT11(-(((0xba < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e + 0x45) = 0xff;
      *(undefined1 *)CONCAT11(-(((0x25 < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e - 0x26) = 0xff;
      *(undefined1 *)CONCAT11('\x01' - (((0x90 < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e + 0x6f) =
           0xff;
      *(byte *)CONCAT11(-(((0xa3 < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e + 0x5c) = DAT_INTMEM_3f;
      *(byte *)CONCAT11(-(((0xe < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e - 0xf) = DAT_INTMEM_40;
      *(byte *)CONCAT11('\x01' - (((0x79 < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e + 0x86) =
           DAT_INTMEM_41;
      *(undefined1 *)CONCAT11(-(((0x8c < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e + 0x73) = 0xff;
      *(undefined1 *)CONCAT11('\x01' - (((0xf7 < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e + 8) =
           0xff;
      *(undefined1 *)CONCAT11('\x01' - (((0x62 < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e + 0x9d) =
           0xff;
      cVar5 = -DAT_INTMEM_5e;
      bVar2 = cVar5 + 0x16;
      cVar3 = ((0x16 < DAT_INTMEM_5e) << 7) >> 7;
      *(undefined1 *)CONCAT11(cVar3,bVar2) = 0xff;
      *(undefined1 *)CONCAT11(cVar3 - (((0x6a < bVar2) << 7) >> 7),cVar5 + -0x55) = 0xff;
      *(undefined1 *)CONCAT11((cVar3 - (((0xd5 < bVar2) << 7) >> 7)) + '\x01',cVar5 + '@') = 0xff;
      *(byte *)CONCAT11(cVar3 - (((0xe8 < bVar2) << 7) >> 7),cVar5 + '-') = DAT_INTMEM_3f;
      *(byte *)CONCAT11(cVar3 - (((0x53 < bVar2) << 7) >> 7),cVar5 + -0x3e) = DAT_INTMEM_40;
      *(byte *)CONCAT11((cVar3 - (((0xbe < bVar2) << 7) >> 7)) + '\x01',cVar5 + 'W') = DAT_INTMEM_41
      ;
      *(undefined1 *)CONCAT11(cVar3 - (((0xd1 < bVar2) << 7) >> 7),cVar5 + 'D') = 0xff;
      *(undefined1 *)CONCAT11(cVar3 - (((0x3c < bVar2) << 7) >> 7),cVar5 + -0x27) = 0xff;
      *(undefined1 *)CONCAT11((cVar3 - (((0xa7 < bVar2) << 7) >> 7)) + '\x01',cVar5 + 'n') = 0xff;
      *(byte *)CONCAT11(cVar3 - (((0xba < bVar2) << 7) >> 7),cVar5 + '[') = DAT_INTMEM_3f;
      *(byte *)CONCAT11(cVar3 - (((0x25 < bVar2) << 7) >> 7),cVar5 + -0x10) = DAT_INTMEM_40;
      *(byte *)CONCAT11((cVar3 - (((0x90 < bVar2) << 7) >> 7)) + '\x01',cVar5 + -0x7b) =
           DAT_INTMEM_41;
      *(undefined1 *)CONCAT11(cVar3 - (((0xa3 < bVar2) << 7) >> 7),cVar5 + 'r') = 0xff;
      *(undefined1 *)CONCAT11(cVar3 - (((0xe < bVar2) << 7) >> 7),cVar5 + '\a') = 0xff;
      pbVar6 = (byte *)CONCAT11((cVar3 - (((0x79 < bVar2) << 7) >> 7)) + '\x01',cVar5 + -100);
      bVar4 = 0xff;
LAB_CODE_137e:
      *pbVar6 = bVar4;
      *(byte *)CONCAT11(cVar3 - (((0x8c < bVar2) << 7) >> 7),bVar2 + 0x73) = DAT_INTMEM_3f;
      *(byte *)CONCAT11((cVar3 - (((0xf7 < bVar2) << 7) >> 7)) + '\x01',bVar2 + 8) = DAT_INTMEM_40;
      *(byte *)CONCAT11((cVar3 - (((0x62 < bVar2) << 7) >> 7)) + '\x01',bVar2 + 0x9d) =
           DAT_INTMEM_41;
    }
    else {
      if ((DAT_INTMEM_5e < 0x17) << 7 < '\0') {
        *(byte *)(ushort)DAT_INTMEM_5e = DAT_INTMEM_3f;
        *(byte *)CONCAT11(-(((0x6a < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e + 0x95) =
             DAT_INTMEM_40;
        *(byte *)CONCAT11('\x01' - (((0xd5 < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e + 0x2a) =
             DAT_INTMEM_41;
        *(byte *)CONCAT11(-(((0xe8 < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e + 0x17) =
             DAT_INTMEM_3f;
        *(byte *)CONCAT11(-(((0x53 < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e + 0xac) =
             DAT_INTMEM_40;
        *(byte *)CONCAT11('\x01' - (((0xbe < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e + 0x41) =
             DAT_INTMEM_41;
        *(byte *)CONCAT11(-(((0xd1 < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e + 0x2e) =
             DAT_INTMEM_3f;
        *(byte *)CONCAT11(-(((0x3c < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e - 0x3d) =
             DAT_INTMEM_40;
        *(byte *)CONCAT11('\x01' - (((0xa7 < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e + 0x58) =
             DAT_INTMEM_41;
        *(byte *)CONCAT11(-(((0xba < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e + 0x45) =
             DAT_INTMEM_3f;
        *(byte *)CONCAT11(-(((0x25 < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e - 0x26) =
             DAT_INTMEM_40;
        *(byte *)CONCAT11('\x01' - (((0x90 < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e + 0x6f) =
             DAT_INTMEM_41;
        *(byte *)CONCAT11(-(((0xa3 < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e + 0x5c) =
             DAT_INTMEM_3f;
        *(byte *)CONCAT11(-(((0xe < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e - 0xf) = DAT_INTMEM_40;
        *(byte *)CONCAT11('\x01' - (((0x79 < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e + 0x86) =
             DAT_INTMEM_41;
        *(byte *)CONCAT11(-(((0x8c < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e + 0x73) =
             DAT_INTMEM_3f;
        *(byte *)CONCAT11('\x01' - (((0xf7 < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e + 8) =
             DAT_INTMEM_40;
        *(byte *)CONCAT11('\x01' - (((0x62 < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e + 0x9d) =
             DAT_INTMEM_41;
        cVar5 = -DAT_INTMEM_5e;
        bVar2 = cVar5 + 0x16;
        cVar3 = ((0x16 < DAT_INTMEM_5e) << 7) >> 7;
        *(byte *)CONCAT11(cVar3,bVar2) = DAT_INTMEM_3f;
        *(byte *)CONCAT11(cVar3 - (((0x6a < bVar2) << 7) >> 7),cVar5 + -0x55) = DAT_INTMEM_40;
        *(byte *)CONCAT11((cVar3 - (((0xd5 < bVar2) << 7) >> 7)) + '\x01',cVar5 + '@') =
             DAT_INTMEM_41;
        *(byte *)CONCAT11(cVar3 - (((0xe8 < bVar2) << 7) >> 7),cVar5 + '-') = DAT_INTMEM_3f;
        *(byte *)CONCAT11(cVar3 - (((0x53 < bVar2) << 7) >> 7),cVar5 + -0x3e) = DAT_INTMEM_40;
        *(byte *)CONCAT11((cVar3 - (((0xbe < bVar2) << 7) >> 7)) + '\x01',cVar5 + 'W') =
             DAT_INTMEM_41;
        *(byte *)CONCAT11(cVar3 - (((0xd1 < bVar2) << 7) >> 7),cVar5 + 'D') = DAT_INTMEM_3f;
        *(byte *)CONCAT11(cVar3 - (((0x3c < bVar2) << 7) >> 7),cVar5 + -0x27) = DAT_INTMEM_40;
        *(byte *)CONCAT11((cVar3 - (((0xa7 < bVar2) << 7) >> 7)) + '\x01',cVar5 + 'n') =
             DAT_INTMEM_41;
        *(byte *)CONCAT11(cVar3 - (((0xba < bVar2) << 7) >> 7),cVar5 + '[') = DAT_INTMEM_3f;
        *(byte *)CONCAT11(cVar3 - (((0x25 < bVar2) << 7) >> 7),cVar5 + -0x10) = DAT_INTMEM_40;
        *(byte *)CONCAT11((cVar3 - (((0x90 < bVar2) << 7) >> 7)) + '\x01',cVar5 + -0x7b) =
             DAT_INTMEM_41;
        *(byte *)CONCAT11(cVar3 - (((0xa3 < bVar2) << 7) >> 7),cVar5 + 'r') = DAT_INTMEM_3f;
        *(byte *)CONCAT11(cVar3 - (((0xe < bVar2) << 7) >> 7),cVar5 + '\a') = DAT_INTMEM_40;
        pbVar6 = (byte *)CONCAT11((cVar3 - (((0x79 < bVar2) << 7) >> 7)) + '\x01',cVar5 + -100);
        bVar4 = DAT_INTMEM_41;
        goto LAB_CODE_137e;
      }
      if ((DAT_INTMEM_5e < 0x22) << 7 < '\0') {
        *(undefined1 *)CONCAT11(-1 - (((0x16 < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e - 0x17) =
             0xff;
        *(undefined1 *)CONCAT11(-(((0x81 < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e + 0x7e) = 0xff;
        *(undefined1 *)CONCAT11('\x01' - (((0xec < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e + 0x13)
             = 0xff;
        *(byte *)(ushort)DAT_INTMEM_5e = DAT_INTMEM_3f;
        *(byte *)CONCAT11(-(((0x6a < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e + 0x95) =
             DAT_INTMEM_40;
        *(byte *)CONCAT11('\x01' - (((0xd5 < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e + 0x2a) =
             DAT_INTMEM_41;
        *(undefined1 *)CONCAT11(-(((0xe8 < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e + 0x17) = 0xff;
        *(undefined1 *)CONCAT11(-(((0x53 < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e + 0xac) = 0xff;
        *(undefined1 *)CONCAT11('\x01' - (((0xbe < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e + 0x41)
             = 0xff;
        *(byte *)CONCAT11(-(((0xd1 < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e + 0x2e) =
             DAT_INTMEM_3f;
        *(byte *)CONCAT11(-(((0x3c < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e - 0x3d) =
             DAT_INTMEM_40;
        *(byte *)CONCAT11('\x01' - (((0xa7 < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e + 0x58) =
             DAT_INTMEM_41;
        *(undefined1 *)CONCAT11(-(((0xba < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e + 0x45) = 0xff;
        *(undefined1 *)CONCAT11(-(((0x25 < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e - 0x26) = 0xff;
        *(undefined1 *)CONCAT11('\x01' - (((0x90 < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e + 0x6f)
             = 0xff;
        *(byte *)CONCAT11(-(((0xa3 < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e + 0x5c) =
             DAT_INTMEM_3f;
        *(byte *)CONCAT11(-(((0xe < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e - 0xf) = DAT_INTMEM_40;
        *(byte *)CONCAT11('\x01' - (((0x79 < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e + 0x86) =
             DAT_INTMEM_41;
        cVar5 = -DAT_INTMEM_5e;
        bVar2 = cVar5 + 0x2d;
        cVar3 = ((0x2d < DAT_INTMEM_5e) << 7) >> 7;
        *(byte *)CONCAT11(cVar3,bVar2) = DAT_INTMEM_3f;
        *(byte *)CONCAT11(cVar3 - (((0x6a < bVar2) << 7) >> 7),cVar5 + -0x3e) = DAT_INTMEM_40;
        *(byte *)CONCAT11((cVar3 - (((0xd5 < bVar2) << 7) >> 7)) + '\x01',cVar5 + 'W') =
             DAT_INTMEM_41;
        *(undefined1 *)CONCAT11(cVar3 - (((0xe8 < bVar2) << 7) >> 7),cVar5 + 'D') = 0xff;
        *(undefined1 *)CONCAT11(cVar3 - (((0x53 < bVar2) << 7) >> 7),cVar5 + -0x27) = 0xff;
        *(undefined1 *)CONCAT11((cVar3 - (((0xbe < bVar2) << 7) >> 7)) + '\x01',cVar5 + 'n') = 0xff;
        *(byte *)CONCAT11(cVar3 - (((0xd1 < bVar2) << 7) >> 7),cVar5 + '[') = DAT_INTMEM_3f;
        *(byte *)CONCAT11(cVar3 - (((0x3c < bVar2) << 7) >> 7),cVar5 + -0x10) = DAT_INTMEM_40;
        *(byte *)CONCAT11((cVar3 - (((0xa7 < bVar2) << 7) >> 7)) + '\x01',cVar5 + -0x7b) =
             DAT_INTMEM_41;
        *(undefined1 *)CONCAT11(cVar3 - (((0xba < bVar2) << 7) >> 7),cVar5 + 'r') = 0xff;
        *(undefined1 *)CONCAT11(cVar3 - (((0x25 < bVar2) << 7) >> 7),cVar5 + '\a') = 0xff;
        *(undefined1 *)CONCAT11((cVar3 - (((0x90 < bVar2) << 7) >> 7)) + '\x01',cVar5 + -100) = 0xff
        ;
        *(byte *)CONCAT11(cVar3 - (((0xa3 < bVar2) << 7) >> 7),cVar5 + -0x77) = DAT_INTMEM_3f;
        *(byte *)CONCAT11(cVar3 - (((0xe < bVar2) << 7) >> 7),cVar5 + '\x1e') = DAT_INTMEM_40;
        pbVar6 = (byte *)CONCAT11((cVar3 - (((0x79 < bVar2) << 7) >> 7)) + '\x01',cVar5 + -0x4d);
        bVar4 = DAT_INTMEM_41;
LAB_CODE_1731:
        *pbVar6 = bVar4;
        *(undefined1 *)CONCAT11(cVar3 - (((0x8c < bVar2) << 7) >> 7),bVar2 + 0x73) = 0xff;
        *(undefined1 *)CONCAT11((cVar3 - (((0xf7 < bVar2) << 7) >> 7)) + '\x01',bVar2 + 8) = 0xff;
        *(undefined1 *)CONCAT11((cVar3 - (((0x62 < bVar2) << 7) >> 7)) + '\x01',bVar2 + 0x9d) = 0xff
        ;
      }
      else if ((DAT_INTMEM_5e < 0x2e) << 7 < '\0') {
        *(undefined1 *)CONCAT11(-1 - (((0x16 < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e - 0x17) =
             0xff;
        *(undefined1 *)CONCAT11(-(((0x81 < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e + 0x7e) = 0xff;
        *(undefined1 *)CONCAT11('\x01' - (((0xec < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e + 0x13)
             = 0xff;
        *(undefined1 *)(ushort)DAT_INTMEM_5e = 0xff;
        *(undefined1 *)CONCAT11(-(((0x6a < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e + 0x95) = 0xff;
        *(undefined1 *)CONCAT11('\x01' - (((0xd5 < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e + 0x2a)
             = 0xff;
        *(undefined1 *)CONCAT11(-(((0xe8 < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e + 0x17) = 0xff;
        *(undefined1 *)CONCAT11(-(((0x53 < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e + 0xac) = 0xff;
        *(undefined1 *)CONCAT11('\x01' - (((0xbe < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e + 0x41)
             = 0xff;
        *(undefined1 *)CONCAT11(-(((0xd1 < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e + 0x2e) = 0xff;
        *(undefined1 *)CONCAT11(-(((0x3c < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e - 0x3d) = 0xff;
        *(undefined1 *)CONCAT11('\x01' - (((0xa7 < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e + 0x58)
             = 0xff;
        *(undefined1 *)CONCAT11(-(((0xba < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e + 0x45) = 0xff;
        *(undefined1 *)CONCAT11(-(((0x25 < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e - 0x26) = 0xff;
        *(undefined1 *)CONCAT11('\x01' - (((0x90 < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e + 0x6f)
             = 0xff;
        *(undefined1 *)CONCAT11(-(((0xa3 < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e + 0x5c) = 0xff;
        *(undefined1 *)CONCAT11(-(((0xe < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e - 0xf) = 0xff;
        *(undefined1 *)CONCAT11('\x01' - (((0x79 < DAT_INTMEM_5e) << 7) >> 7),DAT_INTMEM_5e + 0x86)
             = 0xff;
        cVar5 = -DAT_INTMEM_5e;
        bVar2 = cVar5 + 0x2d;
        cVar3 = ((0x2d < DAT_INTMEM_5e) << 7) >> 7;
        *(undefined1 *)CONCAT11(cVar3,bVar2) = 0xff;
        *(undefined1 *)CONCAT11(cVar3 - (((0x6a < bVar2) << 7) >> 7),cVar5 + -0x3e) = 0xff;
        *(undefined1 *)CONCAT11((cVar3 - (((0xd5 < bVar2) << 7) >> 7)) + '\x01',cVar5 + 'W') = 0xff;
        *(undefined1 *)CONCAT11(cVar3 - (((0xe8 < bVar2) << 7) >> 7),cVar5 + 'D') = 0xff;
        *(undefined1 *)CONCAT11(cVar3 - (((0x53 < bVar2) << 7) >> 7),cVar5 + -0x27) = 0xff;
        *(undefined1 *)CONCAT11((cVar3 - (((0xbe < bVar2) << 7) >> 7)) + '\x01',cVar5 + 'n') = 0xff;
        *(undefined1 *)CONCAT11(cVar3 - (((0xd1 < bVar2) << 7) >> 7),cVar5 + '[') = 0xff;
        *(undefined1 *)CONCAT11(cVar3 - (((0x3c < bVar2) << 7) >> 7),cVar5 + -0x10) = 0xff;
        *(undefined1 *)CONCAT11((cVar3 - (((0xa7 < bVar2) << 7) >> 7)) + '\x01',cVar5 + -0x7b) =
             0xff;
        *(undefined1 *)CONCAT11(cVar3 - (((0xba < bVar2) << 7) >> 7),cVar5 + 'r') = 0xff;
        *(undefined1 *)CONCAT11(cVar3 - (((0x25 < bVar2) << 7) >> 7),cVar5 + '\a') = 0xff;
        *(undefined1 *)CONCAT11((cVar3 - (((0x90 < bVar2) << 7) >> 7)) + '\x01',cVar5 + -100) = 0xff
        ;
        *(undefined1 *)CONCAT11(cVar3 - (((0xa3 < bVar2) << 7) >> 7),cVar5 + -0x77) = 0xff;
        *(undefined1 *)CONCAT11(cVar3 - (((0xe < bVar2) << 7) >> 7),cVar5 + '\x1e') = 0xff;
        pbVar6 = (byte *)CONCAT11((cVar3 - (((0x79 < bVar2) << 7) >> 7)) + '\x01',cVar5 + -0x4d);
        bVar4 = 0xff;
        goto LAB_CODE_1731;
      }
    }
    DAT_INTMEM_5e = DAT_INTMEM_5e + 1;
    if (DAT_INTMEM_5e < 0x2e) goto LAB_CODE_38aa;
    DAT_INTMEM_5e = 0;
  }
  else {
    if (DAT_INTMEM_76 != '\x01') {
      if (DAT_INTMEM_76 == '\x02') {
        if (_4_3 == '\0') {
          if (DAT_INTMEM_77 == 0) {
            if (DAT_INTMEM_55 == 0xff && DAT_INTMEM_54 == 0) {
              DAT_INTMEM_58 = DAT_INTMEM_58 + 1;
              if (0x10 < DAT_INTMEM_58) {
                DAT_INTMEM_58 = 0;
              }
            }
            else if (((byte)-(((DAT_INTMEM_55 < 0xb) << 7) >> 7) <= DAT_INTMEM_54) &&
                    (DAT_INTMEM_58 = DAT_INTMEM_58 + 1, 2 < DAT_INTMEM_58)) {
              DAT_INTMEM_58 = 0;
            }
          }
          else if ((DAT_INTMEM_55 == 0xff && DAT_INTMEM_54 == 0) &&
                  (DAT_INTMEM_58 = DAT_INTMEM_58 + 1, 0x10 < DAT_INTMEM_58)) {
            DAT_INTMEM_58 = 0;
          }
          DAT_INTMEM_54 = 0;
          DAT_INTMEM_55 = 0xff;
          _4_3 = '\x01';
          DAT_INTMEM_5a = DAT_INTMEM_5a + 1;
          if (6 < DAT_INTMEM_5a) {
            DAT_INTMEM_5a = 0;
          }
        }
        else {
          if (DAT_INTMEM_77 == 0) {
            if (DAT_INTMEM_55 == 0xff && DAT_INTMEM_54 == 0) {
              DAT_INTMEM_58 = DAT_INTMEM_58 + 1;
              if ((DAT_INTMEM_58 < 0x11) << 7 < '\0') {
                bVar4 = DAT_INTMEM_55 - 1;
                bVar1 = DAT_INTMEM_55 == 0;
                DAT_INTMEM_55 = bVar4;
                if (bVar1) {
                  DAT_INTMEM_54 = DAT_INTMEM_54 - 1;
                }
              }
              else {
                DAT_INTMEM_58 = 0;
              }
            }
            else if ((byte)-(((DAT_INTMEM_55 < 0xb) << 7) >> 7) <= DAT_INTMEM_54) {
              DAT_INTMEM_58 = DAT_INTMEM_58 + 1;
              if ((DAT_INTMEM_58 < 3) << 7 < '\0') {
                bVar4 = DAT_INTMEM_55 - 1;
                bVar1 = DAT_INTMEM_55 == 0;
                DAT_INTMEM_55 = bVar4;
                if (bVar1) {
                  DAT_INTMEM_54 = DAT_INTMEM_54 - 1;
                }
              }
              else {
                DAT_INTMEM_58 = 0;
              }
            }
          }
          else if (DAT_INTMEM_55 == 0xff && DAT_INTMEM_54 == 0) {
            DAT_INTMEM_58 = DAT_INTMEM_58 + 1;
            if ((DAT_INTMEM_58 < 0x11) << 7 < '\0') {
              bVar4 = DAT_INTMEM_55 - 1;
              bVar1 = DAT_INTMEM_55 == 0;
              DAT_INTMEM_55 = bVar4;
              if (bVar1) {
                DAT_INTMEM_54 = DAT_INTMEM_54 - 1;
              }
            }
            else {
              DAT_INTMEM_58 = 0;
            }
          }
          cVar5 = (DAT_INTMEM_77 < 2) << 7;
          if (cVar5 < '\0') {
            if ((DAT_INTMEM_54 < (byte)-(((DAT_INTMEM_55 == 0) << 7) >> 7)) << 7 < '\0') {
              _4_3 = '\0';
            }
            else {
              bVar4 = DAT_INTMEM_55 - 1;
              bVar1 = DAT_INTMEM_55 == 0;
              DAT_INTMEM_55 = bVar4;
              if (bVar1) {
                DAT_INTMEM_54 = DAT_INTMEM_54 - 1;
              }
            }
          }
          else {
            cVar5 = (DAT_INTMEM_54 <
                    (byte)-(((DAT_INTMEM_55 < DAT_INTMEM_77 - (cVar5 >> 7)) << 7) >> 7)) << 7;
            if (cVar5 < '\0') {
              DAT_INTMEM_54 = 0;
              DAT_INTMEM_55 = 0;
              _4_3 = '\0';
            }
            else {
              bVar4 = DAT_INTMEM_77 - (cVar5 >> 7);
              DAT_INTMEM_54 = DAT_INTMEM_54 + (((DAT_INTMEM_55 < bVar4) << 7) >> 7);
              DAT_INTMEM_55 = DAT_INTMEM_55 - bVar4;
            }
          }
        }
      }
      else {
        if (DAT_INTMEM_76 != '\x03') {
          cVar5 = FUN_CODE_272f();
          return cVar5;
        }
        DAT_INTMEM_57 = DAT_INTMEM_57 + 1;
        if (6 - DAT_INTMEM_77 <= DAT_INTMEM_57) {
          DAT_INTMEM_57 = 0;
          if ((BANK3_R5 < 10) << 7 < '\0') {
            DAT_INTMEM_3e = '\t' - BANK3_R5;
          }
          else {
            DAT_INTMEM_3e = '\0';
          }
          DAT_INTMEM_42 = BANK3_R5;
          if (0x16 < BANK3_R5) {
            cVar5 = FUN_CODE_2125(BANK3_R5 - 0x17);
            return cVar5;
          }
          DAT_INTMEM_5e = 10;
          do {
            if (DAT_INTMEM_5e < DAT_INTMEM_3e + 1U) {
              cVar5 = FUN_CODE_2120(DAT_INTMEM_5e - (DAT_INTMEM_3e + 1U),3);
              return cVar5;
            }
            DAT_INTMEM_54 = 0;
            DAT_INTMEM_55 = BANK0_R5;
            if (BANK3_R4 == 0) {
              DAT_INTMEM_3f = 0xff;
              DAT_INTMEM_40 = 0xff;
              DAT_INTMEM_41 = BANK0_R5;
              goto LAB_CODE_20c4;
            }
            if (BANK3_R4 == 1) {
              DAT_INTMEM_3f = 0xff;
LAB_CODE_20ae:
              DAT_INTMEM_40 = BANK0_R5;
LAB_CODE_20b0:
              DAT_INTMEM_41 = 0xff;
            }
            else {
              if (BANK3_R4 == 2) {
                DAT_INTMEM_3f = BANK0_R5;
                DAT_INTMEM_40 = 0xff;
                goto LAB_CODE_20b0;
              }
              if (BANK3_R4 == 3) {
                DAT_INTMEM_3f = 0xff;
LAB_CODE_20c0:
                DAT_INTMEM_40 = BANK0_R5;
                DAT_INTMEM_41 = BANK0_R5;
              }
              else if (BANK3_R4 == 4) {
                DAT_INTMEM_3f = BANK0_R5;
                DAT_INTMEM_40 = 0xff;
                DAT_INTMEM_41 = BANK0_R5;
              }
              else {
                if (BANK3_R4 == 5) {
                  DAT_INTMEM_3f = BANK0_R5;
                  goto LAB_CODE_20ae;
                }
                if (BANK3_R4 == 6) {
                  DAT_INTMEM_3f = BANK0_R5;
                  goto LAB_CODE_20c0;
                }
              }
            }
LAB_CODE_20c4:
            *(byte *)(ushort)DAT_INTMEM_42 = DAT_INTMEM_3f;
            *(byte *)CONCAT11(-(((0x6a < DAT_INTMEM_42) << 7) >> 7),DAT_INTMEM_42 + 0x95) =
                 DAT_INTMEM_40;
            *(byte *)CONCAT11('\x01' - (((0xd5 < DAT_INTMEM_42) << 7) >> 7),DAT_INTMEM_42 + 0x2a) =
                 DAT_INTMEM_41;
            *(byte *)(ushort)DAT_INTMEM_42 = DAT_INTMEM_3f;
            *(byte *)CONCAT11(-(((0x6a < DAT_INTMEM_42) << 7) >> 7),DAT_INTMEM_42 + 0x95) =
                 DAT_INTMEM_40;
            *(byte *)CONCAT11('\x01' - (((0xd5 < DAT_INTMEM_42) << 7) >> 7),DAT_INTMEM_42 + 0x2a) =
                 DAT_INTMEM_41;
            DAT_INTMEM_42 = DAT_INTMEM_42 - 1;
            DAT_INTMEM_5e = DAT_INTMEM_5e - 1;
          } while( true );
        }
      }
      goto LAB_CODE_38aa;
    }
    DAT_INTMEM_57 = DAT_INTMEM_57 + 1;
    if (DAT_INTMEM_57 < 6 - DAT_INTMEM_77) goto LAB_CODE_38aa;
    DAT_INTMEM_57 = 0;
    if ((BANK3_R5 < 10) << 7 < '\0') {
      DAT_INTMEM_3e = '\t' - BANK3_R5;
    }
    else {
      DAT_INTMEM_3e = '\0';
    }
    DAT_INTMEM_42 = BANK3_R5;
    if ((BANK3_R5 < 0x17) << 7 < '\0') {
      for (DAT_INTMEM_5e = 10; DAT_INTMEM_3e + 1U <= DAT_INTMEM_5e;
          DAT_INTMEM_5e = DAT_INTMEM_5e - 1) {
        DAT_INTMEM_54 = 0;
        DAT_INTMEM_55 = BANK0_R7;
        if (BANK3_R4 == 0) {
          DAT_INTMEM_3f = 0xff;
          DAT_INTMEM_40 = 0xff;
          DAT_INTMEM_41 = BANK0_R7;
          goto LAB_CODE_183a;
        }
        if (BANK3_R4 == 1) {
          DAT_INTMEM_3f = 0xff;
LAB_CODE_1824:
          DAT_INTMEM_40 = BANK0_R7;
LAB_CODE_1826:
          DAT_INTMEM_41 = 0xff;
        }
        else {
          if (BANK3_R4 == 2) {
            DAT_INTMEM_3f = BANK0_R7;
            DAT_INTMEM_40 = 0xff;
            goto LAB_CODE_1826;
          }
          if (BANK3_R4 == 3) {
            DAT_INTMEM_3f = 0xff;
LAB_CODE_1836:
            DAT_INTMEM_40 = BANK0_R7;
            DAT_INTMEM_41 = BANK0_R7;
          }
          else if (BANK3_R4 == 4) {
            DAT_INTMEM_3f = BANK0_R7;
            DAT_INTMEM_40 = 0xff;
            DAT_INTMEM_41 = BANK0_R7;
          }
          else {
            if (BANK3_R4 == 5) {
              DAT_INTMEM_3f = BANK0_R7;
              goto LAB_CODE_1824;
            }
            if (BANK3_R4 == 6) {
              DAT_INTMEM_3f = BANK0_R7;
              goto LAB_CODE_1836;
            }
          }
        }
LAB_CODE_183a:
        *(byte *)(ushort)DAT_INTMEM_42 = DAT_INTMEM_3f;
        *(byte *)CONCAT11(-(((0x6a < DAT_INTMEM_42) << 7) >> 7),DAT_INTMEM_42 + 0x95) =
             DAT_INTMEM_40;
        *(byte *)CONCAT11('\x01' - (((0xd5 < DAT_INTMEM_42) << 7) >> 7),DAT_INTMEM_42 + 0x2a) =
             DAT_INTMEM_41;
        *(byte *)(ushort)DAT_INTMEM_42 = DAT_INTMEM_3f;
        *(byte *)CONCAT11(-(((0x6a < DAT_INTMEM_42) << 7) >> 7),DAT_INTMEM_42 + 0x95) =
             DAT_INTMEM_40;
        *(byte *)CONCAT11('\x01' - (((0xd5 < DAT_INTMEM_42) << 7) >> 7),DAT_INTMEM_42 + 0x2a) =
             DAT_INTMEM_41;
        DAT_INTMEM_42 = DAT_INTMEM_42 - 1;
      }
      BANK3_R5 = BANK3_R5 + 1;
      goto LAB_CODE_38aa;
    }
    if ((BANK3_R5 < 0x2e) << 7 < '\0') {
      for (DAT_INTMEM_5e = 10; DAT_INTMEM_3e + 1U <= DAT_INTMEM_5e;
          DAT_INTMEM_5e = DAT_INTMEM_5e - 1) {
        DAT_INTMEM_54 = 0;
        DAT_INTMEM_55 = BANK0_R7;
        if (BANK3_R4 == 0) {
          DAT_INTMEM_3f = 0xff;
          DAT_INTMEM_40 = 0xff;
          DAT_INTMEM_41 = BANK0_R7;
          goto LAB_CODE_192b;
        }
        if (BANK3_R4 == 1) {
          DAT_INTMEM_3f = 0xff;
LAB_CODE_1915:
          DAT_INTMEM_40 = BANK0_R7;
LAB_CODE_1917:
          DAT_INTMEM_41 = 0xff;
        }
        else {
          if (BANK3_R4 == 2) {
            DAT_INTMEM_3f = BANK0_R7;
            DAT_INTMEM_40 = 0xff;
            goto LAB_CODE_1917;
          }
          if (BANK3_R4 == 3) {
            DAT_INTMEM_3f = 0xff;
LAB_CODE_1927:
            DAT_INTMEM_40 = BANK0_R7;
            DAT_INTMEM_41 = BANK0_R7;
          }
          else if (BANK3_R4 == 4) {
            DAT_INTMEM_3f = BANK0_R7;
            DAT_INTMEM_40 = 0xff;
            DAT_INTMEM_41 = BANK0_R7;
          }
          else {
            if (BANK3_R4 == 5) {
              DAT_INTMEM_3f = BANK0_R7;
              goto LAB_CODE_1915;
            }
            if (BANK3_R4 == 6) {
              DAT_INTMEM_3f = BANK0_R7;
              goto LAB_CODE_1927;
            }
          }
        }
LAB_CODE_192b:
        cVar5 = (DAT_INTMEM_42 < 0x17) << 7;
        if (cVar5 < '\0') {
          *(byte *)(ushort)DAT_INTMEM_42 = DAT_INTMEM_3f;
          *(byte *)CONCAT11(-(((0x6a < DAT_INTMEM_42) << 7) >> 7),DAT_INTMEM_42 + 0x95) =
               DAT_INTMEM_40;
          cVar3 = DAT_INTMEM_42 + 0x2a;
          cVar5 = -(((0xd5 < DAT_INTMEM_42) << 7) >> 7);
        }
        else {
          bVar4 = DAT_INTMEM_42 - (cVar5 >> 7);
          cVar3 = -bVar4;
          bVar2 = cVar3 + 0x44;
          cVar5 = ((0x44 < bVar4) << 7) >> 7;
          *(byte *)CONCAT11(cVar5,bVar2) = DAT_INTMEM_3f;
          *(byte *)CONCAT11(cVar5 - (((0x6a < bVar2) << 7) >> 7),cVar3 + -0x27) = DAT_INTMEM_40;
          cVar3 = cVar3 + 'n';
          cVar5 = cVar5 - (((0xd5 < bVar2) << 7) >> 7);
        }
        *(byte *)CONCAT11(cVar5 + '\x01',cVar3) = DAT_INTMEM_41;
        DAT_INTMEM_42 = DAT_INTMEM_42 - 1;
      }
      BANK3_R5 = BANK3_R5 + 1;
      goto LAB_CODE_38aa;
    }
    if ((BANK3_R5 < 0x45) << 7 < '\0') {
      for (DAT_INTMEM_5e = 10; DAT_INTMEM_3e + 1U <= DAT_INTMEM_5e;
          DAT_INTMEM_5e = DAT_INTMEM_5e - 1) {
        DAT_INTMEM_54 = 0;
        DAT_INTMEM_55 = BANK0_R7;
        if (BANK3_R4 == 0) {
          DAT_INTMEM_3f = 0xff;
          DAT_INTMEM_40 = 0xff;
          DAT_INTMEM_41 = BANK0_R7;
          goto LAB_CODE_1a26;
        }
        if (BANK3_R4 == 1) {
          DAT_INTMEM_3f = 0xff;
LAB_CODE_1a10:
          DAT_INTMEM_40 = BANK0_R7;
LAB_CODE_1a12:
          DAT_INTMEM_41 = 0xff;
        }
        else {
          if (BANK3_R4 == 2) {
            DAT_INTMEM_3f = BANK0_R7;
            DAT_INTMEM_40 = 0xff;
            goto LAB_CODE_1a12;
          }
          if (BANK3_R4 == 3) {
            DAT_INTMEM_3f = 0xff;
LAB_CODE_1a22:
            DAT_INTMEM_40 = BANK0_R7;
            DAT_INTMEM_41 = BANK0_R7;
          }
          else if (BANK3_R4 == 4) {
            DAT_INTMEM_3f = BANK0_R7;
            DAT_INTMEM_40 = 0xff;
            DAT_INTMEM_41 = BANK0_R7;
          }
          else {
            if (BANK3_R4 == 5) {
              DAT_INTMEM_3f = BANK0_R7;
              goto LAB_CODE_1a10;
            }
            if (BANK3_R4 == 6) {
              DAT_INTMEM_3f = BANK0_R7;
              goto LAB_CODE_1a22;
            }
          }
        }
LAB_CODE_1a26:
        if ((DAT_INTMEM_42 < 0x2e) << 7 < '\0') {
          cVar3 = -DAT_INTMEM_42;
          bVar4 = cVar3 + 0x44;
          cVar5 = ((0x44 < DAT_INTMEM_42) << 7) >> 7;
          *(byte *)CONCAT11(cVar5,bVar4) = DAT_INTMEM_3f;
          *(byte *)CONCAT11(cVar5 - (((0x6a < bVar4) << 7) >> 7),cVar3 + -0x27) = DAT_INTMEM_40;
          cVar3 = cVar3 + 'n';
          cVar5 = cVar5 - (((0xd5 < bVar4) << 7) >> 7);
        }
        else {
          *(byte *)(ushort)DAT_INTMEM_42 = DAT_INTMEM_3f;
          *(byte *)CONCAT11(-(((0x6a < DAT_INTMEM_42) << 7) >> 7),DAT_INTMEM_42 + 0x95) =
               DAT_INTMEM_40;
          cVar3 = DAT_INTMEM_42 + 0x2a;
          cVar5 = -(((0xd5 < DAT_INTMEM_42) << 7) >> 7);
        }
        *(byte *)CONCAT11(cVar5 + '\x01',cVar3) = DAT_INTMEM_41;
        DAT_INTMEM_42 = DAT_INTMEM_42 - 1;
      }
      BANK3_R5 = BANK3_R5 + 1;
      goto LAB_CODE_38aa;
    }
    if ((BANK3_R5 < 0x5c) << 7 < '\0') {
      for (DAT_INTMEM_5e = 10; DAT_INTMEM_3e + 1U <= DAT_INTMEM_5e;
          DAT_INTMEM_5e = DAT_INTMEM_5e - 1) {
        DAT_INTMEM_54 = 0;
        DAT_INTMEM_55 = BANK0_R7;
        if (BANK3_R4 == 0) {
          DAT_INTMEM_3f = 0xff;
          DAT_INTMEM_40 = 0xff;
          DAT_INTMEM_41 = BANK0_R7;
          goto LAB_CODE_1b22;
        }
        if (BANK3_R4 == 1) {
          DAT_INTMEM_3f = 0xff;
LAB_CODE_1b0c:
          DAT_INTMEM_40 = BANK0_R7;
LAB_CODE_1b0e:
          DAT_INTMEM_41 = 0xff;
        }
        else {
          if (BANK3_R4 == 2) {
            DAT_INTMEM_3f = BANK0_R7;
            DAT_INTMEM_40 = 0xff;
            goto LAB_CODE_1b0e;
          }
          if (BANK3_R4 == 3) {
            DAT_INTMEM_3f = 0xff;
LAB_CODE_1b1e:
            DAT_INTMEM_40 = BANK0_R7;
            DAT_INTMEM_41 = BANK0_R7;
          }
          else if (BANK3_R4 == 4) {
            DAT_INTMEM_3f = BANK0_R7;
            DAT_INTMEM_40 = 0xff;
            DAT_INTMEM_41 = BANK0_R7;
          }
          else {
            if (BANK3_R4 == 5) {
              DAT_INTMEM_3f = BANK0_R7;
              goto LAB_CODE_1b0c;
            }
            if (BANK3_R4 == 6) {
              DAT_INTMEM_3f = BANK0_R7;
              goto LAB_CODE_1b1e;
            }
          }
        }
LAB_CODE_1b22:
        cVar5 = (DAT_INTMEM_42 < 0x45) << 7;
        if (cVar5 < '\0') {
          *(byte *)(ushort)DAT_INTMEM_42 = DAT_INTMEM_3f;
          *(byte *)CONCAT11(-(((0x6a < DAT_INTMEM_42) << 7) >> 7),DAT_INTMEM_42 + 0x95) =
               DAT_INTMEM_40;
          cVar3 = DAT_INTMEM_42 + 0x2a;
          cVar5 = -(((0xd5 < DAT_INTMEM_42) << 7) >> 7);
        }
        else {
          bVar4 = DAT_INTMEM_42 - (cVar5 >> 7);
          cVar3 = -bVar4;
          bVar2 = cVar3 + 0xa0;
          cVar5 = ((0xa0 < bVar4) << 7) >> 7;
          *(byte *)CONCAT11(cVar5,bVar2) = DAT_INTMEM_3f;
          *(byte *)CONCAT11(cVar5 - (((0x6a < bVar2) << 7) >> 7),cVar3 + '5') = DAT_INTMEM_40;
          cVar3 = cVar3 + -0x36;
          cVar5 = cVar5 - (((0xd5 < bVar2) << 7) >> 7);
        }
        *(byte *)CONCAT11(cVar5 + '\x01',cVar3) = DAT_INTMEM_41;
        DAT_INTMEM_42 = DAT_INTMEM_42 - 1;
      }
      BANK3_R5 = BANK3_R5 + 1;
      goto LAB_CODE_38aa;
    }
    if ((BANK3_R5 < 0x73) << 7 < '\0') {
      for (DAT_INTMEM_5e = 10; DAT_INTMEM_3e + 1U <= DAT_INTMEM_5e;
          DAT_INTMEM_5e = DAT_INTMEM_5e - 1) {
        DAT_INTMEM_54 = 0;
        DAT_INTMEM_55 = BANK0_R7;
        if (BANK3_R4 == 0) {
          DAT_INTMEM_3f = 0xff;
          DAT_INTMEM_40 = 0xff;
          DAT_INTMEM_41 = BANK0_R7;
          goto LAB_CODE_1c1d;
        }
        if (BANK3_R4 == 1) {
          DAT_INTMEM_3f = 0xff;
LAB_CODE_1c07:
          DAT_INTMEM_40 = BANK0_R7;
LAB_CODE_1c09:
          DAT_INTMEM_41 = 0xff;
        }
        else {
          if (BANK3_R4 == 2) {
            DAT_INTMEM_3f = BANK0_R7;
            DAT_INTMEM_40 = 0xff;
            goto LAB_CODE_1c09;
          }
          if (BANK3_R4 == 3) {
            DAT_INTMEM_3f = 0xff;
LAB_CODE_1c19:
            DAT_INTMEM_40 = BANK0_R7;
            DAT_INTMEM_41 = BANK0_R7;
          }
          else if (BANK3_R4 == 4) {
            DAT_INTMEM_3f = BANK0_R7;
            DAT_INTMEM_40 = 0xff;
            DAT_INTMEM_41 = BANK0_R7;
          }
          else {
            if (BANK3_R4 == 5) {
              DAT_INTMEM_3f = BANK0_R7;
              goto LAB_CODE_1c07;
            }
            if (BANK3_R4 == 6) {
              DAT_INTMEM_3f = BANK0_R7;
              goto LAB_CODE_1c19;
            }
          }
        }
LAB_CODE_1c1d:
        if ((DAT_INTMEM_42 < 0x5c) << 7 < '\0') {
          cVar3 = -DAT_INTMEM_42;
          bVar4 = cVar3 + 0xa0;
          cVar5 = ((0xa0 < DAT_INTMEM_42) << 7) >> 7;
          *(byte *)CONCAT11(cVar5,bVar4) = DAT_INTMEM_3f;
          *(byte *)CONCAT11(cVar5 - (((0x6a < bVar4) << 7) >> 7),cVar3 + '5') = DAT_INTMEM_40;
          cVar3 = cVar3 + -0x36;
          cVar5 = cVar5 - (((0xd5 < bVar4) << 7) >> 7);
        }
        else {
          *(byte *)(ushort)DAT_INTMEM_42 = DAT_INTMEM_3f;
          *(byte *)CONCAT11(-(((0x6a < DAT_INTMEM_42) << 7) >> 7),DAT_INTMEM_42 + 0x95) =
               DAT_INTMEM_40;
          cVar3 = DAT_INTMEM_42 + 0x2a;
          cVar5 = -(((0xd5 < DAT_INTMEM_42) << 7) >> 7);
        }
        *(byte *)CONCAT11(cVar5 + '\x01',cVar3) = DAT_INTMEM_41;
        DAT_INTMEM_42 = DAT_INTMEM_42 - 1;
      }
      BANK3_R5 = BANK3_R5 + 1;
      goto LAB_CODE_38aa;
    }
    if ((BANK3_R5 < 0x8a) << 7 < '\0') {
      for (DAT_INTMEM_5e = 10; DAT_INTMEM_3e + 1U <= DAT_INTMEM_5e;
          DAT_INTMEM_5e = DAT_INTMEM_5e - 1) {
        DAT_INTMEM_54 = 0;
        DAT_INTMEM_55 = BANK0_R7;
        if (BANK3_R4 == 0) {
          DAT_INTMEM_3f = 0xff;
          DAT_INTMEM_40 = 0xff;
          DAT_INTMEM_41 = BANK0_R7;
          goto LAB_CODE_1d19;
        }
        if (BANK3_R4 == 1) {
          DAT_INTMEM_3f = 0xff;
LAB_CODE_1d03:
          DAT_INTMEM_40 = BANK0_R7;
LAB_CODE_1d05:
          DAT_INTMEM_41 = 0xff;
        }
        else {
          if (BANK3_R4 == 2) {
            DAT_INTMEM_3f = BANK0_R7;
            DAT_INTMEM_40 = 0xff;
            goto LAB_CODE_1d05;
          }
          if (BANK3_R4 == 3) {
            DAT_INTMEM_3f = 0xff;
LAB_CODE_1d15:
            DAT_INTMEM_40 = BANK0_R7;
            DAT_INTMEM_41 = BANK0_R7;
          }
          else if (BANK3_R4 == 4) {
            DAT_INTMEM_3f = BANK0_R7;
            DAT_INTMEM_40 = 0xff;
            DAT_INTMEM_41 = BANK0_R7;
          }
          else {
            if (BANK3_R4 == 5) {
              DAT_INTMEM_3f = BANK0_R7;
              goto LAB_CODE_1d03;
            }
            if (BANK3_R4 == 6) {
              DAT_INTMEM_3f = BANK0_R7;
              goto LAB_CODE_1d15;
            }
          }
        }
LAB_CODE_1d19:
        cVar5 = (DAT_INTMEM_42 < 0x73) << 7;
        if (cVar5 < '\0') {
          *(byte *)(ushort)DAT_INTMEM_42 = DAT_INTMEM_3f;
          *(byte *)CONCAT11(-(((0x6a < DAT_INTMEM_42) << 7) >> 7),DAT_INTMEM_42 + 0x95) =
               DAT_INTMEM_40;
          cVar3 = DAT_INTMEM_42 + 0x2a;
          cVar5 = -(((0xd5 < DAT_INTMEM_42) << 7) >> 7);
        }
        else {
          bVar4 = DAT_INTMEM_42 - (cVar5 >> 7);
          cVar3 = -bVar4;
          bVar2 = cVar3 - 4;
          cVar5 = ((0xfc < bVar4) << 7) >> 7;
          *(byte *)CONCAT11(cVar5,bVar2) = DAT_INTMEM_3f;
          *(byte *)CONCAT11(cVar5 - (((0x6a < bVar2) << 7) >> 7),cVar3 + -0x6f) = DAT_INTMEM_40;
          cVar3 = cVar3 + '&';
          cVar5 = cVar5 - (((0xd5 < bVar2) << 7) >> 7);
        }
        *(byte *)CONCAT11(cVar5 + '\x01',cVar3) = DAT_INTMEM_41;
        DAT_INTMEM_42 = DAT_INTMEM_42 - 1;
      }
      BANK3_R5 = BANK3_R5 + 1;
      goto LAB_CODE_38aa;
    }
    if (0x94 < BANK3_R5) goto LAB_CODE_38aa;
    for (DAT_INTMEM_5e = 10; DAT_INTMEM_3e + 1U <= DAT_INTMEM_5e; DAT_INTMEM_5e = DAT_INTMEM_5e - 1)
    {
      DAT_INTMEM_54 = 0;
      DAT_INTMEM_55 = BANK0_R7;
      if (BANK3_R4 == 0) {
        DAT_INTMEM_3f = 0xff;
        DAT_INTMEM_40 = 0xff;
        DAT_INTMEM_41 = BANK0_R7;
        goto LAB_CODE_1e14;
      }
      if (BANK3_R4 == 1) {
        DAT_INTMEM_3f = 0xff;
LAB_CODE_1dfe:
        DAT_INTMEM_40 = BANK0_R7;
LAB_CODE_1e00:
        DAT_INTMEM_41 = 0xff;
      }
      else {
        if (BANK3_R4 == 2) {
          DAT_INTMEM_3f = BANK0_R7;
          DAT_INTMEM_40 = 0xff;
          goto LAB_CODE_1e00;
        }
        if (BANK3_R4 == 3) {
          DAT_INTMEM_3f = 0xff;
LAB_CODE_1e10:
          DAT_INTMEM_40 = BANK0_R7;
          DAT_INTMEM_41 = BANK0_R7;
        }
        else if (BANK3_R4 == 4) {
          DAT_INTMEM_3f = BANK0_R7;
          DAT_INTMEM_40 = 0xff;
          DAT_INTMEM_41 = BANK0_R7;
        }
        else {
          if (BANK3_R4 == 5) {
            DAT_INTMEM_3f = BANK0_R7;
            goto LAB_CODE_1dfe;
          }
          if (BANK3_R4 == 6) {
            DAT_INTMEM_3f = BANK0_R7;
            goto LAB_CODE_1e10;
          }
        }
      }
LAB_CODE_1e14:
      if ((DAT_INTMEM_42 < 0x8b) << 7 < '\0') {
        cVar3 = -DAT_INTMEM_42;
        bVar4 = cVar3 - 3;
        cVar5 = ((0xfd < DAT_INTMEM_42) << 7) >> 7;
        *(byte *)CONCAT11(cVar5,bVar4) = DAT_INTMEM_3f;
        *(byte *)CONCAT11(cVar5 - (((0x6a < bVar4) << 7) >> 7),cVar3 + -0x6e) = DAT_INTMEM_40;
        cVar3 = cVar3 + '\'';
        cVar5 = cVar5 - (((0xd5 < bVar4) << 7) >> 7);
      }
      else {
        *(byte *)(ushort)DAT_INTMEM_42 = DAT_INTMEM_3f;
        *(byte *)CONCAT11(-(((0x6a < DAT_INTMEM_42) << 7) >> 7),DAT_INTMEM_42 + 0x95) =
             DAT_INTMEM_40;
        cVar3 = DAT_INTMEM_42 + 0x2a;
        cVar5 = -(((0xd5 < DAT_INTMEM_42) << 7) >> 7);
      }
      *(byte *)CONCAT11(cVar5 + '\x01',cVar3) = DAT_INTMEM_41;
      DAT_INTMEM_42 = DAT_INTMEM_42 - 1;
    }
    BANK3_R5 = BANK3_R5 + 1;
    if (BANK3_R5 < 0x95) goto LAB_CODE_38aa;
    BANK3_R5 = 0;
  }
  DAT_INTMEM_57 = 0;
  BANK3_R4 = BANK3_R4 + 1;
  if (6 < BANK3_R4) {
    DAT_INTMEM_57 = 0;
    BANK3_R4 = 0;
  }
LAB_CODE_38aa:
  bVar4 = DAT_INTMEM_53 + 1;
  cVar5 = DAT_INTMEM_53 + -0x1a;
  DAT_INTMEM_53 = bVar4;
  if (0x1a < bVar4) {
    cVar5 = '\0';
    DAT_INTMEM_53 = 0;
  }
  return cVar5;
}


// ===== FUN_CODE_210b @ CODE:210b =====

void FUN_CODE_210b(char param_1,char param_2,undefined1 param_3)

{
  byte bVar1;
  byte bVar2;
  byte bVar3;
  
  bVar3 = param_1 + param_2;
  do {
    bVar2 = DAT_INTMEM_42;
    *(undefined1 *)
     CONCAT11('\x01' - ((CARRY1(bVar3,DAT_INTMEM_42) << 7) >> 7),bVar3 + DAT_INTMEM_42) =
         DAT_INTMEM_41;
    DAT_INTMEM_42 = DAT_INTMEM_42 - 1;
    bVar1 = DAT_INTMEM_5e - 1;
    if (bVar1 < DAT_INTMEM_3e + 1U) {
      DAT_INTMEM_5e = bVar1;
      FUN_CODE_2120(bVar1 - (DAT_INTMEM_3e + 1U),param_3);
      return;
    }
    param_3 = *(undefined1 *)(DAT_INTMEM_5e + 0x5d);
    DAT_INTMEM_54 = 0;
    DAT_INTMEM_55 = BANK0_R5;
    if (BANK3_R4 == '\0') {
      DAT_INTMEM_3f = 0xff;
      DAT_INTMEM_40 = 0xff;
      DAT_INTMEM_41 = BANK0_R5;
      goto LAB_CODE_20c4;
    }
    if (BANK3_R4 == '\x01') {
      DAT_INTMEM_3f = 0xff;
LAB_CODE_20ae:
      DAT_INTMEM_40 = BANK0_R5;
LAB_CODE_20b0:
      DAT_INTMEM_41 = 0xff;
    }
    else {
      if (BANK3_R4 == '\x02') {
        DAT_INTMEM_3f = BANK0_R5;
        DAT_INTMEM_40 = 0xff;
        goto LAB_CODE_20b0;
      }
      if (BANK3_R4 == '\x03') {
        DAT_INTMEM_3f = 0xff;
LAB_CODE_20c0:
        DAT_INTMEM_40 = BANK0_R5;
        DAT_INTMEM_41 = BANK0_R5;
      }
      else if (BANK3_R4 == '\x04') {
        DAT_INTMEM_3f = BANK0_R5;
        DAT_INTMEM_40 = 0xff;
        DAT_INTMEM_41 = BANK0_R5;
      }
      else {
        if (BANK3_R4 == '\x05') {
          DAT_INTMEM_3f = BANK0_R5;
          goto LAB_CODE_20ae;
        }
        if (BANK3_R4 == '\x06') {
          DAT_INTMEM_3f = BANK0_R5;
          goto LAB_CODE_20c0;
        }
      }
    }
LAB_CODE_20c4:
    *(undefined1 *)(ushort)DAT_INTMEM_42 = DAT_INTMEM_3f;
    *(undefined1 *)CONCAT11(-(((0x6a < DAT_INTMEM_42) << 7) >> 7),bVar2 + 0x94) = DAT_INTMEM_40;
    *(undefined1 *)CONCAT11('\x01' - (((0xd5 < DAT_INTMEM_42) << 7) >> 7),bVar2 + 0x29) =
         DAT_INTMEM_41;
    *(undefined1 *)(ushort)DAT_INTMEM_42 = DAT_INTMEM_3f;
    *(undefined1 *)CONCAT11(-(((0x6a < DAT_INTMEM_42) << 7) >> 7),bVar2 + 0x94) = DAT_INTMEM_40;
    bVar3 = 0x2a;
    DAT_INTMEM_5e = bVar1;
  } while( true );
}


// ===== FUN_CODE_2120 @ CODE:2120 =====

char FUN_CODE_2120(void)

{
  byte bVar1;
  char cVar2;
  
  BANK3_R5 = BANK3_R5 + '\x01';
  bVar1 = DAT_INTMEM_53 + 1;
  cVar2 = DAT_INTMEM_53 + -0x1a;
  DAT_INTMEM_53 = bVar1;
  if (0x1a < bVar1) {
    cVar2 = '\0';
    DAT_INTMEM_53 = 0;
  }
  return cVar2;
}


// ===== FUN_CODE_2125 @ CODE:2125 =====

char FUN_CODE_2125(void)

{
  byte bVar1;
  char cVar2;
  byte bVar3;
  char cVar4;
  
  if ((BANK3_R5 < 0x2e) << 7 < '\0') {
    for (DAT_INTMEM_5e = 10; DAT_INTMEM_3e + 1U <= DAT_INTMEM_5e; DAT_INTMEM_5e = DAT_INTMEM_5e - 1)
    {
      DAT_INTMEM_54 = 0;
      DAT_INTMEM_55 = BANK0_R5;
      if (BANK3_R4 == 0) {
        DAT_INTMEM_3f = 0xff;
        DAT_INTMEM_40 = 0xff;
        DAT_INTMEM_41 = BANK0_R5;
        goto LAB_CODE_21b5;
      }
      if (BANK3_R4 == 1) {
        DAT_INTMEM_3f = 0xff;
LAB_CODE_219f:
        DAT_INTMEM_40 = BANK0_R5;
LAB_CODE_21a1:
        DAT_INTMEM_41 = 0xff;
      }
      else {
        if (BANK3_R4 == 2) {
          DAT_INTMEM_3f = BANK0_R5;
          DAT_INTMEM_40 = 0xff;
          goto LAB_CODE_21a1;
        }
        if (BANK3_R4 == 3) {
          DAT_INTMEM_3f = 0xff;
LAB_CODE_21b1:
          DAT_INTMEM_40 = BANK0_R5;
          DAT_INTMEM_41 = BANK0_R5;
        }
        else if (BANK3_R4 == 4) {
          DAT_INTMEM_3f = BANK0_R5;
          DAT_INTMEM_40 = 0xff;
          DAT_INTMEM_41 = BANK0_R5;
        }
        else {
          if (BANK3_R4 == 5) {
            DAT_INTMEM_3f = BANK0_R5;
            goto LAB_CODE_219f;
          }
          if (BANK3_R4 == 6) {
            DAT_INTMEM_3f = BANK0_R5;
            goto LAB_CODE_21b1;
          }
        }
      }
LAB_CODE_21b5:
      cVar4 = (DAT_INTMEM_42 < 0x17) << 7;
      if (cVar4 < '\0') {
        *(undefined1 *)(ushort)DAT_INTMEM_42 = DAT_INTMEM_3f;
        *(undefined1 *)CONCAT11(-(((0x6a < DAT_INTMEM_42) << 7) >> 7),DAT_INTMEM_42 + 0x95) =
             DAT_INTMEM_40;
        cVar2 = DAT_INTMEM_42 + 0x2a;
        cVar4 = -(((0xd5 < DAT_INTMEM_42) << 7) >> 7);
      }
      else {
        bVar3 = DAT_INTMEM_42 - (cVar4 >> 7);
        cVar2 = -bVar3;
        bVar1 = cVar2 + 0x44;
        cVar4 = ((0x44 < bVar3) << 7) >> 7;
        *(undefined1 *)CONCAT11(cVar4,bVar1) = DAT_INTMEM_3f;
        *(undefined1 *)CONCAT11(cVar4 - (((0x6a < bVar1) << 7) >> 7),cVar2 + -0x27) = DAT_INTMEM_40;
        cVar2 = cVar2 + 'n';
        cVar4 = cVar4 - (((0xd5 < bVar1) << 7) >> 7);
      }
      *(undefined1 *)CONCAT11(cVar4 + '\x01',cVar2) = DAT_INTMEM_41;
      DAT_INTMEM_42 = DAT_INTMEM_42 - 1;
    }
    BANK3_R5 = BANK3_R5 + 1;
  }
  else if ((BANK3_R5 < 0x45) << 7 < '\0') {
    for (DAT_INTMEM_5e = 10; DAT_INTMEM_3e + 1U <= DAT_INTMEM_5e; DAT_INTMEM_5e = DAT_INTMEM_5e - 1)
    {
      DAT_INTMEM_54 = 0;
      DAT_INTMEM_55 = BANK0_R5;
      if (BANK3_R4 == 0) {
        DAT_INTMEM_3f = 0xff;
        DAT_INTMEM_40 = 0xff;
        DAT_INTMEM_41 = BANK0_R5;
        goto LAB_CODE_22b2;
      }
      if (BANK3_R4 == 1) {
        DAT_INTMEM_3f = 0xff;
LAB_CODE_229c:
        DAT_INTMEM_40 = BANK0_R5;
LAB_CODE_229e:
        DAT_INTMEM_41 = 0xff;
      }
      else {
        if (BANK3_R4 == 2) {
          DAT_INTMEM_3f = BANK0_R5;
          DAT_INTMEM_40 = 0xff;
          goto LAB_CODE_229e;
        }
        if (BANK3_R4 == 3) {
          DAT_INTMEM_3f = 0xff;
LAB_CODE_22ae:
          DAT_INTMEM_40 = BANK0_R5;
          DAT_INTMEM_41 = BANK0_R5;
        }
        else if (BANK3_R4 == 4) {
          DAT_INTMEM_3f = BANK0_R5;
          DAT_INTMEM_40 = 0xff;
          DAT_INTMEM_41 = BANK0_R5;
        }
        else {
          if (BANK3_R4 == 5) {
            DAT_INTMEM_3f = BANK0_R5;
            goto LAB_CODE_229c;
          }
          if (BANK3_R4 == 6) {
            DAT_INTMEM_3f = BANK0_R5;
            goto LAB_CODE_22ae;
          }
        }
      }
LAB_CODE_22b2:
      if ((DAT_INTMEM_42 < 0x2e) << 7 < '\0') {
        cVar2 = -DAT_INTMEM_42;
        bVar3 = cVar2 + 0x44;
        cVar4 = ((0x44 < DAT_INTMEM_42) << 7) >> 7;
        *(undefined1 *)CONCAT11(cVar4,bVar3) = DAT_INTMEM_3f;
        *(undefined1 *)CONCAT11(cVar4 - (((0x6a < bVar3) << 7) >> 7),cVar2 + -0x27) = DAT_INTMEM_40;
        cVar2 = cVar2 + 'n';
        cVar4 = cVar4 - (((0xd5 < bVar3) << 7) >> 7);
      }
      else {
        *(undefined1 *)(ushort)DAT_INTMEM_42 = DAT_INTMEM_3f;
        *(undefined1 *)CONCAT11(-(((0x6a < DAT_INTMEM_42) << 7) >> 7),DAT_INTMEM_42 + 0x95) =
             DAT_INTMEM_40;
        cVar2 = DAT_INTMEM_42 + 0x2a;
        cVar4 = -(((0xd5 < DAT_INTMEM_42) << 7) >> 7);
      }
      *(undefined1 *)CONCAT11(cVar4 + '\x01',cVar2) = DAT_INTMEM_41;
      DAT_INTMEM_42 = DAT_INTMEM_42 - 1;
    }
    BANK3_R5 = BANK3_R5 + 1;
  }
  else if ((BANK3_R5 < 0x5c) << 7 < '\0') {
    for (DAT_INTMEM_5e = 10; DAT_INTMEM_3e + 1U <= DAT_INTMEM_5e; DAT_INTMEM_5e = DAT_INTMEM_5e - 1)
    {
      DAT_INTMEM_54 = 0;
      DAT_INTMEM_55 = BANK0_R5;
      if (BANK3_R4 == 0) {
        DAT_INTMEM_3f = 0xff;
        DAT_INTMEM_40 = 0xff;
        DAT_INTMEM_41 = BANK0_R5;
        goto LAB_CODE_23b0;
      }
      if (BANK3_R4 == 1) {
        DAT_INTMEM_3f = 0xff;
LAB_CODE_239a:
        DAT_INTMEM_40 = BANK0_R5;
LAB_CODE_239c:
        DAT_INTMEM_41 = 0xff;
      }
      else {
        if (BANK3_R4 == 2) {
          DAT_INTMEM_3f = BANK0_R5;
          DAT_INTMEM_40 = 0xff;
          goto LAB_CODE_239c;
        }
        if (BANK3_R4 == 3) {
          DAT_INTMEM_3f = 0xff;
LAB_CODE_23ac:
          DAT_INTMEM_40 = BANK0_R5;
          DAT_INTMEM_41 = BANK0_R5;
        }
        else if (BANK3_R4 == 4) {
          DAT_INTMEM_3f = BANK0_R5;
          DAT_INTMEM_40 = 0xff;
          DAT_INTMEM_41 = BANK0_R5;
        }
        else {
          if (BANK3_R4 == 5) {
            DAT_INTMEM_3f = BANK0_R5;
            goto LAB_CODE_239a;
          }
          if (BANK3_R4 == 6) {
            DAT_INTMEM_3f = BANK0_R5;
            goto LAB_CODE_23ac;
          }
        }
      }
LAB_CODE_23b0:
      cVar4 = (DAT_INTMEM_42 < 0x45) << 7;
      if (cVar4 < '\0') {
        *(undefined1 *)(ushort)DAT_INTMEM_42 = DAT_INTMEM_3f;
        *(undefined1 *)CONCAT11(-(((0x6a < DAT_INTMEM_42) << 7) >> 7),DAT_INTMEM_42 + 0x95) =
             DAT_INTMEM_40;
        cVar2 = DAT_INTMEM_42 + 0x2a;
        cVar4 = -(((0xd5 < DAT_INTMEM_42) << 7) >> 7);
      }
      else {
        bVar3 = DAT_INTMEM_42 - (cVar4 >> 7);
        cVar2 = -bVar3;
        bVar1 = cVar2 + 0xa0;
        cVar4 = ((0xa0 < bVar3) << 7) >> 7;
        *(undefined1 *)CONCAT11(cVar4,bVar1) = DAT_INTMEM_3f;
        *(undefined1 *)CONCAT11(cVar4 - (((0x6a < bVar1) << 7) >> 7),cVar2 + '5') = DAT_INTMEM_40;
        cVar2 = cVar2 + -0x36;
        cVar4 = cVar4 - (((0xd5 < bVar1) << 7) >> 7);
      }
      *(undefined1 *)CONCAT11(cVar4 + '\x01',cVar2) = DAT_INTMEM_41;
      DAT_INTMEM_42 = DAT_INTMEM_42 - 1;
    }
    BANK3_R5 = BANK3_R5 + 1;
  }
  else if ((BANK3_R5 < 0x73) << 7 < '\0') {
    for (DAT_INTMEM_5e = 10; DAT_INTMEM_3e + 1U <= DAT_INTMEM_5e; DAT_INTMEM_5e = DAT_INTMEM_5e - 1)
    {
      DAT_INTMEM_54 = 0;
      DAT_INTMEM_55 = BANK0_R5;
      if (BANK3_R4 == 0) {
        DAT_INTMEM_3f = 0xff;
        DAT_INTMEM_40 = 0xff;
        DAT_INTMEM_41 = BANK0_R5;
        goto LAB_CODE_24ad;
      }
      if (BANK3_R4 == 1) {
        DAT_INTMEM_3f = 0xff;
LAB_CODE_2497:
        DAT_INTMEM_40 = BANK0_R5;
LAB_CODE_2499:
        DAT_INTMEM_41 = 0xff;
      }
      else {
        if (BANK3_R4 == 2) {
          DAT_INTMEM_3f = BANK0_R5;
          DAT_INTMEM_40 = 0xff;
          goto LAB_CODE_2499;
        }
        if (BANK3_R4 == 3) {
          DAT_INTMEM_3f = 0xff;
LAB_CODE_24a9:
          DAT_INTMEM_40 = BANK0_R5;
          DAT_INTMEM_41 = BANK0_R5;
        }
        else if (BANK3_R4 == 4) {
          DAT_INTMEM_3f = BANK0_R5;
          DAT_INTMEM_40 = 0xff;
          DAT_INTMEM_41 = BANK0_R5;
        }
        else {
          if (BANK3_R4 == 5) {
            DAT_INTMEM_3f = BANK0_R5;
            goto LAB_CODE_2497;
          }
          if (BANK3_R4 == 6) {
            DAT_INTMEM_3f = BANK0_R5;
            goto LAB_CODE_24a9;
          }
        }
      }
LAB_CODE_24ad:
      if ((DAT_INTMEM_42 < 0x5c) << 7 < '\0') {
        cVar2 = -DAT_INTMEM_42;
        bVar3 = cVar2 + 0xa0;
        cVar4 = ((0xa0 < DAT_INTMEM_42) << 7) >> 7;
        *(undefined1 *)CONCAT11(cVar4,bVar3) = DAT_INTMEM_3f;
        *(undefined1 *)CONCAT11(cVar4 - (((0x6a < bVar3) << 7) >> 7),cVar2 + '5') = DAT_INTMEM_40;
        cVar2 = cVar2 + -0x36;
        cVar4 = cVar4 - (((0xd5 < bVar3) << 7) >> 7);
      }
      else {
        *(undefined1 *)(ushort)DAT_INTMEM_42 = DAT_INTMEM_3f;
        *(undefined1 *)CONCAT11(-(((0x6a < DAT_INTMEM_42) << 7) >> 7),DAT_INTMEM_42 + 0x95) =
             DAT_INTMEM_40;
        cVar2 = DAT_INTMEM_42 + 0x2a;
        cVar4 = -(((0xd5 < DAT_INTMEM_42) << 7) >> 7);
      }
      *(undefined1 *)CONCAT11(cVar4 + '\x01',cVar2) = DAT_INTMEM_41;
      DAT_INTMEM_42 = DAT_INTMEM_42 - 1;
    }
    BANK3_R5 = BANK3_R5 + 1;
  }
  else if ((BANK3_R5 < 0x8a) << 7 < '\0') {
    for (DAT_INTMEM_5e = 10; DAT_INTMEM_3e + 1U <= DAT_INTMEM_5e; DAT_INTMEM_5e = DAT_INTMEM_5e - 1)
    {
      DAT_INTMEM_54 = 0;
      DAT_INTMEM_55 = BANK0_R5;
      if (BANK3_R4 == 0) {
        DAT_INTMEM_3f = 0xff;
        DAT_INTMEM_40 = 0xff;
        DAT_INTMEM_41 = BANK0_R5;
        goto LAB_CODE_25ab;
      }
      if (BANK3_R4 == 1) {
        DAT_INTMEM_3f = 0xff;
LAB_CODE_2595:
        DAT_INTMEM_40 = BANK0_R5;
LAB_CODE_2597:
        DAT_INTMEM_41 = 0xff;
      }
      else {
        if (BANK3_R4 == 2) {
          DAT_INTMEM_3f = BANK0_R5;
          DAT_INTMEM_40 = 0xff;
          goto LAB_CODE_2597;
        }
        if (BANK3_R4 == 3) {
          DAT_INTMEM_3f = 0xff;
LAB_CODE_25a7:
          DAT_INTMEM_40 = BANK0_R5;
          DAT_INTMEM_41 = BANK0_R5;
        }
        else if (BANK3_R4 == 4) {
          DAT_INTMEM_3f = BANK0_R5;
          DAT_INTMEM_40 = 0xff;
          DAT_INTMEM_41 = BANK0_R5;
        }
        else {
          if (BANK3_R4 == 5) {
            DAT_INTMEM_3f = BANK0_R5;
            goto LAB_CODE_2595;
          }
          if (BANK3_R4 == 6) {
            DAT_INTMEM_3f = BANK0_R5;
            goto LAB_CODE_25a7;
          }
        }
      }
LAB_CODE_25ab:
      cVar4 = (DAT_INTMEM_42 < 0x73) << 7;
      if (cVar4 < '\0') {
        *(undefined1 *)(ushort)DAT_INTMEM_42 = DAT_INTMEM_3f;
        *(undefined1 *)CONCAT11(-(((0x6a < DAT_INTMEM_42) << 7) >> 7),DAT_INTMEM_42 + 0x95) =
             DAT_INTMEM_40;
        cVar2 = DAT_INTMEM_42 + 0x2a;
        cVar4 = -(((0xd5 < DAT_INTMEM_42) << 7) >> 7);
      }
      else {
        bVar3 = DAT_INTMEM_42 - (cVar4 >> 7);
        cVar2 = -bVar3;
        bVar1 = cVar2 - 4;
        cVar4 = ((0xfc < bVar3) << 7) >> 7;
        *(undefined1 *)CONCAT11(cVar4,bVar1) = DAT_INTMEM_3f;
        *(undefined1 *)CONCAT11(cVar4 - (((0x6a < bVar1) << 7) >> 7),cVar2 + -0x6f) = DAT_INTMEM_40;
        cVar2 = cVar2 + '&';
        cVar4 = cVar4 - (((0xd5 < bVar1) << 7) >> 7);
      }
      *(undefined1 *)CONCAT11(cVar4 + '\x01',cVar2) = DAT_INTMEM_41;
      DAT_INTMEM_42 = DAT_INTMEM_42 - 1;
    }
    BANK3_R5 = BANK3_R5 + 1;
  }
  else if ((BANK3_R5 < 0x95) << 7 < '\0') {
    for (DAT_INTMEM_5e = 10; DAT_INTMEM_3e + 1U <= DAT_INTMEM_5e; DAT_INTMEM_5e = DAT_INTMEM_5e - 1)
    {
      DAT_INTMEM_54 = 0;
      DAT_INTMEM_55 = BANK0_R5;
      if (BANK3_R4 == 0) {
        DAT_INTMEM_3f = 0xff;
        DAT_INTMEM_40 = 0xff;
        DAT_INTMEM_41 = BANK0_R5;
        goto LAB_CODE_26a8;
      }
      if (BANK3_R4 == 1) {
        DAT_INTMEM_3f = 0xff;
LAB_CODE_2692:
        DAT_INTMEM_40 = BANK0_R5;
LAB_CODE_2694:
        DAT_INTMEM_41 = 0xff;
      }
      else {
        if (BANK3_R4 == 2) {
          DAT_INTMEM_3f = BANK0_R5;
          DAT_INTMEM_40 = 0xff;
          goto LAB_CODE_2694;
        }
        if (BANK3_R4 == 3) {
          DAT_INTMEM_3f = 0xff;
LAB_CODE_26a4:
          DAT_INTMEM_40 = BANK0_R5;
          DAT_INTMEM_41 = BANK0_R5;
        }
        else if (BANK3_R4 == 4) {
          DAT_INTMEM_3f = BANK0_R5;
          DAT_INTMEM_40 = 0xff;
          DAT_INTMEM_41 = BANK0_R5;
        }
        else {
          if (BANK3_R4 == 5) {
            DAT_INTMEM_3f = BANK0_R5;
            goto LAB_CODE_2692;
          }
          if (BANK3_R4 == 6) {
            DAT_INTMEM_3f = BANK0_R5;
            goto LAB_CODE_26a4;
          }
        }
      }
LAB_CODE_26a8:
      if ((DAT_INTMEM_42 < 0x8b) << 7 < '\0') {
        cVar2 = -DAT_INTMEM_42;
        bVar3 = cVar2 - 3;
        cVar4 = ((0xfd < DAT_INTMEM_42) << 7) >> 7;
        *(undefined1 *)CONCAT11(cVar4,bVar3) = DAT_INTMEM_3f;
        *(undefined1 *)CONCAT11(cVar4 - (((0x6a < bVar3) << 7) >> 7),cVar2 + -0x6e) = DAT_INTMEM_40;
        cVar2 = cVar2 + '\'';
        cVar4 = cVar4 - (((0xd5 < bVar3) << 7) >> 7);
      }
      else {
        *(undefined1 *)(ushort)DAT_INTMEM_42 = DAT_INTMEM_3f;
        *(undefined1 *)CONCAT11(-(((0x6a < DAT_INTMEM_42) << 7) >> 7),DAT_INTMEM_42 + 0x95) =
             DAT_INTMEM_40;
        cVar2 = DAT_INTMEM_42 + 0x2a;
        cVar4 = -(((0xd5 < DAT_INTMEM_42) << 7) >> 7);
      }
      *(undefined1 *)CONCAT11(cVar4 + '\x01',cVar2) = DAT_INTMEM_41;
      DAT_INTMEM_42 = DAT_INTMEM_42 - 1;
    }
    BANK3_R5 = BANK3_R5 + 1;
    if (0x94 < BANK3_R5) {
      BANK3_R5 = 0;
      BANK3_R4 = BANK3_R4 + 1;
      if (6 < BANK3_R4) {
        BANK3_R4 = 0;
      }
    }
  }
  bVar3 = DAT_INTMEM_53 + 1;
  cVar4 = DAT_INTMEM_53 + -0x1a;
  DAT_INTMEM_53 = bVar3;
  if (0x1a < bVar3) {
    cVar4 = '\0';
    DAT_INTMEM_53 = 0;
  }
  return cVar4;
}


// ===== FUN_CODE_2220 @ CODE:2220 =====

char FUN_CODE_2220(char param_1,char param_2)

{
  undefined1 uVar1;
  byte bVar2;
  char cVar3;
  byte bVar4;
  char cVar5;
  char in_PSW;
  
  uVar1 = RXFLG;
  if (((byte)(param_1 + (param_2 - (in_PSW >> 7))) < 0x45) << 7 < '\0') {
    for (DAT_INTMEM_5e = 10; DAT_INTMEM_3e + 1U <= DAT_INTMEM_5e; DAT_INTMEM_5e = DAT_INTMEM_5e - 1)
    {
      DAT_INTMEM_54 = 0;
      DAT_INTMEM_55 = BANK0_R5;
      if (BANK3_R4 == 0) {
        DAT_INTMEM_3f = 0xff;
        DAT_INTMEM_40 = 0xff;
        DAT_INTMEM_41 = BANK0_R5;
        goto LAB_CODE_22b2;
      }
      if (BANK3_R4 == 1) {
        DAT_INTMEM_3f = 0xff;
LAB_CODE_229c:
        DAT_INTMEM_40 = BANK0_R5;
LAB_CODE_229e:
        DAT_INTMEM_41 = 0xff;
      }
      else {
        if (BANK3_R4 == 2) {
          DAT_INTMEM_3f = BANK0_R5;
          DAT_INTMEM_40 = 0xff;
          goto LAB_CODE_229e;
        }
        if (BANK3_R4 == 3) {
          DAT_INTMEM_3f = 0xff;
LAB_CODE_22ae:
          DAT_INTMEM_40 = BANK0_R5;
          DAT_INTMEM_41 = BANK0_R5;
        }
        else if (BANK3_R4 == 4) {
          DAT_INTMEM_3f = BANK0_R5;
          DAT_INTMEM_40 = 0xff;
          DAT_INTMEM_41 = BANK0_R5;
        }
        else {
          if (BANK3_R4 == 5) {
            DAT_INTMEM_3f = BANK0_R5;
            goto LAB_CODE_229c;
          }
          if (BANK3_R4 == 6) {
            DAT_INTMEM_3f = BANK0_R5;
            goto LAB_CODE_22ae;
          }
        }
      }
LAB_CODE_22b2:
      if ((DAT_INTMEM_42 < 0x2e) << 7 < '\0') {
        cVar3 = -DAT_INTMEM_42;
        bVar4 = cVar3 + 0x44;
        cVar5 = ((0x44 < DAT_INTMEM_42) << 7) >> 7;
        *(undefined1 *)CONCAT11(cVar5,bVar4) = DAT_INTMEM_3f;
        *(undefined1 *)CONCAT11(cVar5 - (((0x6a < bVar4) << 7) >> 7),cVar3 + -0x27) = DAT_INTMEM_40;
        cVar3 = cVar3 + 'n';
        cVar5 = cVar5 - (((0xd5 < bVar4) << 7) >> 7);
      }
      else {
        *(undefined1 *)(ushort)DAT_INTMEM_42 = DAT_INTMEM_3f;
        *(undefined1 *)CONCAT11(-(((0x6a < DAT_INTMEM_42) << 7) >> 7),DAT_INTMEM_42 + 0x95) =
             DAT_INTMEM_40;
        cVar3 = DAT_INTMEM_42 + 0x2a;
        cVar5 = -(((0xd5 < DAT_INTMEM_42) << 7) >> 7);
      }
      *(undefined1 *)CONCAT11(cVar5 + '\x01',cVar3) = DAT_INTMEM_41;
      DAT_INTMEM_42 = DAT_INTMEM_42 - 1;
    }
    BANK3_R5 = BANK3_R5 + 1;
  }
  else if ((BANK3_R5 < 0x5c) << 7 < '\0') {
    for (DAT_INTMEM_5e = 10; DAT_INTMEM_3e + 1U <= DAT_INTMEM_5e; DAT_INTMEM_5e = DAT_INTMEM_5e - 1)
    {
      DAT_INTMEM_54 = 0;
      DAT_INTMEM_55 = BANK0_R5;
      if (BANK3_R4 == 0) {
        DAT_INTMEM_3f = 0xff;
        DAT_INTMEM_40 = 0xff;
        DAT_INTMEM_41 = BANK0_R5;
        goto LAB_CODE_23b0;
      }
      if (BANK3_R4 == 1) {
        DAT_INTMEM_3f = 0xff;
LAB_CODE_239a:
        DAT_INTMEM_40 = BANK0_R5;
LAB_CODE_239c:
        DAT_INTMEM_41 = 0xff;
      }
      else {
        if (BANK3_R4 == 2) {
          DAT_INTMEM_3f = BANK0_R5;
          DAT_INTMEM_40 = 0xff;
          goto LAB_CODE_239c;
        }
        if (BANK3_R4 == 3) {
          DAT_INTMEM_3f = 0xff;
LAB_CODE_23ac:
          DAT_INTMEM_40 = BANK0_R5;
          DAT_INTMEM_41 = BANK0_R5;
        }
        else if (BANK3_R4 == 4) {
          DAT_INTMEM_3f = BANK0_R5;
          DAT_INTMEM_40 = 0xff;
          DAT_INTMEM_41 = BANK0_R5;
        }
        else {
          if (BANK3_R4 == 5) {
            DAT_INTMEM_3f = BANK0_R5;
            goto LAB_CODE_239a;
          }
          if (BANK3_R4 == 6) {
            DAT_INTMEM_3f = BANK0_R5;
            goto LAB_CODE_23ac;
          }
        }
      }
LAB_CODE_23b0:
      cVar5 = (DAT_INTMEM_42 < 0x45) << 7;
      if (cVar5 < '\0') {
        *(undefined1 *)(ushort)DAT_INTMEM_42 = DAT_INTMEM_3f;
        *(undefined1 *)CONCAT11(-(((0x6a < DAT_INTMEM_42) << 7) >> 7),DAT_INTMEM_42 + 0x95) =
             DAT_INTMEM_40;
        cVar3 = DAT_INTMEM_42 + 0x2a;
        cVar5 = -(((0xd5 < DAT_INTMEM_42) << 7) >> 7);
      }
      else {
        bVar4 = DAT_INTMEM_42 - (cVar5 >> 7);
        cVar3 = -bVar4;
        bVar2 = cVar3 + 0xa0;
        cVar5 = ((0xa0 < bVar4) << 7) >> 7;
        *(undefined1 *)CONCAT11(cVar5,bVar2) = DAT_INTMEM_3f;
        *(undefined1 *)CONCAT11(cVar5 - (((0x6a < bVar2) << 7) >> 7),cVar3 + '5') = DAT_INTMEM_40;
        cVar3 = cVar3 + -0x36;
        cVar5 = cVar5 - (((0xd5 < bVar2) << 7) >> 7);
      }
      *(undefined1 *)CONCAT11(cVar5 + '\x01',cVar3) = DAT_INTMEM_41;
      DAT_INTMEM_42 = DAT_INTMEM_42 - 1;
    }
    BANK3_R5 = BANK3_R5 + 1;
  }
  else if ((BANK3_R5 < 0x73) << 7 < '\0') {
    for (DAT_INTMEM_5e = 10; DAT_INTMEM_3e + 1U <= DAT_INTMEM_5e; DAT_INTMEM_5e = DAT_INTMEM_5e - 1)
    {
      DAT_INTMEM_54 = 0;
      DAT_INTMEM_55 = BANK0_R5;
      if (BANK3_R4 == 0) {
        DAT_INTMEM_3f = 0xff;
        DAT_INTMEM_40 = 0xff;
        DAT_INTMEM_41 = BANK0_R5;
        goto LAB_CODE_24ad;
      }
      if (BANK3_R4 == 1) {
        DAT_INTMEM_3f = 0xff;
LAB_CODE_2497:
        DAT_INTMEM_40 = BANK0_R5;
LAB_CODE_2499:
        DAT_INTMEM_41 = 0xff;
      }
      else {
        if (BANK3_R4 == 2) {
          DAT_INTMEM_3f = BANK0_R5;
          DAT_INTMEM_40 = 0xff;
          goto LAB_CODE_2499;
        }
        if (BANK3_R4 == 3) {
          DAT_INTMEM_3f = 0xff;
LAB_CODE_24a9:
          DAT_INTMEM_40 = BANK0_R5;
          DAT_INTMEM_41 = BANK0_R5;
        }
        else if (BANK3_R4 == 4) {
          DAT_INTMEM_3f = BANK0_R5;
          DAT_INTMEM_40 = 0xff;
          DAT_INTMEM_41 = BANK0_R5;
        }
        else {
          if (BANK3_R4 == 5) {
            DAT_INTMEM_3f = BANK0_R5;
            goto LAB_CODE_2497;
          }
          if (BANK3_R4 == 6) {
            DAT_INTMEM_3f = BANK0_R5;
            goto LAB_CODE_24a9;
          }
        }
      }
LAB_CODE_24ad:
      if ((DAT_INTMEM_42 < 0x5c) << 7 < '\0') {
        cVar3 = -DAT_INTMEM_42;
        bVar4 = cVar3 + 0xa0;
        cVar5 = ((0xa0 < DAT_INTMEM_42) << 7) >> 7;
        *(undefined1 *)CONCAT11(cVar5,bVar4) = DAT_INTMEM_3f;
        *(undefined1 *)CONCAT11(cVar5 - (((0x6a < bVar4) << 7) >> 7),cVar3 + '5') = DAT_INTMEM_40;
        cVar3 = cVar3 + -0x36;
        cVar5 = cVar5 - (((0xd5 < bVar4) << 7) >> 7);
      }
      else {
        *(undefined1 *)(ushort)DAT_INTMEM_42 = DAT_INTMEM_3f;
        *(undefined1 *)CONCAT11(-(((0x6a < DAT_INTMEM_42) << 7) >> 7),DAT_INTMEM_42 + 0x95) =
             DAT_INTMEM_40;
        cVar3 = DAT_INTMEM_42 + 0x2a;
        cVar5 = -(((0xd5 < DAT_INTMEM_42) << 7) >> 7);
      }
      *(undefined1 *)CONCAT11(cVar5 + '\x01',cVar3) = DAT_INTMEM_41;
      DAT_INTMEM_42 = DAT_INTMEM_42 - 1;
    }
    BANK3_R5 = BANK3_R5 + 1;
  }
  else if ((BANK3_R5 < 0x8a) << 7 < '\0') {
    for (DAT_INTMEM_5e = 10; DAT_INTMEM_3e + 1U <= DAT_INTMEM_5e; DAT_INTMEM_5e = DAT_INTMEM_5e - 1)
    {
      DAT_INTMEM_54 = 0;
      DAT_INTMEM_55 = BANK0_R5;
      if (BANK3_R4 == 0) {
        DAT_INTMEM_3f = 0xff;
        DAT_INTMEM_40 = 0xff;
        DAT_INTMEM_41 = BANK0_R5;
        goto LAB_CODE_25ab;
      }
      if (BANK3_R4 == 1) {
        DAT_INTMEM_3f = 0xff;
LAB_CODE_2595:
        DAT_INTMEM_40 = BANK0_R5;
LAB_CODE_2597:
        DAT_INTMEM_41 = 0xff;
      }
      else {
        if (BANK3_R4 == 2) {
          DAT_INTMEM_3f = BANK0_R5;
          DAT_INTMEM_40 = 0xff;
          goto LAB_CODE_2597;
        }
        if (BANK3_R4 == 3) {
          DAT_INTMEM_3f = 0xff;
LAB_CODE_25a7:
          DAT_INTMEM_40 = BANK0_R5;
          DAT_INTMEM_41 = BANK0_R5;
        }
        else if (BANK3_R4 == 4) {
          DAT_INTMEM_3f = BANK0_R5;
          DAT_INTMEM_40 = 0xff;
          DAT_INTMEM_41 = BANK0_R5;
        }
        else {
          if (BANK3_R4 == 5) {
            DAT_INTMEM_3f = BANK0_R5;
            goto LAB_CODE_2595;
          }
          if (BANK3_R4 == 6) {
            DAT_INTMEM_3f = BANK0_R5;
            goto LAB_CODE_25a7;
          }
        }
      }
LAB_CODE_25ab:
      cVar5 = (DAT_INTMEM_42 < 0x73) << 7;
      if (cVar5 < '\0') {
        *(undefined1 *)(ushort)DAT_INTMEM_42 = DAT_INTMEM_3f;
        *(undefined1 *)CONCAT11(-(((0x6a < DAT_INTMEM_42) << 7) >> 7),DAT_INTMEM_42 + 0x95) =
             DAT_INTMEM_40;
        cVar3 = DAT_INTMEM_42 + 0x2a;
        cVar5 = -(((0xd5 < DAT_INTMEM_42) << 7) >> 7);
      }
      else {
        bVar4 = DAT_INTMEM_42 - (cVar5 >> 7);
        cVar3 = -bVar4;
        bVar2 = cVar3 - 4;
        cVar5 = ((0xfc < bVar4) << 7) >> 7;
        *(undefined1 *)CONCAT11(cVar5,bVar2) = DAT_INTMEM_3f;
        *(undefined1 *)CONCAT11(cVar5 - (((0x6a < bVar2) << 7) >> 7),cVar3 + -0x6f) = DAT_INTMEM_40;
        cVar3 = cVar3 + '&';
        cVar5 = cVar5 - (((0xd5 < bVar2) << 7) >> 7);
      }
      *(undefined1 *)CONCAT11(cVar5 + '\x01',cVar3) = DAT_INTMEM_41;
      DAT_INTMEM_42 = DAT_INTMEM_42 - 1;
    }
    BANK3_R5 = BANK3_R5 + 1;
  }
  else if ((BANK3_R5 < 0x95) << 7 < '\0') {
    for (DAT_INTMEM_5e = 10; DAT_INTMEM_3e + 1U <= DAT_INTMEM_5e; DAT_INTMEM_5e = DAT_INTMEM_5e - 1)
    {
      DAT_INTMEM_54 = 0;
      DAT_INTMEM_55 = BANK0_R5;
      if (BANK3_R4 == 0) {
        DAT_INTMEM_3f = 0xff;
        DAT_INTMEM_40 = 0xff;
        DAT_INTMEM_41 = BANK0_R5;
        goto LAB_CODE_26a8;
      }
      if (BANK3_R4 == 1) {
        DAT_INTMEM_3f = 0xff;
LAB_CODE_2692:
        DAT_INTMEM_40 = BANK0_R5;
LAB_CODE_2694:
        DAT_INTMEM_41 = 0xff;
      }
      else {
        if (BANK3_R4 == 2) {
          DAT_INTMEM_3f = BANK0_R5;
          DAT_INTMEM_40 = 0xff;
          goto LAB_CODE_2694;
        }
        if (BANK3_R4 == 3) {
          DAT_INTMEM_3f = 0xff;
LAB_CODE_26a4:
          DAT_INTMEM_40 = BANK0_R5;
          DAT_INTMEM_41 = BANK0_R5;
        }
        else if (BANK3_R4 == 4) {
          DAT_INTMEM_3f = BANK0_R5;
          DAT_INTMEM_40 = 0xff;
          DAT_INTMEM_41 = BANK0_R5;
        }
        else {
          if (BANK3_R4 == 5) {
            DAT_INTMEM_3f = BANK0_R5;
            goto LAB_CODE_2692;
          }
          if (BANK3_R4 == 6) {
            DAT_INTMEM_3f = BANK0_R5;
            goto LAB_CODE_26a4;
          }
        }
      }
LAB_CODE_26a8:
      if ((DAT_INTMEM_42 < 0x8b) << 7 < '\0') {
        cVar3 = -DAT_INTMEM_42;
        bVar4 = cVar3 - 3;
        cVar5 = ((0xfd < DAT_INTMEM_42) << 7) >> 7;
        *(undefined1 *)CONCAT11(cVar5,bVar4) = DAT_INTMEM_3f;
        *(undefined1 *)CONCAT11(cVar5 - (((0x6a < bVar4) << 7) >> 7),cVar3 + -0x6e) = DAT_INTMEM_40;
        cVar3 = cVar3 + '\'';
        cVar5 = cVar5 - (((0xd5 < bVar4) << 7) >> 7);
      }
      else {
        *(undefined1 *)(ushort)DAT_INTMEM_42 = DAT_INTMEM_3f;
        *(undefined1 *)CONCAT11(-(((0x6a < DAT_INTMEM_42) << 7) >> 7),DAT_INTMEM_42 + 0x95) =
             DAT_INTMEM_40;
        cVar3 = DAT_INTMEM_42 + 0x2a;
        cVar5 = -(((0xd5 < DAT_INTMEM_42) << 7) >> 7);
      }
      *(undefined1 *)CONCAT11(cVar5 + '\x01',cVar3) = DAT_INTMEM_41;
      DAT_INTMEM_42 = DAT_INTMEM_42 - 1;
    }
    BANK3_R5 = BANK3_R5 + 1;
    if (0x94 < BANK3_R5) {
      BANK3_R5 = 0;
      BANK3_R4 = BANK3_R4 + 1;
      if (6 < BANK3_R4) {
        BANK3_R4 = 0;
      }
    }
  }
  bVar4 = DAT_INTMEM_53 + 1;
  cVar5 = DAT_INTMEM_53 + -0x1a;
  DAT_INTMEM_53 = bVar4;
  if (0x1a < bVar4) {
    cVar5 = '\0';
    DAT_INTMEM_53 = 0;
  }
  return cVar5;
}


// ===== FUN_CODE_272f @ CODE:272f =====

char FUN_CODE_272f(char param_1)

{
  byte bVar1;
  char cVar2;
  
  if (param_1 == '\x04') {
    DAT_INTMEM_3e = 0;
    do {
      *(undefined1 *)(ushort)DAT_INTMEM_3e = DAT_CODE_b002;
      *(undefined1 *)CONCAT11(-(((0x6a < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 0x95) =
           DAT_CODE_b001;
      *(undefined1 *)CONCAT11('\x01' - (((0xd5 < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 0x2a) =
           DAT_CODE_b000;
      DAT_INTMEM_3e = DAT_INTMEM_3e + 1;
    } while (DAT_INTMEM_3e != 0x8a);
    goto LAB_CODE_38aa;
  }
  if (DAT_INTMEM_76 != '\x05') {
    cVar2 = FUN_CODE_2eb8();
    return cVar2;
  }
  if (BANK3_R4 == 0) {
    DAT_INTMEM_3f = 0xff;
LAB_CODE_27b8:
    DAT_INTMEM_41 = 0;
    DAT_INTMEM_40 = 0xff;
  }
  else {
    if (BANK3_R4 == 1) {
      DAT_INTMEM_3f = 0xff;
LAB_CODE_27c7:
      DAT_INTMEM_40 = 0;
    }
    else {
      if (BANK3_R4 != 2) {
        if (BANK3_R4 == 3) {
          DAT_INTMEM_3f = 0xff;
        }
        else {
          if (BANK3_R4 == 4) {
            DAT_INTMEM_3f = 0;
            goto LAB_CODE_27b8;
          }
          if (BANK3_R4 == 5) {
            DAT_INTMEM_3f = 0;
            goto LAB_CODE_27c7;
          }
          if (BANK3_R4 != 6) goto LAB_CODE_27da;
          DAT_INTMEM_3f = 0;
        }
        DAT_INTMEM_40 = 0;
        DAT_INTMEM_41 = 0;
        goto LAB_CODE_27da;
      }
      DAT_INTMEM_3f = 0;
      DAT_INTMEM_40 = 0xff;
    }
    DAT_INTMEM_41 = 0xff;
  }
LAB_CODE_27da:
  DAT_INTMEM_57 = DAT_INTMEM_57 + 1;
  if (6U - DAT_INTMEM_77 <= DAT_INTMEM_57) {
    DAT_INTMEM_57 = 0;
    if ((DAT_INTMEM_5e < 0xe) << 7 < '\0') {
                    /* WARNING: Could not recover jumptable at 0x2801. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      cVar2 = (*(thunk_FUN_CODE_282c + DAT_INTMEM_5e * '\x03'))(5);
      return cVar2;
    }
    DAT_INTMEM_5e = DAT_INTMEM_5e + 1;
    if (0xd < DAT_INTMEM_5e) {
      DAT_INTMEM_5e = 0;
      BANK3_R4 = BANK3_R4 + 1;
      if (6 < BANK3_R4) {
        BANK3_R4 = 0;
      }
    }
  }
LAB_CODE_38aa:
  bVar1 = DAT_INTMEM_53 + 1;
  cVar2 = DAT_INTMEM_53 + -0x1a;
  DAT_INTMEM_53 = bVar1;
  if (0x1a < bVar1) {
    cVar2 = '\0';
    DAT_INTMEM_53 = 0;
  }
  return cVar2;
}


// ===== thunk_FUN_CODE_282c @ CODE:2802 =====

char thunk_FUN_CODE_282c(void)

{
  byte bVar1;
  char cVar2;
  
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_8077(0x16);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x73);
  DAT_INTMEM_5e = DAT_INTMEM_5e + 1;
  if (0xd < DAT_INTMEM_5e) {
    DAT_INTMEM_5e = 0;
    BANK3_R4 = BANK3_R4 + 1;
    if (6 < BANK3_R4) {
      BANK3_R4 = 0;
    }
  }
  bVar1 = DAT_INTMEM_53 + 1;
  cVar2 = DAT_INTMEM_53 + -0x1a;
  DAT_INTMEM_53 = bVar1;
  if (0x1a < bVar1) {
    cVar2 = '\0';
    DAT_INTMEM_53 = 0;
  }
  return cVar2;
}


// ===== thunk_FUN_CODE_2840 @ CODE:2805 =====

char thunk_FUN_CODE_2840(void)

{
  byte bVar1;
  char cVar2;
  
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_8077(0x15);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x2d);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x5c);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x74);
  DAT_INTMEM_5e = DAT_INTMEM_5e + 1;
  if (0xd < DAT_INTMEM_5e) {
    DAT_INTMEM_5e = 0;
    BANK3_R4 = BANK3_R4 + 1;
    if (6 < BANK3_R4) {
      BANK3_R4 = 0;
    }
  }
  bVar1 = DAT_INTMEM_53 + 1;
  cVar2 = DAT_INTMEM_53 + -0x1a;
  DAT_INTMEM_53 = bVar1;
  if (0x1a < bVar1) {
    cVar2 = '\0';
    DAT_INTMEM_53 = 0;
  }
  return cVar2;
}


// ===== thunk_FUN_CODE_286c @ CODE:2808 =====

char thunk_FUN_CODE_286c(void)

{
  byte bVar1;
  char cVar2;
  
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x14);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x2c);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  cVar2 = 'D';
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x44);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,cVar2 + '\x01');
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x5d);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x75);
  DAT_INTMEM_5e = DAT_INTMEM_5e + 1;
  if (0xd < DAT_INTMEM_5e) {
    DAT_INTMEM_5e = 0;
    BANK3_R4 = BANK3_R4 + 1;
    if (6 < BANK3_R4) {
      BANK3_R4 = 0;
    }
  }
  bVar1 = DAT_INTMEM_53 + 1;
  cVar2 = DAT_INTMEM_53 + -0x1a;
  DAT_INTMEM_53 = bVar1;
  if (0x1a < bVar1) {
    cVar2 = '\0';
    DAT_INTMEM_53 = 0;
  }
  return cVar2;
}


// ===== thunk_FUN_CODE_28b3 @ CODE:280b =====

char thunk_FUN_CODE_28b3(void)

{
  byte bVar1;
  char cVar2;
  
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x13);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x2b);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x43);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x5b);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x2e);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x46);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x5e);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x76);
  DAT_INTMEM_5e = DAT_INTMEM_5e + 1;
  if (0xd < DAT_INTMEM_5e) {
    DAT_INTMEM_5e = 0;
    BANK3_R4 = BANK3_R4 + 1;
    if (6 < BANK3_R4) {
      BANK3_R4 = 0;
    }
  }
  bVar1 = DAT_INTMEM_53 + 1;
  cVar2 = DAT_INTMEM_53 + -0x1a;
  DAT_INTMEM_53 = bVar1;
  if (0x1a < bVar1) {
    cVar2 = '\0';
    DAT_INTMEM_53 = 0;
  }
  return cVar2;
}


// ===== thunk_FUN_CODE_2913 @ CODE:280e =====

char thunk_FUN_CODE_2913(void)

{
  byte bVar1;
  char cVar2;
  
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x12);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x2a);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x42);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x5a);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x72);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x17);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x2f);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x47);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x5f);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x77);
  DAT_INTMEM_5e = DAT_INTMEM_5e + 1;
  if (0xd < DAT_INTMEM_5e) {
    DAT_INTMEM_5e = 0;
    BANK3_R4 = BANK3_R4 + 1;
    if (6 < BANK3_R4) {
      BANK3_R4 = 0;
    }
  }
  bVar1 = DAT_INTMEM_53 + 1;
  cVar2 = DAT_INTMEM_53 + -0x1a;
  DAT_INTMEM_53 = bVar1;
  if (0x1a < bVar1) {
    cVar2 = '\0';
    DAT_INTMEM_53 = 0;
  }
  return cVar2;
}


// ===== thunk_FUN_CODE_298b @ CODE:2811 =====

char thunk_FUN_CODE_298b(void)

{
  byte bVar1;
  char cVar2;
  
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x11);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x29);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x41);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x59);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x71);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x89);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x18);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x30);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x48);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x60);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x78);
  DAT_INTMEM_5e = DAT_INTMEM_5e + 1;
  if (0xd < DAT_INTMEM_5e) {
    DAT_INTMEM_5e = 0;
    BANK3_R4 = BANK3_R4 + 1;
    if (6 < BANK3_R4) {
      BANK3_R4 = 0;
    }
  }
  bVar1 = DAT_INTMEM_53 + 1;
  cVar2 = DAT_INTMEM_53 + -0x1a;
  DAT_INTMEM_53 = bVar1;
  if (0x1a < bVar1) {
    cVar2 = '\0';
    DAT_INTMEM_53 = 0;
  }
  return cVar2;
}


// ===== thunk_FUN_CODE_2a1b @ CODE:2814 =====

char thunk_FUN_CODE_2a1b(void)

{
  byte bVar1;
  char cVar2;
  
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x10);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x28);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x40);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x58);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x70);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x88);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,1);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x19);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x31);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x49);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x61);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x79);
  DAT_INTMEM_5e = DAT_INTMEM_5e + 1;
  if (0xd < DAT_INTMEM_5e) {
    DAT_INTMEM_5e = 0;
    BANK3_R4 = BANK3_R4 + 1;
    if (6 < BANK3_R4) {
      BANK3_R4 = 0;
    }
  }
  bVar1 = DAT_INTMEM_53 + 1;
  cVar2 = DAT_INTMEM_53 + -0x1a;
  DAT_INTMEM_53 = bVar1;
  if (0x1a < bVar1) {
    cVar2 = '\0';
    DAT_INTMEM_53 = 0;
  }
  return cVar2;
}


// ===== thunk_FUN_CODE_2aab @ CODE:2817 =====

char thunk_FUN_CODE_2aab(void)

{
  byte bVar1;
  char cVar2;
  
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0xf);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x27);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x3f);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x57);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x6f);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x87);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,2);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x1a);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x32);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x4a);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x62);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x7a);
  DAT_INTMEM_5e = DAT_INTMEM_5e + 1;
  if (0xd < DAT_INTMEM_5e) {
    DAT_INTMEM_5e = 0;
    BANK3_R4 = BANK3_R4 + 1;
    if (6 < BANK3_R4) {
      BANK3_R4 = 0;
    }
  }
  bVar1 = DAT_INTMEM_53 + 1;
  cVar2 = DAT_INTMEM_53 + -0x1a;
  DAT_INTMEM_53 = bVar1;
  if (0x1a < bVar1) {
    cVar2 = '\0';
    DAT_INTMEM_53 = 0;
  }
  return cVar2;
}


// ===== thunk_FUN_CODE_2b3b @ CODE:281a =====

char thunk_FUN_CODE_2b3b(void)

{
  byte bVar1;
  char cVar2;
  
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0xe);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x26);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x3e);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x56);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x6e);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x86);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,3);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x1b);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x33);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x4b);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,99);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x7b);
  DAT_INTMEM_5e = DAT_INTMEM_5e + 1;
  if (0xd < DAT_INTMEM_5e) {
    DAT_INTMEM_5e = 0;
    BANK3_R4 = BANK3_R4 + 1;
    if (6 < BANK3_R4) {
      BANK3_R4 = 0;
    }
  }
  bVar1 = DAT_INTMEM_53 + 1;
  cVar2 = DAT_INTMEM_53 + -0x1a;
  DAT_INTMEM_53 = bVar1;
  if (0x1a < bVar1) {
    cVar2 = '\0';
    DAT_INTMEM_53 = 0;
  }
  return cVar2;
}


// ===== thunk_FUN_CODE_2bcb @ CODE:281d =====

char thunk_FUN_CODE_2bcb(void)

{
  byte bVar1;
  char cVar2;
  
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0xd);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x25);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x3d);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x55);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x6d);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x85);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,4);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x1c);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x34);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x4c);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,100);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x7c);
  DAT_INTMEM_5e = DAT_INTMEM_5e + 1;
  if (0xd < DAT_INTMEM_5e) {
    DAT_INTMEM_5e = 0;
    BANK3_R4 = BANK3_R4 + 1;
    if (6 < BANK3_R4) {
      BANK3_R4 = 0;
    }
  }
  bVar1 = DAT_INTMEM_53 + 1;
  cVar2 = DAT_INTMEM_53 + -0x1a;
  DAT_INTMEM_53 = bVar1;
  if (0x1a < bVar1) {
    cVar2 = '\0';
    DAT_INTMEM_53 = 0;
  }
  return cVar2;
}


// ===== thunk_FUN_CODE_2c5b @ CODE:2820 =====

char thunk_FUN_CODE_2c5b(void)

{
  byte bVar1;
  char cVar2;
  
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0xc);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x24);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x3c);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x54);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x6c);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x84);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,5);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x1d);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x35);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x4d);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x65);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x7d);
  DAT_INTMEM_5e = DAT_INTMEM_5e + 1;
  if (0xd < DAT_INTMEM_5e) {
    DAT_INTMEM_5e = 0;
    BANK3_R4 = BANK3_R4 + 1;
    if (6 < BANK3_R4) {
      BANK3_R4 = 0;
    }
  }
  bVar1 = DAT_INTMEM_53 + 1;
  cVar2 = DAT_INTMEM_53 + -0x1a;
  DAT_INTMEM_53 = bVar1;
  if (0x1a < bVar1) {
    cVar2 = '\0';
    DAT_INTMEM_53 = 0;
  }
  return cVar2;
}


// ===== thunk_FUN_CODE_2ceb @ CODE:2823 =====

char thunk_FUN_CODE_2ceb(void)

{
  byte bVar1;
  char cVar2;
  
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0xb);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x23);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x3b);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x53);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x6b);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x83);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,6);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x1e);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x36);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x4e);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x66);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x7e);
  DAT_INTMEM_5e = DAT_INTMEM_5e + 1;
  if (0xd < DAT_INTMEM_5e) {
    DAT_INTMEM_5e = 0;
    BANK3_R4 = BANK3_R4 + 1;
    if (6 < BANK3_R4) {
      BANK3_R4 = 0;
    }
  }
  bVar1 = DAT_INTMEM_53 + 1;
  cVar2 = DAT_INTMEM_53 + -0x1a;
  DAT_INTMEM_53 = bVar1;
  if (0x1a < bVar1) {
    cVar2 = '\0';
    DAT_INTMEM_53 = 0;
  }
  return cVar2;
}


// ===== thunk_FUN_CODE_2d7b @ CODE:2826 =====

char thunk_FUN_CODE_2d7b(void)

{
  byte bVar1;
  char cVar2;
  
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,10);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x22);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x3a);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x52);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x6a);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x82);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,7);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x1f);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x37);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x4f);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x67);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x7f);
  DAT_INTMEM_5e = DAT_INTMEM_5e + 1;
  if (0xd < DAT_INTMEM_5e) {
    DAT_INTMEM_5e = 0;
    BANK3_R4 = BANK3_R4 + 1;
    if (6 < BANK3_R4) {
      BANK3_R4 = 0;
    }
  }
  bVar1 = DAT_INTMEM_53 + 1;
  cVar2 = DAT_INTMEM_53 + -0x1a;
  DAT_INTMEM_53 = bVar1;
  if (0x1a < bVar1) {
    cVar2 = '\0';
    DAT_INTMEM_53 = 0;
  }
  return cVar2;
}


// ===== thunk_FUN_CODE_2e0b @ CODE:2829 =====

char thunk_FUN_CODE_2e0b(void)

{
  byte bVar1;
  char cVar2;
  
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,9);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x21);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x39);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x51);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x69);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x81);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,8);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x20);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x38);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x50);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x68);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x80);
  DAT_INTMEM_5e = DAT_INTMEM_5e + 1;
  if (0xd < DAT_INTMEM_5e) {
    DAT_INTMEM_5e = 0;
    BANK3_R4 = BANK3_R4 + 1;
    if (6 < BANK3_R4) {
      BANK3_R4 = 0;
    }
  }
  bVar1 = DAT_INTMEM_53 + 1;
  cVar2 = DAT_INTMEM_53 + -0x1a;
  DAT_INTMEM_53 = bVar1;
  if (0x1a < bVar1) {
    cVar2 = '\0';
    DAT_INTMEM_53 = 0;
  }
  return cVar2;
}


// ===== FUN_CODE_282c @ CODE:282c =====

char FUN_CODE_282c(void)

{
  byte bVar1;
  char cVar2;
  
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_8077(0x16);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x73);
  DAT_INTMEM_5e = DAT_INTMEM_5e + 1;
  if (0xd < DAT_INTMEM_5e) {
    DAT_INTMEM_5e = 0;
    BANK3_R4 = BANK3_R4 + 1;
    if (6 < BANK3_R4) {
      BANK3_R4 = 0;
    }
  }
  bVar1 = DAT_INTMEM_53 + 1;
  cVar2 = DAT_INTMEM_53 + -0x1a;
  DAT_INTMEM_53 = bVar1;
  if (0x1a < bVar1) {
    cVar2 = '\0';
    DAT_INTMEM_53 = 0;
  }
  return cVar2;
}


// ===== FUN_CODE_2840 @ CODE:2840 =====

char FUN_CODE_2840(void)

{
  byte bVar1;
  char cVar2;
  
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_8077(0x15);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x2d);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x5c);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x74);
  DAT_INTMEM_5e = DAT_INTMEM_5e + 1;
  if (0xd < DAT_INTMEM_5e) {
    DAT_INTMEM_5e = 0;
    BANK3_R4 = BANK3_R4 + 1;
    if (6 < BANK3_R4) {
      BANK3_R4 = 0;
    }
  }
  bVar1 = DAT_INTMEM_53 + 1;
  cVar2 = DAT_INTMEM_53 + -0x1a;
  DAT_INTMEM_53 = bVar1;
  if (0x1a < bVar1) {
    cVar2 = '\0';
    DAT_INTMEM_53 = 0;
  }
  return cVar2;
}


// ===== FUN_CODE_286c @ CODE:286c =====

char FUN_CODE_286c(void)

{
  byte bVar1;
  char cVar2;
  
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x14);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x2c);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  cVar2 = 'D';
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x44);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,cVar2 + '\x01');
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x5d);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x75);
  DAT_INTMEM_5e = DAT_INTMEM_5e + 1;
  if (0xd < DAT_INTMEM_5e) {
    DAT_INTMEM_5e = 0;
    BANK3_R4 = BANK3_R4 + 1;
    if (6 < BANK3_R4) {
      BANK3_R4 = 0;
    }
  }
  bVar1 = DAT_INTMEM_53 + 1;
  cVar2 = DAT_INTMEM_53 + -0x1a;
  DAT_INTMEM_53 = bVar1;
  if (0x1a < bVar1) {
    cVar2 = '\0';
    DAT_INTMEM_53 = 0;
  }
  return cVar2;
}


// ===== FUN_CODE_28b3 @ CODE:28b3 =====

char FUN_CODE_28b3(void)

{
  byte bVar1;
  char cVar2;
  
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x13);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x2b);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x43);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x5b);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x2e);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x46);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x5e);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x76);
  DAT_INTMEM_5e = DAT_INTMEM_5e + 1;
  if (0xd < DAT_INTMEM_5e) {
    DAT_INTMEM_5e = 0;
    BANK3_R4 = BANK3_R4 + 1;
    if (6 < BANK3_R4) {
      BANK3_R4 = 0;
    }
  }
  bVar1 = DAT_INTMEM_53 + 1;
  cVar2 = DAT_INTMEM_53 + -0x1a;
  DAT_INTMEM_53 = bVar1;
  if (0x1a < bVar1) {
    cVar2 = '\0';
    DAT_INTMEM_53 = 0;
  }
  return cVar2;
}


// ===== FUN_CODE_2913 @ CODE:2913 =====

char FUN_CODE_2913(void)

{
  byte bVar1;
  char cVar2;
  
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x12);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x2a);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x42);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x5a);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x72);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x17);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x2f);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x47);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x5f);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x77);
  DAT_INTMEM_5e = DAT_INTMEM_5e + 1;
  if (0xd < DAT_INTMEM_5e) {
    DAT_INTMEM_5e = 0;
    BANK3_R4 = BANK3_R4 + 1;
    if (6 < BANK3_R4) {
      BANK3_R4 = 0;
    }
  }
  bVar1 = DAT_INTMEM_53 + 1;
  cVar2 = DAT_INTMEM_53 + -0x1a;
  DAT_INTMEM_53 = bVar1;
  if (0x1a < bVar1) {
    cVar2 = '\0';
    DAT_INTMEM_53 = 0;
  }
  return cVar2;
}


// ===== FUN_CODE_298b @ CODE:298b =====

char FUN_CODE_298b(void)

{
  byte bVar1;
  char cVar2;
  
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x11);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x29);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x41);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x59);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x71);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x89);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x18);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x30);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x48);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x60);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x78);
  DAT_INTMEM_5e = DAT_INTMEM_5e + 1;
  if (0xd < DAT_INTMEM_5e) {
    DAT_INTMEM_5e = 0;
    BANK3_R4 = BANK3_R4 + 1;
    if (6 < BANK3_R4) {
      BANK3_R4 = 0;
    }
  }
  bVar1 = DAT_INTMEM_53 + 1;
  cVar2 = DAT_INTMEM_53 + -0x1a;
  DAT_INTMEM_53 = bVar1;
  if (0x1a < bVar1) {
    cVar2 = '\0';
    DAT_INTMEM_53 = 0;
  }
  return cVar2;
}


// ===== FUN_CODE_2a1b @ CODE:2a1b =====

char FUN_CODE_2a1b(void)

{
  byte bVar1;
  char cVar2;
  
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x10);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x28);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x40);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x58);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x70);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x88);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,1);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x19);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x31);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x49);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x61);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x79);
  DAT_INTMEM_5e = DAT_INTMEM_5e + 1;
  if (0xd < DAT_INTMEM_5e) {
    DAT_INTMEM_5e = 0;
    BANK3_R4 = BANK3_R4 + 1;
    if (6 < BANK3_R4) {
      BANK3_R4 = 0;
    }
  }
  bVar1 = DAT_INTMEM_53 + 1;
  cVar2 = DAT_INTMEM_53 + -0x1a;
  DAT_INTMEM_53 = bVar1;
  if (0x1a < bVar1) {
    cVar2 = '\0';
    DAT_INTMEM_53 = 0;
  }
  return cVar2;
}


// ===== FUN_CODE_2aab @ CODE:2aab =====

char FUN_CODE_2aab(void)

{
  byte bVar1;
  char cVar2;
  
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0xf);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x27);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x3f);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x57);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x6f);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x87);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,2);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x1a);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x32);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x4a);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x62);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x7a);
  DAT_INTMEM_5e = DAT_INTMEM_5e + 1;
  if (0xd < DAT_INTMEM_5e) {
    DAT_INTMEM_5e = 0;
    BANK3_R4 = BANK3_R4 + 1;
    if (6 < BANK3_R4) {
      BANK3_R4 = 0;
    }
  }
  bVar1 = DAT_INTMEM_53 + 1;
  cVar2 = DAT_INTMEM_53 + -0x1a;
  DAT_INTMEM_53 = bVar1;
  if (0x1a < bVar1) {
    cVar2 = '\0';
    DAT_INTMEM_53 = 0;
  }
  return cVar2;
}


// ===== FUN_CODE_2b3b @ CODE:2b3b =====

char FUN_CODE_2b3b(void)

{
  byte bVar1;
  char cVar2;
  
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0xe);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x26);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x3e);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x56);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x6e);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x86);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,3);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x1b);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x33);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x4b);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,99);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x7b);
  DAT_INTMEM_5e = DAT_INTMEM_5e + 1;
  if (0xd < DAT_INTMEM_5e) {
    DAT_INTMEM_5e = 0;
    BANK3_R4 = BANK3_R4 + 1;
    if (6 < BANK3_R4) {
      BANK3_R4 = 0;
    }
  }
  bVar1 = DAT_INTMEM_53 + 1;
  cVar2 = DAT_INTMEM_53 + -0x1a;
  DAT_INTMEM_53 = bVar1;
  if (0x1a < bVar1) {
    cVar2 = '\0';
    DAT_INTMEM_53 = 0;
  }
  return cVar2;
}


// ===== FUN_CODE_2bcb @ CODE:2bcb =====

char FUN_CODE_2bcb(void)

{
  byte bVar1;
  char cVar2;
  
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0xd);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x25);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x3d);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x55);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x6d);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x85);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,4);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x1c);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x34);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x4c);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,100);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x7c);
  DAT_INTMEM_5e = DAT_INTMEM_5e + 1;
  if (0xd < DAT_INTMEM_5e) {
    DAT_INTMEM_5e = 0;
    BANK3_R4 = BANK3_R4 + 1;
    if (6 < BANK3_R4) {
      BANK3_R4 = 0;
    }
  }
  bVar1 = DAT_INTMEM_53 + 1;
  cVar2 = DAT_INTMEM_53 + -0x1a;
  DAT_INTMEM_53 = bVar1;
  if (0x1a < bVar1) {
    cVar2 = '\0';
    DAT_INTMEM_53 = 0;
  }
  return cVar2;
}


// ===== FUN_CODE_2c5b @ CODE:2c5b =====

char FUN_CODE_2c5b(void)

{
  byte bVar1;
  char cVar2;
  
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0xc);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x24);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x3c);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x54);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x6c);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x84);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,5);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x1d);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x35);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x4d);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x65);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x7d);
  DAT_INTMEM_5e = DAT_INTMEM_5e + 1;
  if (0xd < DAT_INTMEM_5e) {
    DAT_INTMEM_5e = 0;
    BANK3_R4 = BANK3_R4 + 1;
    if (6 < BANK3_R4) {
      BANK3_R4 = 0;
    }
  }
  bVar1 = DAT_INTMEM_53 + 1;
  cVar2 = DAT_INTMEM_53 + -0x1a;
  DAT_INTMEM_53 = bVar1;
  if (0x1a < bVar1) {
    cVar2 = '\0';
    DAT_INTMEM_53 = 0;
  }
  return cVar2;
}


// ===== FUN_CODE_2ceb @ CODE:2ceb =====

char FUN_CODE_2ceb(void)

{
  byte bVar1;
  char cVar2;
  
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0xb);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x23);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x3b);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x53);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x6b);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x83);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,6);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x1e);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x36);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x4e);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x66);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x7e);
  DAT_INTMEM_5e = DAT_INTMEM_5e + 1;
  if (0xd < DAT_INTMEM_5e) {
    DAT_INTMEM_5e = 0;
    BANK3_R4 = BANK3_R4 + 1;
    if (6 < BANK3_R4) {
      BANK3_R4 = 0;
    }
  }
  bVar1 = DAT_INTMEM_53 + 1;
  cVar2 = DAT_INTMEM_53 + -0x1a;
  DAT_INTMEM_53 = bVar1;
  if (0x1a < bVar1) {
    cVar2 = '\0';
    DAT_INTMEM_53 = 0;
  }
  return cVar2;
}


// ===== FUN_CODE_2d7b @ CODE:2d7b =====

char FUN_CODE_2d7b(void)

{
  byte bVar1;
  char cVar2;
  
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,10);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x22);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x3a);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x52);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x6a);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x82);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,7);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x1f);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x37);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x4f);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x67);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x7f);
  DAT_INTMEM_5e = DAT_INTMEM_5e + 1;
  if (0xd < DAT_INTMEM_5e) {
    DAT_INTMEM_5e = 0;
    BANK3_R4 = BANK3_R4 + 1;
    if (6 < BANK3_R4) {
      BANK3_R4 = 0;
    }
  }
  bVar1 = DAT_INTMEM_53 + 1;
  cVar2 = DAT_INTMEM_53 + -0x1a;
  DAT_INTMEM_53 = bVar1;
  if (0x1a < bVar1) {
    cVar2 = '\0';
    DAT_INTMEM_53 = 0;
  }
  return cVar2;
}


// ===== FUN_CODE_2e0b @ CODE:2e0b =====

char FUN_CODE_2e0b(void)

{
  byte bVar1;
  char cVar2;
  
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,9);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x21);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x39);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x51);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x69);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x81);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,8);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x20);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x38);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x50);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x68);
  DAT_INTMEM_46 = DAT_INTMEM_41;
  FUN_CODE_807b(DAT_INTMEM_40,DAT_INTMEM_3f,0x80);
  DAT_INTMEM_5e = DAT_INTMEM_5e + 1;
  if (0xd < DAT_INTMEM_5e) {
    DAT_INTMEM_5e = 0;
    BANK3_R4 = BANK3_R4 + 1;
    if (6 < BANK3_R4) {
      BANK3_R4 = 0;
    }
  }
  bVar1 = DAT_INTMEM_53 + 1;
  cVar2 = DAT_INTMEM_53 + -0x1a;
  DAT_INTMEM_53 = bVar1;
  if (0x1a < bVar1) {
    cVar2 = '\0';
    DAT_INTMEM_53 = 0;
  }
  return cVar2;
}


// ===== FUN_CODE_2eb8 @ CODE:2eb8 =====

char FUN_CODE_2eb8(char param_1)

{
  byte bVar1;
  byte *pbVar2;
  byte bVar3;
  byte bVar4;
  char cVar5;
  
  if (param_1 == '\x06') {
    DAT_INTMEM_57 = DAT_INTMEM_57 + 1;
    if (6 - DAT_INTMEM_77 <= DAT_INTMEM_57) {
      DAT_INTMEM_57 = 0;
      DAT_INTMEM_3e = '\0';
      do {
        if (*(byte *)(DAT_INTMEM_3e + '_') < 0xf2) {
          bVar4 = 1;
          cVar5 = DAT_INTMEM_3e + '\x01';
          while (cVar5 = cVar5 + -1, cVar5 != '\0') {
            bVar4 = bVar4 << 1;
          }
          if ((bVar4 & BANK1_R4) == 0) {
            *(char *)(DAT_INTMEM_3e + '_') = *(char *)(DAT_INTMEM_3e + '_') + '\v';
          }
          else {
            if (10 < *(byte *)(DAT_INTMEM_3e + '_')) goto LAB_CODE_2f3d;
            *(undefined1 *)(DAT_INTMEM_3e + '_') = 0;
            bVar4 = 1;
            cVar5 = BANK0_R7 + '\x01';
            while (cVar5 = cVar5 + -1, cVar5 != '\0') {
              bVar4 = bVar4 << 1;
            }
            BANK1_R4 = BANK1_R4 & ~bVar4;
          }
        }
        else {
          bVar4 = 1;
          cVar5 = DAT_INTMEM_3e + '\x01';
          while (cVar5 = cVar5 + -1, cVar5 != '\0') {
            bVar4 = bVar4 << 1;
          }
          if ((bVar4 & BANK1_R4) == 0) {
            bVar4 = 1;
            cVar5 = BANK0_R7 + '\x01';
            while (cVar5 = cVar5 + -1, cVar5 != '\0') {
              bVar4 = bVar4 << 1;
            }
            BANK1_R4 = BANK1_R4 | bVar4;
          }
          else {
LAB_CODE_2f3d:
            *(char *)(DAT_INTMEM_3e + '_') = *(char *)(DAT_INTMEM_3e + '_') + -0xb;
          }
        }
        DAT_INTMEM_3e = DAT_INTMEM_3e + '\x01';
      } while (DAT_INTMEM_3e != '\b');
      DAT_INTMEM_3e = '\b';
      do {
        if (*(byte *)(DAT_INTMEM_3e + '_') < 0xf2) {
          bVar4 = 1;
          cVar5 = BANK0_R4 + '\x01';
          while (cVar5 = cVar5 + -1, cVar5 != '\0') {
            bVar4 = bVar4 << 1;
          }
          if ((bVar4 & BANK1_R5) == 0) {
            *(char *)(DAT_INTMEM_3e + '_') = *(char *)(DAT_INTMEM_3e + '_') + '\v';
          }
          else {
            if (10 < *(byte *)(DAT_INTMEM_3e + '_')) goto LAB_CODE_2fd2;
            *(undefined1 *)(DAT_INTMEM_3e + '_') = 0;
            bVar4 = 1;
            cVar5 = BANK0_R4 + '\x01';
            while (cVar5 = cVar5 + -1, cVar5 != '\0') {
              bVar4 = bVar4 << 1;
            }
            BANK1_R5 = BANK1_R5 & ~bVar4;
          }
        }
        else {
          bVar4 = 1;
          cVar5 = BANK0_R5 + '\x01';
          while (cVar5 = cVar5 + -1, cVar5 != '\0') {
            bVar4 = bVar4 << 1;
          }
          if ((bVar4 & BANK1_R5) == 0) {
            bVar4 = 1;
            cVar5 = BANK0_R5 + '\x01';
            while (cVar5 = cVar5 + -1, cVar5 != '\0') {
              bVar4 = bVar4 << 1;
            }
            BANK1_R5 = BANK1_R5 | bVar4;
          }
          else {
LAB_CODE_2fd2:
            *(char *)(DAT_INTMEM_3e + '_') = *(char *)(DAT_INTMEM_3e + '_') + -0xb;
          }
        }
        DAT_INTMEM_3e = DAT_INTMEM_3e + '\x01';
      } while (DAT_INTMEM_3e != '\x10');
      DAT_INTMEM_3e = 0x10;
      do {
        if (*(byte *)(DAT_INTMEM_3e + 0x5f) < 0xf2) {
          bVar4 = 1;
          cVar5 = BANK0_R4 + '\x01';
          while (cVar5 = cVar5 + -1, cVar5 != '\0') {
            bVar4 = bVar4 << 1;
          }
          if ((bVar4 & BANK1_R6) == 0) {
            *(char *)(DAT_INTMEM_3e + 0x5f) = *(char *)(DAT_INTMEM_3e + 0x5f) + '\v';
          }
          else {
            if (10 < *(byte *)(DAT_INTMEM_3e + 0x5f)) goto LAB_CODE_3065;
            *(undefined1 *)(DAT_INTMEM_3e + 0x5f) = 0;
            bVar4 = 1;
            cVar5 = BANK0_R4 + '\x01';
            while (cVar5 = cVar5 + -1, cVar5 != '\0') {
              bVar4 = bVar4 << 1;
            }
            BANK1_R6 = BANK1_R6 & ~bVar4;
          }
        }
        else {
          bVar4 = 1;
          cVar5 = BANK0_R5 + '\x01';
          while (cVar5 = cVar5 + -1, cVar5 != '\0') {
            bVar4 = bVar4 << 1;
          }
          if ((bVar4 & BANK1_R6) == 0) {
            bVar4 = 1;
            cVar5 = BANK0_R5 + '\x01';
            while (cVar5 = cVar5 + -1, cVar5 != '\0') {
              bVar4 = bVar4 << 1;
            }
            BANK1_R6 = BANK1_R6 | bVar4;
          }
          else {
LAB_CODE_3065:
            *(char *)(DAT_INTMEM_3e + 0x5f) = *(char *)(DAT_INTMEM_3e + 0x5f) + -0xb;
          }
        }
        DAT_INTMEM_3e = DAT_INTMEM_3e + 1;
      } while (DAT_INTMEM_3e != 0x17);
    }
    goto LAB_CODE_38aa;
  }
  if (DAT_INTMEM_76 == '\a') {
    if (BANK3_R4 == 0) {
      DAT_INTMEM_3f = 0xff;
      DAT_INTMEM_41 = BANK3_R4;
LAB_CODE_30ca:
      DAT_INTMEM_40 = 0xff;
    }
    else {
      if (BANK3_R4 == 1) {
        DAT_INTMEM_3f = 0xff;
LAB_CODE_30d9:
        DAT_INTMEM_40 = 0;
      }
      else {
        if (BANK3_R4 != 2) {
          if (BANK3_R4 == 3) {
            DAT_INTMEM_3f = 0xff;
          }
          else {
            if (BANK3_R4 == 4) {
              DAT_INTMEM_41 = 0;
              DAT_INTMEM_3f = 0;
              goto LAB_CODE_30ca;
            }
            if (BANK3_R4 == 5) {
              DAT_INTMEM_3f = 0;
              goto LAB_CODE_30d9;
            }
            if (BANK3_R4 != 6) goto LAB_CODE_30ec;
            DAT_INTMEM_3f = 0;
          }
          DAT_INTMEM_40 = 0;
          DAT_INTMEM_41 = 0;
          goto LAB_CODE_30ec;
        }
        DAT_INTMEM_3f = 0;
        DAT_INTMEM_40 = 0xff;
      }
      DAT_INTMEM_41 = 0xff;
    }
LAB_CODE_30ec:
    DAT_INTMEM_57 = DAT_INTMEM_57 + 1;
    bVar4 = ((5 < DAT_INTMEM_77) << 7) >> 7;
    cVar5 = '\x02';
    bVar3 = 5 - DAT_INTMEM_77;
    do {
      bVar1 = bVar3 * '\x02';
      bVar4 = bVar4 << 1 | bVar3 >> 7;
      cVar5 = cVar5 + -1;
      bVar3 = bVar1;
    } while (cVar5 != '\0');
    if (0x80 < (bVar4 ^ 0x80) - (((DAT_INTMEM_57 < bVar1 + 1) << 7) >> 7)) goto LAB_CODE_38aa;
    DAT_INTMEM_57 = 0;
    DAT_INTMEM_3e = 0x16;
    do {
      *(undefined1 *)(ushort)DAT_INTMEM_3e =
           *(undefined1 *)CONCAT11(-1 - (((DAT_INTMEM_3e != 0) << 7) >> 7),DAT_INTMEM_3e - 1);
      *(undefined1 *)CONCAT11(-(((0x6a < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 0x95) =
           *(undefined1 *)CONCAT11(-(((0x6b < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 0x94);
      *(undefined1 *)CONCAT11('\x01' - (((0xd5 < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 0x2a) =
           *(undefined1 *)
            CONCAT11('\x01' - (((0xd6 < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 0x29);
      *(undefined1 *)CONCAT11(-(((0xe8 < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 0x17) =
           *(undefined1 *)CONCAT11(-(((0xe9 < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 0x16);
      *(undefined1 *)CONCAT11(-(((0x53 < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 0xac) =
           *(undefined1 *)CONCAT11(-(((0x54 < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 0xab);
      *(undefined1 *)CONCAT11('\x01' - (((0xbe < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 0x41) =
           *(undefined1 *)
            CONCAT11('\x01' - (((0xbf < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 0x40);
      *(undefined1 *)CONCAT11(-(((0xd1 < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 0x2e) =
           *(undefined1 *)CONCAT11(-(((0xd2 < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 0x2d);
      *(undefined1 *)CONCAT11(-(((0x3c < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e - 0x3d) =
           *(undefined1 *)CONCAT11(-(((0x3d < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e - 0x3e);
      *(undefined1 *)CONCAT11('\x01' - (((0xa7 < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 0x58) =
           *(undefined1 *)
            CONCAT11('\x01' - (((0xa8 < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 0x57);
      *(undefined1 *)CONCAT11(-(((0xba < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 0x45) =
           *(undefined1 *)CONCAT11(-(((0xbb < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 0x44);
      *(undefined1 *)CONCAT11(-(((0x25 < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e - 0x26) =
           *(undefined1 *)CONCAT11(-(((0x26 < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e - 0x27);
      *(undefined1 *)CONCAT11('\x01' - (((0x90 < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 0x6f) =
           *(undefined1 *)
            CONCAT11('\x01' - (((0x91 < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 0x6e);
      *(undefined1 *)CONCAT11(-(((0xa3 < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 0x5c) =
           *(undefined1 *)CONCAT11(-(((0xa4 < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 0x5b);
      *(undefined1 *)CONCAT11(-(((0xe < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e - 0xf) =
           *(undefined1 *)CONCAT11(-(((0xf < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e - 0x10);
      *(undefined1 *)CONCAT11('\x01' - (((0x79 < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 0x86) =
           *(undefined1 *)
            CONCAT11('\x01' - (((0x7a < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 0x85);
      *(undefined1 *)CONCAT11(-(((0x8c < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 0x73) =
           *(undefined1 *)CONCAT11(-(((0x8d < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 0x72);
      *(undefined1 *)CONCAT11('\x01' - (((0xf7 < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 8) =
           *(undefined1 *)CONCAT11('\x01' - (((0xf8 < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 7);
      *(undefined1 *)CONCAT11('\x01' - (((0x62 < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 0x9d) =
           *(undefined1 *)CONCAT11('\x01' - (((99 < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 0x9c)
      ;
      DAT_INTMEM_3e = DAT_INTMEM_3e - 1;
    } while (DAT_INTMEM_3e != 0xc);
    DAT_INTMEM_3e = 0;
    do {
      *(undefined1 *)(ushort)DAT_INTMEM_3e =
           *(undefined1 *)CONCAT11(-(((0xfe < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 1);
      *(undefined1 *)CONCAT11(-(((0x6a < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 0x95) =
           *(undefined1 *)CONCAT11(-(((0x69 < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 0x96);
      *(undefined1 *)CONCAT11('\x01' - (((0xd5 < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 0x2a) =
           *(undefined1 *)
            CONCAT11('\x01' - (((0xd4 < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 0x2b);
      *(undefined1 *)CONCAT11(-(((0xe8 < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 0x17) =
           *(undefined1 *)CONCAT11(-(((0xe7 < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 0x18);
      *(undefined1 *)CONCAT11(-(((0x53 < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 0xac) =
           *(undefined1 *)CONCAT11(-(((0x52 < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 0xad);
      *(undefined1 *)CONCAT11('\x01' - (((0xbe < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 0x41) =
           *(undefined1 *)
            CONCAT11('\x01' - (((0xbd < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 0x42);
      *(undefined1 *)CONCAT11(-(((0xd1 < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 0x2e) =
           *(undefined1 *)CONCAT11(-(((0xd0 < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 0x2f);
      *(undefined1 *)CONCAT11(-(((0x3c < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e - 0x3d) =
           *(undefined1 *)CONCAT11(-(((0x3b < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e - 0x3c);
      *(undefined1 *)CONCAT11('\x01' - (((0xa7 < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 0x58) =
           *(undefined1 *)
            CONCAT11('\x01' - (((0xa6 < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 0x59);
      *(undefined1 *)CONCAT11(-(((0xba < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 0x45) =
           *(undefined1 *)CONCAT11(-(((0xb9 < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 0x46);
      *(undefined1 *)CONCAT11(-(((0x25 < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e - 0x26) =
           *(undefined1 *)CONCAT11(-(((0x24 < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e - 0x25);
      *(undefined1 *)CONCAT11('\x01' - (((0x90 < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 0x6f) =
           *(undefined1 *)
            CONCAT11('\x01' - (((0x8f < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 0x70);
      *(undefined1 *)CONCAT11(-(((0xa3 < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 0x5c) =
           *(undefined1 *)CONCAT11(-(((0xa2 < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 0x5d);
      *(undefined1 *)CONCAT11(-(((0xe < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e - 0xf) =
           *(undefined1 *)CONCAT11(-(((0xd < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e - 0xe);
      *(undefined1 *)CONCAT11('\x01' - (((0x79 < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 0x86) =
           *(undefined1 *)
            CONCAT11('\x01' - (((0x78 < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 0x87);
      *(undefined1 *)CONCAT11(-(((0x8c < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 0x73) =
           *(undefined1 *)CONCAT11(-(((0x8b < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 0x74);
      *(undefined1 *)CONCAT11('\x01' - (((0xf7 < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 8) =
           *(undefined1 *)CONCAT11('\x01' - (((0xf6 < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 9);
      *(undefined1 *)CONCAT11('\x01' - (((0x62 < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 0x9d) =
           *(undefined1 *)
            CONCAT11('\x01' - (((0x61 < DAT_INTMEM_3e) << 7) >> 7),DAT_INTMEM_3e + 0x9e);
      DAT_INTMEM_3e = DAT_INTMEM_3e + 1;
    } while (DAT_INTMEM_3e != 0xb);
    DAT_EXTMEM_000c = 0xff;
    DAT_EXTMEM_00a1 = 0xff;
    DAT_EXTMEM_0136 = 0xff;
    DAT_EXTMEM_0023 = 0xff;
    DAT_EXTMEM_00b8 = 0xff;
    DAT_EXTMEM_014d = 0xff;
    DAT_EXTMEM_003a = 0xff;
    DAT_EXTMEM_00cf = 0xff;
    DAT_EXTMEM_0164 = 0xff;
    DAT_EXTMEM_0051 = 0xff;
    DAT_EXTMEM_00e6 = 0xff;
    DAT_EXTMEM_017b = 0xff;
    DAT_EXTMEM_0068 = 0xff;
    DAT_EXTMEM_00fd = 0xff;
    DAT_EXTMEM_0192 = 0xff;
    DAT_EXTMEM_007f = 0xff;
    DAT_EXTMEM_0114 = 0xff;
    DAT_EXTMEM_01a9 = 0xff;
    DAT_EXTMEM_000b = 0xff;
    DAT_EXTMEM_00a0 = 0xff;
    DAT_EXTMEM_0135 = 0xff;
    DAT_EXTMEM_0022 = 0xff;
    DAT_EXTMEM_00b7 = 0xff;
    DAT_EXTMEM_014c = 0xff;
    DAT_EXTMEM_0039 = 0xff;
    DAT_EXTMEM_00ce = 0xff;
    DAT_EXTMEM_0163 = 0xff;
    DAT_EXTMEM_0050 = 0xff;
    DAT_EXTMEM_00e5 = 0xff;
    DAT_EXTMEM_017a = 0xff;
    DAT_EXTMEM_0067 = 0xff;
    DAT_EXTMEM_00fc = 0xff;
    DAT_EXTMEM_0191 = 0xff;
    DAT_EXTMEM_007e = 0xff;
    DAT_EXTMEM_0113 = 0xff;
    DAT_EXTMEM_01a8 = 0xff;
    *(undefined1 *)
     CONCAT11(-(((0xf3 < DAT_INTMEM_5e * '\x17') << 7) >> 7),DAT_INTMEM_5e * '\x17' + 0xc) =
         DAT_INTMEM_3f;
    *(undefined1 *)
     CONCAT11(-(((0x5e < DAT_INTMEM_5e * '\x17') << 7) >> 7),DAT_INTMEM_5e * '\x17' + 0xa1) =
         DAT_INTMEM_40;
    *(byte *)CONCAT11('\x01' - (((0xc9 < DAT_INTMEM_5e * '\x17') << 7) >> 7),
                      DAT_INTMEM_5e * '\x17' + 0x36) = DAT_INTMEM_41;
    *(undefined1 *)
     CONCAT11(-(((0xf4 < DAT_INTMEM_5e * '\x17') << 7) >> 7),DAT_INTMEM_5e * '\x17' + 0xb) =
         DAT_INTMEM_3f;
    *(undefined1 *)
     CONCAT11(-(((0x5f < DAT_INTMEM_5e * '\x17') << 7) >> 7),DAT_INTMEM_5e * '\x17' + 0xa0) =
         DAT_INTMEM_40;
    *(byte *)CONCAT11('\x01' - (((0xca < DAT_INTMEM_5e * '\x17') << 7) >> 7),
                      DAT_INTMEM_5e * '\x17' + 0x35) = DAT_INTMEM_41;
    if (_4_5 == '\x01') {
      if ((DAT_INTMEM_5e == 0) << 7 < '\0') {
        _4_5 = '\0';
      }
      else {
        DAT_INTMEM_5e = DAT_INTMEM_5e - 1;
      }
    }
    else {
      DAT_INTMEM_5e = DAT_INTMEM_5e + 1;
      if (4 < DAT_INTMEM_5e) {
        _4_5 = '\x01';
      }
    }
    BANK3_R4 = BANK3_R4 + 1;
    if (BANK3_R4 < 7) goto LAB_CODE_38aa;
  }
  else {
    if (DAT_INTMEM_76 == '\b') {
      DAT_INTMEM_57 = DAT_INTMEM_57 + 1;
      if (6 - DAT_INTMEM_77 <= DAT_INTMEM_57) {
        DAT_INTMEM_57 = 0;
        DAT_INTMEM_46 = DAT_INTMEM_5d;
        FUN_CODE_807b(DAT_INTMEM_5c,DAT_INTMEM_5b,BANK3_R6);
        if (((0xf5 < BANK3_R6 ^ 0x80U) < 0x80U - (((BANK3_R6 + 10 < 0x8a) << 7) >> 7)) << 7 < '\0')
        {
          cVar5 = BANK3_R6 + 10;
        }
        else {
          cVar5 = BANK3_R6 + 0x81;
        }
        DAT_INTMEM_46 = DAT_INTMEM_5d + '\x1e';
        FUN_CODE_807b(DAT_INTMEM_5c + '\x14',DAT_INTMEM_5b + '\n',cVar5);
        if (((0xeb < BANK3_R6 ^ 0x80U) < 0x80U - (((BANK3_R6 + 0x14 < 0x8a) << 7) >> 7)) << 7 < '\0'
           ) {
          cVar5 = BANK3_R6 + 0x14;
        }
        else {
          cVar5 = BANK3_R6 + 0x8b;
        }
        DAT_INTMEM_46 = DAT_INTMEM_5d + '\x14';
        FUN_CODE_807b(DAT_INTMEM_5c + '\x1e',DAT_INTMEM_5b + '(',cVar5);
        if (((0xe1 < BANK3_R6 ^ 0x80U) < 0x80U - (((BANK3_R6 + 0x1e < 0x8a) << 7) >> 7)) << 7 < '\0'
           ) {
          cVar5 = BANK3_R6 + 0x1e;
        }
        else {
          cVar5 = BANK3_R6 + 0x95;
        }
        DAT_INTMEM_46 = DAT_INTMEM_5d + '2';
        FUN_CODE_807b(DAT_INTMEM_5c + '(',DAT_INTMEM_5b + '\x1e',cVar5);
        if (((0xd7 < BANK3_R6 ^ 0x80U) < 0x80U - (((BANK3_R6 + 0x28 < 0x8a) << 7) >> 7)) << 7 < '\0'
           ) {
          cVar5 = BANK3_R6 + 0x28;
        }
        else {
          cVar5 = BANK3_R6 + 0x9f;
        }
        DAT_INTMEM_46 = DAT_INTMEM_5d + '(';
        FUN_CODE_807b(DAT_INTMEM_5c + '2',DAT_INTMEM_5b + '<',cVar5);
        if (((0xcd < BANK3_R6 ^ 0x80U) < 0x80U - (((BANK3_R6 + 0x32 < 0x8a) << 7) >> 7)) << 7 < '\0'
           ) {
          cVar5 = BANK3_R6 + 0x32;
        }
        else {
          cVar5 = BANK3_R6 + 0xa9;
        }
        DAT_INTMEM_46 = DAT_INTMEM_5d + 'F';
        FUN_CODE_807b(DAT_INTMEM_5c + '<',DAT_INTMEM_5b + '2',cVar5);
        if (((0xc3 < BANK3_R6 ^ 0x80U) < 0x80U - (((BANK3_R6 + 0x3c < 0x8a) << 7) >> 7)) << 7 < '\0'
           ) {
          cVar5 = BANK3_R6 + 0x3c;
        }
        else {
          cVar5 = BANK3_R6 + 0xb3;
        }
        DAT_INTMEM_46 = DAT_INTMEM_5d + '<';
        FUN_CODE_807b(DAT_INTMEM_5c + 'F',DAT_INTMEM_5b + 'P',cVar5);
        if (((0xb9 < BANK3_R6 ^ 0x80U) < 0x80U - (((BANK3_R6 + 0x46 < 0x8a) << 7) >> 7)) << 7 < '\0'
           ) {
          cVar5 = BANK3_R6 + 0x46;
        }
        else {
          cVar5 = BANK3_R6 + 0xbd;
        }
        DAT_INTMEM_46 = DAT_INTMEM_5d + 'Z';
        FUN_CODE_807b(DAT_INTMEM_5c + 'P',DAT_INTMEM_5b + 'F',cVar5);
        if (((0xaf < BANK3_R6 ^ 0x80U) < 0x80U - (((BANK3_R6 + 0x50 < 0x8a) << 7) >> 7)) << 7 < '\0'
           ) {
          cVar5 = BANK3_R6 + 0x50;
        }
        else {
          cVar5 = BANK3_R6 - 0x39;
        }
        DAT_INTMEM_46 = DAT_INTMEM_5d + 'P';
        FUN_CODE_807b(DAT_INTMEM_5c + 'Z',DAT_INTMEM_5b + 'd',cVar5);
        if (((0xa5 < BANK3_R6 ^ 0x80U) < 0x80U - (((BANK3_R6 + 0x5a < 0x8a) << 7) >> 7)) << 7 < '\0'
           ) {
          cVar5 = BANK3_R6 + 0x5a;
        }
        else {
          cVar5 = BANK3_R6 - 0x2f;
        }
        DAT_INTMEM_46 = DAT_INTMEM_5d + 0x6e;
        FUN_CODE_807b(DAT_INTMEM_5c + 'd',DAT_INTMEM_5b + 'Z',cVar5);
      }
      goto LAB_CODE_38aa;
    }
    if (DAT_INTMEM_76 != '\t') goto LAB_CODE_38aa;
    if (BANK3_R4 == 0) {
      DAT_INTMEM_3f = 0xff;
      DAT_INTMEM_41 = BANK3_R4;
LAB_CODE_3824:
      DAT_INTMEM_40 = 0xff;
    }
    else {
      if (BANK3_R4 == 1) {
        DAT_INTMEM_3f = 0xff;
LAB_CODE_3833:
        DAT_INTMEM_40 = 0;
      }
      else {
        if (BANK3_R4 != 2) {
          if (BANK3_R4 == 3) {
            DAT_INTMEM_3f = 0xff;
          }
          else {
            if (BANK3_R4 == 4) {
              DAT_INTMEM_41 = 0;
              DAT_INTMEM_3f = 0;
              goto LAB_CODE_3824;
            }
            if (BANK3_R4 == 5) {
              DAT_INTMEM_3f = 0;
              goto LAB_CODE_3833;
            }
            if (BANK3_R4 != 6) goto LAB_CODE_3846;
            DAT_INTMEM_3f = 0;
          }
          DAT_INTMEM_40 = 0;
          DAT_INTMEM_41 = 0;
          goto LAB_CODE_3846;
        }
        DAT_INTMEM_3f = 0;
        DAT_INTMEM_40 = 0xff;
      }
      DAT_INTMEM_41 = 0xff;
    }
LAB_CODE_3846:
    DAT_INTMEM_57 = DAT_INTMEM_57 + 1;
    if ((DAT_INTMEM_57 < 6 - DAT_INTMEM_77) << 7 < '\0') goto LAB_CODE_38aa;
    DAT_INTMEM_57 = 0;
    pbVar2 = &DAT_INTMEM_5e;
    DAT_INTMEM_46 = DAT_INTMEM_41;
    FUN_CODE_8077(DAT_INTMEM_5e);
    DAT_INTMEM_46 = DAT_INTMEM_41;
    FUN_CODE_8077(*pbVar2 + 0x17);
    DAT_INTMEM_46 = DAT_INTMEM_41;
    FUN_CODE_8077(*pbVar2 + 0x2e);
    DAT_INTMEM_46 = DAT_INTMEM_41;
    FUN_CODE_8077(*pbVar2 + 0x45);
    DAT_INTMEM_46 = DAT_INTMEM_41;
    FUN_CODE_8077(*pbVar2 + 0x5c);
    DAT_INTMEM_46 = DAT_INTMEM_41;
    FUN_CODE_8077(*pbVar2 + 0x73);
    *pbVar2 = *pbVar2 + 1;
    if ((*pbVar2 < 0x17) << 7 < '\0') goto LAB_CODE_38aa;
    *pbVar2 = 0;
    BANK3_R4 = BANK3_R4 + 1;
    if ((BANK3_R4 < 7) << 7 < '\0') goto LAB_CODE_38aa;
  }
  BANK3_R4 = 0;
LAB_CODE_38aa:
  bVar4 = DAT_INTMEM_53 + 1;
  cVar5 = DAT_INTMEM_53 + -0x1a;
  DAT_INTMEM_53 = bVar4;
  if (0x1a < bVar4) {
    cVar5 = '\0';
    DAT_INTMEM_53 = 0;
  }
  return cVar5;
}


// ===== FUN_CODE_38b6 @ CODE:38b6 =====

/* WARNING: Type propagation algorithm not settling */

byte FUN_CODE_38b6(byte param_1)

{
  char cVar1;
  char cVar2;
  undefined1 uVar3;
  byte bVar4;
  char cVar5;
  byte bVar6;
  byte bVar7;
  undefined1 *puVar8;
  
  DAT_INTMEM_35 = 0;
  DAT_INTMEM_2f = param_1;
  do {
    if (0x16 < DAT_INTMEM_35) {
      return DAT_INTMEM_35 - 0x17;
    }
    bVar4 = DAT_INTMEM_33;
    FUN_CODE_7a53(DAT_INTMEM_35 - 0x17,BANK0_R1,DAT_INTMEM_35,DAT_INTMEM_30,DAT_INTMEM_31,
                  DAT_INTMEM_32);
    if ((bVar4 & 1) == 0) goto LAB_CODE_4dfb;
    puVar8 = (undefined1 *)
             CONCAT11('\x02' - (((1 < DAT_INTMEM_2f * '\x04') << 7) >> 7),DAT_INTMEM_2f * '\x04' - 2
                     );
    bVar4 = puVar8[3];
    FUN_CODE_7a53(BANK0_R1,*puVar8,puVar8[1],puVar8[2]);
    _0_0 = (bVar4 & 1) != 0;
    if (((DAT_INTMEM_2f == 1) && (DAT_INTMEM_35 == 0x11)) && (_2_0 == '\x01')) {
      if (!(bool)_0_0) {
        return 0;
      }
      if ((DAT_INTMEM_76 >= 0x10) &&
         (bVar4 = 0x14 - (((DAT_INTMEM_76 < 0x10) << 7) >> 7), DAT_INTMEM_76 < bVar4)) {
        if (_2_5 != '\0') {
          return DAT_INTMEM_76 - bVar4;
        }
        _2_5 = 1;
        DAT_INTMEM_56 = 0;
        _4_2 = 0;
        BANK2_R1 = DAT_INTMEM_76;
        FUN_CODE_6d2e();
        if (BANK2_R1 == 0x10) {
          DAT_EXTMEM_0283 = -0x46;
          bVar4 = 0xba;
        }
        else if (BANK2_R1 == 0x11) {
          DAT_EXTMEM_0283 = -0x44;
          bVar4 = 0xbc;
        }
        else if (BANK2_R1 == 0x12) {
          DAT_EXTMEM_0283 = -0x42;
          bVar4 = 0xbe;
        }
        else {
          bVar4 = BANK2_R1;
          if (BANK2_R1 == 0x13) {
            bVar4 = 0xc0;
            DAT_EXTMEM_0283 = -0x40;
          }
        }
        DAT_INTMEM_76 = 0x14;
        return bVar4;
      }
      if ((DAT_INTMEM_76 ^ 0x14) != 0) {
        return DAT_INTMEM_76 ^ 0x14;
      }
      if (BANK2_R1 == '\x10') {
        uVar3 = 0xba;
      }
      else if (BANK2_R1 == '\x11') {
        uVar3 = 0xbc;
      }
      else if (BANK2_R1 == '\x12') {
        uVar3 = 0xbe;
      }
      else {
        if (BANK2_R1 != '\x13') goto LAB_CODE_39ab;
        uVar3 = 0xc0;
      }
      FUN_CODE_7f93(uVar3);
LAB_CODE_39ab:
      DAT_INTMEM_37 = 0;
      do {
        FUN_CODE_7eca(*(undefined1 *)(ushort)DAT_INTMEM_37,DAT_INTMEM_37 * '\x03',DAT_EXTMEM_0283);
        FUN_CODE_7eca(*(undefined1 *)
                       CONCAT11(-(((0x6a < DAT_INTMEM_37) << 7) >> 7),DAT_INTMEM_37 + 0x95),
                      DAT_INTMEM_37 * '\x03' + '\x01',DAT_EXTMEM_0283);
        FUN_CODE_7eca(*(undefined1 *)
                       CONCAT11('\x01' - (((0xd5 < DAT_INTMEM_37) << 7) >> 7),DAT_INTMEM_37 + 0x2a),
                      DAT_INTMEM_37 * '\x03' + '\x02',DAT_EXTMEM_0283);
        DAT_INTMEM_37 = DAT_INTMEM_37 + 1;
      } while ((DAT_INTMEM_37 < 0x55) << 7 < '\0');
      FUN_CODE_7eca(DAT_EXTMEM_0055,0xff,DAT_EXTMEM_0283);
      FUN_CODE_7eca(DAT_EXTMEM_00ea,0,DAT_EXTMEM_0283 + '\x01');
      FUN_CODE_7eca(DAT_EXTMEM_017f,1,DAT_EXTMEM_0283 + '\x01');
      DAT_INTMEM_37 = 0x56;
      do {
        FUN_CODE_7eca(*(undefined1 *)(ushort)DAT_INTMEM_37,DAT_INTMEM_37 * '\x03',
                      DAT_INTMEM_37 * '\x03',DAT_EXTMEM_0283 + '\x01');
        FUN_CODE_7eca(*(undefined1 *)
                       CONCAT11(-(((0x6a < DAT_INTMEM_37) << 7) >> 7),DAT_INTMEM_37 + 0x95),
                      DAT_INTMEM_37 * '\x03' + '\x01',DAT_EXTMEM_0283 + '\x01');
        FUN_CODE_7eca(*(undefined1 *)
                       CONCAT11('\x01' - (((0xd5 < DAT_INTMEM_37) << 7) >> 7),DAT_INTMEM_37 + 0x2a),
                      DAT_INTMEM_37 * '\x03' + '\x02',DAT_EXTMEM_0283 + '\x01');
        bVar4 = DAT_INTMEM_37;
        DAT_INTMEM_37 = DAT_INTMEM_37 + 1;
      } while ((DAT_INTMEM_37 < 0x8a) << 7 < '\0');
      _2_5 = 0;
      DAT_INTMEM_76 = BANK2_R1;
      return bVar4 + 0x77;
    }
    if ((DAT_INTMEM_2f == 5) && (DAT_INTMEM_35 == 10)) {
      if (!(bool)_0_0) {
        DAT_INTMEM_78 = 0;
        DAT_INTMEM_79 = 0;
        _2_7 = 0;
        _2_0 = 0;
        DAT_INTMEM_34 = '\0';
        do {
          *(undefined1 *)CONCAT11(2,DAT_INTMEM_34) = 0;
          DAT_INTMEM_34 = DAT_INTMEM_34 + '\x01';
        } while (DAT_INTMEM_34 != '\x10');
        _2_2 = 1;
        return 0x10;
      }
      DAT_INTMEM_34 = '\0';
      do {
        if (*(byte *)CONCAT11(2,DAT_INTMEM_34) != 0) {
          return *(byte *)CONCAT11(2,DAT_INTMEM_34);
        }
        DAT_INTMEM_34 = DAT_INTMEM_34 + '\x01';
      } while (DAT_INTMEM_34 != '\x10');
      _2_0 = 1;
      return 0x10;
    }
    if (_2_5 == '\x01') {
      if ((bool)_0_0) {
        bVar4 = (byte)((ushort)DAT_INTMEM_2f * 0x17);
        cVar1 = *(char *)CONCAT11((char)((ushort)DAT_INTMEM_2f * 0x17 >> 8) -
                                  ((CARRY1(bVar4,DAT_INTMEM_35) << 7) >> 7),bVar4 + DAT_INTMEM_35);
        if (((cVar1 == -1) &&
            (bVar4 = (byte)((ushort)DAT_INTMEM_2f * 0x17), bVar6 = bVar4 + DAT_INTMEM_35,
            *(char *)CONCAT11(((char)((ushort)DAT_INTMEM_2f * 0x17 >> 8) -
                              ((CARRY1(bVar4,DAT_INTMEM_35) << 7) >> 7)) -
                              (((0x6a < bVar6) << 7) >> 7),bVar6 + 0x95) == -1)) &&
           (bVar4 = (byte)((ushort)DAT_INTMEM_2f * 0x17), bVar6 = bVar4 + DAT_INTMEM_35,
           *(char *)CONCAT11(((char)((ushort)DAT_INTMEM_2f * 0x17 >> 8) -
                             ((CARRY1(bVar4,DAT_INTMEM_35) << 7) >> 7)) +
                             ('\x01' - (((0xd5 < bVar6) << 7) >> 7)),bVar6 + 0x2a) == -1)) {
          bVar4 = (byte)((ushort)DAT_INTMEM_2f * 0x17);
          puVar8 = (undefined1 *)
                   CONCAT11((char)((ushort)DAT_INTMEM_2f * 0x17 >> 8) -
                            ((CARRY1(bVar4,DAT_INTMEM_35) << 7) >> 7),bVar4 + DAT_INTMEM_35);
          uVar3 = 0xff;
LAB_CODE_3dd1:
          *puVar8 = uVar3;
          bVar4 = (byte)((ushort)DAT_INTMEM_2f * 0x17);
          bVar6 = bVar4 + DAT_INTMEM_35;
          puVar8 = (undefined1 *)
                   CONCAT11(((char)((ushort)DAT_INTMEM_2f * 0x17 >> 8) -
                            ((CARRY1(bVar4,DAT_INTMEM_35) << 7) >> 7)) -
                            (((0x6a < bVar6) << 7) >> 7),bVar6 + 0x95);
          uVar3 = 0xff;
LAB_CODE_3f2e:
          *puVar8 = uVar3;
          bVar4 = (byte)((ushort)DAT_INTMEM_2f * 0x17);
          bVar6 = bVar4 + DAT_INTMEM_35;
          *(undefined1 *)
           CONCAT11(((char)((ushort)DAT_INTMEM_2f * 0x17 >> 8) -
                    ((CARRY1(bVar4,DAT_INTMEM_35) << 7) >> 7)) +
                    ('\x01' - (((0xd5 < bVar6) << 7) >> 7)),bVar6 + 0x2a) = 0;
        }
        else {
          if (((cVar1 == '\0') &&
              (bVar4 = (byte)((ushort)DAT_INTMEM_2f * 0x17), bVar6 = bVar4 + DAT_INTMEM_35,
              *(char *)CONCAT11(((char)((ushort)DAT_INTMEM_2f * 0x17 >> 8) -
                                ((CARRY1(bVar4,DAT_INTMEM_35) << 7) >> 7)) -
                                (((0x6a < bVar6) << 7) >> 7),bVar6 + 0x95) == '\0')) &&
             (bVar4 = (byte)((ushort)DAT_INTMEM_2f * 0x17), bVar6 = bVar4 + DAT_INTMEM_35,
             *(char *)CONCAT11(((char)((ushort)DAT_INTMEM_2f * 0x17 >> 8) -
                               ((CARRY1(bVar4,DAT_INTMEM_35) << 7) >> 7)) +
                               ('\x01' - (((0xd5 < bVar6) << 7) >> 7)),bVar6 + 0x2a) == '\0')) {
            bVar4 = (byte)((ushort)DAT_INTMEM_2f * 0x17);
            puVar8 = (undefined1 *)
                     CONCAT11((char)((ushort)DAT_INTMEM_2f * 0x17 >> 8) -
                              ((CARRY1(bVar4,DAT_INTMEM_35) << 7) >> 7),bVar4 + DAT_INTMEM_35);
            uVar3 = 0xff;
LAB_CODE_3cd8:
            *puVar8 = uVar3;
            bVar4 = (byte)((ushort)DAT_INTMEM_2f * 0x17);
            bVar6 = bVar4 + DAT_INTMEM_35;
            puVar8 = (undefined1 *)
                     CONCAT11(((char)((ushort)DAT_INTMEM_2f * 0x17 >> 8) -
                              ((CARRY1(bVar4,DAT_INTMEM_35) << 7) >> 7)) -
                              (((0x6a < bVar6) << 7) >> 7),bVar6 + 0x95);
            uVar3 = 0xff;
          }
          else {
            bVar4 = (byte)((ushort)DAT_INTMEM_2f * 0x17);
            if (((*(char *)CONCAT11((char)((ushort)DAT_INTMEM_2f * 0x17 >> 8) -
                                    ((CARRY1(bVar4,DAT_INTMEM_35) << 7) >> 7),bVar4 + DAT_INTMEM_35)
                  != -1) ||
                (bVar4 = (byte)((ushort)DAT_INTMEM_2f * 0x17), bVar6 = bVar4 + DAT_INTMEM_35,
                *(char *)CONCAT11(((char)((ushort)DAT_INTMEM_2f * 0x17 >> 8) -
                                  ((CARRY1(bVar4,DAT_INTMEM_35) << 7) >> 7)) -
                                  (((0x6a < bVar6) << 7) >> 7),bVar6 + 0x95) != -1)) ||
               (bVar4 = (byte)((ushort)DAT_INTMEM_2f * 0x17), bVar6 = bVar4 + DAT_INTMEM_35,
               *(char *)CONCAT11(((char)((ushort)DAT_INTMEM_2f * 0x17 >> 8) -
                                 ((CARRY1(bVar4,DAT_INTMEM_35) << 7) >> 7)) +
                                 ('\x01' - (((0xd5 < bVar6) << 7) >> 7)),bVar6 + 0x2a) != '\0')) {
              bVar4 = (byte)((ushort)DAT_INTMEM_2f * 0x17);
              cVar1 = *(char *)CONCAT11((char)((ushort)DAT_INTMEM_2f * 0x17 >> 8) -
                                        ((CARRY1(bVar4,DAT_INTMEM_35) << 7) >> 7),
                                        bVar4 + DAT_INTMEM_35);
              if (((cVar1 != -1) ||
                  (bVar4 = (byte)((ushort)DAT_INTMEM_2f * 0x17), bVar6 = bVar4 + DAT_INTMEM_35,
                  *(char *)CONCAT11(((char)((ushort)DAT_INTMEM_2f * 0x17 >> 8) -
                                    ((CARRY1(bVar4,DAT_INTMEM_35) << 7) >> 7)) -
                                    (((0x6a < bVar6) << 7) >> 7),bVar6 + 0x95) != '\0')) ||
                 (bVar4 = (byte)((ushort)DAT_INTMEM_2f * 0x17), bVar6 = bVar4 + DAT_INTMEM_35,
                 *(char *)CONCAT11(((char)((ushort)DAT_INTMEM_2f * 0x17 >> 8) -
                                   ((CARRY1(bVar4,DAT_INTMEM_35) << 7) >> 7)) +
                                   ('\x01' - (((0xd5 < bVar6) << 7) >> 7)),bVar6 + 0x2a) != -1)) {
                if (((cVar1 == '\0') &&
                    (bVar4 = (byte)((ushort)DAT_INTMEM_2f * 0x17), bVar6 = bVar4 + DAT_INTMEM_35,
                    *(char *)CONCAT11(((char)((ushort)DAT_INTMEM_2f * 0x17 >> 8) -
                                      ((CARRY1(bVar4,DAT_INTMEM_35) << 7) >> 7)) -
                                      (((0x6a < bVar6) << 7) >> 7),bVar6 + 0x95) == -1)) &&
                   (bVar4 = (byte)((ushort)DAT_INTMEM_2f * 0x17), bVar6 = bVar4 + DAT_INTMEM_35,
                   *(char *)CONCAT11(((char)((ushort)DAT_INTMEM_2f * 0x17 >> 8) -
                                     ((CARRY1(bVar4,DAT_INTMEM_35) << 7) >> 7)) +
                                     ('\x01' - (((0xd5 < bVar6) << 7) >> 7)),bVar6 + 0x2a) == -1)) {
                  bVar4 = (byte)((ushort)DAT_INTMEM_2f * 0x17);
                  puVar8 = (undefined1 *)
                           CONCAT11((char)((ushort)DAT_INTMEM_2f * 0x17 >> 8) -
                                    ((CARRY1(bVar4,DAT_INTMEM_35) << 7) >> 7),bVar4 + DAT_INTMEM_35)
                  ;
                  uVar3 = 0xff;
                }
                else {
                  bVar4 = (byte)((ushort)DAT_INTMEM_2f * 0x17);
                  if (((*(char *)CONCAT11((char)((ushort)DAT_INTMEM_2f * 0x17 >> 8) -
                                          ((CARRY1(bVar4,DAT_INTMEM_35) << 7) >> 7),
                                          bVar4 + DAT_INTMEM_35) == -1) &&
                      (bVar4 = (byte)((ushort)DAT_INTMEM_2f * 0x17), bVar6 = bVar4 + DAT_INTMEM_35,
                      *(char *)CONCAT11(((char)((ushort)DAT_INTMEM_2f * 0x17 >> 8) -
                                        ((CARRY1(bVar4,DAT_INTMEM_35) << 7) >> 7)) -
                                        (((0x6a < bVar6) << 7) >> 7),bVar6 + 0x95) == '\0')) &&
                     (bVar4 = (byte)((ushort)DAT_INTMEM_2f * 0x17), bVar6 = bVar4 + DAT_INTMEM_35,
                     *(char *)CONCAT11(((char)((ushort)DAT_INTMEM_2f * 0x17 >> 8) -
                                       ((CARRY1(bVar4,DAT_INTMEM_35) << 7) >> 7)) +
                                       ('\x01' - (((0xd5 < bVar6) << 7) >> 7)),bVar6 + 0x2a) == '\0'
                     )) {
                    bVar4 = (byte)((ushort)DAT_INTMEM_2f * 0x17);
                    puVar8 = (undefined1 *)
                             CONCAT11((char)((ushort)DAT_INTMEM_2f * 0x17 >> 8) -
                                      ((CARRY1(bVar4,DAT_INTMEM_35) << 7) >> 7),
                                      bVar4 + DAT_INTMEM_35);
                    uVar3 = 0;
                    goto LAB_CODE_3dd1;
                  }
                  bVar4 = (byte)((ushort)DAT_INTMEM_2f * 0x17);
                  cVar1 = *(char *)CONCAT11((char)((ushort)DAT_INTMEM_2f * 0x17 >> 8) -
                                            ((CARRY1(bVar4,DAT_INTMEM_35) << 7) >> 7),
                                            bVar4 + DAT_INTMEM_35);
                  if (((cVar1 == '\0') &&
                      (bVar4 = (byte)((ushort)DAT_INTMEM_2f * 0x17), bVar6 = bVar4 + DAT_INTMEM_35,
                      *(char *)CONCAT11(((char)((ushort)DAT_INTMEM_2f * 0x17 >> 8) -
                                        ((CARRY1(bVar4,DAT_INTMEM_35) << 7) >> 7)) -
                                        (((0x6a < bVar6) << 7) >> 7),bVar6 + 0x95) == -1)) &&
                     (bVar4 = (byte)((ushort)DAT_INTMEM_2f * 0x17), bVar6 = bVar4 + DAT_INTMEM_35,
                     *(char *)CONCAT11(((char)((ushort)DAT_INTMEM_2f * 0x17 >> 8) -
                                       ((CARRY1(bVar4,DAT_INTMEM_35) << 7) >> 7)) +
                                       ('\x01' - (((0xd5 < bVar6) << 7) >> 7)),bVar6 + 0x2a) == '\0'
                     )) {
                    bVar4 = (byte)((ushort)DAT_INTMEM_2f * 0x17);
                    puVar8 = (undefined1 *)
                             CONCAT11((char)((ushort)DAT_INTMEM_2f * 0x17 >> 8) -
                                      ((CARRY1(bVar4,DAT_INTMEM_35) << 7) >> 7),
                                      bVar4 + DAT_INTMEM_35);
                    uVar3 = 0;
                    goto LAB_CODE_3e6d;
                  }
                  if (((cVar1 != '\0') ||
                      (bVar4 = (byte)((ushort)DAT_INTMEM_2f * 0x17), bVar6 = bVar4 + DAT_INTMEM_35,
                      *(char *)CONCAT11(((char)((ushort)DAT_INTMEM_2f * 0x17 >> 8) -
                                        ((CARRY1(bVar4,DAT_INTMEM_35) << 7) >> 7)) -
                                        (((0x6a < bVar6) << 7) >> 7),bVar6 + 0x95) != '\0')) ||
                     (bVar4 = (byte)((ushort)DAT_INTMEM_2f * 0x17), bVar6 = bVar4 + DAT_INTMEM_35,
                     *(char *)CONCAT11(((char)((ushort)DAT_INTMEM_2f * 0x17 >> 8) -
                                       ((CARRY1(bVar4,DAT_INTMEM_35) << 7) >> 7)) +
                                       ('\x01' - (((0xd5 < bVar6) << 7) >> 7)),bVar6 + 0x2a) != -1))
                  goto LAB_CODE_4dfb;
                  bVar4 = (byte)((ushort)DAT_INTMEM_2f * 0x17);
                  puVar8 = (undefined1 *)
                           CONCAT11((char)((ushort)DAT_INTMEM_2f * 0x17 >> 8) -
                                    ((CARRY1(bVar4,DAT_INTMEM_35) << 7) >> 7),bVar4 + DAT_INTMEM_35)
                  ;
                  uVar3 = 0;
                }
                *puVar8 = uVar3;
                bVar4 = (byte)((ushort)DAT_INTMEM_2f * 0x17);
                bVar6 = bVar4 + DAT_INTMEM_35;
                puVar8 = (undefined1 *)
                         CONCAT11(((char)((ushort)DAT_INTMEM_2f * 0x17 >> 8) -
                                  ((CARRY1(bVar4,DAT_INTMEM_35) << 7) >> 7)) -
                                  (((0x6a < bVar6) << 7) >> 7),bVar6 + 0x95);
                uVar3 = 0;
                goto LAB_CODE_3f2e;
              }
              bVar4 = (byte)((ushort)DAT_INTMEM_2f * 0x17);
              puVar8 = (undefined1 *)
                       CONCAT11((char)((ushort)DAT_INTMEM_2f * 0x17 >> 8) -
                                ((CARRY1(bVar4,DAT_INTMEM_35) << 7) >> 7),bVar4 + DAT_INTMEM_35);
              uVar3 = 0;
              goto LAB_CODE_3cd8;
            }
            bVar4 = (byte)((ushort)DAT_INTMEM_2f * 0x17);
            puVar8 = (undefined1 *)
                     CONCAT11((char)((ushort)DAT_INTMEM_2f * 0x17 >> 8) -
                              ((CARRY1(bVar4,DAT_INTMEM_35) << 7) >> 7),bVar4 + DAT_INTMEM_35);
            uVar3 = 0xff;
LAB_CODE_3e6d:
            *puVar8 = uVar3;
            bVar4 = (byte)((ushort)DAT_INTMEM_2f * 0x17);
            bVar6 = bVar4 + DAT_INTMEM_35;
            puVar8 = (undefined1 *)
                     CONCAT11(((char)((ushort)DAT_INTMEM_2f * 0x17 >> 8) -
                              ((CARRY1(bVar4,DAT_INTMEM_35) << 7) >> 7)) -
                              (((0x6a < bVar6) << 7) >> 7),bVar6 + 0x95);
            uVar3 = 0;
          }
          *puVar8 = uVar3;
          bVar4 = (byte)((ushort)DAT_INTMEM_2f * 0x17);
          bVar6 = bVar4 + DAT_INTMEM_35;
          *(undefined1 *)
           CONCAT11(((char)((ushort)DAT_INTMEM_2f * 0x17 >> 8) -
                    ((CARRY1(bVar4,DAT_INTMEM_35) << 7) >> 7)) +
                    ('\x01' - (((0xd5 < bVar6) << 7) >> 7)),bVar6 + 0x2a) = 0xff;
        }
      }
    }
    else {
      bVar4 = DAT_INTMEM_2f;
      if (((DAT_INTMEM_2f == 0) && (bVar4 = DAT_INTMEM_35 ^ 0x12, bVar4 == 0)) && (_2_0 != '\0')) {
        if ((bool)_0_0) {
          _3_0 = _3_0 ^ 1;
        }
        if (_3_0 != 1) {
          return 0;
        }
        DAT_INTMEM_34 = '\0';
        do {
          *(undefined1 *)CONCAT11(2,DAT_INTMEM_34) = 0;
          DAT_INTMEM_34 = DAT_INTMEM_34 + '\x01';
        } while (DAT_INTMEM_34 != '\x10');
        _0_2 = 1;
        return 0x10;
      }
      if (_3_0 != 0) {
        return bVar4;
      }
      if (((DAT_INTMEM_2f == 5) && (DAT_INTMEM_35 == 0xd)) && (_2_0 != '\0')) {
        if (!(bool)_0_0) {
          return 0xd;
        }
        bVar4 = DAT_INTMEM_5a - 6;
        if (DAT_INTMEM_5a + 1 < 7) {
          DAT_INTMEM_5a = DAT_INTMEM_5a + 1;
          return bVar4;
        }
        DAT_INTMEM_5a = 0;
        return 0;
      }
      if (((DAT_INTMEM_2f == 2) && (DAT_INTMEM_35 == 3)) && (_2_0 != '\0')) {
        if (!(bool)_0_0) {
          return 3;
        }
        _2_4 = _2_4 ^ 1;
        return 3;
      }
      if (((DAT_INTMEM_2f == 0) && (DAT_INTMEM_35 == 0x11)) && (_2_0 == '\x01')) {
        if (!(bool)_0_0) {
          return 0;
        }
        DAT_INTMEM_76 = DAT_INTMEM_76 + 1;
        if (10 < DAT_INTMEM_76) {
          DAT_INTMEM_76 = 0;
        }
        DAT_INTMEM_36 = 0;
        do {
          *(undefined1 *)(ushort)DAT_INTMEM_36 = 0xff;
          *(undefined1 *)CONCAT11(-(((0x6a < DAT_INTMEM_36) << 7) >> 7),DAT_INTMEM_36 + 0x95) = 0xff
          ;
          *(undefined1 *)
           CONCAT11('\x01' - (((0xd5 < DAT_INTMEM_36) << 7) >> 7),DAT_INTMEM_36 + 0x2a) = 0xff;
          DAT_INTMEM_36 = DAT_INTMEM_36 + 1;
        } while (DAT_INTMEM_36 != 0x8a);
        if (DAT_INTMEM_76 == 0) {
          DAT_INTMEM_5e = 0;
          BANK3_R4 = 0;
          return 0;
        }
        if (DAT_INTMEM_76 == 1) {
          DAT_INTMEM_67 = 0x1c;
          DAT_INTMEM_66 = 0x38;
          DAT_INTMEM_65 = 0x54;
          DAT_INTMEM_64 = 0x70;
          DAT_INTMEM_63 = 0x8c;
          DAT_INTMEM_62 = 0xa8;
          DAT_INTMEM_61 = 0xc4;
          DAT_INTMEM_60 = 0xe0;
          DAT_INTMEM_5f = 0xff;
          DAT_INTMEM_68 = 0;
          BANK3_R5 = 0;
          BANK3_R4 = 0;
          return 0;
        }
        if (DAT_INTMEM_76 == 3) {
          BANK3_R4 = 0;
          BANK3_R5 = 0;
          DAT_INTMEM_5f = 0;
          DAT_INTMEM_60 = 0;
          DAT_INTMEM_61 = 0;
          DAT_INTMEM_62 = 0;
          DAT_INTMEM_63 = 0;
          DAT_INTMEM_64 = 0;
          DAT_INTMEM_65 = 0;
          DAT_INTMEM_66 = 0;
          DAT_INTMEM_67 = 0;
          DAT_INTMEM_68 = 0;
          return 0;
        }
        if (DAT_INTMEM_76 == 7) {
          DAT_INTMEM_5e = 0;
          _4_5 = 0;
          return 0;
        }
        bVar4 = DAT_INTMEM_76 ^ 6;
        if (bVar4 == 0) {
          DAT_INTMEM_5e = bVar4;
          BANK3_R4 = bVar4;
          DAT_INTMEM_75 = bVar4;
          DAT_INTMEM_74 = 0xb;
          DAT_INTMEM_73 = 0x16;
          DAT_INTMEM_72 = 0x21;
          DAT_INTMEM_71 = 0x2c;
          DAT_INTMEM_70 = 0x37;
          DAT_INTMEM_6f = 0x42;
          DAT_INTMEM_6e = 0x4d;
          DAT_INTMEM_6d = 0x58;
          DAT_INTMEM_6c = 99;
          DAT_INTMEM_6b = 0x6e;
          DAT_INTMEM_6a = 0x79;
          DAT_INTMEM_69 = 0x84;
          DAT_INTMEM_68 = 0x8f;
          DAT_INTMEM_67 = 0x9a;
          DAT_INTMEM_66 = 0xa5;
          DAT_INTMEM_65 = 0xb0;
          DAT_INTMEM_64 = 0xbb;
          DAT_INTMEM_63 = 0xc6;
          DAT_INTMEM_62 = 0xd1;
          DAT_INTMEM_61 = 0xdc;
          DAT_INTMEM_60 = 0xe7;
          DAT_INTMEM_5f = 0xf2;
          BANK1_R4 = bVar4;
          BANK1_R5 = bVar4;
          BANK1_R6 = bVar4;
          return 0;
        }
        if (DAT_INTMEM_76 != 8) {
          if ((DAT_INTMEM_76 ^ 9) == 0) {
            BANK3_R4 = 0;
            DAT_INTMEM_5e = 0;
            return 0;
          }
          return DAT_INTMEM_76 ^ 9;
        }
        DAT_INTMEM_36 = 0;
        do {
          if (BANK3_R4 == 0) {
            DAT_INTMEM_38 = 0xff;
LAB_CODE_4106:
            DAT_INTMEM_3a = 0;
            DAT_INTMEM_39 = 0xff;
          }
          else {
            if (BANK3_R4 == 1) {
              DAT_INTMEM_38 = 0xff;
LAB_CODE_4115:
              DAT_INTMEM_39 = 0;
            }
            else {
              if (BANK3_R4 != 2) {
                if (BANK3_R4 == 3) {
                  DAT_INTMEM_38 = 0xff;
                }
                else {
                  if (BANK3_R4 == 4) {
                    DAT_INTMEM_38 = 0;
                    goto LAB_CODE_4106;
                  }
                  if (BANK3_R4 == 5) {
                    DAT_INTMEM_38 = 0;
                    goto LAB_CODE_4115;
                  }
                  if (BANK3_R4 != 6) goto LAB_CODE_4128;
                  DAT_INTMEM_38 = 0;
                }
                DAT_INTMEM_39 = 0;
                DAT_INTMEM_3a = 0;
                goto LAB_CODE_4128;
              }
              DAT_INTMEM_38 = 0;
              DAT_INTMEM_39 = 0xff;
            }
            DAT_INTMEM_3a = 0xff;
          }
LAB_CODE_4128:
          *(undefined1 *)(ushort)DAT_INTMEM_36 = DAT_INTMEM_38;
          *(undefined1 *)CONCAT11(-(((0x6a < DAT_INTMEM_36) << 7) >> 7),DAT_INTMEM_36 + 0x95) =
               DAT_INTMEM_39;
          *(undefined1 *)
           CONCAT11('\x01' - (((0xd5 < DAT_INTMEM_36) << 7) >> 7),DAT_INTMEM_36 + 0x2a) =
               DAT_INTMEM_3a;
          BANK3_R4 = BANK3_R4 + 1;
          if (6 < BANK3_R4) {
            BANK3_R4 = 0;
          }
          DAT_INTMEM_36 = DAT_INTMEM_36 + 1;
          if (DAT_INTMEM_36 == 0x8a) {
            return 0;
          }
        } while( true );
      }
      if (((DAT_INTMEM_2f == 2) && (DAT_INTMEM_35 == 0x10)) && (_2_0 != '\0')) {
        if (!(bool)_0_0) {
          return 0;
        }
        DAT_INTMEM_36 = 0;
        do {
          *(undefined1 *)(ushort)DAT_INTMEM_36 = 0xff;
          *(undefined1 *)CONCAT11(-(((0x6a < DAT_INTMEM_36) << 7) >> 7),DAT_INTMEM_36 + 0x95) = 0xff
          ;
          *(undefined1 *)
           CONCAT11('\x01' - (((0xd5 < DAT_INTMEM_36) << 7) >> 7),DAT_INTMEM_36 + 0x2a) = 0xff;
          DAT_INTMEM_36 = DAT_INTMEM_36 + 1;
        } while (DAT_INTMEM_36 != 0x8a);
        bVar4 = DAT_INTMEM_76 - 0x10;
        if (0xf < DAT_INTMEM_76) {
          bVar4 = DAT_INTMEM_76 - 0x13;
          if (DAT_INTMEM_76 + 1 < 0x14) {
            DAT_INTMEM_76 = DAT_INTMEM_76 + 1;
            return bVar4;
          }
          DAT_INTMEM_76 = 0x10;
          return bVar4;
        }
        DAT_INTMEM_76 = 0x10;
        return bVar4;
      }
      if (((DAT_INTMEM_2f == 4) && (DAT_INTMEM_35 == 0x11)) && (_2_0 != '\0')) {
        if (!(bool)_0_0) {
          return 0;
        }
        DAT_INTMEM_7a = DAT_INTMEM_7a + 1;
        if (4 < DAT_INTMEM_7a) {
          DAT_INTMEM_7a = 4;
        }
        if (DAT_INTMEM_7a == 4) {
          _4_4 = 1;
          BANK3_R7 = 9;
          _4_2 = 1;
LAB_CODE_424b:
          DAT_EXTMEM_ff95 = 0;
          RD = 0;
          return 0;
        }
        if (DAT_INTMEM_7a == 3) {
          DAT_EXTMEM_ff95 = 8;
          DAT_EXTMEM_ffb5 = 0x80;
          return 0x80;
        }
        if (DAT_INTMEM_7a == 2) {
          DAT_EXTMEM_ff95 = 8;
          DAT_EXTMEM_ffb5 = 0xb4;
          return 0xb4;
        }
        if (DAT_INTMEM_7a == 1) {
          DAT_EXTMEM_ff95 = 8;
          DAT_EXTMEM_ffb5 = 0xe6;
          return 0xe6;
        }
        if (DAT_INTMEM_7a != 0) {
          return DAT_INTMEM_7a;
        }
LAB_CODE_4293:
        bVar4 = FUN_CODE_79d2();
        return bVar4;
      }
      if (((DAT_INTMEM_2f == 5) && (DAT_INTMEM_35 == 0x11)) && (_2_0 != '\0')) {
        if (!(bool)_0_0) {
          return 0;
        }
        if (DAT_INTMEM_7a != 0) {
          DAT_INTMEM_7a = DAT_INTMEM_7a - 1;
        }
        if (DAT_INTMEM_7a == 4) goto LAB_CODE_424b;
        if (DAT_INTMEM_7a == 3) {
          DAT_EXTMEM_ff95 = 8;
          DAT_EXTMEM_ffb5 = 0x80;
          return 0x80;
        }
        if (DAT_INTMEM_7a == 2) {
          DAT_EXTMEM_ff95 = 8;
          DAT_EXTMEM_ffb5 = 0xb4;
          return 0xb4;
        }
        if (DAT_INTMEM_7a == 1) {
          DAT_EXTMEM_ff95 = 8;
          DAT_EXTMEM_ffb5 = 0xe6;
          return 0xe6;
        }
        if (DAT_INTMEM_7a != 0) {
          return DAT_INTMEM_7a;
        }
        _4_4 = 1;
        BANK3_R7 = 9;
        _4_2 = 1;
        goto LAB_CODE_4293;
      }
      if (((DAT_INTMEM_2f == 5) && (DAT_INTMEM_35 == 0x12)) && (_2_0 != '\0')) {
        if (DAT_INTMEM_76 == 4) {
          return 0;
        }
        if (DAT_INTMEM_76 == 0x10) {
          return 0;
        }
        if (DAT_INTMEM_76 == 0x11) {
          return 0;
        }
        if (DAT_INTMEM_76 == 0x12) {
          return 0;
        }
        if ((DAT_INTMEM_76 ^ 0x13) == 0) {
          return 0;
        }
        if (!(bool)_0_0) {
          return DAT_INTMEM_76 ^ 0x13;
        }
        DAT_INTMEM_77 = DAT_INTMEM_77 + 1;
        if (4 < DAT_INTMEM_77) {
          DAT_INTMEM_77 = 4;
        }
        bVar4 = DAT_INTMEM_77 ^ 4;
joined_c0x42e6:
        if (bVar4 != 0) {
          return bVar4;
        }
        _4_4 = 1;
        BANK3_R7 = 9;
        _4_2 = 1;
        return 0;
      }
      if (((DAT_INTMEM_2f == 5) && (DAT_INTMEM_35 == 0x10)) && (_2_0 != '\0')) {
        if (DAT_INTMEM_76 == 4) {
          return 0;
        }
        if (DAT_INTMEM_76 == 0x10) {
          return 0;
        }
        if (DAT_INTMEM_76 == 0x11) {
          return 0;
        }
        if (DAT_INTMEM_76 == 0x12) {
          return 0;
        }
        if ((DAT_INTMEM_76 ^ 0x13) == 0) {
          return 0;
        }
        if (!(bool)_0_0) {
          return DAT_INTMEM_76 ^ 0x13;
        }
        bVar4 = DAT_INTMEM_77;
        if (DAT_INTMEM_77 != 0) {
          bVar4 = DAT_INTMEM_77 - 1;
          DAT_INTMEM_77 = bVar4;
        }
        goto joined_c0x42e6;
      }
      if (((DAT_INTMEM_2f == 5) && (DAT_INTMEM_35 == 0xb)) && (_2_0 != '\0')) {
        if (!(bool)_0_0) {
          return 0;
        }
        DAT_INTMEM_7b = DAT_INTMEM_7b + 1;
        if (2 < DAT_INTMEM_7b) {
          DAT_INTMEM_7b = 0;
        }
        if (DAT_INTMEM_7b != 0) {
          bVar4 = DAT_INTMEM_7b ^ 1;
          if (bVar4 != 0) {
            return bVar4;
          }
          DAT_EXTMEM_ff94 = bVar4;
          F8_7 = 0;
          return 0;
        }
        DAT_EXTMEM_ff94 = DAT_INTMEM_7b;
        F8_7 = 1;
        return 0;
      }
      if (((DAT_INTMEM_2f == 0) && (DAT_INTMEM_35 == 0x10)) && (_2_0 != '\0')) {
        DAT_INTMEM_34 = '\0';
        do {
          if (*(byte *)CONCAT11(2,DAT_INTMEM_34) != 0) {
            return *(byte *)CONCAT11(2,DAT_INTMEM_34);
          }
          DAT_INTMEM_34 = DAT_INTMEM_34 + '\x01';
        } while (DAT_INTMEM_34 != '\x10');
        if ((bool)_0_0) {
          _4_7 = _4_7 ^ 1;
        }
        DAT_INTMEM_34 = '\0';
        do {
          *(undefined1 *)CONCAT11(2,DAT_INTMEM_34) = 0;
          DAT_INTMEM_34 = DAT_INTMEM_34 + '\x01';
        } while (DAT_INTMEM_34 != '\x10');
        _2_2 = 1;
        return 0x10;
      }
      if (((DAT_INTMEM_2f == 1) && (DAT_INTMEM_35 == 2)) && (_2_0 != '\0')) {
        if (!(bool)_0_0) {
          return 0;
        }
        DAT_EXTMEM_1182 = 0;
        DAT_EXTMEM_0332 = 0;
LAB_CODE_444b:
        DAT_EXTMEM_1181 = 3;
        DAT_EXTMEM_1180 = 0xd;
        BANK3_R3 = 0x80;
        BANK3_R2 = 0x11;
        DAT_EXTMEM_1183 = 0;
        uEXTMEM1184 = 0;
        uEXTMEM1185 = 0;
        uEXTMEM1186 = 0;
        uEXTMEM1187 = 0;
        DAT_SFR_9d = 8;
        bVar4 = DAT_SFR_9a;
        DAT_SFR_9a = bVar4 | 4;
        return 0;
      }
      if (((DAT_INTMEM_2f == 1) && (DAT_INTMEM_35 == 3)) && (_2_0 != '\0')) {
        if (!(bool)_0_0) {
          return 0;
        }
        DAT_EXTMEM_0332 = 1;
        DAT_EXTMEM_1182 = 1;
        goto LAB_CODE_444b;
      }
      if (((DAT_INTMEM_2f == 0) && (DAT_INTMEM_35 == 1)) && (_2_0 != '\0')) {
        if ((bool)_0_0) {
          DAT_INTMEM_78 = 0;
          DAT_INTMEM_79 = 0;
          _2_7 = 1;
          return 0;
        }
        DAT_INTMEM_78 = 0;
        DAT_INTMEM_79 = 0;
        _2_7 = 0;
        return 0;
      }
      if ((DAT_INTMEM_2f == 0) && (DAT_INTMEM_35 == 3)) {
        if (_2_0 != '\0') {
          if ((bool)_0_0) {
            DAT_EXTMEM_02a5 = 0x23;
            DAT_EXTMEM_02a6 = 2;
            _0_3 = 1;
            return 2;
          }
          DAT_EXTMEM_02a5 = 0;
          DAT_EXTMEM_02a6 = 0;
          _0_3 = 1;
          return 0;
        }
        if ((!(bool)_0_0) && (DAT_EXTMEM_02a5 == '#')) {
          DAT_EXTMEM_02a5 = 0;
          DAT_EXTMEM_02a6 = 0;
          _0_3 = 1;
          return 0;
        }
      }
      if ((DAT_INTMEM_2f == 0) && (DAT_INTMEM_35 == 4)) {
        if (_2_0 != '\0') {
          if ((bool)_0_0) {
            DAT_EXTMEM_02a5 = 0x94;
            DAT_EXTMEM_02a6 = 1;
            _0_3 = 1;
            return 1;
          }
          DAT_EXTMEM_02a5 = 0;
          DAT_EXTMEM_02a6 = 0;
          _0_3 = 1;
          return 0;
        }
        if ((!(bool)_0_0) && (DAT_EXTMEM_02a5 == -0x6c)) {
          DAT_EXTMEM_02a5 = 0;
          DAT_EXTMEM_02a6 = 0;
          _0_3 = 1;
          return 0;
        }
      }
      if ((DAT_INTMEM_2f == 0) && (DAT_INTMEM_35 == 5)) {
        if (_2_0 != '\0') {
          if ((bool)_0_0) {
            DAT_EXTMEM_02a5 = 0x8a;
            DAT_EXTMEM_02a6 = 1;
            _0_3 = 1;
            return 1;
          }
          DAT_EXTMEM_02a5 = 0;
          DAT_EXTMEM_02a6 = 0;
          _0_3 = 1;
          return 0;
        }
        if ((!(bool)_0_0) && (DAT_EXTMEM_02a5 == -0x76)) {
          DAT_EXTMEM_02a5 = 0;
          DAT_EXTMEM_02a6 = 0;
          _0_3 = 1;
          return 0;
        }
      }
      if ((DAT_INTMEM_2f == 0) && (DAT_INTMEM_35 == 6)) {
        if (_2_0 != '\0') {
          if ((bool)_0_0) {
            DAT_EXTMEM_02a5 = 0x83;
            DAT_EXTMEM_02a6 = 1;
            _0_3 = 1;
            return 1;
          }
          DAT_EXTMEM_02a5 = 0;
          DAT_EXTMEM_02a6 = 0;
          _0_3 = 1;
          return 0;
        }
        if ((!(bool)_0_0) && (DAT_EXTMEM_02a5 == -0x7d)) {
          DAT_EXTMEM_02a5 = 0;
          DAT_EXTMEM_02a6 = 0;
          _0_3 = 1;
          return 0;
        }
      }
      if ((DAT_INTMEM_2f == 0) && (DAT_INTMEM_35 == 7)) {
        if (_2_0 != '\0') {
          if ((bool)_0_0) {
            DAT_EXTMEM_02a5 = 0xb6;
          }
          else {
            DAT_EXTMEM_02a5 = 0;
          }
          DAT_EXTMEM_02a6 = 0;
          _0_3 = 1;
          return 0;
        }
        if ((!(bool)_0_0) && (DAT_EXTMEM_02a5 == -0x4a)) {
          DAT_EXTMEM_02a5 = 0;
          DAT_EXTMEM_02a6 = 0;
          _0_3 = 1;
          return 0;
        }
      }
      if ((DAT_INTMEM_2f == 0) && (DAT_INTMEM_35 == 8)) {
        if (_2_0 != '\0') {
          if ((bool)_0_0) {
            DAT_EXTMEM_02a5 = 0xb5;
          }
          else {
            DAT_EXTMEM_02a5 = 0;
          }
          DAT_EXTMEM_02a6 = 0;
          _0_3 = 1;
          return 0;
        }
        if ((!(bool)_0_0) && (DAT_EXTMEM_02a5 == -0x4b)) {
          DAT_EXTMEM_02a5 = 0;
          DAT_EXTMEM_02a6 = 0;
          _0_3 = 1;
          return 0;
        }
      }
      if ((DAT_INTMEM_2f == 0) && (DAT_INTMEM_35 == 9)) {
        if (_2_0 != '\0') {
          if ((bool)_0_0) {
            DAT_EXTMEM_02a5 = 0xcd;
          }
          else {
            DAT_EXTMEM_02a5 = 0;
          }
          DAT_EXTMEM_02a6 = 0;
          _0_3 = 1;
          return 0;
        }
        if ((!(bool)_0_0) && (DAT_EXTMEM_02a5 == -0x33)) {
          DAT_EXTMEM_02a5 = 0;
          DAT_EXTMEM_02a6 = 0;
          _0_3 = 1;
          return 0;
        }
      }
      if ((DAT_INTMEM_2f == 0) && (DAT_INTMEM_35 == 10)) {
        if (_2_0 != '\0') {
          if ((bool)_0_0) {
            DAT_EXTMEM_02a5 = 0xb7;
          }
          else {
            DAT_EXTMEM_02a5 = 0;
          }
          DAT_EXTMEM_02a6 = 0;
          _0_3 = 1;
          return 0;
        }
        if ((!(bool)_0_0) && (DAT_EXTMEM_02a5 == -0x49)) {
          DAT_EXTMEM_02a5 = 0;
          DAT_EXTMEM_02a6 = 0;
          _0_3 = 1;
          return 0;
        }
      }
      DAT_EXTMEM_0282 = DAT_INTMEM_2f * '\x17' + DAT_INTMEM_35;
      if (_2_4 == 1) {
        if ((DAT_INTMEM_2f == 2) && (DAT_INTMEM_35 == 3)) {
          DAT_EXTMEM_029f = 0x52;
        }
        else if ((DAT_INTMEM_2f == 3) && (DAT_INTMEM_35 == 2)) {
          DAT_EXTMEM_029f = 0x50;
        }
        else if ((DAT_INTMEM_2f == 3) && (DAT_INTMEM_35 == 3)) {
          DAT_EXTMEM_029f = 0x51;
        }
        else if ((DAT_INTMEM_2f == 3) && (DAT_INTMEM_35 == 4)) {
          DAT_EXTMEM_029f = 0x4f;
        }
        else if ((DAT_INTMEM_2f == 4) && (DAT_INTMEM_35 == 0x11)) {
          DAT_EXTMEM_029f = 0x1a;
        }
        else if ((DAT_INTMEM_2f == 5) && (DAT_INTMEM_35 == 0x10)) {
          DAT_EXTMEM_029f = 4;
        }
        else if ((DAT_INTMEM_2f == 5) && (DAT_INTMEM_35 == 0x11)) {
          DAT_EXTMEM_029f = 0x16;
        }
        else {
          if ((DAT_INTMEM_2f != 5) || (DAT_INTMEM_35 != 0x12)) {
            if (DAT_EXTMEM_0332 != '\0') {
              if (DAT_EXTMEM_0332 != '\x01') goto LAB_CODE_4dfb;
              bVar6 = DAT_INTMEM_2f * '\x17' + DAT_INTMEM_35;
              cVar1 = '\x02';
              bVar4 = bVar6;
              do {
                bVar4 = bVar4 << 1;
                cVar1 = cVar1 + -1;
              } while (cVar1 != '\0');
              cVar1 = BANK0_R6;
              FUN_CODE_7a79(CONCAT11(BANK0_R6 + -0x38,bVar4));
              DAT_EXTMEM_029f = bVar6;
              FUN_CODE_7a79(CONCAT11(cVar1 + -0x38,bVar4));
              FUN_CODE_7a53(8);
              bVar7 = DAT_INTMEM_2f * '\x17' + DAT_INTMEM_35;
              cVar1 = '\x02';
              bVar4 = bVar7;
              do {
                bVar4 = bVar4 << 1;
                cVar1 = cVar1 + -1;
              } while (cVar1 != '\0');
              cVar2 = BANK0_R6;
              DAT_EXTMEM_02a0 = bVar6;
              FUN_CODE_7a79(CONCAT11(BANK0_R6 + -0x38,bVar4));
              FUN_CODE_7a53(0x10);
              cVar1 = '\0';
              cVar5 = -0x38;
              DAT_EXTMEM_02a1 = bVar7;
              goto LAB_CODE_4bbd;
            }
            bVar6 = DAT_INTMEM_2f * '\x17' + DAT_INTMEM_35;
            cVar1 = '\x02';
            bVar4 = bVar6;
            do {
              bVar4 = bVar4 * '\x02';
              cVar1 = cVar1 + -1;
            } while (cVar1 != '\0');
            cVar1 = BANK0_R6;
            FUN_CODE_7a79(CONCAT11((BANK0_R6 - (((0x43 < bVar4) << 7) >> 7)) + 'g',bVar4 + 0xbc));
            DAT_EXTMEM_029f = bVar6;
            FUN_CODE_7a79(CONCAT11((cVar1 - (((0x43 < bVar4) << 7) >> 7)) + 'g',bVar4 + 0xbc));
            FUN_CODE_7a53(8);
            bVar7 = DAT_INTMEM_2f * '\x17' + DAT_INTMEM_35;
            cVar1 = '\x02';
            bVar4 = bVar7;
            do {
              bVar4 = bVar4 << 1;
              cVar1 = cVar1 + -1;
              DAT_EXTMEM_02a0 = bVar6;
            } while (cVar1 != '\0');
            goto LAB_CODE_483c;
          }
          DAT_EXTMEM_029f = 7;
        }
LAB_CODE_4dd1:
        FUN_CODE_6ec8();
        goto LAB_CODE_4dfb;
      }
      if ((DAT_INTMEM_2f == 4) && (DAT_INTMEM_35 == 2)) {
        bVar6 = 0x5e;
        cVar1 = '\x02';
        bVar4 = bVar6;
        do {
          bVar4 = bVar4 * '\x02';
          cVar1 = cVar1 + -1;
        } while (cVar1 != '\0');
        cVar1 = BANK0_R6;
        FUN_CODE_7a79(CONCAT11((BANK0_R6 - (((0x43 < bVar4) << 7) >> 7)) + 'g',bVar4 + 0xbc));
        DAT_EXTMEM_029f = bVar6;
        FUN_CODE_7a79(CONCAT11((cVar1 - (((0x43 < bVar4) << 7) >> 7)) + 'g',bVar4 + 0xbc));
        FUN_CODE_7a53(8);
        bVar7 = DAT_INTMEM_2f * '\x17' + DAT_INTMEM_35;
        cVar1 = '\x02';
        bVar4 = bVar7;
        do {
          bVar4 = bVar4 << 1;
          cVar1 = cVar1 + -1;
          DAT_EXTMEM_02a0 = bVar6;
        } while (cVar1 != '\0');
LAB_CODE_483c:
        cVar2 = BANK0_R6;
        FUN_CODE_7a79(CONCAT11((BANK0_R6 - (((0x43 < bVar4) << 7) >> 7)) + 'g',bVar4 + 0xbc));
        FUN_CODE_7a53(0x10);
        cVar1 = (0x43 < bVar4) << 7;
        bVar4 = bVar4 + 0xbc;
        cVar5 = 'g';
        DAT_EXTMEM_02a1 = bVar7;
LAB_CODE_4bbd:
        bVar6 = DAT_EXTMEM_02a1;
        FUN_CODE_7a79(CONCAT11(cVar5 + (cVar2 - (cVar1 >> 7)),bVar4));
        FUN_CODE_7a53(0x18);
        DAT_EXTMEM_02a2 = bVar6;
      }
      else {
        if ((DAT_INTMEM_2f == 3) && (DAT_INTMEM_35 == 0xd)) {
          bVar6 = 0x52;
          cVar1 = '\x02';
          bVar4 = bVar6;
          do {
            bVar4 = bVar4 * '\x02';
            cVar1 = cVar1 + -1;
          } while (cVar1 != '\0');
          cVar1 = BANK0_R6;
          FUN_CODE_7a79(CONCAT11((BANK0_R6 - (((0x43 < bVar4) << 7) >> 7)) + 'g',bVar4 + 0xbc));
          DAT_EXTMEM_029f = bVar6;
          FUN_CODE_7a79(CONCAT11((cVar1 - (((0x43 < bVar4) << 7) >> 7)) + 'g',bVar4 + 0xbc));
          FUN_CODE_7a53(8);
          bVar7 = DAT_INTMEM_2f * '\x17' + DAT_INTMEM_35;
          cVar1 = '\x02';
          bVar4 = bVar7;
          do {
            bVar4 = bVar4 * '\x02';
            cVar1 = cVar1 + -1;
          } while (cVar1 != '\0');
          cVar2 = BANK0_R6;
          DAT_EXTMEM_02a0 = bVar6;
          FUN_CODE_7a79(CONCAT11((BANK0_R6 - (((0x43 < bVar4) << 7) >> 7)) + 'g',bVar4 + 0xbc));
          FUN_CODE_7a53(0x10);
          cVar1 = (0x43 < bVar4) << 7;
          bVar4 = bVar4 + 0xbc;
          cVar5 = 'g';
          DAT_EXTMEM_02a1 = bVar7;
          goto LAB_CODE_4bbd;
        }
        if ((DAT_INTMEM_2f == 0) && (DAT_INTMEM_35 == 0x13)) {
          bVar6 = 0x13;
          cVar1 = '\x02';
          bVar4 = bVar6;
          do {
            bVar4 = bVar4 * '\x02';
            cVar1 = cVar1 + -1;
          } while (cVar1 != '\0');
          cVar1 = BANK0_R6;
          FUN_CODE_7a79(CONCAT11((BANK0_R6 - (((0x43 < bVar4) << 7) >> 7)) + 'g',bVar4 + 0xbc));
          DAT_EXTMEM_029f = bVar6;
          FUN_CODE_7a79(CONCAT11((cVar1 - (((0x43 < bVar4) << 7) >> 7)) + 'g',bVar4 + 0xbc));
          FUN_CODE_7a53(8);
          bVar7 = DAT_INTMEM_2f * '\x17' + DAT_INTMEM_35;
          cVar1 = '\x02';
          bVar4 = bVar7;
          do {
            bVar4 = bVar4 * '\x02';
            cVar1 = cVar1 + -1;
          } while (cVar1 != '\0');
          cVar2 = BANK0_R6;
          DAT_EXTMEM_02a0 = bVar6;
          FUN_CODE_7a79(CONCAT11((BANK0_R6 - (((0x43 < bVar4) << 7) >> 7)) + 'g',bVar4 + 0xbc));
          FUN_CODE_7a53(0x10);
          cVar1 = (0x43 < bVar4) << 7;
          bVar4 = bVar4 + 0xbc;
          cVar5 = 'g';
          DAT_EXTMEM_02a1 = bVar7;
          goto LAB_CODE_4bbd;
        }
        if ((DAT_INTMEM_2f == 0) && (DAT_INTMEM_35 == 0x14)) {
          bVar6 = 0x14;
          cVar1 = '\x02';
          bVar4 = bVar6;
          do {
            bVar4 = bVar4 * '\x02';
            cVar1 = cVar1 + -1;
          } while (cVar1 != '\0');
          cVar1 = BANK0_R6;
          FUN_CODE_7a79(CONCAT11((BANK0_R6 - (((0x43 < bVar4) << 7) >> 7)) + 'g',bVar4 + 0xbc));
          DAT_EXTMEM_029f = bVar6;
          FUN_CODE_7a79(CONCAT11((cVar1 - (((0x43 < bVar4) << 7) >> 7)) + 'g',bVar4 + 0xbc));
          FUN_CODE_7a53(8);
          bVar7 = DAT_INTMEM_2f * '\x17' + DAT_INTMEM_35;
          cVar1 = '\x02';
          bVar4 = bVar7;
          do {
            bVar4 = bVar4 * '\x02';
            cVar1 = cVar1 + -1;
          } while (cVar1 != '\0');
          cVar2 = BANK0_R6;
          DAT_EXTMEM_02a0 = bVar6;
          FUN_CODE_7a79(CONCAT11((BANK0_R6 - (((0x43 < bVar4) << 7) >> 7)) + 'g',bVar4 + 0xbc));
          FUN_CODE_7a53(0x10);
          cVar1 = (0x43 < bVar4) << 7;
          bVar4 = bVar4 + 0xbc;
          cVar5 = 'g';
          DAT_EXTMEM_02a1 = bVar7;
          goto LAB_CODE_4bbd;
        }
        if ((DAT_INTMEM_2f == 0) && (DAT_INTMEM_35 == 0x15)) {
          bVar6 = 0x15;
          cVar1 = '\x02';
          bVar4 = bVar6;
          do {
            bVar4 = bVar4 * '\x02';
            cVar1 = cVar1 + -1;
          } while (cVar1 != '\0');
          cVar1 = BANK0_R6;
          FUN_CODE_7a79(CONCAT11((BANK0_R6 - (((0x43 < bVar4) << 7) >> 7)) + 'g',bVar4 + 0xbc));
          DAT_EXTMEM_029f = bVar6;
          FUN_CODE_7a79(CONCAT11((cVar1 - (((0x43 < bVar4) << 7) >> 7)) + 'g',bVar4 + 0xbc));
          FUN_CODE_7a53(8);
          bVar7 = DAT_INTMEM_2f * '\x17' + DAT_INTMEM_35;
          cVar1 = '\x02';
          bVar4 = bVar7;
          do {
            bVar4 = bVar4 * '\x02';
            cVar1 = cVar1 + -1;
          } while (cVar1 != '\0');
          cVar2 = BANK0_R6;
          DAT_EXTMEM_02a0 = bVar6;
          FUN_CODE_7a79(CONCAT11((BANK0_R6 - (((0x43 < bVar4) << 7) >> 7)) + 'g',bVar4 + 0xbc));
          FUN_CODE_7a53(0x10);
          cVar1 = (0x43 < bVar4) << 7;
          bVar4 = bVar4 + 0xbc;
          cVar5 = 'g';
          DAT_EXTMEM_02a1 = bVar7;
          goto LAB_CODE_4bbd;
        }
        if ((DAT_INTMEM_2f == 0) && (DAT_INTMEM_35 == 0x16)) {
          bVar6 = 0x16;
          cVar1 = '\x02';
          bVar4 = bVar6;
          do {
            bVar4 = bVar4 * '\x02';
            cVar1 = cVar1 + -1;
          } while (cVar1 != '\0');
          cVar1 = BANK0_R6;
          FUN_CODE_7a79(CONCAT11((BANK0_R6 - (((0x43 < bVar4) << 7) >> 7)) + 'g',bVar4 + 0xbc));
          DAT_EXTMEM_029f = bVar6;
          FUN_CODE_7a79(CONCAT11((cVar1 - (((0x43 < bVar4) << 7) >> 7)) + 'g',bVar4 + 0xbc));
          FUN_CODE_7a53(8);
          bVar7 = DAT_INTMEM_2f * '\x17' + DAT_INTMEM_35;
          cVar1 = '\x02';
          bVar4 = bVar7;
          do {
            bVar4 = bVar4 * '\x02';
            cVar1 = cVar1 + -1;
          } while (cVar1 != '\0');
          cVar2 = BANK0_R6;
          DAT_EXTMEM_02a0 = bVar6;
          FUN_CODE_7a79(CONCAT11((BANK0_R6 - (((0x43 < bVar4) << 7) >> 7)) + 'g',bVar4 + 0xbc));
          FUN_CODE_7a53(0x10);
          cVar1 = (0x43 < bVar4) << 7;
          bVar4 = bVar4 + 0xbc;
          cVar5 = 'g';
          DAT_EXTMEM_02a1 = bVar7;
          goto LAB_CODE_4bbd;
        }
        if (DAT_EXTMEM_0332 == '\0') {
          bVar6 = DAT_INTMEM_2f * '\x17' + DAT_INTMEM_35;
          cVar1 = '\x02';
          bVar4 = bVar6;
          do {
            bVar4 = bVar4 * '\x02';
            cVar1 = cVar1 + -1;
          } while (cVar1 != '\0');
          cVar1 = BANK0_R6;
          FUN_CODE_7a79(CONCAT11((BANK0_R6 - (((0x43 < bVar4) << 7) >> 7)) + 'g',bVar4 + 0xbc));
          DAT_EXTMEM_029f = bVar6;
          FUN_CODE_7a79(CONCAT11((cVar1 - (((0x43 < bVar4) << 7) >> 7)) + 'g',bVar4 + 0xbc));
          FUN_CODE_7a53(8);
          bVar7 = DAT_INTMEM_2f * '\x17' + DAT_INTMEM_35;
          cVar1 = '\x02';
          bVar4 = bVar7;
          do {
            bVar4 = bVar4 * '\x02';
            cVar1 = cVar1 + -1;
          } while (cVar1 != '\0');
          cVar2 = BANK0_R6;
          DAT_EXTMEM_02a0 = bVar6;
          FUN_CODE_7a79(CONCAT11((BANK0_R6 - (((0x43 < bVar4) << 7) >> 7)) + 'g',bVar4 + 0xbc));
          FUN_CODE_7a53(0x10);
          cVar1 = (0x43 < bVar4) << 7;
          bVar4 = bVar4 + 0xbc;
          cVar5 = 'g';
          DAT_EXTMEM_02a1 = bVar7;
          goto LAB_CODE_4bbd;
        }
        if (DAT_EXTMEM_0332 != '\x01') goto LAB_CODE_4dfb;
        bVar6 = DAT_INTMEM_2f * '\x17' + DAT_INTMEM_35;
        cVar1 = '\x02';
        bVar4 = bVar6;
        do {
          bVar4 = bVar4 << 1;
          cVar1 = cVar1 + -1;
        } while (cVar1 != '\0');
        cVar1 = BANK0_R6;
        FUN_CODE_7a79(CONCAT11(BANK0_R6 + -0x38,bVar4));
        DAT_EXTMEM_029f = bVar6;
        FUN_CODE_7a79(CONCAT11(cVar1 + -0x38,bVar4));
        FUN_CODE_7a53(8);
        bVar7 = DAT_INTMEM_2f * '\x17' + DAT_INTMEM_35;
        cVar1 = '\x02';
        bVar4 = bVar7;
        do {
          bVar4 = bVar4 << 1;
          cVar1 = cVar1 + -1;
        } while (cVar1 != '\0');
        cVar1 = BANK0_R6;
        DAT_EXTMEM_02a0 = bVar6;
        FUN_CODE_7a79(CONCAT11(BANK0_R6 + -0x38,bVar4));
        FUN_CODE_7a53(0x10);
        DAT_EXTMEM_02a1 = bVar7;
        FUN_CODE_7a79(CONCAT11(cVar1 + -0x38,bVar4));
        FUN_CODE_7a53(0x18);
        DAT_EXTMEM_02a2 = bVar7;
        if ((DAT_EXTMEM_029f ^ 0xcd) == 0) {
          if (_0_0 == '\x01') {
            BANK2_R3 = DAT_INTMEM_2f;
            BANK2_R2 = DAT_INTMEM_35;
            bVar6 = (byte)((ushort)DAT_INTMEM_2f * 0x17);
            bVar4 = bVar6 + DAT_INTMEM_35;
            cVar1 = (char)((ushort)DAT_INTMEM_2f * 0x17 >> 8) -
                    ((CARRY1(bVar6,DAT_INTMEM_35) << 7) >> 7);
            BANK1_R7 = DAT_EXTMEM_029f ^ 0xcd;
            FUN_CODE_7a30(0xf2);
            FUN_CODE_7a9b(cVar1 - (((0xfb < bVar4) << 7) >> 7),bVar4 + 4);
            BANK2_R0 = DAT_INTMEM_50;
            if ((DAT_INTMEM_50 != 0) && (DAT_INTMEM_50 != 0xff)) {
              _2_1 = 1;
              FUN_CODE_7e37(0,10);
              bVar4 = (byte)((ushort)BANK2_R3 * 0x17);
              FUN_CODE_7a30(0xf2,(char)((ushort)BANK2_R3 * 0x17 >> 8) -
                                 ((CARRY1(bVar4,BANK2_R2) << 7) >> 7),bVar4 + BANK2_R2);
              FUN_CODE_7a9b();
              DAT_EXTMEM_029c = DAT_INTMEM_50;
              FUN_CODE_7e37(0,10);
              bVar6 = (byte)((ushort)BANK2_R3 * 0x17);
              bVar4 = bVar6 + BANK2_R2;
              cVar1 = (char)((ushort)BANK2_R3 * 0x17 >> 8) - ((CARRY1(bVar6,BANK2_R2) << 7) >> 7);
              FUN_CODE_7a30(0xf2);
              FUN_CODE_7a9b(cVar1 - (((0xfe < bVar4) << 7) >> 7),bVar4 + 1);
              DAT_EXTMEM_029d = DAT_INTMEM_50;
              FUN_CODE_7e37(0,10);
              bVar6 = (byte)((ushort)BANK2_R3 * 0x17);
              bVar4 = bVar6 + BANK2_R2;
              cVar1 = (char)((ushort)BANK2_R3 * 0x17 >> 8) - ((CARRY1(bVar6,BANK2_R2) << 7) >> 7);
              FUN_CODE_7a30(0xf2);
              FUN_CODE_7a9b(cVar1 - (((0xfd < bVar4) << 7) >> 7),bVar4 + 2);
              DAT_EXTMEM_029e = DAT_INTMEM_50;
              FUN_CODE_7e37(0,10);
              bVar6 = (byte)((ushort)BANK2_R3 * 0x17);
              bVar4 = bVar6 + BANK2_R2;
              cVar1 = (char)((ushort)BANK2_R3 * 0x17 >> 8) - ((CARRY1(bVar6,BANK2_R2) << 7) >> 7);
              FUN_CODE_7a30(0xf2);
              FUN_CODE_7a9b(cVar1 - (((0xfc < bVar4) << 7) >> 7),bVar4 + 3);
              DAT_EXTMEM_02a3 = DAT_INTMEM_50;
              BANK1_R1 = DAT_EXTMEM_029d;
              BANK1_R0 = DAT_EXTMEM_029c;
              if ((DAT_EXTMEM_029d == 0xff) && (DAT_EXTMEM_029c == 0xff)) {
                _2_3 = 1;
              }
              else {
                _2_3 = 0;
              }
              if (DAT_EXTMEM_029d == 0 && DAT_EXTMEM_029c == 0) {
                BANK1_R0 = 0xff;
                BANK1_R1 = 0xff;
              }
              _2_6 = DAT_EXTMEM_029d == 0 && DAT_EXTMEM_029c == 0;
              BANK1_R3 = DAT_INTMEM_50;
              BANK1_R2 = DAT_EXTMEM_029e & 0x7f;
              bVar4 = 0;
              do {
                *(undefined1 *)
                 CONCAT11(BANK3_R2 - ((CARRY1(BANK3_R3,bVar4) << 7) >> 7),BANK3_R3 + bVar4) = 0;
                bVar4 = bVar4 + 1;
              } while (bVar4 != 0x10);
              return 0;
            }
          }
          else if (_2_3 != '\0') {
            _2_3 = '\0';
            BANK1_R0 = 0;
            BANK1_R1 = 0;
            _2_1 = 0;
            DAT_EXTMEM_029f = BANK2_R0;
            _0_2 = 1;
            _0_0 = false;
            goto LAB_CODE_4dd1;
          }
          goto LAB_CODE_4dfb;
        }
        if (_2_6 != '\0') {
          _2_6 = '\0';
          BANK1_R0 = 0;
          BANK1_R1 = 0;
          _2_1 = 0;
          DAT_INTMEM_34 = '\0';
          do {
            *(undefined1 *)CONCAT11(2,DAT_INTMEM_34) = 0;
            DAT_INTMEM_34 = DAT_INTMEM_34 + '\x01';
          } while (DAT_INTMEM_34 != '\x0f');
        }
      }
      FUN_CODE_7465();
    }
LAB_CODE_4dfb:
    DAT_INTMEM_35 = DAT_INTMEM_35 + 1;
  } while( true );
}


// ===== FUN_CODE_4e01 @ CODE:4e01 =====

/* WARNING: Heritage AFTER dead removal. Example location: e0x1100 : 0x4e3c */
/* WARNING: Restarted to delay deadcode elimination for space: EXTMEM */

byte FUN_CODE_4e01(void)

{
  char cVar1;
  undefined1 uVar2;
  undefined1 uVar3;
  byte bVar4;
  byte bVar5;
  
  bVar4 = DAT_EXTMEM_1103;
  if (DAT_EXTMEM_033b == 4) {
    DAT_EXTMEM_033b = 0;
    BANK3_R2 = '\x11';
    BANK3_R3 = 0;
    BANK3_R0 = DAT_EXTMEM_1100;
    bVar4 = DAT_EXTMEM_1100;
    goto LAB_CODE_5836;
  }
  if (DAT_EXTMEM_033b == 6) {
    bVar4 = 0;
    DAT_EXTMEM_033b = 0;
    goto LAB_CODE_5836;
  }
  bVar5 = DAT_EXTMEM_033b ^ 9;
  if (bVar5 == 0) {
    BANK3_R2 = '\x11';
    if ((DAT_EXTMEM_1100 ^ 5) != 0) {
      BANK3_R2 = '\x11';
      BANK3_R3 = 0;
      DAT_EXTMEM_033b = 0;
      return DAT_EXTMEM_1100 ^ 5;
    }
    if (DAT_EXTMEM_1101 + 0x8b != 0) {
      BANK3_R2 = '\x11';
      BANK3_R3 = 0;
      DAT_EXTMEM_033b = 0;
      return DAT_EXTMEM_1101 + 0x8b;
    }
    BANK3_R3 = bVar5;
    DAT_EXTMEM_033b = bVar5;
    bVar4 = FUN_CODE_8266();
    return bVar4;
  }
  bVar5 = DAT_EXTMEM_033b ^ 10;
  if (bVar5 != 0) {
    bVar5 = DAT_EXTMEM_033b ^ 0xb;
    if (bVar5 == 0) {
      BANK3_R2 = '\x11';
      DAT_EXTMEM_032d = DAT_EXTMEM_1101;
      bVar4 = DAT_EXTMEM_031e ^ 1;
      BANK3_R3 = bVar5;
      DAT_EXTMEM_033b = bVar5;
      if (bVar4 == 0) {
        if ((DAT_EXTMEM_1101 < 0xb) << 7 < '\0') {
          FUN_CODE_7eca(DAT_EXTMEM_1102,DAT_EXTMEM_1101 * '\x18' + -0x15,200);
          FUN_CODE_7eca(*(undefined1 *)(CONCAT11(BANK3_R2,BANK3_R3) + 3),
                        DAT_EXTMEM_032d * '\x18' + -0x11,200);
          FUN_CODE_7eca(*(undefined1 *)
                         CONCAT11(BANK3_R2 - (((0xfb < BANK3_R3) << 7) >> 7),BANK3_R3 + 4),
                        DAT_EXTMEM_032d * '\x18' + -0xd,200);
          FUN_CODE_7eca(*(undefined1 *)
                         CONCAT11(BANK3_R2 - (((0xfa < BANK3_R3) << 7) >> 7),BANK3_R3 + 5),
                        DAT_EXTMEM_032d * '\x18' + -9,200);
          FUN_CODE_7eca(*(undefined1 *)
                         CONCAT11(BANK3_R2 - (((0xf9 < BANK3_R3) << 7) >> 7),BANK3_R3 + 6),
                        DAT_EXTMEM_032d * '\x18' + -5,200);
          cVar1 = DAT_EXTMEM_032d * '\x18' + -1;
          uVar2 = *(undefined1 *)CONCAT11(BANK3_R2 - (((0xf8 < BANK3_R3) << 7) >> 7),BANK3_R3 + 7);
          uVar3 = 200;
        }
        else if (DAT_EXTMEM_1101 == 0xb) {
          FUN_CODE_7eca(DAT_EXTMEM_1102,0xf3,200);
          FUN_CODE_7eca(*(undefined1 *)(CONCAT11(BANK3_R2,BANK3_R3) + 3),0xf7,200);
          FUN_CODE_7eca(*(undefined1 *)
                         CONCAT11(BANK3_R2 - (((0xfb < BANK3_R3) << 7) >> 7),BANK3_R3 + 4),0xfb,200)
          ;
          FUN_CODE_7eca(*(undefined1 *)
                         CONCAT11(BANK3_R2 - (((0xfa < BANK3_R3) << 7) >> 7),BANK3_R3 + 5),0xff,200)
          ;
          FUN_CODE_7eca(*(undefined1 *)
                         CONCAT11(BANK3_R2 - (((0xf9 < BANK3_R3) << 7) >> 7),BANK3_R3 + 6),3,0xc9);
          uVar2 = *(undefined1 *)CONCAT11(BANK3_R2 - (((0xf8 < BANK3_R3) << 7) >> 7),BANK3_R3 + 7);
          cVar1 = '\a';
          uVar3 = 0xc9;
        }
        else if ((DAT_EXTMEM_1101 < 0x16) << 7 < '\0') {
          FUN_CODE_7eca(DAT_EXTMEM_1102,DAT_EXTMEM_1101 * '\x18' + -0x15,0xc9);
          FUN_CODE_7eca(*(undefined1 *)(CONCAT11(BANK3_R2,BANK3_R3) + 3),
                        DAT_EXTMEM_032d * '\x18' + -0x11,0xc9);
          FUN_CODE_7eca(*(undefined1 *)
                         CONCAT11(BANK3_R2 - (((0xfb < BANK3_R3) << 7) >> 7),BANK3_R3 + 4),
                        DAT_EXTMEM_032d * '\x18' + -0xd,0xc9);
          FUN_CODE_7eca(*(undefined1 *)
                         CONCAT11(BANK3_R2 - (((0xfa < BANK3_R3) << 7) >> 7),BANK3_R3 + 5),
                        DAT_EXTMEM_032d * '\x18' + -9,0xc9);
          FUN_CODE_7eca(*(undefined1 *)
                         CONCAT11(BANK3_R2 - (((0xf9 < BANK3_R3) << 7) >> 7),BANK3_R3 + 6),
                        DAT_EXTMEM_032d * '\x18' + -5,0xc9);
          cVar1 = DAT_EXTMEM_032d * '\x18' + -1;
          uVar2 = *(undefined1 *)CONCAT11(BANK3_R2 - (((0xf8 < BANK3_R3) << 7) >> 7),BANK3_R3 + 7);
          uVar3 = 0xc9;
        }
        else if (DAT_EXTMEM_1101 == 0x16) {
          FUN_CODE_7eca(DAT_EXTMEM_1102,0xfb,0xc9);
          FUN_CODE_7eca(*(undefined1 *)(CONCAT11(BANK3_R2,BANK3_R3) + 3),0xff,0xc9);
          FUN_CODE_7eca(*(undefined1 *)
                         CONCAT11(BANK3_R2 - (((0xfb < BANK3_R3) << 7) >> 7),BANK3_R3 + 4),3,0xca);
          FUN_CODE_7eca(*(undefined1 *)
                         CONCAT11(BANK3_R2 - (((0xfa < BANK3_R3) << 7) >> 7),BANK3_R3 + 5),7,0xca);
          FUN_CODE_7eca(*(undefined1 *)
                         CONCAT11(BANK3_R2 - (((0xf9 < BANK3_R3) << 7) >> 7),BANK3_R3 + 6),0xb,0xca)
          ;
          uVar2 = *(undefined1 *)CONCAT11(BANK3_R2 - (((0xf8 < BANK3_R3) << 7) >> 7),BANK3_R3 + 7);
          cVar1 = '\x0f';
          uVar3 = 0xca;
        }
        else {
          bVar4 = DAT_EXTMEM_1101 ^ 0x17;
          if (bVar4 != 0) goto LAB_CODE_5836;
          FUN_CODE_7eca(DAT_EXTMEM_1102,0x13,0xca);
          FUN_CODE_7eca(*(undefined1 *)(CONCAT11(BANK3_R2,BANK3_R3) + 3),0x17,0xca);
          FUN_CODE_7eca(*(undefined1 *)
                         CONCAT11(BANK3_R2 - (((0xfb < BANK3_R3) << 7) >> 7),BANK3_R3 + 4),0x1b,0xca
                       );
          FUN_CODE_7eca(*(undefined1 *)
                         CONCAT11(BANK3_R2 - (((0xfa < BANK3_R3) << 7) >> 7),BANK3_R3 + 5),0x1f,0xca
                       );
          FUN_CODE_7eca(*(undefined1 *)
                         CONCAT11(BANK3_R2 - (((0xf9 < BANK3_R3) << 7) >> 7),BANK3_R3 + 6),0x23,0xca
                       );
          uVar2 = *(undefined1 *)CONCAT11(BANK3_R2 - (((0xf8 < BANK3_R3) << 7) >> 7),BANK3_R3 + 7);
          cVar1 = '\'';
          uVar3 = 0xca;
        }
        bVar4 = FUN_CODE_7eca(uVar2,cVar1,uVar3);
      }
    }
    else {
      DAT_EXTMEM_033b = DAT_EXTMEM_033b ^ 0xc;
      if (DAT_EXTMEM_033b == 0) {
        BANK3_R2 = '\x11';
        DAT_EXTMEM_032d = DAT_EXTMEM_1101;
        BANK2_R4 = 0;
        BANK2_R5 = 0;
        bVar4 = DAT_EXTMEM_0331 ^ 1;
        BANK3_R3 = DAT_EXTMEM_033b;
        if (bVar4 == 0) {
          FUN_CODE_7a30(0,0xf2,0,DAT_EXTMEM_033c);
          bVar4 = (byte)((ushort)DAT_EXTMEM_032d * 6);
          bVar5 = bVar4 + BANK0_R7;
          FUN_CODE_80c3(*(undefined1 *)(CONCAT11(BANK3_R2,BANK3_R3) + 2),
                        BANK0_R6 +
                        ((char)((ushort)DAT_EXTMEM_032d * 6 >> 8) -
                        ((CARRY1(bVar4,BANK0_R7) << 7) >> 7)) + (-1 - (((0xf7 < bVar5) << 7) >> 7)),
                        bVar5 + 8);
          FUN_CODE_7e37(7,0xd0);
          FUN_CODE_7a30(0,0xf2,0,DAT_EXTMEM_033c);
          bVar4 = (byte)((ushort)DAT_EXTMEM_032d * 6);
          bVar5 = bVar4 + BANK0_R7;
          FUN_CODE_80c3(*(undefined1 *)(CONCAT11(BANK3_R2,BANK3_R3) + 3),
                        BANK0_R6 +
                        ((char)((ushort)DAT_EXTMEM_032d * 6 >> 8) -
                        ((CARRY1(bVar4,BANK0_R7) << 7) >> 7)) + (-1 - (((0xf6 < bVar5) << 7) >> 7)),
                        bVar5 + 9);
          FUN_CODE_7e37(7,0xd0);
          FUN_CODE_7a30(0,0xf2,0,DAT_EXTMEM_033c);
          bVar4 = (byte)((ushort)DAT_EXTMEM_032d * 6);
          bVar5 = bVar4 + BANK0_R7;
          FUN_CODE_80c3(*(undefined1 *)
                         CONCAT11(BANK3_R2 - (((0xfb < BANK3_R3) << 7) >> 7),BANK3_R3 + 4),
                        BANK0_R6 +
                        ((char)((ushort)DAT_EXTMEM_032d * 6 >> 8) -
                        ((CARRY1(bVar4,BANK0_R7) << 7) >> 7)) + (-1 - (((0xf5 < bVar5) << 7) >> 7)),
                        bVar5 + 10);
          FUN_CODE_7e37(7,0xd0);
          FUN_CODE_7a30(0,0xf2,0,DAT_EXTMEM_033c);
          bVar4 = (byte)((ushort)DAT_EXTMEM_032d * 6);
          bVar5 = bVar4 + BANK0_R7;
          FUN_CODE_80c3(*(undefined1 *)
                         CONCAT11(BANK3_R2 - (((0xfa < BANK3_R3) << 7) >> 7),BANK3_R3 + 5),
                        BANK0_R6 +
                        ((char)((ushort)DAT_EXTMEM_032d * 6 >> 8) -
                        ((CARRY1(bVar4,BANK0_R7) << 7) >> 7)) + (-1 - (((0xf4 < bVar5) << 7) >> 7)),
                        bVar5 + 0xb);
          FUN_CODE_7e37(7,0xd0);
          FUN_CODE_7a30(0,0xf2,0,DAT_EXTMEM_033c);
          bVar4 = (byte)((ushort)DAT_EXTMEM_032d * 6);
          bVar5 = bVar4 + BANK0_R7;
          FUN_CODE_80c3(*(undefined1 *)
                         CONCAT11(BANK3_R2 - (((0xf9 < BANK3_R3) << 7) >> 7),BANK3_R3 + 6),
                        BANK0_R6 +
                        ((char)((ushort)DAT_EXTMEM_032d * 6 >> 8) -
                        ((CARRY1(bVar4,BANK0_R7) << 7) >> 7)) + (-1 - (((0xf3 < bVar5) << 7) >> 7)),
                        bVar5 + 0xc);
          FUN_CODE_7e37(7,0xd0);
          FUN_CODE_7a30(0,0xf2,0,DAT_EXTMEM_033c);
          bVar4 = (byte)((ushort)DAT_EXTMEM_032d * 6);
          bVar5 = bVar4 + BANK0_R7;
          FUN_CODE_80c3(*(undefined1 *)
                         CONCAT11(BANK3_R2 - (((0xf8 < BANK3_R3) << 7) >> 7),BANK3_R3 + 7),
                        BANK0_R6 +
                        ((char)((ushort)DAT_EXTMEM_032d * 6 >> 8) -
                        ((CARRY1(bVar4,BANK0_R7) << 7) >> 7)) + (-1 - (((0xf2 < bVar5) << 7) >> 7)),
                        bVar5 + 0xd);
          bVar4 = FUN_CODE_7e37(7,0xd0);
        }
      }
      else {
        bVar4 = 0;
        DAT_EXTMEM_033b = 0;
      }
    }
    goto LAB_CODE_5836;
  }
  BANK3_R2 = '\x11';
  BANK3_R3 = bVar5;
  DAT_EXTMEM_033b = bVar5;
  if (DAT_EXTMEM_1101 == 0x80) {
    bVar4 = 1;
    DAT_EXTMEM_031f = 1;
    goto LAB_CODE_5836;
  }
  if (DAT_EXTMEM_1101 == 3) {
    DAT_EXTMEM_031f = 3;
    DAT_EXTMEM_0332 = DAT_EXTMEM_1102;
    DAT_EXTMEM_032d = DAT_EXTMEM_1103;
    bVar4 = DAT_EXTMEM_1102 ^ 1;
    if ((bVar4 == 0) && (bVar4 = DAT_EXTMEM_1103 ^ 1, bVar4 == 0)) {
      FUN_CODE_7f93(200);
      FUN_CODE_7f93(0xca);
      DAT_INTMEM_47 = 0;
      DAT_INTMEM_48 = 0;
      do {
        FUN_CODE_7eca(*(undefined1 *)CONCAT11(DAT_INTMEM_47 - 0x24,DAT_INTMEM_48),DAT_INTMEM_48,200)
        ;
        DAT_INTMEM_48 = DAT_INTMEM_48 + 1;
        if (DAT_INTMEM_48 == 0) {
          DAT_INTMEM_47 = DAT_INTMEM_47 + 1;
        }
      } while ((DAT_INTMEM_47 == 0) << 7 < '\0');
      DAT_INTMEM_47 = 0;
      DAT_INTMEM_48 = 0;
      do {
        FUN_CODE_7eca(*(undefined1 *)CONCAT11(DAT_INTMEM_47 - 0x23,DAT_INTMEM_48),DAT_INTMEM_48,0xc9
                     );
        DAT_INTMEM_48 = DAT_INTMEM_48 + 1;
        if (DAT_INTMEM_48 == 0) {
          DAT_INTMEM_47 = DAT_INTMEM_47 + 1;
        }
      } while ((DAT_INTMEM_47 == 0) << 7 < '\0');
      DAT_INTMEM_47 = 0;
      DAT_INTMEM_48 = 0;
      do {
        FUN_CODE_7eca(*(undefined1 *)CONCAT11(DAT_INTMEM_47 - 0x22,DAT_INTMEM_48),DAT_INTMEM_48,0xca
                     );
        DAT_INTMEM_48 = DAT_INTMEM_48 + 1;
        if (DAT_INTMEM_48 == 0) {
          DAT_INTMEM_47 = DAT_INTMEM_47 + 1;
        }
        cVar1 = ((DAT_INTMEM_48 < 0x28) << 7) >> 7;
        bVar4 = DAT_INTMEM_47 + cVar1;
      } while ((DAT_INTMEM_47 < (byte)-cVar1) << 7 < '\0');
    }
    goto LAB_CODE_5836;
  }
  if (DAT_EXTMEM_1101 == 4) {
    DAT_EXTMEM_031f = 4;
    DAT_EXTMEM_031e = DAT_EXTMEM_1102;
    bVar4 = DAT_EXTMEM_1102 ^ 1;
    if (bVar4 == 0) {
      FUN_CODE_7f93(200);
      bVar4 = FUN_CODE_7f93(0xca);
    }
    goto LAB_CODE_5836;
  }
  if (DAT_EXTMEM_1101 == 5) {
    DAT_EXTMEM_031f = 5;
    DAT_EXTMEM_031e = DAT_EXTMEM_1102;
    DAT_EXTMEM_033c = DAT_EXTMEM_1103;
    DAT_EXTMEM_0331 = bEXTMEM1104;
    bVar4 = bEXTMEM1104 ^ 1;
    if (bVar4 == 0) {
      _4_0 = 1;
      bVar5 = IEN0;
      IEN0 = bVar5 & 0xfe;
      BANK2_R4 = bVar4;
      BANK2_R5 = bVar4;
      bVar4 = FUN_CODE_79d2();
    }
    goto LAB_CODE_5836;
  }
  DAT_EXTMEM_031f = bVar5;
  if (DAT_EXTMEM_1101 == 10) {
    DAT_INTMEM_76 = DAT_EXTMEM_1103;
    bVar5 = 0;
    do {
      *(undefined1 *)(ushort)bVar5 = 0xff;
      *(undefined1 *)CONCAT11(-(((0x6a < bVar5) << 7) >> 7),bVar5 + 0x95) = 0xff;
      *(undefined1 *)CONCAT11('\x01' - (((0xd5 < bVar5) << 7) >> 7),bVar5 + 0x2a) = 0xff;
      bVar5 = bVar5 + 1;
    } while (bVar5 != 0x8a);
    if (bVar4 == 0) {
LAB_CODE_5166:
      bVar4 = 0;
      BANK3_R4 = bVar4;
      DAT_INTMEM_5e = bVar4;
    }
    else {
      if (bVar4 == 1) {
        DAT_INTMEM_67 = 0x1c;
        DAT_INTMEM_66 = 0x38;
        DAT_INTMEM_65 = 0x54;
        DAT_INTMEM_64 = 0x70;
        DAT_INTMEM_63 = 0x8c;
        DAT_INTMEM_62 = 0xa8;
        DAT_INTMEM_61 = 0xc4;
        DAT_INTMEM_60 = 0xe0;
        DAT_INTMEM_5f = 0xff;
      }
      else {
        if (bVar4 != 3) {
          if (bVar4 == 7) {
            bVar4 = 0;
            DAT_INTMEM_5e = 0;
            _4_5 = 0;
            goto LAB_CODE_5836;
          }
          if (bVar4 == 6) {
            DAT_INTMEM_74 = 0xb;
            DAT_INTMEM_73 = 0x16;
            DAT_INTMEM_72 = 0x21;
            DAT_INTMEM_71 = 0x2c;
            DAT_INTMEM_70 = 0x37;
            DAT_INTMEM_6f = 0x42;
            DAT_INTMEM_6e = 0x4d;
            DAT_INTMEM_6d = 0x58;
            DAT_INTMEM_6c = 99;
            DAT_INTMEM_6b = 0x6e;
            DAT_INTMEM_6a = 0x79;
            DAT_INTMEM_69 = 0x84;
            DAT_INTMEM_68 = 0x8f;
            DAT_INTMEM_67 = 0x9a;
            DAT_INTMEM_66 = 0xa5;
            DAT_INTMEM_65 = 0xb0;
            DAT_INTMEM_64 = 0xbb;
            DAT_INTMEM_63 = 0xc6;
            DAT_INTMEM_62 = 0xd1;
            DAT_INTMEM_61 = 0xdc;
            DAT_INTMEM_60 = 0xe7;
            DAT_INTMEM_5f = 0xf2;
            bVar4 = 0;
            BANK1_R4 = 0;
            BANK1_R5 = 0;
            BANK1_R6 = 0;
            BANK3_R4 = 0;
            DAT_INTMEM_5e = 0;
            DAT_INTMEM_75 = 0;
            goto LAB_CODE_5836;
          }
          if (bVar4 == 8) {
            bVar4 = 0;
            do {
              if (BANK3_R4 == 0) {
                DAT_INTMEM_49 = 0xff;
LAB_CODE_50fd:
                DAT_INTMEM_4b = 0;
                DAT_INTMEM_4a = 0xff;
              }
              else {
                if (BANK3_R4 == 1) {
                  DAT_INTMEM_49 = 0xff;
LAB_CODE_510c:
                  DAT_INTMEM_4a = 0;
                }
                else {
                  if (BANK3_R4 != 2) {
                    if (BANK3_R4 == 3) {
                      DAT_INTMEM_49 = 0xff;
                    }
                    else {
                      if (BANK3_R4 == 4) {
                        DAT_INTMEM_49 = 0;
                        goto LAB_CODE_50fd;
                      }
                      if (BANK3_R4 == 5) {
                        DAT_INTMEM_49 = 0;
                        goto LAB_CODE_510c;
                      }
                      if (BANK3_R4 != 6) goto LAB_CODE_511f;
                      DAT_INTMEM_49 = 0;
                    }
                    DAT_INTMEM_4a = 0;
                    DAT_INTMEM_4b = 0;
                    goto LAB_CODE_511f;
                  }
                  DAT_INTMEM_49 = 0;
                  DAT_INTMEM_4a = 0xff;
                }
                DAT_INTMEM_4b = 0xff;
              }
LAB_CODE_511f:
              *(undefined1 *)(ushort)bVar4 = DAT_INTMEM_49;
              *(undefined1 *)CONCAT11(-(((0x6a < bVar4) << 7) >> 7),bVar4 + 0x95) = DAT_INTMEM_4a;
              *(undefined1 *)CONCAT11('\x01' - (((0xd5 < bVar4) << 7) >> 7),bVar4 + 0x2a) =
                   DAT_INTMEM_4b;
              BANK3_R4 = BANK3_R4 + 1;
              if (6 < BANK3_R4) {
                BANK3_R4 = 0;
              }
              bVar4 = bVar4 + 1;
            } while (bVar4 != 0x8a);
            bVar4 = 0;
            goto LAB_CODE_5836;
          }
          if (bVar4 != 9) {
            bVar4 = bVar4 ^ 10;
            if (bVar4 == 0) {
              FUN_CODE_79d2();
              DAT_INTMEM_53 = 0;
              FUN_CODE_7f93(0xac);
              FUN_CODE_7f93(0xae);
              _3_2 = 1;
              bVar4 = 0;
              IEN1 = 0;
            }
            goto LAB_CODE_5836;
          }
          goto LAB_CODE_5166;
        }
        DAT_INTMEM_67 = 0;
        DAT_INTMEM_66 = 0;
        DAT_INTMEM_65 = 0;
        DAT_INTMEM_64 = 0;
        DAT_INTMEM_63 = 0;
        DAT_INTMEM_62 = 0;
        DAT_INTMEM_61 = 0;
        DAT_INTMEM_60 = 0;
        DAT_INTMEM_5f = 0;
      }
      DAT_INTMEM_68 = 0;
      bVar4 = 0;
      BANK3_R5 = 0;
      BANK3_R4 = 0;
    }
    goto LAB_CODE_5836;
  }
  if (DAT_EXTMEM_1101 == 0xb) {
    FUN_CODE_79d2();
    DAT_INTMEM_53 = 0;
    FUN_CODE_7f93(0xb0);
    IEN1 = 0;
    FUN_CODE_7eca(~*(byte *)CONCAT11(BANK3_R2 - (((0xfb < BANK3_R3) << 7) >> 7),BANK3_R3 + 4),0,0xb0
                 );
    FUN_CODE_7eca(~*(byte *)CONCAT11(BANK3_R2 - (((0xfa < BANK3_R3) << 7) >> 7),BANK3_R3 + 5),1,0xb0
                 );
    bVar4 = FUN_CODE_7eca(~*(byte *)CONCAT11(BANK3_R2 - (((0xf9 < BANK3_R3) << 7) >> 7),BANK3_R3 + 6
                                            ),2,0xb0);
    goto LAB_CODE_5836;
  }
  if (DAT_EXTMEM_1101 != 0xc) {
    bVar4 = DAT_EXTMEM_1101;
    if (DAT_EXTMEM_1101 == 0xf) {
      _4_1 = 1;
    }
    goto LAB_CODE_5836;
  }
  FUN_CODE_79d2();
  DAT_INTMEM_53 = 0;
  IEN1 = 0;
  DAT_EXTMEM_032d = *(byte *)(CONCAT11(BANK3_R2,BANK3_R3) + 3);
  if (DAT_EXTMEM_032d < 0x56) {
    FUN_CODE_7eca(~*(byte *)CONCAT11(BANK3_R2 - (((0xfb < BANK3_R3) << 7) >> 7),BANK3_R3 + 4),
                  DAT_EXTMEM_032d * '\x03' + -1,0xac);
    FUN_CODE_7eca(~*(byte *)CONCAT11(BANK3_R2 - (((0xfa < BANK3_R3) << 7) >> 7),BANK3_R3 + 5),
                  DAT_EXTMEM_032d * '\x03' + -2,0xac);
    cVar1 = (DAT_EXTMEM_032d - 1) * '\x03';
    bVar4 = *(byte *)CONCAT11(BANK3_R2 - (((0xf9 < BANK3_R3) << 7) >> 7),BANK3_R3 + 6);
LAB_CODE_52ab:
    uVar2 = 0xac;
LAB_CODE_530c:
    FUN_CODE_7eca(~bVar4,cVar1,uVar2);
  }
  else {
    if (DAT_EXTMEM_032d == 0x56) {
      FUN_CODE_7eca(~*(byte *)CONCAT11(BANK3_R2 - (((0xfb < BANK3_R3) << 7) >> 7),BANK3_R3 + 4),1,
                    0xad);
      FUN_CODE_7eca(~*(byte *)CONCAT11(BANK3_R2 - (((0xfa < BANK3_R3) << 7) >> 7),BANK3_R3 + 5),0,
                    0xad);
      bVar4 = *(byte *)CONCAT11(BANK3_R2 - (((0xf9 < BANK3_R3) << 7) >> 7),BANK3_R3 + 6);
      cVar1 = -1;
      goto LAB_CODE_52ab;
    }
    if (DAT_EXTMEM_032d < 0x8b) {
      FUN_CODE_7eca(~*(byte *)CONCAT11(BANK3_R2 - (((0xfb < BANK3_R3) << 7) >> 7),BANK3_R3 + 4),
                    DAT_EXTMEM_032d * '\x03' + -1,0xad);
      FUN_CODE_7eca(~*(byte *)CONCAT11(BANK3_R2 - (((0xfa < BANK3_R3) << 7) >> 7),BANK3_R3 + 5),
                    (DAT_EXTMEM_032d + 0xaa) * '\x03',0xad);
      cVar1 = DAT_EXTMEM_032d * '\x03' + -3;
      bVar4 = *(byte *)CONCAT11(BANK3_R2 - (((0xf9 < BANK3_R3) << 7) >> 7),BANK3_R3 + 6);
      uVar2 = 0xad;
      goto LAB_CODE_530c;
    }
  }
  bVar4 = DAT_EXTMEM_032d ^ 0x8a;
  if (bVar4 == 0) {
    FUN_CODE_7eca(0xff,0x39,0xac);
    FUN_CODE_7eca(0xff,0x3a,0xac);
    FUN_CODE_7eca(0xff,0x3b,0xac);
    FUN_CODE_7eca(0xff,0x3c,0xac);
    FUN_CODE_7eca(0xff,0x3d,0xac);
    FUN_CODE_7eca(0xff,0x3e,0xac);
    FUN_CODE_7eca(0xff,0x3f,0xac);
    FUN_CODE_7eca(0xff,0x40,0xac);
    FUN_CODE_7eca(0xff,0x41,0xac);
    FUN_CODE_7eca(0xff,0x42,0xac);
    FUN_CODE_7eca(0xff,0x43,0xac);
    bVar4 = FUN_CODE_7eca(0xff,0x44,0xac);
    _3_2 = 0;
  }
LAB_CODE_5836:
  bVar5 = DAT_SFR_9b;
  DAT_SFR_9b = bVar5 & 0xf0;
  bVar5 = HADDR;
  HADDR = bVar5 | 4;
  return bVar4;
}


// ===== FUN_CODE_583d @ CODE:583d =====

void FUN_CODE_583d(void)

{
  char cVar1;
  char cVar2;
  byte bVar3;
  byte bVar4;
  
  IEN1 = 0;
  EA = 0;
  RD = 1;
  FUN_CODE_8106(0);
  FUN_CODE_8271();
  FUN_CODE_7bf7();
  P0_4 = 1;
  FUN_CODE_001e();
  _4_7 = 1;
  P0_3 = 1;
  _3_0 = 0;
  _2_4 = 0;
  _5_0 = 0;
  DAT_INTMEM_5a = 0;
  EA = 1;
  do {
    IEN1 = 0;
    BANK3_R6 = BANK3_R6 + 1;
    if (0x89 < BANK3_R6) {
      BANK3_R6 = 0;
    }
    cVar1 = DAT_INTMEM_5c + '\x01';
    cVar2 = DAT_INTMEM_5c + '\x02';
    DAT_INTMEM_5c = cVar1;
    if (cVar1 == -1) {
      cVar2 = '\0';
      DAT_INTMEM_5c = '\0';
    }
    if (_3_5 != '\0') {
      FUN_CODE_7290(cVar2);
      cVar2 = FUN_CODE_75e2();
    }
    if (_3_3 == '\x01') {
      _3_3 = '\0';
      bVar3 = IEN0;
      IEN0 = bVar3 & 0xfe;
      FUN_CODE_79d2();
      _4_7 = 1;
      _2_4 = 0;
      _5_0 = 0;
      DAT_INTMEM_7b = 0;
      DAT_INTMEM_76 = 0;
      DAT_INTMEM_26 = 0;
      DAT_INTMEM_27 = '\0';
      do {
        IEN1 = 0;
        cVar2 = '\a';
        cVar1 = DAT_INTMEM_27;
        do {
          cVar1 = cVar1 << 1;
          cVar2 = cVar2 + -1;
        } while (cVar2 != '\0');
        FUN_CODE_7efd(cVar1);
        FUN_CODE_7e37(7,0xd0);
        DAT_INTMEM_27 = DAT_INTMEM_27 + '\x01';
        if (DAT_INTMEM_27 == '\0') {
          DAT_INTMEM_26 = DAT_INTMEM_26 + 1;
        }
      } while ((DAT_INTMEM_26 < 2) << 7 < '\0');
      FUN_CODE_7f93(DAT_INTMEM_26 - 2,0xac);
      FUN_CODE_7f93(0xb0);
      FUN_CODE_7f93(0xba);
      FUN_CODE_7f93(0xbc);
      FUN_CODE_7f93(0xbe);
      FUN_CODE_7f93(0xc0);
      FUN_CODE_7f93(200);
      FUN_CODE_7f93(0xca);
      IEN1 = 0;
      FUN_CODE_7eca(0,0,0xb0);
      FUN_CODE_7eca(0xff,1,0xb0);
      FUN_CODE_7eca(0xff,2,0xb0);
      DAT_INTMEM_28 = '\0';
      DAT_INTMEM_29 = '\0';
      do {
        IEN1 = 0;
        FUN_CODE_7eca(*(undefined1 *)CONCAT11(DAT_INTMEM_28 + -0x4e,DAT_INTMEM_29),DAT_INTMEM_29,
                      0xba);
        DAT_INTMEM_29 = DAT_INTMEM_29 + '\x01';
        if (DAT_INTMEM_29 == '\0') {
          DAT_INTMEM_28 = DAT_INTMEM_28 + '\x01';
        }
      } while ((DAT_INTMEM_28 == '\0') << 7 < '\0');
      DAT_INTMEM_28 = '\0';
      DAT_INTMEM_29 = '\0';
      do {
        IEN1 = 0;
        FUN_CODE_7eca(*(undefined1 *)CONCAT11(DAT_INTMEM_28 + -0x4d,DAT_INTMEM_29),DAT_INTMEM_29,
                      0xbb);
        DAT_INTMEM_29 = DAT_INTMEM_29 + '\x01';
        if (DAT_INTMEM_29 == '\0') {
          DAT_INTMEM_28 = DAT_INTMEM_28 + '\x01';
        }
      } while ((DAT_INTMEM_28 == '\0') << 7 < '\0');
      DAT_INTMEM_28 = '\0';
      DAT_INTMEM_29 = '\0';
      do {
        IEN1 = 0;
        FUN_CODE_7eca(*(undefined1 *)CONCAT11(DAT_INTMEM_28 + -0x4c,DAT_INTMEM_29),DAT_INTMEM_29,
                      0xbc);
        DAT_INTMEM_29 = DAT_INTMEM_29 + '\x01';
        if (DAT_INTMEM_29 == '\0') {
          DAT_INTMEM_28 = DAT_INTMEM_28 + '\x01';
        }
      } while ((DAT_INTMEM_28 == '\0') << 7 < '\0');
      DAT_INTMEM_28 = '\0';
      DAT_INTMEM_29 = '\0';
      do {
        IEN1 = 0;
        FUN_CODE_7eca(*(undefined1 *)CONCAT11(DAT_INTMEM_28 + -0x4b,DAT_INTMEM_29),DAT_INTMEM_29,
                      0xbd);
        DAT_INTMEM_29 = DAT_INTMEM_29 + '\x01';
        if (DAT_INTMEM_29 == '\0') {
          DAT_INTMEM_28 = DAT_INTMEM_28 + '\x01';
        }
      } while ((DAT_INTMEM_28 == '\0') << 7 < '\0');
      DAT_INTMEM_28 = '\0';
      DAT_INTMEM_29 = '\0';
      do {
        IEN1 = 0;
        FUN_CODE_7eca(*(undefined1 *)CONCAT11(DAT_INTMEM_28 + -0x4a,DAT_INTMEM_29),DAT_INTMEM_29,
                      0xbe);
        DAT_INTMEM_29 = DAT_INTMEM_29 + '\x01';
        if (DAT_INTMEM_29 == '\0') {
          DAT_INTMEM_28 = DAT_INTMEM_28 + '\x01';
        }
      } while ((DAT_INTMEM_28 == '\0') << 7 < '\0');
      DAT_INTMEM_28 = '\0';
      DAT_INTMEM_29 = '\0';
      do {
        IEN1 = 0;
        FUN_CODE_7eca(*(undefined1 *)CONCAT11(DAT_INTMEM_28 + -0x49,DAT_INTMEM_29),DAT_INTMEM_29,
                      0xbf);
        DAT_INTMEM_29 = DAT_INTMEM_29 + '\x01';
        if (DAT_INTMEM_29 == '\0') {
          DAT_INTMEM_28 = DAT_INTMEM_28 + '\x01';
        }
      } while ((DAT_INTMEM_28 == '\0') << 7 < '\0');
      DAT_INTMEM_28 = '\0';
      DAT_INTMEM_29 = '\0';
      do {
        IEN1 = 0;
        FUN_CODE_7eca(*(undefined1 *)CONCAT11(DAT_INTMEM_28 + -0x48,DAT_INTMEM_29),DAT_INTMEM_29,
                      0xc0);
        DAT_INTMEM_29 = DAT_INTMEM_29 + '\x01';
        if (DAT_INTMEM_29 == '\0') {
          DAT_INTMEM_28 = DAT_INTMEM_28 + '\x01';
        }
      } while ((DAT_INTMEM_28 == '\0') << 7 < '\0');
      DAT_INTMEM_28 = '\0';
      DAT_INTMEM_29 = '\0';
      do {
        IEN1 = 0;
        FUN_CODE_7eca(*(undefined1 *)CONCAT11(DAT_INTMEM_28 + -0x47,DAT_INTMEM_29),DAT_INTMEM_29,
                      0xc1);
        DAT_INTMEM_29 = DAT_INTMEM_29 + '\x01';
        if (DAT_INTMEM_29 == '\0') {
          DAT_INTMEM_28 = DAT_INTMEM_28 + '\x01';
        }
      } while ((DAT_INTMEM_28 == '\0') << 7 < '\0');
      DAT_INTMEM_28 = '\0';
      DAT_INTMEM_29 = '\0';
      do {
        IEN1 = 0;
        FUN_CODE_7eca(*(undefined1 *)CONCAT11(DAT_INTMEM_28 + -0x24,DAT_INTMEM_29),DAT_INTMEM_29,200
                     );
        DAT_INTMEM_29 = DAT_INTMEM_29 + '\x01';
        if (DAT_INTMEM_29 == '\0') {
          DAT_INTMEM_28 = DAT_INTMEM_28 + '\x01';
        }
      } while ((DAT_INTMEM_28 == '\0') << 7 < '\0');
      DAT_INTMEM_28 = '\0';
      DAT_INTMEM_29 = '\0';
      do {
        IEN1 = 0;
        FUN_CODE_7eca(*(undefined1 *)CONCAT11(DAT_INTMEM_28 + -0x23,DAT_INTMEM_29),DAT_INTMEM_29,
                      0xc9);
        DAT_INTMEM_29 = DAT_INTMEM_29 + '\x01';
        if (DAT_INTMEM_29 == '\0') {
          DAT_INTMEM_28 = DAT_INTMEM_28 + '\x01';
        }
      } while ((DAT_INTMEM_28 == '\0') << 7 < '\0');
      DAT_INTMEM_28 = 0;
      DAT_INTMEM_29 = 0;
      do {
        IEN1 = 0;
        FUN_CODE_7eca(*(undefined1 *)CONCAT11(DAT_INTMEM_28 - 0x22,DAT_INTMEM_29),DAT_INTMEM_29,0xca
                     );
        DAT_INTMEM_29 = DAT_INTMEM_29 + 1;
        if (DAT_INTMEM_29 == 0) {
          DAT_INTMEM_28 = DAT_INTMEM_28 + 1;
        }
        cVar1 = ((DAT_INTMEM_29 < 0x28) << 7) >> 7;
        cVar2 = DAT_INTMEM_28 + cVar1;
      } while ((DAT_INTMEM_28 < (byte)-cVar1) << 7 < '\0');
      bVar3 = IEN0;
      IEN0 = bVar3 | 1;
    }
    if (_4_1 != '\0') {
      bVar3 = IEN0;
      IEN0 = bVar3 & 0xfe;
      FUN_CODE_79d2(cVar2);
      DAT_INTMEM_26 = 0;
      DAT_INTMEM_27 = '\0';
      do {
        IEN1 = 0;
        cVar2 = '\a';
        cVar1 = DAT_INTMEM_27;
        do {
          cVar1 = cVar1 << 1;
          cVar2 = cVar2 + -1;
        } while (cVar2 != '\0');
        FUN_CODE_7efd(cVar1);
        FUN_CODE_7e37(7,0xd0);
        DAT_INTMEM_27 = DAT_INTMEM_27 + '\x01';
        if (DAT_INTMEM_27 == '\0') {
          DAT_INTMEM_26 = DAT_INTMEM_26 + 1;
        }
        cVar2 = DAT_INTMEM_26 - 2;
      } while ((DAT_INTMEM_26 < 2) << 7 < '\0');
      bVar3 = IEN0;
      IEN0 = bVar3 | 1;
      _4_1 = '\0';
    }
    if (_1_0 != '\0') {
      _1_0 = '\0';
      FUN_CODE_7689(cVar2);
    }
    if (_0_1 != '\0') {
      _0_1 = '\0';
      FUN_CODE_7393();
    }
    if (((_2_1 == '\x01') && (BANK1_R3 == '\0' && BANK1_R2 == 0)) && (_3_7 == '\x01')) {
      _3_7 = '\0';
      if (BANK1_R7 < 0x4f) {
        if ((BANK2_R0 == '\0') || (BANK2_R0 == -1)) {
          if ((byte)-(((BANK1_R1 < 2) << 7) >> 7) <= BANK1_R0) {
            if (_2_6 != '\0') {
              BANK1_R0 = 0xff;
              BANK1_R1 = 0xff;
            }
            bVar3 = BANK1_R1;
            BANK1_R1 = BANK1_R1 - 1;
            if (bVar3 == 0) {
              BANK1_R0 = BANK1_R0 - 1;
            }
            BANK1_R7 = 0;
            bVar4 = (byte)((ushort)BANK2_R3 * 0x17);
            bVar3 = bVar4 + BANK2_R2;
            cVar1 = (char)((ushort)BANK2_R3 * 0x17 >> 8) - ((CARRY1(bVar4,BANK2_R2) << 7) >> 7);
            FUN_CODE_7a30(0xf2);
            FUN_CODE_7a9b(cVar1 - (((0xfd < bVar3) << 7) >> 7),bVar3 + 2);
            FUN_CODE_7e2d();
            bVar4 = (byte)((ushort)BANK2_R3 * 0x17);
            bVar3 = bVar4 + BANK2_R2;
            cVar1 = (char)((ushort)BANK2_R3 * 0x17 >> 8) - ((CARRY1(bVar4,BANK2_R2) << 7) >> 7);
            FUN_CODE_7a30(0xf2);
            FUN_CODE_7a9b(cVar1 - (((0xfc < bVar3) << 7) >> 7),bVar3 + 3);
            FUN_CODE_7e30(0x2a3);
            bVar4 = (byte)((ushort)BANK2_R3 * 0x17);
            bVar3 = bVar4 + BANK2_R2;
            cVar1 = (char)((ushort)BANK2_R3 * 0x17 >> 8) - ((CARRY1(bVar4,BANK2_R2) << 7) >> 7);
            FUN_CODE_7a30(0xf2);
            FUN_CODE_7a9b(cVar1 - (((0xfb < bVar3) << 7) >> 7),bVar3 + 4);
            BANK2_R0 = DAT_INTMEM_50;
            goto joined_c0x5bf8;
          }
          BANK1_R7 = 0;
          _2_1 = '\0';
          _1_0 = '\0';
        }
        else {
          _0_0 = (char)DAT_EXTMEM_029e < '\0';
          _0_2 = 1;
          DAT_EXTMEM_029f = BANK2_R0;
          FUN_CODE_6ec8();
          bVar3 = (byte)((ushort)BANK2_R3 * 0x17);
          FUN_CODE_7a30(0xf2,(char)((ushort)BANK2_R3 * 0x17 >> 8) -
                             ((CARRY1(bVar3,BANK2_R2) << 7) >> 7),bVar3 + BANK2_R2);
          bVar3 = (byte)((ushort)BANK1_R7 * 3);
          bVar4 = bVar3 + BANK0_R7;
          FUN_CODE_7a9b((BANK0_R6 +
                        ((char)((ushort)BANK1_R7 * 3 >> 8) - ((CARRY1(bVar3,BANK0_R7) << 7) >> 7)))
                        - (((0xfa < bVar4) << 7) >> 7),bVar4 + 5);
          FUN_CODE_7e2d();
          bVar3 = (byte)((ushort)BANK2_R3 * 0x17);
          FUN_CODE_7a30(0xf2,(char)((ushort)BANK2_R3 * 0x17 >> 8) -
                             ((CARRY1(bVar3,BANK2_R2) << 7) >> 7),bVar3 + BANK2_R2);
          bVar3 = (byte)((ushort)BANK1_R7 * 3);
          bVar4 = bVar3 + BANK0_R7;
          FUN_CODE_7a9b((BANK0_R6 +
                        ((char)((ushort)BANK1_R7 * 3 >> 8) - ((CARRY1(bVar3,BANK0_R7) << 7) >> 7)))
                        - (((0xf9 < bVar4) << 7) >> 7),bVar4 + 6);
          FUN_CODE_7e30(0x2a3);
          bVar3 = (byte)((ushort)BANK2_R3 * 0x17);
          FUN_CODE_7a30(0xf2,(char)((ushort)BANK2_R3 * 0x17 >> 8) -
                             ((CARRY1(bVar3,BANK2_R2) << 7) >> 7),bVar3 + BANK2_R2);
          bVar3 = (byte)((ushort)BANK1_R7 * 3);
          bVar4 = bVar3 + BANK0_R7;
          FUN_CODE_7a9b((BANK0_R6 +
                        ((char)((ushort)BANK1_R7 * 3 >> 8) - ((CARRY1(bVar3,BANK0_R7) << 7) >> 7)))
                        - (((0xf8 < bVar4) << 7) >> 7),bVar4 + 7);
          BANK2_R0 = DAT_INTMEM_50;
          BANK1_R3 = DAT_EXTMEM_02a3;
          BANK1_R2 = DAT_EXTMEM_029e & 0x7f;
          BANK1_R7 = BANK1_R7 + 1;
        }
      }
      else {
        DAT_EXTMEM_029f = BANK2_R0;
        _0_2 = 1;
        _0_0 = 0;
        FUN_CODE_6ec8();
        if (BANK1_R0 < (byte)-(((BANK1_R1 < 2) << 7) >> 7)) {
          BANK1_R7 = 0;
          _2_1 = '\0';
        }
        else {
          if (_2_6 != '\0') {
            BANK1_R0 = 0xff;
            BANK1_R1 = 0xff;
          }
          bVar3 = BANK1_R1;
          BANK1_R1 = BANK1_R1 - 1;
          if (bVar3 == 0) {
            BANK1_R0 = BANK1_R0 - 1;
          }
          BANK1_R7 = 0;
          bVar4 = (byte)((ushort)BANK2_R3 * 0x17);
          bVar3 = bVar4 + BANK2_R2;
          cVar1 = (char)((ushort)BANK2_R3 * 0x17 >> 8) - ((CARRY1(bVar4,BANK2_R2) << 7) >> 7);
          FUN_CODE_7a30(0xf2);
          FUN_CODE_7a9b(cVar1 - (((0xfd < bVar3) << 7) >> 7),bVar3 + 2);
          FUN_CODE_7e2d();
          bVar4 = (byte)((ushort)BANK2_R3 * 0x17);
          bVar3 = bVar4 + BANK2_R2;
          cVar1 = (char)((ushort)BANK2_R3 * 0x17 >> 8) - ((CARRY1(bVar4,BANK2_R2) << 7) >> 7);
          FUN_CODE_7a30(0xf2);
          FUN_CODE_7a9b(cVar1 - (((0xfc < bVar3) << 7) >> 7),bVar3 + 3);
          FUN_CODE_7e30(0x2a3);
          bVar4 = (byte)((ushort)BANK2_R3 * 0x17);
          bVar3 = bVar4 + BANK2_R2;
          cVar1 = (char)((ushort)BANK2_R3 * 0x17 >> 8) - ((CARRY1(bVar4,BANK2_R2) << 7) >> 7);
          FUN_CODE_7a30(0xf2);
          FUN_CODE_7a9b(cVar1 - (((0xfb < bVar3) << 7) >> 7),bVar3 + 4);
          BANK2_R0 = DAT_INTMEM_50;
joined_c0x5bf8:
          DAT_INTMEM_50 = BANK2_R0;
          if ((char)DAT_EXTMEM_029e < '\0') {
            BANK1_R2 = DAT_EXTMEM_029e & 0x7f;
            BANK1_R3 = DAT_EXTMEM_02a3;
          }
        }
      }
    }
    if (_3_6 == '\x01') {
      FUN_CODE_7050();
    }
  } while( true );
}


// ===== FUN_CODE_6003 @ CODE:6003 =====

void FUN_CODE_6003(byte *param_1,byte param_2)

{
  byte bVar1;
  undefined1 *puVar2;
  
  DAT_EXTMEM_0327 = *param_1;
  if (param_2 < (byte)-(((DAT_EXTMEM_0327 < 0xd5) << 7) >> 7)) {
    puVar2 = &DAT_EXTMEM_0326;
  }
  else {
    puVar2 = &DAT_EXTMEM_0328;
  }
  DAT_EXTMEM_0328 = *puVar2;
  DAT_EXTMEM_0329 = puVar2[1];
  DAT_EXTMEM_0326 = param_2;
  FUN_CODE_7857();
  bVar1 = HADDR;
  HADDR = bVar1 | 4;
  return;
}


// ===== FUN_CODE_60cf @ CODE:60cf =====

void FUN_CODE_60cf(void)

{
  DAT_EXTMEM_ff80 = 0xf8;
  DAT_EXTMEM_ff81 = 0;
  DAT_EXTMEM_ff82 = 0;
  DAT_EXTMEM_ff83 = 0;
  DAT_EXTMEM_ff84 = 0;
  DAT_EXTMEM_ff85 = 0;
  DAT_EXTMEM_ff9c = 0;
  DAT_EXTMEM_ff98 = 0xff;
  DAT_EXTMEM_ffb8 = 0;
  DAT_EXTMEM_ffa0 = 0xff;
  DAT_EXTMEM_ffe8 = 0;
  DAT_EXTMEM_ffd0 = 0xff;
  DAT_EXTMEM_ffb9 = 0;
  DAT_EXTMEM_ffa1 = 0xff;
  DAT_EXTMEM_ffe9 = 0;
  DAT_EXTMEM_ffd1 = 0xff;
  DAT_EXTMEM_ffba = 0;
  DAT_EXTMEM_ffa2 = 0xff;
  DAT_EXTMEM_ffea = 0;
  DAT_EXTMEM_ffd2 = 0xff;
  DAT_EXTMEM_ffbb = 0;
  DAT_EXTMEM_ffa3 = 0xff;
  DAT_EXTMEM_ffeb = 0;
  DAT_EXTMEM_ffd3 = 0xff;
  DAT_EXTMEM_ffbc = 0;
  DAT_EXTMEM_ffa4 = 0xff;
  DAT_EXTMEM_ffec = 0;
  DAT_EXTMEM_ffd4 = 0xff;
  DAT_EXTMEM_ffbd = 0;
  DAT_EXTMEM_ffa5 = 0xff;
  DAT_EXTMEM_ffed = 0;
  DAT_EXTMEM_ffd5 = 0xff;
  DAT_EXTMEM_ff86 = 0x80;
  DAT_EXTMEM_ff87 = 0;
  DAT_EXTMEM_ff88 = 0;
  DAT_EXTMEM_ff89 = 0;
  DAT_EXTMEM_ff8a = 0;
  DAT_EXTMEM_ff8b = 0;
  DAT_EXTMEM_ff9d = 0;
  DAT_EXTMEM_ff99 = 0xff;
  DAT_EXTMEM_ffbe = 0;
  DAT_EXTMEM_ffa6 = 0xff;
  DAT_EXTMEM_ffee = 0;
  DAT_EXTMEM_ffd6 = 0xff;
  DAT_EXTMEM_ffbf = 0;
  DAT_EXTMEM_ffa7 = 0xff;
  DAT_EXTMEM_ffef = 0;
  DAT_EXTMEM_ffd7 = 0xff;
  DAT_EXTMEM_ffc0 = 0;
  DAT_EXTMEM_ffa8 = 0xff;
  DAT_EXTMEM_fff0 = 0;
  DAT_EXTMEM_ffd8 = 0xff;
  DAT_EXTMEM_ffc1 = 0;
  DAT_EXTMEM_ffa9 = 0xff;
  DAT_EXTMEM_fff1 = 0;
  DAT_EXTMEM_ffd9 = 0xff;
  DAT_EXTMEM_ffc2 = 0;
  DAT_EXTMEM_ffaa = 0xff;
  DAT_EXTMEM_fff2 = 0;
  DAT_EXTMEM_ffda = 0xff;
  DAT_EXTMEM_ffc3 = 0;
  DAT_EXTMEM_ffab = 0xff;
  DAT_EXTMEM_fff3 = 0;
  DAT_EXTMEM_ffdb = 0xff;
  DAT_EXTMEM_ff8c = 0x80;
  DAT_EXTMEM_ff8d = 0;
  DAT_EXTMEM_ff8e = 0;
  DAT_EXTMEM_ff8f = 0;
  DAT_EXTMEM_ff90 = 0;
  DAT_EXTMEM_ff91 = 0;
  DAT_EXTMEM_ff9e = 0;
  DAT_EXTMEM_ff9a = 0xff;
  DAT_EXTMEM_ffc4 = 0;
  DAT_EXTMEM_ffac = 0xff;
  DAT_EXTMEM_fff4 = 0;
  DAT_EXTMEM_ffdc = 0xff;
  DAT_EXTMEM_ffc5 = 0;
  DAT_EXTMEM_ffad = 0xff;
  DAT_EXTMEM_fff5 = 0;
  DAT_EXTMEM_ffdd = 0xff;
  DAT_EXTMEM_ffc6 = 0;
  DAT_EXTMEM_ffae = 0xff;
  DAT_EXTMEM_fff6 = 0;
  DAT_EXTMEM_ffde = 0xff;
  DAT_EXTMEM_ffc7 = 0;
  DAT_EXTMEM_ffaf = 0xff;
  DAT_EXTMEM_fff7 = 0;
  DAT_EXTMEM_ffdf = 0xff;
  DAT_EXTMEM_ffc8 = 0;
  DAT_EXTMEM_ffb0 = 0xff;
  DAT_EXTMEM_fff8 = 0;
  DAT_EXTMEM_ffe0 = 0xff;
  DAT_EXTMEM_ffc9 = 0;
  DAT_EXTMEM_ffb1 = 0xff;
  DAT_EXTMEM_fff9 = 0;
  DAT_EXTMEM_ffe1 = 0xff;
  DAT_EXTMEM_ff92 = 0x80;
  DAT_EXTMEM_ff93 = 0;
  DAT_EXTMEM_ff94 = 0;
  DAT_EXTMEM_ff95 = 0;
  DAT_EXTMEM_ff9f = 0;
  DAT_EXTMEM_ff9b = 0xff;
  DAT_EXTMEM_ffca = 0;
  DAT_EXTMEM_ffb2 = 0;
  DAT_EXTMEM_fffa = 0;
  DAT_EXTMEM_ffe2 = 0;
  DAT_EXTMEM_ffcb = 0;
  DAT_EXTMEM_ffb3 = 0;
  DAT_EXTMEM_fffb = 0;
  DAT_EXTMEM_ffe3 = 0;
  DAT_EXTMEM_ffcc = 0;
  DAT_EXTMEM_ffb4 = 0;
  uEXTMEMfffc = 0;
  DAT_EXTMEM_ffe4 = 0;
  DAT_EXTMEM_ffcd = 0;
  DAT_EXTMEM_ffb5 = 0;
  uEXTMEMfffd = 0;
  DAT_EXTMEM_ffe5 = 0;
  CCAPM0 = 2;
  CCAPM1 = 0;
  CCAPM2 = 0;
  CCAPM4 = 0;
  CCAPM3 = 100;
  HPSC = 0;
  SOFL = 0;
  DAT_SFR_c3 = 0;
  DAT_SFR_ce = 0x32;
  DAT_SFR_d6 = 0;
  DAT_SFR_d3 = 0;
  DAT_SFR_c4 = 0;
  FIFLG1 = 0x32;
  HPSTAT = 0;
  HPINDEX = 0;
  DAT_SFR_c5 = 0;
  DAT_SFR_c2 = 0x32;
  return;
}


// ===== FUN_CODE_6580 @ CODE:6580 =====

void FUN_CODE_6580(byte param_1)

{
  TXD = 0;
  FIFLG_0 = 0;
  FIFLG_1 = 0;
  FIFLG_2 = 0;
  FIFLG_3 = 0;
  FIFLG_4 = 0;
  FIFLG_5 = 0;
  FIFLG_6 = 0;
  FIFLG_7 = 0;
  IT0 = 0;
  IE0 = 0;
  IT1 = 0;
  TF1 = 0;
  RXD = 0;
  T0 = 0;
  INT0 = 0;
  INT1 = 0;
  T1 = 0;
  WR = 0;
  F8_4 = 0;
  P0_5 = 0;
  P0_6 = 0;
  P0_7 = 0;
  DAT_EXTMEM_ffa0 = *(undefined1 *)(ushort)param_1;
  DAT_EXTMEM_ffa1 = *(undefined1 *)CONCAT11(-(((0x6a < param_1) << 7) >> 7),param_1 + 0x95);
  DAT_EXTMEM_ffa2 = *(undefined1 *)CONCAT11('\x01' - (((0xd5 < param_1) << 7) >> 7),param_1 + 0x2a);
  DAT_EXTMEM_ffa3 = *(undefined1 *)CONCAT11(-(((0xe8 < param_1) << 7) >> 7),param_1 + 0x17);
  DAT_EXTMEM_ffa4 = *(undefined1 *)CONCAT11(-(((0x53 < param_1) << 7) >> 7),param_1 + 0xac);
  DAT_EXTMEM_ffa5 = *(undefined1 *)CONCAT11('\x01' - (((0xbe < param_1) << 7) >> 7),param_1 + 0x41);
  DAT_EXTMEM_ffa6 = *(undefined1 *)CONCAT11(-(((0xd1 < param_1) << 7) >> 7),param_1 + 0x2e);
  DAT_EXTMEM_ffa7 = *(undefined1 *)CONCAT11(-(((0x3c < param_1) << 7) >> 7),param_1 - 0x3d);
  DAT_EXTMEM_ffa8 = *(undefined1 *)CONCAT11('\x01' - (((0xa7 < param_1) << 7) >> 7),param_1 + 0x58);
  DAT_EXTMEM_ffa9 = *(undefined1 *)CONCAT11(-(((0xba < param_1) << 7) >> 7),param_1 + 0x45);
  DAT_EXTMEM_ffaa = *(undefined1 *)CONCAT11(-(((0x25 < param_1) << 7) >> 7),param_1 - 0x26);
  DAT_EXTMEM_ffab = *(undefined1 *)CONCAT11('\x01' - (((0x90 < param_1) << 7) >> 7),param_1 + 0x6f);
  DAT_EXTMEM_ffac = *(undefined1 *)CONCAT11(-(((0xa3 < param_1) << 7) >> 7),param_1 + 0x5c);
  DAT_EXTMEM_ffad = *(undefined1 *)CONCAT11(-(((0xe < param_1) << 7) >> 7),param_1 - 0xf);
  DAT_EXTMEM_ffae = *(undefined1 *)CONCAT11('\x01' - (((0x79 < param_1) << 7) >> 7),param_1 + 0x86);
  DAT_EXTMEM_ffaf = *(undefined1 *)CONCAT11(-(((0x8c < param_1) << 7) >> 7),param_1 + 0x73);
  DAT_EXTMEM_ffb0 = *(undefined1 *)CONCAT11('\x01' - (((0xf7 < param_1) << 7) >> 7),param_1 + 8);
  DAT_EXTMEM_ffb1 = *(undefined1 *)CONCAT11('\x01' - (((0x62 < param_1) << 7) >> 7),param_1 + 0x9d);
  DAT_INTMEM_43 = param_1;
  FUN_CODE_7e37(0,10);
  FUN_CODE_7e97();
  if (0x16 < DAT_INTMEM_43) {
    if ((DAT_INTMEM_76 == '\x02') || (DAT_INTMEM_76 == '\x04')) {
      TXD = 1;
      FIFLG_0 = 1;
      FIFLG_1 = 1;
      FIFLG_2 = 1;
      FIFLG_3 = 1;
      FIFLG_4 = 1;
      FIFLG_5 = 1;
      FIFLG_6 = 1;
      FIFLG_7 = 1;
      IT0 = 1;
      IE0 = 1;
      IT1 = 1;
      TF1 = 1;
      RXD = 1;
      T0 = 1;
      INT0 = 1;
      INT1 = 1;
      T1 = 1;
      WR = 1;
      F8_4 = 1;
      P0_5 = 1;
      P0_6 = 1;
      P0_7 = 1;
    }
    return;
  }
                    /* WARNING: Could not recover jumptable at 0x66d8. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (*(thunk_FUN_CODE_671e + DAT_INTMEM_43 * '\x03'))();
  return;
}


// ===== thunk_FUN_CODE_671e @ CODE:66d9 =====

void thunk_FUN_CODE_671e(void)

{
  TXD = 1;
  if ((DAT_INTMEM_76 == '\x02') || (DAT_INTMEM_76 == '\x04')) {
    TXD = 1;
    FIFLG_0 = 1;
    FIFLG_1 = 1;
    FIFLG_2 = 1;
    FIFLG_3 = 1;
    FIFLG_4 = 1;
    FIFLG_5 = 1;
    FIFLG_6 = 1;
    FIFLG_7 = 1;
    IT0 = 1;
    IE0 = 1;
    IT1 = 1;
    TF1 = 1;
    RXD = 1;
    T0 = 1;
    INT0 = 1;
    INT1 = 1;
    T1 = 1;
    WR = 1;
    F8_4 = 1;
    P0_5 = 1;
    P0_6 = 1;
    P0_7 = 1;
  }
  return;
}


// ===== thunk_FUN_CODE_6722 @ CODE:66dc =====

void thunk_FUN_CODE_6722(void)

{
  FIFLG_0 = 1;
  if ((DAT_INTMEM_76 == '\x02') || (DAT_INTMEM_76 == '\x04')) {
    TXD = 1;
    FIFLG_0 = 1;
    FIFLG_1 = 1;
    FIFLG_2 = 1;
    FIFLG_3 = 1;
    FIFLG_4 = 1;
    FIFLG_5 = 1;
    FIFLG_6 = 1;
    FIFLG_7 = 1;
    IT0 = 1;
    IE0 = 1;
    IT1 = 1;
    TF1 = 1;
    RXD = 1;
    T0 = 1;
    INT0 = 1;
    INT1 = 1;
    T1 = 1;
    WR = 1;
    F8_4 = 1;
    P0_5 = 1;
    P0_6 = 1;
    P0_7 = 1;
  }
  return;
}


// ===== thunk_FUN_CODE_6726 @ CODE:66df =====

void thunk_FUN_CODE_6726(void)

{
  FIFLG_1 = 1;
  if ((DAT_INTMEM_76 == '\x02') || (DAT_INTMEM_76 == '\x04')) {
    TXD = 1;
    FIFLG_0 = 1;
    FIFLG_1 = 1;
    FIFLG_2 = 1;
    FIFLG_3 = 1;
    FIFLG_4 = 1;
    FIFLG_5 = 1;
    FIFLG_6 = 1;
    FIFLG_7 = 1;
    IT0 = 1;
    IE0 = 1;
    IT1 = 1;
    TF1 = 1;
    RXD = 1;
    T0 = 1;
    INT0 = 1;
    INT1 = 1;
    T1 = 1;
    WR = 1;
    F8_4 = 1;
    P0_5 = 1;
    P0_6 = 1;
    P0_7 = 1;
  }
  return;
}


// ===== thunk_FUN_CODE_672a @ CODE:66e2 =====

void thunk_FUN_CODE_672a(void)

{
  FIFLG_2 = 1;
  if ((DAT_INTMEM_76 == '\x02') || (DAT_INTMEM_76 == '\x04')) {
    TXD = 1;
    FIFLG_0 = 1;
    FIFLG_1 = 1;
    FIFLG_2 = 1;
    FIFLG_3 = 1;
    FIFLG_4 = 1;
    FIFLG_5 = 1;
    FIFLG_6 = 1;
    FIFLG_7 = 1;
    IT0 = 1;
    IE0 = 1;
    IT1 = 1;
    TF1 = 1;
    RXD = 1;
    T0 = 1;
    INT0 = 1;
    INT1 = 1;
    T1 = 1;
    WR = 1;
    F8_4 = 1;
    P0_5 = 1;
    P0_6 = 1;
    P0_7 = 1;
  }
  return;
}


// ===== thunk_FUN_CODE_672e @ CODE:66e5 =====

void thunk_FUN_CODE_672e(void)

{
  FIFLG_3 = 1;
  if ((DAT_INTMEM_76 == '\x02') || (DAT_INTMEM_76 == '\x04')) {
    TXD = 1;
    FIFLG_0 = 1;
    FIFLG_1 = 1;
    FIFLG_2 = 1;
    FIFLG_3 = 1;
    FIFLG_4 = 1;
    FIFLG_5 = 1;
    FIFLG_6 = 1;
    FIFLG_7 = 1;
    IT0 = 1;
    IE0 = 1;
    IT1 = 1;
    TF1 = 1;
    RXD = 1;
    T0 = 1;
    INT0 = 1;
    INT1 = 1;
    T1 = 1;
    WR = 1;
    F8_4 = 1;
    P0_5 = 1;
    P0_6 = 1;
    P0_7 = 1;
  }
  return;
}


// ===== thunk_FUN_CODE_6732 @ CODE:66e8 =====

void thunk_FUN_CODE_6732(void)

{
  FIFLG_4 = 1;
  if ((DAT_INTMEM_76 == '\x02') || (DAT_INTMEM_76 == '\x04')) {
    TXD = 1;
    FIFLG_0 = 1;
    FIFLG_1 = 1;
    FIFLG_2 = 1;
    FIFLG_3 = 1;
    FIFLG_4 = 1;
    FIFLG_5 = 1;
    FIFLG_6 = 1;
    FIFLG_7 = 1;
    IT0 = 1;
    IE0 = 1;
    IT1 = 1;
    TF1 = 1;
    RXD = 1;
    T0 = 1;
    INT0 = 1;
    INT1 = 1;
    T1 = 1;
    WR = 1;
    F8_4 = 1;
    P0_5 = 1;
    P0_6 = 1;
    P0_7 = 1;
  }
  return;
}


// ===== thunk_FUN_CODE_6736 @ CODE:66eb =====

void thunk_FUN_CODE_6736(void)

{
  FIFLG_5 = 1;
  if ((DAT_INTMEM_76 == '\x02') || (DAT_INTMEM_76 == '\x04')) {
    TXD = 1;
    FIFLG_0 = 1;
    FIFLG_1 = 1;
    FIFLG_2 = 1;
    FIFLG_3 = 1;
    FIFLG_4 = 1;
    FIFLG_5 = 1;
    FIFLG_6 = 1;
    FIFLG_7 = 1;
    IT0 = 1;
    IE0 = 1;
    IT1 = 1;
    TF1 = 1;
    RXD = 1;
    T0 = 1;
    INT0 = 1;
    INT1 = 1;
    T1 = 1;
    WR = 1;
    F8_4 = 1;
    P0_5 = 1;
    P0_6 = 1;
    P0_7 = 1;
  }
  return;
}


// ===== thunk_FUN_CODE_673a @ CODE:66ee =====

void thunk_FUN_CODE_673a(void)

{
  FIFLG_6 = 1;
  if ((DAT_INTMEM_76 == '\x02') || (DAT_INTMEM_76 == '\x04')) {
    TXD = 1;
    FIFLG_0 = 1;
    FIFLG_1 = 1;
    FIFLG_2 = 1;
    FIFLG_3 = 1;
    FIFLG_4 = 1;
    FIFLG_5 = 1;
    FIFLG_6 = 1;
    FIFLG_7 = 1;
    IT0 = 1;
    IE0 = 1;
    IT1 = 1;
    TF1 = 1;
    RXD = 1;
    T0 = 1;
    INT0 = 1;
    INT1 = 1;
    T1 = 1;
    WR = 1;
    F8_4 = 1;
    P0_5 = 1;
    P0_6 = 1;
    P0_7 = 1;
  }
  return;
}


// ===== thunk_FUN_CODE_673e @ CODE:66f1 =====

void thunk_FUN_CODE_673e(void)

{
  FIFLG_7 = 1;
  if ((DAT_INTMEM_76 == '\x02') || (DAT_INTMEM_76 == '\x04')) {
    TXD = 1;
    FIFLG_0 = 1;
    FIFLG_1 = 1;
    FIFLG_2 = 1;
    FIFLG_3 = 1;
    FIFLG_4 = 1;
    FIFLG_5 = 1;
    FIFLG_6 = 1;
    FIFLG_7 = 1;
    IT0 = 1;
    IE0 = 1;
    IT1 = 1;
    TF1 = 1;
    RXD = 1;
    T0 = 1;
    INT0 = 1;
    INT1 = 1;
    T1 = 1;
    WR = 1;
    F8_4 = 1;
    P0_5 = 1;
    P0_6 = 1;
    P0_7 = 1;
  }
  return;
}


// ===== thunk_FUN_CODE_6742 @ CODE:66f4 =====

void thunk_FUN_CODE_6742(void)

{
  IT0 = 1;
  if ((DAT_INTMEM_76 == '\x02') || (DAT_INTMEM_76 == '\x04')) {
    TXD = 1;
    FIFLG_0 = 1;
    FIFLG_1 = 1;
    FIFLG_2 = 1;
    FIFLG_3 = 1;
    FIFLG_4 = 1;
    FIFLG_5 = 1;
    FIFLG_6 = 1;
    FIFLG_7 = 1;
    IT0 = 1;
    IE0 = 1;
    IT1 = 1;
    TF1 = 1;
    RXD = 1;
    T0 = 1;
    INT0 = 1;
    INT1 = 1;
    T1 = 1;
    WR = 1;
    F8_4 = 1;
    P0_5 = 1;
    P0_6 = 1;
    P0_7 = 1;
  }
  return;
}


// ===== thunk_FUN_CODE_6746 @ CODE:66f7 =====

void thunk_FUN_CODE_6746(void)

{
  IE0 = 1;
  if ((DAT_INTMEM_76 == '\x02') || (DAT_INTMEM_76 == '\x04')) {
    TXD = 1;
    FIFLG_0 = 1;
    FIFLG_1 = 1;
    FIFLG_2 = 1;
    FIFLG_3 = 1;
    FIFLG_4 = 1;
    FIFLG_5 = 1;
    FIFLG_6 = 1;
    FIFLG_7 = 1;
    IT0 = 1;
    IE0 = 1;
    IT1 = 1;
    TF1 = 1;
    RXD = 1;
    T0 = 1;
    INT0 = 1;
    INT1 = 1;
    T1 = 1;
    WR = 1;
    F8_4 = 1;
    P0_5 = 1;
    P0_6 = 1;
    P0_7 = 1;
  }
  return;
}


// ===== thunk_FUN_CODE_674a @ CODE:66fa =====

void thunk_FUN_CODE_674a(void)

{
  IT1 = 1;
  if ((DAT_INTMEM_76 == '\x02') || (DAT_INTMEM_76 == '\x04')) {
    TXD = 1;
    FIFLG_0 = 1;
    FIFLG_1 = 1;
    FIFLG_2 = 1;
    FIFLG_3 = 1;
    FIFLG_4 = 1;
    FIFLG_5 = 1;
    FIFLG_6 = 1;
    FIFLG_7 = 1;
    IT0 = 1;
    IE0 = 1;
    IT1 = 1;
    TF1 = 1;
    RXD = 1;
    T0 = 1;
    INT0 = 1;
    INT1 = 1;
    T1 = 1;
    WR = 1;
    F8_4 = 1;
    P0_5 = 1;
    P0_6 = 1;
    P0_7 = 1;
  }
  return;
}


// ===== thunk_FUN_CODE_674e @ CODE:66fd =====

void thunk_FUN_CODE_674e(void)

{
  TF1 = 1;
  if ((DAT_INTMEM_76 == '\x02') || (DAT_INTMEM_76 == '\x04')) {
    TXD = 1;
    FIFLG_0 = 1;
    FIFLG_1 = 1;
    FIFLG_2 = 1;
    FIFLG_3 = 1;
    FIFLG_4 = 1;
    FIFLG_5 = 1;
    FIFLG_6 = 1;
    FIFLG_7 = 1;
    IT0 = 1;
    IE0 = 1;
    IT1 = 1;
    TF1 = 1;
    RXD = 1;
    T0 = 1;
    INT0 = 1;
    INT1 = 1;
    T1 = 1;
    WR = 1;
    F8_4 = 1;
    P0_5 = 1;
    P0_6 = 1;
    P0_7 = 1;
  }
  return;
}


// ===== thunk_FUN_CODE_6752 @ CODE:6700 =====

void thunk_FUN_CODE_6752(void)

{
  RXD = 1;
  if ((DAT_INTMEM_76 == '\x02') || (DAT_INTMEM_76 == '\x04')) {
    TXD = 1;
    FIFLG_0 = 1;
    FIFLG_1 = 1;
    FIFLG_2 = 1;
    FIFLG_3 = 1;
    FIFLG_4 = 1;
    FIFLG_5 = 1;
    FIFLG_6 = 1;
    FIFLG_7 = 1;
    IT0 = 1;
    IE0 = 1;
    IT1 = 1;
    TF1 = 1;
    RXD = 1;
    T0 = 1;
    INT0 = 1;
    INT1 = 1;
    T1 = 1;
    WR = 1;
    F8_4 = 1;
    P0_5 = 1;
    P0_6 = 1;
    P0_7 = 1;
  }
  return;
}


// ===== thunk_FUN_CODE_6756 @ CODE:6703 =====

void thunk_FUN_CODE_6756(void)

{
  T0 = 1;
  if ((DAT_INTMEM_76 == '\x02') || (DAT_INTMEM_76 == '\x04')) {
    TXD = 1;
    FIFLG_0 = 1;
    FIFLG_1 = 1;
    FIFLG_2 = 1;
    FIFLG_3 = 1;
    FIFLG_4 = 1;
    FIFLG_5 = 1;
    FIFLG_6 = 1;
    FIFLG_7 = 1;
    IT0 = 1;
    IE0 = 1;
    IT1 = 1;
    TF1 = 1;
    RXD = 1;
    T0 = 1;
    INT0 = 1;
    INT1 = 1;
    T1 = 1;
    WR = 1;
    F8_4 = 1;
    P0_5 = 1;
    P0_6 = 1;
    P0_7 = 1;
  }
  return;
}


// ===== thunk_FUN_CODE_675a @ CODE:6706 =====

void thunk_FUN_CODE_675a(void)

{
  INT0 = 1;
  if ((DAT_INTMEM_76 == '\x02') || (DAT_INTMEM_76 == '\x04')) {
    TXD = 1;
    FIFLG_0 = 1;
    FIFLG_1 = 1;
    FIFLG_2 = 1;
    FIFLG_3 = 1;
    FIFLG_4 = 1;
    FIFLG_5 = 1;
    FIFLG_6 = 1;
    FIFLG_7 = 1;
    IT0 = 1;
    IE0 = 1;
    IT1 = 1;
    TF1 = 1;
    RXD = 1;
    T0 = 1;
    INT0 = 1;
    INT1 = 1;
    T1 = 1;
    WR = 1;
    F8_4 = 1;
    P0_5 = 1;
    P0_6 = 1;
    P0_7 = 1;
  }
  return;
}


// ===== thunk_FUN_CODE_675e @ CODE:6709 =====

void thunk_FUN_CODE_675e(void)

{
  INT1 = 1;
  if ((DAT_INTMEM_76 == '\x02') || (DAT_INTMEM_76 == '\x04')) {
    TXD = 1;
    FIFLG_0 = 1;
    FIFLG_1 = 1;
    FIFLG_2 = 1;
    FIFLG_3 = 1;
    FIFLG_4 = 1;
    FIFLG_5 = 1;
    FIFLG_6 = 1;
    FIFLG_7 = 1;
    IT0 = 1;
    IE0 = 1;
    IT1 = 1;
    TF1 = 1;
    RXD = 1;
    T0 = 1;
    INT0 = 1;
    INT1 = 1;
    T1 = 1;
    WR = 1;
    F8_4 = 1;
    P0_5 = 1;
    P0_6 = 1;
    P0_7 = 1;
  }
  return;
}


// ===== thunk_FUN_CODE_6762 @ CODE:670c =====

void thunk_FUN_CODE_6762(void)

{
  T1 = 1;
  if ((DAT_INTMEM_76 == '\x02') || (DAT_INTMEM_76 == '\x04')) {
    TXD = 1;
    FIFLG_0 = 1;
    FIFLG_1 = 1;
    FIFLG_2 = 1;
    FIFLG_3 = 1;
    FIFLG_4 = 1;
    FIFLG_5 = 1;
    FIFLG_6 = 1;
    FIFLG_7 = 1;
    IT0 = 1;
    IE0 = 1;
    IT1 = 1;
    TF1 = 1;
    RXD = 1;
    T0 = 1;
    INT0 = 1;
    INT1 = 1;
    T1 = 1;
    WR = 1;
    F8_4 = 1;
    P0_5 = 1;
    P0_6 = 1;
    P0_7 = 1;
  }
  return;
}


// ===== thunk_FUN_CODE_6766 @ CODE:670f =====

void thunk_FUN_CODE_6766(void)

{
  WR = 1;
  if ((DAT_INTMEM_76 == '\x02') || (DAT_INTMEM_76 == '\x04')) {
    TXD = 1;
    FIFLG_0 = 1;
    FIFLG_1 = 1;
    FIFLG_2 = 1;
    FIFLG_3 = 1;
    FIFLG_4 = 1;
    FIFLG_5 = 1;
    FIFLG_6 = 1;
    FIFLG_7 = 1;
    IT0 = 1;
    IE0 = 1;
    IT1 = 1;
    TF1 = 1;
    RXD = 1;
    T0 = 1;
    INT0 = 1;
    INT1 = 1;
    T1 = 1;
    WR = 1;
    F8_4 = 1;
    P0_5 = 1;
    P0_6 = 1;
    P0_7 = 1;
  }
  return;
}


// ===== thunk_FUN_CODE_676a @ CODE:6712 =====

void thunk_FUN_CODE_676a(void)

{
  F8_4 = 1;
  if ((DAT_INTMEM_76 == '\x02') || (DAT_INTMEM_76 == '\x04')) {
    TXD = 1;
    FIFLG_0 = 1;
    FIFLG_1 = 1;
    FIFLG_2 = 1;
    FIFLG_3 = 1;
    FIFLG_4 = 1;
    FIFLG_5 = 1;
    FIFLG_6 = 1;
    FIFLG_7 = 1;
    IT0 = 1;
    IE0 = 1;
    IT1 = 1;
    TF1 = 1;
    RXD = 1;
    T0 = 1;
    INT0 = 1;
    INT1 = 1;
    T1 = 1;
    WR = 1;
    F8_4 = 1;
    P0_5 = 1;
    P0_6 = 1;
    P0_7 = 1;
  }
  return;
}


// ===== thunk_FUN_CODE_676e @ CODE:6715 =====

void thunk_FUN_CODE_676e(void)

{
  P0_5 = 1;
  if ((DAT_INTMEM_76 == '\x02') || (DAT_INTMEM_76 == '\x04')) {
    TXD = 1;
    FIFLG_0 = 1;
    FIFLG_1 = 1;
    FIFLG_2 = 1;
    FIFLG_3 = 1;
    FIFLG_4 = 1;
    FIFLG_5 = 1;
    FIFLG_6 = 1;
    FIFLG_7 = 1;
    IT0 = 1;
    IE0 = 1;
    IT1 = 1;
    TF1 = 1;
    RXD = 1;
    T0 = 1;
    INT0 = 1;
    INT1 = 1;
    T1 = 1;
    WR = 1;
    F8_4 = 1;
    P0_5 = 1;
    P0_6 = 1;
    P0_7 = 1;
  }
  return;
}


// ===== thunk_FUN_CODE_6772 @ CODE:6718 =====

void thunk_FUN_CODE_6772(void)

{
  P0_6 = 1;
  if ((DAT_INTMEM_76 == '\x02') || (DAT_INTMEM_76 == '\x04')) {
    TXD = 1;
    FIFLG_0 = 1;
    FIFLG_1 = 1;
    FIFLG_2 = 1;
    FIFLG_3 = 1;
    FIFLG_4 = 1;
    FIFLG_5 = 1;
    FIFLG_6 = 1;
    FIFLG_7 = 1;
    IT0 = 1;
    IE0 = 1;
    IT1 = 1;
    TF1 = 1;
    RXD = 1;
    T0 = 1;
    INT0 = 1;
    INT1 = 1;
    T1 = 1;
    WR = 1;
    F8_4 = 1;
    P0_5 = 1;
    P0_6 = 1;
    P0_7 = 1;
  }
  return;
}


// ===== thunk_FUN_CODE_6776 @ CODE:671b =====

void thunk_FUN_CODE_6776(void)

{
  P0_7 = 1;
  if ((DAT_INTMEM_76 == '\x02') || (DAT_INTMEM_76 == '\x04')) {
    TXD = 1;
    FIFLG_0 = 1;
    FIFLG_1 = 1;
    FIFLG_2 = 1;
    FIFLG_3 = 1;
    FIFLG_4 = 1;
    FIFLG_5 = 1;
    FIFLG_6 = 1;
    FIFLG_7 = 1;
    IT0 = 1;
    IE0 = 1;
    IT1 = 1;
    TF1 = 1;
    RXD = 1;
    T0 = 1;
    INT0 = 1;
    INT1 = 1;
    T1 = 1;
    WR = 1;
    F8_4 = 1;
    P0_5 = 1;
    P0_6 = 1;
    P0_7 = 1;
  }
  return;
}


// ===== FUN_CODE_671e @ CODE:671e =====

void FUN_CODE_671e(void)

{
  TXD = 1;
  if ((DAT_INTMEM_76 == '\x02') || (DAT_INTMEM_76 == '\x04')) {
    TXD = 1;
    FIFLG_0 = 1;
    FIFLG_1 = 1;
    FIFLG_2 = 1;
    FIFLG_3 = 1;
    FIFLG_4 = 1;
    FIFLG_5 = 1;
    FIFLG_6 = 1;
    FIFLG_7 = 1;
    IT0 = 1;
    IE0 = 1;
    IT1 = 1;
    TF1 = 1;
    RXD = 1;
    T0 = 1;
    INT0 = 1;
    INT1 = 1;
    T1 = 1;
    WR = 1;
    F8_4 = 1;
    P0_5 = 1;
    P0_6 = 1;
    P0_7 = 1;
  }
  return;
}


// ===== FUN_CODE_6722 @ CODE:6722 =====

void FUN_CODE_6722(void)

{
  FIFLG_0 = 1;
  if ((DAT_INTMEM_76 == '\x02') || (DAT_INTMEM_76 == '\x04')) {
    TXD = 1;
    FIFLG_0 = 1;
    FIFLG_1 = 1;
    FIFLG_2 = 1;
    FIFLG_3 = 1;
    FIFLG_4 = 1;
    FIFLG_5 = 1;
    FIFLG_6 = 1;
    FIFLG_7 = 1;
    IT0 = 1;
    IE0 = 1;
    IT1 = 1;
    TF1 = 1;
    RXD = 1;
    T0 = 1;
    INT0 = 1;
    INT1 = 1;
    T1 = 1;
    WR = 1;
    F8_4 = 1;
    P0_5 = 1;
    P0_6 = 1;
    P0_7 = 1;
  }
  return;
}


// ===== FUN_CODE_6726 @ CODE:6726 =====

void FUN_CODE_6726(void)

{
  FIFLG_1 = 1;
  if ((DAT_INTMEM_76 == '\x02') || (DAT_INTMEM_76 == '\x04')) {
    TXD = 1;
    FIFLG_0 = 1;
    FIFLG_1 = 1;
    FIFLG_2 = 1;
    FIFLG_3 = 1;
    FIFLG_4 = 1;
    FIFLG_5 = 1;
    FIFLG_6 = 1;
    FIFLG_7 = 1;
    IT0 = 1;
    IE0 = 1;
    IT1 = 1;
    TF1 = 1;
    RXD = 1;
    T0 = 1;
    INT0 = 1;
    INT1 = 1;
    T1 = 1;
    WR = 1;
    F8_4 = 1;
    P0_5 = 1;
    P0_6 = 1;
    P0_7 = 1;
  }
  return;
}


// ===== FUN_CODE_672a @ CODE:672a =====

void FUN_CODE_672a(void)

{
  FIFLG_2 = 1;
  if ((DAT_INTMEM_76 == '\x02') || (DAT_INTMEM_76 == '\x04')) {
    TXD = 1;
    FIFLG_0 = 1;
    FIFLG_1 = 1;
    FIFLG_2 = 1;
    FIFLG_3 = 1;
    FIFLG_4 = 1;
    FIFLG_5 = 1;
    FIFLG_6 = 1;
    FIFLG_7 = 1;
    IT0 = 1;
    IE0 = 1;
    IT1 = 1;
    TF1 = 1;
    RXD = 1;
    T0 = 1;
    INT0 = 1;
    INT1 = 1;
    T1 = 1;
    WR = 1;
    F8_4 = 1;
    P0_5 = 1;
    P0_6 = 1;
    P0_7 = 1;
  }
  return;
}


// ===== FUN_CODE_672e @ CODE:672e =====

void FUN_CODE_672e(void)

{
  FIFLG_3 = 1;
  if ((DAT_INTMEM_76 == '\x02') || (DAT_INTMEM_76 == '\x04')) {
    TXD = 1;
    FIFLG_0 = 1;
    FIFLG_1 = 1;
    FIFLG_2 = 1;
    FIFLG_3 = 1;
    FIFLG_4 = 1;
    FIFLG_5 = 1;
    FIFLG_6 = 1;
    FIFLG_7 = 1;
    IT0 = 1;
    IE0 = 1;
    IT1 = 1;
    TF1 = 1;
    RXD = 1;
    T0 = 1;
    INT0 = 1;
    INT1 = 1;
    T1 = 1;
    WR = 1;
    F8_4 = 1;
    P0_5 = 1;
    P0_6 = 1;
    P0_7 = 1;
  }
  return;
}


// ===== FUN_CODE_6732 @ CODE:6732 =====

void FUN_CODE_6732(void)

{
  FIFLG_4 = 1;
  if ((DAT_INTMEM_76 == '\x02') || (DAT_INTMEM_76 == '\x04')) {
    TXD = 1;
    FIFLG_0 = 1;
    FIFLG_1 = 1;
    FIFLG_2 = 1;
    FIFLG_3 = 1;
    FIFLG_4 = 1;
    FIFLG_5 = 1;
    FIFLG_6 = 1;
    FIFLG_7 = 1;
    IT0 = 1;
    IE0 = 1;
    IT1 = 1;
    TF1 = 1;
    RXD = 1;
    T0 = 1;
    INT0 = 1;
    INT1 = 1;
    T1 = 1;
    WR = 1;
    F8_4 = 1;
    P0_5 = 1;
    P0_6 = 1;
    P0_7 = 1;
  }
  return;
}


// ===== FUN_CODE_6736 @ CODE:6736 =====

void FUN_CODE_6736(void)

{
  FIFLG_5 = 1;
  if ((DAT_INTMEM_76 == '\x02') || (DAT_INTMEM_76 == '\x04')) {
    TXD = 1;
    FIFLG_0 = 1;
    FIFLG_1 = 1;
    FIFLG_2 = 1;
    FIFLG_3 = 1;
    FIFLG_4 = 1;
    FIFLG_5 = 1;
    FIFLG_6 = 1;
    FIFLG_7 = 1;
    IT0 = 1;
    IE0 = 1;
    IT1 = 1;
    TF1 = 1;
    RXD = 1;
    T0 = 1;
    INT0 = 1;
    INT1 = 1;
    T1 = 1;
    WR = 1;
    F8_4 = 1;
    P0_5 = 1;
    P0_6 = 1;
    P0_7 = 1;
  }
  return;
}


// ===== FUN_CODE_673a @ CODE:673a =====

void FUN_CODE_673a(void)

{
  FIFLG_6 = 1;
  if ((DAT_INTMEM_76 == '\x02') || (DAT_INTMEM_76 == '\x04')) {
    TXD = 1;
    FIFLG_0 = 1;
    FIFLG_1 = 1;
    FIFLG_2 = 1;
    FIFLG_3 = 1;
    FIFLG_4 = 1;
    FIFLG_5 = 1;
    FIFLG_6 = 1;
    FIFLG_7 = 1;
    IT0 = 1;
    IE0 = 1;
    IT1 = 1;
    TF1 = 1;
    RXD = 1;
    T0 = 1;
    INT0 = 1;
    INT1 = 1;
    T1 = 1;
    WR = 1;
    F8_4 = 1;
    P0_5 = 1;
    P0_6 = 1;
    P0_7 = 1;
  }
  return;
}


// ===== FUN_CODE_673e @ CODE:673e =====

void FUN_CODE_673e(void)

{
  FIFLG_7 = 1;
  if ((DAT_INTMEM_76 == '\x02') || (DAT_INTMEM_76 == '\x04')) {
    TXD = 1;
    FIFLG_0 = 1;
    FIFLG_1 = 1;
    FIFLG_2 = 1;
    FIFLG_3 = 1;
    FIFLG_4 = 1;
    FIFLG_5 = 1;
    FIFLG_6 = 1;
    FIFLG_7 = 1;
    IT0 = 1;
    IE0 = 1;
    IT1 = 1;
    TF1 = 1;
    RXD = 1;
    T0 = 1;
    INT0 = 1;
    INT1 = 1;
    T1 = 1;
    WR = 1;
    F8_4 = 1;
    P0_5 = 1;
    P0_6 = 1;
    P0_7 = 1;
  }
  return;
}


// ===== FUN_CODE_6742 @ CODE:6742 =====

void FUN_CODE_6742(void)

{
  IT0 = 1;
  if ((DAT_INTMEM_76 == '\x02') || (DAT_INTMEM_76 == '\x04')) {
    TXD = 1;
    FIFLG_0 = 1;
    FIFLG_1 = 1;
    FIFLG_2 = 1;
    FIFLG_3 = 1;
    FIFLG_4 = 1;
    FIFLG_5 = 1;
    FIFLG_6 = 1;
    FIFLG_7 = 1;
    IT0 = 1;
    IE0 = 1;
    IT1 = 1;
    TF1 = 1;
    RXD = 1;
    T0 = 1;
    INT0 = 1;
    INT1 = 1;
    T1 = 1;
    WR = 1;
    F8_4 = 1;
    P0_5 = 1;
    P0_6 = 1;
    P0_7 = 1;
  }
  return;
}


// ===== FUN_CODE_6746 @ CODE:6746 =====

void FUN_CODE_6746(void)

{
  IE0 = 1;
  if ((DAT_INTMEM_76 == '\x02') || (DAT_INTMEM_76 == '\x04')) {
    TXD = 1;
    FIFLG_0 = 1;
    FIFLG_1 = 1;
    FIFLG_2 = 1;
    FIFLG_3 = 1;
    FIFLG_4 = 1;
    FIFLG_5 = 1;
    FIFLG_6 = 1;
    FIFLG_7 = 1;
    IT0 = 1;
    IE0 = 1;
    IT1 = 1;
    TF1 = 1;
    RXD = 1;
    T0 = 1;
    INT0 = 1;
    INT1 = 1;
    T1 = 1;
    WR = 1;
    F8_4 = 1;
    P0_5 = 1;
    P0_6 = 1;
    P0_7 = 1;
  }
  return;
}


// ===== FUN_CODE_674a @ CODE:674a =====

void FUN_CODE_674a(void)

{
  IT1 = 1;
  if ((DAT_INTMEM_76 == '\x02') || (DAT_INTMEM_76 == '\x04')) {
    TXD = 1;
    FIFLG_0 = 1;
    FIFLG_1 = 1;
    FIFLG_2 = 1;
    FIFLG_3 = 1;
    FIFLG_4 = 1;
    FIFLG_5 = 1;
    FIFLG_6 = 1;
    FIFLG_7 = 1;
    IT0 = 1;
    IE0 = 1;
    IT1 = 1;
    TF1 = 1;
    RXD = 1;
    T0 = 1;
    INT0 = 1;
    INT1 = 1;
    T1 = 1;
    WR = 1;
    F8_4 = 1;
    P0_5 = 1;
    P0_6 = 1;
    P0_7 = 1;
  }
  return;
}


// ===== FUN_CODE_674e @ CODE:674e =====

void FUN_CODE_674e(void)

{
  TF1 = 1;
  if ((DAT_INTMEM_76 == '\x02') || (DAT_INTMEM_76 == '\x04')) {
    TXD = 1;
    FIFLG_0 = 1;
    FIFLG_1 = 1;
    FIFLG_2 = 1;
    FIFLG_3 = 1;
    FIFLG_4 = 1;
    FIFLG_5 = 1;
    FIFLG_6 = 1;
    FIFLG_7 = 1;
    IT0 = 1;
    IE0 = 1;
    IT1 = 1;
    TF1 = 1;
    RXD = 1;
    T0 = 1;
    INT0 = 1;
    INT1 = 1;
    T1 = 1;
    WR = 1;
    F8_4 = 1;
    P0_5 = 1;
    P0_6 = 1;
    P0_7 = 1;
  }
  return;
}


// ===== FUN_CODE_6752 @ CODE:6752 =====

void FUN_CODE_6752(void)

{
  RXD = 1;
  if ((DAT_INTMEM_76 == '\x02') || (DAT_INTMEM_76 == '\x04')) {
    TXD = 1;
    FIFLG_0 = 1;
    FIFLG_1 = 1;
    FIFLG_2 = 1;
    FIFLG_3 = 1;
    FIFLG_4 = 1;
    FIFLG_5 = 1;
    FIFLG_6 = 1;
    FIFLG_7 = 1;
    IT0 = 1;
    IE0 = 1;
    IT1 = 1;
    TF1 = 1;
    RXD = 1;
    T0 = 1;
    INT0 = 1;
    INT1 = 1;
    T1 = 1;
    WR = 1;
    F8_4 = 1;
    P0_5 = 1;
    P0_6 = 1;
    P0_7 = 1;
  }
  return;
}


// ===== FUN_CODE_6756 @ CODE:6756 =====

void FUN_CODE_6756(void)

{
  T0 = 1;
  if ((DAT_INTMEM_76 == '\x02') || (DAT_INTMEM_76 == '\x04')) {
    TXD = 1;
    FIFLG_0 = 1;
    FIFLG_1 = 1;
    FIFLG_2 = 1;
    FIFLG_3 = 1;
    FIFLG_4 = 1;
    FIFLG_5 = 1;
    FIFLG_6 = 1;
    FIFLG_7 = 1;
    IT0 = 1;
    IE0 = 1;
    IT1 = 1;
    TF1 = 1;
    RXD = 1;
    T0 = 1;
    INT0 = 1;
    INT1 = 1;
    T1 = 1;
    WR = 1;
    F8_4 = 1;
    P0_5 = 1;
    P0_6 = 1;
    P0_7 = 1;
  }
  return;
}


// ===== FUN_CODE_675a @ CODE:675a =====

void FUN_CODE_675a(void)

{
  INT0 = 1;
  if ((DAT_INTMEM_76 == '\x02') || (DAT_INTMEM_76 == '\x04')) {
    TXD = 1;
    FIFLG_0 = 1;
    FIFLG_1 = 1;
    FIFLG_2 = 1;
    FIFLG_3 = 1;
    FIFLG_4 = 1;
    FIFLG_5 = 1;
    FIFLG_6 = 1;
    FIFLG_7 = 1;
    IT0 = 1;
    IE0 = 1;
    IT1 = 1;
    TF1 = 1;
    RXD = 1;
    T0 = 1;
    INT0 = 1;
    INT1 = 1;
    T1 = 1;
    WR = 1;
    F8_4 = 1;
    P0_5 = 1;
    P0_6 = 1;
    P0_7 = 1;
  }
  return;
}


// ===== FUN_CODE_675e @ CODE:675e =====

void FUN_CODE_675e(void)

{
  INT1 = 1;
  if ((DAT_INTMEM_76 == '\x02') || (DAT_INTMEM_76 == '\x04')) {
    TXD = 1;
    FIFLG_0 = 1;
    FIFLG_1 = 1;
    FIFLG_2 = 1;
    FIFLG_3 = 1;
    FIFLG_4 = 1;
    FIFLG_5 = 1;
    FIFLG_6 = 1;
    FIFLG_7 = 1;
    IT0 = 1;
    IE0 = 1;
    IT1 = 1;
    TF1 = 1;
    RXD = 1;
    T0 = 1;
    INT0 = 1;
    INT1 = 1;
    T1 = 1;
    WR = 1;
    F8_4 = 1;
    P0_5 = 1;
    P0_6 = 1;
    P0_7 = 1;
  }
  return;
}


// ===== FUN_CODE_6762 @ CODE:6762 =====

void FUN_CODE_6762(void)

{
  T1 = 1;
  if ((DAT_INTMEM_76 == '\x02') || (DAT_INTMEM_76 == '\x04')) {
    TXD = 1;
    FIFLG_0 = 1;
    FIFLG_1 = 1;
    FIFLG_2 = 1;
    FIFLG_3 = 1;
    FIFLG_4 = 1;
    FIFLG_5 = 1;
    FIFLG_6 = 1;
    FIFLG_7 = 1;
    IT0 = 1;
    IE0 = 1;
    IT1 = 1;
    TF1 = 1;
    RXD = 1;
    T0 = 1;
    INT0 = 1;
    INT1 = 1;
    T1 = 1;
    WR = 1;
    F8_4 = 1;
    P0_5 = 1;
    P0_6 = 1;
    P0_7 = 1;
  }
  return;
}


// ===== FUN_CODE_6766 @ CODE:6766 =====

void FUN_CODE_6766(void)

{
  WR = 1;
  if ((DAT_INTMEM_76 == '\x02') || (DAT_INTMEM_76 == '\x04')) {
    TXD = 1;
    FIFLG_0 = 1;
    FIFLG_1 = 1;
    FIFLG_2 = 1;
    FIFLG_3 = 1;
    FIFLG_4 = 1;
    FIFLG_5 = 1;
    FIFLG_6 = 1;
    FIFLG_7 = 1;
    IT0 = 1;
    IE0 = 1;
    IT1 = 1;
    TF1 = 1;
    RXD = 1;
    T0 = 1;
    INT0 = 1;
    INT1 = 1;
    T1 = 1;
    WR = 1;
    F8_4 = 1;
    P0_5 = 1;
    P0_6 = 1;
    P0_7 = 1;
  }
  return;
}


// ===== FUN_CODE_676a @ CODE:676a =====

void FUN_CODE_676a(void)

{
  F8_4 = 1;
  if ((DAT_INTMEM_76 == '\x02') || (DAT_INTMEM_76 == '\x04')) {
    TXD = 1;
    FIFLG_0 = 1;
    FIFLG_1 = 1;
    FIFLG_2 = 1;
    FIFLG_3 = 1;
    FIFLG_4 = 1;
    FIFLG_5 = 1;
    FIFLG_6 = 1;
    FIFLG_7 = 1;
    IT0 = 1;
    IE0 = 1;
    IT1 = 1;
    TF1 = 1;
    RXD = 1;
    T0 = 1;
    INT0 = 1;
    INT1 = 1;
    T1 = 1;
    WR = 1;
    F8_4 = 1;
    P0_5 = 1;
    P0_6 = 1;
    P0_7 = 1;
  }
  return;
}


// ===== FUN_CODE_676e @ CODE:676e =====

void FUN_CODE_676e(void)

{
  P0_5 = 1;
  if ((DAT_INTMEM_76 == '\x02') || (DAT_INTMEM_76 == '\x04')) {
    TXD = 1;
    FIFLG_0 = 1;
    FIFLG_1 = 1;
    FIFLG_2 = 1;
    FIFLG_3 = 1;
    FIFLG_4 = 1;
    FIFLG_5 = 1;
    FIFLG_6 = 1;
    FIFLG_7 = 1;
    IT0 = 1;
    IE0 = 1;
    IT1 = 1;
    TF1 = 1;
    RXD = 1;
    T0 = 1;
    INT0 = 1;
    INT1 = 1;
    T1 = 1;
    WR = 1;
    F8_4 = 1;
    P0_5 = 1;
    P0_6 = 1;
    P0_7 = 1;
  }
  return;
}


// ===== FUN_CODE_6772 @ CODE:6772 =====

void FUN_CODE_6772(void)

{
  P0_6 = 1;
  if ((DAT_INTMEM_76 == '\x02') || (DAT_INTMEM_76 == '\x04')) {
    TXD = 1;
    FIFLG_0 = 1;
    FIFLG_1 = 1;
    FIFLG_2 = 1;
    FIFLG_3 = 1;
    FIFLG_4 = 1;
    FIFLG_5 = 1;
    FIFLG_6 = 1;
    FIFLG_7 = 1;
    IT0 = 1;
    IE0 = 1;
    IT1 = 1;
    TF1 = 1;
    RXD = 1;
    T0 = 1;
    INT0 = 1;
    INT1 = 1;
    T1 = 1;
    WR = 1;
    F8_4 = 1;
    P0_5 = 1;
    P0_6 = 1;
    P0_7 = 1;
  }
  return;
}


// ===== FUN_CODE_6776 @ CODE:6776 =====

void FUN_CODE_6776(void)

{
  P0_7 = 1;
  if ((DAT_INTMEM_76 == '\x02') || (DAT_INTMEM_76 == '\x04')) {
    TXD = 1;
    FIFLG_0 = 1;
    FIFLG_1 = 1;
    FIFLG_2 = 1;
    FIFLG_3 = 1;
    FIFLG_4 = 1;
    FIFLG_5 = 1;
    FIFLG_6 = 1;
    FIFLG_7 = 1;
    IT0 = 1;
    IE0 = 1;
    IT1 = 1;
    TF1 = 1;
    RXD = 1;
    T0 = 1;
    INT0 = 1;
    INT1 = 1;
    T1 = 1;
    WR = 1;
    F8_4 = 1;
    P0_5 = 1;
    P0_6 = 1;
    P0_7 = 1;
  }
  return;
}


// ===== FUN_CODE_6b90 @ CODE:6b90 =====

byte FUN_CODE_6b90(void)

{
  char cVar1;
  byte bVar2;
  byte bVar3;
  
  cVar1 = BANK1_R3;
  DAT_EXTMEM_032a = DAT_SFR_92;
  if (DAT_EXTMEM_032a == 0) {
    DAT_EXTMEM_032b = DPX;
    if (DAT_EXTMEM_032b == 0) {
      return 0;
    }
    if ((DAT_EXTMEM_032b >> 6 & 1) != 0) {
      bVar3 = DPX;
      DPX = bVar3 & 0xbf;
      bVar3 = DAT_SFR_9a;
      DAT_SFR_9a = bVar3 | 1;
      return DAT_EXTMEM_032b;
    }
    if ((DAT_EXTMEM_032b >> 5 & 1) != 0) {
      bVar3 = DPX;
      DPX = bVar3 & 0xdf;
      return DAT_EXTMEM_032b;
    }
    if ((DAT_EXTMEM_032b >> 4 & 1) == 0) {
      if ((DAT_EXTMEM_032b >> 2 & 1) != 0) {
        bVar3 = DPX;
        DPX = bVar3 & 0xfb;
        return DAT_EXTMEM_032b;
      }
      if ((DAT_EXTMEM_032b >> 1 & 1) == 0) {
        if ((DAT_EXTMEM_032b & 1) == 0) {
          return DAT_EXTMEM_032b;
        }
        bVar3 = DPX;
        DPX = bVar3 & 0xfe;
        bVar3 = FUN_CODE_7cca();
        return bVar3;
      }
      bVar3 = DPX;
      DPX = bVar3 & 0xfd;
      return DAT_EXTMEM_032b;
    }
    bVar3 = DPX;
    DPX = bVar3 & 0xef;
    bVar3 = FUN_CODE_4e01();
LAB_CODE_6d08:
    bVar2 = DAT_SFR_92;
    DAT_SFR_92 = bVar2 & 0xbf;
    bVar2 = HADDR;
    HADDR = bVar2 | 1;
    return bVar3;
  }
  if ((DAT_EXTMEM_032a >> 3 & 1) != 1) {
    bVar3 = DAT_SFR_92;
    DAT_SFR_92 = bVar3 & 0xe7;
    bVar3 = DAT_SFR_92;
    DAT_SFR_92 = bVar3 & 0x9f;
    if ((char)DAT_EXTMEM_032a < '\0') {
      bVar3 = DAT_SFR_92;
      DAT_SFR_92 = bVar3 & 0x7f;
      return DAT_EXTMEM_032a;
    }
    if ((DAT_EXTMEM_032a >> 4 & 1) != 0) {
      bVar3 = FUN_CODE_7956();
      return bVar3;
    }
    if ((DAT_EXTMEM_032a >> 2 & 1) != 0) {
      bVar3 = DAT_SFR_92;
      DAT_SFR_92 = bVar3 & 0xfb;
      return DAT_EXTMEM_032a;
    }
    if ((DAT_EXTMEM_032a >> 1 & 1) != 0) {
      bVar3 = DAT_SFR_92;
      DAT_SFR_92 = bVar3 & 0xfd;
      bVar3 = FUN_CODE_8201();
      return bVar3;
    }
    if ((DAT_EXTMEM_032a & 1) == 0) {
      return DAT_EXTMEM_032a;
    }
    bVar3 = DAT_SFR_92;
    DAT_SFR_92 = bVar3 & 0xfe;
    bVar3 = DAT_SFR_91;
    DAT_SFR_91 = bVar3 | 0x20;
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    bVar3 = DAT_SFR_91;
    DAT_SFR_91 = bVar3 & 0xdf;
    bVar3 = FUN_CODE_81d9();
    goto LAB_CODE_6d08;
  }
  bVar3 = DAT_SFR_92;
  DAT_SFR_92 = bVar3 & 0xf7;
  _3_7 = 1;
  DAT_INTMEM_5d = DAT_INTMEM_5d + '\x01';
  if (DAT_INTMEM_5d == -1) {
    DAT_INTMEM_5d = '\0';
  }
  if ((_3_6 != '\0') || (DAT_INTMEM_7b != '\x02')) goto LAB_CODE_6c4b;
  DAT_INTMEM_7c = DAT_INTMEM_7c + 1;
  if (5 < DAT_INTMEM_7c) {
    DAT_INTMEM_7c = 0;
    if (_3_1 == '\x01') {
      if (DAT_INTMEM_7e == 0xfe) {
        if ((DAT_INTMEM_7d + 1U < 6) << 7 < '\0') {
LAB_CODE_6c2e:
          DAT_INTMEM_7d = DAT_INTMEM_7d + '\x01';
          DAT_INTMEM_7e = DAT_INTMEM_7e + 1;
        }
        else {
          DAT_INTMEM_7d = '\0';
        }
      }
      else if (0xfa < DAT_INTMEM_7e) {
        if ((DAT_INTMEM_7d + 1U < 3) << 7 < '\0') goto LAB_CODE_6c2e;
        DAT_INTMEM_7d = '\0';
      }
      if ((DAT_INTMEM_7e < 2) << 7 < '\0') {
        _3_1 = '\0';
      }
      else {
        DAT_INTMEM_7e = DAT_INTMEM_7e - 1;
      }
    }
    else {
      if (DAT_INTMEM_7e == 0xfe) {
        if ((DAT_INTMEM_7d + 1U < 6) << 7 < '\0') {
LAB_CODE_6bf6:
          DAT_INTMEM_7d = DAT_INTMEM_7d + '\x01';
          DAT_INTMEM_7e = DAT_INTMEM_7e - 1;
        }
        else {
          DAT_INTMEM_7d = '\0';
        }
      }
      else if (0xfa < DAT_INTMEM_7e) {
        if ((DAT_INTMEM_7d + 1U < 3) << 7 < '\0') goto LAB_CODE_6bf6;
        DAT_INTMEM_7d = '\0';
      }
      DAT_INTMEM_7e = DAT_INTMEM_7e + 1;
      if (DAT_INTMEM_7e == 0xff) {
        DAT_INTMEM_7e = 0xfe;
        _3_1 = '\x01';
      }
    }
  }
  DAT_EXTMEM_ff94 = 8;
  DAT_EXTMEM_ffb4 = DAT_INTMEM_7e;
LAB_CODE_6c4b:
  if (_2_7 != '\0') {
    DAT_INTMEM_79 = DAT_INTMEM_79 + 1;
    if (DAT_INTMEM_79 == 0) {
      DAT_INTMEM_78 = DAT_INTMEM_78 + 1;
    }
    if (0xbU - (((DAT_INTMEM_79 < 0xb9) << 7) >> 7) <= DAT_INTMEM_78) {
      _2_7 = '\0';
      DAT_INTMEM_78 = 0;
      DAT_INTMEM_79 = 0;
      _3_3 = 1;
    }
  }
  if ((BANK1_R3 != '\0' || BANK1_R2 != '\0') && (BANK1_R3 = BANK1_R3 + -1, cVar1 == '\0')) {
    BANK1_R2 = BANK1_R2 + -1;
  }
  bVar3 = 1 - (((BANK2_R5 < 0xf4) << 7) >> 7);
  bVar2 = BANK2_R4 - bVar3;
  if (bVar3 <= BANK2_R4) {
    if (_4_0 != '\x01') {
      _3_7 = 1;
      return bVar2;
    }
    _4_0 = 0;
    bVar3 = IEN0;
    IEN0 = bVar3 | 1;
    return bVar2;
  }
  BANK2_R5 = BANK2_R5 + 1;
  if (BANK2_R5 == 0) {
    BANK2_R4 = BANK2_R4 + 1;
  }
  return BANK2_R5;
}


// ===== FUN_CODE_6d2e @ CODE:6d2e =====

void FUN_CODE_6d2e(void)

{
  byte bVar1;
  byte bVar2;
  
  if (DAT_INTMEM_76 == '\x10') {
    bVar1 = 0;
    do {
      *(undefined1 *)(ushort)bVar1 =
           *(undefined1 *)CONCAT11((char)((ushort)bVar1 * 3 >> 8) + -0x46,(char)((ushort)bVar1 * 3))
      ;
      bVar2 = (byte)((ushort)bVar1 * 3);
      *(undefined1 *)CONCAT11(-(((0x6a < bVar1) << 7) >> 7),bVar1 + 0x95) =
           *(undefined1 *)
            CONCAT11((char)((ushort)bVar1 * 3 >> 8) + (-0x46 - (((0xfe < bVar2) << 7) >> 7)),
                     bVar2 + 1);
      bVar2 = (byte)((ushort)bVar1 * 3);
      *(undefined1 *)CONCAT11('\x01' - (((0xd5 < bVar1) << 7) >> 7),bVar1 + 0x2a) =
           *(undefined1 *)
            CONCAT11((char)((ushort)bVar1 * 3 >> 8) + (-0x46 - (((0xfd < bVar2) << 7) >> 7)),
                     bVar2 + 2);
      bVar1 = bVar1 + 1;
    } while (bVar1 != 0x8a);
    return;
  }
  if (DAT_INTMEM_76 == '\x11') {
    bVar1 = 0;
    do {
      *(undefined1 *)(ushort)bVar1 =
           *(undefined1 *)CONCAT11((char)((ushort)bVar1 * 3 >> 8) + -0x44,(char)((ushort)bVar1 * 3))
      ;
      bVar2 = (byte)((ushort)bVar1 * 3);
      *(undefined1 *)CONCAT11(-(((0x6a < bVar1) << 7) >> 7),bVar1 + 0x95) =
           *(undefined1 *)
            CONCAT11((char)((ushort)bVar1 * 3 >> 8) + (-0x44 - (((0xfe < bVar2) << 7) >> 7)),
                     bVar2 + 1);
      bVar2 = (byte)((ushort)bVar1 * 3);
      *(undefined1 *)CONCAT11('\x01' - (((0xd5 < bVar1) << 7) >> 7),bVar1 + 0x2a) =
           *(undefined1 *)
            CONCAT11((char)((ushort)bVar1 * 3 >> 8) + (-0x44 - (((0xfd < bVar2) << 7) >> 7)),
                     bVar2 + 2);
      bVar1 = bVar1 + 1;
    } while (bVar1 != 0x8a);
    return;
  }
  if (DAT_INTMEM_76 == '\x12') {
    bVar1 = 0;
    do {
      *(undefined1 *)(ushort)bVar1 =
           *(undefined1 *)CONCAT11((char)((ushort)bVar1 * 3 >> 8) + -0x42,(char)((ushort)bVar1 * 3))
      ;
      bVar2 = (byte)((ushort)bVar1 * 3);
      *(undefined1 *)CONCAT11(-(((0x6a < bVar1) << 7) >> 7),bVar1 + 0x95) =
           *(undefined1 *)
            CONCAT11((char)((ushort)bVar1 * 3 >> 8) + (-0x42 - (((0xfe < bVar2) << 7) >> 7)),
                     bVar2 + 1);
      bVar2 = (byte)((ushort)bVar1 * 3);
      *(undefined1 *)CONCAT11('\x01' - (((0xd5 < bVar1) << 7) >> 7),bVar1 + 0x2a) =
           *(undefined1 *)
            CONCAT11((char)((ushort)bVar1 * 3 >> 8) + (-0x42 - (((0xfd < bVar2) << 7) >> 7)),
                     bVar2 + 2);
      bVar1 = bVar1 + 1;
    } while (bVar1 != 0x8a);
    return;
  }
  if (DAT_INTMEM_76 == '\x13') {
    bVar1 = 0;
    do {
      *(undefined1 *)(ushort)bVar1 =
           *(undefined1 *)CONCAT11((char)((ushort)bVar1 * 3 >> 8) + -0x40,(char)((ushort)bVar1 * 3))
      ;
      bVar2 = (byte)((ushort)bVar1 * 3);
      *(undefined1 *)CONCAT11(-(((0x6a < bVar1) << 7) >> 7),bVar1 + 0x95) =
           *(undefined1 *)
            CONCAT11((char)((ushort)bVar1 * 3 >> 8) + (-0x40 - (((0xfe < bVar2) << 7) >> 7)),
                     bVar2 + 1);
      bVar2 = (byte)((ushort)bVar1 * 3);
      *(undefined1 *)CONCAT11('\x01' - (((0xd5 < bVar1) << 7) >> 7),bVar1 + 0x2a) =
           *(undefined1 *)
            CONCAT11((char)((ushort)bVar1 * 3 >> 8) + (-0x40 - (((0xfd < bVar2) << 7) >> 7)),
                     bVar2 + 2);
      bVar1 = bVar1 + 1;
    } while (bVar1 != 0x8a);
  }
  return;
}


// ===== FUN_CODE_6ec8 @ CODE:6ec8 =====

void FUN_CODE_6ec8(void)

{
  byte bVar1;
  char cVar2;
  byte bVar3;
  byte *pbVar4;
  
  if ((_5_0 != '\0') && (DAT_EXTMEM_029f == 0x65)) {
    return;
  }
  if (((DAT_EXTMEM_029f & 0xf0) == 0xe0) && (DAT_EXTMEM_02a2 != '\x04')) {
    _0_2 = 1;
    FUN_CODE_7d45();
    return;
  }
  if (_0_0 == '\x01') {
    if (_4_7 != '\x01') {
      DAT_INTMEM_3b = 0;
      while( true ) {
        if (*(char *)CONCAT11('\x02' - (((0xfd < DAT_INTMEM_3b) << 7) >> 7),DAT_INTMEM_3b + 2) ==
            '\0') {
          *(byte *)CONCAT11('\x02' - (((0xfd < DAT_INTMEM_3b) << 7) >> 7),DAT_INTMEM_3b + 2) =
               DAT_EXTMEM_029f;
          _0_2 = 1;
        }
        if (*(byte *)CONCAT11('\x02' - (((0xfd < DAT_INTMEM_3b) << 7) >> 7),DAT_INTMEM_3b + 2) ==
            DAT_EXTMEM_029f) break;
        DAT_INTMEM_3b = DAT_INTMEM_3b + 1;
        if (DAT_INTMEM_3b == 6) {
          return;
        }
      }
      return;
    }
    if ((DAT_EXTMEM_029f != 0xff) && (DAT_EXTMEM_029f < 0x66)) {
      DAT_INTMEM_3b = 1;
      cVar2 = BANK0_R6 + '\x01';
      while (cVar2 = cVar2 + -1, cVar2 != '\0') {
        DAT_INTMEM_3b = DAT_INTMEM_3b << 1;
      }
      pbVar4 = (byte *)CONCAT11('\x02' - (((0xfe < DAT_EXTMEM_029f >> 3) << 7) >> 7),
                                (DAT_EXTMEM_029f >> 3) + 1);
      *pbVar4 = *pbVar4 | DAT_INTMEM_3b;
      _0_2 = 1;
    }
    if (DAT_EXTMEM_029f == 0x85) {
      DAT_EXTMEM_020e = DAT_EXTMEM_020e | 1;
      _0_2 = 1;
    }
    if (DAT_EXTMEM_029f != 0x87) {
      return;
    }
    DAT_EXTMEM_020e = DAT_EXTMEM_020e | 2;
  }
  else {
    if (_4_7 != '\x01') {
      DAT_INTMEM_3b = 0;
      do {
        if (*(byte *)CONCAT11('\x02' - (((0xfd < DAT_INTMEM_3b) << 7) >> 7),DAT_INTMEM_3b + 2) ==
            DAT_EXTMEM_029f) {
          bVar3 = DAT_INTMEM_3b;
          if (DAT_INTMEM_3b < 5) {
            for (; bVar3 < 5; bVar3 = bVar3 + 1) {
              *(undefined1 *)CONCAT11('\x02' - (((0xfd < bVar3) << 7) >> 7),bVar3 + 2) =
                   *(undefined1 *)CONCAT11('\x02' - (((0xfc < bVar3) << 7) >> 7),bVar3 + 3);
            }
          }
          DAT_EXTMEM_0207 = 0;
          _0_2 = 1;
        }
        DAT_INTMEM_3b = DAT_INTMEM_3b + 1;
      } while (DAT_INTMEM_3b != 6);
      return;
    }
    if ((DAT_EXTMEM_029f != 0xff) && (DAT_EXTMEM_029f < 0x66)) {
      DAT_INTMEM_3b = 1;
      cVar2 = BANK0_R6 + '\x01';
      while (cVar2 = cVar2 + -1, cVar2 != '\0') {
        DAT_INTMEM_3b = DAT_INTMEM_3b << 1;
      }
      bVar1 = DAT_EXTMEM_029f >> 3;
      bVar3 = *(byte *)CONCAT11('\x02' - (((0xfe < bVar1) << 7) >> 7),bVar1 + 1);
      if ((bVar3 & DAT_INTMEM_3b) != 0) {
        *(byte *)CONCAT11('\x02' - (((0xfe < bVar1) << 7) >> 7),bVar1 + 1) = bVar3 & ~DAT_INTMEM_3b;
      }
      _0_2 = 1;
    }
    if (DAT_EXTMEM_029f == 0x85) {
      DAT_EXTMEM_020e = DAT_EXTMEM_020e & 0xfe;
      _0_2 = 1;
    }
    if (DAT_EXTMEM_029f != 0x87) {
      return;
    }
    DAT_EXTMEM_020e = DAT_EXTMEM_020e & 0xfd;
  }
  _0_2 = 1;
  return;
}


// ===== FUN_CODE_7050 @ CODE:7050 =====

void FUN_CODE_7050(void)

{
  byte bVar1;
  
  EA = 0;
  IEN1 = 0;
  _3_6 = 0;
  DAT_EXTMEM_0321 = 0;
  FUN_CODE_79d2();
  DAT_EXTMEM_ff94 = '\0';
  F8_7 = 0;
  DAT_EXTMEM_ff95 = 0;
  RD = 1;
  bVar1 = IEN0;
  IEN0 = bVar1 & 0xfe;
  bVar1 = RXFLG;
  RXFLG = bVar1 | 0x7f;
  bVar1 = CCAP3L;
  CCAP3L = bVar1 | 0x7f;
  RXCNTH = 0xff;
  DAT_SFR_ef = 0xff;
  bVar1 = RXCNTL;
  RXCNTL = bVar1 | 0x87;
  bVar1 = CCAP4L;
  CCAP4L = bVar1 | 0x87;
  bVar1 = EPCON;
  EPCON = bVar1 | 0xe0;
  bVar1 = CL;
  CL = bVar1 | 0xe0;
  bVar1 = PSW1;
  PSW1 = bVar1 | 0x10;
  bVar1 = CMOD;
  CMOD = bVar1 | 0x10;
  bVar1 = P3;
  P3 = bVar1 & 0x80;
  FIFLG = 0;
  bVar1 = TCON;
  TCON = bVar1 & 0x78;
  bVar1 = P0;
  P0 = bVar1 & 0x1f;
  bVar1 = DAT_SFR_f8;
  DAT_SFR_f8 = bVar1 & 0xef;
  if (_3_4 == '\0') {
    bVar1 = IEN0;
    IEN0 = bVar1 & 0xfd;
    DAT_SFR_ba = 0;
  }
  else {
    _5_2 = '\0';
    bVar1 = IEN0;
    IEN0 = bVar1 | 2;
    DAT_SFR_ba = 0xf3;
  }
  bVar1 = DAT_SFR_91;
  DAT_SFR_91 = bVar1 | 1;
  bVar1 = IPL1;
  IPL1 = bVar1 & 0xfb;
  bVar1 = DAT_SFR_bc;
  DAT_SFR_bc = bVar1 & 0xfe;
  bVar1 = DAT_SFR_bc;
  DAT_SFR_bc = bVar1 & 0xfd;
  bVar1 = DAT_SFR_94;
  DAT_SFR_94 = bVar1 | 0x85;
  bVar1 = DAT_SFR_92;
  DAT_SFR_92 = bVar1 & 0x7a;
  bVar1 = SADDR;
  SADDR = bVar1 | 1;
  EA = 1;
  DAT_SFR_8e = 0x55;
  bVar1 = PCON;
  PCON = bVar1 | 2;
  nop();
  nop();
  nop();
  nop();
  nop();
  EA = 0;
  bVar1 = IPL1;
  IPL1 = bVar1 | 8;
  bVar1 = DAT_SFR_bc;
  DAT_SFR_bc = bVar1 | 2;
  FUN_CODE_7e37(0,0,0x14);
  IEN1 = 0;
  DAT_SFR_bc = 3;
  IPL1 = 0xc;
  bVar1 = DAT_SFR_92;
  DAT_SFR_92 = bVar1 & 0xfd;
  if (_5_2 == '\0') {
    bVar1 = DAT_SFR_91;
    DAT_SFR_91 = bVar1 & 0xfe;
  }
  else {
    _5_2 = '\0';
    bVar1 = DAT_SFR_91;
    DAT_SFR_91 = bVar1 & 0xfe;
    bVar1 = DAT_SFR_91;
    DAT_SFR_91 = bVar1 | 2;
    FUN_CODE_7e37(0,0x13,0x88);
  }
  DAT_SFR_94 = 0x5f;
  bVar1 = IEN0;
  IEN0 = bVar1 & 0xfd;
  DAT_SFR_ba = 0;
  if (DAT_INTMEM_7b == '\0') {
    DAT_EXTMEM_ff94 = DAT_INTMEM_7b;
    F8_7 = 1;
  }
  else if (DAT_INTMEM_7b == '\x01') {
    DAT_EXTMEM_ff94 = '\0';
    F8_7 = 0;
  }
  if (DAT_INTMEM_7a == '\x04') {
    DAT_EXTMEM_ff95 = 0;
    RD = 0;
  }
  else if (DAT_INTMEM_7a == '\x03') {
    DAT_EXTMEM_ff95 = 8;
    DAT_EXTMEM_ffb5 = 0x80;
  }
  else if (DAT_INTMEM_7a == '\x02') {
    DAT_EXTMEM_ff95 = 8;
    DAT_EXTMEM_ffb5 = 0xe6;
  }
  else if (DAT_INTMEM_7a == '\x01') {
    DAT_EXTMEM_ff95 = 8;
    DAT_EXTMEM_ffb5 = 0xfa;
  }
  else if (DAT_INTMEM_7a == '\0') {
    FUN_CODE_79d2();
  }
  bVar1 = IEN0;
  IEN0 = bVar1 | 1;
  EA = 1;
  return;
}


// ===== FUN_CODE_7173 @ CODE:7173 =====

void FUN_CODE_7173(byte param_1)

{
  byte bVar1;
  
  bVar1 = RXFLG;
  RXFLG = bVar1 & 0x80;
  bVar1 = CCAP3L;
  CCAP3L = bVar1 | 0x7f;
  RXCNTH = 0;
  DAT_SFR_ef = 0xff;
  bVar1 = RXCNTL;
  RXCNTL = bVar1 & 0x78;
  bVar1 = CCAP4L;
  CCAP4L = bVar1 | 0x87;
  bVar1 = EPCON;
  EPCON = bVar1 & 0x1f;
  bVar1 = CL;
  CL = bVar1 | 0xe0;
  bVar1 = PSW1;
  PSW1 = bVar1 & 0xef;
  bVar1 = CMOD;
  CMOD = bVar1 | 0x10;
  if (0x16 < param_1) {
    FUN_CODE_7e37(0,1);
    return;
  }
                    /* WARNING: Could not recover jumptable at 0x71a0. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (*(thunk_FUN_CODE_71e6 + param_1 * '\x03'))();
  return;
}


// ===== thunk_FUN_CODE_71e6 @ CODE:71a1 =====

void thunk_FUN_CODE_71e6(void)

{
  byte bVar1;
  
  bVar1 = RXFLG;
  RXFLG = bVar1 | 2;
  TXD = 0;
  FUN_CODE_7e37(0,1);
  return;
}


// ===== thunk_FUN_CODE_71ee @ CODE:71a4 =====

void thunk_FUN_CODE_71ee(void)

{
  byte bVar1;
  
  bVar1 = RXCNTH;
  RXCNTH = bVar1 | 1;
  FIFLG_0 = 0;
  FUN_CODE_7e37(0,1);
  return;
}


// ===== thunk_FUN_CODE_71f6 @ CODE:71a7 =====

void thunk_FUN_CODE_71f6(void)

{
  byte bVar1;
  
  bVar1 = RXCNTH;
  RXCNTH = bVar1 | 2;
  FIFLG_1 = 0;
  FUN_CODE_7e37(0,1);
  return;
}


// ===== thunk_FUN_CODE_71fe @ CODE:71aa =====

void thunk_FUN_CODE_71fe(void)

{
  byte bVar1;
  
  bVar1 = RXCNTH;
  RXCNTH = bVar1 | 4;
  FIFLG_2 = 0;
  FUN_CODE_7e37(0,1);
  return;
}


// ===== thunk_FUN_CODE_7206 @ CODE:71ad =====

void thunk_FUN_CODE_7206(void)

{
  byte bVar1;
  
  bVar1 = RXCNTH;
  RXCNTH = bVar1 | 8;
  FIFLG_3 = 0;
  FUN_CODE_7e37(0,1);
  return;
}


// ===== thunk_FUN_CODE_720d @ CODE:71b0 =====

void thunk_FUN_CODE_720d(void)

{
  byte bVar1;
  
  bVar1 = RXCNTH;
  RXCNTH = bVar1 | 0x10;
  FIFLG_4 = 0;
  FUN_CODE_7e37(0,1);
  return;
}


// ===== thunk_FUN_CODE_7214 @ CODE:71b3 =====

void thunk_FUN_CODE_7214(void)

{
  byte bVar1;
  
  bVar1 = RXCNTH;
  RXCNTH = bVar1 | 0x20;
  FIFLG_5 = 0;
  FUN_CODE_7e37(0,1);
  return;
}


// ===== thunk_FUN_CODE_721b @ CODE:71b6 =====

void thunk_FUN_CODE_721b(void)

{
  byte bVar1;
  
  bVar1 = RXCNTH;
  RXCNTH = bVar1 | 0x40;
  FIFLG_6 = 0;
  FUN_CODE_7e37(0,1);
  return;
}


// ===== thunk_FUN_CODE_7222 @ CODE:71b9 =====

void thunk_FUN_CODE_7222(void)

{
  byte bVar1;
  
  bVar1 = RXCNTH;
  RXCNTH = bVar1 | 0x80;
  FIFLG_7 = 0;
  FUN_CODE_7e37(0,1);
  return;
}


// ===== thunk_FUN_CODE_7229 @ CODE:71bc =====

void thunk_FUN_CODE_7229(void)

{
  byte bVar1;
  
  bVar1 = RXCNTL;
  RXCNTL = bVar1 | 1;
  IT0 = 0;
  FUN_CODE_7e37(0,1);
  return;
}


// ===== thunk_FUN_CODE_7230 @ CODE:71bf =====

void thunk_FUN_CODE_7230(void)

{
  byte bVar1;
  
  bVar1 = RXCNTL;
  RXCNTL = bVar1 | 2;
  IE0 = 0;
  FUN_CODE_7e37(0,1);
  return;
}


// ===== thunk_FUN_CODE_7237 @ CODE:71c2 =====

void thunk_FUN_CODE_7237(void)

{
  byte bVar1;
  
  bVar1 = RXCNTL;
  RXCNTL = bVar1 | 4;
  IT1 = 0;
  FUN_CODE_7e37(0,1);
  return;
}


// ===== thunk_FUN_CODE_723e @ CODE:71c5 =====

void thunk_FUN_CODE_723e(void)

{
  byte bVar1;
  
  bVar1 = RXCNTL;
  RXCNTL = bVar1 | 0x80;
  TF1 = 0;
  FUN_CODE_7e37(0,1);
  return;
}


// ===== thunk_FUN_CODE_7245 @ CODE:71c8 =====

void thunk_FUN_CODE_7245(void)

{
  byte bVar1;
  
  bVar1 = RXFLG;
  RXFLG = bVar1 | 1;
  RXD = 0;
  FUN_CODE_7e37(0,1);
  return;
}


// ===== thunk_FUN_CODE_724c @ CODE:71cb =====

void thunk_FUN_CODE_724c(void)

{
  byte bVar1;
  
  bVar1 = RXFLG;
  RXFLG = bVar1 | 0x10;
  T0 = 0;
  FUN_CODE_7e37(0,1);
  return;
}


// ===== thunk_FUN_CODE_7253 @ CODE:71ce =====

void thunk_FUN_CODE_7253(void)

{
  byte bVar1;
  
  bVar1 = RXFLG;
  RXFLG = bVar1 | 4;
  INT0 = 0;
  FUN_CODE_7e37(0,1);
  return;
}


// ===== thunk_FUN_CODE_725a @ CODE:71d1 =====

void thunk_FUN_CODE_725a(void)

{
  byte bVar1;
  
  bVar1 = RXFLG;
  RXFLG = bVar1 | 8;
  INT1 = 0;
  FUN_CODE_7e37(0,1);
  return;
}


// ===== thunk_FUN_CODE_7261 @ CODE:71d4 =====

void thunk_FUN_CODE_7261(void)

{
  byte bVar1;
  
  bVar1 = RXFLG;
  RXFLG = bVar1 | 0x20;
  T1 = 0;
  FUN_CODE_7e37(0,1);
  return;
}


// ===== thunk_FUN_CODE_7268 @ CODE:71d7 =====

void thunk_FUN_CODE_7268(void)

{
  byte bVar1;
  
  bVar1 = RXFLG;
  RXFLG = bVar1 | 0x40;
  WR = 0;
  FUN_CODE_7e37(0,1);
  return;
}


// ===== thunk_FUN_CODE_726f @ CODE:71da =====

void thunk_FUN_CODE_726f(void)

{
  byte bVar1;
  
  bVar1 = PSW1;
  PSW1 = bVar1 | 0x10;
  F8_4 = 0;
  FUN_CODE_7e37(0,1);
  return;
}


// ===== thunk_FUN_CODE_7276 @ CODE:71dd =====

void thunk_FUN_CODE_7276(void)

{
  byte bVar1;
  
  bVar1 = EPCON;
  EPCON = bVar1 | 0x20;
  P0_5 = 0;
  FUN_CODE_7e37(0,1);
  return;
}


// ===== thunk_FUN_CODE_727d @ CODE:71e0 =====

void thunk_FUN_CODE_727d(void)

{
  byte bVar1;
  
  bVar1 = EPCON;
  EPCON = bVar1 | 0x40;
  P0_6 = 0;
  FUN_CODE_7e37(0,1);
  return;
}


// ===== thunk_FUN_CODE_7284 @ CODE:71e3 =====

void thunk_FUN_CODE_7284(void)

{
  byte bVar1;
  
  bVar1 = EPCON;
  EPCON = bVar1 | 0x80;
  P0_7 = 0;
  FUN_CODE_7e37(0,1);
  return;
}


// ===== FUN_CODE_71e6 @ CODE:71e6 =====

void FUN_CODE_71e6(void)

{
  byte bVar1;
  
  bVar1 = RXFLG;
  RXFLG = bVar1 | 2;
  TXD = 0;
  FUN_CODE_7e37(0,1);
  return;
}


// ===== FUN_CODE_71ee @ CODE:71ee =====

void FUN_CODE_71ee(void)

{
  byte bVar1;
  
  bVar1 = RXCNTH;
  RXCNTH = bVar1 | 1;
  FIFLG_0 = 0;
  FUN_CODE_7e37(0,1);
  return;
}


// ===== FUN_CODE_71f6 @ CODE:71f6 =====

void FUN_CODE_71f6(void)

{
  byte bVar1;
  
  bVar1 = RXCNTH;
  RXCNTH = bVar1 | 2;
  FIFLG_1 = 0;
  FUN_CODE_7e37(0,1);
  return;
}


// ===== FUN_CODE_71fe @ CODE:71fe =====

void FUN_CODE_71fe(void)

{
  byte bVar1;
  
  bVar1 = RXCNTH;
  RXCNTH = bVar1 | 4;
  FIFLG_2 = 0;
  FUN_CODE_7e37(0,1);
  return;
}


// ===== FUN_CODE_7206 @ CODE:7206 =====

void FUN_CODE_7206(void)

{
  byte bVar1;
  
  bVar1 = RXCNTH;
  RXCNTH = bVar1 | 8;
  FIFLG_3 = 0;
  FUN_CODE_7e37(0,1);
  return;
}


// ===== FUN_CODE_720d @ CODE:720d =====

void FUN_CODE_720d(void)

{
  byte bVar1;
  
  bVar1 = RXCNTH;
  RXCNTH = bVar1 | 0x10;
  FIFLG_4 = 0;
  FUN_CODE_7e37(0,1);
  return;
}


// ===== FUN_CODE_7214 @ CODE:7214 =====

void FUN_CODE_7214(void)

{
  byte bVar1;
  
  bVar1 = RXCNTH;
  RXCNTH = bVar1 | 0x20;
  FIFLG_5 = 0;
  FUN_CODE_7e37(0,1);
  return;
}


// ===== FUN_CODE_721b @ CODE:721b =====

void FUN_CODE_721b(void)

{
  byte bVar1;
  
  bVar1 = RXCNTH;
  RXCNTH = bVar1 | 0x40;
  FIFLG_6 = 0;
  FUN_CODE_7e37(0,1);
  return;
}


// ===== FUN_CODE_7222 @ CODE:7222 =====

void FUN_CODE_7222(void)

{
  byte bVar1;
  
  bVar1 = RXCNTH;
  RXCNTH = bVar1 | 0x80;
  FIFLG_7 = 0;
  FUN_CODE_7e37(0,1);
  return;
}


// ===== FUN_CODE_7229 @ CODE:7229 =====

void FUN_CODE_7229(void)

{
  byte bVar1;
  
  bVar1 = RXCNTL;
  RXCNTL = bVar1 | 1;
  IT0 = 0;
  FUN_CODE_7e37(0,1);
  return;
}


// ===== FUN_CODE_7230 @ CODE:7230 =====

void FUN_CODE_7230(void)

{
  byte bVar1;
  
  bVar1 = RXCNTL;
  RXCNTL = bVar1 | 2;
  IE0 = 0;
  FUN_CODE_7e37(0,1);
  return;
}


// ===== FUN_CODE_7237 @ CODE:7237 =====

void FUN_CODE_7237(void)

{
  byte bVar1;
  
  bVar1 = RXCNTL;
  RXCNTL = bVar1 | 4;
  IT1 = 0;
  FUN_CODE_7e37(0,1);
  return;
}


// ===== FUN_CODE_723e @ CODE:723e =====

void FUN_CODE_723e(void)

{
  byte bVar1;
  
  bVar1 = RXCNTL;
  RXCNTL = bVar1 | 0x80;
  TF1 = 0;
  FUN_CODE_7e37(0,1);
  return;
}


// ===== FUN_CODE_7245 @ CODE:7245 =====

void FUN_CODE_7245(void)

{
  byte bVar1;
  
  bVar1 = RXFLG;
  RXFLG = bVar1 | 1;
  RXD = 0;
  FUN_CODE_7e37(0,1);
  return;
}


// ===== FUN_CODE_724c @ CODE:724c =====

void FUN_CODE_724c(void)

{
  byte bVar1;
  
  bVar1 = RXFLG;
  RXFLG = bVar1 | 0x10;
  T0 = 0;
  FUN_CODE_7e37(0,1);
  return;
}


// ===== FUN_CODE_7253 @ CODE:7253 =====

void FUN_CODE_7253(void)

{
  byte bVar1;
  
  bVar1 = RXFLG;
  RXFLG = bVar1 | 4;
  INT0 = 0;
  FUN_CODE_7e37(0,1);
  return;
}


// ===== FUN_CODE_725a @ CODE:725a =====

void FUN_CODE_725a(void)

{
  byte bVar1;
  
  bVar1 = RXFLG;
  RXFLG = bVar1 | 8;
  INT1 = 0;
  FUN_CODE_7e37(0,1);
  return;
}


// ===== FUN_CODE_7261 @ CODE:7261 =====

void FUN_CODE_7261(void)

{
  byte bVar1;
  
  bVar1 = RXFLG;
  RXFLG = bVar1 | 0x20;
  T1 = 0;
  FUN_CODE_7e37(0,1);
  return;
}


// ===== FUN_CODE_7268 @ CODE:7268 =====

void FUN_CODE_7268(void)

{
  byte bVar1;
  
  bVar1 = RXFLG;
  RXFLG = bVar1 | 0x40;
  WR = 0;
  FUN_CODE_7e37(0,1);
  return;
}


// ===== FUN_CODE_726f @ CODE:726f =====

void FUN_CODE_726f(void)

{
  byte bVar1;
  
  bVar1 = PSW1;
  PSW1 = bVar1 | 0x10;
  F8_4 = 0;
  FUN_CODE_7e37(0,1);
  return;
}


// ===== FUN_CODE_7276 @ CODE:7276 =====

void FUN_CODE_7276(void)

{
  byte bVar1;
  
  bVar1 = EPCON;
  EPCON = bVar1 | 0x20;
  P0_5 = 0;
  FUN_CODE_7e37(0,1);
  return;
}


// ===== FUN_CODE_727d @ CODE:727d =====

void FUN_CODE_727d(void)

{
  byte bVar1;
  
  bVar1 = EPCON;
  EPCON = bVar1 | 0x40;
  P0_6 = 0;
  FUN_CODE_7e37(0,1);
  return;
}


// ===== FUN_CODE_7284 @ CODE:7284 =====

void FUN_CODE_7284(void)

{
  byte bVar1;
  
  bVar1 = EPCON;
  EPCON = bVar1 | 0x80;
  P0_7 = 0;
  FUN_CODE_7e37(0,1);
  return;
}


// ===== FUN_CODE_7290 @ CODE:7290 =====

byte FUN_CODE_7290(void)

{
  byte bVar1;
  byte bVar2;
  
  bVar2 = SBUF;
  if ((bVar2 >> 2 & 1) == 0) {
    if (_4_7 == '\0') {
      if (6 < DAT_EXTMEM_0240) {
        return DAT_EXTMEM_0240 - 7;
      }
      if (_0_2 != '\x01') {
        return DAT_EXTMEM_0240 - 7;
      }
      _0_2 = '\0';
      EA = 0;
      DAT_EXTMEM_1120 = DAT_EXTMEM_0200;
      DAT_EXTMEM_1122 = DAT_EXTMEM_0202;
      DAT_EXTMEM_1123 = DAT_EXTMEM_0203;
      uEXTMEM1124 = DAT_EXTMEM_0204;
      uEXTMEM1125 = DAT_EXTMEM_0205;
      uEXTMEM1126 = DAT_EXTMEM_0206;
      bVar2 = DAT_EXTMEM_0207;
    }
    else {
      if (_2_2 == '\0') {
        return bVar2;
      }
      _2_2 = '\0';
      EA = 0;
      DAT_EXTMEM_1120 = 0;
      DAT_EXTMEM_1122 = 0;
      DAT_EXTMEM_1123 = 0;
      uEXTMEM1124 = 0;
      uEXTMEM1125 = 0;
      uEXTMEM1126 = 0;
      bVar2 = 0;
    }
    DAT_EXTMEM_1121 = 0;
    BANK3_R3 = 0x20;
    BANK3_R2 = 0x11;
    DAT_SFR_9c = 8;
    bVar1 = SBUF;
    SBUF = bVar1 | 4;
    EA = 1;
    bEXTMEM1127 = bVar2;
  }
  return bVar2;
}


// ===== FUN_CODE_7393 @ CODE:7393 =====

void FUN_CODE_7393(void)

{
  char cVar1;
  undefined1 *puVar2;
  undefined1 *puVar3;
  byte *pbVar4;
  byte *pbVar5;
  
  DAT_INTMEM_2a = 0;
  do {
    puVar2 = (undefined1 *)
             CONCAT11('\x02' - (((0x7b < DAT_INTMEM_2a * '\x04') << 7) >> 7),
                      DAT_INTMEM_2a * '\x04' + 0x84);
    puVar3 = (undefined1 *)
             CONCAT11('\x02' - (((1 < DAT_INTMEM_2a * '\x04') << 7) >> 7),DAT_INTMEM_2a * '\x04' - 2
                     );
    cVar1 = FUN_CODE_7a42(*puVar3,puVar3[1],puVar3[2],puVar3[3],*puVar2,puVar2[1],puVar2[2],
                          puVar2[3]);
    if (cVar1 != '\0') {
      pbVar4 = (byte *)CONCAT11('\x02' - (((0x7b < DAT_INTMEM_2a * '\x04') << 7) >> 7),
                                DAT_INTMEM_2a * '\x04' + 0x84);
      pbVar5 = (byte *)CONCAT11('\x02' - (((1 < DAT_INTMEM_2a * '\x04') << 7) >> 7),
                                DAT_INTMEM_2a * '\x04' - 2);
      DAT_INTMEM_2e = pbVar5[3] ^ pbVar4[3];
      DAT_INTMEM_2d = pbVar5[2] ^ pbVar4[2];
      DAT_INTMEM_2c = pbVar5[1] ^ pbVar4[1];
      DAT_INTMEM_2b = *pbVar5 ^ *pbVar4;
      DAT_INTMEM_30 = DAT_INTMEM_2b;
      DAT_INTMEM_31 = DAT_INTMEM_2c;
      DAT_INTMEM_32 = DAT_INTMEM_2d;
      DAT_INTMEM_33 = DAT_INTMEM_2e;
      FUN_CODE_38b6(DAT_INTMEM_2a);
    }
    DAT_INTMEM_2a = DAT_INTMEM_2a + 1;
  } while (DAT_INTMEM_2a < 6);
  DAT_INTMEM_2a = '\0';
  do {
    puVar2 = (undefined1 *)
             CONCAT11('\x02' - (((1 < DAT_INTMEM_2a * '\x04') << 7) >> 7),DAT_INTMEM_2a * '\x04' - 2
                     );
    FUN_CODE_7a89(CONCAT11('\x02' - (((0x7b < DAT_INTMEM_2a * '\x04') << 7) >> 7),
                           DAT_INTMEM_2a * '\x04' + 0x84),*puVar2,puVar2[1],puVar2[2],puVar2[3]);
    DAT_INTMEM_2a = DAT_INTMEM_2a + '\x01';
  } while (DAT_INTMEM_2a != '\x06');
  return;
}


// ===== FUN_CODE_7465 @ CODE:7465 =====

void FUN_CODE_7465(void)

{
  byte bVar1;
  
  if ((DAT_EXTMEM_029f ^ 0xfe) == 0) {
    if (_0_0 == '\0') {
      DAT_EXTMEM_1183 = 0;
      DAT_EXTMEM_1181 = 0;
      DAT_EXTMEM_1182 = 0;
    }
    else {
      DAT_EXTMEM_1181 = 5;
      DAT_EXTMEM_1182 = DAT_EXTMEM_0332;
      DAT_EXTMEM_1183 = DAT_EXTMEM_0282;
    }
    DAT_EXTMEM_1180 = 0xd;
    BANK3_R3 = 0x80;
    BANK3_R2 = 0x11;
    uEXTMEM1184 = 0;
    uEXTMEM1185 = 0;
    uEXTMEM1186 = 0;
    uEXTMEM1187 = 0;
    DAT_SFR_9d = 8;
    bVar1 = DAT_SFR_9a;
    DAT_SFR_9a = bVar1 | 4;
    DAT_EXTMEM_029f = DAT_EXTMEM_029f ^ 0xfe;
    return;
  }
  if (((DAT_EXTMEM_029f & 0xf0) == 0xe0) && (DAT_EXTMEM_02a2 != '\x04')) {
    _0_2 = 1;
    FUN_CODE_7d45();
    return;
  }
  if (DAT_EXTMEM_02a2 == '\x04') {
    _0_3 = 1;
    FUN_CODE_80a1();
    return;
  }
  if (DAT_EXTMEM_02a2 == '\x0f') {
    _0_4 = 1;
    FUN_CODE_81c4();
  }
  else if (DAT_EXTMEM_02a2 == '\0') {
    FUN_CODE_6ec8();
    return;
  }
  return;
}


// ===== FUN_CODE_75e2 @ CODE:75e2 =====

void FUN_CODE_75e2(void)

{
  byte bVar1;
  
  bVar1 = DAT_SFR_9a;
  if ((bVar1 >> 2 & 1) != 0) {
    return;
  }
  if (_4_7 == '\0') {
    if (_2_2 == '\0') goto LAB_CODE_7651;
    _2_2 = '\0';
    EA = 0;
    DAT_EXTMEM_1180 = 1;
    bVar1 = 1;
    do {
      *(undefined1 *)CONCAT11('\x11' - (((0x7f < bVar1) << 7) >> 7),bVar1 + 0x80) = 0;
      bVar1 = bVar1 + 1;
    } while (bVar1 != 0x10);
  }
  else {
    if (_0_2 == '\0') goto LAB_CODE_7651;
    _0_2 = '\0';
    EA = 0;
    DAT_EXTMEM_1180 = 1;
    bVar1 = 1;
    do {
      *(undefined1 *)CONCAT11('\x11' - (((0x7f < bVar1) << 7) >> 7),bVar1 + 0x80) =
           *(undefined1 *)CONCAT11('\x01' - (((bVar1 != 0) << 7) >> 7),bVar1 - 1);
      bVar1 = bVar1 + 1;
    } while (bVar1 != 0x10);
  }
  BANK3_R3 = 0x80;
  BANK3_R2 = 0x11;
  DAT_SFR_9d = 0x10;
  bVar1 = DAT_SFR_9a;
  DAT_SFR_9a = bVar1 | 4;
  EA = 1;
LAB_CODE_7651:
  if (_0_3 != '\0') {
    _0_3 = '\0';
    EA = 0;
    BANK3_R2 = 0x11;
    BANK3_R3 = 0x80;
    DAT_EXTMEM_1180 = 2;
    DAT_EXTMEM_1181 = DAT_EXTMEM_02a5;
    DAT_EXTMEM_1182 = DAT_EXTMEM_02a6;
    DAT_SFR_9d = 3;
    bVar1 = DAT_SFR_9a;
    DAT_SFR_9a = bVar1 | 4;
    EA = 1;
  }
  return;
}


// ===== FUN_CODE_7689 @ CODE:7689 =====

void FUN_CODE_7689(void)

{
  char cVar1;
  undefined1 *puVar2;
  undefined1 *puVar3;
  
  FUN_CODE_77cb();
  _0_5 = '\0';
  DAT_INTMEM_2a = '\0';
  do {
    puVar2 = (undefined1 *)
             CONCAT11('\x02' - (((0x1aU < (byte)(DAT_INTMEM_2a * '\x04')) << 7) >> 7),
                      DAT_INTMEM_2a * '\x04' - 0x1b);
    puVar3 = (undefined1 *)
             CONCAT11('\x02' - (((1U < (byte)(DAT_INTMEM_2a * '\x04')) << 7) >> 7),
                      DAT_INTMEM_2a * '\x04' - 2);
    cVar1 = FUN_CODE_7a42(*puVar3,puVar3[1],puVar3[2],puVar3[3],*puVar2,puVar2[1],puVar2[2],
                          puVar2[3]);
    if (cVar1 != '\0') {
      _0_5 = '\x01';
      break;
    }
    DAT_INTMEM_2a = DAT_INTMEM_2a + '\x01';
  } while (DAT_INTMEM_2a != '\x06');
  if (_0_5 == '\0') {
    DAT_EXTMEM_02fd = DAT_EXTMEM_02fd + 1;
    if (200 < DAT_EXTMEM_02fd) {
      DAT_EXTMEM_02fd = 200;
    }
  }
  else {
    DAT_EXTMEM_02fd = 0;
  }
  DAT_INTMEM_2a = '\0';
  do {
    puVar2 = (undefined1 *)
             CONCAT11('\x02' - (((1U < (byte)(DAT_INTMEM_2a * '\x04')) << 7) >> 7),
                      DAT_INTMEM_2a * '\x04' - 2);
    FUN_CODE_7a89(CONCAT11('\x02' - (((0x1aU < (byte)(DAT_INTMEM_2a * '\x04')) << 7) >> 7),
                           DAT_INTMEM_2a * '\x04' - 0x1b),*puVar2,puVar2[1],puVar2[2],puVar2[3]);
    DAT_INTMEM_2a = DAT_INTMEM_2a + '\x01';
  } while (DAT_INTMEM_2a != '\x06');
  if (DAT_EXTMEM_02fd == 1) {
    _0_1 = 1;
  }
  return;
}


// ===== FUN_CODE_77cb @ CODE:77cb =====

void FUN_CODE_77cb(void)

{
  byte bVar1;
  byte bVar2;
  byte bVar3;
  byte bVar4;
  char cVar5;
  char in_PSW;
  byte *pbVar6;
  
  FUN_CODE_8258();
  cVar5 = '\0';
  DAT_INTMEM_2b = 0;
  do {
    FUN_CODE_7173(cVar5,DAT_INTMEM_2b);
    cVar5 = '\0';
    DAT_INTMEM_2c = 0;
    do {
      FUN_CODE_7f30(cVar5,DAT_INTMEM_2c);
      _0_6 = -(in_PSW >> 7);
      if (_0_6 != '\0') {
        bVar4 = 1;
        bVar3 = 0;
        bVar2 = 0;
        bVar1 = 0;
        FUN_CODE_7a66(BANK0_R1,DAT_INTMEM_2b,0,0,0,1);
        pbVar6 = (byte *)CONCAT11('\x02' - (((1 < DAT_INTMEM_2c * '\x04') << 7) >> 7),
                                  DAT_INTMEM_2c * '\x04' - 2);
        FUN_CODE_7a89(CONCAT11('\x02' - (((1 < DAT_INTMEM_2c * '\x04') << 7) >> 7),
                               DAT_INTMEM_2c * '\x04' - 2),*pbVar6 | bVar1,pbVar6[1] | bVar2,
                      pbVar6[2] | bVar3,pbVar6[3] | bVar4);
      }
      bVar2 = DAT_INTMEM_2c;
      bVar1 = DAT_INTMEM_2b;
      DAT_INTMEM_2c = DAT_INTMEM_2c + 1;
      in_PSW = (DAT_INTMEM_2c < 6) << 7;
      cVar5 = bVar2 - 5;
    } while (in_PSW < '\0');
    DAT_INTMEM_2b = DAT_INTMEM_2b + 1;
    in_PSW = (DAT_INTMEM_2b < 0x17) << 7;
    cVar5 = bVar1 - 0x16;
  } while (in_PSW < '\0');
  bVar1 = RXFLG;
  RXFLG = bVar1 | 0x7f;
  bVar1 = CCAP3L;
  CCAP3L = bVar1 | 0x7f;
  RXCNTH = 0xff;
  DAT_SFR_ef = 0xff;
  bVar1 = RXCNTL;
  RXCNTL = bVar1 | 0x87;
  bVar1 = CCAP4L;
  CCAP4L = bVar1 | 0x87;
  bVar1 = EPCON;
  EPCON = bVar1 | 0xe0;
  bVar1 = CL;
  CL = bVar1 | 0xe0;
  bVar1 = PSW1;
  PSW1 = bVar1 | 0x10;
  bVar1 = CMOD;
  CMOD = bVar1 | 0x10;
  return;
}


// ===== FUN_CODE_7857 @ CODE:7857 =====

byte FUN_CODE_7857(void)

{
  bool bVar1;
  byte bVar2;
  byte bVar3;
  byte *pbVar4;
  
  if (DAT_EXTMEM_0329 == 0 && DAT_EXTMEM_0328 == 0) {
    DAT_EXTMEM_033b = 2;
    bVar3 = DAT_SFR_9b;
    DAT_SFR_9b = bVar3 & 0xf0;
    bVar3 = 2;
  }
  else {
    if ((DAT_EXTMEM_0328 < (byte)-(((DAT_EXTMEM_0329 < 9) << 7) >> 7)) << 7 < '\0') {
      if (DAT_EXTMEM_0329 != 8 || DAT_EXTMEM_0328 != 0) {
        DAT_EXTMEM_033b = 2;
        FUN_CODE_7d13(DAT_EXTMEM_0329,BANK0_R3,DAT_EXTMEM_032e,DAT_EXTMEM_032f);
        bVar3 = DAT_SFR_9b;
        DAT_SFR_9b = bVar3 & 0xf0;
        bVar3 = DAT_SFR_9b;
        DAT_SFR_9b = bVar3 | DAT_EXTMEM_0329;
        bVar3 = DAT_EXTMEM_0329;
        goto LAB_CODE_78d9;
      }
      FUN_CODE_7d08(1);
      bVar3 = 0;
      DAT_EXTMEM_0328 = 0;
      pbVar4 = &DAT_EXTMEM_0329;
    }
    else {
      DAT_EXTMEM_033b = 1;
      DAT_EXTMEM_0329 = DAT_EXTMEM_0329 - 8;
      FUN_CODE_7d08();
      bVar1 = 0xf7 < DAT_EXTMEM_032f;
      DAT_EXTMEM_032f = DAT_EXTMEM_032f + 8;
      pbVar4 = &DAT_EXTMEM_032e;
      bVar3 = DAT_EXTMEM_032e - ((bVar1 << 7) >> 7);
    }
    *pbVar4 = bVar3;
    bVar2 = DAT_SFR_9b;
    DAT_SFR_9b = bVar2 & 0xf0;
    bVar2 = DAT_SFR_9b;
    DAT_SFR_9b = bVar2 | 8;
  }
LAB_CODE_78d9:
  bVar2 = DPX;
  DPX = bVar2 & 0xfe;
  return bVar3;
}


// ===== FUN_CODE_78dd @ CODE:78dd =====

void FUN_CODE_78dd(void)

{
  BANK3_R2 = 0x11;
  BANK3_R3 = 0;
  DAT_EXTMEM_0316 = DAT_EXTMEM_1100;
  DAT_EXTMEM_0317 = DAT_EXTMEM_1101;
  DAT_EXTMEM_0318 = DAT_EXTMEM_1102;
  DAT_EXTMEM_0319 = DAT_EXTMEM_1103;
  DAT_EXTMEM_031a = uEXTMEM1104;
  DAT_EXTMEM_031b = uEXTMEM1105;
  DAT_EXTMEM_031c = uEXTMEM1106;
  DAT_EXTMEM_031d = uEXTMEM1107;
  return;
}


// ===== FUN_CODE_7956 @ CODE:7956 =====

void FUN_CODE_7956(void)

{
  bool bVar1;
  undefined1 uVar2;
  short sVar3;
  
  DAT_INTMEM_47 = 0x65;
  DAT_INTMEM_48 = 0x41;
  FUN_CODE_78dd();
  BANK3_R1 = '\0';
  while ((uVar2 = DAT_EXTMEM_0316, *(char *)CONCAT11(DAT_INTMEM_47,DAT_INTMEM_48) != BANK0_R6 ||
         (uVar2 = DAT_EXTMEM_0317, *(char *)(CONCAT11(DAT_INTMEM_47,DAT_INTMEM_48) + 1) != BANK0_R6)
         )) {
    bVar1 = 0xfc < DAT_INTMEM_48;
    DAT_INTMEM_48 = DAT_INTMEM_48 + 3;
    DAT_INTMEM_47 = DAT_INTMEM_47 - ((bVar1 << 7) >> 7);
    if (0x65U - (((DAT_INTMEM_48 < 0x80) << 7) >> 7) <= DAT_INTMEM_47) {
LAB_CODE_79aa:
      sVar3 = CONCAT11('e' - (((0xfdU < (byte)(BANK3_R1 * '\x03')) << 7) >> 7),BANK3_R1 * '\x03' + 2
                      );
      FUN_CODE_7a95(*(undefined1 *)(sVar3 + 2),*(undefined1 *)(sVar3 + 1),uVar2);
      return;
    }
  }
  BANK3_R1 = *(char *)(CONCAT11(DAT_INTMEM_47,DAT_INTMEM_48) + 2);
  goto LAB_CODE_79aa;
}


// ===== FUN_CODE_79c4 @ CODE:79c4 =====

void FUN_CODE_79c4(void)

{
  TH2 = 0xfe;
  TL2 = 0x6f;
  RCAP2H = 0xfe;
  RCAP2L = 0x6f;
  P0_2 = 1;
  TXD = 0;
  FIFLG_0 = 0;
  FIFLG_1 = 0;
  FIFLG_2 = 0;
  FIFLG_3 = 0;
  FIFLG_4 = 0;
  FIFLG_5 = 0;
  FIFLG_6 = 0;
  FIFLG_7 = 0;
  IT0 = 0;
  IE0 = 0;
  IT1 = 0;
  TF1 = 0;
  RXD = 0;
  T0 = 0;
  INT0 = 0;
  INT1 = 0;
  T1 = 0;
  WR = 0;
  F8_4 = 0;
  P0_5 = 0;
  P0_6 = 0;
  P0_7 = 0;
  DAT_EXTMEM_ff80 = 0xa0;
  DAT_EXTMEM_ff81 = 0;
  DAT_EXTMEM_ff82 = 0;
  DAT_EXTMEM_ff83 = 0;
  DAT_EXTMEM_ff84 = 0;
  DAT_EXTMEM_ff85 = 0;
  DAT_EXTMEM_ff86 = 0xa0;
  DAT_EXTMEM_ff87 = 0;
  DAT_EXTMEM_ff88 = 0;
  DAT_EXTMEM_ff89 = 0;
  DAT_EXTMEM_ff8a = 0;
  DAT_EXTMEM_ff8b = 0;
  DAT_EXTMEM_ff8c = 0xa0;
  DAT_EXTMEM_ff8d = 0;
  DAT_EXTMEM_ff8e = 0;
  DAT_EXTMEM_ff8f = 0;
  DAT_EXTMEM_ff90 = 0;
  DAT_EXTMEM_ff91 = 0;
  return;
}


// ===== FUN_CODE_79d2 @ CODE:79d2 =====

void FUN_CODE_79d2(void)

{
  TXD = 0;
  FIFLG_0 = 0;
  FIFLG_1 = 0;
  FIFLG_2 = 0;
  FIFLG_3 = 0;
  FIFLG_4 = 0;
  FIFLG_5 = 0;
  FIFLG_6 = 0;
  FIFLG_7 = 0;
  IT0 = 0;
  IE0 = 0;
  IT1 = 0;
  TF1 = 0;
  RXD = 0;
  T0 = 0;
  INT0 = 0;
  INT1 = 0;
  T1 = 0;
  WR = 0;
  F8_4 = 0;
  P0_5 = 0;
  P0_6 = 0;
  P0_7 = 0;
  DAT_EXTMEM_ff80 = 0xa0;
  DAT_EXTMEM_ff81 = 0;
  DAT_EXTMEM_ff82 = 0;
  DAT_EXTMEM_ff83 = 0;
  DAT_EXTMEM_ff84 = 0;
  DAT_EXTMEM_ff85 = 0;
  DAT_EXTMEM_ff86 = 0xa0;
  DAT_EXTMEM_ff87 = 0;
  DAT_EXTMEM_ff88 = 0;
  DAT_EXTMEM_ff89 = 0;
  DAT_EXTMEM_ff8a = 0;
  DAT_EXTMEM_ff8b = 0;
  DAT_EXTMEM_ff8c = 0xa0;
  DAT_EXTMEM_ff8d = 0;
  DAT_EXTMEM_ff8e = 0;
  DAT_EXTMEM_ff8f = 0;
  DAT_EXTMEM_ff90 = 0;
  DAT_EXTMEM_ff91 = 0;
  return;
}


// ===== FUN_CODE_7a30 @ CODE:7a30 =====

char FUN_CODE_7a30(char param_1,byte param_2,char param_3,byte param_4)

{
  return param_3 * param_2 + param_4 * param_1 + (char)((ushort)param_4 * (ushort)param_2 >> 8);
}


// ===== FUN_CODE_7a42 @ CODE:7a42 =====

byte FUN_CODE_7a42(char param_1,byte param_2,byte param_3,byte param_4,char param_5,char param_6,
                  char param_7,char param_8)

{
  byte bVar1;
  byte bVar2;
  byte bVar3;
  char in_PSW;
  
  bVar1 = param_8 - (in_PSW >> 7);
  bVar2 = param_7 - (((param_4 < bVar1) << 7) >> 7);
  bVar3 = param_6 - (((param_3 < bVar2) << 7) >> 7);
  return param_1 - (param_5 - (((param_2 < bVar3) << 7) >> 7)) |
         param_4 - bVar1 | param_3 - bVar2 | param_2 - bVar3;
}


// ===== FUN_CODE_7a53 @ CODE:7a53 =====

byte FUN_CODE_7a53(byte param_1,byte param_2,byte param_3,byte param_4,byte param_5)

{
  byte bVar1;
  
  for (bVar1 = param_1; bVar1 != 0; bVar1 = bVar1 - 1) {
    param_1 = param_5 >> 1 | param_4 << 7;
    param_5 = param_1;
    param_4 = param_4 >> 1 | param_3 << 7;
    param_3 = param_3 >> 1 | param_2 << 7;
    param_2 = param_2 >> 1;
  }
  return param_1;
}


// ===== FUN_CODE_7a66 @ CODE:7a66 =====

byte FUN_CODE_7a66(byte param_1,byte param_2,byte param_3,byte param_4,byte param_5)

{
  byte bVar1;
  byte bVar2;
  byte bVar3;
  
  for (bVar3 = param_1; bVar3 != 0; bVar3 = bVar3 - 1) {
    bVar1 = param_5 >> 7;
    bVar2 = param_4 >> 7;
    param_1 = param_2 << 1 | param_3 >> 7;
    param_5 = param_5 << 1;
    param_4 = param_4 << 1 | bVar1;
    param_3 = param_3 << 1 | bVar2;
    param_2 = param_1;
  }
  return param_1;
}


// ===== FUN_CODE_7a79 @ CODE:7a79 =====

undefined1 FUN_CODE_7a79(short param_1)

{
  return *(undefined1 *)(param_1 + 3);
}


// ===== FUN_CODE_7a89 @ CODE:7a89 =====

void FUN_CODE_7a89(undefined1 *param_1,undefined1 param_2,undefined1 param_3,undefined1 param_4,
                  undefined1 param_5)

{
  *param_1 = param_2;
  param_1[1] = param_3;
  param_1[2] = param_4;
  param_1[3] = param_5;
  return;
}


// ===== FUN_CODE_7a95 @ CODE:7a95 =====

void FUN_CODE_7a95(undefined1 param_1,undefined1 param_2)

{
                    /* WARNING: Could not recover jumptable at 0x7a9a. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (*(code *)CONCAT11(param_2,param_1))();
  return;
}


// ===== FUN_CODE_7a9b @ CODE:7a9b =====

void FUN_CODE_7a9b(undefined1 param_1,undefined1 param_2)

{
  byte bVar1;
  char cVar2;
  undefined1 uVar3;
  
  DAT_INTMEM_3b = param_1;
  DAT_INTMEM_3c = param_2;
  FUN_CODE_7d81();
  DAT_INTMEM_50 = DAT_INTMEM_3b;
  FUN_CODE_7d86();
  DAT_INTMEM_50 = DAT_INTMEM_3c;
  FUN_CODE_7d86();
  P0_4 = 0;
  P0_3 = 0;
  FUN_CODE_7dcc(0,1);
  P0_3 = 1;
  FUN_CODE_7dc7();
  P0_3 = 0;
  DAT_INTMEM_50 = 0xa1;
  FUN_CODE_7d86();
  FUN_CODE_7dcc(0,1);
  P0_4 = 0;
  P0_3 = 1;
  FUN_CODE_7ff2();
  DAT_EXTMEM_033d = DAT_INTMEM_50;
  P0_4 = 0;
  uVar3 = DAT_INTMEM_50;
  while (cVar2 = P0_3, cVar2 != '\x01') {
    uVar3 = 0;
    IEN1 = 0;
  }
  bVar1 = EPCON;
  EPCON = bVar1 | 8;
  bVar1 = CL;
  CL = bVar1 & 0xf7;
  P0_3 = 0;
  FUN_CODE_7dc7(uVar3,0,1);
  P0_3 = 1;
  FUN_CODE_7dcc();
  return;
}


// ===== FUN_CODE_7af9 @ CODE:7af9 =====

undefined1 FUN_CODE_7af9(void)

{
  EPCON = 0xfc;
  RXSTAT = 0x3f;
  RXDAT = 0x3f;
  RXCON = 0x3f;
  RXFLG = 0xff;
  RXCNTL = 0xe7;
  RXCNTH = 0xff;
  PSW1 = 0xf0;
  CL = 0xe0;
  CCAP0L = 0;
  CCAP1L = 0;
  CCAP2L = 0;
  CCAP3L = 0x6d;
  CCAP4L = 0x9f;
  DAT_SFR_ef = 0xff;
  CMOD = 0xef;
  P0 = 1;
  P1 = 0;
  SCON = 0;
  P2 = 0;
  P3 = 0x91;
  TCON = 1;
  FIFLG = 0;
  DAT_SFR_f8 = 0xe0;
  RD = 0;
  TH0 = 5;
  DAT_SFR_a5 = 0;
  TH0 = 0x45;
  WDTRST = 0;
  TH0 = 0x85;
  DAT_SFR_bb = 0;
  TH0 = 0xc5;
  TH1 = 0;
  return 0;
}


// ===== FUN_CODE_7b52 @ CODE:7b52 =====

undefined1 FUN_CODE_7b52(undefined1 param_1)

{
  char cVar1;
  undefined1 uVar2;
  undefined1 uVar3;
  undefined1 uVar4;
  undefined1 uVar5;
  undefined1 uVar6;
  undefined1 uVar7;
  undefined1 uVar8;
  undefined1 uVar9;
  undefined1 uVar10;
  undefined1 uVar11;
  char cVar12;
  
  uVar11 = BANK0_R7;
  uVar10 = BANK0_R6;
  uVar9 = BANK0_R5;
  uVar8 = BANK0_R4;
  uVar7 = BANK0_R3;
  uVar6 = BANK0_R2;
  uVar5 = BANK0_R1;
  uVar4 = BANK0_R0;
  uVar2 = DAT_SFR_86;
  uVar3 = WCON;
  TF2 = 0;
  cVar1 = DAT_INTMEM_5b + '\x01';
  cVar12 = DAT_INTMEM_5b + '\x02';
  DAT_INTMEM_5b = cVar1;
  if (cVar1 == -1) {
    DAT_INTMEM_5b = '\0';
  }
  if (_3_3 != '\x01') {
    FUN_CODE_0056(cVar12);
  }
  WCON = uVar3;
  DAT_SFR_86 = uVar2;
  BANK0_R7 = uVar11;
  BANK0_R6 = uVar10;
  BANK0_R5 = uVar9;
  BANK0_R4 = uVar8;
  BANK0_R3 = uVar7;
  BANK0_R2 = uVar6;
  BANK0_R1 = uVar5;
  BANK0_R0 = uVar4;
  return param_1;
}


// ===== FUN_CODE_7bf7 @ CODE:7bf7 =====

void FUN_CODE_7bf7(void)

{
  byte bVar1;
  
  DAT_INTMEM_53 = 0;
  DAT_INTMEM_76 = 0;
  DAT_INTMEM_77 = 1;
  _0_7 = 0;
  DAT_INTMEM_51 = 0;
  DAT_INTMEM_59 = 0;
  DAT_INTMEM_7a = 4;
  FUN_CODE_79d2();
  bVar1 = 0;
  do {
    *(undefined1 *)(ushort)bVar1 = 0xff;
    *(undefined1 *)CONCAT11(-(((0x6a < bVar1) << 7) >> 7),bVar1 + 0x95) = 0xff;
    *(undefined1 *)CONCAT11('\x01' - (((0xd5 < bVar1) << 7) >> 7),bVar1 + 0x2a) = 0xff;
    bVar1 = bVar1 + 1;
  } while (bVar1 != 0x8a);
  DAT_EXTMEM_ff95 = 0;
  RD = 0;
  return;
}


// ===== FUN_CODE_7c46 @ CODE:7c46 =====

undefined1 FUN_CODE_7c46(undefined1 param_1)

{
  undefined1 uVar1;
  undefined1 uVar2;
  undefined1 uVar3;
  undefined1 uVar4;
  undefined1 uVar5;
  undefined1 uVar6;
  undefined1 uVar7;
  undefined1 uVar8;
  undefined1 uVar9;
  undefined1 uVar10;
  
  uVar10 = BANK0_R7;
  uVar9 = BANK0_R6;
  uVar8 = BANK0_R5;
  uVar7 = BANK0_R4;
  uVar6 = BANK0_R3;
  uVar5 = BANK0_R2;
  uVar4 = BANK0_R1;
  uVar3 = BANK0_R0;
  uVar1 = DAT_SFR_86;
  uVar2 = WCON;
  FUN_CODE_6b90();
  WCON = uVar2;
  DAT_SFR_86 = uVar1;
  BANK0_R7 = uVar10;
  BANK0_R6 = uVar9;
  BANK0_R5 = uVar8;
  BANK0_R4 = uVar7;
  BANK0_R3 = uVar6;
  BANK0_R2 = uVar5;
  BANK0_R1 = uVar4;
  BANK0_R0 = uVar3;
  return param_1;
}


// ===== FUN_CODE_7cca @ CODE:7cca =====

char FUN_CODE_7cca(void)

{
  byte bVar1;
  char cVar2;
  
  if (DAT_EXTMEM_033b == '\x01') {
    cVar2 = FUN_CODE_7857();
    bVar1 = HADDR;
    HADDR = bVar1 | 4;
    bVar1 = DAT_SFR_92;
    DAT_SFR_92 = bVar1 & 0xbf;
    bVar1 = HADDR;
    HADDR = bVar1 | 1;
    return cVar2;
  }
  if (DAT_EXTMEM_033b == '\x02') {
    bVar1 = DAT_SFR_92;
    DAT_SFR_92 = bVar1 & 0xbf;
    bVar1 = HADDR;
    HADDR = bVar1 | 1;
    bVar1 = HADDR;
    HADDR = bVar1 | 8;
    return '\x02';
  }
  bVar1 = HADDR;
  HADDR = bVar1 | 8;
  bVar1 = DAT_SFR_92;
  DAT_SFR_92 = bVar1 & 0xbf;
  bVar1 = HADDR;
  HADDR = bVar1 | 1;
  cVar2 = DAT_EXTMEM_0316;
  if ((DAT_EXTMEM_0316 == '\0') && (cVar2 = DAT_EXTMEM_0317, DAT_EXTMEM_0317 == '\x05')) {
    DAT_SFR_96 = DAT_EXTMEM_0318;
    cVar2 = DAT_EXTMEM_0318;
  }
  return cVar2;
}


// ===== FUN_CODE_7d08 @ CODE:7d08 =====

char FUN_CODE_7d08(undefined1 param_1,undefined1 *param_2)

{
  byte bVar1;
  
  *param_2 = param_1;
  DAT_INTMEM_49 = DAT_EXTMEM_032e;
  DAT_INTMEM_4a = DAT_EXTMEM_032f;
  BANK3_R2 = 0x11;
  BANK3_R3 = 8;
  for (bVar1 = 0; bVar1 < 8; bVar1 = bVar1 + 1) {
    *(undefined1 *)CONCAT11('\x11' - (((0xf7 < bVar1) << 7) >> 7),bVar1 + 8) =
         *(undefined1 *)CONCAT11(DAT_INTMEM_49,DAT_INTMEM_4a);
    DAT_INTMEM_4a = DAT_INTMEM_4a + '\x01';
    if (DAT_INTMEM_4a == '\0') {
      DAT_INTMEM_49 = DAT_INTMEM_49 + '\x01';
    }
  }
  return bVar1 - 8;
}


// ===== FUN_CODE_7d13 @ CODE:7d13 =====

char FUN_CODE_7d13(byte param_1,char param_2,char param_3)

{
  byte bVar1;
  
  BANK3_R2 = 0x11;
  BANK3_R3 = 8;
  DAT_INTMEM_49 = param_2;
  DAT_INTMEM_4a = param_3;
  for (bVar1 = 0; bVar1 < param_1; bVar1 = bVar1 + 1) {
    *(undefined1 *)CONCAT11('\x11' - (((0xf7 < bVar1) << 7) >> 7),bVar1 + 8) =
         *(undefined1 *)CONCAT11(DAT_INTMEM_49,DAT_INTMEM_4a);
    DAT_INTMEM_4a = DAT_INTMEM_4a + '\x01';
    if (DAT_INTMEM_4a == '\0') {
      DAT_INTMEM_49 = DAT_INTMEM_49 + '\x01';
    }
  }
  return bVar1 - param_1;
}


// ===== FUN_CODE_7d45 @ CODE:7d45 =====

void FUN_CODE_7d45(void)

{
  if (((DAT_EXTMEM_029f == 0xe3) && (_0_0 != '\0')) && (_2_0 != '\0')) {
    _5_0 = _5_0 ^ 1;
  }
  if ((_5_0 == 0) || ((DAT_EXTMEM_029f != 0xe3 && (DAT_EXTMEM_029f != 0xe7)))) {
    if (_0_0 == '\0') {
      DAT_EXTMEM_0200 = DAT_EXTMEM_0200 & (&DAT_CODE_67b4)[DAT_EXTMEM_029f & 0xf];
    }
    else {
      DAT_EXTMEM_0200 = DAT_EXTMEM_0200 | ~(&DAT_CODE_67b4)[DAT_EXTMEM_029f & 0xf];
    }
  }
  return;
}


// ===== FUN_CODE_7d81 @ CODE:7d81 =====

void FUN_CODE_7d81(void)

{
  byte bVar1;
  char cVar2;
  
  P0_3 = 0;
  DAT_INTMEM_50 = -0x60;
  bVar1 = EPCON;
  EPCON = bVar1 | 0x18;
  cVar2 = '\0';
  DAT_INTMEM_4f = 0;
  do {
    P0_4 = 0;
    FUN_CODE_8193(cVar2);
    if (DAT_INTMEM_50 < '\0') {
      P0_3 = 1;
    }
    else {
      P0_3 = 0;
    }
    P0_4 = 1;
    DAT_INTMEM_50 = DAT_INTMEM_50 * '\x02';
    FUN_CODE_8193();
    bVar1 = DAT_INTMEM_4f;
    DAT_INTMEM_4f = DAT_INTMEM_4f + 1;
    cVar2 = bVar1 - 7;
  } while ((DAT_INTMEM_4f < 8) << 7 < '\0');
  P0_4 = 0;
  P0_3 = 0;
  FUN_CODE_8193(cVar2);
  P0_4 = 1;
  FUN_CODE_8193();
  return;
}


// ===== FUN_CODE_7d86 @ CODE:7d86 =====

void FUN_CODE_7d86(void)

{
  byte bVar1;
  char cVar2;
  
  bVar1 = EPCON;
  EPCON = bVar1 | 0x18;
  cVar2 = '\0';
  DAT_INTMEM_4f = 0;
  do {
    P0_4 = 0;
    FUN_CODE_8193(cVar2);
    if (DAT_INTMEM_50 < '\0') {
      P0_3 = 1;
    }
    else {
      P0_3 = 0;
    }
    P0_4 = 1;
    DAT_INTMEM_50 = DAT_INTMEM_50 * '\x02';
    FUN_CODE_8193();
    bVar1 = DAT_INTMEM_4f;
    DAT_INTMEM_4f = DAT_INTMEM_4f + 1;
    cVar2 = bVar1 - 7;
  } while ((DAT_INTMEM_4f < 8) << 7 < '\0');
  P0_4 = 0;
  P0_3 = 0;
  FUN_CODE_8193(cVar2);
  P0_4 = 1;
  FUN_CODE_8193();
  return;
}


// ===== FUN_CODE_7dbc @ CODE:7dbc =====

char FUN_CODE_7dbc(void)

{
  byte bVar1;
  byte bVar2;
  byte bVar3;
  char cVar4;
  byte bVar5;
  
  bVar5 = 5;
  cVar4 = '\0';
  FUN_CODE_7dcc();
  P0_4 = 0;
  P0_3 = 0;
  FUN_CODE_7dcc();
  P0_4 = 1;
  bVar3 = 0;
  bVar2 = 0;
  while (bVar1 = cVar4 - (((bVar3 < bVar5) << 7) >> 7), bVar2 < bVar1) {
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    bVar3 = bVar3 + 1;
    if (bVar3 == 0) {
      bVar2 = bVar2 + 1;
    }
  }
  return bVar2 - bVar1;
}


// ===== FUN_CODE_7dc7 @ CODE:7dc7 =====

char FUN_CODE_7dc7(char param_1,byte param_2)

{
  byte bVar1;
  byte bVar2;
  byte bVar3;
  
  FUN_CODE_7dcc();
  P0_4 = 1;
  bVar3 = 0;
  bVar2 = 0;
  while (bVar1 = param_1 - (((bVar3 < param_2) << 7) >> 7), bVar2 < bVar1) {
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    bVar3 = bVar3 + 1;
    if (bVar3 == 0) {
      bVar2 = bVar2 + 1;
    }
  }
  return bVar2 - bVar1;
}


// ===== FUN_CODE_7dcc @ CODE:7dcc =====

char FUN_CODE_7dcc(char param_1,byte param_2)

{
  byte bVar1;
  byte bVar2;
  byte bVar3;
  
  bVar3 = 0;
  bVar2 = 0;
  while (bVar1 = param_1 - (((bVar3 < param_2) << 7) >> 7), bVar2 < bVar1) {
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    bVar3 = bVar3 + 1;
    if (bVar3 == 0) {
      bVar2 = bVar2 + 1;
    }
  }
  return bVar2 - bVar1;
}


// ===== FUN_CODE_7e2d @ CODE:7e2d =====

char FUN_CODE_7e2d(void)

{
  char cVar1;
  byte bVar2;
  byte bVar3;
  
  DAT_EXTMEM_029e = DAT_INTMEM_50;
  IEN1 = 0;
  bVar3 = 0;
  bVar2 = 0;
  while (cVar1 = ((bVar3 < 10) << 7) >> 7, bVar2 < (byte)-cVar1) {
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    bVar3 = bVar3 + 1;
    if (bVar3 == 0) {
      bVar2 = bVar2 + 1;
    }
  }
  return bVar2 + cVar1;
}


// ===== FUN_CODE_7e30 @ CODE:7e30 =====

char FUN_CODE_7e30(undefined1 *param_1)

{
  char cVar1;
  byte bVar2;
  byte bVar3;
  
  *param_1 = DAT_INTMEM_50;
  IEN1 = 0;
  bVar3 = 0;
  bVar2 = 0;
  while (cVar1 = ((bVar3 < 10) << 7) >> 7, bVar2 < (byte)-cVar1) {
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    bVar3 = bVar3 + 1;
    if (bVar3 == 0) {
      bVar2 = bVar2 + 1;
    }
  }
  return bVar2 + cVar1;
}


// ===== FUN_CODE_7e37 @ CODE:7e37 =====

char FUN_CODE_7e37(char param_1,byte param_2)

{
  byte bVar1;
  byte bVar2;
  byte bVar3;
  
  IEN1 = 0;
  bVar3 = 0;
  bVar2 = 0;
  while (bVar1 = param_1 - (((bVar3 < param_2) << 7) >> 7), bVar2 < bVar1) {
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    nop();
    bVar3 = bVar3 + 1;
    if (bVar3 == 0) {
      bVar2 = bVar2 + 1;
    }
  }
  return bVar2 - bVar1;
}


// ===== FUN_CODE_7e97 @ CODE:7e97 =====

void FUN_CODE_7e97(void)

{
  DAT_EXTMEM_ff80 = 0xa8;
  DAT_EXTMEM_ff81 = 8;
  DAT_EXTMEM_ff82 = 8;
  DAT_EXTMEM_ff83 = 8;
  DAT_EXTMEM_ff84 = 8;
  DAT_EXTMEM_ff85 = 8;
  DAT_EXTMEM_ff86 = 0xa8;
  DAT_EXTMEM_ff87 = 8;
  DAT_EXTMEM_ff88 = 8;
  DAT_EXTMEM_ff89 = 8;
  DAT_EXTMEM_ff8a = 8;
  DAT_EXTMEM_ff8b = 8;
  DAT_EXTMEM_ff8c = 0xa8;
  DAT_EXTMEM_ff8d = 8;
  DAT_EXTMEM_ff8e = 8;
  DAT_EXTMEM_ff8f = 8;
  DAT_EXTMEM_ff90 = 8;
  DAT_EXTMEM_ff91 = 8;
  return;
}


// ===== FUN_CODE_7eca @ CODE:7eca =====

undefined1 FUN_CODE_7eca(undefined1 param_1,undefined1 param_2,undefined1 param_3)

{
  byte bVar1;
  
  bVar1 = EA;
  _5_4 = bVar1 & 1;
  EA = 0;
  XPAGE = param_3;
  IB_OFFSET = param_2;
  IB_DATA = param_1;
  IB_CON1 = 0x6e;
  IB_CON2 = 5;
  IB_CON3 = 10;
  IB_CON4 = 9;
  IB_CON5 = 6;
  nop();
  nop();
  nop();
  nop();
  nop();
  nop();
  nop();
  nop();
  IB_CON1 = 0;
  IB_CON2 = 0;
  IB_CON3 = 0;
  IB_CON4 = 0;
  IB_CON5 = 0;
  EA = bVar1 & 1;
  return 0;
}


// ===== FUN_CODE_7efd @ CODE:7efd =====

void FUN_CODE_7efd(undefined1 param_1,undefined1 param_2)

{
  byte bVar1;
  
  DAT_INTMEM_2a = param_1;
  DAT_INTMEM_2b = param_2;
  FUN_CODE_7d81();
  DAT_INTMEM_50 = DAT_INTMEM_2a;
  FUN_CODE_7d86();
  DAT_INTMEM_50 = DAT_INTMEM_2b;
  FUN_CODE_7d86();
  DAT_INTMEM_2c = 0;
  do {
    DAT_INTMEM_50 = 0;
    FUN_CODE_7d86();
    FUN_CODE_7dcc(0,5);
    bVar1 = DAT_INTMEM_2c;
    DAT_INTMEM_2c = DAT_INTMEM_2c + 1;
  } while ((DAT_INTMEM_2c < 0x80) << 7 < '\0');
  FUN_CODE_7dbc(bVar1 + 0x81);
  P0_3 = 1;
  return;
}


// ===== FUN_CODE_7f30 @ CODE:7f30 =====

void FUN_CODE_7f30(char param_1)

{
  char cVar1;
  byte bVar2;
  
  if (param_1 == '\x01') {
    cVar1 = F8_1;
    bVar2 = cVar1 << 7;
  }
  else if (param_1 == '\x02') {
    cVar1 = F8_2;
    bVar2 = cVar1 << 7;
  }
  else if (param_1 == '\x03') {
    cVar1 = F8_3;
    bVar2 = cVar1 << 7;
  }
  else if (param_1 == '\x04') {
    cVar1 = IE1;
    bVar2 = cVar1 << 7;
  }
  else if (param_1 == '\x05') {
    cVar1 = TR0;
    bVar2 = cVar1 << 7;
  }
  else {
    if (param_1 != '\0') {
      _5_3 = 0;
      return;
    }
    cVar1 = F8_0;
    bVar2 = cVar1 << 7;
  }
  _5_3 = bVar2 >> 7 ^ 1;
  return;
}


// ===== FUN_CODE_7f93 @ CODE:7f93 =====

undefined1 FUN_CODE_7f93(undefined1 param_1)

{
  byte bVar1;
  
  bVar1 = EA;
  _5_4 = bVar1 & 1;
  EA = 0;
  XPAGE = param_1;
  IB_DATA = 0;
  IB_CON1 = 0xe6;
  IB_CON2 = 5;
  IB_CON3 = 10;
  IB_CON4 = 9;
  IB_CON5 = 6;
  nop();
  nop();
  nop();
  nop();
  nop();
  nop();
  nop();
  nop();
  IB_CON1 = 0;
  IB_CON2 = 0;
  IB_CON3 = 0;
  IB_CON4 = 0;
  IB_CON5 = 0;
  EA = bVar1 & 1;
  return 0;
}


// ===== FUN_CODE_7ff2 @ CODE:7ff2 =====

void FUN_CODE_7ff2(void)

{
  byte bVar1;
  char cVar2;
  
  bVar1 = EPCON;
  EPCON = bVar1 & 0xf7;
  bVar1 = CL;
  CL = bVar1 | 8;
  cVar2 = '\0';
  DAT_INTMEM_3d = 0;
  do {
    P0_4 = 0;
    FUN_CODE_8193(cVar2);
    P0_4 = 1;
    DAT_INTMEM_50 = DAT_INTMEM_50 * '\x02';
    cVar2 = P0_3;
    if (cVar2 != '\0') {
      DAT_INTMEM_50 = DAT_INTMEM_50 | 1;
    }
    FUN_CODE_8193();
    bVar1 = DAT_INTMEM_3d;
    DAT_INTMEM_3d = DAT_INTMEM_3d + 1;
    cVar2 = bVar1 - 7;
  } while ((DAT_INTMEM_3d < 8) << 7 < '\0');
  return;
}


// ===== FUN_CODE_8077 @ CODE:8077 =====

void FUN_CODE_8077(byte param_1)

{
  *(undefined1 *)(ushort)param_1 = DAT_INTMEM_3f;
  *(undefined1 *)CONCAT11(-(((0x6a < param_1) << 7) >> 7),param_1 + 0x95) = DAT_INTMEM_40;
  *(undefined1 *)CONCAT11('\x01' - (((0xd5 < param_1) << 7) >> 7),param_1 + 0x2a) = DAT_INTMEM_46;
  return;
}


// ===== FUN_CODE_807b @ CODE:807b =====

void FUN_CODE_807b(undefined1 param_1,undefined1 param_2,byte param_3)

{
  *(undefined1 *)(ushort)param_3 = param_2;
  *(undefined1 *)CONCAT11(-(((0x6a < param_3) << 7) >> 7),param_3 + 0x95) = param_1;
  *(undefined1 *)CONCAT11('\x01' - (((0xd5 < param_3) << 7) >> 7),param_3 + 0x2a) = DAT_INTMEM_46;
  return;
}


// ===== FUN_CODE_80a1 @ CODE:80a1 =====

void FUN_CODE_80a1(void)

{
  DAT_EXTMEM_02a4 = 2;
  if (_0_0 != '\0') {
    DAT_EXTMEM_02a5 = DAT_EXTMEM_029f;
    DAT_EXTMEM_02a6 = DAT_EXTMEM_02a0;
    return;
  }
  DAT_EXTMEM_02a5 = 0;
  DAT_EXTMEM_02a6 = 0;
  return;
}


// ===== FUN_CODE_80c3 @ CODE:80c3 =====

void FUN_CODE_80c3(undefined1 param_1,undefined1 param_2,undefined1 param_3)

{
  DAT_INTMEM_4c = param_2;
  DAT_INTMEM_4d = param_3;
  DAT_INTMEM_4e = param_1;
  FUN_CODE_7d81();
  DAT_INTMEM_50 = DAT_INTMEM_4c;
  FUN_CODE_7d86();
  DAT_INTMEM_50 = DAT_INTMEM_4d;
  FUN_CODE_7d86();
  DAT_INTMEM_50 = DAT_INTMEM_4e;
  FUN_CODE_7d86();
  FUN_CODE_7dbc();
  P0_3 = 1;
  return;
}


// ===== FUN_CODE_8106 @ CODE:8106 =====

void FUN_CODE_8106(void)

{
  FUN_CODE_8143();
  FUN_CODE_0016();
  FUN_CODE_7e37(1,0xf4);
  FUN_CODE_7af9();
  FUN_CODE_81ee();
  FUN_CODE_60cf();
  FUN_CODE_828c();
  FUN_CODE_81d9();
  FUN_CODE_8238();
  return;
}


// ===== FUN_CODE_8143 @ CODE:8143 =====

void FUN_CODE_8143(void)

{
  IPL1 = 8;
  FUN_CODE_7e37(0,5);
  DAT_SFR_bc = 2;
  FUN_CODE_7e37(0,200);
  DAT_SFR_bc = 3;
  IPL1 = 0xc;
  return;
}


// ===== FUN_CODE_8179 @ CODE:8179 =====

void FUN_CODE_8179(void)

{
  undefined1 *puVar1;
  char cVar2;
  char cVar3;
  undefined1 *puVar4;
  
  puVar1 = (undefined1 *)0xff;
  do {
    *puVar1 = 0;
    puVar1 = puVar1 + -1;
  } while (puVar1 != (undefined1 *)0x0);
  puVar4 = (undefined1 *)0x0;
  cVar3 = '\0';
  cVar2 = '\t';
  do {
    do {
      *puVar4 = 0;
      puVar4 = puVar4 + 1;
      cVar3 = cVar3 + -1;
    } while (cVar3 != '\0');
    cVar2 = cVar2 + -1;
  } while (cVar2 != '\0');
  SP_ = 0x7e;
  FUN_CODE_583d();
  return;
}


// ===== FUN_CODE_8193 @ CODE:8193 =====

void FUN_CODE_8193(void)

{
  nop();
  nop();
  nop();
  nop();
  nop();
  nop();
  nop();
  nop();
  nop();
  nop();
  nop();
  nop();
  nop();
  nop();
  nop();
  nop();
  nop();
  nop();
  nop();
  nop();
  nop();
  nop();
  nop();
  nop();
  return;
}


// ===== FUN_CODE_81c4 @ CODE:81c4 =====

void FUN_CODE_81c4(void)

{
  DAT_EXTMEM_0241 = 1;
  DAT_EXTMEM_0242 = DAT_EXTMEM_029f;
  if (_0_0 == '\0') {
    DAT_EXTMEM_0242 = 0;
  }
  return;
}


// ===== FUN_CODE_81d9 @ CODE:81d9 =====

void FUN_CODE_81d9(void)

{
  DAT_SFR_91 = 0xc0;
  DAT_SFR_96 = 0;
  DAT_SFR_94 = 0x5f;
  DAT_SFR_95 = 0x11;
  DAT_EXTMEM_0322 = 0;
  DAT_EXTMEM_0324 = 0;
  return;
}


// ===== FUN_CODE_81ee @ CODE:81ee =====

undefined1 FUN_CODE_81ee(void)

{
  TH2 = 0xfe;
  TL2 = 0x6f;
  RCAP2H = 0xfe;
  RCAP2L = 0x6f;
  T2MOD = 0;
  T2CON = 4;
  return 0;
}


// ===== FUN_CODE_8201 @ CODE:8201 =====

char FUN_CODE_8201(void)

{
  if (200 < DAT_EXTMEM_0321) {
    _3_6 = 1;
    return DAT_EXTMEM_0321 + 0x37;
  }
  DAT_EXTMEM_0321 = DAT_EXTMEM_0321 + 1;
  return DAT_EXTMEM_0321;
}


// ===== FUN_CODE_8238 @ CODE:8238 =====

undefined1 FUN_CODE_8238(void)

{
  SADDR = 1;
  DAT_SFR_ba = 0;
  DAT_SFR_b6 = 0;
  DAT_SFR_b4 = 0;
  IP = 0;
  DAT_SFR_b5 = 0;
  SADEN = 0;
  return 0;
}


// ===== FUN_CODE_8258 @ CODE:8258 =====

void FUN_CODE_8258(void)

{
  char cVar1;
  undefined1 *puVar2;
  
  FUN_CODE_79d2();
  cVar1 = '\x18';
  puVar2 = &DAT_EXTMEM_02fe;
  do {
    *puVar2 = 0;
    puVar2 = puVar2 + 1;
    cVar1 = cVar1 + -1;
  } while (cVar1 != '\0');
  return;
}


// ===== FUN_CODE_8266 @ CODE:8266 =====

/* WARNING: Control flow encountered bad instruction data */

void FUN_CODE_8266(void)

{
  EA = 0;
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ===== FUN_CODE_8271 @ CODE:8271 =====

void FUN_CODE_8271(void)

{
  _1_0 = 0;
  _0_1 = 0;
  _5_0 = 0;
  return;
}


// ===== FUN_CODE_8278 @ CODE:8278 =====

void FUN_CODE_8278(void)

{
  byte bVar1;
  
  bVar1 = HADDR;
  HADDR = bVar1 | 8;
  bVar1 = HADDR;
  HADDR = bVar1 | 2;
  return;
}


// ===== FUN_CODE_827f @ CODE:827f =====

void FUN_CODE_827f(void)

{
  byte bVar1;
  
  bVar1 = DAT_SFR_9b;
  DAT_SFR_9b = bVar1 & 0xf0;
  bVar1 = HADDR;
  HADDR = bVar1 | 4;
  return;
}


// ===== FUN_CODE_8286 @ CODE:8286 =====

void FUN_CODE_8286(void)

{
  HIFLG = 0;
  _5_2 = 1;
  return;
}


// ===== FUN_CODE_828c @ CODE:828c =====

undefined1 FUN_CODE_828c(void)

{
  IPH1 = 0;
  TMOD = 0;
  return 0;
}


