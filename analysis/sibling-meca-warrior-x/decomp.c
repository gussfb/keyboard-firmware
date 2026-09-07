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
  cVar2 = '\x10';
  do {
    do {
      *puVar4 = 0;
      puVar4 = puVar4 + 1;
      cVar3 = cVar3 + -1;
    } while (cVar3 != '\0');
    cVar2 = cVar2 + -1;
  } while (cVar2 != '\0');
  SP_ = 0x6e;
  FUN_CODE_44c2();
  return;
}


// ===== ISR_03 @ CODE:0003 =====

undefined1 ISR_03(undefined1 param_1)

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
  TF2 = 0;
  if ((_3_5 != '\x01') && (_4_4 != '\x01')) {
    FUN_CODE_2dbd();
  }
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
  _6_4 = 1;
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
  char cVar1;
  char cVar2;
  byte bVar3;
  
  bVar3 = 0;
  cVar2 = '\0';
  do {
    FUN_CODE_004e();
    nop();
    nop();
    bVar3 = bVar3 * '\x02';
    cVar1 = TR1;
    if (cVar1 != '\0') {
      bVar3 = bVar3 | 1;
    }
    FUN_CODE_c1e9(bVar3);
    nop();
    nop();
    cVar2 = cVar2 + '\x01';
  } while (cVar2 != '\b');
  return;
}


// ===== ISR_23 @ CODE:0023 =====

void ISR_23(char param_1,byte param_2)

{
  char cVar1;
  
  while( true ) {
    nop();
    nop();
    param_2 = param_2 * '\x02';
    cVar1 = TR1;
    if (cVar1 != '\0') {
      param_2 = param_2 | 1;
    }
    FUN_CODE_c1e9(param_2);
    nop();
    nop();
    param_1 = param_1 + '\x01';
    if (param_1 == '\b') break;
    FUN_CODE_004e();
  }
  return;
}


// ===== ISR_2B @ CODE:002b =====

void ISR_2B(byte param_1,char param_2)

{
  char cVar1;
  
  BANK0_R3 = param_2;
  do {
    param_1 = param_1 | 1;
    do {
      FUN_CODE_c1e9(param_1);
      nop();
      nop();
      param_2 = param_2 + '\x01';
      if (param_2 == '\b') {
        return;
      }
      FUN_CODE_004e();
      nop();
      nop();
      param_1 = param_1 * '\x02';
      cVar1 = TR1;
    } while (cVar1 == '\0');
  } while( true );
}


// ===== ISR_33 @ CODE:0033 =====

void ISR_33(char param_1,byte param_2)

{
  char cVar1;
  
  while( true ) {
    nop();
    nop();
    param_1 = param_1 + '\x01';
    if (param_1 == '\b') break;
    FUN_CODE_004e();
    nop();
    nop();
    param_2 = param_2 * '\x02';
    cVar1 = TR1;
    if (cVar1 != '\0') {
      param_2 = param_2 | 1;
    }
    FUN_CODE_c1e9(param_2);
  }
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
  FUN_CODE_8c56();
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


// ===== FUN_CODE_0046 @ CODE:0046 =====

void FUN_CODE_0046(void)

{
  TF0 = 0;
  return;
}


// ===== ISR_4B @ CODE:004b =====

void ISR_4B(void)

{
  return;
}


// ===== FUN_CODE_004e @ CODE:004e =====

void FUN_CODE_004e(void)

{
  P0_3 = 0;
  return;
}


// ===== ISR_53 @ CODE:0053 =====

void ISR_53(void)

{
  return;
}


// ===== ISR_5B @ CODE:005b =====

undefined1 ISR_5B(undefined1 param_1)

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
  uVar1 = EPCON;
  uVar1 = DAT_SFR_86;
  uVar2 = WCON;
  TF2 = 0;
  if ((_3_5 != '\x01') && (_4_4 != '\x01')) {
    FUN_CODE_2dbd();
  }
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


// ===== ISR_63 @ CODE:0063 =====

void ISR_63(void)

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
  do {
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
  } while( true );
}


// ===== ISR_6B @ CODE:006b =====

void ISR_6B(char param_1,char *param_2,char *param_3,char param_4,char param_5,char param_6,
           char param_7,char param_8,char param_9)

{
  byte bVar1;
  undefined1 uVar2;
  byte bVar3;
  char cVar4;
  char *pcVar5;
  char *pcVar6;
  char *pcVar7;
  
  BANK0_R5 = BANK0_R5 + '\x01';
  BANK0_R6 = BANK0_R6 + '\x01';
  *param_2 = *param_2 + '\x01';
  *param_3 = *param_3 + '\x01';
  *param_3 = *param_3 + '\x01';
  *param_3 = *param_3 + '\x01';
  param_2 = param_2 + '\x02';
  param_3 = param_3 + '\x02';
  param_4 = param_4 + '\x02';
  param_5 = param_5 + '\x01';
  param_6 = param_6 + '\x02';
  param_7 = param_7 + '\x01';
  bVar3 = param_8 + 2;
  param_9 = param_9 + '\x01';
  if (_2_0 == '\0') {
    cVar4 = FUN_CODE_1314();
    pcVar7 = (char *)(cVar4 + -1);
    BANK2_R6 = BANK2_R6 + -1;
    *param_3 = *param_3 + -1;
    param_3 = param_3 + -1;
    param_4 = param_4 + -1;
    param_5 = param_5 + -1;
    param_6 = param_6 + -1;
    param_7 = param_7 + -1;
    param_9 = param_9 + -1;
    param_2 = param_2 + -1;
    pcVar5 = pcVar7;
    if (_4_1 == '\x01') {
      DAT_INTMEM_64 = DAT_INTMEM_64 ^ (byte)pcVar7;
      *pcVar7 = (char)pcVar7;
      *pcVar7 = (char)pcVar7;
      IB_CON3 = pcVar7;
      *(char **)ZEXT12(pcVar7) = pcVar7;
      *(char **)ZEXT12(pcVar7) = pcVar7;
      FUN_CODE_07f0(pcVar7,pcVar7,pcVar7,pcVar7,pcVar7,pcVar7);
      uVar2 = RXCON;
      goto code_c0x00d6;
    }
  }
  else {
    _2_0 = '\0';
    pcVar5 = (char *)(param_1 + '\x02');
  }
  pcVar7 = param_2;
  param_3 = param_3 + param_7 + param_5 + param_4 + ((char)pcVar5 << 1 | (byte)pcVar5 >> 7) +
                                                    DAT_INTMEM_26 + *param_3;
  pcVar5 = param_3 + bVar3;
  if (_6_2 != '\0') {
    bVar3 = DAT_INTMEM_36 - ((CARRY1((byte)param_3,bVar3) << 7) >> 7);
    pcVar6 = pcVar5 + bVar3;
    bVar3 = (char)pcVar7 - ((CARRY1((byte)pcVar5,bVar3) << 7) >> 7);
    pcVar5 = pcVar6 + bVar3;
    bVar3 = param_4 - ((CARRY1((byte)pcVar6,bVar3) << 7) >> 7);
    pcVar7 = pcVar5 + bVar3;
    bVar3 = param_6 - ((CARRY1((byte)pcVar5,bVar3) << 7) >> 7);
    bVar1 = param_7 - ((CARRY1((byte)pcVar7,bVar3) << 7) >> 7);
    FUN_CODE_0243(pcVar7 + bVar3 +
                  (param_9 - ((CARRY1((byte)(pcVar7 + bVar3),bVar1) << 7) >> 7)) + bVar1);
    return;
  }
code_c0x00d6:
  FUN_CODE_07e0(*(undefined1 *)ZEXT12(pcVar7));
  return;
}


// ===== ISR_73 @ CODE:0073 =====

void ISR_73(byte param_1,char param_2,char *param_3,char param_4,char param_5,char param_6,
           char param_7,char param_8,char param_9)

{
  undefined1 uVar1;
  byte bVar2;
  byte bVar3;
  char cVar4;
  byte bVar5;
  char *pcVar6;
  char *pcVar7;
  
  *param_3 = *param_3 + '\x01';
  *param_3 = *param_3 + '\x01';
  bVar2 = param_2 + 2;
  param_3 = param_3 + '\x02';
  param_4 = param_4 + '\x02';
  param_5 = param_5 + '\x01';
  param_6 = param_6 + '\x02';
  param_7 = param_7 + '\x01';
  bVar3 = param_8 + 2;
  param_9 = param_9 + '\x01';
  if (_2_0 == '\0') {
    cVar4 = FUN_CODE_1314();
    bVar5 = cVar4 - 1;
    BANK2_R6 = BANK2_R6 + -1;
    *param_3 = *param_3 + -1;
    param_3 = param_3 + -1;
    param_4 = param_4 + -1;
    param_5 = param_5 + -1;
    param_6 = param_6 + -1;
    param_7 = param_7 + -1;
    param_9 = param_9 + -1;
    bVar2 = bVar2 - 1;
    param_1 = bVar5;
    if (_4_1 == '\x01') {
      DAT_INTMEM_64 = DAT_INTMEM_64 ^ bVar5;
      *(byte *)bVar5 = bVar5;
      *(byte *)bVar5 = bVar5;
      IB_CON3 = bVar5;
      *(byte *)(ushort)bVar5 = bVar5;
      *(byte *)(ushort)bVar5 = bVar5;
      FUN_CODE_07f0(bVar5,bVar5,bVar5,bVar5,bVar5,bVar5);
      uVar1 = RXCON;
      goto code_c0x00d6;
    }
  }
  else {
    _2_0 = '\0';
  }
  bVar5 = bVar2;
  param_3 = param_3 + param_7 + param_5 + param_4 + (param_1 << 1 | param_1 >> 7) + DAT_INTMEM_26 +
                                                    *param_3;
  pcVar6 = param_3 + bVar3;
  if (_6_2 != '\0') {
    bVar2 = DAT_INTMEM_36 - ((CARRY1((byte)param_3,bVar3) << 7) >> 7);
    pcVar7 = pcVar6 + bVar2;
    bVar5 = bVar5 - ((CARRY1((byte)pcVar6,bVar2) << 7) >> 7);
    pcVar6 = pcVar7 + bVar5;
    bVar2 = param_4 - ((CARRY1((byte)pcVar7,bVar5) << 7) >> 7);
    pcVar7 = pcVar6 + bVar2;
    bVar2 = param_6 - ((CARRY1((byte)pcVar6,bVar2) << 7) >> 7);
    bVar3 = param_7 - ((CARRY1((byte)pcVar7,bVar2) << 7) >> 7);
    FUN_CODE_0243(pcVar7 + bVar2 +
                  (param_9 - ((CARRY1((byte)(pcVar7 + bVar2),bVar3) << 7) >> 7)) + bVar3);
    return;
  }
code_c0x00d6:
  FUN_CODE_07e0(*(undefined1 *)(ushort)bVar5);
  return;
}


// ===== ISR_7B @ CODE:007b =====

void ISR_7B(byte param_1,byte param_2,char *param_3,char param_4,char param_5,char param_6,
           char param_7,char param_8,char param_9)

{
  undefined1 uVar1;
  byte bVar2;
  char cVar3;
  byte bVar4;
  char *pcVar5;
  char *pcVar6;
  
  param_5 = param_5 + '\x01';
  param_6 = param_6 + '\x02';
  param_7 = param_7 + '\x01';
  bVar2 = param_8 + 2;
  param_9 = param_9 + '\x01';
  if (_2_0 == '\0') {
    cVar3 = FUN_CODE_1314();
    bVar4 = cVar3 - 1;
    BANK2_R6 = BANK2_R6 + -1;
    *param_3 = *param_3 + -1;
    param_3 = param_3 + -1;
    param_4 = param_4 + -1;
    param_5 = param_5 + -1;
    param_6 = param_6 + -1;
    param_7 = param_7 + -1;
    param_9 = param_9 + -1;
    param_2 = param_2 - 1;
    param_1 = bVar4;
    if (_4_1 == '\x01') {
      DAT_INTMEM_64 = DAT_INTMEM_64 ^ bVar4;
      *(byte *)bVar4 = bVar4;
      *(byte *)bVar4 = bVar4;
      IB_CON3 = bVar4;
      *(byte *)(ushort)bVar4 = bVar4;
      *(byte *)(ushort)bVar4 = bVar4;
      FUN_CODE_07f0(bVar4,bVar4,bVar4,bVar4,bVar4,bVar4);
      uVar1 = RXCON;
      goto code_c0x00d6;
    }
  }
  else {
    _2_0 = '\0';
  }
  bVar4 = param_2;
  param_3 = param_3 + param_7 + param_5 + param_4 + (param_1 << 1 | param_1 >> 7) + DAT_INTMEM_26 +
                                                    *param_3;
  pcVar5 = param_3 + bVar2;
  if (_6_2 != '\0') {
    bVar2 = DAT_INTMEM_36 - ((CARRY1((byte)param_3,bVar2) << 7) >> 7);
    pcVar6 = pcVar5 + bVar2;
    bVar4 = bVar4 - ((CARRY1((byte)pcVar5,bVar2) << 7) >> 7);
    pcVar5 = pcVar6 + bVar4;
    bVar2 = param_4 - ((CARRY1((byte)pcVar6,bVar4) << 7) >> 7);
    pcVar6 = pcVar5 + bVar2;
    bVar2 = param_6 - ((CARRY1((byte)pcVar5,bVar2) << 7) >> 7);
    bVar4 = param_7 - ((CARRY1((byte)pcVar6,bVar2) << 7) >> 7);
    FUN_CODE_0243(pcVar6 + bVar2 +
                  (param_9 - ((CARRY1((byte)(pcVar6 + bVar2),bVar4) << 7) >> 7)) + bVar4);
    return;
  }
code_c0x00d6:
  FUN_CODE_07e0(*(undefined1 *)(ushort)bVar4);
  return;
}


// ===== FUN_CODE_0100 @ CODE:0100 =====

void FUN_CODE_0100(byte param_1,char param_2,char *param_3,char param_4,char param_5,char param_6)

{
  byte bVar1;
  undefined1 uVar2;
  char cVar3;
  char *pcVar4;
  char cVar5;
  char cVar6;
  char cVar7;
  byte bVar8;
  byte bVar9;
  
  if ((param_4 == -0x48) && (*param_3 == -0x4b)) {
    bVar1 = TXD;
    TXD = bVar1 ^ 1;
    uVar2 = EA;
    cVar7 = DAT_SFR_ad;
    cVar6 = DAT_SFR_ab;
    cVar5 = SADDR;
    pcVar4 = (char *)WCON;
    cVar3 = DAT_SFR_a5;
    *pcVar4 = cVar3;
    bVar8 = P2_1;
    bVar1 = SM0;
    bVar1 = cVar7 - ((char)((bVar8 & 1 | bVar1 ^ 1) << 7) >> 7);
    bVar8 = param_1 * param_2 - bVar1;
    bVar1 = param_6 - (((param_1 * param_2 < bVar1) << 7) >> 7);
    bVar9 = bVar8 - bVar1;
    bVar1 = cVar6 - (((bVar8 < bVar1) << 7) >> 7);
    bVar8 = bVar9 - bVar1;
    bVar1 = param_5 - (((bVar9 < bVar1) << 7) >> 7);
    bVar9 = bVar8 - bVar1;
    bVar1 = cVar5 - (((bVar8 < bVar1) << 7) >> 7);
    bVar8 = bVar9 - bVar1;
    bVar1 = 0xb8 - (((bVar9 < bVar1) << 7) >> 7);
    bVar9 = bVar8 - bVar1;
    bVar1 = (char)pcVar4 - (((bVar8 < bVar1) << 7) >> 7);
    bVar8 = bVar9 - bVar1;
    bVar1 = cINTMEMb8 - (((bVar9 < bVar1) << 7) >> 7);
    bVar9 = bVar8 - bVar1;
    bVar1 = *pcVar4 - (((bVar8 < bVar1) << 7) >> 7);
    cVar3 = DAT_SFR_94;
    P1_1 = bVar9 - bVar1 < (byte)(cVar3 - (((bVar9 < bVar1) << 7) >> 7));
    TH0 = param_6;
    TL0 = param_5;
    TCON = 0xb8;
    DAT_SFR_86 = cINTMEMb8;
    uVar2 = DPXL;
    uVar2 = P0_1;
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
    do {
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
    } while( true );
  }
  *(byte *)param_1 = param_1;
  *(byte *)param_1 = param_1;
  IB_CON3 = param_1;
  *(byte *)(ushort)param_1 = param_1;
  *(byte *)(ushort)param_1 = param_1;
  FUN_CODE_07f0(param_1,param_1,param_1,param_1,param_1,param_1);
  uVar2 = RXCON;
  FUN_CODE_07e0(*(undefined1 *)(ushort)param_1);
  return;
}


// ===== FUN_CODE_0203 @ CODE:0203 =====

void FUN_CODE_0203(void)

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
  do {
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
  } while( true );
}


// ===== FUN_CODE_0243 @ CODE:0243 =====

void FUN_CODE_0243(void)

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
  do {
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
  } while( true );
}


// ===== FUN_CODE_07e0 @ CODE:07e0 =====

void FUN_CODE_07e0(void)

{
  do {
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
  } while( true );
}


// ===== FUN_CODE_07f0 @ CODE:07f0 =====

/* WARNING: Instruction at (CODE,0x080b) overlaps instruction at (CODE,0x080a)
    */

byte FUN_CODE_07f0(byte param_1,byte *param_2,byte *param_3,byte param_4,byte param_5,byte param_6,
                  char param_7,char param_8,char param_9)

{
  byte bVar1;
  byte bVar2;
  byte bVar3;
  byte *pbVar4;
  byte *pbVar5;
  byte bVar6;
  byte bVar7;
  byte bVar8;
  byte in_PSW;
  char cVar9;
  
  bVar1 = param_7 + 1;
  bVar2 = param_8 + 1;
  bVar3 = param_9 + 1;
  if (_2_1 == '\0') {
    cVar9 = param_1 << 7;
    bVar8 = (param_1 >> 1 | in_PSW & 0x80) - 1;
    BANK2_R6 = BANK2_R6 + -1;
    *param_3 = *param_3 - 1;
    param_2 = param_2 + -1;
    param_3 = param_3 + -1;
    param_4 = param_4 - 1;
    goto code_c0x0802;
  }
  _2_1 = '\0';
  param_5 = param_5 + 1;
  param_6 = param_6 + 1;
  do {
    pbVar4 = param_2 + param_1 + DAT_INTMEM_26 + *param_3 + (char)param_3 +
             bVar2 + bVar1 + param_6 + param_5 + param_4;
    cVar9 = CARRY1((byte)pbVar4,bVar3) << 7;
    pbVar5 = pbVar4 + bVar3;
    if (_6_1 == '\0') {
      bVar6 = (byte)pbVar5 ^ 99;
      DAT_INTMEM_61 = DAT_INTMEM_61 ^ bVar6;
      goto code_c0x0847;
    }
    bVar6 = (char)pbVar5 * '\x02' | CARRY1((byte)pbVar4,bVar3);
    bVar8 = 0x35 - ((char)pbVar5 >> 7);
    bVar7 = bVar6 + bVar8;
    bVar8 = *param_2 - ((CARRY1(bVar6,bVar8) << 7) >> 7);
    bVar6 = bVar7 + bVar8;
    bVar8 = *param_3 - ((CARRY1(bVar7,bVar8) << 7) >> 7);
    bVar7 = bVar6 + bVar8;
    bVar8 = (char)param_2 - ((CARRY1(bVar6,bVar8) << 7) >> 7);
    bVar6 = bVar7 + bVar8;
    bVar8 = (char)param_3 - ((CARRY1(bVar7,bVar8) << 7) >> 7);
    bVar7 = bVar6 + bVar8;
    bVar8 = param_4 - ((CARRY1(bVar6,bVar8) << 7) >> 7);
    bVar6 = bVar7 + bVar8;
    bVar8 = param_5 - ((CARRY1(bVar7,bVar8) << 7) >> 7);
    bVar7 = bVar6 + bVar8;
    bVar8 = param_6 - ((CARRY1(bVar6,bVar8) << 7) >> 7);
    bVar6 = bVar7 + bVar8;
    bVar8 = bVar1 - ((CARRY1(bVar7,bVar8) << 7) >> 7);
    bVar7 = bVar6 + bVar8;
    bVar8 = bVar2 - ((CARRY1(bVar6,bVar8) << 7) >> 7);
    bVar6 = bVar7 + bVar8;
    bVar8 = bVar3 - ((CARRY1(bVar7,bVar8) << 7) >> 7);
    cVar9 = CARRY1(bVar6,bVar8) << 7;
    bVar6 = bVar6 + bVar8;
    if (cVar9 < '\0') goto LAB_CODE_0868;
    DAT_INTMEM_43 = DAT_INTMEM_43 | bVar6;
    bVar8 = bVar6 | 0x45 | *param_2;
    while( true ) {
      bVar8 = bVar8 | *param_3 | (byte)param_2 | (byte)param_3 | param_4 | param_5 | param_6 | bVar1
              | bVar2 | bVar3;
      if (-1 < cVar9) {
        bVar2 = bVar8 + *param_2 + DAT_INTMEM_24;
        return bVar2 * '\x02' | bVar2 >> 7;
      }
      DAT_INTMEM_53 = DAT_INTMEM_53 & bVar8;
      bVar6 = bVar8 & 0x55 & *param_2 & *param_3 & (byte)param_2 & (byte)param_3 & param_4 & param_5
              & param_6 & bVar1 & bVar2 & bVar3;
      if (bVar6 == 0) {
        *param_2 = *param_2 + 1;
        BANK0_R4 = BANK0_R4 + '\x01';
        bVar2 = FUN_CODE_0100(0);
        return bVar2;
      }
code_c0x0847:
      DAT_INTMEM_63 = DAT_INTMEM_63 ^ bVar6;
      DAT_INTMEM_62 = DAT_INTMEM_62 ^ 0x61;
      bVar8 = 0;
      if ((bVar6 ^ 100) != 0) {
        bVar8 = (bVar6 ^ 100) & bVar2 & bVar1 & param_6 & param_5 & param_4 & (byte)param_3 &
                (byte)param_2 & *param_3 & *param_2 & DAT_INTMEM_54;
        DAT_INTMEM_52 = DAT_INTMEM_52 & 0x51;
        if (cVar9 < '\0') {
          bVar6 = bVar8 | bVar2 | bVar1 | param_6 | param_5 | param_4 | (byte)param_3 |
                  (byte)param_2 | *param_3;
LAB_CODE_0868:
          bVar8 = bVar6 | *param_2 | DAT_INTMEM_44;
          DAT_INTMEM_42 = DAT_INTMEM_42 | 0x41;
          if (-1 < cVar9) {
            bVar2 = bVar2 - (cVar9 >> 7);
            bVar3 = bVar8 + bVar2;
            bVar1 = bVar1 - ((CARRY1(bVar8,bVar2) << 7) >> 7);
            bVar2 = bVar3 + bVar1;
            param_6 = param_6 - ((CARRY1(bVar3,bVar1) << 7) >> 7);
            bVar1 = bVar2 + param_6;
            param_5 = param_5 - ((CARRY1(bVar2,param_6) << 7) >> 7);
            bVar2 = bVar1 + param_5;
            param_4 = param_4 - ((CARRY1(bVar1,param_5) << 7) >> 7);
            bVar1 = bVar2 + param_4;
            bVar2 = (char)param_3 - ((CARRY1(bVar2,param_4) << 7) >> 7);
            bVar3 = bVar1 + bVar2;
            bVar2 = (char)param_2 - ((CARRY1(bVar1,bVar2) << 7) >> 7);
            bVar1 = bVar3 + bVar2;
            bVar2 = *param_3 - ((CARRY1(bVar3,bVar2) << 7) >> 7);
            bVar3 = bVar1 + bVar2;
            bVar2 = *param_2 - ((CARRY1(bVar1,bVar2) << 7) >> 7);
            bVar1 = bVar3 + bVar2;
            bVar2 = DAT_INTMEM_34 - ((CARRY1(bVar3,bVar2) << 7) >> 7);
            return (bVar1 + bVar2) * '\x02' | CARRY1(bVar1,bVar2);
          }
        }
      }
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
code_c0x0802:
      bVar1 = bVar1 - 1;
      bVar2 = bVar2 - 1;
      bVar3 = bVar3 - 1;
      if (_4_1 != '\x01') break;
      bVar8 = bVar8 | DAT_INTMEM_46;
    }
    param_1 = (bVar8 << 1 | bVar8 >> 7) + 0x25 + *param_2;
  } while( true );
}


// ===== FUN_CODE_1314 @ CODE:1314 =====

char FUN_CODE_1314(byte *param_1,byte param_2,byte param_3,byte param_4)

{
  char *pcVar1;
  byte bVar2;
  byte bVar3;
  byte bVar4;
  byte in_PSW;
  
  bVar2 = 0x7c;
  pcVar1 = (char *)0x76;
  uINTMEM73 = 0x70;
  DAT_INTMEM_62 = DAT_INTMEM_62 ^ 0x60;
  bVar4 = in_PSW & 0xdd;
  bVar3 = func_0x124e();
  bVar3 = bVar3 | param_4 | param_2 | (byte)param_1 | *param_1 | 0x42;
  if ((char)bVar4 < '\0') {
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
    nop();
    nop();
    nop();
    nop();
    nop();
    do {
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
      while (bVar3 = bVar3 ^ (byte)param_1 ^ param_3 ^ bVar2, bVar3 != 0) {
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
        nop();
        nop();
        nop();
        nop();
        nop();
        nop();
        nop();
        nop();
        nop();
      }
    } while( true );
  }
  bVar2 = bVar2 - ((char)bVar4 >> 7);
  bVar4 = bVar3 + bVar2;
  param_4 = param_4 - ((CARRY1(bVar3,bVar2) << 7) >> 7);
  bVar2 = bVar4 + param_4;
  param_3 = param_3 - ((CARRY1(bVar4,param_4) << 7) >> 7);
  bVar3 = bVar2 + param_3;
  bVar4 = (char)pcVar1 - ((CARRY1(bVar2,param_3) << 7) >> 7);
  bVar2 = bVar3 + bVar4;
  bVar4 = (char)param_1 - ((CARRY1(bVar3,bVar4) << 7) >> 7);
  bVar3 = bVar2 + bVar4;
  bVar4 = *pcVar1 - ((CARRY1(bVar2,bVar4) << 7) >> 7);
  bVar2 = bVar3 + bVar4;
  bVar4 = *param_1 - ((CARRY1(bVar3,bVar4) << 7) >> 7);
  return bVar2 + bVar4 + ('3' - ((CARRY1(bVar2,bVar4) << 7) >> 7));
}


// ===== FUN_CODE_1887 @ CODE:1887 =====

/* WARNING: Type propagation algorithm not settling */

byte FUN_CODE_1887(byte param_1)

{
  byte bVar1;
  char cVar2;
  byte bVar3;
  char cVar4;
  char cVar5;
  byte bVar6;
  byte bVar7;
  undefined1 uVar8;
  undefined1 *puVar9;
  
  DAT_INTMEM_2b = 0;
  DAT_EXTMEM_08e4 = param_1;
  do {
    if (0x16 < DAT_INTMEM_2b) {
      return DAT_INTMEM_2b - 0x17;
    }
    bVar3 = DAT_EXTMEM_08e8;
    FUN_CODE_8145(BANK0_R1,DAT_INTMEM_2b,DAT_EXTMEM_08e5,DAT_EXTMEM_08e6,DAT_EXTMEM_08e7);
    if ((bVar3 & 1) != 0) {
      puVar9 = (undefined1 *)
               CONCAT11('\b' - (((0x38 < DAT_EXTMEM_08e4 * '\x04') << 7) >> 7),
                        DAT_EXTMEM_08e4 * '\x04' - 0x39);
      bVar3 = puVar9[3];
      bVar6 = DAT_INTMEM_2b;
      bVar7 = DAT_EXTMEM_08e4;
      FUN_CODE_8145(DAT_INTMEM_2b,*puVar9,puVar9[1],puVar9[2]);
      _0_0 = (bVar3 & 1) != 0;
      if ((bVar7 == 5) && (bVar6 == 10)) {
        if ((bool)_0_0) {
          for (DAT_EXTMEM_08e9 = 0; DAT_EXTMEM_08e9 < 0x10; DAT_EXTMEM_08e9 = DAT_EXTMEM_08e9 + 1) {
            bVar3 = *(byte *)CONCAT11('\a' - (((0xf9 < DAT_EXTMEM_08e9) << 7) >> 7),
                                      DAT_EXTMEM_08e9 + 6);
            if (bVar3 != 0) {
              return bVar3;
            }
          }
          _2_0 = '\x01';
          _2_4 = 1;
        }
        else {
          FUN_CODE_943f(BANK0_R1,DAT_EXTMEM_08e4);
          _2_0 = '\0';
          _3_1 = 0;
          BANK3_R4 = 0;
          BANK3_R5 = 0;
          for (DAT_EXTMEM_08e9 = 0; bVar3 = DAT_EXTMEM_08e9, DAT_EXTMEM_08e9 < 0x10;
              DAT_EXTMEM_08e9 = DAT_EXTMEM_08e9 + 1) {
            *(undefined1 *)
             CONCAT11('\a' - (((0xf9 < DAT_EXTMEM_08e9) << 7) >> 7),DAT_EXTMEM_08e9 + 6) = 0;
            *(undefined1 *)CONCAT11('\a' - (((0xb9 < bVar3) << 7) >> 7),bVar3 + 0x46) = 0;
          }
        }
      }
      if (((DAT_EXTMEM_08e4 == 1) && (DAT_INTMEM_2b == 0x11)) && (_2_0 == '\x01')) {
        if (_0_0 != '\x01') {
          return 0;
        }
        if ((0x1f < DAT_INTMEM_69) && (DAT_INTMEM_69 < 0x25)) {
          if (_2_7 == '\0') {
            _2_7 = 1;
            DAT_INTMEM_63 = 0;
            _4_6 = 0;
            _3_3 = 1;
            BANK2_R1 = DAT_INTMEM_69;
            FUN_CODE_a0bf();
            if (BANK2_R1 == 0x20) {
              DAT_EXTMEM_07a9 = -0x14;
              bVar3 = 0xec;
            }
            else if (BANK2_R1 == 0x21) {
              DAT_EXTMEM_07a9 = -0x1a;
              bVar3 = 0xe6;
            }
            else if (BANK2_R1 == 0x22) {
              DAT_EXTMEM_07a9 = -0x18;
              bVar3 = 0xe8;
            }
            else if (BANK2_R1 == 0x23) {
              DAT_EXTMEM_07a9 = -0x16;
              bVar3 = 0xea;
            }
            else {
              bVar3 = BANK2_R1;
              if (BANK2_R1 == 0x24) {
                bVar3 = 0xda;
                DAT_EXTMEM_07a9 = -0x26;
              }
            }
            DAT_INTMEM_69 = 0x30;
            return bVar3;
          }
          return DAT_INTMEM_69 - 0x25;
        }
        if ((DAT_INTMEM_69 ^ 0x30) != 0) {
          return DAT_INTMEM_69 ^ 0x30;
        }
        if (BANK2_R1 == ' ') {
          uVar8 = 0xec;
        }
        else if (BANK2_R1 == '!') {
          uVar8 = 0xe6;
        }
        else if (BANK2_R1 == '\"') {
          uVar8 = 0xe8;
        }
        else if (BANK2_R1 == '#') {
          uVar8 = 0xea;
        }
        else {
          if (BANK2_R1 != '$') goto LAB_CODE_1a23;
          uVar8 = 0xda;
        }
        FUN_CODE_bebf(uVar8);
LAB_CODE_1a23:
        for (DAT_EXTMEM_08e9 = 0; DAT_EXTMEM_08e9 < 0x55; DAT_EXTMEM_08e9 = DAT_EXTMEM_08e9 + 1) {
          FUN_CODE_bdc0(*(undefined1 *)
                         CONCAT11('\x04' - (((9 < DAT_EXTMEM_08e9) << 7) >> 7),DAT_EXTMEM_08e9 - 10)
                        ,DAT_EXTMEM_08e9 * '\x03',DAT_EXTMEM_07a9);
          FUN_CODE_bdc0(*(undefined1 *)
                         CONCAT11('\x05' - (((0x74 < DAT_EXTMEM_08e9) << 7) >> 7),
                                  DAT_EXTMEM_08e9 + 0x8b),DAT_EXTMEM_08e9 * '\x03' + '\x01',
                        DAT_EXTMEM_07a9);
          FUN_CODE_bdc0(*(undefined1 *)
                         CONCAT11('\x06' - (((0xdf < DAT_EXTMEM_08e9) << 7) >> 7),
                                  DAT_EXTMEM_08e9 + 0x20),DAT_EXTMEM_08e9 * '\x03' + '\x02',
                        DAT_EXTMEM_07a9);
        }
        FUN_CODE_bdc0(DAT_EXTMEM_054b,0xff,DAT_EXTMEM_07a9);
        FUN_CODE_bdc0(DAT_EXTMEM_05e0,0,DAT_EXTMEM_07a9 + '\x01');
        FUN_CODE_bdc0(DAT_EXTMEM_0675,1,DAT_EXTMEM_07a9 + '\x01');
        DAT_EXTMEM_08e9 = 0x56;
        do {
          FUN_CODE_bdc0(*(undefined1 *)
                         CONCAT11('\x04' - (((9 < DAT_EXTMEM_08e9) << 7) >> 7),DAT_EXTMEM_08e9 - 10)
                        ,DAT_EXTMEM_08e9 * '\x03',DAT_EXTMEM_07a9 + '\x01');
          FUN_CODE_bdc0(*(undefined1 *)
                         CONCAT11('\x05' - (((0x74 < DAT_EXTMEM_08e9) << 7) >> 7),
                                  DAT_EXTMEM_08e9 + 0x8b),DAT_EXTMEM_08e9 * '\x03' + '\x01',
                        DAT_EXTMEM_07a9 + '\x01');
          FUN_CODE_bdc0(*(undefined1 *)
                         CONCAT11('\x06' - (((0xdf < DAT_EXTMEM_08e9) << 7) >> 7),
                                  DAT_EXTMEM_08e9 + 0x20),DAT_EXTMEM_08e9 * '\x03' + '\x02',
                        DAT_EXTMEM_07a9 + '\x01');
          bVar3 = DAT_EXTMEM_08e9;
          DAT_EXTMEM_08e9 = DAT_EXTMEM_08e9 + 1;
        } while ((DAT_EXTMEM_08e9 < 0x8a) << 7 < '\0');
        _2_7 = 0;
        DAT_INTMEM_69 = BANK2_R1;
        return bVar3 + 0x77;
      }
      if (_2_7 != '\x01') {
        bVar3 = DAT_EXTMEM_08e4;
        if (((DAT_EXTMEM_08e4 == 0) && (bVar3 = DAT_INTMEM_2b ^ 0xf, bVar3 == 0)) && (_2_0 != '\0'))
        {
          if (_0_0 != '\0') {
            _3_2 = _3_2 ^ 1;
          }
          FUN_CODE_943f(DAT_INTMEM_2b,0);
joined_c0x2247:
          if ((DAT_INTMEM_69 ^ 8) != 0) {
            return DAT_INTMEM_69 ^ 8;
          }
          if (_0_0 == '\x01') {
            bVar3 = FUN_CODE_aede(DAT_INTMEM_2b,DAT_EXTMEM_08e4);
            return bVar3;
          }
          return 0;
        }
        if (_3_2 != 0) {
          return bVar3;
        }
        if (((DAT_EXTMEM_08e4 == 0) && (DAT_INTMEM_2b == 0x10)) && (_2_0 != '\0')) {
          if (_0_0 != '\0') {
            _2_1 = _2_1 ^ 1;
          }
          FUN_CODE_943f(0x10,0);
          goto joined_c0x2247;
        }
        if (((DAT_EXTMEM_08e4 == 0) && (DAT_INTMEM_2b == 0x11)) && (_2_0 != '\0')) {
          if (_0_0 != '\0') {
            _5_6 = _5_6 ^ 1;
          }
          FUN_CODE_943f(0x11);
          goto joined_c0x2247;
        }
        if (((DAT_EXTMEM_08e4 == 1) && (DAT_INTMEM_2b == 0x10)) && (_2_0 != '\0')) {
          if (_0_0 == '\x01') {
            bVar3 = DAT_INTMEM_69 + 1;
            cVar4 = DAT_INTMEM_69 - 0x13;
            DAT_INTMEM_69 = bVar3;
            if (0x13 < bVar3) {
              cVar4 = '\0';
              DAT_INTMEM_69 = 0;
            }
            bVar3 = FUN_CODE_bbdd(cVar4,1);
            _2_3 = 1;
            return bVar3;
          }
          return 0x10;
        }
        if (((DAT_EXTMEM_08e4 == 2) && (DAT_INTMEM_2b == 3)) && (_2_0 != '\0')) {
          if (_0_0 != '\0') {
            _2_6 = _2_6 ^ 1;
          }
          FUN_CODE_943f(3,2);
          goto joined_c0x2247;
        }
        if (((DAT_EXTMEM_08e4 == 2) && (DAT_INTMEM_2b == 0x10)) && (_2_0 != '\0')) {
          if (_0_0 != '\0') {
            DAT_INTMEM_5c = DAT_INTMEM_5c + 1;
            if (7 < DAT_INTMEM_5c) {
              DAT_INTMEM_5c = 0;
            }
            FUN_CODE_9deb(DAT_INTMEM_5c);
            FUN_CODE_baca();
          }
          FUN_CODE_943f(DAT_INTMEM_2b,DAT_EXTMEM_08e4);
          goto joined_c0x2247;
        }
        if (((DAT_EXTMEM_08e4 == 1) && (DAT_INTMEM_2b == 2)) && ((_2_0 != '\0' && (_0_0 != '\0'))))
        {
          DAT_INTMEM_69 = 0x20;
          _2_3 = 1;
          return 2;
        }
        if ((((DAT_EXTMEM_08e4 == 1) && (DAT_INTMEM_2b == 3)) && (_2_0 != '\0')) && (_0_0 != '\0'))
        {
          DAT_INTMEM_69 = 0x21;
          _2_3 = 1;
          return 3;
        }
        if (((DAT_EXTMEM_08e4 == 1) && (DAT_INTMEM_2b == 4)) && ((_2_0 != '\0' && (_0_0 != '\0'))))
        {
          DAT_INTMEM_69 = 0x22;
          _2_3 = 1;
          return 4;
        }
        if (((DAT_EXTMEM_08e4 == 1) && (DAT_INTMEM_2b == 5)) && ((_2_0 != '\0' && (_0_0 != '\0'))))
        {
          DAT_INTMEM_69 = 0x23;
          _2_3 = 1;
          return 5;
        }
        if ((((DAT_EXTMEM_08e4 == 1) && (DAT_INTMEM_2b == 6)) && (_2_0 != '\0')) && (_0_0 != '\0'))
        {
          DAT_INTMEM_69 = 0x24;
          _2_3 = 1;
          return 6;
        }
        if (((DAT_EXTMEM_08e4 == 4) && (DAT_INTMEM_2b == 0x11)) && (_2_0 != '\0')) {
          if (_0_0 != '\0') {
            bVar3 = BANK3_R6 + 1;
            cVar4 = BANK3_R6 - 4;
            BANK3_R6 = bVar3;
            if (4 < bVar3) {
              BANK3_R6 = 4;
            }
            FUN_CODE_baca(cVar4);
            FUN_CODE_ac41();
          }
          FUN_CODE_943f(DAT_INTMEM_2b,DAT_EXTMEM_08e4);
          goto joined_c0x2247;
        }
        if (((DAT_EXTMEM_08e4 == 5) && (DAT_INTMEM_2b == 0x11)) && (_2_0 != '\0')) {
          if (_0_0 != '\0') {
            cVar4 = BANK3_R6 - 1;
            if (BANK3_R6 != 0) {
              BANK3_R6 = BANK3_R6 - 1;
            }
            FUN_CODE_baca(cVar4);
            FUN_CODE_ac41();
          }
          FUN_CODE_943f(DAT_INTMEM_2b,DAT_EXTMEM_08e4);
          goto joined_c0x2247;
        }
        if (((DAT_EXTMEM_08e4 == 5) && (DAT_INTMEM_2b == 0x12)) && (_2_0 != '\0')) {
          if (((DAT_INTMEM_69 < 0x13) && (DAT_INTMEM_69 != 0x10)) && (_0_0 != '\0')) {
            cVar4 = BANK3_R3 - 1;
            if (BANK3_R3 != 0) {
              BANK3_R3 = BANK3_R3 - 1;
            }
            FUN_CODE_baca(cVar4);
            if (BANK3_R3 == 0) {
              _5_2 = 1;
              BANK2_R7 = 9;
              _4_6 = 1;
            }
          }
          FUN_CODE_943f(DAT_INTMEM_2b,DAT_EXTMEM_08e4);
          goto joined_c0x2247;
        }
        if (((DAT_EXTMEM_08e4 == 5) && (DAT_INTMEM_2b == 0x10)) && (_2_0 != '\0')) {
          if (((DAT_INTMEM_69 < 0x13) && (DAT_INTMEM_69 != 0x10)) && (_0_0 != '\0')) {
            bVar3 = BANK3_R3 + 1;
            cVar4 = BANK3_R3 - 4;
            BANK3_R3 = bVar3;
            if (4 < bVar3) {
              BANK3_R3 = 4;
            }
            FUN_CODE_baca(cVar4);
            if (BANK3_R3 == 4) {
              _5_2 = 1;
              BANK2_R7 = 9;
              _4_6 = 1;
            }
          }
          FUN_CODE_943f(DAT_INTMEM_2b,DAT_EXTMEM_08e4);
          goto joined_c0x2247;
        }
        if (((DAT_EXTMEM_08e4 == 5) && (DAT_INTMEM_2b == 0xb)) && (_2_0 == '\x01')) {
          if (_0_0 != '\x01') {
            return 0;
          }
          BANK3_R7 = BANK3_R7 + 1;
          if (8 < BANK3_R7) {
            BANK3_R7 = 0;
          }
          if (BANK3_R7 == 0) {
            F8_7 = 1;
LAB_CODE_2330:
            DAT_EXTMEM_ff94 = 0x10;
            DAT_EXTMEM_ff93 = 0x10;
            DAT_EXTMEM_ff92 = 0xb0;
            F8_6 = 0;
            F8_5 = 0;
            return 0x10;
          }
          if (BANK3_R7 == 1) {
            F8_7 = 0;
LAB_CODE_22d3:
            DAT_EXTMEM_ff94 = 0x10;
            DAT_EXTMEM_ff93 = 0x10;
            DAT_EXTMEM_ff92 = 0xb0;
            F8_6 = 1;
            F8_5 = 0;
            return 0x10;
          }
          if (BANK3_R7 == 2) {
            F8_7 = 0;
          }
          else {
            if (BANK3_R7 == 3) {
              F8_7 = 1;
              goto LAB_CODE_22d3;
            }
            if (BANK3_R7 != 4) {
              if (BANK3_R7 == 5) {
                F8_7 = 0;
              }
              else {
                if (BANK3_R7 != 6) {
                  if ((BANK3_R7 ^ 8) != 0) {
                    return BANK3_R7 ^ 8;
                  }
                  F8_7 = 0;
                  goto LAB_CODE_2330;
                }
                F8_7 = 1;
              }
              DAT_EXTMEM_ff94 = 0x10;
              DAT_EXTMEM_ff93 = 0x10;
              DAT_EXTMEM_ff92 = 0xb0;
              F8_6 = 1;
              F8_5 = 1;
              return 0x10;
            }
            F8_7 = 1;
          }
          DAT_EXTMEM_ff94 = 0x10;
          DAT_EXTMEM_ff93 = 0x10;
          DAT_EXTMEM_ff92 = 0xb0;
          F8_6 = 0;
          F8_5 = 1;
          return 0x10;
        }
        if (((DAT_EXTMEM_08e4 == 0) && (DAT_INTMEM_2b == 1)) && (_2_0 != '\0')) {
          if (_0_0 != '\0') {
            BANK3_R4 = 0;
            BANK3_R5 = 0;
            _3_1 = 1;
            return 0;
          }
          BANK3_R4 = 0;
          BANK3_R5 = 0;
          _3_1 = 0;
          return 0;
        }
        if ((DAT_EXTMEM_08e4 == 0) && (DAT_INTMEM_2b == 3)) {
          if (_2_0 != '\0') {
            if (_0_0 == '\0') {
              DAT_EXTMEM_07cb = '\0';
            }
            else {
              DAT_EXTMEM_07cb = -0x6c;
            }
            DAT_EXTMEM_07cc = _0_0 != '\0';
            _0_3 = 1;
            FUN_CODE_943f(3,0);
            goto joined_c0x2247;
          }
          if ((_0_0 != '\x01') && (DAT_EXTMEM_07cb == -0x6c)) {
            DAT_EXTMEM_07cb = 0;
            DAT_EXTMEM_07cc = 0;
            _0_3 = 1;
            return 0;
          }
        }
        if ((DAT_EXTMEM_08e4 == 0) && (DAT_INTMEM_2b == 4)) {
          if (_2_0 != '\0') {
            if (_0_0 == '\0') {
              DAT_EXTMEM_07cc = 0;
              DAT_EXTMEM_07cb = '\0';
            }
            else {
              DAT_EXTMEM_07cb = '!';
              DAT_EXTMEM_07cc = 2;
            }
            _0_3 = 1;
            FUN_CODE_943f(4,0);
            goto joined_c0x2247;
          }
          if ((_0_0 != '\x01') && (DAT_EXTMEM_07cb == '!')) {
            DAT_EXTMEM_07cb = 0;
            DAT_EXTMEM_07cc = 0;
            _0_3 = 1;
            return 0;
          }
        }
        if ((DAT_EXTMEM_08e4 == 0) && (DAT_INTMEM_2b == 5)) {
          if (_2_0 != '\0') {
            if (_0_0 == '\0') {
              DAT_EXTMEM_07cb = '\0';
            }
            else {
              DAT_EXTMEM_07cb = -0x6e;
            }
            DAT_EXTMEM_07cc = _0_0 != '\0';
            _0_3 = 1;
            FUN_CODE_943f(5,0);
            goto joined_c0x2247;
          }
          if ((_0_0 != '\x01') && (DAT_EXTMEM_07cb == -0x6e)) {
            DAT_EXTMEM_07cb = 0;
            DAT_EXTMEM_07cc = 0;
            _0_3 = 1;
            return 0;
          }
        }
        if ((DAT_EXTMEM_08e4 == 0) && (DAT_INTMEM_2b == 6)) {
          if (_2_0 != '\0') {
            if (_0_0 == '\0') {
              DAT_EXTMEM_07cb = '\0';
            }
            else {
              DAT_EXTMEM_07cb = -0x7d;
            }
            DAT_EXTMEM_07cc = _0_0 != '\0';
            _0_3 = 1;
            FUN_CODE_943f(6,0);
            goto joined_c0x2247;
          }
          if ((_0_0 != '\x01') && (DAT_EXTMEM_07cb == -0x7d)) {
            DAT_EXTMEM_07cb = 0;
            DAT_EXTMEM_07cc = 0;
            _0_3 = 1;
            return 0;
          }
        }
        if ((DAT_EXTMEM_08e4 == 0) && (DAT_INTMEM_2b == 7)) {
          if (_2_0 != '\0') {
            if (_0_0 == '\0') {
              DAT_EXTMEM_07cb = '\0';
            }
            else {
              DAT_EXTMEM_07cb = -0x4a;
            }
            DAT_EXTMEM_07cc = 0;
            _0_3 = 1;
            FUN_CODE_943f(7,0);
            goto joined_c0x2247;
          }
          if ((_0_0 != '\x01') && (DAT_EXTMEM_07cb == -0x4a)) {
            DAT_EXTMEM_07cb = 0;
            DAT_EXTMEM_07cc = 0;
            _0_3 = 1;
            return 0;
          }
        }
        if ((DAT_EXTMEM_08e4 == 0) && (DAT_INTMEM_2b == 8)) {
          if (_2_0 != '\0') {
            if (_0_0 == '\0') {
              DAT_EXTMEM_07cb = '\0';
            }
            else {
              DAT_EXTMEM_07cb = -0x4b;
            }
            DAT_EXTMEM_07cc = 0;
            _0_3 = 1;
            FUN_CODE_943f(8,0);
            goto joined_c0x2247;
          }
          if ((_0_0 != '\x01') && (DAT_EXTMEM_07cb == -0x4b)) {
            DAT_EXTMEM_07cb = 0;
            DAT_EXTMEM_07cc = 0;
            _0_3 = 1;
            return 0;
          }
        }
        if ((DAT_EXTMEM_08e4 == 0) && (DAT_INTMEM_2b == 9)) {
          if (_2_0 != '\0') {
            if (_0_0 == '\0') {
              DAT_EXTMEM_07cb = '\0';
            }
            else {
              DAT_EXTMEM_07cb = -0x33;
            }
            DAT_EXTMEM_07cc = 0;
            _0_3 = 1;
            FUN_CODE_943f(9,0);
            goto joined_c0x2247;
          }
          if ((_0_0 != '\x01') && (DAT_EXTMEM_07cb == -0x33)) {
            DAT_EXTMEM_07cb = 0;
            DAT_EXTMEM_07cc = 0;
            _0_3 = 1;
            return 0;
          }
        }
        if ((DAT_EXTMEM_08e4 == 0) && (DAT_INTMEM_2b == 10)) {
          if (_2_0 != '\0') {
            if (_0_0 == '\0') {
              DAT_EXTMEM_07cb = '\0';
            }
            else {
              DAT_EXTMEM_07cb = -0x49;
            }
            DAT_EXTMEM_07cc = 0;
            _0_3 = 1;
            FUN_CODE_943f(10,0);
            goto joined_c0x2247;
          }
          if ((_0_0 != '\x01') && (DAT_EXTMEM_07cb == -0x49)) {
            DAT_EXTMEM_07cb = 0;
            DAT_EXTMEM_07cc = 0;
            _0_3 = 1;
            return 0;
          }
        }
        if ((DAT_EXTMEM_08e4 == 0) && (DAT_INTMEM_2b == 0xb)) {
          if (_2_0 != '\0') {
            if (_0_0 == '\0') {
              DAT_EXTMEM_07cb = '\0';
            }
            else {
              DAT_EXTMEM_07cb = -0x1e;
            }
            DAT_EXTMEM_07cc = 0;
            _0_3 = 1;
            FUN_CODE_943f(0xb,0);
            goto joined_c0x2247;
          }
          if ((_0_0 != '\x01') && (DAT_EXTMEM_07cb == -0x1e)) {
            DAT_EXTMEM_07cb = 0;
            DAT_EXTMEM_07cc = 0;
            _0_3 = 1;
            return 0;
          }
        }
        if ((DAT_EXTMEM_08e4 == 0) && (DAT_INTMEM_2b == 0xc)) {
          if (_2_0 != '\0') {
            if (_0_0 == '\0') {
              DAT_EXTMEM_07cb = '\0';
            }
            else {
              DAT_EXTMEM_07cb = -0x16;
            }
            DAT_EXTMEM_07cc = 0;
            _0_3 = 1;
            FUN_CODE_943f(0xc,0);
            goto joined_c0x2247;
          }
          if ((_0_0 != '\x01') && (DAT_EXTMEM_07cb == -0x16)) {
            DAT_EXTMEM_07cb = 0;
            DAT_EXTMEM_07cc = 0;
            _0_3 = 1;
            return 0;
          }
        }
        if ((DAT_EXTMEM_08e4 == 0) && (DAT_INTMEM_2b == 0xd)) {
          if (_2_0 != '\0') {
            if (_0_0 == '\0') {
              DAT_EXTMEM_07cb = 0;
              DAT_EXTMEM_07cc = 0;
              _0_3 = 1;
              return 0;
            }
            DAT_EXTMEM_07cb = 0xe9;
            DAT_EXTMEM_07cc = 0;
            _0_3 = 1;
            return 0;
          }
          if ((_0_0 != '\x01') && (DAT_EXTMEM_07cb == -0x17)) {
            DAT_EXTMEM_07cb = 0;
            DAT_EXTMEM_07cc = 0;
            _0_3 = 1;
            return 0;
          }
        }
        DAT_EXTMEM_07a8 = DAT_INTMEM_2b + DAT_EXTMEM_08e4 * '\x17';
        if (_2_6 == 1) {
          if ((DAT_EXTMEM_08e4 == 2) && (DAT_INTMEM_2b == 3)) {
            DAT_EXTMEM_07c5 = 0x52;
          }
          else if ((DAT_EXTMEM_08e4 == 3) && (DAT_INTMEM_2b == 2)) {
            DAT_EXTMEM_07c5 = 0x50;
          }
          else if ((DAT_EXTMEM_08e4 == 3) && (DAT_INTMEM_2b == 3)) {
            DAT_EXTMEM_07c5 = 0x51;
          }
          else if ((DAT_EXTMEM_08e4 == 3) && (DAT_INTMEM_2b == 4)) {
            DAT_EXTMEM_07c5 = 0x4f;
          }
          else if ((DAT_EXTMEM_08e4 == 4) && (DAT_INTMEM_2b == 0x11)) {
            DAT_EXTMEM_07c5 = 0x1a;
          }
          else if ((DAT_EXTMEM_08e4 == 5) && (DAT_INTMEM_2b == 0x10)) {
            DAT_EXTMEM_07c5 = 4;
          }
          else if ((DAT_EXTMEM_08e4 == 5) && (DAT_INTMEM_2b == 0x11)) {
            DAT_EXTMEM_07c5 = 0x16;
          }
          else {
            if ((DAT_EXTMEM_08e4 != 5) || (DAT_INTMEM_2b != 0x12)) {
              bVar6 = DAT_INTMEM_2b + DAT_EXTMEM_08e4 * '\x17';
              cVar4 = '\x02';
              bVar3 = bVar6;
              do {
                bVar3 = bVar3 << 1;
                cVar4 = cVar4 + -1;
              } while (cVar4 != '\0');
              bVar7 = DAT_EXTMEM_08e4;
              cVar4 = BANK0_R6;
              FUN_CODE_8177(CONCAT11(BANK0_R6 + -0x20,bVar3));
              DAT_EXTMEM_07c5 = bVar6;
              FUN_CODE_8177(CONCAT11(cVar4 + -0x20,bVar3));
              FUN_CODE_8145(8);
              bVar7 = DAT_INTMEM_2b + bVar7 * '\x17';
              cVar4 = '\x02';
              bVar3 = bVar7;
              do {
                bVar3 = bVar3 << 1;
                cVar4 = cVar4 + -1;
              } while (cVar4 != '\0');
              cVar2 = BANK0_R6;
              DAT_EXTMEM_07c6 = bVar6;
              FUN_CODE_8177(CONCAT11(BANK0_R6 + -0x20,bVar3));
              FUN_CODE_8145(0x10);
              cVar4 = '\0';
              cVar5 = -0x20;
              DAT_EXTMEM_07c7 = bVar7;
              goto LAB_CODE_2b45;
            }
            DAT_EXTMEM_07c5 = 7;
          }
LAB_CODE_2d58:
          FUN_CODE_5b32();
        }
        else {
          if ((DAT_EXTMEM_08e4 == 4) && (DAT_INTMEM_2b == 2)) {
            bVar6 = 0x5e;
            cVar4 = '\x02';
            bVar3 = bVar6;
            do {
              bVar3 = bVar3 * '\x02';
              cVar4 = cVar4 + -1;
            } while (cVar4 != '\0');
            bVar7 = DAT_EXTMEM_08e4;
            cVar4 = BANK0_R6;
            FUN_CODE_8177(CONCAT11((BANK0_R6 - (((0xa8 < bVar3) << 7) >> 7)) + 'd',bVar3 + 0x57));
            DAT_EXTMEM_07c5 = bVar6;
            FUN_CODE_8177(CONCAT11((cVar4 - (((0xa8 < bVar3) << 7) >> 7)) + 'd',bVar3 + 0x57));
            FUN_CODE_8145(8);
            bVar7 = DAT_INTMEM_2b + bVar7 * '\x17';
            cVar4 = '\x02';
            bVar3 = bVar7;
            do {
              bVar3 = bVar3 * '\x02';
              cVar4 = cVar4 + -1;
            } while (cVar4 != '\0');
            cVar2 = BANK0_R6;
            DAT_EXTMEM_07c6 = bVar6;
            FUN_CODE_8177(CONCAT11((BANK0_R6 - (((0xa8 < bVar3) << 7) >> 7)) + 'd',bVar3 + 0x57));
            FUN_CODE_8145(0x10);
            cVar4 = (0xa8 < bVar3) << 7;
            bVar3 = bVar3 + 0x57;
            cVar5 = 'd';
            DAT_EXTMEM_07c7 = bVar7;
LAB_CODE_2b45:
            bVar6 = DAT_EXTMEM_07c7;
            FUN_CODE_8177(CONCAT11(cVar5 + (cVar2 - (cVar4 >> 7)),bVar3));
            FUN_CODE_8145(0x18);
            DAT_EXTMEM_07c8 = bVar6;
          }
          else {
            if ((DAT_EXTMEM_08e4 == 3) && (DAT_INTMEM_2b == 0xd)) {
              bVar6 = 0x52;
              cVar4 = '\x02';
              bVar3 = bVar6;
              do {
                bVar3 = bVar3 * '\x02';
                cVar4 = cVar4 + -1;
              } while (cVar4 != '\0');
              bVar7 = DAT_EXTMEM_08e4;
              cVar4 = BANK0_R6;
              FUN_CODE_8177(CONCAT11((BANK0_R6 - (((0xa8 < bVar3) << 7) >> 7)) + 'd',bVar3 + 0x57));
              DAT_EXTMEM_07c5 = bVar6;
              FUN_CODE_8177(CONCAT11((cVar4 - (((0xa8 < bVar3) << 7) >> 7)) + 'd',bVar3 + 0x57));
              FUN_CODE_8145(8);
              bVar7 = DAT_INTMEM_2b + bVar7 * '\x17';
              cVar4 = '\x02';
              bVar3 = bVar7;
              do {
                bVar3 = bVar3 * '\x02';
                cVar4 = cVar4 + -1;
              } while (cVar4 != '\0');
              cVar2 = BANK0_R6;
              DAT_EXTMEM_07c6 = bVar6;
              FUN_CODE_8177(CONCAT11((BANK0_R6 - (((0xa8 < bVar3) << 7) >> 7)) + 'd',bVar3 + 0x57));
              FUN_CODE_8145(0x10);
              cVar4 = (0xa8 < bVar3) << 7;
              bVar3 = bVar3 + 0x57;
              cVar5 = 'd';
              DAT_EXTMEM_07c7 = bVar7;
              goto LAB_CODE_2b45;
            }
            if ((DAT_EXTMEM_08e4 == 0) && (DAT_INTMEM_2b == 0x13)) {
              bVar6 = 0x13;
              cVar4 = '\x02';
              bVar3 = bVar6;
              do {
                bVar3 = bVar3 * '\x02';
                cVar4 = cVar4 + -1;
              } while (cVar4 != '\0');
              bVar7 = DAT_EXTMEM_08e4;
              cVar4 = BANK0_R6;
              FUN_CODE_8177(CONCAT11((BANK0_R6 - (((0xa8 < bVar3) << 7) >> 7)) + 'd',bVar3 + 0x57));
              DAT_EXTMEM_07c5 = bVar6;
              FUN_CODE_8177(CONCAT11((cVar4 - (((0xa8 < bVar3) << 7) >> 7)) + 'd',bVar3 + 0x57));
              FUN_CODE_8145(8);
              bVar7 = DAT_INTMEM_2b + bVar7 * '\x17';
              cVar4 = '\x02';
              bVar3 = bVar7;
              do {
                bVar3 = bVar3 * '\x02';
                cVar4 = cVar4 + -1;
              } while (cVar4 != '\0');
              cVar2 = BANK0_R6;
              DAT_EXTMEM_07c6 = bVar6;
              FUN_CODE_8177(CONCAT11((BANK0_R6 - (((0xa8 < bVar3) << 7) >> 7)) + 'd',bVar3 + 0x57));
              FUN_CODE_8145(0x10);
              cVar4 = (0xa8 < bVar3) << 7;
              bVar3 = bVar3 + 0x57;
              cVar5 = 'd';
              DAT_EXTMEM_07c7 = bVar7;
              goto LAB_CODE_2b45;
            }
            if ((DAT_EXTMEM_08e4 == 0) && (DAT_INTMEM_2b == 0x14)) {
              bVar6 = 0x14;
              cVar4 = '\x02';
              bVar3 = bVar6;
              do {
                bVar3 = bVar3 * '\x02';
                cVar4 = cVar4 + -1;
              } while (cVar4 != '\0');
              bVar7 = DAT_EXTMEM_08e4;
              cVar4 = BANK0_R6;
              FUN_CODE_8177(CONCAT11((BANK0_R6 - (((0xa8 < bVar3) << 7) >> 7)) + 'd',bVar3 + 0x57));
              DAT_EXTMEM_07c5 = bVar6;
              FUN_CODE_8177(CONCAT11((cVar4 - (((0xa8 < bVar3) << 7) >> 7)) + 'd',bVar3 + 0x57));
              FUN_CODE_8145(8);
              bVar7 = DAT_INTMEM_2b + bVar7 * '\x17';
              cVar4 = '\x02';
              bVar3 = bVar7;
              do {
                bVar3 = bVar3 * '\x02';
                cVar4 = cVar4 + -1;
              } while (cVar4 != '\0');
              cVar2 = BANK0_R6;
              DAT_EXTMEM_07c6 = bVar6;
              FUN_CODE_8177(CONCAT11((BANK0_R6 - (((0xa8 < bVar3) << 7) >> 7)) + 'd',bVar3 + 0x57));
              FUN_CODE_8145(0x10);
              cVar4 = (0xa8 < bVar3) << 7;
              bVar3 = bVar3 + 0x57;
              cVar5 = 'd';
              DAT_EXTMEM_07c7 = bVar7;
              goto LAB_CODE_2b45;
            }
            if ((DAT_EXTMEM_08e4 == 0) && (DAT_INTMEM_2b == 0x15)) {
              bVar6 = 0x15;
              cVar4 = '\x02';
              bVar3 = bVar6;
              do {
                bVar3 = bVar3 * '\x02';
                cVar4 = cVar4 + -1;
              } while (cVar4 != '\0');
              bVar7 = DAT_EXTMEM_08e4;
              cVar4 = BANK0_R6;
              FUN_CODE_8177(CONCAT11((BANK0_R6 - (((0xa8 < bVar3) << 7) >> 7)) + 'd',bVar3 + 0x57));
              DAT_EXTMEM_07c5 = bVar6;
              FUN_CODE_8177(CONCAT11((cVar4 - (((0xa8 < bVar3) << 7) >> 7)) + 'd',bVar3 + 0x57));
              FUN_CODE_8145(8);
              bVar7 = DAT_INTMEM_2b + bVar7 * '\x17';
              cVar4 = '\x02';
              bVar3 = bVar7;
              do {
                bVar3 = bVar3 * '\x02';
                cVar4 = cVar4 + -1;
              } while (cVar4 != '\0');
              cVar2 = BANK0_R6;
              DAT_EXTMEM_07c6 = bVar6;
              FUN_CODE_8177(CONCAT11((BANK0_R6 - (((0xa8 < bVar3) << 7) >> 7)) + 'd',bVar3 + 0x57));
              FUN_CODE_8145(0x10);
              cVar4 = (0xa8 < bVar3) << 7;
              bVar3 = bVar3 + 0x57;
              cVar5 = 'd';
              DAT_EXTMEM_07c7 = bVar7;
              goto LAB_CODE_2b45;
            }
            if ((DAT_EXTMEM_08e4 == 0) && (DAT_INTMEM_2b == 0x16)) {
              bVar6 = 0x16;
              cVar4 = '\x02';
              bVar3 = bVar6;
              do {
                bVar3 = bVar3 * '\x02';
                cVar4 = cVar4 + -1;
              } while (cVar4 != '\0');
              bVar7 = DAT_EXTMEM_08e4;
              cVar4 = BANK0_R6;
              FUN_CODE_8177(CONCAT11((BANK0_R6 - (((0xa8 < bVar3) << 7) >> 7)) + 'd',bVar3 + 0x57));
              DAT_EXTMEM_07c5 = bVar6;
              FUN_CODE_8177(CONCAT11((cVar4 - (((0xa8 < bVar3) << 7) >> 7)) + 'd',bVar3 + 0x57));
              FUN_CODE_8145(8);
              bVar7 = DAT_INTMEM_2b + bVar7 * '\x17';
              cVar4 = '\x02';
              bVar3 = bVar7;
              do {
                bVar3 = bVar3 * '\x02';
                cVar4 = cVar4 + -1;
              } while (cVar4 != '\0');
              cVar2 = BANK0_R6;
              DAT_EXTMEM_07c6 = bVar6;
              FUN_CODE_8177(CONCAT11((BANK0_R6 - (((0xa8 < bVar3) << 7) >> 7)) + 'd',bVar3 + 0x57));
              FUN_CODE_8145(0x10);
              cVar4 = (0xa8 < bVar3) << 7;
              bVar3 = bVar3 + 0x57;
              cVar5 = 'd';
              DAT_EXTMEM_07c7 = bVar7;
              goto LAB_CODE_2b45;
            }
            bVar6 = DAT_INTMEM_2b + DAT_EXTMEM_08e4 * '\x17';
            cVar4 = '\x02';
            bVar3 = bVar6;
            do {
              bVar3 = bVar3 << 1;
              cVar4 = cVar4 + -1;
            } while (cVar4 != '\0');
            bVar7 = DAT_EXTMEM_08e4;
            cVar4 = BANK0_R6;
            FUN_CODE_8177(CONCAT11(BANK0_R6 + -0x20,bVar3));
            DAT_EXTMEM_07c5 = bVar6;
            FUN_CODE_8177(CONCAT11(cVar4 + -0x20,bVar3));
            FUN_CODE_8145(8);
            bVar7 = DAT_INTMEM_2b + bVar7 * '\x17';
            cVar4 = '\x02';
            bVar3 = bVar7;
            do {
              bVar3 = bVar3 << 1;
              cVar4 = cVar4 + -1;
            } while (cVar4 != '\0');
            bVar1 = DAT_INTMEM_2b;
            cVar4 = BANK0_R6;
            DAT_EXTMEM_07c6 = bVar6;
            FUN_CODE_8177(CONCAT11(BANK0_R6 + -0x20,bVar3));
            FUN_CODE_8145(0x10);
            DAT_EXTMEM_07c7 = bVar7;
            FUN_CODE_8177(CONCAT11(cVar4 + -0x20,bVar3));
            FUN_CODE_8145(0x18);
            bVar6 = DAT_EXTMEM_07c5 ^ 0xcd;
            DAT_EXTMEM_07c8 = bVar7;
            if (bVar6 == 0) {
              if (_0_0 == '\x01') {
                BANK2_R3 = DAT_EXTMEM_08e4;
                BANK1_R7 = 0;
                bVar3 = 4;
                BANK2_R2 = bVar1;
                FUN_CODE_b99e(0,0,DAT_EXTMEM_08e4 * '\x17' + bVar1);
                BANK2_R0 = bVar3;
                if ((bVar3 != 0) && (bVar3 != 0xff)) {
                  _2_2 = '\x01';
                  FUN_CODE_bd5a(0,0x14);
                  cVar4 = '\0';
                  FUN_CODE_b99e(0,BANK2_R3 * '\x17' + BANK2_R2);
                  DAT_EXTMEM_07c2 = cVar4;
                  FUN_CODE_bd5a(0,0x14);
                  cVar4 = '\x01';
                  FUN_CODE_b99e(0,0,BANK2_R3 * '\x17' + BANK2_R2);
                  DAT_EXTMEM_07c3 = cVar4;
                  FUN_CODE_bd5a(0,0x14);
                  bVar3 = 2;
                  FUN_CODE_b99e(0,0,BANK2_R3 * '\x17' + BANK2_R2);
                  DAT_EXTMEM_07c4 = bVar3;
                  FUN_CODE_bd5a(0,0x14);
                  uVar8 = 3;
                  FUN_CODE_b99e(0,0,BANK2_R3 * '\x17' + BANK2_R2);
                  BANK1_R1 = DAT_EXTMEM_07c3;
                  BANK1_R0 = DAT_EXTMEM_07c2;
                  if ((DAT_EXTMEM_07c3 == -1) && (DAT_EXTMEM_07c2 == -1)) {
                    _2_5 = '\x01';
                  }
                  else {
                    _2_5 = '\0';
                  }
                  if (DAT_EXTMEM_07c3 == '\0' && DAT_EXTMEM_07c2 == '\0') {
                    BANK1_R0 = -1;
                    BANK1_R1 = -1;
                  }
                  _3_0 = DAT_EXTMEM_07c3 == '\0' && DAT_EXTMEM_07c2 == '\0';
                  BANK1_R2 = DAT_EXTMEM_07c4 & 0x7f;
                  DAT_EXTMEM_07c9 = uVar8;
                  for (DAT_EXTMEM_08e9 = 0; DAT_EXTMEM_08e9 < 0x10;
                      DAT_EXTMEM_08e9 = DAT_EXTMEM_08e9 + 1) {
                    *(undefined1 *)
                     CONCAT11(DAT_EXTMEM_0936 -
                              ((CARRY1(DAT_EXTMEM_0937,DAT_EXTMEM_08e9) << 7) >> 7),
                              DAT_EXTMEM_0937 + DAT_EXTMEM_08e9) = 0;
                  }
                  BANK1_R3 = uVar8;
                  return DAT_EXTMEM_08e9 - 0x10;
                }
              }
              else if (_2_5 != '\0') {
                _2_5 = '\0';
                BANK1_R0 = '\0';
                BANK1_R1 = '\0';
                _2_2 = '\0';
                DAT_EXTMEM_07c5 = BANK2_R0;
                _0_2 = 1;
                _0_0 = '\0';
                goto LAB_CODE_2d58;
              }
              goto LAB_CODE_2d95;
            }
            if (_3_0 != '\0') {
              _3_0 = '\0';
              for (DAT_EXTMEM_08e9 = 0; bVar6 = DAT_EXTMEM_08e9 - 0x10, DAT_EXTMEM_08e9 < 0x10;
                  DAT_EXTMEM_08e9 = DAT_EXTMEM_08e9 + 1) {
                *(undefined1 *)
                 CONCAT11('\a' - (((0xf9 < DAT_EXTMEM_08e9) << 7) >> 7),DAT_EXTMEM_08e9 + 6) = 0;
              }
            }
            if (_2_2 != '\0') {
              BANK1_R0 = 0;
              BANK1_R1 = 0;
              _2_2 = 0;
              bVar3 = FUN_CODE_b59e();
              return bVar3;
            }
          }
          FUN_CODE_928b(bVar6);
        }
LAB_CODE_2d95:
        FUN_CODE_943f(DAT_INTMEM_2b,DAT_EXTMEM_08e4);
        if ((DAT_INTMEM_69 == 8) && (_0_0 != '\0')) {
          FUN_CODE_aede(DAT_INTMEM_2b,DAT_EXTMEM_08e4);
        }
        goto LAB_CODE_2db6;
      }
      if (_0_0 == '\x01') {
        if (((DAT_EXTMEM_08e4 == 5) && (bVar3 = 0, DAT_INTMEM_2b == 10)) ||
           ((DAT_EXTMEM_08e4 == 1 && (bVar3 = DAT_INTMEM_2b, DAT_INTMEM_2b == 0x11)))) {
          _3_3 = 0;
          return bVar3;
        }
        DAT_EXTMEM_08e9 = DAT_EXTMEM_08e4 * '\x17' + DAT_INTMEM_2b;
        cVar4 = *(char *)CONCAT11('\x04' - (((9 < DAT_EXTMEM_08e9) << 7) >> 7),DAT_EXTMEM_08e9 - 10)
        ;
        if (((cVar4 != '\0') ||
            (*(char *)CONCAT11('\x05' - (((0x74 < DAT_EXTMEM_08e9) << 7) >> 7),
                               DAT_EXTMEM_08e9 + 0x8b) != '\0')) ||
           (*(char *)CONCAT11('\x06' - (((0xdf < DAT_EXTMEM_08e9) << 7) >> 7),DAT_EXTMEM_08e9 + 0x20
                             ) != '\0')) {
          if (((cVar4 == -1) &&
              (*(char *)CONCAT11('\x05' - (((0x74 < DAT_EXTMEM_08e9) << 7) >> 7),
                                 DAT_EXTMEM_08e9 + 0x8b) == -1)) &&
             (*(char *)CONCAT11('\x06' - (((0xdf < DAT_EXTMEM_08e9) << 7) >> 7),
                                DAT_EXTMEM_08e9 + 0x20) == -1)) {
LAB_CODE_1d81:
            puVar9 = (undefined1 *)
                     CONCAT11('\x04' - (((9 < DAT_EXTMEM_08e9) << 7) >> 7),DAT_EXTMEM_08e9 - 10);
            uVar8 = 0;
LAB_CODE_1e11:
            bVar3 = DAT_EXTMEM_08e9;
            *puVar9 = uVar8;
            puVar9 = (undefined1 *)CONCAT11('\x05' - (((0x74 < bVar3) << 7) >> 7),bVar3 + 0x8b);
            uVar8 = 0;
          }
          else {
            if (((*(char *)CONCAT11('\x04' - (((9 < DAT_EXTMEM_08e9) << 7) >> 7),
                                    DAT_EXTMEM_08e9 - 10) != '\0') ||
                (*(char *)CONCAT11('\x05' - (((0x74 < DAT_EXTMEM_08e9) << 7) >> 7),
                                   DAT_EXTMEM_08e9 + 0x8b) != '\0')) ||
               (*(char *)CONCAT11('\x06' - (((0xdf < DAT_EXTMEM_08e9) << 7) >> 7),
                                  DAT_EXTMEM_08e9 + 0x20) != -1)) {
              cVar4 = *(char *)CONCAT11('\x04' - (((9 < DAT_EXTMEM_08e9) << 7) >> 7),
                                        DAT_EXTMEM_08e9 - 10);
              if (((cVar4 != '\0') ||
                  (*(char *)CONCAT11('\x05' - (((0x74 < DAT_EXTMEM_08e9) << 7) >> 7),
                                     DAT_EXTMEM_08e9 + 0x8b) != -1)) ||
                 (*(char *)CONCAT11('\x06' - (((0xdf < DAT_EXTMEM_08e9) << 7) >> 7),
                                    DAT_EXTMEM_08e9 + 0x20) != '\0')) {
                if (((cVar4 == -1) &&
                    (*(char *)CONCAT11('\x05' - (((0x74 < DAT_EXTMEM_08e9) << 7) >> 7),
                                       DAT_EXTMEM_08e9 + 0x8b) == '\0')) &&
                   (*(char *)CONCAT11('\x06' - (((0xdf < DAT_EXTMEM_08e9) << 7) >> 7),
                                      DAT_EXTMEM_08e9 + 0x20) == '\0')) {
LAB_CODE_1e42:
                  puVar9 = (undefined1 *)
                           CONCAT11('\x04' - (((9 < DAT_EXTMEM_08e9) << 7) >> 7),
                                    DAT_EXTMEM_08e9 - 10);
                  uVar8 = 0;
                  goto LAB_CODE_1f30;
                }
                if (((*(char *)CONCAT11('\x04' - (((9 < DAT_EXTMEM_08e9) << 7) >> 7),
                                        DAT_EXTMEM_08e9 - 10) != '\0') ||
                    (*(char *)CONCAT11('\x05' - (((0x74 < DAT_EXTMEM_08e9) << 7) >> 7),
                                       DAT_EXTMEM_08e9 + 0x8b) != -1)) ||
                   (*(char *)CONCAT11('\x06' - (((0xdf < DAT_EXTMEM_08e9) << 7) >> 7),
                                      DAT_EXTMEM_08e9 + 0x20) != -1)) {
                  cVar4 = *(char *)CONCAT11('\x04' - (((9 < DAT_EXTMEM_08e9) << 7) >> 7),
                                            DAT_EXTMEM_08e9 - 10);
                  if (((cVar4 != -1) ||
                      (*(char *)CONCAT11('\x05' - (((0x74 < DAT_EXTMEM_08e9) << 7) >> 7),
                                         DAT_EXTMEM_08e9 + 0x8b) != '\0')) ||
                     (*(char *)CONCAT11('\x06' - (((0xdf < DAT_EXTMEM_08e9) << 7) >> 7),
                                        DAT_EXTMEM_08e9 + 0x20) != -1)) {
                    if (((cVar4 == -1) &&
                        (*(char *)CONCAT11('\x05' - (((0x74 < DAT_EXTMEM_08e9) << 7) >> 7),
                                           DAT_EXTMEM_08e9 + 0x8b) == -1)) &&
                       (*(char *)CONCAT11('\x06' - (((0xdf < DAT_EXTMEM_08e9) << 7) >> 7),
                                          DAT_EXTMEM_08e9 + 0x20) == '\0')) goto LAB_CODE_1f21;
LAB_CODE_1f3f:
                    bVar3 = DAT_EXTMEM_08e9;
                    *(undefined1 *)
                     CONCAT11('\x04' - (((9 < DAT_EXTMEM_08e9) << 7) >> 7),DAT_EXTMEM_08e9 - 10) =
                         0xff;
                    puVar9 = (undefined1 *)
                             CONCAT11('\x05' - (((0x74 < bVar3) << 7) >> 7),bVar3 + 0x8b);
                    uVar8 = 0xff;
                    goto LAB_CODE_1f5c;
                  }
LAB_CODE_1ed2:
                  puVar9 = (undefined1 *)
                           CONCAT11('\x04' - (((9 < DAT_EXTMEM_08e9) << 7) >> 7),
                                    DAT_EXTMEM_08e9 - 10);
                  uVar8 = 0xff;
                  goto LAB_CODE_1ee1;
                }
LAB_CODE_1e83:
                puVar9 = (undefined1 *)
                         CONCAT11('\x04' - (((9 < DAT_EXTMEM_08e9) << 7) >> 7),DAT_EXTMEM_08e9 - 10)
                ;
                uVar8 = 0xff;
                goto LAB_CODE_1e92;
              }
LAB_CODE_1e02:
              puVar9 = (undefined1 *)
                       CONCAT11('\x04' - (((9 < DAT_EXTMEM_08e9) << 7) >> 7),DAT_EXTMEM_08e9 - 10);
              uVar8 = 0xff;
              goto LAB_CODE_1e11;
            }
LAB_CODE_1dc1:
            puVar9 = (undefined1 *)
                     CONCAT11('\x04' - (((9 < DAT_EXTMEM_08e9) << 7) >> 7),DAT_EXTMEM_08e9 - 10);
            uVar8 = 0;
LAB_CODE_1ee1:
            bVar3 = DAT_EXTMEM_08e9;
            *puVar9 = uVar8;
            puVar9 = (undefined1 *)CONCAT11('\x05' - (((0x74 < bVar3) << 7) >> 7),bVar3 + 0x8b);
            uVar8 = 0xff;
          }
          *puVar9 = uVar8;
          *(undefined1 *)CONCAT11('\x06' - (((0xdf < bVar3) << 7) >> 7),bVar3 + 0x20) = 0;
          goto LAB_CODE_2db6;
        }
LAB_CODE_1d4c:
        puVar9 = (undefined1 *)
                 CONCAT11('\x04' - (((9 < DAT_EXTMEM_08e9) << 7) >> 7),DAT_EXTMEM_08e9 - 10);
        uVar8 = 0;
LAB_CODE_1e92:
        bVar3 = DAT_EXTMEM_08e9;
        *puVar9 = uVar8;
        puVar9 = (undefined1 *)CONCAT11('\x05' - (((0x74 < bVar3) << 7) >> 7),bVar3 + 0x8b);
        uVar8 = 0;
      }
      else {
        if ((_3_3 != '\0') ||
           (((DAT_EXTMEM_08e4 != 5 || (DAT_INTMEM_2b != 10)) &&
            ((DAT_EXTMEM_08e4 != 1 || (DAT_INTMEM_2b != 0x11)))))) goto LAB_CODE_2db6;
        DAT_EXTMEM_08e9 = DAT_EXTMEM_08e4 * '\x17' + DAT_INTMEM_2b;
        cVar4 = *(char *)CONCAT11('\x04' - (((9 < DAT_EXTMEM_08e9) << 7) >> 7),DAT_EXTMEM_08e9 - 10)
        ;
        if (((cVar4 == '\0') &&
            (*(char *)CONCAT11('\x05' - (((0x74 < DAT_EXTMEM_08e9) << 7) >> 7),
                               DAT_EXTMEM_08e9 + 0x8b) == '\0')) &&
           (*(char *)CONCAT11('\x06' - (((0xdf < DAT_EXTMEM_08e9) << 7) >> 7),DAT_EXTMEM_08e9 + 0x20
                             ) == '\0')) goto LAB_CODE_1d4c;
        if (((cVar4 == -1) &&
            (*(char *)CONCAT11('\x05' - (((0x74 < DAT_EXTMEM_08e9) << 7) >> 7),
                               DAT_EXTMEM_08e9 + 0x8b) == -1)) &&
           (*(char *)CONCAT11('\x06' - (((0xdf < DAT_EXTMEM_08e9) << 7) >> 7),DAT_EXTMEM_08e9 + 0x20
                             ) == -1)) goto LAB_CODE_1d81;
        if (((*(char *)CONCAT11('\x04' - (((9 < DAT_EXTMEM_08e9) << 7) >> 7),DAT_EXTMEM_08e9 - 10)
              == '\0') &&
            (*(char *)CONCAT11('\x05' - (((0x74 < DAT_EXTMEM_08e9) << 7) >> 7),
                               DAT_EXTMEM_08e9 + 0x8b) == '\0')) &&
           (*(char *)CONCAT11('\x06' - (((0xdf < DAT_EXTMEM_08e9) << 7) >> 7),DAT_EXTMEM_08e9 + 0x20
                             ) == -1)) goto LAB_CODE_1dc1;
        cVar4 = *(char *)CONCAT11('\x04' - (((9 < DAT_EXTMEM_08e9) << 7) >> 7),DAT_EXTMEM_08e9 - 10)
        ;
        if (((cVar4 == '\0') &&
            (*(char *)CONCAT11('\x05' - (((0x74 < DAT_EXTMEM_08e9) << 7) >> 7),
                               DAT_EXTMEM_08e9 + 0x8b) == -1)) &&
           (*(char *)CONCAT11('\x06' - (((0xdf < DAT_EXTMEM_08e9) << 7) >> 7),DAT_EXTMEM_08e9 + 0x20
                             ) == '\0')) goto LAB_CODE_1e02;
        if (((cVar4 == -1) &&
            (*(char *)CONCAT11('\x05' - (((0x74 < DAT_EXTMEM_08e9) << 7) >> 7),
                               DAT_EXTMEM_08e9 + 0x8b) == '\0')) &&
           (*(char *)CONCAT11('\x06' - (((0xdf < DAT_EXTMEM_08e9) << 7) >> 7),DAT_EXTMEM_08e9 + 0x20
                             ) == '\0')) goto LAB_CODE_1e42;
        if (((*(char *)CONCAT11('\x04' - (((9 < DAT_EXTMEM_08e9) << 7) >> 7),DAT_EXTMEM_08e9 - 10)
              == '\0') &&
            (*(char *)CONCAT11('\x05' - (((0x74 < DAT_EXTMEM_08e9) << 7) >> 7),
                               DAT_EXTMEM_08e9 + 0x8b) == -1)) &&
           (*(char *)CONCAT11('\x06' - (((0xdf < DAT_EXTMEM_08e9) << 7) >> 7),DAT_EXTMEM_08e9 + 0x20
                             ) == -1)) goto LAB_CODE_1e83;
        cVar4 = *(char *)CONCAT11('\x04' - (((9 < DAT_EXTMEM_08e9) << 7) >> 7),DAT_EXTMEM_08e9 - 10)
        ;
        if (((cVar4 == -1) &&
            (*(char *)CONCAT11('\x05' - (((0x74 < DAT_EXTMEM_08e9) << 7) >> 7),
                               DAT_EXTMEM_08e9 + 0x8b) == '\0')) &&
           (*(char *)CONCAT11('\x06' - (((0xdf < DAT_EXTMEM_08e9) << 7) >> 7),DAT_EXTMEM_08e9 + 0x20
                             ) == -1)) goto LAB_CODE_1ed2;
        if (((cVar4 != -1) ||
            (*(char *)CONCAT11('\x05' - (((0x74 < DAT_EXTMEM_08e9) << 7) >> 7),
                               DAT_EXTMEM_08e9 + 0x8b) != -1)) ||
           (*(char *)CONCAT11('\x06' - (((0xdf < DAT_EXTMEM_08e9) << 7) >> 7),DAT_EXTMEM_08e9 + 0x20
                             ) != '\0')) goto LAB_CODE_1f3f;
LAB_CODE_1f21:
        puVar9 = (undefined1 *)
                 CONCAT11('\x04' - (((9 < DAT_EXTMEM_08e9) << 7) >> 7),DAT_EXTMEM_08e9 - 10);
        uVar8 = 0xff;
LAB_CODE_1f30:
        bVar3 = DAT_EXTMEM_08e9;
        *puVar9 = uVar8;
        puVar9 = (undefined1 *)CONCAT11('\x05' - (((0x74 < bVar3) << 7) >> 7),bVar3 + 0x8b);
        uVar8 = 0xff;
      }
LAB_CODE_1f5c:
      *puVar9 = uVar8;
      *(undefined1 *)CONCAT11('\x06' - (((0xdf < bVar3) << 7) >> 7),bVar3 + 0x20) = 0xff;
    }
LAB_CODE_2db6:
    DAT_INTMEM_2b = DAT_INTMEM_2b + 1;
  } while( true );
}


// ===== FUN_CODE_2dbd @ CODE:2dbd =====

byte FUN_CODE_2dbd(void)

{
  char cVar1;
  char cVar2;
  undefined1 uVar3;
  undefined1 uVar4;
  undefined1 uVar5;
  byte bVar6;
  byte bVar7;
  
  if (_2_3 != '\0') {
    IEN1 = 0;
    _2_3 = 0;
    FUN_CODE_bbdd(0);
    for (DAT_EXTMEM_08f0 = 0; bVar6 = DAT_EXTMEM_08f0, DAT_EXTMEM_08f0 < 0x8a;
        DAT_EXTMEM_08f0 = DAT_EXTMEM_08f0 + 1) {
      *(undefined1 *)CONCAT11('\x04' - (((9 < DAT_EXTMEM_08f0) << 7) >> 7),DAT_EXTMEM_08f0 - 10) = 0
      ;
      *(undefined1 *)CONCAT11('\x05' - (((0x74 < bVar6) << 7) >> 7),bVar6 + 0x8b) = 0;
      *(undefined1 *)CONCAT11('\x06' - (((0xdf < bVar6) << 7) >> 7),bVar6 + 0x20) = 0;
    }
    bVar6 = DAT_INTMEM_69 - 0x20;
    if ((DAT_INTMEM_69 < 0x20) && (bVar6 = DAT_INTMEM_69, DAT_INTMEM_69 != 0x13)) {
      FUN_CODE_9d55();
    }
    else {
      FUN_CODE_a0bf(bVar6);
    }
    FUN_CODE_9deb(DAT_INTMEM_5c);
    bVar6 = FUN_CODE_baca();
    return bVar6;
  }
  bVar6 = DAT_INTMEM_62 - 0x17;
  if ((DAT_INTMEM_62 < 0x17) << 7 < '\0') {
    TH2 = 0xfe;
    TL2 = 0x6f;
    RCAP2H = 0xfe;
    RCAP2L = 0x6f;
    P0_2 = 1;
    if (_3_4 != '\0') {
      return bVar6;
    }
    if (_5_3 == '\0') {
      if (DAT_INTMEM_69 == 0xd) {
LAB_CODE_2ed4:
        FUN_CODE_bbdd(DAT_INTMEM_62);
      }
      else if (DAT_INTMEM_69 == 10) {
        if (DAT_INTMEM_62 == 0) {
          DAT_INTMEM_57 = DAT_INTMEM_57 + '\x01';
        }
        FUN_CODE_aa15(DAT_INTMEM_62);
      }
      else if (DAT_INTMEM_69 == 2) {
        FUN_CODE_a92d(DAT_INTMEM_62);
      }
      else if (DAT_INTMEM_69 == 5) {
        FUN_CODE_c044(DAT_INTMEM_62);
        FUN_CODE_aaf7();
      }
      else if (DAT_INTMEM_69 == 0) {
        FUN_CODE_85b9(DAT_INTMEM_62);
      }
      else if (DAT_INTMEM_69 == 8) {
        FUN_CODE_8d4d(DAT_INTMEM_62);
      }
      else if (DAT_INTMEM_69 == 0x10) {
        FUN_CODE_98c5(DAT_INTMEM_62);
      }
      else if (DAT_INTMEM_69 == 0xf) {
        FUN_CODE_8b45(DAT_INTMEM_62);
      }
      else if (DAT_INTMEM_69 == 1) {
        if (_2_1 != '\0') goto LAB_CODE_2ed4;
        FUN_CODE_4b3c();
      }
      else if (DAT_INTMEM_69 == 0xe) {
        FUN_CODE_a59d(DAT_INTMEM_62);
      }
      else if (DAT_INTMEM_69 == 9) {
        if (DAT_INTMEM_62 == 0) {
          DAT_INTMEM_57 = DAT_INTMEM_57 + '\x01';
        }
        FUN_CODE_a14c(DAT_INTMEM_62);
      }
      else if (DAT_INTMEM_69 == 6) {
        if (DAT_INTMEM_62 == 0) {
          DAT_INTMEM_57 = DAT_INTMEM_57 + '\x01';
        }
        FUN_CODE_7a3f(DAT_INTMEM_62);
      }
      else if (DAT_INTMEM_69 == 0x12) {
        if (DAT_INTMEM_62 == 0) {
          DAT_INTMEM_57 = DAT_INTMEM_57 + '\x01';
        }
        FUN_CODE_9fa3(DAT_INTMEM_62);
      }
      else if (DAT_INTMEM_69 == 4) {
        if (DAT_INTMEM_62 == 0) {
          DAT_INTMEM_57 = DAT_INTMEM_57 + '\x01';
        }
        FUN_CODE_9c24(DAT_INTMEM_62);
      }
      else if (DAT_INTMEM_69 == 3) {
        if (DAT_INTMEM_62 == 0) {
          DAT_INTMEM_57 = DAT_INTMEM_57 + '\x01';
        }
        FUN_CODE_a031(DAT_INTMEM_62);
      }
      else if (DAT_INTMEM_69 == 7) {
        FUN_CODE_95da(DAT_INTMEM_62);
      }
      else {
        bVar6 = DAT_INTMEM_62;
        if (DAT_INTMEM_69 == 0xc) goto LAB_CODE_2f82;
        if (DAT_INTMEM_69 == 0xb) {
          FUN_CODE_7537(DAT_INTMEM_62);
        }
        else if (DAT_INTMEM_69 == 0x11) {
          if (DAT_INTMEM_62 == 0) {
            DAT_INTMEM_57 = DAT_INTMEM_57 + '\x01';
          }
          FUN_CODE_a7af(DAT_INTMEM_62);
        }
        else if (DAT_INTMEM_69 == 0x40) {
          FUN_CODE_bbdd(DAT_INTMEM_62);
          for (DAT_EXTMEM_08f0 = 0; bVar6 = DAT_EXTMEM_08f0, DAT_EXTMEM_08f0 < 0x8a;
              DAT_EXTMEM_08f0 = DAT_EXTMEM_08f0 + 1) {
            if (*(char *)CONCAT11('\x06' - (((0xdf < DAT_EXTMEM_08f0) << 7) >> 7),
                                  DAT_EXTMEM_08f0 + 0x20) == '\0') {
              *(undefined1 *)
               CONCAT11('\x06' - (((0xdf < DAT_EXTMEM_08f0) << 7) >> 7),DAT_EXTMEM_08f0 + 0x20) = 0;
              *(undefined1 *)CONCAT11('\x05' - (((0x74 < bVar6) << 7) >> 7),bVar6 + 0x8b) = 0;
              *(undefined1 *)CONCAT11('\x04' - (((9 < bVar6) << 7) >> 7),bVar6 - 10) = 0;
            }
            else {
              FUN_CODE_8805(DAT_EXTMEM_08f0);
            }
          }
        }
      }
    }
    else {
LAB_CODE_2f82:
      FUN_CODE_7f0a(bVar6,DAT_INTMEM_62);
    }
    if ((BANK3_R6 != '\0') && (_2_1 == '\0')) {
      if (BANK3_R6 == '\x04') {
        DAT_EXTMEM_ff95 = 0x18;
        DAT_EXTMEM_ffb5 = 1;
      }
      FUN_CODE_688e(DAT_INTMEM_62);
    }
    goto LAB_CODE_3b4a;
  }
  if (DAT_INTMEM_62 == 0x17) {
    P0_2 = 1;
    DAT_INTMEM_57 = DAT_INTMEM_57 + '\x01';
    FUN_CODE_bbdd();
    bVar6 = P2;
    P2 = bVar6 & 0xc0;
    bVar6 = SCON;
    SCON = bVar6 & 0xc0;
    bVar6 = P1;
    P1 = bVar6 & 0xc0;
    TH2 = 0xee;
    TL2 = 0xcf;
    RCAP2H = 0xee;
    RCAP2L = 0xcf;
    FUN_CODE_bbdd();
    bVar6 = P2;
    P2 = bVar6 & 0xc0;
    bVar6 = SCON;
    SCON = bVar6 & 0xc0;
    bVar6 = P1;
    P1 = bVar6 & 0xc0;
    _1_0 = 1;
    FUN_CODE_9699();
    goto LAB_CODE_3b4a;
  }
  if (DAT_INTMEM_62 == 0x18) {
    TH2 = 0xfe;
    TL2 = 0x6f;
    RCAP2H = 0xfe;
    RCAP2L = 0x6f;
    if (BANK3_R7 == '\a') {
      DAT_INTMEM_67 = DAT_INTMEM_67 + 1;
      if (0xfd < DAT_INTMEM_67) {
        DAT_INTMEM_67 = 0;
        _5_0 = _5_0 ^ 1;
        if ((_5_0 != 0) && (DAT_INTMEM_66 = DAT_INTMEM_66 + 1, 6 < DAT_INTMEM_66)) {
          DAT_INTMEM_66 = 0;
        }
      }
      if (_5_0 == 0) {
        DAT_INTMEM_68 = -DAT_INTMEM_67 - 1;
      }
      else {
        DAT_INTMEM_68 = DAT_INTMEM_67;
      }
      if (DAT_INTMEM_66 == 0) {
        DAT_EXTMEM_ff94 = 0x18;
        DAT_EXTMEM_ffb4 = DAT_INTMEM_68;
        DAT_EXTMEM_ff92 = 0xb0;
        DAT_EXTMEM_ff93 = 0x10;
        F8_6 = 0;
        F8_5 = 0;
      }
      else if (DAT_INTMEM_66 == 1) {
        DAT_EXTMEM_ff93 = 0x18;
        DAT_EXTMEM_ffb3 = DAT_INTMEM_68;
        DAT_EXTMEM_ff92 = 0xb0;
        DAT_EXTMEM_ff94 = 0x10;
        F8_7 = 0;
        F8_5 = 0;
      }
      else if (DAT_INTMEM_66 == 2) {
        DAT_EXTMEM_ff92 = 0xb8;
        DAT_EXTMEM_ffb2 = DAT_INTMEM_68;
        DAT_EXTMEM_ff93 = 0x10;
        DAT_EXTMEM_ff94 = 0x10;
        F8_7 = 0;
        F8_6 = 0;
      }
      else if (DAT_INTMEM_66 == 3) {
        DAT_EXTMEM_ff94 = 0x18;
        DAT_EXTMEM_ffb4 = DAT_INTMEM_68;
        DAT_EXTMEM_ff93 = 0x18;
        DAT_EXTMEM_ffb3 = DAT_INTMEM_68;
        DAT_EXTMEM_ff92 = 0xb0;
        F8_5 = 0;
      }
      else if (DAT_INTMEM_66 == 4) {
        DAT_EXTMEM_ff94 = 0x18;
        DAT_EXTMEM_ffb4 = DAT_INTMEM_68;
        DAT_EXTMEM_ff92 = 0xb8;
        DAT_EXTMEM_ffb2 = DAT_INTMEM_68;
        DAT_EXTMEM_ff93 = 0x10;
        F8_6 = 0;
      }
      else if (DAT_INTMEM_66 == 5) {
        DAT_EXTMEM_ff92 = 0xb8;
        DAT_EXTMEM_ffb2 = DAT_INTMEM_68;
        DAT_EXTMEM_ff93 = 0x18;
        DAT_EXTMEM_ffb3 = DAT_INTMEM_68;
        DAT_EXTMEM_ff94 = 0x10;
        F8_7 = 0;
      }
      else if (DAT_INTMEM_66 == 6) {
        DAT_EXTMEM_ff92 = 0xb8;
        DAT_EXTMEM_ffb2 = DAT_INTMEM_68;
        DAT_EXTMEM_ff93 = 0x18;
        DAT_EXTMEM_ffb3 = DAT_INTMEM_68;
        DAT_EXTMEM_ff94 = 0x18;
        DAT_EXTMEM_ffb4 = DAT_INTMEM_68;
      }
    }
    FUN_CODE_bbdd();
    P0_2 = 0;
    if (_2_7 == '\0') {
      if (_5_2 == '\0') {
        if ((BANK2_R6 & 1) == 0) {
          P2_0 = 0;
        }
        else {
          P2_0 = 1;
        }
        if ((BANK2_R6 >> 1 & 1) == 0) {
          P2_1 = 0;
        }
        else {
          P2_1 = 1;
        }
        if ((BANK2_R6 >> 2 & 1) == 0) {
          P2_2 = 0;
        }
        else {
          P2_2 = 1;
        }
        if (_5_7 == '\0') {
          P2_3 = 0;
        }
        else {
          P2_3 = 1;
        }
        if (_5_6 == '\0') {
          P2_4 = 0;
        }
        else {
          P2_4 = 1;
        }
        goto LAB_CODE_3b4a;
      }
      DAT_INTMEM_63 = DAT_INTMEM_63 + 1;
      if (0xf < DAT_INTMEM_63) {
        DAT_INTMEM_63 = 0;
        if (BANK2_R7 == '\0') {
          _5_2 = '\0';
        }
        else {
          BANK2_R7 = BANK2_R7 + -1;
        }
        _4_6 = _4_6 ^ 1;
      }
    }
    else {
      DAT_INTMEM_63 = DAT_INTMEM_63 + 1;
      if (0x32 < DAT_INTMEM_63) {
        DAT_INTMEM_63 = 0;
        _4_6 = _4_6 ^ 1;
      }
    }
    if (_4_6 == 0) {
      bVar6 = P2;
      P2 = bVar6 | 0x1f;
    }
    else {
      bVar6 = P2;
      P2 = bVar6 & 0xe0;
    }
    goto LAB_CODE_3b4a;
  }
  if (DAT_INTMEM_62 == 0x19) {
    P0_2 = 1;
    TH2 = 0xfe;
    TL2 = 0x6f;
    RCAP2H = 0xfe;
    RCAP2L = 0x6f;
    FUN_CODE_bbdd();
    bVar6 = P2;
    P2 = bVar6 & 0xc0;
    bVar6 = SCON;
    SCON = bVar6 & 0xc0;
    bVar6 = P1;
    P1 = bVar6 & 0xc0;
    goto LAB_CODE_3b4a;
  }
  if (DAT_INTMEM_62 != 0x1a) goto LAB_CODE_3b4a;
  TH2 = 0xfe;
  TL2 = 0x6f;
  RCAP2H = 0xfe;
  RCAP2L = 0x6f;
  P0_2 = 1;
  if (_5_3 != '\0') goto LAB_CODE_3b4a;
  if (DAT_INTMEM_69 != 0xd) {
    if (DAT_INTMEM_69 == 10) {
      FUN_CODE_bbdd();
      FUN_CODE_bfa4();
    }
    else if (DAT_INTMEM_69 == 2) {
      FUN_CODE_ae2a();
    }
    goto LAB_CODE_3b4a;
  }
  if (DAT_INTMEM_5c == '\0') {
LAB_CODE_32bf:
    DAT_EXTMEM_08f1 = 0;
LAB_CODE_32f9:
    DAT_EXTMEM_08f2 = 0;
    DAT_EXTMEM_08f3 = 0xff;
  }
  else if (DAT_INTMEM_5c == '\x01') {
LAB_CODE_32c9:
    DAT_EXTMEM_08f1 = 0;
LAB_CODE_330c:
    DAT_EXTMEM_08f2 = 0xff;
    DAT_EXTMEM_08f3 = 0;
  }
  else if (DAT_INTMEM_5c == '\x02') {
LAB_CODE_32d7:
    DAT_EXTMEM_08f2 = 0;
LAB_CODE_331c:
    DAT_EXTMEM_08f1 = 0xff;
    DAT_EXTMEM_08f3 = DAT_EXTMEM_08f2;
  }
  else if (DAT_INTMEM_5c == '\x03') {
LAB_CODE_32e4:
    DAT_EXTMEM_08f1 = 0;
    DAT_EXTMEM_08f2 = 0xff;
    DAT_EXTMEM_08f3 = DAT_EXTMEM_08f2;
  }
  else {
    if (DAT_INTMEM_5c == '\x04') {
LAB_CODE_32f2:
      DAT_EXTMEM_08f1 = 0xff;
      goto LAB_CODE_32f9;
    }
    if (DAT_INTMEM_5c == '\x05') {
LAB_CODE_3305:
      DAT_EXTMEM_08f1 = 0xff;
      goto LAB_CODE_330c;
    }
    if (DAT_INTMEM_5c == '\x06') {
LAB_CODE_3316:
      DAT_EXTMEM_08f2 = 0xff;
      goto LAB_CODE_331c;
    }
    if (DAT_INTMEM_5c == '\a') {
      if (DAT_INTMEM_61 == 0) goto LAB_CODE_32bf;
      if (DAT_INTMEM_61 == 1) goto LAB_CODE_32c9;
      if (DAT_INTMEM_61 == 2) goto LAB_CODE_32d7;
      if (DAT_INTMEM_61 == 3) goto LAB_CODE_32e4;
      if (DAT_INTMEM_61 == 4) goto LAB_CODE_32f2;
      if (DAT_INTMEM_61 == 5) goto LAB_CODE_3305;
      if (DAT_INTMEM_61 == 6) goto LAB_CODE_3316;
    }
  }
  uVar3 = DAT_EXTMEM_08f1;
  DAT_INTMEM_5a = DAT_INTMEM_5a + 1;
  if (0x80 < (0xfe < BANK3_R3 ^ 0x80U) - (((DAT_INTMEM_5a < BANK3_R3 + 2) << 7) >> 7))
  goto LAB_CODE_3b4a;
  DAT_INTMEM_5a = 0;
  if ((DAT_INTMEM_65 < 0xb) << 7 < '\0') {
    *(undefined1 *)CONCAT11('\x04' - (((9 < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 - 10) =
         DAT_EXTMEM_08f1;
    uVar4 = DAT_EXTMEM_08f2;
    *(undefined1 *)CONCAT11('\x05' - (((0x74 < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 0x8b) =
         DAT_EXTMEM_08f2;
    uVar5 = DAT_EXTMEM_08f3;
    *(undefined1 *)CONCAT11('\x06' - (((0xdf < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 0x20) =
         DAT_EXTMEM_08f3;
    *(undefined1 *)CONCAT11('\x05' - (((0xf2 < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 0xd) = 0;
    *(undefined1 *)CONCAT11('\x05' - (((0x5d < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 0xa2) = 0;
    *(undefined1 *)CONCAT11('\x06' - (((200 < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 0x37) = 0;
    *(undefined1 *)CONCAT11('\x05' - (((0xdb < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 0x24) =
         uVar3;
    *(undefined1 *)CONCAT11('\x05' - (((0x46 < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 0xb9) =
         uVar4;
    *(undefined1 *)CONCAT11('\x06' - (((0xb1 < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 0x4e) =
         uVar5;
    *(undefined1 *)CONCAT11('\x05' - (((0xc4 < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 0x3b) = 0;
    *(undefined1 *)CONCAT11('\x05' - (((0x2f < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 - 0x30) = 0;
    *(undefined1 *)CONCAT11('\x06' - (((0x9a < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 0x65) = 0;
    uVar3 = DAT_EXTMEM_08f1;
    *(undefined1 *)CONCAT11('\x05' - (((0xad < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 0x52) =
         DAT_EXTMEM_08f1;
    uVar4 = DAT_EXTMEM_08f2;
    *(undefined1 *)CONCAT11('\x05' - (((0x18 < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 - 0x19) =
         DAT_EXTMEM_08f2;
    uVar5 = DAT_EXTMEM_08f3;
    *(undefined1 *)CONCAT11('\x06' - (((0x83 < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 0x7c) =
         DAT_EXTMEM_08f3;
    *(undefined1 *)CONCAT11('\x05' - (((0x96 < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 0x69) = 0;
    *(undefined1 *)CONCAT11('\x05' - (((1 < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 - 2) = 0;
    *(undefined1 *)CONCAT11('\x06' - (((0x6c < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 0x93) = 0;
    cVar1 = -DAT_INTMEM_65;
    bVar6 = cVar1 + 0x16;
    cVar2 = ((0x16 < DAT_INTMEM_65) << 7) >> 7;
    *(undefined1 *)CONCAT11((cVar2 - (((9 < bVar6) << 7) >> 7)) + '\x04',cVar1 + '\f') = 0;
    *(undefined1 *)CONCAT11((cVar2 - (((0x74 < bVar6) << 7) >> 7)) + '\x05',cVar1 + -0x5f) = 0;
    *(undefined1 *)CONCAT11((cVar2 - (((0xdf < bVar6) << 7) >> 7)) + '\x06',cVar1 + '6') = 0;
    cVar1 = -DAT_INTMEM_65;
    bVar6 = cVar1 + 0x16;
    cVar2 = ((0x16 < DAT_INTMEM_65) << 7) >> 7;
    *(undefined1 *)CONCAT11((cVar2 - (((0xf2 < bVar6) << 7) >> 7)) + '\x05',cVar1 + '#') = uVar3;
    *(undefined1 *)CONCAT11((cVar2 - (((0x5d < bVar6) << 7) >> 7)) + '\x05',cVar1 + -0x48) = uVar4;
    *(undefined1 *)CONCAT11((cVar2 - (((200 < bVar6) << 7) >> 7)) + '\x06',cVar1 + 'M') = uVar5;
    *(undefined1 *)CONCAT11((cVar2 - (((0xdb < bVar6) << 7) >> 7)) + '\x05',cVar1 + ':') = 0;
    *(undefined1 *)CONCAT11((cVar2 - (((0x46 < bVar6) << 7) >> 7)) + '\x05',cVar1 + -0x31) = 0;
    *(undefined1 *)CONCAT11((cVar2 - (((0xb1 < bVar6) << 7) >> 7)) + '\x06',cVar1 + 'd') = 0;
    uVar3 = DAT_EXTMEM_08f1;
    *(undefined1 *)CONCAT11((cVar2 - (((0xc4 < bVar6) << 7) >> 7)) + '\x05',cVar1 + 'Q') =
         DAT_EXTMEM_08f1;
    uVar4 = DAT_EXTMEM_08f2;
    *(undefined1 *)CONCAT11((cVar2 - (((0x2f < bVar6) << 7) >> 7)) + '\x05',cVar1 + -0x1a) =
         DAT_EXTMEM_08f2;
    *(undefined1 *)CONCAT11((cVar2 - (((0x9a < bVar6) << 7) >> 7)) + '\x06',cVar1 + '{') = uVar5;
    *(undefined1 *)CONCAT11((cVar2 - (((0xad < bVar6) << 7) >> 7)) + '\x05',cVar1 + 'h') = 0;
    *(undefined1 *)CONCAT11((cVar2 - (((0x18 < bVar6) << 7) >> 7)) + '\x05',cVar1 + -3) = 0;
    *(undefined1 *)CONCAT11((cVar2 - (((0x83 < bVar6) << 7) >> 7)) + '\x06',cVar1 + -0x6e) = 0;
    *(undefined1 *)CONCAT11((cVar2 - (((0x96 < bVar6) << 7) >> 7)) + '\x05',cVar1 + '\x7f') = uVar3;
    *(undefined1 *)CONCAT11((cVar2 - (((1 < bVar6) << 7) >> 7)) + '\x05',cVar1 + '\x14') = uVar4;
    *(undefined1 *)CONCAT11((cVar2 - (((0x6c < bVar6) << 7) >> 7)) + '\x06',cVar1 + -0x57) = uVar5;
  }
  else if ((DAT_INTMEM_65 < 0x17) << 7 < '\0') {
    *(undefined1 *)CONCAT11('\x04' - (((9 < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 - 10) =
         DAT_EXTMEM_08f1;
    uVar4 = DAT_EXTMEM_08f2;
    *(undefined1 *)CONCAT11('\x05' - (((0x74 < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 0x8b) =
         DAT_EXTMEM_08f2;
    uVar5 = DAT_EXTMEM_08f3;
    *(undefined1 *)CONCAT11('\x06' - (((0xdf < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 0x20) =
         DAT_EXTMEM_08f3;
    *(undefined1 *)CONCAT11('\x05' - (((0xf2 < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 0xd) =
         uVar3;
    *(undefined1 *)CONCAT11('\x05' - (((0x5d < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 0xa2) =
         uVar4;
    *(undefined1 *)CONCAT11('\x06' - (((200 < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 0x37) =
         uVar5;
    uVar3 = DAT_EXTMEM_08f1;
    *(undefined1 *)CONCAT11('\x05' - (((0xdb < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 0x24) =
         DAT_EXTMEM_08f1;
    uVar4 = DAT_EXTMEM_08f2;
    *(undefined1 *)CONCAT11('\x05' - (((0x46 < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 0xb9) =
         DAT_EXTMEM_08f2;
    uVar5 = DAT_EXTMEM_08f3;
    *(undefined1 *)CONCAT11('\x06' - (((0xb1 < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 0x4e) =
         DAT_EXTMEM_08f3;
    *(undefined1 *)CONCAT11('\x05' - (((0xc4 < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 0x3b) =
         uVar3;
    *(undefined1 *)CONCAT11('\x05' - (((0x2f < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 - 0x30) =
         uVar4;
    *(undefined1 *)CONCAT11('\x06' - (((0x9a < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 0x65) =
         uVar5;
    uVar3 = DAT_EXTMEM_08f1;
    *(undefined1 *)CONCAT11('\x05' - (((0xad < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 0x52) =
         DAT_EXTMEM_08f1;
    uVar4 = DAT_EXTMEM_08f2;
    *(undefined1 *)CONCAT11('\x05' - (((0x18 < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 - 0x19) =
         DAT_EXTMEM_08f2;
    uVar5 = DAT_EXTMEM_08f3;
    *(undefined1 *)CONCAT11('\x06' - (((0x83 < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 0x7c) =
         DAT_EXTMEM_08f3;
    *(undefined1 *)CONCAT11('\x05' - (((0x96 < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 0x69) =
         uVar3;
    *(undefined1 *)CONCAT11('\x05' - (((1 < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 - 2) = uVar4;
    *(undefined1 *)CONCAT11('\x06' - (((0x6c < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 0x93) =
         uVar5;
    uVar3 = DAT_EXTMEM_08f1;
    cVar1 = -DAT_INTMEM_65;
    bVar6 = cVar1 + 0x16;
    cVar2 = ((0x16 < DAT_INTMEM_65) << 7) >> 7;
    *(undefined1 *)CONCAT11((cVar2 - (((9 < bVar6) << 7) >> 7)) + '\x04',cVar1 + '\f') =
         DAT_EXTMEM_08f1;
    uVar4 = DAT_EXTMEM_08f2;
    *(undefined1 *)CONCAT11((cVar2 - (((0x74 < bVar6) << 7) >> 7)) + '\x05',cVar1 + -0x5f) =
         DAT_EXTMEM_08f2;
    uVar5 = DAT_EXTMEM_08f3;
    *(undefined1 *)CONCAT11((cVar2 - (((0xdf < bVar6) << 7) >> 7)) + '\x06',cVar1 + '6') =
         DAT_EXTMEM_08f3;
    *(undefined1 *)CONCAT11((cVar2 - (((0xf2 < bVar6) << 7) >> 7)) + '\x05',cVar1 + '#') = uVar3;
    *(undefined1 *)CONCAT11((cVar2 - (((0x5d < bVar6) << 7) >> 7)) + '\x05',cVar1 + -0x48) = uVar4;
    *(undefined1 *)CONCAT11((cVar2 - (((200 < bVar6) << 7) >> 7)) + '\x06',cVar1 + 'M') = uVar5;
    uVar3 = DAT_EXTMEM_08f1;
    *(undefined1 *)CONCAT11((cVar2 - (((0xdb < bVar6) << 7) >> 7)) + '\x05',cVar1 + ':') =
         DAT_EXTMEM_08f1;
    uVar4 = DAT_EXTMEM_08f2;
    *(undefined1 *)CONCAT11((cVar2 - (((0x46 < bVar6) << 7) >> 7)) + '\x05',cVar1 + -0x31) =
         DAT_EXTMEM_08f2;
    uVar5 = DAT_EXTMEM_08f3;
    *(undefined1 *)CONCAT11((cVar2 - (((0xb1 < bVar6) << 7) >> 7)) + '\x06',cVar1 + 'd') =
         DAT_EXTMEM_08f3;
    *(undefined1 *)CONCAT11((cVar2 - (((0xc4 < bVar6) << 7) >> 7)) + '\x05',cVar1 + 'Q') = uVar3;
    *(undefined1 *)CONCAT11((cVar2 - (((0x2f < bVar6) << 7) >> 7)) + '\x05',cVar1 + -0x1a) = uVar4;
    *(undefined1 *)CONCAT11((cVar2 - (((0x9a < bVar6) << 7) >> 7)) + '\x06',cVar1 + '{') = uVar5;
    uVar3 = DAT_EXTMEM_08f1;
    *(undefined1 *)CONCAT11((cVar2 - (((0xad < bVar6) << 7) >> 7)) + '\x05',cVar1 + 'h') =
         DAT_EXTMEM_08f1;
    uVar4 = DAT_EXTMEM_08f2;
    *(undefined1 *)CONCAT11((cVar2 - (((0x18 < bVar6) << 7) >> 7)) + '\x05',cVar1 + -3) =
         DAT_EXTMEM_08f2;
    uVar5 = DAT_EXTMEM_08f3;
    *(undefined1 *)CONCAT11((cVar2 - (((0x83 < bVar6) << 7) >> 7)) + '\x06',cVar1 + -0x6e) =
         DAT_EXTMEM_08f3;
    *(undefined1 *)CONCAT11((cVar2 - (((0x96 < bVar6) << 7) >> 7)) + '\x05',cVar1 + '\x7f') = uVar3;
    *(undefined1 *)CONCAT11((cVar2 - (((1 < bVar6) << 7) >> 7)) + '\x05',cVar1 + '\x14') = uVar4;
    *(undefined1 *)CONCAT11((cVar2 - (((0x6c < bVar6) << 7) >> 7)) + '\x06',cVar1 + -0x57) = uVar5;
  }
  else {
    if ((DAT_INTMEM_65 < 0x22) << 7 < '\0') {
      *(undefined1 *)CONCAT11('\x04' - (((0x20 < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 - 0x21) =
           0;
      *(undefined1 *)CONCAT11('\x05' - (((0x8b < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 0x74) =
           0;
      *(undefined1 *)CONCAT11('\x06' - (((0xf6 < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 9) = 0;
      uVar3 = DAT_EXTMEM_08f1;
      *(undefined1 *)CONCAT11('\x04' - (((9 < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 - 10) =
           DAT_EXTMEM_08f1;
      uVar4 = DAT_EXTMEM_08f2;
      *(undefined1 *)CONCAT11('\x05' - (((0x74 < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 0x8b) =
           DAT_EXTMEM_08f2;
      uVar5 = DAT_EXTMEM_08f3;
      *(undefined1 *)CONCAT11('\x06' - (((0xdf < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 0x20) =
           DAT_EXTMEM_08f3;
      *(undefined1 *)CONCAT11('\x05' - (((0xf2 < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 0xd) = 0
      ;
      *(undefined1 *)CONCAT11('\x05' - (((0x5d < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 0xa2) =
           0;
      *(undefined1 *)CONCAT11('\x06' - (((200 < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 0x37) = 0
      ;
      *(undefined1 *)CONCAT11('\x05' - (((0xdb < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 0x24) =
           uVar3;
      *(undefined1 *)CONCAT11('\x05' - (((0x46 < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 0xb9) =
           uVar4;
      *(undefined1 *)CONCAT11('\x06' - (((0xb1 < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 0x4e) =
           uVar5;
      *(undefined1 *)CONCAT11('\x05' - (((0xc4 < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 0x3b) =
           0;
      *(undefined1 *)CONCAT11('\x05' - (((0x2f < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 - 0x30) =
           0;
      *(undefined1 *)CONCAT11('\x06' - (((0x9a < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 0x65) =
           0;
      uVar3 = DAT_EXTMEM_08f1;
      *(undefined1 *)CONCAT11('\x05' - (((0xad < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 0x52) =
           DAT_EXTMEM_08f1;
      uVar4 = DAT_EXTMEM_08f2;
      *(undefined1 *)CONCAT11('\x05' - (((0x18 < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 - 0x19) =
           DAT_EXTMEM_08f2;
      uVar5 = DAT_EXTMEM_08f3;
      *(undefined1 *)CONCAT11('\x06' - (((0x83 < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 0x7c) =
           DAT_EXTMEM_08f3;
      cVar2 = -DAT_INTMEM_65;
      bVar6 = cVar2 + 0x2d;
      cVar1 = ((0x2d < DAT_INTMEM_65) << 7) >> 7;
      *(undefined1 *)CONCAT11((cVar1 - (((9 < bVar6) << 7) >> 7)) + '\x04',cVar2 + '#') = uVar3;
      *(undefined1 *)CONCAT11((cVar1 - (((0x74 < bVar6) << 7) >> 7)) + '\x05',cVar2 + -0x48) = uVar4
      ;
      *(undefined1 *)CONCAT11((cVar1 - (((0xdf < bVar6) << 7) >> 7)) + '\x06',cVar2 + 'M') = uVar5;
      *(undefined1 *)CONCAT11((cVar1 - (((0xf2 < bVar6) << 7) >> 7)) + '\x05',cVar2 + ':') = 0;
      *(undefined1 *)CONCAT11((cVar1 - (((0x5d < bVar6) << 7) >> 7)) + '\x05',cVar2 + -0x31) = 0;
      *(undefined1 *)CONCAT11((cVar1 - (((200 < bVar6) << 7) >> 7)) + '\x06',cVar2 + 'd') = 0;
      uVar3 = DAT_EXTMEM_08f1;
      *(undefined1 *)CONCAT11((cVar1 - (((0xdb < bVar6) << 7) >> 7)) + '\x05',cVar2 + 'Q') =
           DAT_EXTMEM_08f1;
      uVar4 = DAT_EXTMEM_08f2;
      *(undefined1 *)CONCAT11((cVar1 - (((0x46 < bVar6) << 7) >> 7)) + '\x05',cVar2 + -0x1a) =
           DAT_EXTMEM_08f2;
      *(undefined1 *)CONCAT11((cVar1 - (((0xb1 < bVar6) << 7) >> 7)) + '\x06',cVar2 + '{') = uVar5;
      *(undefined1 *)CONCAT11((cVar1 - (((0xc4 < bVar6) << 7) >> 7)) + '\x05',cVar2 + 'h') = 0;
      *(undefined1 *)CONCAT11((cVar1 - (((0x2f < bVar6) << 7) >> 7)) + '\x05',cVar2 + -3) = 0;
      *(undefined1 *)CONCAT11((cVar1 - (((0x9a < bVar6) << 7) >> 7)) + '\x06',cVar2 + -0x6e) = 0;
      *(undefined1 *)CONCAT11((cVar1 - (((0xad < bVar6) << 7) >> 7)) + '\x05',cVar2 + '\x7f') =
           uVar3;
      *(undefined1 *)CONCAT11((cVar1 - (((0x18 < bVar6) << 7) >> 7)) + '\x05',cVar2 + '\x14') =
           uVar4;
      *(undefined1 *)CONCAT11((cVar1 - (((0x83 < bVar6) << 7) >> 7)) + '\x06',cVar2 + -0x57) = uVar5
      ;
      *(undefined1 *)CONCAT11((cVar1 - (((0x96 < bVar6) << 7) >> 7)) + '\x05',cVar2 + -0x6a) = 0;
      *(undefined1 *)CONCAT11((cVar1 - (((1 < bVar6) << 7) >> 7)) + '\x05',cVar2 + '+') = 0;
      cVar1 = cVar1 - (((0x6c < bVar6) << 7) >> 7);
    }
    else {
      if (0x2d < DAT_INTMEM_65) goto LAB_CODE_3b14;
      *(undefined1 *)CONCAT11('\x04' - (((0x20 < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 - 0x21) =
           0;
      *(undefined1 *)CONCAT11('\x05' - (((0x8b < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 0x74) =
           0;
      *(undefined1 *)CONCAT11('\x06' - (((0xf6 < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 9) = 0;
      *(undefined1 *)CONCAT11('\x04' - (((9 < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 - 10) = 0;
      *(undefined1 *)CONCAT11('\x05' - (((0x74 < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 0x8b) =
           0;
      *(undefined1 *)CONCAT11('\x06' - (((0xdf < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 0x20) =
           0;
      *(undefined1 *)CONCAT11('\x05' - (((0xf2 < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 0xd) = 0
      ;
      *(undefined1 *)CONCAT11('\x05' - (((0x5d < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 0xa2) =
           0;
      *(undefined1 *)CONCAT11('\x06' - (((200 < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 0x37) = 0
      ;
      *(undefined1 *)CONCAT11('\x05' - (((0xdb < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 0x24) =
           0;
      *(undefined1 *)CONCAT11('\x05' - (((0x46 < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 0xb9) =
           0;
      *(undefined1 *)CONCAT11('\x06' - (((0xb1 < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 0x4e) =
           0;
      *(undefined1 *)CONCAT11('\x05' - (((0xc4 < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 0x3b) =
           0;
      *(undefined1 *)CONCAT11('\x05' - (((0x2f < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 - 0x30) =
           0;
      *(undefined1 *)CONCAT11('\x06' - (((0x9a < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 0x65) =
           0;
      *(undefined1 *)CONCAT11('\x05' - (((0xad < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 0x52) =
           0;
      *(undefined1 *)CONCAT11('\x05' - (((0x18 < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 - 0x19) =
           0;
      *(undefined1 *)CONCAT11('\x06' - (((0x83 < DAT_INTMEM_65) << 7) >> 7),DAT_INTMEM_65 + 0x7c) =
           0;
      cVar2 = -DAT_INTMEM_65;
      bVar6 = cVar2 + 0x2d;
      cVar1 = ((0x2d < DAT_INTMEM_65) << 7) >> 7;
      *(undefined1 *)CONCAT11((cVar1 - (((9 < bVar6) << 7) >> 7)) + '\x04',cVar2 + '#') = 0;
      *(undefined1 *)CONCAT11((cVar1 - (((0x74 < bVar6) << 7) >> 7)) + '\x05',cVar2 + -0x48) = 0;
      *(undefined1 *)CONCAT11((cVar1 - (((0xdf < bVar6) << 7) >> 7)) + '\x06',cVar2 + 'M') = 0;
      *(undefined1 *)CONCAT11((cVar1 - (((0xf2 < bVar6) << 7) >> 7)) + '\x05',cVar2 + ':') = 0;
      *(undefined1 *)CONCAT11((cVar1 - (((0x5d < bVar6) << 7) >> 7)) + '\x05',cVar2 + -0x31) = 0;
      *(undefined1 *)CONCAT11((cVar1 - (((200 < bVar6) << 7) >> 7)) + '\x06',cVar2 + 'd') = 0;
      *(undefined1 *)CONCAT11((cVar1 - (((0xdb < bVar6) << 7) >> 7)) + '\x05',cVar2 + 'Q') = 0;
      *(undefined1 *)CONCAT11((cVar1 - (((0x46 < bVar6) << 7) >> 7)) + '\x05',cVar2 + -0x1a) = 0;
      *(undefined1 *)CONCAT11((cVar1 - (((0xb1 < bVar6) << 7) >> 7)) + '\x06',cVar2 + '{') = 0;
      *(undefined1 *)CONCAT11((cVar1 - (((0xc4 < bVar6) << 7) >> 7)) + '\x05',cVar2 + 'h') = 0;
      *(undefined1 *)CONCAT11((cVar1 - (((0x2f < bVar6) << 7) >> 7)) + '\x05',cVar2 + -3) = 0;
      *(undefined1 *)CONCAT11((cVar1 - (((0x9a < bVar6) << 7) >> 7)) + '\x06',cVar2 + -0x6e) = 0;
      *(undefined1 *)CONCAT11((cVar1 - (((0xad < bVar6) << 7) >> 7)) + '\x05',cVar2 + '\x7f') = 0;
      *(undefined1 *)CONCAT11((cVar1 - (((0x18 < bVar6) << 7) >> 7)) + '\x05',cVar2 + '\x14') = 0;
      *(undefined1 *)CONCAT11((cVar1 - (((0x83 < bVar6) << 7) >> 7)) + '\x06',cVar2 + -0x57) = 0;
      *(undefined1 *)CONCAT11((cVar1 - (((0x96 < bVar6) << 7) >> 7)) + '\x05',cVar2 + -0x6a) = 0;
      *(undefined1 *)CONCAT11((cVar1 - (((1 < bVar6) << 7) >> 7)) + '\x05',cVar2 + '+') = 0;
      cVar1 = cVar1 - (((0x6c < bVar6) << 7) >> 7);
    }
    *(undefined1 *)CONCAT11(cVar1 + '\x06',-0x40 - DAT_INTMEM_65) = 0;
  }
LAB_CODE_3b14:
  DAT_INTMEM_65 = DAT_INTMEM_65 + 1;
  if (((0x2d < DAT_INTMEM_65) && (DAT_INTMEM_65 = 0, DAT_INTMEM_5c == '\a')) &&
     (DAT_INTMEM_61 = DAT_INTMEM_61 + 1, 6 < DAT_INTMEM_61)) {
    DAT_INTMEM_61 = 0;
  }
LAB_CODE_3b4a:
  bVar6 = DAT_INTMEM_62 + 1;
  bVar7 = DAT_INTMEM_62 - 0x1a;
  DAT_INTMEM_62 = bVar6;
  if (0x1a < bVar6) {
    bVar7 = 0;
    DAT_INTMEM_62 = 0;
  }
  return bVar7;
}


// ===== FUN_CODE_3b56 @ CODE:3b56 =====

/* WARNING: Removing unreachable block (CODE,0x3c1e) */

byte FUN_CODE_3b56(void)

{
  undefined1 uVar1;
  undefined1 uVar2;
  byte bVar3;
  byte bVar4;
  char cVar5;
  
  if (DAT_EXTMEM_0935 == 4) {
    DAT_EXTMEM_0936 = '\x11';
    DAT_EXTMEM_0937 = 0;
    BANK2_R6 = bEXTMEM1100;
    _4_3 = 1;
    bVar4 = T2CON;
    T2CON = bVar4 | 4;
    bVar3 = bEXTMEM1100;
    DAT_EXTMEM_0935 = 0;
    goto LAB_CODE_44bb;
  }
  if (DAT_EXTMEM_0935 == 6) {
    bVar3 = 0;
    DAT_EXTMEM_0935 = 0;
    goto LAB_CODE_44bb;
  }
  if ((DAT_EXTMEM_0935 ^ 9) == 0) {
    DAT_EXTMEM_0936 = 0x11;
    DAT_EXTMEM_0937 = 0;
    if ((bEXTMEM1100 ^ 5) != 0) {
      DAT_EXTMEM_0935 = 0;
      DAT_EXTMEM_0936 = 0x11;
      DAT_EXTMEM_0937 = 0;
      return bEXTMEM1100 ^ 5;
    }
    if (bEXTMEM1101 + 0x8b != 0) {
      DAT_EXTMEM_0935 = 0;
      DAT_EXTMEM_0936 = 0x11;
      DAT_EXTMEM_0937 = 0;
      return bEXTMEM1101 + 0x8b;
    }
    DAT_EXTMEM_0935 = DAT_EXTMEM_0935 ^ 9;
    bVar4 = FUN_CODE_c1a9(0);
    return bVar4;
  }
  bVar4 = DAT_EXTMEM_0935 ^ 10;
  if (bVar4 != 0) {
    bVar4 = DAT_EXTMEM_0935 ^ 0xb;
    if (bVar4 == 0) {
      DAT_EXTMEM_0936 = '\x11';
      DAT_EXTMEM_0937 = 0;
      DAT_EXTMEM_0927 = bEXTMEM1101;
      bVar3 = DAT_EXTMEM_0916 ^ 1;
      DAT_EXTMEM_0935 = bVar4;
      if (bVar3 == 0) {
        if ((bEXTMEM1101 < 0xb) << 7 < '\0') {
          FUN_CODE_bdc0(bEXTMEM1102,bEXTMEM1101 * '\x18' + -0x15,0xe0);
          FUN_CODE_bdc0(*(undefined1 *)(CONCAT11(DAT_EXTMEM_0936,DAT_EXTMEM_0937) + 3),
                        DAT_EXTMEM_0927 * '\x18' + -0x11,0xe0);
          FUN_CODE_bdc0(*(undefined1 *)
                         CONCAT11(DAT_EXTMEM_0936 - (((0xfb < DAT_EXTMEM_0937) << 7) >> 7),
                                  DAT_EXTMEM_0937 + 4),DAT_EXTMEM_0927 * '\x18' + -0xd,0xe0);
          FUN_CODE_bdc0(*(undefined1 *)
                         CONCAT11(DAT_EXTMEM_0936 - (((0xfa < DAT_EXTMEM_0937) << 7) >> 7),
                                  DAT_EXTMEM_0937 + 5),DAT_EXTMEM_0927 * '\x18' + -9,0xe0);
          FUN_CODE_bdc0(*(undefined1 *)
                         CONCAT11(DAT_EXTMEM_0936 - (((0xf9 < DAT_EXTMEM_0937) << 7) >> 7),
                                  DAT_EXTMEM_0937 + 6),DAT_EXTMEM_0927 * '\x18' + -5,0xe0);
          cVar5 = DAT_EXTMEM_0927 * '\x18' + -1;
          uVar1 = *(undefined1 *)
                   CONCAT11(DAT_EXTMEM_0936 - (((0xf8 < DAT_EXTMEM_0937) << 7) >> 7),
                            DAT_EXTMEM_0937 + 7);
          uVar2 = 0xe0;
        }
        else if (bEXTMEM1101 == 0xb) {
          FUN_CODE_bdc0(bEXTMEM1102,0xf3,0xe0);
          FUN_CODE_bdc0(*(undefined1 *)(CONCAT11(DAT_EXTMEM_0936,DAT_EXTMEM_0937) + 3),0xf7,0xe0);
          FUN_CODE_bdc0(*(undefined1 *)
                         CONCAT11(DAT_EXTMEM_0936 - (((0xfb < DAT_EXTMEM_0937) << 7) >> 7),
                                  DAT_EXTMEM_0937 + 4),0xfb,0xe0);
          FUN_CODE_bdc0(*(undefined1 *)
                         CONCAT11(DAT_EXTMEM_0936 - (((0xfa < DAT_EXTMEM_0937) << 7) >> 7),
                                  DAT_EXTMEM_0937 + 5),0xff,0xe0);
          FUN_CODE_bdc0(*(undefined1 *)
                         CONCAT11(DAT_EXTMEM_0936 - (((0xf9 < DAT_EXTMEM_0937) << 7) >> 7),
                                  DAT_EXTMEM_0937 + 6),3,0xe1);
          uVar1 = *(undefined1 *)
                   CONCAT11(DAT_EXTMEM_0936 - (((0xf8 < DAT_EXTMEM_0937) << 7) >> 7),
                            DAT_EXTMEM_0937 + 7);
          cVar5 = '\a';
          uVar2 = 0xe1;
        }
        else if ((bEXTMEM1101 < 0x16) << 7 < '\0') {
          FUN_CODE_bdc0(bEXTMEM1102,bEXTMEM1101 * '\x18' + -0x15,0xe1);
          FUN_CODE_bdc0(*(undefined1 *)(CONCAT11(DAT_EXTMEM_0936,DAT_EXTMEM_0937) + 3),
                        DAT_EXTMEM_0927 * '\x18' + -0x11,0xe1);
          FUN_CODE_bdc0(*(undefined1 *)
                         CONCAT11(DAT_EXTMEM_0936 - (((0xfb < DAT_EXTMEM_0937) << 7) >> 7),
                                  DAT_EXTMEM_0937 + 4),DAT_EXTMEM_0927 * '\x18' + -0xd,0xe1);
          FUN_CODE_bdc0(*(undefined1 *)
                         CONCAT11(DAT_EXTMEM_0936 - (((0xfa < DAT_EXTMEM_0937) << 7) >> 7),
                                  DAT_EXTMEM_0937 + 5),DAT_EXTMEM_0927 * '\x18' + -9,0xe1);
          FUN_CODE_bdc0(*(undefined1 *)
                         CONCAT11(DAT_EXTMEM_0936 - (((0xf9 < DAT_EXTMEM_0937) << 7) >> 7),
                                  DAT_EXTMEM_0937 + 6),DAT_EXTMEM_0927 * '\x18' + -5,0xe1);
          cVar5 = DAT_EXTMEM_0927 * '\x18' + -1;
          uVar1 = *(undefined1 *)
                   CONCAT11(DAT_EXTMEM_0936 - (((0xf8 < DAT_EXTMEM_0937) << 7) >> 7),
                            DAT_EXTMEM_0937 + 7);
          uVar2 = 0xe1;
        }
        else if (bEXTMEM1101 == 0x16) {
          FUN_CODE_bdc0(bEXTMEM1102,0xfb,0xe1);
          FUN_CODE_bdc0(*(undefined1 *)(CONCAT11(DAT_EXTMEM_0936,DAT_EXTMEM_0937) + 3),0xff,0xe1);
          FUN_CODE_bdc0(*(undefined1 *)
                         CONCAT11(DAT_EXTMEM_0936 - (((0xfb < DAT_EXTMEM_0937) << 7) >> 7),
                                  DAT_EXTMEM_0937 + 4),3,0xe2);
          FUN_CODE_bdc0(*(undefined1 *)
                         CONCAT11(DAT_EXTMEM_0936 - (((0xfa < DAT_EXTMEM_0937) << 7) >> 7),
                                  DAT_EXTMEM_0937 + 5),7,0xe2);
          FUN_CODE_bdc0(*(undefined1 *)
                         CONCAT11(DAT_EXTMEM_0936 - (((0xf9 < DAT_EXTMEM_0937) << 7) >> 7),
                                  DAT_EXTMEM_0937 + 6),0xb,0xe2);
          uVar1 = *(undefined1 *)
                   CONCAT11(DAT_EXTMEM_0936 - (((0xf8 < DAT_EXTMEM_0937) << 7) >> 7),
                            DAT_EXTMEM_0937 + 7);
          cVar5 = '\x0f';
          uVar2 = 0xe2;
        }
        else {
          bVar3 = bEXTMEM1101 ^ 0x17;
          if (bVar3 != 0) goto LAB_CODE_44bb;
          FUN_CODE_bdc0(bEXTMEM1102,0x13,0xe2);
          FUN_CODE_bdc0(*(undefined1 *)(CONCAT11(DAT_EXTMEM_0936,DAT_EXTMEM_0937) + 3),0x17,0xe2);
          FUN_CODE_bdc0(*(undefined1 *)
                         CONCAT11(DAT_EXTMEM_0936 - (((0xfb < DAT_EXTMEM_0937) << 7) >> 7),
                                  DAT_EXTMEM_0937 + 4),0x1b,0xe2);
          FUN_CODE_bdc0(*(undefined1 *)
                         CONCAT11(DAT_EXTMEM_0936 - (((0xfa < DAT_EXTMEM_0937) << 7) >> 7),
                                  DAT_EXTMEM_0937 + 5),0x1f,0xe2);
          FUN_CODE_bdc0(*(undefined1 *)
                         CONCAT11(DAT_EXTMEM_0936 - (((0xf9 < DAT_EXTMEM_0937) << 7) >> 7),
                                  DAT_EXTMEM_0937 + 6),0x23,0xe2);
          uVar1 = *(undefined1 *)
                   CONCAT11(DAT_EXTMEM_0936 - (((0xf8 < DAT_EXTMEM_0937) << 7) >> 7),
                            DAT_EXTMEM_0937 + 7);
          cVar5 = '\'';
          uVar2 = 0xe2;
        }
        bVar3 = FUN_CODE_bdc0(uVar1,cVar5,uVar2);
      }
    }
    else {
      DAT_EXTMEM_0935 = DAT_EXTMEM_0935 ^ 0xc;
      if (DAT_EXTMEM_0935 == 0) {
        DAT_EXTMEM_0936 = '\x11';
        DAT_EXTMEM_0937 = 0;
        DAT_EXTMEM_0927 = bEXTMEM1101;
        BANK2_R4 = 0;
        BANK2_R5 = 0;
        bVar3 = DAT_EXTMEM_092c ^ 1;
        if (bVar3 == 0) {
          bVar4 = (byte)((ushort)bEXTMEM1101 * 6);
          DAT_EXTMEM_090d = bEXTMEM1102;
          FUN_CODE_b39e(0,0,(char)((ushort)bEXTMEM1101 * 6 >> 8) + DAT_EXTMEM_0938 +
                            (-2 - (((5 < bVar4) << 7) >> 7)),bVar4 - 6);
          FUN_CODE_bd5a(7,0xd0);
          bVar4 = (byte)((ushort)DAT_EXTMEM_0927 * 6);
          DAT_EXTMEM_090d = *(undefined1 *)(CONCAT11(DAT_EXTMEM_0936,DAT_EXTMEM_0937) + 3);
          FUN_CODE_b39e(0,0,(char)((ushort)DAT_EXTMEM_0927 * 6 >> 8) + DAT_EXTMEM_0938 +
                            (-2 - (((4 < bVar4) << 7) >> 7)),bVar4 - 5);
          FUN_CODE_bd5a(7,0xd0);
          bVar4 = (byte)((ushort)DAT_EXTMEM_0927 * 6);
          DAT_EXTMEM_090d =
               *(undefined1 *)
                CONCAT11(DAT_EXTMEM_0936 - (((0xfb < DAT_EXTMEM_0937) << 7) >> 7),
                         DAT_EXTMEM_0937 + 4);
          FUN_CODE_b39e(0,0,(char)((ushort)DAT_EXTMEM_0927 * 6 >> 8) + DAT_EXTMEM_0938 +
                            (-2 - (((3 < bVar4) << 7) >> 7)),bVar4 - 4);
          FUN_CODE_bd5a(7,0xd0);
          bVar4 = (byte)((ushort)DAT_EXTMEM_0927 * 6);
          DAT_EXTMEM_090d =
               *(undefined1 *)
                CONCAT11(DAT_EXTMEM_0936 - (((0xfa < DAT_EXTMEM_0937) << 7) >> 7),
                         DAT_EXTMEM_0937 + 5);
          FUN_CODE_b39e(0,0,(char)((ushort)DAT_EXTMEM_0927 * 6 >> 8) + DAT_EXTMEM_0938 +
                            (-2 - (((2 < bVar4) << 7) >> 7)),bVar4 - 3);
          FUN_CODE_bd5a(7,0xd0);
          bVar4 = (byte)((ushort)DAT_EXTMEM_0927 * 6);
          DAT_EXTMEM_090d =
               *(undefined1 *)
                CONCAT11(DAT_EXTMEM_0936 - (((0xf9 < DAT_EXTMEM_0937) << 7) >> 7),
                         DAT_EXTMEM_0937 + 6);
          FUN_CODE_b39e(0,0,(char)((ushort)DAT_EXTMEM_0927 * 6 >> 8) + DAT_EXTMEM_0938 +
                            (-2 - (((1 < bVar4) << 7) >> 7)),bVar4 - 2);
          FUN_CODE_bd5a(7,0xd0);
          cVar5 = (char)((ushort)DAT_EXTMEM_0927 * 6);
          DAT_EXTMEM_090d =
               *(undefined1 *)
                CONCAT11(DAT_EXTMEM_0936 - (((0xf8 < DAT_EXTMEM_0937) << 7) >> 7),
                         DAT_EXTMEM_0937 + 7);
          FUN_CODE_b39e(0,0,(char)((ushort)DAT_EXTMEM_0927 * 6 >> 8) + DAT_EXTMEM_0938 +
                            (-2 - (((cVar5 != '\0') << 7) >> 7)),cVar5 + -1);
          bVar3 = FUN_CODE_bd5a(7,0xd0);
        }
      }
      else {
        bVar3 = 0;
        DAT_EXTMEM_0935 = 0;
      }
    }
    goto LAB_CODE_44bb;
  }
  DAT_EXTMEM_0936 = '\x11';
  DAT_EXTMEM_0937 = 0;
  DAT_EXTMEM_0917 = 0;
  DAT_EXTMEM_0935 = bVar4;
  if (bEXTMEM1101 == 0x80) {
    bVar3 = 1;
    DAT_EXTMEM_0917 = 1;
    goto LAB_CODE_44bb;
  }
  if (bEXTMEM1101 == 3) {
    DAT_EXTMEM_0917 = 3;
    DAT_INTMEM_6d = 1;
    DAT_EXTMEM_0927 = bEXTMEM1103;
    bVar3 = bEXTMEM1103 ^ 1;
    if (bVar3 == 0) {
      FUN_CODE_bebf(0xe0);
      FUN_CODE_bebf(0xe2);
      DAT_EXTMEM_0903 = '\0';
      DAT_EXTMEM_0904 = '\0';
      do {
        FUN_CODE_bdc0(*(undefined1 *)CONCAT11(DAT_EXTMEM_0903 + -0x24,DAT_EXTMEM_0904),
                      DAT_EXTMEM_0904,0xe0);
        DAT_EXTMEM_0904 = DAT_EXTMEM_0904 + '\x01';
        if (DAT_EXTMEM_0904 == '\0') {
          DAT_EXTMEM_0903 = DAT_EXTMEM_0903 + '\x01';
        }
      } while ((DAT_EXTMEM_0903 == '\0') << 7 < '\0');
      DAT_EXTMEM_0903 = '\0';
      DAT_EXTMEM_0904 = '\0';
      do {
        FUN_CODE_bdc0(*(undefined1 *)CONCAT11(DAT_EXTMEM_0903 + -0x23,DAT_EXTMEM_0904),
                      DAT_EXTMEM_0904,0xe1);
        DAT_EXTMEM_0904 = DAT_EXTMEM_0904 + '\x01';
        if (DAT_EXTMEM_0904 == '\0') {
          DAT_EXTMEM_0903 = DAT_EXTMEM_0903 + '\x01';
        }
      } while ((DAT_EXTMEM_0903 == '\0') << 7 < '\0');
      DAT_EXTMEM_0903 = 0;
      DAT_EXTMEM_0904 = 0;
      do {
        FUN_CODE_bdc0(*(undefined1 *)CONCAT11(DAT_EXTMEM_0903 - 0x22,DAT_EXTMEM_0904),
                      DAT_EXTMEM_0904,0xe2);
        DAT_EXTMEM_0904 = DAT_EXTMEM_0904 + 1;
        if (DAT_EXTMEM_0904 == 0) {
          DAT_EXTMEM_0903 = DAT_EXTMEM_0903 + 1;
        }
        cVar5 = ((DAT_EXTMEM_0904 < 0x28) << 7) >> 7;
        bVar3 = DAT_EXTMEM_0903 + cVar5;
      } while ((DAT_EXTMEM_0903 < (byte)-cVar5) << 7 < '\0');
    }
    goto LAB_CODE_44bb;
  }
  if (bEXTMEM1101 == 4) {
    _4_4 = 1;
    FUN_CODE_bbdd();
    DAT_EXTMEM_0917 = 4;
    DAT_EXTMEM_0916 = *(byte *)(CONCAT11(DAT_EXTMEM_0936,DAT_EXTMEM_0937) + 2);
    bVar3 = DAT_EXTMEM_0916 ^ 1;
    if (bVar3 == 0) {
      FUN_CODE_bebf(0xe0);
      bVar3 = FUN_CODE_bebf(0xe2);
    }
    goto LAB_CODE_44bb;
  }
  if (bEXTMEM1101 == 5) {
    DAT_EXTMEM_0917 = 5;
    DAT_EXTMEM_0916 = bEXTMEM1102;
    DAT_EXTMEM_0938 = bEXTMEM1103;
    DAT_EXTMEM_092c = bEXTMEM1104;
    if (bEXTMEM1104 == 1) {
      BANK2_R4 = 0;
      BANK2_R5 = 0;
      _4_2 = 1;
      bVar4 = IEN0;
      IEN0 = bVar4 & 0xfe;
      FUN_CODE_bbdd();
    }
    cVar5 = (char)(DAT_EXTMEM_0938 - 1) >> 7;
    bVar3 = FUN_CODE_bf79(cVar5,cVar5,DAT_EXTMEM_0938 - 1,0);
    goto LAB_CODE_44bb;
  }
  if (bEXTMEM1101 == 10) {
    _4_4 = 0;
    DAT_INTMEM_69 = bEXTMEM1102;
    BANK3_R6 = bEXTMEM1103;
    DAT_INTMEM_5c = uEXTMEM1105;
    if (bEXTMEM1104 == 0) {
      BANK3_R3 = 4;
    }
    else if (bEXTMEM1104 == 1) {
      BANK3_R3 = 3;
    }
    else if (bEXTMEM1104 == 2) {
      BANK3_R3 = 2;
    }
    else if (bEXTMEM1104 == 3) {
      BANK3_R3 = 1;
    }
    else if (bEXTMEM1104 == 4) {
      BANK3_R3 = 0;
    }
    FUN_CODE_ac41();
    bVar3 = DAT_INTMEM_69;
    if (DAT_INTMEM_69 == 0x13) {
      FUN_CODE_bbdd();
      DAT_INTMEM_62 = 0;
      FUN_CODE_bebf(0xd8);
      _3_4 = 1;
      bVar3 = 0;
      IEN1 = 0;
    }
    _2_3 = 1;
    goto LAB_CODE_44bb;
  }
  if (bEXTMEM1101 != 0xc) {
    bVar3 = bEXTMEM1101;
    if (bEXTMEM1101 == 0xf) {
      _4_5 = 1;
    }
    goto LAB_CODE_44bb;
  }
  FUN_CODE_bbdd();
  DAT_INTMEM_62 = 0;
  IEN1 = 0;
  DAT_EXTMEM_0927 = *(byte *)(CONCAT11(DAT_EXTMEM_0936,DAT_EXTMEM_0937) + 3);
  if (DAT_EXTMEM_0927 < 0x55) {
    FUN_CODE_bdc0(*(undefined1 *)
                   CONCAT11(DAT_EXTMEM_0936 - (((0xfb < DAT_EXTMEM_0937) << 7) >> 7),
                            DAT_EXTMEM_0937 + 4),DAT_EXTMEM_0927 * '\x03' + '\x02',0xd8);
    FUN_CODE_bdc0(*(undefined1 *)
                   CONCAT11(DAT_EXTMEM_0936 - (((0xfa < DAT_EXTMEM_0937) << 7) >> 7),
                            DAT_EXTMEM_0937 + 5),DAT_EXTMEM_0927 * '\x03' + '\x01',0xd8);
    cVar5 = DAT_EXTMEM_0927 * '\x03';
    uVar1 = *(undefined1 *)
             CONCAT11(DAT_EXTMEM_0936 - (((0xf9 < DAT_EXTMEM_0937) << 7) >> 7),DAT_EXTMEM_0937 + 6);
LAB_CODE_3f03:
    FUN_CODE_bdc0(uVar1,cVar5,0xd8);
  }
  else {
    if (DAT_EXTMEM_0927 == 0x55) {
      FUN_CODE_bdc0(*(undefined1 *)
                     CONCAT11(DAT_EXTMEM_0936 - (((0xfb < DAT_EXTMEM_0937) << 7) >> 7),
                              DAT_EXTMEM_0937 + 4),1,0xd9);
      FUN_CODE_bdc0(*(undefined1 *)
                     CONCAT11(DAT_EXTMEM_0936 - (((0xfa < DAT_EXTMEM_0937) << 7) >> 7),
                              DAT_EXTMEM_0937 + 5),0,0xd9);
      uVar1 = *(undefined1 *)
               CONCAT11(DAT_EXTMEM_0936 - (((0xf9 < DAT_EXTMEM_0937) << 7) >> 7),DAT_EXTMEM_0937 + 6
                       );
      cVar5 = -1;
      goto LAB_CODE_3f03;
    }
    if (DAT_EXTMEM_0927 < 0x8a) {
      FUN_CODE_bdc0(*(undefined1 *)
                     CONCAT11(DAT_EXTMEM_0936 - (((0xfb < DAT_EXTMEM_0937) << 7) >> 7),
                              DAT_EXTMEM_0937 + 4),DAT_EXTMEM_0927 * '\x03' + '\x02',0xd9);
      FUN_CODE_bdc0(*(undefined1 *)
                     CONCAT11(DAT_EXTMEM_0936 - (((0xfa < DAT_EXTMEM_0937) << 7) >> 7),
                              DAT_EXTMEM_0937 + 5),(DAT_EXTMEM_0927 + 0xab) * '\x03',0xd9);
      FUN_CODE_bdc0(*(undefined1 *)
                     CONCAT11(DAT_EXTMEM_0936 - (((0xf9 < DAT_EXTMEM_0937) << 7) >> 7),
                              DAT_EXTMEM_0937 + 6),DAT_EXTMEM_0927 * '\x03',0xd9);
      if (DAT_EXTMEM_0927 == 0x89) {
        _2_3 = 1;
      }
    }
  }
  bVar3 = DAT_EXTMEM_0927;
  if (DAT_EXTMEM_0927 == 0x89) {
    _3_4 = 0;
  }
LAB_CODE_44bb:
  bVar4 = DAT_SFR_9b;
  DAT_SFR_9b = bVar4 & 0xf0;
  bVar4 = HADDR;
  HADDR = bVar4 | 4;
  return bVar3;
}


// ===== FUN_CODE_44c2 @ CODE:44c2 =====

void FUN_CODE_44c2(void)

{
  char cVar1;
  char cVar2;
  byte bVar3;
  
  IEN1 = 0;
  EA = 0;
  RD = 1;
  FUN_CODE_c08b(0);
  FUN_CODE_c1c8();
  _5_3 = 1;
  FUN_CODE_c189();
  FUN_CODE_a1d9();
  FUN_CODE_a515();
  P0_4 = 1;
  FUN_CODE_c0aa();
  _5_6 = 1;
  P0_3 = 1;
  _3_2 = 0;
  _2_6 = 0;
  _5_7 = 0;
  DAT_INTMEM_6d = 1;
  EA = 1;
  do {
    cVar2 = '\0';
    IEN1 = 0;
    if (_3_7 != '\0') {
      FUN_CODE_8332(0);
      cVar2 = FUN_CODE_5fcc();
    }
    if (_4_3 == '\x01') {
      if (_3_5 == '\x01') {
        _3_5 = '\0';
        bVar3 = IEN0;
        IEN0 = bVar3 & 0xfe;
        FUN_CODE_bbdd();
        _5_6 = 1;
        _2_6 = 0;
        _5_7 = 0;
        BANK3_R7 = 0;
        _2_1 = 0;
        FUN_CODE_afdc();
        FUN_CODE_bebf(0xe0);
        FUN_CODE_bebf(0xe2);
        FUN_CODE_bebf(0xd8);
        FUN_CODE_bebf(0xec);
        FUN_CODE_bebf(0xe6);
        FUN_CODE_bebf(0xe8);
        FUN_CODE_bebf(0xea);
        FUN_CODE_bebf(0xda);
        IEN1 = 0;
        DAT_INTMEM_6d = 0;
        BANK3_R3 = 2;
        BANK3_R6 = 4;
        DAT_INTMEM_5c = 7;
        DAT_INTMEM_69 = 0x10;
        FUN_CODE_baca();
        _5_3 = 1;
        FUN_CODE_a1d9();
        FUN_CODE_a515();
        DAT_EXTMEM_08e1 = '\0';
        DAT_EXTMEM_08e2 = '\0';
        do {
          IEN1 = 0;
          FUN_CODE_bdc0(*(undefined1 *)CONCAT11(DAT_EXTMEM_08e1 + -0x4e,DAT_EXTMEM_08e2),
                        DAT_EXTMEM_08e2,0xec);
          DAT_EXTMEM_08e2 = DAT_EXTMEM_08e2 + '\x01';
          if (DAT_EXTMEM_08e2 == '\0') {
            DAT_EXTMEM_08e1 = DAT_EXTMEM_08e1 + '\x01';
          }
        } while ((DAT_EXTMEM_08e1 == '\0') << 7 < '\0');
        DAT_EXTMEM_08e1 = '\0';
        DAT_EXTMEM_08e2 = '\0';
        do {
          IEN1 = 0;
          FUN_CODE_bdc0(*(undefined1 *)CONCAT11(DAT_EXTMEM_08e1 + -0x4d,DAT_EXTMEM_08e2),
                        DAT_EXTMEM_08e2,0xed);
          DAT_EXTMEM_08e2 = DAT_EXTMEM_08e2 + '\x01';
          if (DAT_EXTMEM_08e2 == '\0') {
            DAT_EXTMEM_08e1 = DAT_EXTMEM_08e1 + '\x01';
          }
        } while ((DAT_EXTMEM_08e1 == '\0') << 7 < '\0');
        DAT_EXTMEM_08e1 = '\0';
        DAT_EXTMEM_08e2 = '\0';
        do {
          IEN1 = 0;
          FUN_CODE_bdc0(*(undefined1 *)CONCAT11(DAT_EXTMEM_08e1 + -0x4c,DAT_EXTMEM_08e2),
                        DAT_EXTMEM_08e2,0xe6);
          DAT_EXTMEM_08e2 = DAT_EXTMEM_08e2 + '\x01';
          if (DAT_EXTMEM_08e2 == '\0') {
            DAT_EXTMEM_08e1 = DAT_EXTMEM_08e1 + '\x01';
          }
        } while ((DAT_EXTMEM_08e1 == '\0') << 7 < '\0');
        DAT_EXTMEM_08e1 = '\0';
        DAT_EXTMEM_08e2 = '\0';
        do {
          IEN1 = 0;
          FUN_CODE_bdc0(*(undefined1 *)CONCAT11(DAT_EXTMEM_08e1 + -0x4b,DAT_EXTMEM_08e2),
                        DAT_EXTMEM_08e2,0xe7);
          DAT_EXTMEM_08e2 = DAT_EXTMEM_08e2 + '\x01';
          if (DAT_EXTMEM_08e2 == '\0') {
            DAT_EXTMEM_08e1 = DAT_EXTMEM_08e1 + '\x01';
          }
        } while ((DAT_EXTMEM_08e1 == '\0') << 7 < '\0');
        DAT_EXTMEM_08e1 = '\0';
        DAT_EXTMEM_08e2 = '\0';
        do {
          IEN1 = 0;
          FUN_CODE_bdc0(*(undefined1 *)CONCAT11(DAT_EXTMEM_08e1 + -0x4a,DAT_EXTMEM_08e2),
                        DAT_EXTMEM_08e2,0xe8);
          DAT_EXTMEM_08e2 = DAT_EXTMEM_08e2 + '\x01';
          if (DAT_EXTMEM_08e2 == '\0') {
            DAT_EXTMEM_08e1 = DAT_EXTMEM_08e1 + '\x01';
          }
        } while ((DAT_EXTMEM_08e1 == '\0') << 7 < '\0');
        DAT_EXTMEM_08e1 = '\0';
        DAT_EXTMEM_08e2 = '\0';
        do {
          IEN1 = 0;
          FUN_CODE_bdc0(*(undefined1 *)CONCAT11(DAT_EXTMEM_08e1 + -0x49,DAT_EXTMEM_08e2),
                        DAT_EXTMEM_08e2,0xe9);
          DAT_EXTMEM_08e2 = DAT_EXTMEM_08e2 + '\x01';
          if (DAT_EXTMEM_08e2 == '\0') {
            DAT_EXTMEM_08e1 = DAT_EXTMEM_08e1 + '\x01';
          }
        } while ((DAT_EXTMEM_08e1 == '\0') << 7 < '\0');
        DAT_EXTMEM_08e1 = '\0';
        DAT_EXTMEM_08e2 = '\0';
        do {
          IEN1 = 0;
          FUN_CODE_bdc0(*(undefined1 *)CONCAT11(DAT_EXTMEM_08e1 + -0x48,DAT_EXTMEM_08e2),
                        DAT_EXTMEM_08e2,0xea);
          DAT_EXTMEM_08e2 = DAT_EXTMEM_08e2 + '\x01';
          if (DAT_EXTMEM_08e2 == '\0') {
            DAT_EXTMEM_08e1 = DAT_EXTMEM_08e1 + '\x01';
          }
        } while ((DAT_EXTMEM_08e1 == '\0') << 7 < '\0');
        DAT_EXTMEM_08e1 = '\0';
        DAT_EXTMEM_08e2 = '\0';
        do {
          IEN1 = 0;
          FUN_CODE_bdc0(*(undefined1 *)CONCAT11(DAT_EXTMEM_08e1 + -0x47,DAT_EXTMEM_08e2),
                        DAT_EXTMEM_08e2,0xeb);
          DAT_EXTMEM_08e2 = DAT_EXTMEM_08e2 + '\x01';
          if (DAT_EXTMEM_08e2 == '\0') {
            DAT_EXTMEM_08e1 = DAT_EXTMEM_08e1 + '\x01';
          }
        } while ((DAT_EXTMEM_08e1 == '\0') << 7 < '\0');
        DAT_EXTMEM_08e1 = '\0';
        DAT_EXTMEM_08e2 = '\0';
        do {
          IEN1 = 0;
          FUN_CODE_bdc0(*(undefined1 *)CONCAT11(DAT_EXTMEM_08e1 + -0x50,DAT_EXTMEM_08e2),
                        DAT_EXTMEM_08e2,0xda);
          DAT_EXTMEM_08e2 = DAT_EXTMEM_08e2 + '\x01';
          if (DAT_EXTMEM_08e2 == '\0') {
            DAT_EXTMEM_08e1 = DAT_EXTMEM_08e1 + '\x01';
          }
        } while ((DAT_EXTMEM_08e1 == '\0') << 7 < '\0');
        DAT_EXTMEM_08e1 = '\0';
        DAT_EXTMEM_08e2 = '\0';
        do {
          IEN1 = 0;
          FUN_CODE_bdc0(*(undefined1 *)CONCAT11(DAT_EXTMEM_08e1 + -0x4f,DAT_EXTMEM_08e2),
                        DAT_EXTMEM_08e2,0xdb);
          DAT_EXTMEM_08e2 = DAT_EXTMEM_08e2 + '\x01';
          if (DAT_EXTMEM_08e2 == '\0') {
            DAT_EXTMEM_08e1 = DAT_EXTMEM_08e1 + '\x01';
          }
        } while ((DAT_EXTMEM_08e1 == '\0') << 7 < '\0');
        DAT_EXTMEM_08e1 = '\0';
        DAT_EXTMEM_08e2 = '\0';
        do {
          IEN1 = 0;
          FUN_CODE_bdc0(*(undefined1 *)CONCAT11(DAT_EXTMEM_08e1 + -0x3a,DAT_EXTMEM_08e2),
                        DAT_EXTMEM_08e2,0xd8);
          DAT_EXTMEM_08e2 = DAT_EXTMEM_08e2 + '\x01';
          if (DAT_EXTMEM_08e2 == '\0') {
            DAT_EXTMEM_08e1 = DAT_EXTMEM_08e1 + '\x01';
          }
        } while ((DAT_EXTMEM_08e1 == '\0') << 7 < '\0');
        DAT_EXTMEM_08e1 = 0;
        DAT_EXTMEM_08e2 = 0;
        do {
          IEN1 = 0;
          FUN_CODE_bdc0(*(undefined1 *)CONCAT11(DAT_EXTMEM_08e1 - 0x39,DAT_EXTMEM_08e2),
                        DAT_EXTMEM_08e2,0xd9);
          DAT_EXTMEM_08e2 = DAT_EXTMEM_08e2 + 1;
          if (DAT_EXTMEM_08e2 == 0) {
            DAT_EXTMEM_08e1 = DAT_EXTMEM_08e1 + 1;
          }
        } while ((DAT_EXTMEM_08e1 < (byte)-(((DAT_EXTMEM_08e2 < 200) << 7) >> 7)) << 7 < '\0');
        DAT_EXTMEM_08e1 = '\0';
        DAT_EXTMEM_08e2 = '\0';
        do {
          IEN1 = 0;
          FUN_CODE_bdc0(*(undefined1 *)CONCAT11(DAT_EXTMEM_08e1 + -0x24,DAT_EXTMEM_08e2),
                        DAT_EXTMEM_08e2,0xe0);
          DAT_EXTMEM_08e2 = DAT_EXTMEM_08e2 + '\x01';
          if (DAT_EXTMEM_08e2 == '\0') {
            DAT_EXTMEM_08e1 = DAT_EXTMEM_08e1 + '\x01';
          }
        } while ((DAT_EXTMEM_08e1 == '\0') << 7 < '\0');
        DAT_EXTMEM_08e1 = '\0';
        DAT_EXTMEM_08e2 = '\0';
        do {
          IEN1 = 0;
          FUN_CODE_bdc0(*(undefined1 *)CONCAT11(DAT_EXTMEM_08e1 + -0x23,DAT_EXTMEM_08e2),
                        DAT_EXTMEM_08e2,0xe1);
          DAT_EXTMEM_08e2 = DAT_EXTMEM_08e2 + '\x01';
          if (DAT_EXTMEM_08e2 == '\0') {
            DAT_EXTMEM_08e1 = DAT_EXTMEM_08e1 + '\x01';
          }
        } while ((DAT_EXTMEM_08e1 == '\0') << 7 < '\0');
        DAT_EXTMEM_08e1 = 0;
        DAT_EXTMEM_08e2 = 0;
        do {
          IEN1 = 0;
          FUN_CODE_bdc0(*(undefined1 *)CONCAT11(DAT_EXTMEM_08e1 - 0x22,DAT_EXTMEM_08e2),
                        DAT_EXTMEM_08e2,0xe2);
          DAT_EXTMEM_08e2 = DAT_EXTMEM_08e2 + 1;
          if (DAT_EXTMEM_08e2 == 0) {
            DAT_EXTMEM_08e1 = DAT_EXTMEM_08e1 + 1;
          }
          cVar1 = ((DAT_EXTMEM_08e2 < 0x28) << 7) >> 7;
          cVar2 = DAT_EXTMEM_08e1 + cVar1;
        } while ((DAT_EXTMEM_08e1 < (byte)-cVar1) << 7 < '\0');
        bVar3 = IEN0;
        IEN0 = bVar3 | 1;
      }
      if (_4_5 != '\0') {
        bVar3 = IEN0;
        IEN0 = bVar3 & 0xfe;
        FUN_CODE_bbdd(cVar2);
        FUN_CODE_afdc();
        FUN_CODE_bd5a(7,0xd0);
        bVar3 = IEN0;
        IEN0 = bVar3 | 1;
        _4_5 = '\0';
      }
      if (((_2_2 == '\x01') && (BANK1_R3 == '\0' && BANK1_R2 == 0)) && (_4_1 == '\x01')) {
        _4_1 = '\0';
        if (BANK1_R7 < 0x4f) {
          if ((BANK2_R0 == '\0') || (BANK2_R0 == -1)) {
            if ((byte)-(((BANK1_R1 < 2) << 7) >> 7) <= BANK1_R0) {
              if (_3_0 != '\0') {
                BANK1_R0 = 0xff;
                BANK1_R1 = 0xff;
              }
              bVar3 = BANK1_R1;
              BANK1_R1 = BANK1_R1 - 1;
              if (bVar3 == 0) {
                BANK1_R0 = BANK1_R0 - 1;
              }
              BANK1_R7 = 0;
              FUN_CODE_b99e(0,0,BANK2_R3 * '\x17' + BANK2_R2,2);
              FUN_CODE_bd51();
              FUN_CODE_b99e(0,0,BANK2_R3 * '\x17' + BANK2_R2,3);
              FUN_CODE_bd54(0x7c9);
              cVar2 = '\x04';
              FUN_CODE_b99e(0,0,BANK2_R3 * '\x17' + BANK2_R2);
              BANK2_R0 = cVar2;
              goto joined_c0x49ab;
            }
            BANK1_R7 = 0;
            _2_2 = '\0';
            _1_0 = 0;
          }
          else {
            _0_0 = (char)DAT_EXTMEM_07c4 < '\0';
            _0_2 = 1;
            DAT_EXTMEM_07c5 = BANK2_R0;
            FUN_CODE_5b32();
            bVar3 = (byte)((ushort)BANK1_R7 * 3);
            FUN_CODE_b99e(0,0,((char)((ushort)BANK1_R7 * 3 >> 8) + BANK2_R3 * '\x17' + BANK2_R2) -
                              (((0xfa < bVar3) << 7) >> 7),bVar3 + 5);
            FUN_CODE_bd51();
            bVar3 = (byte)((ushort)BANK1_R7 * 3);
            FUN_CODE_b99e(0,0,((char)((ushort)BANK1_R7 * 3 >> 8) + BANK2_R3 * '\x17' + BANK2_R2) -
                              (((0xf9 < bVar3) << 7) >> 7),bVar3 + 6);
            FUN_CODE_bd54(0x7c9);
            bVar3 = (byte)((ushort)BANK1_R7 * 3);
            cVar2 = bVar3 + 7;
            FUN_CODE_b99e(0,0,((char)((ushort)BANK1_R7 * 3 >> 8) + BANK2_R3 * '\x17' + BANK2_R2) -
                              (((0xf8 < bVar3) << 7) >> 7));
            BANK1_R3 = DAT_EXTMEM_07c9;
            BANK1_R2 = DAT_EXTMEM_07c4 & 0x7f;
            BANK1_R7 = BANK1_R7 + 1;
            BANK2_R0 = cVar2;
          }
        }
        else {
          DAT_EXTMEM_07c5 = BANK2_R0;
          _0_2 = 1;
          _0_0 = 0;
          FUN_CODE_5b32();
          if ((BANK1_R0 < (byte)-(((BANK1_R1 < 2) << 7) >> 7)) << 7 < '\0') {
            BANK1_R7 = 0;
            _2_2 = '\0';
          }
          else {
            if (_3_0 != '\0') {
              BANK1_R0 = 0xff;
              BANK1_R1 = 0xff;
            }
            bVar3 = BANK1_R1;
            BANK1_R1 = BANK1_R1 - 1;
            if (bVar3 == 0) {
              BANK1_R0 = BANK1_R0 - 1;
            }
            BANK1_R7 = 0;
            FUN_CODE_b99e(0,0,BANK2_R3 * '\x17' + BANK2_R2,2);
            FUN_CODE_bd51();
            FUN_CODE_b99e(0,0,BANK2_R3 * '\x17' + BANK2_R2,3);
            FUN_CODE_bd54(0x7c9);
            cVar2 = '\x04';
            FUN_CODE_b99e(0,0,BANK2_R3 * '\x17' + BANK2_R2);
            BANK2_R0 = cVar2;
joined_c0x49ab:
            if ((char)DAT_EXTMEM_07c4 < '\0') {
              BANK1_R2 = DAT_EXTMEM_07c4 & 0x7f;
              BANK1_R3 = DAT_EXTMEM_07c9;
            }
          }
        }
      }
      if (_0_1 != '\0') {
        _0_1 = '\0';
        FUN_CODE_90d3();
      }
    }
    if (_4_0 == '\x01') {
      FUN_CODE_9518();
    }
  } while( true );
}


// ===== FUN_CODE_4b3c @ CODE:4b3c =====

byte FUN_CODE_4b3c(void)

{
  bool bVar1;
  byte bVar2;
  byte bVar3;
  byte bVar4;
  
  if (DAT_INTMEM_57 == '\0') {
    bVar2 = 0xff;
  }
  else {
    DAT_INTMEM_57 = '\0';
    if (DAT_INTMEM_6e == 0) {
      bVar3 = 0xfe < DAT_INTMEM_5a + 1 ^ 0x80;
      bVar4 = 0x80 - (((DAT_INTMEM_5a + 2 < BANK3_R3 + 1U) << 7) >> 7);
      bVar2 = bVar3 - bVar4;
      DAT_INTMEM_5a = DAT_INTMEM_5a + 1;
      if (bVar4 <= bVar3) {
        DAT_INTMEM_5a = 0;
        BANK3_R2 = BANK3_R2 + 2;
        bVar1 = BANK3_R2 < 0xfb;
        if (!bVar1) {
          BANK3_R2 = 0;
          _6_7 = _6_7 ^ 1;
          if (_6_7 != 0) {
            DAT_INTMEM_6e = 1;
            DAT_INTMEM_61 = DAT_INTMEM_61 + 1;
            if (7U - ((bVar1 << 7) >> 7) <= DAT_INTMEM_61) {
              DAT_INTMEM_61 = 0;
            }
          }
        }
        if (_6_7 == 0) {
          DAT_INTMEM_5b = -BANK3_R2 - 3;
        }
        else {
          DAT_INTMEM_5b = BANK3_R2;
        }
        bVar2 = DAT_INTMEM_5c;
        if ((DAT_INTMEM_5c < 8) << 7 < '\0') {
                    /* WARNING: Could not recover jumptable at 0x4bcf. Too many branches */
                    /* WARNING: Treating indirect jump as call */
          bVar4 = (*(code *)((ushort)(DAT_INTMEM_5c * '\x03') + 0x4bd0))();
          return bVar4;
        }
      }
    }
    else {
      DAT_INTMEM_6e = DAT_INTMEM_6e + 1;
      if (DAT_INTMEM_6e == 5) {
        FUN_CODE_be5c(1);
        FUN_CODE_bbdd();
        DAT_INTMEM_5b = 0;
      }
      bVar2 = DAT_INTMEM_6e - 0xf;
      if (0xe < DAT_INTMEM_6e) {
        DAT_INTMEM_6e = 0;
        return 0;
      }
    }
  }
  return bVar2;
}


// ===== FUN_CODE_4fb4 @ CODE:4fb4 =====

void FUN_CODE_4fb4(byte param_1)

{
  byte bVar1;
  byte bVar2;
  char *pcVar3;
  
  DAT_INTMEM_32 = *(byte *)CONCAT11('\x02' - (((0x6f < param_1) << 7) >> 7),param_1 + 0x90);
  DAT_INTMEM_31 = *(byte *)CONCAT11('\x02' - (((0x74 < param_1) << 7) >> 7),param_1 + 0x8b);
  DAT_INTMEM_30 = DAT_INTMEM_32 * '\x17' + DAT_INTMEM_31;
  if ((*(char *)CONCAT11('\x03' - (((0x39 < param_1) << 7) >> 7),param_1 - 0x3a) != '\0') &&
     (*(char *)CONCAT11(-(((0x75 < DAT_INTMEM_30) << 7) >> 7),DAT_INTMEM_30 + 0x8a) == '\x01')) {
    if (_6_6 == '\x01') {
      if (DAT_EXTMEM_015b == '\x01') {
        *(undefined1 *)CONCAT11('\x03' - (((0x39 < param_1) << 7) >> 7),param_1 - 0x3a) = 0;
        *(byte *)CONCAT11('\x01' - (((0xe < param_1) << 7) >> 7),param_1 - 0xf) = DAT_INTMEM_32;
        *(byte *)CONCAT11('\x02' - (((0x68 < param_1) << 7) >> 7),param_1 + 0x97) = DAT_INTMEM_32;
        bVar1 = param_1 * '\x06' + 0x1f;
        *(byte *)CONCAT11(('\x01' - (((0xe0 < param_1 * '\x06') << 7) >> 7)) -
                          ((CARRY1(bVar1,DAT_INTMEM_32) << 7) >> 7),bVar1 + DAT_INTMEM_32) =
             DAT_INTMEM_31;
        bVar1 = param_1 * '\x06' + 0x3d;
        *(byte *)CONCAT11(('\x01' - (((0xc2 < param_1 * '\x06') << 7) >> 7)) -
                          ((CARRY1(bVar1,DAT_INTMEM_32) << 7) >> 7),bVar1 + DAT_INTMEM_32) =
             DAT_INTMEM_31;
      }
      else {
        *(undefined1 *)CONCAT11(-(((0x75 < DAT_INTMEM_30) << 7) >> 7),DAT_INTMEM_30 + 0x8a) = 0;
        pcVar3 = (char *)CONCAT11('\x02' - (((99 < DAT_INTMEM_30) << 7) >> 7),DAT_INTMEM_30 + 0x9c);
        *pcVar3 = *pcVar3 + -5;
      }
    }
    else {
      *(undefined1 *)CONCAT11('\x03' - (((0x39 < param_1) << 7) >> 7),param_1 - 0x3a) = 0;
      *(byte *)CONCAT11('\x01' - (((0xe < param_1) << 7) >> 7),param_1 - 0xf) = DAT_INTMEM_32;
      *(byte *)CONCAT11('\x02' - (((0x68 < param_1) << 7) >> 7),param_1 + 0x97) = DAT_INTMEM_32;
      bVar1 = param_1 * '\x06' + 0x1f;
      *(byte *)CONCAT11(('\x01' - (((0xe0 < param_1 * '\x06') << 7) >> 7)) -
                        ((CARRY1(bVar1,DAT_INTMEM_32) << 7) >> 7),bVar1 + DAT_INTMEM_32) =
           DAT_INTMEM_31;
      bVar1 = param_1 * '\x06' + 0x3d;
      *(byte *)CONCAT11(('\x01' - (((0xc2 < param_1 * '\x06') << 7) >> 7)) -
                        ((CARRY1(bVar1,DAT_INTMEM_32) << 7) >> 7),bVar1 + DAT_INTMEM_32) =
           DAT_INTMEM_31;
      DAT_EXTMEM_015b = '\x01';
    }
  }
  if (DAT_EXTMEM_015b != '\0') {
    if (*(char *)CONCAT11('\x02' - (((0x68 < param_1) << 7) >> 7),param_1 + 0x97) != '\0') {
      pcVar3 = (char *)CONCAT11('\x02' - (((0x68 < param_1) << 7) >> 7),param_1 + 0x97);
      *pcVar3 = *pcVar3 + -1;
      bVar1 = *(char *)CONCAT11('\x02' - (((0x68 < param_1) << 7) >> 7),param_1 + 0x97) * '\x17';
      *(undefined1 *)CONCAT11(-((CARRY1(DAT_INTMEM_31,bVar1) << 7) >> 7),DAT_INTMEM_31 + bVar1) = 1;
      bVar1 = *(byte *)CONCAT11('\x02' - (((0x68 < param_1) << 7) >> 7),param_1 + 0x97);
      bVar2 = param_1 * '\x06' + 0x1f;
      *(byte *)CONCAT11(('\x01' - (((0xe0 < param_1 * '\x06') << 7) >> 7)) -
                        ((CARRY1(bVar2,bVar1) << 7) >> 7),bVar2 + bVar1) = DAT_INTMEM_31;
      bVar1 = *(byte *)CONCAT11('\x02' - (((0x68 < param_1) << 7) >> 7),param_1 + 0x97);
      bVar2 = param_1 * '\x06' + 0x3d;
      *(byte *)CONCAT11(('\x01' - (((0xc2 < param_1 * '\x06') << 7) >> 7)) -
                        ((CARRY1(bVar2,bVar1) << 7) >> 7),bVar2 + bVar1) = DAT_INTMEM_31;
    }
    if ((*(byte *)CONCAT11('\x01' - (((0xe < param_1) << 7) >> 7),param_1 - 0xf) < 5) << 7 < '\0') {
      pcVar3 = (char *)CONCAT11('\x01' - (((0xe < param_1) << 7) >> 7),param_1 - 0xf);
      *pcVar3 = *pcVar3 + '\x01';
      bVar1 = *(char *)CONCAT11('\x01' - (((0xe < param_1) << 7) >> 7),param_1 - 0xf) * '\x17';
      *(undefined1 *)CONCAT11(-((CARRY1(DAT_INTMEM_31,bVar1) << 7) >> 7),DAT_INTMEM_31 + bVar1) = 1;
      bVar1 = *(byte *)CONCAT11('\x01' - (((0xe < param_1) << 7) >> 7),param_1 - 0xf);
      bVar2 = param_1 * '\x06' + 0x1f;
      *(byte *)CONCAT11(('\x01' - (((0xe0 < param_1 * '\x06') << 7) >> 7)) -
                        ((CARRY1(bVar2,bVar1) << 7) >> 7),bVar2 + bVar1) = DAT_INTMEM_31;
      bVar1 = *(byte *)CONCAT11('\x01' - (((0xe < param_1) << 7) >> 7),param_1 - 0xf);
      bVar2 = param_1 * '\x06' + 0x3d;
      *(byte *)CONCAT11(('\x01' - (((0xc2 < param_1 * '\x06') << 7) >> 7)) -
                        ((CARRY1(bVar2,bVar1) << 7) >> 7),bVar2 + bVar1) = DAT_INTMEM_31;
    }
    bVar1 = 0;
    do {
      bVar2 = param_1 * '\x06' + 0x3d;
      if (*(char *)CONCAT11(('\x01' - (((0xc2 < param_1 * '\x06') << 7) >> 7)) -
                            ((CARRY1(bVar2,bVar1) << 7) >> 7),bVar2 + bVar1) != '\0') {
        bVar2 = param_1 * '\x06' + 0x3d;
        pcVar3 = (char *)CONCAT11(('\x01' - (((0xc2 < param_1 * '\x06') << 7) >> 7)) -
                                  ((CARRY1(bVar2,bVar1) << 7) >> 7),bVar2 + bVar1);
        *pcVar3 = *pcVar3 + -1;
        bVar2 = param_1 * '\x06' + 0x3d;
        bVar2 = *(byte *)CONCAT11(('\x01' - (((0xc2 < param_1 * '\x06') << 7) >> 7)) -
                                  ((CARRY1(bVar2,bVar1) << 7) >> 7),bVar2 + bVar1);
        *(undefined1 *)CONCAT11(-((CARRY1(bVar1 * '\x17',bVar2) << 7) >> 7),bVar1 * '\x17' + bVar2)
             = 1;
      }
      bVar2 = param_1 * '\x06' + 0x1f;
      if (*(byte *)CONCAT11(('\x01' - (((0xe0 < param_1 * '\x06') << 7) >> 7)) -
                            ((CARRY1(bVar2,bVar1) << 7) >> 7),bVar2 + bVar1) < 0x16) {
        bVar2 = param_1 * '\x06' + 0x1f;
        pcVar3 = (char *)CONCAT11(('\x01' - (((0xe0 < param_1 * '\x06') << 7) >> 7)) -
                                  ((CARRY1(bVar2,bVar1) << 7) >> 7),bVar2 + bVar1);
        *pcVar3 = *pcVar3 + '\x01';
        bVar2 = param_1 * '\x06' + 0x1f;
        bVar2 = *(byte *)CONCAT11(('\x01' - (((0xe0 < param_1 * '\x06') << 7) >> 7)) -
                                  ((CARRY1(bVar2,bVar1) << 7) >> 7),bVar2 + bVar1);
        *(undefined1 *)CONCAT11(-((CARRY1(bVar1 * '\x17',bVar2) << 7) >> 7),bVar1 * '\x17' + bVar2)
             = 1;
      }
      bVar1 = bVar1 + 1;
    } while (bVar1 != 6);
  }
  return;
}


// ===== thunk_FUN_CODE_58db @ CODE:58c9 =====

void thunk_FUN_CODE_58db(byte param_1)

{
  FUN_CODE_b79e();
  DAT_EXTMEM_08f6 = param_1 % 0x17;
  FUN_CODE_58cb();
  return;
}


// ===== FUN_CODE_58cb @ CODE:58cb =====

void FUN_CODE_58cb(byte param_1)

{
  bool bVar1;
  byte bVar2;
  undefined1 uVar3;
  byte bVar4;
  byte bVar5;
  undefined1 *puVar6;
  char *pcVar7;
  char *pcVar8;
  
  if (*(char *)CONCAT11('\t' - (((0xa9 < DAT_EXTMEM_08f6) << 7) >> 7),DAT_EXTMEM_08f6 + 0x56) !=
      '\0') {
    FUN_CODE_b79e();
    DAT_EXTMEM_08f6 = param_1 % 0x17;
    FUN_CODE_58cb();
    return;
  }
  *(undefined1 *)CONCAT11('\t' - (((0xa9 < DAT_EXTMEM_08f6) << 7) >> 7),DAT_EXTMEM_08f6 + 0x56) = 1;
  FUN_CODE_b79e();
  bVar5 = DAT_EXTMEM_08f6;
  bVar4 = (byte)((ushort)DAT_EXTMEM_08f6 * 2);
  puVar6 = (undefined1 *)
           CONCAT11((char)((ushort)DAT_EXTMEM_08f6 * 2 >> 8) +
                    ('\x03' - (((0x34 < bVar4) << 7) >> 7)),bVar4 - 0x35);
  *puVar6 = 0;
  puVar6[1] = param_1 % 6;
  bVar2 = DAT_EXTMEM_08f6;
  bVar4 = (byte)((ushort)bVar5 * 2);
  pcVar7 = (char *)CONCAT11((char)((ushort)bVar5 * 2 >> 8) + ('\x03' - (((0x34 < bVar4) << 7) >> 7))
                            ,bVar4 - 0x35);
  bVar5 = pcVar7[1];
  bVar1 = CARRY1(DAT_EXTMEM_08f6,DAT_EXTMEM_08f6);
  bVar4 = DAT_EXTMEM_08f6 * '\x02';
  pcVar8 = (char *)CONCAT11((bVar1 - (((6 < bVar4) << 7) >> 7)) + '\x03',bVar4 - 7);
  *pcVar8 = *pcVar7 - (((0xfd < bVar5) << 7) >> 7);
  pcVar8[1] = bVar5 + 2;
  bVar5 = (byte)((ushort)bVar2 * 2);
  pcVar7 = (char *)CONCAT11((char)((ushort)bVar2 * 2 >> 8) + ('\x03' - (((0x34 < bVar5) << 7) >> 7))
                            ,bVar5 - 0x35);
  bVar5 = pcVar7[1];
  pcVar8 = (char *)CONCAT11((bVar1 - (((0xd8 < bVar4) << 7) >> 7)) + '\x04',bVar4 + 0x27);
  *pcVar8 = *pcVar7 - (((0xfc < bVar5) << 7) >> 7);
  pcVar8[1] = bVar5 + 3;
  bVar5 = (byte)((ushort)bVar2 * 2);
  pcVar7 = (char *)CONCAT11((char)((ushort)bVar2 * 2 >> 8) + ('\x03' - (((0x34 < bVar5) << 7) >> 7))
                            ,bVar5 - 0x35);
  bVar5 = pcVar7[1];
  bVar4 = bVar2 * '\x02';
  pcVar8 = (char *)CONCAT11((CARRY1(bVar2,bVar2) - (((0xaa < bVar4) << 7) >> 7)) + '\x04',
                            bVar4 + 0x55);
  *pcVar8 = *pcVar7 - (((0xfb < bVar5) << 7) >> 7);
  pcVar8[1] = bVar5 + 4;
  bVar5 = (byte)((ushort)bVar2 * 2);
  pcVar7 = (char *)CONCAT11((char)((ushort)bVar2 * 2 >> 8) + ('\x03' - (((0x34 < bVar5) << 7) >> 7))
                            ,bVar5 - 0x35);
  bVar5 = pcVar7[1];
  pcVar8 = (char *)CONCAT11((CARRY1(bVar2,bVar2) - (((0x7c < bVar4) << 7) >> 7)) + '\x04',
                            bVar4 + 0x83);
  *pcVar8 = *pcVar7 - (((0xfa < bVar5) << 7) >> 7);
  pcVar8[1] = bVar5 + 5;
  bVar5 = (byte)((ushort)bVar2 * 2);
  pcVar7 = (char *)CONCAT11((char)((ushort)bVar2 * 2 >> 8) + ('\x03' - (((0x34 < bVar5) << 7) >> 7))
                            ,bVar5 - 0x35);
  bVar5 = pcVar7[1];
  bVar4 = bVar2 * '\x02';
  pcVar8 = (char *)CONCAT11((CARRY1(bVar2,bVar2) - (((0x4e < bVar4) << 7) >> 7)) + '\x04',
                            bVar4 + 0xb1);
  *pcVar8 = *pcVar7 - (((0xf9 < bVar5) << 7) >> 7);
  pcVar8[1] = bVar5 + 6;
  FUN_CODE_b79e();
  bVar5 = DAT_EXTMEM_08f6;
  *(byte *)CONCAT11('\x03' - (((0xce < DAT_EXTMEM_08f6) << 7) >> 7),DAT_EXTMEM_08f6 + 0x31) = bVar4;
  uVar3 = 0xff;
  FUN_CODE_9f11(*(undefined1 *)CONCAT11('\x03' - (((0xce < bVar5) << 7) >> 7),bVar5 + 0x31));
  *(undefined1 *)CONCAT11('\x01' - (((0xa3 < DAT_EXTMEM_08f6) << 7) >> 7),DAT_EXTMEM_08f6 + 0x5c) =
       uVar3;
  FUN_CODE_b79e();
  bVar5 = DAT_EXTMEM_08f6;
  *(undefined1 *)CONCAT11('\x03' - (((0xb7 < DAT_EXTMEM_08f6) << 7) >> 7),DAT_EXTMEM_08f6 + 0x48) =
       uVar3;
  uVar3 = 0xff;
  FUN_CODE_9f11(*(undefined1 *)CONCAT11('\x03' - (((0xb7 < bVar5) << 7) >> 7),bVar5 + 0x48));
  *(undefined1 *)CONCAT11('\x01' - (((0x8c < DAT_EXTMEM_08f6) << 7) >> 7),DAT_EXTMEM_08f6 + 0x73) =
       uVar3;
  FUN_CODE_b79e();
  bVar5 = DAT_EXTMEM_08f6;
  *(undefined1 *)CONCAT11('\x03' - (((0xa0 < DAT_EXTMEM_08f6) << 7) >> 7),DAT_EXTMEM_08f6 + 0x5f) =
       uVar3;
  uVar3 = 0xff;
  FUN_CODE_9f11(*(undefined1 *)CONCAT11('\x03' - (((0xa0 < bVar5) << 7) >> 7),bVar5 + 0x5f));
  *(undefined1 *)CONCAT11('\x01' - (((0x75 < DAT_EXTMEM_08f6) << 7) >> 7),DAT_EXTMEM_08f6 + 0x8a) =
       uVar3;
  FUN_CODE_b79e();
  bVar5 = DAT_EXTMEM_08f6;
  *(undefined1 *)CONCAT11('\x03' - (((0x89 < DAT_EXTMEM_08f6) << 7) >> 7),DAT_EXTMEM_08f6 + 0x76) =
       uVar3;
  uVar3 = 0xff;
  FUN_CODE_9f11(*(undefined1 *)CONCAT11('\x03' - (((0x89 < bVar5) << 7) >> 7),bVar5 + 0x76));
  *(undefined1 *)CONCAT11('\x01' - (((0x5e < DAT_EXTMEM_08f6) << 7) >> 7),DAT_EXTMEM_08f6 + 0xa1) =
       uVar3;
  FUN_CODE_b79e();
  bVar5 = DAT_EXTMEM_08f6;
  *(undefined1 *)CONCAT11('\x03' - (((0x72 < DAT_EXTMEM_08f6) << 7) >> 7),DAT_EXTMEM_08f6 + 0x8d) =
       uVar3;
  uVar3 = 0xff;
  FUN_CODE_9f11(*(undefined1 *)CONCAT11('\x03' - (((0x72 < bVar5) << 7) >> 7),bVar5 + 0x8d));
  *(undefined1 *)CONCAT11('\x01' - (((0x47 < DAT_EXTMEM_08f6) << 7) >> 7),DAT_EXTMEM_08f6 + 0xb8) =
       uVar3;
  FUN_CODE_b79e();
  bVar5 = DAT_EXTMEM_08f6;
  *(undefined1 *)CONCAT11('\x03' - (((0x5b < DAT_EXTMEM_08f6) << 7) >> 7),DAT_EXTMEM_08f6 + 0xa4) =
       uVar3;
  uVar3 = 0xff;
  FUN_CODE_9f11(*(undefined1 *)CONCAT11('\x03' - (((0x5b < bVar5) << 7) >> 7),bVar5 + 0xa4));
  *(undefined1 *)CONCAT11('\x01' - (((0x30 < DAT_EXTMEM_08f6) << 7) >> 7),DAT_EXTMEM_08f6 - 0x31) =
       uVar3;
  return;
}


// ===== FUN_CODE_58db @ CODE:58db =====

void FUN_CODE_58db(byte param_1)

{
  FUN_CODE_b79e();
  DAT_EXTMEM_08f6 = param_1 % 0x17;
  FUN_CODE_58cb();
  return;
}


// ===== FUN_CODE_5b32 @ CODE:5b32 =====

byte FUN_CODE_5b32(void)

{
  byte bVar1;
  byte bVar2;
  char cVar3;
  byte bVar4;
  char cVar5;
  undefined2 uStack_1;
  
  if ((_5_7 != '\0') && (DAT_EXTMEM_07c5 == 0x65)) {
    return 0;
  }
  if (((DAT_EXTMEM_07c5 & 0xf0) == 0xe0) && (DAT_EXTMEM_07c8 != '\x04')) {
    _0_2 = 1;
    bVar4 = FUN_CODE_bc9d();
    return bVar4;
  }
  if (_0_0 == '\x01') {
    if (_5_6 != '\x01') {
      DAT_EXTMEM_08ea = 0;
      while( true ) {
        if (5 < DAT_EXTMEM_08ea) {
          return DAT_EXTMEM_08ea - 6;
        }
        if (*(char *)CONCAT11('\a' - (((0xf7 < DAT_EXTMEM_08ea) << 7) >> 7),DAT_EXTMEM_08ea + 8) ==
            '\0') {
          *(byte *)CONCAT11('\a' - (((0xf7 < DAT_EXTMEM_08ea) << 7) >> 7),DAT_EXTMEM_08ea + 8) =
               DAT_EXTMEM_07c5;
          _0_2 = 1;
        }
        if (*(byte *)CONCAT11('\a' - (((0xf7 < DAT_EXTMEM_08ea) << 7) >> 7),DAT_EXTMEM_08ea + 8) ==
            DAT_EXTMEM_07c5) break;
        DAT_EXTMEM_08ea = DAT_EXTMEM_08ea + 1;
      }
      return 0;
    }
    for (DAT_EXTMEM_08ea = 0; DAT_EXTMEM_08ea < 6; DAT_EXTMEM_08ea = DAT_EXTMEM_08ea + 1) {
      bVar4 = *(byte *)CONCAT11('\a' - (((0xf7 < DAT_EXTMEM_08ea) << 7) >> 7),DAT_EXTMEM_08ea + 8);
      if (bVar4 == 0) {
        bVar4 = DAT_EXTMEM_07c5;
        *(byte *)CONCAT11('\a' - (((0xf7 < DAT_EXTMEM_08ea) << 7) >> 7),DAT_EXTMEM_08ea + 8) =
             DAT_EXTMEM_07c5;
        _0_2 = 1;
        _1_6 = 1;
        return bVar4;
      }
      if (DAT_EXTMEM_07c5 == bVar4) {
        return 0;
      }
    }
    DAT_EXTMEM_08ea = 1;
    cVar3 = BANK0_R6 + '\x01';
    while (cVar3 = cVar3 + -1, cVar3 != '\0') {
      DAT_EXTMEM_08ea = DAT_EXTMEM_08ea << 1;
    }
    if (DAT_EXTMEM_07c5 == 0xff) {
      return 0;
    }
    bVar4 = 0x65 - (((DAT_EXTMEM_07c5 != 0xff) << 7) >> 7);
    if (bVar4 <= DAT_EXTMEM_07c5) {
      return DAT_EXTMEM_07c5 - bVar4;
    }
    cVar5 = (DAT_EXTMEM_07c5 >> 3) + 0x46;
    cVar3 = '\a' - (((0xb9 < DAT_EXTMEM_07c5 >> 3) << 7) >> 7);
    uStack_1 = (byte *)CONCAT11(cVar3,cVar5);
    bVar4 = *(byte *)CONCAT11(cVar3,cVar5) | DAT_EXTMEM_08ea;
    *uStack_1 = bVar4;
  }
  else {
    if (_5_6 != '\x01') {
      for (DAT_EXTMEM_08ea = 0; DAT_EXTMEM_08ea < 6; DAT_EXTMEM_08ea = DAT_EXTMEM_08ea + 1) {
        if (*(byte *)CONCAT11('\a' - (((0xf7 < DAT_EXTMEM_08ea) << 7) >> 7),DAT_EXTMEM_08ea + 8) ==
            DAT_EXTMEM_07c5) {
          if (DAT_EXTMEM_08ea < 5) {
            for (DAT_EXTMEM_08eb = DAT_EXTMEM_08ea; DAT_EXTMEM_08eb < 5;
                DAT_EXTMEM_08eb = DAT_EXTMEM_08eb + 1) {
              *(undefined1 *)
               CONCAT11('\a' - (((0xf7 < DAT_EXTMEM_08eb) << 7) >> 7),DAT_EXTMEM_08eb + 8) =
                   *(undefined1 *)
                    CONCAT11('\a' - (((0xf6 < DAT_EXTMEM_08eb) << 7) >> 7),DAT_EXTMEM_08eb + 9);
            }
          }
          DAT_EXTMEM_070d = 0;
          _0_2 = 1;
        }
      }
      return DAT_EXTMEM_08ea - 6;
    }
    for (DAT_EXTMEM_08ea = 0; DAT_EXTMEM_08ea < 6; DAT_EXTMEM_08ea = DAT_EXTMEM_08ea + 1) {
      if (*(byte *)CONCAT11('\a' - (((0xf7 < DAT_EXTMEM_08ea) << 7) >> 7),DAT_EXTMEM_08ea + 8) ==
          DAT_EXTMEM_07c5) {
        if (DAT_EXTMEM_08ea < 5) {
          for (DAT_EXTMEM_08eb = DAT_EXTMEM_08ea; DAT_EXTMEM_08eb < 5;
              DAT_EXTMEM_08eb = DAT_EXTMEM_08eb + 1) {
            *(undefined1 *)
             CONCAT11('\a' - (((0xf7 < DAT_EXTMEM_08eb) << 7) >> 7),DAT_EXTMEM_08eb + 8) =
                 *(undefined1 *)
                  CONCAT11('\a' - (((0xf6 < DAT_EXTMEM_08eb) << 7) >> 7),DAT_EXTMEM_08eb + 9);
          }
        }
        DAT_EXTMEM_070d = 0;
        _0_2 = 1;
        _1_6 = 1;
      }
    }
    DAT_EXTMEM_08ea = 1;
    cVar3 = BANK0_R6 + '\x01';
    while (cVar3 = cVar3 + -1, cVar3 != '\0') {
      DAT_EXTMEM_08ea = DAT_EXTMEM_08ea << 1;
    }
    if (DAT_EXTMEM_07c5 == 0xff) {
      return 0;
    }
    bVar4 = 0x65 - (((DAT_EXTMEM_07c5 != 0xff) << 7) >> 7);
    if (bVar4 <= DAT_EXTMEM_07c5) {
      return DAT_EXTMEM_07c5 - bVar4;
    }
    bVar2 = DAT_EXTMEM_07c5 >> 3;
    bVar1 = *(byte *)CONCAT11('\a' - (((0xb9 < bVar2) << 7) >> 7),bVar2 + 0x46);
    bVar4 = 0;
    if ((bVar1 & DAT_EXTMEM_08ea) != 0) {
      bVar4 = bVar1 & ~DAT_EXTMEM_08ea;
      *(byte *)CONCAT11('\a' - (((0xb9 < bVar2) << 7) >> 7),bVar2 + 0x46) = bVar4;
    }
  }
  _1_7 = 1;
  _0_2 = 1;
  return bVar4;
}


// ===== FUN_CODE_5fcc @ CODE:5fcc =====

void FUN_CODE_5fcc(void)

{
  byte bVar1;
  
  bVar1 = DAT_SFR_9a;
  if ((bVar1 >> 2 & 1) != 0) {
    return;
  }
  if (_5_6 == '\x01') {
    if (_0_2 != '\x01') goto LAB_CODE_61cd;
    _0_2 = '\0';
    EA = 0;
    if (_1_6 == '\x01') {
      DAT_EXTMEM_0936 = '\x11';
      DAT_EXTMEM_0937 = 0x20;
      if (DAT_EXTMEM_0706 == -0x54) {
        DAT_EXTMEM_0706 = '\0';
      }
      if (DAT_EXTMEM_0708 == -0x54) {
        DAT_EXTMEM_0708 = '\0';
      }
      if (DAT_EXTMEM_0709 == -0x54) {
        DAT_EXTMEM_0709 = '\0';
      }
      if (DAT_EXTMEM_070a == -0x54) {
        DAT_EXTMEM_070a = '\0';
      }
      if (DAT_EXTMEM_070b == -0x54) {
        DAT_EXTMEM_070b = '\0';
      }
      if (DAT_EXTMEM_070c == -0x54) {
        DAT_EXTMEM_070c = '\0';
      }
      if (DAT_EXTMEM_070d == -0x54) {
        DAT_EXTMEM_070d = '\0';
      }
      DAT_EXTMEM_1120 = DAT_EXTMEM_0706;
      DAT_EXTMEM_1121 = 0;
      DAT_EXTMEM_1122 = DAT_EXTMEM_0708;
      DAT_EXTMEM_1123 = DAT_EXTMEM_0709;
      cEXTMEM1124 = DAT_EXTMEM_070a;
      cEXTMEM1125 = DAT_EXTMEM_070b;
      cEXTMEM1126 = DAT_EXTMEM_070c;
      cEXTMEM1127 = DAT_EXTMEM_070d;
      DAT_SFR_9c = 8;
    }
    if (_1_7 != '\0') {
      DAT_EXTMEM_0936 = '\x11';
      DAT_EXTMEM_0937 = 0x80;
      DAT_EXTMEM_1180 = 1;
      bVar1 = 1;
      do {
        *(undefined1 *)
         CONCAT11(DAT_EXTMEM_0936 - ((CARRY1(DAT_EXTMEM_0937,bVar1) << 7) >> 7),
                  DAT_EXTMEM_0937 + bVar1) =
             *(undefined1 *)CONCAT11('\a' - (((0xba < bVar1) << 7) >> 7),bVar1 + 0x45);
        bVar1 = bVar1 + 1;
      } while (bVar1 != 0xf);
      DAT_SFR_9d = 0xf;
    }
    if ((_1_6 == '\0') || (_1_7 == '\0')) {
      if (_1_6 == '\0') {
        if (_1_7 != '\0') goto LAB_CODE_6105;
      }
      else {
        _1_6 = '\0';
        bVar1 = SBUF;
        SBUF = bVar1 | 4;
      }
    }
    else {
      _1_6 = '\0';
      bVar1 = SBUF;
      SBUF = bVar1 | 4;
LAB_CODE_6105:
      _1_7 = '\0';
      bVar1 = DAT_SFR_9a;
      DAT_SFR_9a = bVar1 | 4;
    }
    EA = 1;
    goto LAB_CODE_61cd;
  }
  if (_2_4 != '\x01') goto LAB_CODE_61cd;
  _2_4 = '\0';
  EA = 0;
  if (_1_6 != '\0') {
    DAT_EXTMEM_0936 = '\x11';
    DAT_EXTMEM_0937 = 0x20;
    DAT_EXTMEM_1120 = '\0';
    DAT_EXTMEM_1121 = 0;
    DAT_EXTMEM_1122 = '\0';
    DAT_EXTMEM_1123 = '\0';
    cEXTMEM1124 = '\0';
    cEXTMEM1125 = '\0';
    cEXTMEM1126 = '\0';
    cEXTMEM1127 = '\0';
    DAT_SFR_9c = 8;
  }
  if (_1_7 != '\0') {
    DAT_EXTMEM_0936 = '\x11';
    DAT_EXTMEM_0937 = 0x80;
    DAT_EXTMEM_1180 = 1;
    bVar1 = 1;
    do {
      *(undefined1 *)
       CONCAT11(DAT_EXTMEM_0936 - ((CARRY1(DAT_EXTMEM_0937,bVar1) << 7) >> 7),
                DAT_EXTMEM_0937 + bVar1) = 0;
      bVar1 = bVar1 + 1;
    } while (bVar1 != 0x10);
    DAT_SFR_9d = 0x10;
  }
  if ((_1_6 == '\0') || (_1_7 == '\0')) {
    if (_1_6 == '\0') {
      if (_1_7 != '\0') goto LAB_CODE_61c8;
    }
    else {
      _1_6 = '\0';
      bVar1 = SBUF;
      SBUF = bVar1 | 4;
    }
  }
  else {
    _1_6 = '\0';
    bVar1 = SBUF;
    SBUF = bVar1 | 4;
LAB_CODE_61c8:
    _1_7 = '\0';
    bVar1 = DAT_SFR_9a;
    DAT_SFR_9a = bVar1 | 4;
  }
  EA = 1;
LAB_CODE_61cd:
  if (_0_3 != '\0') {
    _0_3 = '\0';
    EA = 0;
    DAT_EXTMEM_0936 = '\x11';
    DAT_EXTMEM_0937 = 0x80;
    DAT_EXTMEM_1180 = 2;
    DAT_EXTMEM_1181 = DAT_EXTMEM_07cb;
    DAT_EXTMEM_1182 = DAT_EXTMEM_07cc;
    DAT_SFR_9d = 3;
    bVar1 = DAT_SFR_9a;
    DAT_SFR_9a = bVar1 | 4;
    EA = 1;
  }
  return;
}


// ===== FUN_CODE_6214 @ CODE:6214 =====

undefined1 FUN_CODE_6214(void)

{
  DAT_EXTMEM_ff80 = 0x90;
  DAT_EXTMEM_ff81 = 0x10;
  DAT_EXTMEM_ff82 = 0x10;
  DAT_EXTMEM_ff83 = 0x10;
  DAT_EXTMEM_ff84 = 0x10;
  DAT_EXTMEM_ff85 = 0x10;
  DAT_EXTMEM_ff9c = 0;
  DAT_EXTMEM_ff98 = 0xff;
  DAT_EXTMEM_ffb8 = 0;
  DAT_EXTMEM_ffa0 = 0;
  DAT_EXTMEM_ffe8 = 0;
  DAT_EXTMEM_ffd0 = 0xff;
  DAT_EXTMEM_ffb9 = 0;
  DAT_EXTMEM_ffa1 = 0;
  DAT_EXTMEM_ffe9 = 0;
  DAT_EXTMEM_ffd1 = 0xff;
  DAT_EXTMEM_ffba = 0;
  DAT_EXTMEM_ffa2 = 0;
  DAT_EXTMEM_ffea = 0;
  DAT_EXTMEM_ffd2 = 0xff;
  DAT_EXTMEM_ffbb = 0;
  DAT_EXTMEM_ffa3 = 0;
  DAT_EXTMEM_ffeb = 0;
  DAT_EXTMEM_ffd3 = 0xff;
  DAT_EXTMEM_ffbc = 0;
  DAT_EXTMEM_ffa4 = 0;
  DAT_EXTMEM_ffec = 0;
  DAT_EXTMEM_ffd4 = 0xff;
  DAT_EXTMEM_ffbd = 0;
  DAT_EXTMEM_ffa5 = 0;
  DAT_EXTMEM_ffed = 0;
  DAT_EXTMEM_ffd5 = 0xff;
  DAT_EXTMEM_ff86 = 0x90;
  DAT_EXTMEM_ff87 = 0x10;
  DAT_EXTMEM_ff88 = 0x10;
  DAT_EXTMEM_ff89 = 0x10;
  DAT_EXTMEM_ff8a = 0x10;
  DAT_EXTMEM_ff8b = 0x10;
  DAT_EXTMEM_ff9d = 0;
  DAT_EXTMEM_ff99 = 0xff;
  DAT_EXTMEM_ffbe = 0;
  DAT_EXTMEM_ffa6 = 0;
  DAT_EXTMEM_ffee = 0;
  DAT_EXTMEM_ffd6 = 0xff;
  DAT_EXTMEM_ffbf = 0;
  DAT_EXTMEM_ffa7 = 0;
  DAT_EXTMEM_ffef = 0;
  DAT_EXTMEM_ffd7 = 0xff;
  DAT_EXTMEM_ffc0 = 0;
  DAT_EXTMEM_ffa8 = 0;
  DAT_EXTMEM_fff0 = 0;
  DAT_EXTMEM_ffd8 = 0xff;
  DAT_EXTMEM_ffc1 = 0;
  DAT_EXTMEM_ffa9 = 0;
  DAT_EXTMEM_fff1 = 0;
  DAT_EXTMEM_ffd9 = 0xff;
  DAT_EXTMEM_ffc2 = 0;
  DAT_EXTMEM_ffaa = 0;
  DAT_EXTMEM_fff2 = 0;
  DAT_EXTMEM_ffda = 0xff;
  DAT_EXTMEM_ffc3 = 0;
  DAT_EXTMEM_ffab = 0;
  DAT_EXTMEM_fff3 = 0;
  DAT_EXTMEM_ffdb = 0xff;
  DAT_EXTMEM_ff8c = 0x90;
  DAT_EXTMEM_ff8d = 0x10;
  DAT_EXTMEM_ff8e = 0x10;
  DAT_EXTMEM_ff8f = 0x10;
  DAT_EXTMEM_ff90 = 0x10;
  DAT_EXTMEM_ff91 = 0x10;
  DAT_EXTMEM_ff9e = 0;
  DAT_EXTMEM_ff9a = 0xff;
  DAT_EXTMEM_ffc4 = 0;
  DAT_EXTMEM_ffac = 0;
  DAT_EXTMEM_fff4 = 0;
  DAT_EXTMEM_ffdc = 0xff;
  DAT_EXTMEM_ffc5 = 0;
  DAT_EXTMEM_ffad = 0;
  DAT_EXTMEM_fff5 = 0;
  DAT_EXTMEM_ffdd = 0xff;
  DAT_EXTMEM_ffc6 = 0;
  DAT_EXTMEM_ffae = 0;
  DAT_EXTMEM_fff6 = 0;
  DAT_EXTMEM_ffde = 0xff;
  DAT_EXTMEM_ffc7 = 0;
  DAT_EXTMEM_ffaf = 0;
  DAT_EXTMEM_fff7 = 0;
  DAT_EXTMEM_ffdf = 0xff;
  DAT_EXTMEM_ffc8 = 0;
  DAT_EXTMEM_ffb0 = 0;
  DAT_EXTMEM_fff8 = 0;
  DAT_EXTMEM_ffe0 = 0xff;
  DAT_EXTMEM_ffc9 = 0;
  DAT_EXTMEM_ffb1 = 0;
  DAT_EXTMEM_fff9 = 0;
  DAT_EXTMEM_ffe1 = 0xff;
  DAT_EXTMEM_ff92 = 0x90;
  DAT_EXTMEM_ff93 = 0x10;
  DAT_EXTMEM_ff94 = 0x10;
  DAT_EXTMEM_ff95 = 0x10;
  DAT_EXTMEM_ff9f = 0;
  DAT_EXTMEM_ff9b = 0xff;
  DAT_EXTMEM_ffca = 0;
  DAT_EXTMEM_ffb2 = 0;
  DAT_EXTMEM_fffa = 0;
  DAT_EXTMEM_ffe2 = 0xff;
  DAT_EXTMEM_ffcb = 0;
  DAT_EXTMEM_ffb3 = 0;
  DAT_EXTMEM_fffb = 0;
  DAT_EXTMEM_ffe3 = 0xff;
  DAT_EXTMEM_ffcc = 0;
  DAT_EXTMEM_ffb4 = 0;
  uEXTMEMfffc = 0;
  DAT_EXTMEM_ffe4 = 0xff;
  DAT_EXTMEM_ffcd = 0;
  DAT_EXTMEM_ffb5 = 0;
  uEXTMEMfffd = 0;
  DAT_EXTMEM_ffe5 = 0xff;
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
  return 0;
}


// ===== FUN_CODE_667f @ CODE:667f =====

char FUN_CODE_667f(void)

{
  bool bVar1;
  undefined1 uVar2;
  char cVar3;
  byte bVar4;
  byte bVar5;
  char *pcVar6;
  undefined1 *puVar7;
  byte *pbVar8;
  
  DAT_INTMEM_31 = '\0';
  do {
    for (DAT_INTMEM_2f = 0; (DAT_INTMEM_2f < 0x17) << 7 < '\0'; DAT_INTMEM_2f = DAT_INTMEM_2f + 1) {
      DAT_INTMEM_30 = DAT_INTMEM_31 * '\x17' + DAT_INTMEM_2f;
      bVar4 = (byte)((ushort)DAT_INTMEM_30 * 2);
      pcVar6 = (char *)CONCAT11((char)((ushort)DAT_INTMEM_30 * 2 >> 8) +
                                ('\x03' - (((0x34 < bVar4) << 7) >> 7)),bVar4 - 0x35);
      if (pcVar6[1] == '\0' && *pcVar6 == '\0') {
        if (*(char *)CONCAT11(-(((0x75 < DAT_INTMEM_30) << 7) >> 7),DAT_INTMEM_30 + 0x8a) == '\0') {
          *(undefined1 *)CONCAT11('\x01' - (((9 < DAT_INTMEM_30) << 7) >> 7),DAT_INTMEM_30 - 10) =
               *(undefined1 *)
                ((ushort)*(byte *)CONCAT11('\x02' - (((99 < DAT_INTMEM_30) << 7) >> 7),
                                           DAT_INTMEM_30 + 0x9c) + 0x56);
          pcVar6 = (char *)CONCAT11('\x02' - (((99 < DAT_INTMEM_30) << 7) >> 7),DAT_INTMEM_30 + 0x9c
                                   );
          *pcVar6 = *pcVar6 + '\x18';
          if (99 < *(byte *)CONCAT11('\x02' - (((99 < DAT_INTMEM_30) << 7) >> 7),
                                     DAT_INTMEM_30 + 0x9c)) {
            *(undefined1 *)CONCAT11(-(((0x75 < DAT_INTMEM_30) << 7) >> 7),DAT_INTMEM_30 + 0x8a) = 1;
          }
        }
        else {
          pcVar6 = (char *)CONCAT11('\x02' - (((99 < DAT_INTMEM_30) << 7) >> 7),DAT_INTMEM_30 + 0x9c
                                   );
          *pcVar6 = *pcVar6 + -4;
          *(undefined1 *)CONCAT11('\x01' - (((9 < DAT_INTMEM_30) << 7) >> 7),DAT_INTMEM_30 - 10) =
               *(undefined1 *)
                ((ushort)*(byte *)CONCAT11('\x02' - (((99 < DAT_INTMEM_30) << 7) >> 7),
                                           DAT_INTMEM_30 + 0x9c) + 0x56);
          if ((*(byte *)CONCAT11('\x02' - (((99 < DAT_INTMEM_30) << 7) >> 7),DAT_INTMEM_30 + 0x9c) <
              10) << 7 < '\0') {
            *(undefined1 *)
             CONCAT11('\x02' - (((99 < DAT_INTMEM_30) << 7) >> 7),DAT_INTMEM_30 + 0x9c) = 0;
            *(undefined1 *)CONCAT11('\x01' - (((9 < DAT_INTMEM_30) << 7) >> 7),DAT_INTMEM_30 - 10) =
                 0;
            *(undefined1 *)CONCAT11(-(((0x75 < DAT_INTMEM_30) << 7) >> 7),DAT_INTMEM_30 + 0x8a) = 0;
            bVar4 = (byte)((ushort)DAT_INTMEM_30 * 2);
            puVar7 = (undefined1 *)
                     CONCAT11((char)((ushort)DAT_INTMEM_30 * 2 >> 8) +
                              ('\x03' - (((0x34 < bVar4) << 7) >> 7)),bVar4 - 0x35);
            *puVar7 = 0;
            puVar7[1] = 0xff;
            if (DAT_EXTMEM_0988 == '\0') {
              if (DAT_INTMEM_31 == '\x01') {
                bVar1 = DAT_INTMEM_2f < 10;
              }
              else {
                if (((DAT_INTMEM_31 != '\x02') && (DAT_INTMEM_31 != '\x03')) &&
                   (DAT_INTMEM_31 != '\x04')) goto LAB_CODE_67da;
                bVar1 = DAT_INTMEM_2f < 9;
              }
              if ((!bVar1) && (DAT_INTMEM_2f < 0xeU - ((bVar1 << 7) >> 7))) {
                bVar4 = (byte)((ushort)DAT_INTMEM_30 * 2);
                puVar7 = (undefined1 *)
                         CONCAT11((char)((ushort)DAT_INTMEM_30 * 2 >> 8) +
                                  ('\x03' - (((0x34 < bVar4) << 7) >> 7)),bVar4 - 0x35);
                *puVar7 = 0;
                puVar7[1] = 1;
              }
            }
          }
        }
      }
LAB_CODE_67da:
    }
    DAT_INTMEM_31 = DAT_INTMEM_31 + '\x01';
    if (DAT_INTMEM_31 == '\x06') {
      bVar4 = DAT_INTMEM_5a + 1;
      cVar3 = DAT_INTMEM_5a + -4;
      DAT_INTMEM_31 = 6;
      DAT_INTMEM_5a = bVar4;
      if (4 < bVar4) {
        DAT_INTMEM_5a = 0;
        for (DAT_INTMEM_30 = 0; cVar3 = DAT_INTMEM_30 + 0x76, DAT_INTMEM_30 < 0x8a;
            DAT_INTMEM_30 = DAT_INTMEM_30 + 1) {
          bVar4 = (byte)((ushort)DAT_INTMEM_30 * 2);
          pbVar8 = (byte *)CONCAT11((char)((ushort)DAT_INTMEM_30 * 2 >> 8) +
                                    ('\x03' - (((0x34 < bVar4) << 7) >> 7)),bVar4 - 0x35);
          bVar4 = *pbVar8;
          bVar5 = pbVar8[1];
          if ((((byte)-(((bVar5 == 0) << 7) >> 7) <= bVar4) && (bVar5 != 0xff || bVar4 != 0)) &&
             (bVar5 = (byte)((ushort)DAT_INTMEM_30 * 2), bVar4 = DAT_INTMEM_30,
             FUN_CODE_80f2(CONCAT11((char)((ushort)DAT_INTMEM_30 * 2 >> 8) +
                                    ('\x03' - (((0x34 < bVar5) << 7) >> 7)),bVar5 - 0x35),0xff),
             bVar5 = (byte)((ushort)bVar4 * 2),
             pcVar6 = (char *)CONCAT11((char)((ushort)bVar4 * 2 >> 8) +
                                       ('\x03' - (((0x34 < bVar5) << 7) >> 7)),bVar5 - 0x35),
             pcVar6[1] == '\0' && *pcVar6 == '\0')) {
            FUN_CODE_b79e();
            *(byte *)CONCAT11('\x03' - (((0xce < DAT_INTMEM_30) << 7) >> 7),DAT_INTMEM_30 + 0x31) =
                 bVar4;
            uVar2 = 0xff;
            FUN_CODE_9f11(*(undefined1 *)
                           CONCAT11('\x03' - (((0xce < DAT_INTMEM_30) << 7) >> 7),
                                    DAT_INTMEM_30 + 0x31));
            *(undefined1 *)
             CONCAT11('\x01' - (((0xa3 < DAT_INTMEM_30) << 7) >> 7),DAT_INTMEM_30 + 0x5c) = uVar2;
          }
        }
      }
      return cVar3;
    }
  } while( true );
}


// ===== FUN_CODE_688e @ CODE:688e =====

void FUN_CODE_688e(byte param_1)

{
  byte bVar1;
  
  DAT_EXTMEM_08f5 = param_1;
  FUN_CODE_bbdd();
  FIFLG = 0xff;
  bVar1 = TCON;
  TCON = bVar1 | 0x87;
  bVar1 = P3;
  P3 = bVar1 | 0x7f;
  F8_4 = 1;
  bVar1 = P0;
  P0 = bVar1 | 0xe0;
  DAT_EXTMEM_ffa0 =
       *(undefined1 *)CONCAT11('\x04' - (((9 < DAT_EXTMEM_08f5) << 7) >> 7),DAT_EXTMEM_08f5 - 10);
  DAT_EXTMEM_ffa1 =
       *(undefined1 *)
        CONCAT11('\x05' - (((0x74 < DAT_EXTMEM_08f5) << 7) >> 7),DAT_EXTMEM_08f5 + 0x8b);
  DAT_EXTMEM_ffa2 =
       *(undefined1 *)
        CONCAT11('\x06' - (((0xdf < DAT_EXTMEM_08f5) << 7) >> 7),DAT_EXTMEM_08f5 + 0x20);
  DAT_EXTMEM_ffa3 =
       *(undefined1 *)
        CONCAT11('\x05' - (((0xf2 < DAT_EXTMEM_08f5) << 7) >> 7),DAT_EXTMEM_08f5 + 0xd);
  DAT_EXTMEM_ffa4 =
       *(undefined1 *)
        CONCAT11('\x05' - (((0x5d < DAT_EXTMEM_08f5) << 7) >> 7),DAT_EXTMEM_08f5 + 0xa2);
  DAT_EXTMEM_ffa5 =
       *(undefined1 *)
        CONCAT11('\x06' - (((200 < DAT_EXTMEM_08f5) << 7) >> 7),DAT_EXTMEM_08f5 + 0x37);
  DAT_EXTMEM_ffa6 =
       *(undefined1 *)
        CONCAT11('\x05' - (((0xdb < DAT_EXTMEM_08f5) << 7) >> 7),DAT_EXTMEM_08f5 + 0x24);
  DAT_EXTMEM_ffa7 =
       *(undefined1 *)
        CONCAT11('\x05' - (((0x46 < DAT_EXTMEM_08f5) << 7) >> 7),DAT_EXTMEM_08f5 + 0xb9);
  DAT_EXTMEM_ffa8 =
       *(undefined1 *)
        CONCAT11('\x06' - (((0xb1 < DAT_EXTMEM_08f5) << 7) >> 7),DAT_EXTMEM_08f5 + 0x4e);
  DAT_EXTMEM_ffa9 =
       *(undefined1 *)
        CONCAT11('\x05' - (((0xc4 < DAT_EXTMEM_08f5) << 7) >> 7),DAT_EXTMEM_08f5 + 0x3b);
  DAT_EXTMEM_ffaa =
       *(undefined1 *)
        CONCAT11('\x05' - (((0x2f < DAT_EXTMEM_08f5) << 7) >> 7),DAT_EXTMEM_08f5 - 0x30);
  DAT_EXTMEM_ffab =
       *(undefined1 *)
        CONCAT11('\x06' - (((0x9a < DAT_EXTMEM_08f5) << 7) >> 7),DAT_EXTMEM_08f5 + 0x65);
  DAT_EXTMEM_ffac =
       *(undefined1 *)
        CONCAT11('\x05' - (((0xad < DAT_EXTMEM_08f5) << 7) >> 7),DAT_EXTMEM_08f5 + 0x52);
  DAT_EXTMEM_ffad =
       *(undefined1 *)
        CONCAT11('\x05' - (((0x18 < DAT_EXTMEM_08f5) << 7) >> 7),DAT_EXTMEM_08f5 - 0x19);
  DAT_EXTMEM_ffae =
       *(undefined1 *)
        CONCAT11('\x06' - (((0x83 < DAT_EXTMEM_08f5) << 7) >> 7),DAT_EXTMEM_08f5 + 0x7c);
  DAT_EXTMEM_ffaf =
       *(undefined1 *)
        CONCAT11('\x05' - (((0x96 < DAT_EXTMEM_08f5) << 7) >> 7),DAT_EXTMEM_08f5 + 0x69);
  DAT_EXTMEM_ffb0 =
       *(undefined1 *)CONCAT11('\x05' - (((1 < DAT_EXTMEM_08f5) << 7) >> 7),DAT_EXTMEM_08f5 - 2);
  DAT_EXTMEM_ffb1 =
       *(undefined1 *)
        CONCAT11('\x06' - (((0x6c < DAT_EXTMEM_08f5) << 7) >> 7),DAT_EXTMEM_08f5 + 0x93);
  nop();
  nop();
  nop();
  FUN_CODE_bdf7();
  FUN_CODE_bd5a(0,1);
  if (0x16 < DAT_EXTMEM_08f5) {
    return;
  }
                    /* WARNING: Could not recover jumptable at 0x69f5. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (*(code *)((ushort)(DAT_EXTMEM_08f5 * '\x03') + 0x69f6))();
  return;
}


// ===== FUN_CODE_6a8e @ CODE:6a8e =====

char FUN_CODE_6a8e(void)

{
  undefined1 uVar1;
  char cVar2;
  byte bVar3;
  byte bVar4;
  char *pcVar5;
  undefined1 *puVar6;
  byte *pbVar7;
  
  DAT_INTMEM_31 = '\0';
  do {
    for (DAT_INTMEM_2f = 0; (DAT_INTMEM_2f < 0x17) << 7 < '\0'; DAT_INTMEM_2f = DAT_INTMEM_2f + 1) {
      DAT_INTMEM_30 = DAT_INTMEM_31 * '\x17' + DAT_INTMEM_2f;
      bVar3 = (byte)((ushort)DAT_INTMEM_30 * 2);
      pcVar5 = (char *)CONCAT11((char)((ushort)DAT_INTMEM_30 * 2 >> 8) +
                                ('\x03' - (((0x34 < bVar3) << 7) >> 7)),bVar3 - 0x35);
      if (pcVar5[1] == '\0' && *pcVar5 == '\0') {
        if (*(char *)CONCAT11(-(((0x75 < DAT_INTMEM_30) << 7) >> 7),DAT_INTMEM_30 + 0x8a) == '\0') {
          *(undefined1 *)CONCAT11('\x01' - (((9 < DAT_INTMEM_30) << 7) >> 7),DAT_INTMEM_30 - 10) =
               *(undefined1 *)
                ((ushort)*(byte *)CONCAT11('\x02' - (((99 < DAT_INTMEM_30) << 7) >> 7),
                                           DAT_INTMEM_30 + 0x9c) + 0x56);
          pcVar5 = (char *)CONCAT11('\x02' - (((99 < DAT_INTMEM_30) << 7) >> 7),DAT_INTMEM_30 + 0x9c
                                   );
          *pcVar5 = *pcVar5 + '\n';
          if (99 < *(byte *)CONCAT11('\x02' - (((99 < DAT_INTMEM_30) << 7) >> 7),
                                     DAT_INTMEM_30 + 0x9c)) {
            *(undefined1 *)CONCAT11(-(((0x75 < DAT_INTMEM_30) << 7) >> 7),DAT_INTMEM_30 + 0x8a) = 1;
          }
        }
        else {
          pcVar5 = (char *)CONCAT11('\x02' - (((99 < DAT_INTMEM_30) << 7) >> 7),DAT_INTMEM_30 + 0x9c
                                   );
          *pcVar5 = *pcVar5 + -4;
          *(undefined1 *)CONCAT11('\x01' - (((9 < DAT_INTMEM_30) << 7) >> 7),DAT_INTMEM_30 - 10) =
               *(undefined1 *)
                ((ushort)*(byte *)CONCAT11('\x02' - (((99 < DAT_INTMEM_30) << 7) >> 7),
                                           DAT_INTMEM_30 + 0x9c) + 0x56);
          if (*(byte *)CONCAT11('\x02' - (((99 < DAT_INTMEM_30) << 7) >> 7),DAT_INTMEM_30 + 0x9c) <
              10) {
            *(undefined1 *)
             CONCAT11('\x02' - (((99 < DAT_INTMEM_30) << 7) >> 7),DAT_INTMEM_30 + 0x9c) = 0;
            *(undefined1 *)CONCAT11('\x01' - (((9 < DAT_INTMEM_30) << 7) >> 7),DAT_INTMEM_30 - 10) =
                 0;
            *(undefined1 *)CONCAT11(-(((0x75 < DAT_INTMEM_30) << 7) >> 7),DAT_INTMEM_30 + 0x8a) = 0;
            if ((DAT_INTMEM_6b < 2) << 7 < '\0') {
              bVar3 = (byte)((ushort)DAT_INTMEM_30 * 2);
              puVar6 = (undefined1 *)
                       CONCAT11((char)((ushort)DAT_INTMEM_30 * 2 >> 8) +
                                ('\x03' - (((0x34 < bVar3) << 7) >> 7)),bVar3 - 0x35);
              *puVar6 = 0;
              puVar6[1] = 1;
            }
            else {
              bVar3 = (byte)((ushort)DAT_INTMEM_30 * 2);
              puVar6 = (undefined1 *)
                       CONCAT11((char)((ushort)DAT_INTMEM_30 * 2 >> 8) +
                                ('\x03' - (((0x34 < bVar3) << 7) >> 7)),bVar3 - 0x35);
              *puVar6 = 0;
              puVar6[1] = 0xff;
            }
            bVar3 = DAT_EXTMEM_043d;
            if (DAT_EXTMEM_043d == 0) {
              bVar3 = DAT_EXTMEM_043e ^ 1;
            }
            if (bVar3 == 0) {
              DAT_INTMEM_6b = DAT_INTMEM_6b + 1;
            }
          }
        }
      }
    }
    DAT_INTMEM_31 = DAT_INTMEM_31 + '\x01';
  } while (DAT_INTMEM_31 != '\x06');
  bVar3 = DAT_INTMEM_5a + 1;
  cVar2 = DAT_INTMEM_5a + -4;
  DAT_INTMEM_31 = 6;
  DAT_INTMEM_5a = bVar3;
  if (4 < bVar3) {
    DAT_INTMEM_5a = 0;
    for (DAT_INTMEM_30 = 0; cVar2 = DAT_INTMEM_30 + 0x76, DAT_INTMEM_30 < 0x8a;
        DAT_INTMEM_30 = DAT_INTMEM_30 + 1) {
      bVar3 = (byte)((ushort)DAT_INTMEM_30 * 2);
      pbVar7 = (byte *)CONCAT11((char)((ushort)DAT_INTMEM_30 * 2 >> 8) +
                                ('\x03' - (((0x34 < bVar3) << 7) >> 7)),bVar3 - 0x35);
      bVar3 = *pbVar7;
      bVar4 = pbVar7[1];
      if ((((byte)-(((bVar4 == 0) << 7) >> 7) <= bVar3) && (bVar4 != 0xff || bVar3 != 0)) &&
         (bVar4 = (byte)((ushort)DAT_INTMEM_30 * 2), bVar3 = DAT_INTMEM_30,
         FUN_CODE_80f2(CONCAT11((char)((ushort)DAT_INTMEM_30 * 2 >> 8) +
                                ('\x03' - (((0x34 < bVar4) << 7) >> 7)),bVar4 - 0x35),0xff),
         bVar4 = (byte)((ushort)bVar3 * 2),
         pcVar5 = (char *)CONCAT11((char)((ushort)bVar3 * 2 >> 8) +
                                   ('\x03' - (((0x34 < bVar4) << 7) >> 7)),bVar4 - 0x35),
         pcVar5[1] == '\0' && *pcVar5 == '\0')) {
        FUN_CODE_b79e();
        *(byte *)CONCAT11('\x03' - (((0xce < DAT_INTMEM_30) << 7) >> 7),DAT_INTMEM_30 + 0x31) =
             bVar3;
        uVar1 = 0xff;
        FUN_CODE_9f11(*(undefined1 *)
                       CONCAT11('\x03' - (((0xce < DAT_INTMEM_30) << 7) >> 7),DAT_INTMEM_30 + 0x31))
        ;
        *(undefined1 *)CONCAT11('\x01' - (((0xa3 < DAT_INTMEM_30) << 7) >> 7),DAT_INTMEM_30 + 0x5c)
             = uVar1;
      }
    }
  }
  return cVar2;
}


// ===== FUN_CODE_6e45 @ CODE:6e45 =====

char FUN_CODE_6e45(void)

{
  undefined1 uVar1;
  char cVar2;
  byte bVar3;
  byte bVar4;
  char *pcVar5;
  undefined1 *puVar6;
  byte *pbVar7;
  
  for (DAT_EXTMEM_08fa = 0; bVar3 = DAT_EXTMEM_08fa, (DAT_EXTMEM_08fa < 0x8a) << 7 < '\0';
      DAT_EXTMEM_08fa = DAT_EXTMEM_08fa + 1) {
    bVar4 = (byte)((ushort)DAT_EXTMEM_08fa * 2);
    pcVar5 = (char *)CONCAT11((char)((ushort)DAT_EXTMEM_08fa * 2 >> 8) +
                              ('\x03' - (((0x34 < bVar4) << 7) >> 7)),bVar4 - 0x35);
    if (pcVar5[1] == '\0' && *pcVar5 == '\0') {
      if (*(char *)CONCAT11(-(((0x75 < DAT_EXTMEM_08fa) << 7) >> 7),DAT_EXTMEM_08fa + 0x8a) == '\0')
      {
        *(undefined1 *)CONCAT11('\x01' - (((9 < DAT_EXTMEM_08fa) << 7) >> 7),DAT_EXTMEM_08fa - 10) =
             *(undefined1 *)
              ((ushort)*(byte *)CONCAT11('\x02' - (((99 < DAT_EXTMEM_08fa) << 7) >> 7),
                                         DAT_EXTMEM_08fa + 0x9c) + 0x56);
        bVar3 = DAT_EXTMEM_08fa;
        pcVar5 = (char *)CONCAT11('\x02' - (((99 < DAT_EXTMEM_08fa) << 7) >> 7),
                                  DAT_EXTMEM_08fa + 0x9c);
        *pcVar5 = *pcVar5 + '\x14';
        if (99 < *(byte *)CONCAT11('\x02' - (((99 < bVar3) << 7) >> 7),bVar3 + 0x9c)) {
          *(undefined1 *)CONCAT11(-(((0x75 < DAT_EXTMEM_08fa) << 7) >> 7),DAT_EXTMEM_08fa + 0x8a) =
               1;
        }
      }
      else {
        pcVar5 = (char *)CONCAT11('\x02' - (((99 < DAT_EXTMEM_08fa) << 7) >> 7),
                                  DAT_EXTMEM_08fa + 0x9c);
        *pcVar5 = *pcVar5 + -5;
        bVar4 = DAT_EXTMEM_08fa;
        *(undefined1 *)CONCAT11('\x01' - (((9 < DAT_EXTMEM_08fa) << 7) >> 7),DAT_EXTMEM_08fa - 10) =
             *(undefined1 *)
              ((ushort)*(byte *)CONCAT11('\x02' - (((99 < bVar3) << 7) >> 7),bVar3 + 0x9c) + 0x56);
        bVar3 = DAT_EXTMEM_08fa;
        if (*(byte *)CONCAT11('\x02' - (((99 < bVar4) << 7) >> 7),bVar4 + 0x9c) < 10) {
          *(undefined1 *)
           CONCAT11('\x02' - (((99 < DAT_EXTMEM_08fa) << 7) >> 7),DAT_EXTMEM_08fa + 0x9c) = 0;
          *(undefined1 *)CONCAT11('\x01' - (((9 < bVar3) << 7) >> 7),bVar3 - 10) = 0;
          *(undefined1 *)CONCAT11(-(((0x75 < bVar3) << 7) >> 7),bVar3 + 0x8a) = 0;
          bVar4 = (byte)((ushort)bVar3 * 2);
          puVar6 = (undefined1 *)
                   CONCAT11((char)((ushort)bVar3 * 2 >> 8) + ('\x03' - (((0x34 < bVar4) << 7) >> 7))
                            ,bVar4 - 0x35);
          *puVar6 = 0;
          puVar6[1] = 0xff;
        }
      }
    }
  }
  bVar3 = DAT_INTMEM_5a + 1;
  cVar2 = DAT_INTMEM_5a + -4;
  DAT_INTMEM_5a = bVar3;
  if (4 < bVar3) {
    DAT_INTMEM_5a = 0;
    for (DAT_EXTMEM_08fa = 0; cVar2 = DAT_EXTMEM_08fa + 0x76, DAT_EXTMEM_08fa < 0x8a;
        DAT_EXTMEM_08fa = DAT_EXTMEM_08fa + 1) {
      bVar3 = (byte)((ushort)DAT_EXTMEM_08fa * 2);
      pbVar7 = (byte *)CONCAT11((char)((ushort)DAT_EXTMEM_08fa * 2 >> 8) +
                                ('\x03' - (((0x34 < bVar3) << 7) >> 7)),bVar3 - 0x35);
      bVar3 = *pbVar7;
      bVar4 = pbVar7[1];
      if ((((byte)-(((bVar4 == 0) << 7) >> 7) <= bVar3) && (bVar4 != 0xff || bVar3 != 0)) &&
         (bVar4 = (byte)((ushort)DAT_EXTMEM_08fa * 2), bVar3 = DAT_EXTMEM_08fa,
         FUN_CODE_80f2(CONCAT11((char)((ushort)DAT_EXTMEM_08fa * 2 >> 8) +
                                ('\x03' - (((0x34 < bVar4) << 7) >> 7)),bVar4 - 0x35),0xff),
         bVar4 = (byte)((ushort)bVar3 * 2),
         pcVar5 = (char *)CONCAT11((char)((ushort)bVar3 * 2 >> 8) +
                                   ('\x03' - (((0x34 < bVar4) << 7) >> 7)),bVar4 - 0x35),
         pcVar5[1] == '\0' && *pcVar5 == '\0')) {
        FUN_CODE_b79e();
        bVar4 = DAT_EXTMEM_08fa;
        *(byte *)CONCAT11('\x03' - (((0xce < DAT_EXTMEM_08fa) << 7) >> 7),DAT_EXTMEM_08fa + 0x31) =
             bVar3;
        uVar1 = 0xff;
        FUN_CODE_9f11(*(undefined1 *)CONCAT11('\x03' - (((0xce < bVar4) << 7) >> 7),bVar4 + 0x31));
        *(undefined1 *)
         CONCAT11('\x01' - (((0xa3 < DAT_EXTMEM_08fa) << 7) >> 7),DAT_EXTMEM_08fa + 0x5c) = uVar1;
      }
    }
  }
  return cVar2;
}


// ===== FUN_CODE_7009 @ CODE:7009 =====

char FUN_CODE_7009(void)

{
  undefined1 uVar1;
  char cVar2;
  byte bVar3;
  byte bVar4;
  char *pcVar5;
  undefined1 *puVar6;
  byte *pbVar7;
  
  for (DAT_EXTMEM_08f6 = 0; bVar3 = DAT_EXTMEM_08f6, (DAT_EXTMEM_08f6 < 0x8a) << 7 < '\0';
      DAT_EXTMEM_08f6 = DAT_EXTMEM_08f6 + 1) {
    bVar4 = (byte)((ushort)DAT_EXTMEM_08f6 * 2);
    pcVar5 = (char *)CONCAT11((char)((ushort)DAT_EXTMEM_08f6 * 2 >> 8) +
                              ('\x03' - (((0x34 < bVar4) << 7) >> 7)),bVar4 - 0x35);
    if (pcVar5[1] == '\0' && *pcVar5 == '\0') {
      if (*(char *)CONCAT11(-(((0x75 < DAT_EXTMEM_08f6) << 7) >> 7),DAT_EXTMEM_08f6 + 0x8a) == '\0')
      {
        *(undefined1 *)CONCAT11('\x01' - (((9 < DAT_EXTMEM_08f6) << 7) >> 7),DAT_EXTMEM_08f6 - 10) =
             *(undefined1 *)
              ((ushort)*(byte *)CONCAT11('\x02' - (((99 < DAT_EXTMEM_08f6) << 7) >> 7),
                                         DAT_EXTMEM_08f6 + 0x9c) + 0x56);
        bVar3 = DAT_EXTMEM_08f6;
        pcVar5 = (char *)CONCAT11('\x02' - (((99 < DAT_EXTMEM_08f6) << 7) >> 7),
                                  DAT_EXTMEM_08f6 + 0x9c);
        *pcVar5 = *pcVar5 + '\x14';
        if (99 < *(byte *)CONCAT11('\x02' - (((99 < bVar3) << 7) >> 7),bVar3 + 0x9c)) {
          *(undefined1 *)CONCAT11(-(((0x75 < DAT_EXTMEM_08f6) << 7) >> 7),DAT_EXTMEM_08f6 + 0x8a) =
               1;
        }
      }
      else {
        pcVar5 = (char *)CONCAT11('\x02' - (((99 < DAT_EXTMEM_08f6) << 7) >> 7),
                                  DAT_EXTMEM_08f6 + 0x9c);
        *pcVar5 = *pcVar5 + -5;
        bVar4 = DAT_EXTMEM_08f6;
        *(undefined1 *)CONCAT11('\x01' - (((9 < DAT_EXTMEM_08f6) << 7) >> 7),DAT_EXTMEM_08f6 - 10) =
             *(undefined1 *)
              ((ushort)*(byte *)CONCAT11('\x02' - (((99 < bVar3) << 7) >> 7),bVar3 + 0x9c) + 0x56);
        bVar3 = DAT_EXTMEM_08f6;
        if (*(byte *)CONCAT11('\x02' - (((99 < bVar4) << 7) >> 7),bVar4 + 0x9c) < 10) {
          *(undefined1 *)
           CONCAT11('\x02' - (((99 < DAT_EXTMEM_08f6) << 7) >> 7),DAT_EXTMEM_08f6 + 0x9c) = 0;
          *(undefined1 *)CONCAT11('\x01' - (((9 < bVar3) << 7) >> 7),bVar3 - 10) = 0;
          *(undefined1 *)CONCAT11(-(((0x75 < bVar3) << 7) >> 7),bVar3 + 0x8a) = 0;
          bVar4 = (byte)((ushort)bVar3 * 2);
          puVar6 = (undefined1 *)
                   CONCAT11((char)((ushort)bVar3 * 2 >> 8) + ('\x03' - (((0x34 < bVar4) << 7) >> 7))
                            ,bVar4 - 0x35);
          *puVar6 = 0;
          puVar6[1] = 0xff;
        }
      }
    }
  }
  bVar3 = DAT_INTMEM_5a + 1;
  cVar2 = DAT_INTMEM_5a + -2;
  DAT_INTMEM_5a = bVar3;
  if (2 < bVar3) {
    DAT_INTMEM_5a = 0;
    for (DAT_EXTMEM_08f6 = 0; cVar2 = DAT_EXTMEM_08f6 + 0x76, DAT_EXTMEM_08f6 < 0x8a;
        DAT_EXTMEM_08f6 = DAT_EXTMEM_08f6 + 1) {
      bVar3 = (byte)((ushort)DAT_EXTMEM_08f6 * 2);
      pbVar7 = (byte *)CONCAT11((char)((ushort)DAT_EXTMEM_08f6 * 2 >> 8) +
                                ('\x03' - (((0x34 < bVar3) << 7) >> 7)),bVar3 - 0x35);
      if (((byte)-(((pbVar7[1] == 0) << 7) >> 7) <= *pbVar7) &&
         (bVar4 = (byte)((ushort)DAT_EXTMEM_08f6 * 2), bVar3 = DAT_EXTMEM_08f6,
         FUN_CODE_80f2(CONCAT11((char)((ushort)DAT_EXTMEM_08f6 * 2 >> 8) +
                                ('\x03' - (((0x34 < bVar4) << 7) >> 7)),bVar4 - 0x35),0xff),
         bVar4 = (byte)((ushort)bVar3 * 2),
         pcVar5 = (char *)CONCAT11((char)((ushort)bVar3 * 2 >> 8) +
                                   ('\x03' - (((0x34 < bVar4) << 7) >> 7)),bVar4 - 0x35),
         pcVar5[1] == '\0' && *pcVar5 == '\0')) {
        FUN_CODE_b79e();
        bVar4 = DAT_EXTMEM_08f6;
        *(byte *)CONCAT11('\x03' - (((0xce < DAT_EXTMEM_08f6) << 7) >> 7),DAT_EXTMEM_08f6 + 0x31) =
             bVar3;
        uVar1 = 0xff;
        FUN_CODE_9f11(*(undefined1 *)CONCAT11('\x03' - (((0xce < bVar4) << 7) >> 7),bVar4 + 0x31));
        *(undefined1 *)
         CONCAT11('\x01' - (((0xa3 < DAT_EXTMEM_08f6) << 7) >> 7),DAT_EXTMEM_08f6 + 0x5c) = uVar1;
      }
    }
  }
  return cVar2;
}


// ===== FUN_CODE_71c6 @ CODE:71c6 =====

char FUN_CODE_71c6(void)

{
  undefined1 uVar1;
  char cVar2;
  byte bVar3;
  byte bVar4;
  char *pcVar5;
  undefined1 *puVar6;
  byte *pbVar7;
  
  DAT_INTMEM_31 = '\0';
  do {
    for (DAT_INTMEM_2f = 0; (DAT_INTMEM_2f < 0x17) << 7 < '\0'; DAT_INTMEM_2f = DAT_INTMEM_2f + 1) {
      DAT_INTMEM_30 = DAT_INTMEM_31 * '\x17' + DAT_INTMEM_2f;
      bVar3 = (byte)((ushort)DAT_INTMEM_30 * 2);
      pcVar5 = (char *)CONCAT11((char)((ushort)DAT_INTMEM_30 * 2 >> 8) +
                                ('\x03' - (((0x34 < bVar3) << 7) >> 7)),bVar3 - 0x35);
      if (pcVar5[1] == '\0' && *pcVar5 == '\0') {
        if (*(char *)CONCAT11(-(((0x75 < DAT_INTMEM_30) << 7) >> 7),DAT_INTMEM_30 + 0x8a) == '\0') {
          *(undefined1 *)CONCAT11('\x01' - (((9 < DAT_INTMEM_30) << 7) >> 7),DAT_INTMEM_30 - 10) =
               *(undefined1 *)
                ((ushort)*(byte *)CONCAT11('\x02' - (((99 < DAT_INTMEM_30) << 7) >> 7),
                                           DAT_INTMEM_30 + 0x9c) + 0x56);
          pcVar5 = (char *)CONCAT11('\x02' - (((99 < DAT_INTMEM_30) << 7) >> 7),DAT_INTMEM_30 + 0x9c
                                   );
          *pcVar5 = *pcVar5 + '\f';
          if (99 < *(byte *)CONCAT11('\x02' - (((99 < DAT_INTMEM_30) << 7) >> 7),
                                     DAT_INTMEM_30 + 0x9c)) {
            *(undefined1 *)CONCAT11(-(((0x75 < DAT_INTMEM_30) << 7) >> 7),DAT_INTMEM_30 + 0x8a) = 1;
          }
        }
        else {
          pcVar5 = (char *)CONCAT11('\x02' - (((99 < DAT_INTMEM_30) << 7) >> 7),DAT_INTMEM_30 + 0x9c
                                   );
          *pcVar5 = *pcVar5 + -2;
          *(undefined1 *)CONCAT11('\x01' - (((9 < DAT_INTMEM_30) << 7) >> 7),DAT_INTMEM_30 - 10) =
               *(undefined1 *)
                ((ushort)*(byte *)CONCAT11('\x02' - (((99 < DAT_INTMEM_30) << 7) >> 7),
                                           DAT_INTMEM_30 + 0x9c) + 0x56);
          if (*(byte *)CONCAT11('\x02' - (((99 < DAT_INTMEM_30) << 7) >> 7),DAT_INTMEM_30 + 0x9c) <
              10) {
            *(undefined1 *)
             CONCAT11('\x02' - (((99 < DAT_INTMEM_30) << 7) >> 7),DAT_INTMEM_30 + 0x9c) = 0;
            *(undefined1 *)CONCAT11('\x01' - (((9 < DAT_INTMEM_30) << 7) >> 7),DAT_INTMEM_30 - 10) =
                 0;
            *(undefined1 *)CONCAT11(-(((0x75 < DAT_INTMEM_30) << 7) >> 7),DAT_INTMEM_30 + 0x8a) = 0;
            bVar3 = (byte)((ushort)DAT_INTMEM_30 * 2);
            puVar6 = (undefined1 *)
                     CONCAT11((char)((ushort)DAT_INTMEM_30 * 2 >> 8) +
                              ('\x03' - (((0x34 < bVar3) << 7) >> 7)),bVar3 - 0x35);
            *puVar6 = 0;
            puVar6[1] = 0xff;
          }
        }
      }
    }
    DAT_INTMEM_31 = DAT_INTMEM_31 + '\x01';
  } while (DAT_INTMEM_31 != '\x06');
  bVar3 = DAT_INTMEM_5a + 1;
  cVar2 = DAT_INTMEM_5a + -2;
  DAT_INTMEM_31 = 6;
  DAT_INTMEM_5a = bVar3;
  if (2 < bVar3) {
    DAT_INTMEM_5a = 0;
    for (DAT_INTMEM_30 = 0; cVar2 = DAT_INTMEM_30 + 0x76, DAT_INTMEM_30 < 0x8a;
        DAT_INTMEM_30 = DAT_INTMEM_30 + 1) {
      bVar3 = (byte)((ushort)DAT_INTMEM_30 * 2);
      pbVar7 = (byte *)CONCAT11((char)((ushort)DAT_INTMEM_30 * 2 >> 8) +
                                ('\x03' - (((0x34 < bVar3) << 7) >> 7)),bVar3 - 0x35);
      bVar3 = *pbVar7;
      bVar4 = pbVar7[1];
      if ((((byte)-(((bVar4 == 0) << 7) >> 7) <= bVar3) && (bVar4 != 0xff || bVar3 != 0)) &&
         (bVar4 = (byte)((ushort)DAT_INTMEM_30 * 2), bVar3 = DAT_INTMEM_30,
         FUN_CODE_80f2(CONCAT11((char)((ushort)DAT_INTMEM_30 * 2 >> 8) +
                                ('\x03' - (((0x34 < bVar4) << 7) >> 7)),bVar4 - 0x35),0xff),
         bVar4 = (byte)((ushort)bVar3 * 2),
         pcVar5 = (char *)CONCAT11((char)((ushort)bVar3 * 2 >> 8) +
                                   ('\x03' - (((0x34 < bVar4) << 7) >> 7)),bVar4 - 0x35),
         pcVar5[1] == '\0' && *pcVar5 == '\0')) {
        FUN_CODE_b79e();
        *(byte *)CONCAT11('\x03' - (((0xce < DAT_INTMEM_30) << 7) >> 7),DAT_INTMEM_30 + 0x31) =
             bVar3;
        uVar1 = 0xff;
        FUN_CODE_9f11(*(undefined1 *)
                       CONCAT11('\x03' - (((0xce < DAT_INTMEM_30) << 7) >> 7),DAT_INTMEM_30 + 0x31))
        ;
        *(undefined1 *)CONCAT11('\x01' - (((0xa3 < DAT_INTMEM_30) << 7) >> 7),DAT_INTMEM_30 + 0x5c)
             = uVar1;
      }
    }
  }
  return cVar2;
}


// ===== FUN_CODE_7537 @ CODE:7537 =====

void FUN_CODE_7537(byte param_1)

{
  bool bVar1;
  byte bVar2;
  byte bVar3;
  char cVar4;
  char cVar5;
  char *pcVar6;
  undefined1 *puVar7;
  
  DAT_EXTMEM_08f5 = param_1;
  if (BANK3_R3 + 1U <= DAT_INTMEM_57) {
    DAT_INTMEM_57 = 0;
    FUN_CODE_6e45();
  }
  for (DAT_INTMEM_2d = 0; bVar3 = DAT_EXTMEM_08f5, DAT_INTMEM_2d < 6;
      DAT_INTMEM_2d = DAT_INTMEM_2d + 1) {
    DAT_INTMEM_2e = DAT_EXTMEM_08f5 + DAT_INTMEM_2d * '\x17';
    if ((*(char *)CONCAT11('\x01' - (((9 < DAT_INTMEM_2e) << 7) >> 7),DAT_INTMEM_2e - 10) == '\0')
        << 7 < '\0') {
      *(undefined1 *)CONCAT11('\x06' - (((0xdf < DAT_INTMEM_2e) << 7) >> 7),DAT_INTMEM_2e + 0x20) =
           0;
      *(undefined1 *)CONCAT11('\x05' - (((0x74 < DAT_INTMEM_2e) << 7) >> 7),DAT_INTMEM_2e + 0x8b) =
           0;
      *(undefined1 *)CONCAT11('\x04' - (((9 < DAT_INTMEM_2e) << 7) >> 7),DAT_INTMEM_2e - 10) = 0;
    }
    else if (DAT_INTMEM_5c == '\a') {
      FUN_CODE_8805(DAT_INTMEM_2e);
    }
    else {
      FUN_CODE_9e7f(DAT_INTMEM_2e);
    }
  }
  if (*(char *)CONCAT11('\t' - (((0xc0 < DAT_EXTMEM_08f5) << 7) >> 7),DAT_EXTMEM_08f5 + 0x3f) ==
      '\0') {
    pcVar6 = (char *)CONCAT11((CARRY1(DAT_EXTMEM_08f5,DAT_EXTMEM_08f5) -
                              (((0x7c < DAT_EXTMEM_08f5 * '\x02') << 7) >> 7)) + '\x04',
                              DAT_EXTMEM_08f5 * '\x02' + 0x83);
    if (pcVar6[1] != -1 || *pcVar6 != '\0') {
      return;
    }
    *(undefined1 *)CONCAT11('\t' - (((0xc0 < DAT_EXTMEM_08f5) << 7) >> 7),DAT_EXTMEM_08f5 + 0x3f) =
         1;
    bVar1 = CARRY1(bVar3,bVar3);
    bVar2 = bVar3 * '\x02';
    puVar7 = (undefined1 *)CONCAT11((bVar1 - (((0x4e < bVar2) << 7) >> 7)) + '\x04',bVar2 + 0xb1);
    *puVar7 = 0;
    puVar7[1] = 0;
    puVar7 = (undefined1 *)CONCAT11((bVar1 - (((0x7c < bVar2) << 7) >> 7)) + '\x04',bVar2 + 0x83);
    *puVar7 = 0;
    puVar7[1] = 1;
    puVar7 = (undefined1 *)CONCAT11((bVar1 - (((0xaa < bVar2) << 7) >> 7)) + '\x04',bVar2 + 0x55);
    *puVar7 = 0;
    puVar7[1] = 2;
    puVar7 = (undefined1 *)CONCAT11((bVar1 - (((0xd8 < bVar2) << 7) >> 7)) + '\x04',bVar2 + 0x27);
    *puVar7 = 0;
    puVar7[1] = 3;
    puVar7 = (undefined1 *)CONCAT11((bVar1 - (((6 < bVar2) << 7) >> 7)) + '\x03',bVar2 - 7);
    *puVar7 = 0;
    puVar7[1] = 4;
    bVar1 = 0x34 < bVar2;
    cVar4 = bVar2 - 0x35;
    cVar5 = '\x03';
  }
  else {
    pcVar6 = (char *)CONCAT11((CARRY1(DAT_EXTMEM_08f5,DAT_EXTMEM_08f5) -
                              (((6 < DAT_EXTMEM_08f5 * '\x02') << 7) >> 7)) + '\x03',
                              DAT_EXTMEM_08f5 * '\x02' - 7);
    if (pcVar6[1] != -1 || *pcVar6 != '\0') {
      return;
    }
    *(undefined1 *)CONCAT11('\t' - (((0xc0 < DAT_EXTMEM_08f5) << 7) >> 7),DAT_EXTMEM_08f5 + 0x3f) =
         0;
    bVar1 = CARRY1(bVar3,bVar3);
    bVar2 = bVar3 * '\x02';
    puVar7 = (undefined1 *)CONCAT11((bVar1 - (((0x34 < bVar2) << 7) >> 7)) + '\x03',bVar2 - 0x35);
    *puVar7 = 0;
    puVar7[1] = 0;
    puVar7 = (undefined1 *)CONCAT11((bVar1 - (((6 < bVar2) << 7) >> 7)) + '\x03',bVar2 - 7);
    *puVar7 = 0;
    puVar7[1] = 1;
    puVar7 = (undefined1 *)CONCAT11((bVar1 - (((0xd8 < bVar2) << 7) >> 7)) + '\x04',bVar2 + 0x27);
    *puVar7 = 0;
    puVar7[1] = 2;
    puVar7 = (undefined1 *)CONCAT11((bVar1 - (((0xaa < bVar2) << 7) >> 7)) + '\x04',bVar2 + 0x55);
    *puVar7 = 0;
    puVar7[1] = 3;
    puVar7 = (undefined1 *)CONCAT11((bVar1 - (((0x7c < bVar2) << 7) >> 7)) + '\x04',bVar2 + 0x83);
    *puVar7 = 0;
    puVar7[1] = 4;
    bVar1 = 0x4e < bVar2;
    cVar4 = bVar2 + 0xb1;
    cVar5 = '\x04';
  }
  puVar7 = (undefined1 *)CONCAT11(cVar5 + (CARRY1(bVar3,bVar3) - ((bVar1 << 7) >> 7)),cVar4);
  *puVar7 = 0;
  puVar7[1] = 5;
  return;
}


// ===== FUN_CODE_76eb @ CODE:76eb =====

char FUN_CODE_76eb(void)

{
  undefined1 uVar1;
  char cVar2;
  byte bVar3;
  byte bVar4;
  char *pcVar5;
  undefined1 *puVar6;
  byte *pbVar7;
  
  for (DAT_EXTMEM_08f5 = 0; bVar3 = DAT_EXTMEM_08f5, (DAT_EXTMEM_08f5 < 0x8a) << 7 < '\0';
      DAT_EXTMEM_08f5 = DAT_EXTMEM_08f5 + 1) {
    bVar4 = (byte)((ushort)DAT_EXTMEM_08f5 * 2);
    pcVar5 = (char *)CONCAT11((char)((ushort)DAT_EXTMEM_08f5 * 2 >> 8) +
                              ('\x03' - (((0x34 < bVar4) << 7) >> 7)),bVar4 - 0x35);
    if (pcVar5[1] == '\0' && *pcVar5 == '\0') {
      if (*(char *)CONCAT11(-(((0x75 < DAT_EXTMEM_08f5) << 7) >> 7),DAT_EXTMEM_08f5 + 0x8a) == '\0')
      {
        *(undefined1 *)CONCAT11('\x01' - (((9 < DAT_EXTMEM_08f5) << 7) >> 7),DAT_EXTMEM_08f5 - 10) =
             *(undefined1 *)
              ((ushort)*(byte *)CONCAT11('\x02' - (((99 < DAT_EXTMEM_08f5) << 7) >> 7),
                                         DAT_EXTMEM_08f5 + 0x9c) + 0x56);
        bVar3 = DAT_EXTMEM_08f5;
        pcVar5 = (char *)CONCAT11('\x02' - (((99 < DAT_EXTMEM_08f5) << 7) >> 7),
                                  DAT_EXTMEM_08f5 + 0x9c);
        *pcVar5 = *pcVar5 + '\n';
        if (99 < *(byte *)CONCAT11('\x02' - (((99 < bVar3) << 7) >> 7),bVar3 + 0x9c)) {
          *(undefined1 *)CONCAT11(-(((0x75 < DAT_EXTMEM_08f5) << 7) >> 7),DAT_EXTMEM_08f5 + 0x8a) =
               1;
        }
      }
      else {
        pcVar5 = (char *)CONCAT11('\x02' - (((99 < DAT_EXTMEM_08f5) << 7) >> 7),
                                  DAT_EXTMEM_08f5 + 0x9c);
        *pcVar5 = *pcVar5 + -2;
        *(undefined1 *)CONCAT11('\x01' - (((9 < DAT_EXTMEM_08f5) << 7) >> 7),DAT_EXTMEM_08f5 - 10) =
             *(undefined1 *)
              ((ushort)*(byte *)CONCAT11('\x02' - (((99 < bVar3) << 7) >> 7),bVar3 + 0x9c) + 0x56);
      }
      bVar3 = DAT_EXTMEM_08f5;
      if (*(char *)CONCAT11('\x02' - (((99 < DAT_EXTMEM_08f5) << 7) >> 7),DAT_EXTMEM_08f5 + 0x9c) ==
          '\0') {
        *(undefined1 *)CONCAT11('\x01' - (((9 < DAT_EXTMEM_08f5) << 7) >> 7),DAT_EXTMEM_08f5 - 10) =
             0;
        *(undefined1 *)CONCAT11(-(((0x75 < bVar3) << 7) >> 7),bVar3 + 0x8a) = 0;
        bVar4 = (byte)((ushort)bVar3 * 2);
        puVar6 = (undefined1 *)
                 CONCAT11((char)((ushort)bVar3 * 2 >> 8) + ('\x03' - (((0x34 < bVar4) << 7) >> 7)),
                          bVar4 - 0x35);
        *puVar6 = 0;
        puVar6[1] = 0xff;
      }
    }
  }
  bVar3 = DAT_INTMEM_5a + 1;
  cVar2 = DAT_INTMEM_5a + -1;
  DAT_INTMEM_5a = bVar3;
  if (1 < bVar3) {
    DAT_INTMEM_5a = 0;
    for (DAT_EXTMEM_08f5 = 0; cVar2 = DAT_EXTMEM_08f5 + 0x76, DAT_EXTMEM_08f5 < 0x8a;
        DAT_EXTMEM_08f5 = DAT_EXTMEM_08f5 + 1) {
      bVar3 = (byte)((ushort)DAT_EXTMEM_08f5 * 2);
      pbVar7 = (byte *)CONCAT11((char)((ushort)DAT_EXTMEM_08f5 * 2 >> 8) +
                                ('\x03' - (((0x34 < bVar3) << 7) >> 7)),bVar3 - 0x35);
      if (((byte)-(((pbVar7[1] == 0) << 7) >> 7) <= *pbVar7) &&
         (bVar4 = (byte)((ushort)DAT_EXTMEM_08f5 * 2), bVar3 = DAT_EXTMEM_08f5,
         FUN_CODE_80f2(CONCAT11((char)((ushort)DAT_EXTMEM_08f5 * 2 >> 8) +
                                ('\x03' - (((0x34 < bVar4) << 7) >> 7)),bVar4 - 0x35),0xff),
         bVar4 = (byte)((ushort)bVar3 * 2),
         pcVar5 = (char *)CONCAT11((char)((ushort)bVar3 * 2 >> 8) +
                                   ('\x03' - (((0x34 < bVar4) << 7) >> 7)),bVar4 - 0x35),
         pcVar5[1] == '\0' && *pcVar5 == '\0')) {
        FUN_CODE_b79e();
        bVar4 = DAT_EXTMEM_08f5;
        *(byte *)CONCAT11('\x03' - (((0xce < DAT_EXTMEM_08f5) << 7) >> 7),DAT_EXTMEM_08f5 + 0x31) =
             bVar3;
        uVar1 = 0xff;
        FUN_CODE_9f11(*(undefined1 *)CONCAT11('\x03' - (((0xce < bVar4) << 7) >> 7),bVar4 + 0x31));
        *(undefined1 *)
         CONCAT11('\x01' - (((0xa3 < DAT_EXTMEM_08f5) << 7) >> 7),DAT_EXTMEM_08f5 + 0x5c) = uVar1;
      }
    }
  }
  return cVar2;
}


// ===== FUN_CODE_7897 @ CODE:7897 =====

char FUN_CODE_7897(void)

{
  bool bVar1;
  undefined1 uVar2;
  char cVar3;
  byte bVar4;
  byte bVar5;
  char *pcVar6;
  undefined1 *puVar7;
  byte *pbVar8;
  
  for (DAT_INTMEM_2d = 0; (DAT_INTMEM_2d < 0x8a) << 7 < '\0'; DAT_INTMEM_2d = DAT_INTMEM_2d + 1) {
    bVar4 = (byte)((ushort)DAT_INTMEM_2d * 2);
    pcVar6 = (char *)CONCAT11((char)((ushort)DAT_INTMEM_2d * 2 >> 8) +
                              ('\x03' - (((0x34 < bVar4) << 7) >> 7)),bVar4 - 0x35);
    if (pcVar6[1] == '\0' && *pcVar6 == '\0') {
      if (*(char *)CONCAT11(-(((0x75 < DAT_INTMEM_2d) << 7) >> 7),DAT_INTMEM_2d + 0x8a) == '\0') {
        *(undefined1 *)CONCAT11('\x01' - (((9 < DAT_INTMEM_2d) << 7) >> 7),DAT_INTMEM_2d - 10) =
             *(undefined1 *)
              ((ushort)*(byte *)CONCAT11('\x02' - (((99 < DAT_INTMEM_2d) << 7) >> 7),
                                         DAT_INTMEM_2d + 0x9c) + 0x56);
        pcVar6 = (char *)CONCAT11('\x02' - (((99 < DAT_INTMEM_2d) << 7) >> 7),DAT_INTMEM_2d + 0x9c);
        *pcVar6 = *pcVar6 + '\n';
        if (99 < *(byte *)CONCAT11('\x02' - (((99 < DAT_INTMEM_2d) << 7) >> 7),DAT_INTMEM_2d + 0x9c)
           ) {
          *(undefined1 *)CONCAT11(-(((0x75 < DAT_INTMEM_2d) << 7) >> 7),DAT_INTMEM_2d + 0x8a) = 1;
        }
      }
      else {
        pcVar6 = (char *)CONCAT11('\x02' - (((99 < DAT_INTMEM_2d) << 7) >> 7),DAT_INTMEM_2d + 0x9c);
        *pcVar6 = *pcVar6 + -5;
        *(undefined1 *)CONCAT11('\x01' - (((9 < DAT_INTMEM_2d) << 7) >> 7),DAT_INTMEM_2d - 10) =
             *(undefined1 *)
              ((ushort)*(byte *)CONCAT11('\x02' - (((99 < DAT_INTMEM_2d) << 7) >> 7),
                                         DAT_INTMEM_2d + 0x9c) + 0x56);
        if (*(byte *)CONCAT11('\x02' - (((99 < DAT_INTMEM_2d) << 7) >> 7),DAT_INTMEM_2d + 0x9c) <
            0xb) {
          *(undefined1 *)CONCAT11('\x02' - (((99 < DAT_INTMEM_2d) << 7) >> 7),DAT_INTMEM_2d + 0x9c)
               = 0;
          *(undefined1 *)CONCAT11('\x01' - (((9 < DAT_INTMEM_2d) << 7) >> 7),DAT_INTMEM_2d - 10) = 0
          ;
          *(undefined1 *)CONCAT11(-(((0x75 < DAT_INTMEM_2d) << 7) >> 7),DAT_INTMEM_2d + 0x8a) = 0;
          bVar4 = (byte)((ushort)DAT_INTMEM_2d * 2);
          puVar7 = (undefined1 *)
                   CONCAT11((char)((ushort)DAT_INTMEM_2d * 2 >> 8) +
                            ('\x03' - (((0x34 < bVar4) << 7) >> 7)),bVar4 - 0x35);
          *puVar7 = 0;
          puVar7[1] = 0xff;
        }
      }
    }
  }
  bVar4 = DAT_INTMEM_5a + 1;
  cVar3 = DAT_INTMEM_5a + -2;
  DAT_INTMEM_5a = bVar4;
  if (2 < bVar4) {
    DAT_INTMEM_5a = 0;
    for (DAT_INTMEM_2d = 0; cVar3 = DAT_INTMEM_2d + 0x76, DAT_INTMEM_2d < 0x8a;
        DAT_INTMEM_2d = DAT_INTMEM_2d + 1) {
      bVar4 = (byte)((ushort)DAT_INTMEM_2d * 2);
      pbVar8 = (byte *)CONCAT11((char)((ushort)DAT_INTMEM_2d * 2 >> 8) +
                                ('\x03' - (((0x34 < bVar4) << 7) >> 7)),bVar4 - 0x35);
      bVar4 = *pbVar8;
      bVar5 = pbVar8[1];
      bVar1 = bVar4 < (byte)-(((bVar5 == 0) << 7) >> 7);
      if (((!bVar1) && (bVar4 < (byte)-(((bVar5 < 0xffU - ((bVar1 << 7) >> 7)) << 7) >> 7))) &&
         (bVar5 = (byte)((ushort)DAT_INTMEM_2d * 2), bVar4 = DAT_INTMEM_2d,
         FUN_CODE_80f2(CONCAT11((char)((ushort)DAT_INTMEM_2d * 2 >> 8) +
                                ('\x03' - (((0x34 < bVar5) << 7) >> 7)),bVar5 - 0x35),0xff),
         bVar5 = (byte)((ushort)bVar4 * 2),
         pcVar6 = (char *)CONCAT11((char)((ushort)bVar4 * 2 >> 8) +
                                   ('\x03' - (((0x34 < bVar5) << 7) >> 7)),bVar5 - 0x35),
         pcVar6[1] == '\0' && *pcVar6 == '\0')) {
        FUN_CODE_b79e();
        *(byte *)CONCAT11('\x03' - (((0xce < DAT_INTMEM_2d) << 7) >> 7),DAT_INTMEM_2d + 0x31) =
             bVar4;
        uVar2 = 0xff;
        FUN_CODE_9f11(*(undefined1 *)
                       CONCAT11('\x03' - (((0xce < DAT_INTMEM_2d) << 7) >> 7),DAT_INTMEM_2d + 0x31))
        ;
        *(undefined1 *)CONCAT11('\x01' - (((0xa3 < DAT_INTMEM_2d) << 7) >> 7),DAT_INTMEM_2d + 0x5c)
             = uVar2;
      }
    }
  }
  return cVar3;
}


// ===== FUN_CODE_7a3f @ CODE:7a3f =====

void FUN_CODE_7a3f(byte param_1)

{
  char cVar1;
  byte bVar2;
  byte bVar3;
  byte bVar4;
  char *pcVar5;
  undefined1 *puVar6;
  
  DAT_EXTMEM_08f5 = param_1;
  if (BANK3_R3 + 1U <= DAT_INTMEM_57) {
    DAT_INTMEM_57 = 0;
    FUN_CODE_aca8();
    FUN_CODE_bbdd();
    DAT_INTMEM_2d = 0;
    while( true ) {
      if (0x16 < DAT_INTMEM_2d) break;
      bVar2 = (byte)((ushort)DAT_INTMEM_2d * 2);
      bVar3 = DAT_INTMEM_2d;
      FUN_CODE_80f2(0,CONCAT11((char)((ushort)DAT_INTMEM_2d * 2 >> 8) +
                               ('\x03' - (((0x34 < bVar2) << 7) >> 7)),bVar2 - 0x35),2);
      bVar2 = (byte)((ushort)bVar3 * 2);
      if (1 < *(byte *)CONCAT11((char)((ushort)bVar3 * 2 >> 8) +
                                ('\x03' - (((0x34 < bVar2) << 7) >> 7)),bVar2 - 0x35)) {
        bVar3 = (byte)((ushort)DAT_INTMEM_2d * 2);
        puVar6 = (undefined1 *)
                 CONCAT11((char)((ushort)DAT_INTMEM_2d * 2 >> 8) +
                          ('\x03' - (((0x34 < bVar3) << 7) >> 7)),bVar3 - 0x35);
        *puVar6 = 0;
        puVar6[1] = 0;
      }
      DAT_INTMEM_2d = DAT_INTMEM_2d + 1;
    }
    FUN_CODE_ad0a(DAT_INTMEM_2d - 0x17);
  }
  bVar3 = (byte)((ushort)DAT_EXTMEM_08f5 * 2);
  pcVar5 = (char *)CONCAT11((char)((ushort)DAT_EXTMEM_08f5 * 2 >> 8) +
                            ('\x03' - (((0x34 < bVar3) << 7) >> 7)),bVar3 - 0x35);
  cVar1 = *pcVar5;
  bVar3 = pcVar5[1];
  DAT_EXTMEM_08f6 = *(undefined1 *)CONCAT11(cVar1 - (((0x45 < bVar3) << 7) >> 7),bVar3 + 0xba);
  DAT_EXTMEM_08f7 =
       *(undefined1 *)CONCAT11((cVar1 - (((0x19 < bVar3) << 7) >> 7)) + '\x04',bVar3 - 0x1a);
  bVar3 = (byte)((ushort)DAT_EXTMEM_08f5 * 2);
  pcVar5 = (char *)CONCAT11((char)((ushort)DAT_EXTMEM_08f5 * 2 >> 8) +
                            ('\x03' - (((0x34 < bVar3) << 7) >> 7)),bVar3 - 0x35);
  bVar3 = pcVar5[1];
  DAT_EXTMEM_08f8 =
       *(undefined1 *)CONCAT11((*pcVar5 - (((0xed < bVar3) << 7) >> 7)) + '\t',bVar3 + 0x12);
  bVar3 = 0x17 - DAT_EXTMEM_08f5;
  bVar2 = bVar3 * '\x02';
  bVar4 = (((0x17 < DAT_EXTMEM_08f5) << 7) >> 7) << 1 | CARRY1(bVar3,bVar3);
  pcVar5 = (char *)CONCAT11((bVar4 - (((0x34 < bVar2) << 7) >> 7)) + '\x03',bVar2 - 0x35);
  cVar1 = *pcVar5;
  bVar3 = pcVar5[1];
  DAT_EXTMEM_08f9 = *(undefined1 *)CONCAT11(cVar1 - (((0x45 < bVar3) << 7) >> 7),bVar3 + 0xba);
  DAT_EXTMEM_08fa =
       *(undefined1 *)CONCAT11((cVar1 - (((0x19 < bVar3) << 7) >> 7)) + '\x04',bVar3 - 0x1a);
  pcVar5 = (char *)CONCAT11((bVar4 - (((0x34 < bVar2) << 7) >> 7)) + '\x03',bVar2 - 0x35);
  bVar3 = pcVar5[1];
  DAT_EXTMEM_08fb =
       *(undefined1 *)CONCAT11((*pcVar5 - (((0xed < bVar3) << 7) >> 7)) + '\t',bVar3 + 0x12);
  DAT_INTMEM_2d = 0;
  do {
    DAT_INTMEM_2e = DAT_EXTMEM_08f5 + DAT_INTMEM_2d * '\x17';
    if (DAT_INTMEM_2d < 3) {
      *(undefined1 *)CONCAT11('\x06' - (((0xdf < DAT_INTMEM_2e) << 7) >> 7),DAT_INTMEM_2e + 0x20) =
           DAT_EXTMEM_08f6;
      *(undefined1 *)CONCAT11('\x05' - (((0x74 < DAT_INTMEM_2e) << 7) >> 7),DAT_INTMEM_2e + 0x8b) =
           DAT_EXTMEM_08f7;
      puVar6 = &DAT_EXTMEM_08f8;
    }
    else {
      *(undefined1 *)CONCAT11('\x06' - (((0xdf < DAT_INTMEM_2e) << 7) >> 7),DAT_INTMEM_2e + 0x20) =
           DAT_EXTMEM_08f9;
      *(undefined1 *)CONCAT11('\x05' - (((0x74 < DAT_INTMEM_2e) << 7) >> 7),DAT_INTMEM_2e + 0x8b) =
           DAT_EXTMEM_08fa;
      puVar6 = &DAT_EXTMEM_08fb;
    }
    *(undefined1 *)CONCAT11('\x04' - (((9 < DAT_INTMEM_2e) << 7) >> 7),DAT_INTMEM_2e - 10) = *puVar6
    ;
    DAT_INTMEM_2d = DAT_INTMEM_2d + 1;
  } while (DAT_INTMEM_2d != 6);
  return;
}


// ===== FUN_CODE_7d83 @ CODE:7d83 =====

char FUN_CODE_7d83(void)

{
  byte bVar1;
  char cVar2;
  byte bVar3;
  char *pcVar4;
  undefined1 *puVar5;
  byte *pbVar6;
  
  DAT_INTMEM_31 = 0;
  do {
    for (DAT_INTMEM_2f = 0; (DAT_INTMEM_2f < 0x17) << 7 < '\0'; DAT_INTMEM_2f = DAT_INTMEM_2f + 1) {
      DAT_INTMEM_30 = DAT_INTMEM_31 * '\x17' + DAT_INTMEM_2f;
      bVar3 = (byte)((ushort)DAT_INTMEM_30 * 2);
      pcVar4 = (char *)CONCAT11((char)((ushort)DAT_INTMEM_30 * 2 >> 8) +
                                ('\x03' - (((0x34 < bVar3) << 7) >> 7)),bVar3 - 0x35);
      if (pcVar4[1] == '\0' && *pcVar4 == '\0') {
        if (*(char *)CONCAT11(-(((0x75 < DAT_INTMEM_30) << 7) >> 7),DAT_INTMEM_30 + 0x8a) == '\0') {
          *(undefined1 *)CONCAT11('\x01' - (((9 < DAT_INTMEM_30) << 7) >> 7),DAT_INTMEM_30 - 10) =
               *(undefined1 *)
                ((ushort)*(byte *)CONCAT11('\x02' - (((99 < DAT_INTMEM_30) << 7) >> 7),
                                           DAT_INTMEM_30 + 0x9c) + 0x56);
          pcVar4 = (char *)CONCAT11('\x02' - (((99 < DAT_INTMEM_30) << 7) >> 7),DAT_INTMEM_30 + 0x9c
                                   );
          *pcVar4 = *pcVar4 + '(';
          if (199 < *(byte *)CONCAT11('\x02' - (((99 < DAT_INTMEM_30) << 7) >> 7),
                                      DAT_INTMEM_30 + 0x9c)) {
            *(undefined1 *)
             CONCAT11('\x02' - (((99 < DAT_INTMEM_30) << 7) >> 7),DAT_INTMEM_30 + 0x9c) = 200;
            *(undefined1 *)CONCAT11(-(((0x75 < DAT_INTMEM_30) << 7) >> 7),DAT_INTMEM_30 + 0x8a) = 1;
          }
        }
        else {
          pcVar4 = (char *)CONCAT11('\x02' - (((99 < DAT_INTMEM_30) << 7) >> 7),DAT_INTMEM_30 + 0x9c
                                   );
          *pcVar4 = *pcVar4 + -10;
          *(undefined1 *)CONCAT11('\x01' - (((9 < DAT_INTMEM_30) << 7) >> 7),DAT_INTMEM_30 - 10) =
               *(undefined1 *)
                ((ushort)*(byte *)CONCAT11('\x02' - (((99 < DAT_INTMEM_30) << 7) >> 7),
                                           DAT_INTMEM_30 + 0x9c) + 0x56);
          if (*(byte *)CONCAT11('\x02' - (((99 < DAT_INTMEM_30) << 7) >> 7),DAT_INTMEM_30 + 0x9c) <
              0xf) {
            *(undefined1 *)
             CONCAT11('\x02' - (((99 < DAT_INTMEM_30) << 7) >> 7),DAT_INTMEM_30 + 0x9c) = 0;
            *(undefined1 *)CONCAT11(-(((0x75 < DAT_INTMEM_30) << 7) >> 7),DAT_INTMEM_30 + 0x8a) = 0;
            bVar3 = (byte)((ushort)DAT_INTMEM_30 * 2);
            puVar5 = (undefined1 *)
                     CONCAT11((char)((ushort)DAT_INTMEM_30 * 2 >> 8) +
                              ('\x03' - (((0x34 < bVar3) << 7) >> 7)),bVar3 - 0x35);
            *puVar5 = 0;
            puVar5[1] = 0xff;
            if (DAT_INTMEM_31 == 5) {
              *(undefined1 *)
               CONCAT11('\t' - (((0xa9 < DAT_INTMEM_2f) << 7) >> 7),DAT_INTMEM_2f + 0x56) = 0;
              thunk_FUN_CODE_58db();
            }
          }
        }
      }
    }
    DAT_INTMEM_31 = DAT_INTMEM_31 + 1;
  } while (DAT_INTMEM_31 < 6);
  bVar3 = DAT_INTMEM_5a + 1;
  cVar2 = DAT_INTMEM_5a + -9;
  DAT_INTMEM_5a = bVar3;
  if (9 < bVar3) {
    DAT_INTMEM_5a = 0;
    for (DAT_INTMEM_30 = 0; cVar2 = DAT_INTMEM_30 + 0x76, DAT_INTMEM_30 < 0x8a;
        DAT_INTMEM_30 = DAT_INTMEM_30 + 1) {
      bVar3 = (byte)((ushort)DAT_INTMEM_30 * 2);
      pbVar6 = (byte *)CONCAT11((char)((ushort)DAT_INTMEM_30 * 2 >> 8) +
                                ('\x03' - (((0x34 < bVar3) << 7) >> 7)),bVar3 - 0x35);
      bVar3 = *pbVar6;
      bVar1 = pbVar6[1];
      if (((byte)-(((bVar1 == 0) << 7) >> 7) <= bVar3) && (bVar1 != 0xff || bVar3 != 0)) {
        bVar3 = (byte)((ushort)DAT_INTMEM_30 * 2);
        FUN_CODE_80f2(CONCAT11((char)((ushort)DAT_INTMEM_30 * 2 >> 8) +
                               ('\x03' - (((0x34 < bVar3) << 7) >> 7)),bVar3 - 0x35),0xff);
      }
    }
  }
  return cVar2;
}


// ===== FUN_CODE_7f0a @ CODE:7f0a =====

char FUN_CODE_7f0a(char param_1)

{
  byte bVar1;
  char cVar2;
  
  DAT_EXTMEM_08f5 = param_1;
  if (DAT_INTMEM_57 < BANK3_R3 + 1U) goto LAB_CODE_801f;
  DAT_INTMEM_57 = 0;
  if (DAT_EXTMEM_0988 == '\x01') {
    FUN_CODE_6a8e();
    if (DAT_INTMEM_6a == '\0') {
      if ((1 < DAT_INTMEM_6b) && ((byte)-(((DAT_EXTMEM_046a < 0xc9) << 7) >> 7) <= DAT_EXTMEM_0469))
      {
        DAT_EXTMEM_0437 = 0;
        DAT_EXTMEM_0438 = 1;
        DAT_EXTMEM_0439 = 0;
        DAT_EXTMEM_043a = 2;
        DAT_EXTMEM_043b = 0;
        DAT_EXTMEM_043c = 3;
        DAT_EXTMEM_0467 = 0;
        DAT_EXTMEM_0468 = 1;
        DAT_EXTMEM_0465 = 0;
        DAT_EXTMEM_0466 = 2;
        DAT_INTMEM_6a = '\x01';
        DAT_INTMEM_6c = DAT_INTMEM_6c + 1;
      }
      goto LAB_CODE_801f;
    }
    if ((DAT_EXTMEM_043b < (byte)-(((DAT_EXTMEM_043c < 0xc9) << 7) >> 7)) << 7 < '\0')
    goto LAB_CODE_801f;
    if ((_5_3 != '\0') || (DAT_INTMEM_6c == 3)) {
      DAT_INTMEM_6c = 0;
      FUN_CODE_9a30();
      goto LAB_CODE_801f;
    }
    DAT_INTMEM_6a = '\0';
    DAT_INTMEM_6b = 0;
  }
  else {
    if (DAT_EXTMEM_0988 == '\x02') {
      bVar1 = DAT_INTMEM_6c + 1;
      cVar2 = DAT_INTMEM_6c - 0x1e;
      DAT_INTMEM_6c = bVar1;
      if (0x1e < bVar1) {
        DAT_INTMEM_6c = 0x1e;
        FUN_CODE_71c6(cVar2);
        if ((byte)-(((DAT_EXTMEM_04da < 0xc9) << 7) >> 7) <= DAT_EXTMEM_04d9) {
          if (_5_3 == '\0') {
            DAT_EXTMEM_0988 = '\0';
            FUN_CODE_a515();
          }
          else {
            _5_3 = '\0';
            DAT_INTMEM_5c = DAT_CODE_e406;
            FUN_CODE_9deb(DAT_CODE_e406);
            if (DAT_INTMEM_69 < 0x13) {
              FUN_CODE_9d55();
            }
            else {
              FUN_CODE_a0bf(DAT_INTMEM_69 - 0x13);
            }
          }
        }
      }
      goto LAB_CODE_801f;
    }
    if ((DAT_EXTMEM_0988 != '\0') ||
       (FUN_CODE_667f(), DAT_EXTMEM_0433 < (byte)-(((DAT_EXTMEM_0434 < 0xc9) << 7) >> 7)))
    goto LAB_CODE_801f;
  }
  DAT_EXTMEM_0988 = '\x01';
  FUN_CODE_af33();
LAB_CODE_801f:
  for (DAT_INTMEM_2d = 0; DAT_INTMEM_2d < 6; DAT_INTMEM_2d = DAT_INTMEM_2d + 1) {
    DAT_INTMEM_2e = DAT_EXTMEM_08f5 + DAT_INTMEM_2d * '\x17';
    if ((*(char *)CONCAT11('\x01' - (((9 < DAT_INTMEM_2e) << 7) >> 7),DAT_INTMEM_2e - 10) == '\0')
        << 7 < '\0') {
      *(undefined1 *)CONCAT11('\x06' - (((0xdf < DAT_INTMEM_2e) << 7) >> 7),DAT_INTMEM_2e + 0x20) =
           0;
      *(undefined1 *)CONCAT11('\x05' - (((0x74 < DAT_INTMEM_2e) << 7) >> 7),DAT_INTMEM_2e + 0x8b) =
           0;
      *(undefined1 *)CONCAT11('\x04' - (((9 < DAT_INTMEM_2e) << 7) >> 7),DAT_INTMEM_2e - 10) = 0;
    }
    else if (DAT_INTMEM_5c == '\a') {
      FUN_CODE_8805(DAT_INTMEM_2e);
    }
    else {
      FUN_CODE_9e7f(DAT_INTMEM_2e);
    }
  }
  return DAT_INTMEM_2d - 6;
}


// ===== FUN_CODE_80f2 @ CODE:80f2 =====

void FUN_CODE_80f2(char param_1,short param_2,byte param_3)

{
  byte bVar1;
  char cVar2;
  byte *pbVar3;
  char *pcVar4;
  
  pbVar3 = (byte *)(param_2 + 1);
  bVar1 = *pbVar3;
  *pbVar3 = bVar1 + param_3;
  cVar2 = (char)((ushort)pbVar3 >> 8);
  if ((char)pbVar3 == '\0') {
    cVar2 = cVar2 + -1;
  }
  pcVar4 = (char *)CONCAT11(cVar2,(char)pbVar3 + -1);
  *pcVar4 = *pcVar4 + (param_1 - ((CARRY1(bVar1,param_3) << 7) >> 7));
  return;
}


// ===== FUN_CODE_811e @ CODE:811e =====

byte FUN_CODE_811e(byte param_1,byte param_2,byte param_3,byte param_4,byte param_5,char param_6,
                  char param_7,char param_8)

{
  byte bVar1;
  byte bVar2;
  byte bVar3;
  char in_PSW;
  
  bVar1 = param_8 - (in_PSW >> 7);
  bVar2 = param_7 - (((param_4 < bVar1) << 7) >> 7);
  bVar3 = param_6 - (((param_3 < bVar2) << 7) >> 7);
  return (param_1 ^ 0x80) - ((param_5 ^ 0x80) - (((param_2 < bVar3) << 7) >> 7)) |
         param_4 - bVar1 | param_3 - bVar2 | param_2 - bVar3;
}


// ===== FUN_CODE_8134 @ CODE:8134 =====

byte FUN_CODE_8134(char param_1,byte param_2,byte param_3,byte param_4,char param_5,char param_6,
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


// ===== FUN_CODE_8145 @ CODE:8145 =====

byte FUN_CODE_8145(byte param_1,byte param_2,byte param_3,byte param_4,byte param_5)

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


// ===== FUN_CODE_8158 @ CODE:8158 =====

byte FUN_CODE_8158(byte param_1,byte param_2,byte param_3,byte param_4,byte param_5)

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


// ===== FUN_CODE_816b @ CODE:816b =====

undefined1 FUN_CODE_816b(char param_1)

{
  return *(undefined1 *)(param_1 + '\x03');
}


// ===== FUN_CODE_8177 @ CODE:8177 =====

undefined1 FUN_CODE_8177(short param_1)

{
  return *(undefined1 *)(param_1 + 3);
}


// ===== FUN_CODE_8187 @ CODE:8187 =====

void FUN_CODE_8187(undefined1 *param_1,undefined1 param_2,undefined1 param_3,undefined1 param_4,
                  undefined1 param_5)

{
  *param_1 = param_2;
  param_1['\x01'] = param_3;
  param_1['\x02'] = param_4;
  param_1['\x03'] = param_5;
  return;
}


// ===== FUN_CODE_8193 @ CODE:8193 =====

void FUN_CODE_8193(undefined1 *param_1,undefined1 param_2,undefined1 param_3,undefined1 param_4,
                  undefined1 param_5)

{
  *param_1 = param_2;
  param_1[1] = param_3;
  param_1[2] = param_4;
  param_1[3] = param_5;
  return;
}


// ===== FUN_CODE_819f @ CODE:819f =====

void FUN_CODE_819f(undefined2 param_1)

{
  code *UNRECOVERED_JUMPTABLE;
  undefined1 uStackX_0;
  undefined1 in_stack_000000ff;
  
  UNRECOVERED_JUMPTABLE = (code *)CONCAT11(uStackX_0,in_stack_000000ff);
  FUN_CODE_81b6((char)((ushort)param_1 >> 8),(char)param_1);
  FUN_CODE_81b6();
  FUN_CODE_81b6();
  FUN_CODE_81b6();
                    /* WARNING: Could not recover jumptable at 0x81b5. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (*UNRECOVERED_JUMPTABLE)();
  return;
}


// ===== FUN_CODE_81b6 @ CODE:81b6 =====

undefined1 FUN_CODE_81b6(undefined1 *param_1,undefined1 param_2,undefined1 param_3)

{
  *(undefined1 *)CONCAT11(param_2,param_3) = *param_1;
  return *param_1;
}


// ===== FUN_CODE_81d0 @ CODE:81d0 =====

void FUN_CODE_81d0(undefined1 param_1,undefined1 param_2)

{
                    /* WARNING: Could not recover jumptable at 0x81d5. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (*(code *)CONCAT11(param_2,param_1))();
  return;
}


// ===== FUN_CODE_81d6 @ CODE:81d6 =====

undefined1 FUN_CODE_81d6(short param_1)

{
  return *(undefined1 *)(param_1 + 3);
}


// ===== FUN_CODE_8332 @ CODE:8332 =====

byte FUN_CODE_8332(void)

{
  byte bVar1;
  byte bVar2;
  
  bVar2 = SBUF;
  if ((bVar2 >> 2 & 1) == 0) {
    if (_5_6 == '\0') {
      if (6 < DAT_EXTMEM_0756) {
        return DAT_EXTMEM_0756 - 7;
      }
      if (_0_2 != '\x01') {
        return DAT_EXTMEM_0756 - 7;
      }
      _0_2 = '\0';
      EA = 0;
      if (DAT_EXTMEM_0706 == -0x54) {
        DAT_EXTMEM_0706 = '\0';
      }
      if (DAT_EXTMEM_0708 == -0x54) {
        DAT_EXTMEM_0708 = '\0';
      }
      if (DAT_EXTMEM_0709 == -0x54) {
        DAT_EXTMEM_0709 = '\0';
      }
      if (DAT_EXTMEM_070a == -0x54) {
        DAT_EXTMEM_070a = '\0';
      }
      if (DAT_EXTMEM_070b == -0x54) {
        DAT_EXTMEM_070b = '\0';
      }
      if (DAT_EXTMEM_070c == -0x54) {
        DAT_EXTMEM_070c = '\0';
      }
      if (DAT_EXTMEM_070d == 0xac) {
        DAT_EXTMEM_070d = 0;
      }
      DAT_EXTMEM_1120 = DAT_EXTMEM_0706;
      DAT_EXTMEM_1122 = DAT_EXTMEM_0708;
      DAT_EXTMEM_1123 = DAT_EXTMEM_0709;
      cEXTMEM1124 = DAT_EXTMEM_070a;
      cEXTMEM1125 = DAT_EXTMEM_070b;
      cEXTMEM1126 = DAT_EXTMEM_070c;
      bVar2 = DAT_EXTMEM_070d;
    }
    else {
      if (_2_4 == '\0') {
        return bVar2;
      }
      _2_4 = '\0';
      EA = 0;
      DAT_EXTMEM_1120 = '\0';
      DAT_EXTMEM_1122 = '\0';
      DAT_EXTMEM_1123 = '\0';
      cEXTMEM1124 = '\0';
      cEXTMEM1125 = '\0';
      cEXTMEM1126 = '\0';
      bVar2 = 0;
    }
    DAT_EXTMEM_1121 = 0;
    DAT_EXTMEM_0937 = 0x20;
    DAT_EXTMEM_0936 = 0x11;
    DAT_SFR_9c = 8;
    bVar1 = SBUF;
    SBUF = bVar1 | 4;
    EA = 1;
    bEXTMEM1127 = bVar2;
  }
  return bVar2;
}


// ===== FUN_CODE_847a @ CODE:847a =====

char FUN_CODE_847a(void)

{
  byte bVar1;
  char *pcVar2;
  
  _6_6 = 0;
  DAT_EXTMEM_08f9 = 0;
  do {
    for (DAT_EXTMEM_08fa = 0; bVar1 = DAT_EXTMEM_08f9, (DAT_EXTMEM_08fa < 0x17) << 7 < '\0';
        DAT_EXTMEM_08fa = DAT_EXTMEM_08fa + 1) {
      bVar1 = DAT_EXTMEM_08fa + DAT_EXTMEM_08f9 * '\x17';
      DAT_INTMEM_30 = bVar1;
      if (*(char *)CONCAT11(-((CARRY1(DAT_EXTMEM_08f9 * '\x17',DAT_EXTMEM_08fa) << 7) >> 7),
                            DAT_EXTMEM_08f9 * '\x17' + DAT_EXTMEM_08fa) != '\0') {
        *(undefined1 *)CONCAT11('\x01' - (((9 < bVar1) << 7) >> 7),bVar1 - 10) =
             *(undefined1 *)
              ((ushort)*(byte *)CONCAT11('\x02' - (((99 < bVar1) << 7) >> 7),bVar1 + 0x9c) + 0x56);
        if (*(char *)CONCAT11(-(((0x75 < bVar1) << 7) >> 7),bVar1 + 0x8a) == '\0') {
          pcVar2 = (char *)CONCAT11('\x02' - (((99 < bVar1) << 7) >> 7),bVar1 + 0x9c);
          *pcVar2 = *pcVar2 + '\x03';
          if (*(char *)CONCAT11('\x02' - (((99 < bVar1) << 7) >> 7),bVar1 + 0x9c) == '\x03') {
            FUN_CODE_b79e();
            *(byte *)CONCAT11('\x03' - (((0xce < DAT_INTMEM_30) << 7) >> 7),DAT_INTMEM_30 + 0x31) =
                 bVar1;
          }
          if (3 < *(byte *)CONCAT11('\x02' - (((99 < DAT_INTMEM_30) << 7) >> 7),DAT_INTMEM_30 + 0x9c
                                   )) {
            *(undefined1 *)CONCAT11(-(((0x75 < DAT_INTMEM_30) << 7) >> 7),DAT_INTMEM_30 + 0x8a) = 1;
          }
        }
        else {
          _6_6 = 1;
          pcVar2 = (char *)CONCAT11('\x02' - (((99 < bVar1) << 7) >> 7),bVar1 + 0x9c);
          *pcVar2 = *pcVar2 + -3;
          if (*(byte *)CONCAT11('\x02' - (((99 < bVar1) << 7) >> 7),bVar1 + 0x9c) < 4) {
            *(undefined1 *)CONCAT11(-(((0x75 < bVar1) << 7) >> 7),bVar1 + 0x8a) = 0;
            *(undefined1 *)
             CONCAT11(-((CARRY1(DAT_EXTMEM_08f9 * '\x17',DAT_EXTMEM_08fa) << 7) >> 7),
                      DAT_EXTMEM_08f9 * '\x17' + DAT_EXTMEM_08fa) = 0;
            *(undefined1 *)CONCAT11('\x01' - (((9 < bVar1) << 7) >> 7),bVar1 - 10) = 0;
            DAT_EXTMEM_015b = 1;
          }
        }
      }
    }
    DAT_EXTMEM_08f9 = DAT_EXTMEM_08f9 + 1;
  } while (DAT_EXTMEM_08f9 < 6);
  return bVar1 - 5;
}


// ===== FUN_CODE_85b9 @ CODE:85b9 =====

char FUN_CODE_85b9(byte param_1)

{
  char cVar1;
  byte bVar2;
  byte bVar3;
  undefined1 *puVar4;
  char *pcVar5;
  
  DAT_EXTMEM_08f5 = param_1;
  if (BANK3_R3 + 1U <= DAT_INTMEM_57) {
    DAT_INTMEM_57 = 0;
    FUN_CODE_aca8();
    FUN_CODE_bbdd();
    DAT_INTMEM_2d = 0;
    while( true ) {
      if (0x16 < DAT_INTMEM_2d) break;
      bVar2 = (byte)((ushort)DAT_INTMEM_2d * 2);
      bVar3 = DAT_INTMEM_2d;
      FUN_CODE_80f2(0,CONCAT11((char)((ushort)DAT_INTMEM_2d * 2 >> 8) +
                               ('\x03' - (((0x34 < bVar2) << 7) >> 7)),bVar2 - 0x35),2);
      bVar2 = (byte)((ushort)bVar3 * 2);
      if (1 < *(byte *)CONCAT11((char)((ushort)bVar3 * 2 >> 8) +
                                ('\x03' - (((0x34 < bVar2) << 7) >> 7)),bVar2 - 0x35)) {
        bVar3 = (byte)((ushort)DAT_INTMEM_2d * 2);
        puVar4 = (undefined1 *)
                 CONCAT11((char)((ushort)DAT_INTMEM_2d * 2 >> 8) +
                          ('\x03' - (((0x34 < bVar3) << 7) >> 7)),bVar3 - 0x35);
        *puVar4 = 0;
        puVar4[1] = 0;
      }
      DAT_INTMEM_2d = DAT_INTMEM_2d + 1;
    }
    FUN_CODE_ad0a(DAT_INTMEM_2d - 0x17);
  }
  bVar3 = (byte)((ushort)DAT_EXTMEM_08f5 * 2);
  pcVar5 = (char *)CONCAT11((char)((ushort)DAT_EXTMEM_08f5 * 2 >> 8) +
                            ('\x03' - (((0x34 < bVar3) << 7) >> 7)),bVar3 - 0x35);
  cVar1 = *pcVar5;
  bVar3 = pcVar5[1];
  DAT_EXTMEM_08f7 = *(undefined1 *)CONCAT11(cVar1 - (((0x45 < bVar3) << 7) >> 7),bVar3 + 0xba);
  DAT_EXTMEM_08f6 = 0;
  DAT_EXTMEM_08f9 =
       *(undefined1 *)CONCAT11((cVar1 - (((0x19 < bVar3) << 7) >> 7)) + '\x04',bVar3 - 0x1a);
  DAT_EXTMEM_08f8 = 0;
  bVar3 = (byte)((ushort)DAT_EXTMEM_08f5 * 2);
  pcVar5 = (char *)CONCAT11((char)((ushort)DAT_EXTMEM_08f5 * 2 >> 8) +
                            ('\x03' - (((0x34 < bVar3) << 7) >> 7)),bVar3 - 0x35);
  bVar3 = pcVar5[1];
  DAT_EXTMEM_08fb =
       *(undefined1 *)CONCAT11((*pcVar5 - (((0xed < bVar3) << 7) >> 7)) + '\t',bVar3 + 0x12);
  DAT_EXTMEM_08fa = 0;
  DAT_INTMEM_2d = 0;
  while( true ) {
    if (5 < DAT_INTMEM_2d) break;
    DAT_INTMEM_2e = DAT_EXTMEM_08f5 + DAT_INTMEM_2d * '\x17';
    *(undefined1 *)CONCAT11('\x06' - (((0xdf < DAT_INTMEM_2e) << 7) >> 7),DAT_INTMEM_2e + 0x20) =
         DAT_EXTMEM_08f7;
    *(undefined1 *)CONCAT11('\x05' - (((0x74 < DAT_INTMEM_2e) << 7) >> 7),DAT_INTMEM_2e + 0x8b) =
         DAT_EXTMEM_08f9;
    *(undefined1 *)CONCAT11('\x04' - (((9 < DAT_INTMEM_2e) << 7) >> 7),DAT_INTMEM_2e - 10) =
         DAT_EXTMEM_08fb;
    DAT_INTMEM_2d = DAT_INTMEM_2d + 1;
  }
  return DAT_INTMEM_2d - 6;
}


// ===== FUN_CODE_86e8 @ CODE:86e8 =====

void FUN_CODE_86e8(byte param_1)

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
    FUN_CODE_bd5a(0,1);
    return;
  }
                    /* WARNING: Could not recover jumptable at 0x8715. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (*(code *)((ushort)(param_1 * '\x03') + 0x8716))();
  return;
}


// ===== FUN_CODE_8805 @ CODE:8805 =====

byte FUN_CODE_8805(byte param_1)

{
  byte bVar1;
  byte bVar2;
  
  DAT_INTMEM_30 = *(byte *)CONCAT11('\x03' - (((0xce < param_1) << 7) >> 7),param_1 + 0x31);
  DAT_INTMEM_31 =
       ((byte)((&DAT_CODE_03ba)[DAT_INTMEM_30] *
              *(char *)CONCAT11('\x01' - (((0xa3 < param_1) << 7) >> 7),param_1 + 0x5c)) / 100) *
       *(char *)CONCAT11('\x01' - (((9 < param_1) << 7) >> 7),param_1 - 10);
  *(char *)CONCAT11('\x06' - (((0xdf < param_1) << 7) >> 7),param_1 + 0x20) = DAT_INTMEM_31;
  DAT_INTMEM_32 =
       ((byte)((char)FUN_CODE_07e0[(ushort)DAT_INTMEM_30 + 6] *
              *(char *)CONCAT11('\x01' - (((0xa3 < param_1) << 7) >> 7),param_1 + 0x5c)) / 100) *
       *(char *)CONCAT11('\x01' - (((9 < param_1) << 7) >> 7),param_1 - 10);
  *(char *)CONCAT11('\x05' - (((0x74 < param_1) << 7) >> 7),param_1 + 0x8b) = DAT_INTMEM_32;
  DAT_INTMEM_33 =
       ((byte)((&DAT_CODE_0c12)[DAT_INTMEM_30] *
              *(char *)CONCAT11('\x01' - (((0xa3 < param_1) << 7) >> 7),param_1 + 0x5c)) / 100) *
       *(char *)CONCAT11('\x01' - (((9 < param_1) << 7) >> 7),param_1 - 10);
  *(char *)CONCAT11('\x04' - (((9 < param_1) << 7) >> 7),param_1 - 10) = DAT_INTMEM_33;
  bVar2 = DAT_INTMEM_69 ^ 0x10;
  if ((((bVar2 == 0) &&
       (bVar1 = *(byte *)CONCAT11('\x06' - (((0xdf < param_1) << 7) >> 7),param_1 + 0x20),
       bVar2 = bVar1 - 0x1e, bVar1 < 0x1e)) &&
      (bVar1 = *(byte *)CONCAT11('\x05' - (((0x74 < param_1) << 7) >> 7),param_1 + 0x8b),
      bVar2 = bVar1 - 0x1e, bVar1 < 0x1e)) &&
     (bVar1 = *(byte *)CONCAT11('\x04' - (((9 < param_1) << 7) >> 7),param_1 - 10),
     bVar2 = bVar1 - 0x1e, bVar1 < 0x1e)) {
    *(undefined1 *)CONCAT11('\x06' - (((0xdf < param_1) << 7) >> 7),param_1 + 0x20) = 200;
    bVar2 = 200;
    *(undefined1 *)CONCAT11('\x05' - (((0x74 < param_1) << 7) >> 7),param_1 + 0x8b) = 200;
  }
  return bVar2;
}


// ===== FUN_CODE_8b45 @ CODE:8b45 =====

char FUN_CODE_8b45(char param_1)

{
  byte bVar1;
  byte *pbVar2;
  undefined1 *puVar3;
  char *pcVar4;
  
  DAT_EXTMEM_08f5 = param_1;
  if (BANK3_R3 + 1U <= DAT_INTMEM_57) {
    DAT_INTMEM_57 = 0;
    DAT_INTMEM_2e = '\0';
    do {
      for (DAT_INTMEM_2d = 0; DAT_INTMEM_2d < 6; DAT_INTMEM_2d = DAT_INTMEM_2d + 1) {
        DAT_INTMEM_2f = DAT_INTMEM_2d * '\x17' + DAT_INTMEM_2e;
        bVar1 = (byte)((ushort)DAT_INTMEM_2f * 2);
        pbVar2 = (byte *)CONCAT11((char)((ushort)DAT_INTMEM_2f * 2 >> 8) +
                                  ('\x03' - (((0x34 < bVar1) << 7) >> 7)),bVar1 - 0x35);
        if ((byte)-(((pbVar2[1] == 0) << 7) >> 7) <= *pbVar2) {
          if (*(char *)CONCAT11('\x01' - (((9 < DAT_INTMEM_2f) << 7) >> 7),DAT_INTMEM_2f - 10) ==
              '\0') {
            *(undefined1 *)CONCAT11('\x01' - (((9 < DAT_INTMEM_2f) << 7) >> 7),DAT_INTMEM_2f - 10) =
                 0;
            bVar1 = (byte)((ushort)DAT_INTMEM_2f * 2);
            puVar3 = (undefined1 *)
                     CONCAT11((char)((ushort)DAT_INTMEM_2f * 2 >> 8) +
                              ('\x03' - (((0x34 < bVar1) << 7) >> 7)),bVar1 - 0x35);
            *puVar3 = 0;
            puVar3[1] = 0;
            *(undefined1 *)
             CONCAT11('\x03' - (((0xce < DAT_INTMEM_2f) << 7) >> 7),DAT_INTMEM_2f + 0x31) = 0;
          }
          else {
            pcVar4 = (char *)CONCAT11('\x01' - (((9 < DAT_INTMEM_2f) << 7) >> 7),DAT_INTMEM_2f - 10)
            ;
            *pcVar4 = *pcVar4 + -1;
          }
        }
      }
      DAT_INTMEM_2e = DAT_INTMEM_2e + '\x01';
    } while (DAT_INTMEM_2e != '\x17');
  }
  for (DAT_INTMEM_2d = 0; DAT_INTMEM_2d < 6; DAT_INTMEM_2d = DAT_INTMEM_2d + 1) {
    DAT_INTMEM_2f = DAT_EXTMEM_08f5 + DAT_INTMEM_2d * '\x17';
    if ((*(char *)CONCAT11('\x01' - (((9 < DAT_INTMEM_2f) << 7) >> 7),DAT_INTMEM_2f - 10) == '\0')
        << 7 < '\0') {
      *(undefined1 *)CONCAT11('\x06' - (((0xdf < DAT_INTMEM_2f) << 7) >> 7),DAT_INTMEM_2f + 0x20) =
           0;
      *(undefined1 *)CONCAT11('\x05' - (((0x74 < DAT_INTMEM_2f) << 7) >> 7),DAT_INTMEM_2f + 0x8b) =
           0;
      *(undefined1 *)CONCAT11('\x04' - (((9 < DAT_INTMEM_2f) << 7) >> 7),DAT_INTMEM_2f - 10) = 0;
    }
    else if (DAT_INTMEM_5c == '\a') {
      FUN_CODE_8805(DAT_INTMEM_2f);
    }
    else {
      FUN_CODE_9e7f(DAT_INTMEM_2f);
    }
  }
  return DAT_INTMEM_2d - 6;
}


// ===== FUN_CODE_8c56 @ CODE:8c56 =====

byte FUN_CODE_8c56(void)

{
  byte bVar1;
  char cVar2;
  byte bVar3;
  
  cVar2 = BANK1_R3;
  DAT_EXTMEM_0924 = DAT_SFR_92;
  if (DAT_EXTMEM_0924 == 0) {
    DAT_EXTMEM_0925 = DPX;
    bVar3 = DAT_EXTMEM_0925;
    if (DAT_EXTMEM_0925 != 0) {
      if ((DAT_EXTMEM_0925 >> 6 & 1) != 0) {
        bVar3 = DPX;
        DPX = bVar3 & 0xbf;
        bVar3 = DAT_SFR_9a;
        DAT_SFR_9a = bVar3 | 1;
        return DAT_EXTMEM_0925;
      }
      if ((DAT_EXTMEM_0925 >> 5 & 1) != 0) {
        bVar3 = DPX;
        DPX = bVar3 & 0xdf;
        return DAT_EXTMEM_0925;
      }
      if ((DAT_EXTMEM_0925 >> 4 & 1) != 0) {
        bVar3 = DPX;
        DPX = bVar3 & 0xef;
        bVar3 = FUN_CODE_3b56();
LAB_CODE_8d27:
        bVar1 = DAT_SFR_92;
        DAT_SFR_92 = bVar1 & 0xaf;
        bVar1 = HADDR;
        HADDR = bVar1 | 1;
        return bVar3;
      }
      if ((DAT_EXTMEM_0925 >> 2 & 1) != 0) {
        bVar3 = DPX;
        DPX = bVar3 & 0xfb;
        return DAT_EXTMEM_0925;
      }
      if ((DAT_EXTMEM_0925 >> 1 & 1) != 0) {
        bVar3 = DPX;
        DPX = bVar3 & 0xfd;
        return DAT_EXTMEM_0925;
      }
      if ((DAT_EXTMEM_0925 & 1) != 0) {
        bVar3 = DPX;
        DPX = bVar3 & 0xfe;
        bVar3 = FUN_CODE_bc5f();
      }
    }
  }
  else if ((DAT_EXTMEM_0924 >> 3 & 1) == 0) {
    bVar3 = DAT_SFR_92;
    DAT_SFR_92 = bVar3 & 0xe7;
    bVar3 = DAT_SFR_92;
    DAT_SFR_92 = bVar3 & 0x9f;
    if ((char)DAT_EXTMEM_0924 < '\0') {
      bVar3 = DAT_SFR_92;
      DAT_SFR_92 = bVar3 & 0x7f;
      return DAT_EXTMEM_0924;
    }
    if ((DAT_EXTMEM_0924 >> 4 & 1) != 0) {
      bVar3 = FUN_CODE_a624();
      return bVar3;
    }
    if ((DAT_EXTMEM_0924 >> 2 & 1) != 0) {
      bVar3 = DAT_SFR_92;
      DAT_SFR_92 = bVar3 & 0xfb;
      return DAT_EXTMEM_0924;
    }
    if ((DAT_EXTMEM_0924 >> 1 & 1) != 0) {
      bVar3 = DAT_SFR_92;
      DAT_SFR_92 = bVar3 & 0xfd;
      bVar3 = FUN_CODE_c140();
      return bVar3;
    }
    bVar3 = DAT_EXTMEM_0924;
    if ((DAT_EXTMEM_0924 & 1) != 0) {
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
      bVar3 = FUN_CODE_c113();
      goto LAB_CODE_8d27;
    }
  }
  else {
    bVar3 = DAT_SFR_92;
    DAT_SFR_92 = bVar3 & 0xf7;
    _4_1 = 1;
    if (_3_1 != '\0') {
      BANK3_R5 = BANK3_R5 + 1;
      if (BANK3_R5 == 0) {
        BANK3_R4 = BANK3_R4 + 1;
      }
      if (7U - (((BANK3_R5 < 0xd1) << 7) >> 7) <= BANK3_R4) {
        _3_1 = '\0';
        BANK3_R4 = 0;
        BANK3_R5 = 0;
        _3_5 = 1;
      }
    }
    if ((BANK1_R3 != '\0' || BANK1_R2 != '\0') && (BANK1_R3 = BANK1_R3 + -1, cVar2 == '\0')) {
      BANK1_R2 = BANK1_R2 + -1;
    }
    bVar1 = 1 - (((BANK2_R5 < 0xf4) << 7) >> 7);
    bVar3 = BANK2_R4 - bVar1;
    if ((BANK2_R4 < bVar1) << 7 < '\0') {
      BANK2_R5 = BANK2_R5 + 1;
      if (BANK2_R5 == 0) {
        BANK2_R4 = BANK2_R4 + 1;
      }
      return BANK2_R5;
    }
    if (_4_2 == '\x01') {
      _4_2 = 0;
      bVar1 = IEN0;
      IEN0 = bVar1 | 1;
      return bVar3;
    }
  }
  return bVar3;
}


// ===== FUN_CODE_8d4d @ CODE:8d4d =====

char FUN_CODE_8d4d(char param_1)

{
  char cVar1;
  
  DAT_EXTMEM_08f5 = param_1;
  if ((0xfd < BANK3_R3 ^ 0x80U) - (((DAT_INTMEM_57 < BANK3_R3 + 3) << 7) >> 7) < 0x81) {
    cVar1 = '\0';
    do {
      FUN_CODE_4fb4(BANK0_R4);
      cVar1 = cVar1 + '\x01';
    } while (cVar1 != '\x05');
    DAT_INTMEM_57 = 0;
    DAT_EXTMEM_015b = 0;
    FUN_CODE_847a();
  }
  DAT_INTMEM_2d = 0;
  while( true ) {
    if (5 < DAT_INTMEM_2d) break;
    DAT_INTMEM_2f = DAT_EXTMEM_08f5 + DAT_INTMEM_2d * '\x17';
    if (*(char *)CONCAT11('\x01' - (((9 < DAT_INTMEM_2f) << 7) >> 7),DAT_INTMEM_2f - 10) == '\0') {
      *(undefined1 *)CONCAT11('\x06' - (((0xdf < DAT_INTMEM_2f) << 7) >> 7),DAT_INTMEM_2f + 0x20) =
           0;
      *(undefined1 *)CONCAT11('\x05' - (((0x74 < DAT_INTMEM_2f) << 7) >> 7),DAT_INTMEM_2f + 0x8b) =
           0;
      *(undefined1 *)CONCAT11('\x04' - (((9 < DAT_INTMEM_2f) << 7) >> 7),DAT_INTMEM_2f - 10) = 0;
    }
    else {
      DAT_INTMEM_2e =
           *(char *)CONCAT11('\x03' - (((0xce < DAT_INTMEM_2f) << 7) >> 7),DAT_INTMEM_2f + 0x31) *
           '\x03';
      DAT_EXTMEM_08f6 = (&DAT_CODE_03ba)[DAT_INTMEM_2e];
      *(undefined1 *)CONCAT11('\x06' - (((0xdf < DAT_INTMEM_2f) << 7) >> 7),DAT_INTMEM_2f + 0x20) =
           DAT_EXTMEM_08f6;
      DAT_EXTMEM_08f7 = FUN_CODE_07e0[(ushort)DAT_INTMEM_2e + 6];
      *(code *)CONCAT11('\x05' - (((0x74 < DAT_INTMEM_2f) << 7) >> 7),DAT_INTMEM_2f + 0x8b) =
           DAT_EXTMEM_08f7;
      DAT_EXTMEM_08f8 = (&DAT_CODE_0c12)[DAT_INTMEM_2e];
      *(undefined1 *)CONCAT11('\x04' - (((9 < DAT_INTMEM_2f) << 7) >> 7),DAT_INTMEM_2f - 10) =
           DAT_EXTMEM_08f8;
    }
    DAT_INTMEM_2d = DAT_INTMEM_2d + 1;
  }
  return DAT_INTMEM_2d - 6;
}


// ===== FUN_CODE_8e33 @ CODE:8e33 =====

void FUN_CODE_8e33(byte param_1)

{
  undefined1 uVar1;
  byte bVar2;
  char cVar3;
  
  DAT_EXTMEM_08f9 = param_1;
  FUN_CODE_b79e();
  DAT_EXTMEM_081e = param_1;
  if (0xfa < param_1) {
    DAT_EXTMEM_081e = 0xfb;
  }
  bVar2 = DAT_EXTMEM_081e % 0xf;
  DAT_EXTMEM_08fb = bVar2 + 5;
  while (DAT_EXTMEM_08fa = DAT_EXTMEM_081e / 0x2a, DAT_EXTMEM_081d == DAT_EXTMEM_08fa) {
    DAT_EXTMEM_081c = DAT_EXTMEM_081c + 1;
    if (DAT_EXTMEM_081c == 0) {
      DAT_EXTMEM_081b = DAT_EXTMEM_081b + '\x01';
    }
    cVar3 = '\0';
    FUN_CODE_811e(bVar2,0,0,0xff,0xfa,0,0,DAT_EXTMEM_081b,DAT_EXTMEM_081c);
    if (cVar3 < '\0') {
      DAT_EXTMEM_081b = '\0';
      DAT_EXTMEM_081c = 0;
    }
    bVar2 = DAT_EXTMEM_081c;
    FUN_CODE_b7dc(DAT_EXTMEM_081b);
    FUN_CODE_b79e();
    DAT_EXTMEM_081e = bVar2;
    if (0xfa < bVar2) {
      DAT_EXTMEM_081e = 0xfb;
    }
    bVar2 = DAT_EXTMEM_081e % 0x2a;
  }
  cVar3 = DAT_EXTMEM_08fa * '\x17';
  DAT_INTMEM_2f = DAT_EXTMEM_08f9 + cVar3;
  FUN_CODE_b79e();
  *(char *)CONCAT11('\x03' - (((0xce < DAT_INTMEM_2f) << 7) >> 7),DAT_INTMEM_2f + 0x31) = cVar3;
  *(char *)CONCAT11('\b' - (((0xe0 < DAT_INTMEM_2f) << 7) >> 7),DAT_INTMEM_2f + 0x1f) =
       DAT_EXTMEM_08fb;
  uVar1 = 0xff;
  FUN_CODE_9f11(*(undefined1 *)
                 CONCAT11('\x03' - (((0xce < DAT_INTMEM_2f) << 7) >> 7),DAT_INTMEM_2f + 0x31));
  *(undefined1 *)CONCAT11('\x01' - (((0xa3 < DAT_INTMEM_2f) << 7) >> 7),DAT_INTMEM_2f + 0x5c) =
       uVar1;
  return;
}


// ===== FUN_CODE_8ff5 @ CODE:8ff5 =====

void FUN_CODE_8ff5(void)

{
  undefined1 uVar1;
  undefined1 uVar2;
  byte bVar3;
  undefined1 *puVar4;
  
  DAT_INTMEM_2f = 0;
  while( true ) {
    if (0x89 < DAT_INTMEM_2f) break;
    *(undefined1 *)CONCAT11('\x01' - (((9 < DAT_INTMEM_2f) << 7) >> 7),DAT_INTMEM_2f - 10) = 0;
    bVar3 = (byte)((ushort)DAT_INTMEM_2f * 2);
    puVar4 = (undefined1 *)
             CONCAT11((char)((ushort)DAT_INTMEM_2f * 2 >> 8) +
                      ('\x03' - (((0x34 < bVar3) << 7) >> 7)),bVar3 - 0x35);
    *puVar4 = 0;
    puVar4[1] = (&DAT_CODE_891d)[DAT_INTMEM_2f];
    *(undefined1 *)CONCAT11('\x03' - (((0xce < DAT_INTMEM_2f) << 7) >> 7),DAT_INTMEM_2f + 0x31) = 0;
    *(undefined1 *)CONCAT11(-(((0x75 < DAT_INTMEM_2f) << 7) >> 7),DAT_INTMEM_2f + 0x8a) = 0;
    *(undefined1 *)CONCAT11('\x02' - (((99 < DAT_INTMEM_2f) << 7) >> 7),DAT_INTMEM_2f + 0x9c) = 0;
    DAT_INTMEM_2f = DAT_INTMEM_2f + 1;
  }
  bVar3 = DAT_INTMEM_2f;
  FUN_CODE_b79e(DAT_INTMEM_2f + 0x76);
  uVar1 = 0xff;
  DAT_EXTMEM_0331 = bVar3;
  FUN_CODE_9f11(bVar3);
  DAT_EXTMEM_015c = uVar1;
  FUN_CODE_b79e();
  uVar2 = 0xff;
  DAT_EXTMEM_0344 = uVar1;
  FUN_CODE_9f11(uVar1);
  DAT_EXTMEM_016f = uVar2;
  FUN_CODE_b79e();
  uVar1 = 0xff;
  DAT_EXTMEM_0357 = uVar2;
  FUN_CODE_9f11(uVar2);
  DAT_EXTMEM_0182 = uVar1;
  FUN_CODE_b79e();
  uVar2 = 0xff;
  DAT_EXTMEM_036a = uVar1;
  FUN_CODE_9f11(uVar1);
  DAT_EXTMEM_0195 = uVar2;
  FUN_CODE_b79e();
  uVar1 = 0xff;
  DAT_EXTMEM_037d = uVar2;
  FUN_CODE_9f11(uVar2);
  DAT_EXTMEM_01a8 = uVar1;
  FUN_CODE_b79e();
  uVar2 = 0xff;
  DAT_EXTMEM_0390 = uVar1;
  FUN_CODE_9f11(uVar1);
  DAT_EXTMEM_0984 = 0;
  DAT_EXTMEM_0985 = 0;
  DAT_INTMEM_5a = 0;
  DAT_EXTMEM_01bb = uVar2;
  FUN_CODE_9deb(DAT_INTMEM_5c);
  return;
}


// ===== FUN_CODE_90d3 @ CODE:90d3 =====

char FUN_CODE_90d3(void)

{
  char cVar1;
  undefined1 *puVar2;
  undefined1 *puVar3;
  byte *pbVar4;
  byte *pbVar5;
  
  for (DAT_EXTMEM_08e3 = 0; DAT_EXTMEM_08e3 < 6; DAT_EXTMEM_08e3 = DAT_EXTMEM_08e3 + 1) {
    puVar2 = (undefined1 *)
             CONCAT11('\a' - (((0x55 < DAT_EXTMEM_08e3 * '\x04') << 7) >> 7),
                      DAT_EXTMEM_08e3 * '\x04' + 0xaa);
    puVar3 = (undefined1 *)
             CONCAT11('\b' - (((0x38 < DAT_EXTMEM_08e3 * '\x04') << 7) >> 7),
                      DAT_EXTMEM_08e3 * '\x04' - 0x39);
    cVar1 = FUN_CODE_8134(*puVar2,puVar2[1],puVar2[2],puVar2[3],*puVar3,puVar3[1],puVar3[2],
                          puVar3[3]);
    if (cVar1 != '\0') {
      pbVar4 = (byte *)CONCAT11('\a' - (((0x55 < DAT_EXTMEM_08e3 * '\x04') << 7) >> 7),
                                DAT_EXTMEM_08e3 * '\x04' + 0xaa);
      pbVar5 = (byte *)CONCAT11('\b' - (((0x38 < DAT_EXTMEM_08e3 * '\x04') << 7) >> 7),
                                DAT_EXTMEM_08e3 * '\x04' - 0x39);
      FUN_CODE_8187(0x27,*pbVar5 ^ *pbVar4,pbVar5[1] ^ pbVar4[1],pbVar5[2] ^ pbVar4[2],
                    pbVar5[3] ^ pbVar4[3]);
      FUN_CODE_816b(0x27);
      FUN_CODE_8193(0x8e5);
      FUN_CODE_1887(DAT_EXTMEM_08e3);
      puVar2 = (undefined1 *)
               CONCAT11('\b' - (((0x38 < DAT_EXTMEM_08e3 * '\x04') << 7) >> 7),
                        DAT_EXTMEM_08e3 * '\x04' - 0x39);
      FUN_CODE_8193(CONCAT11('\a' - (((0x55 < DAT_EXTMEM_08e3 * '\x04') << 7) >> 7),
                             DAT_EXTMEM_08e3 * '\x04' + 0xaa),*puVar2,puVar2[1],puVar2[2],puVar2[3])
      ;
    }
  }
  return DAT_EXTMEM_08e3 - 6;
}


// ===== FUN_CODE_91b0 @ CODE:91b0 =====

char FUN_CODE_91b0(void)

{
  short sVar1;
  byte bVar2;
  char *pcVar3;
  
  DAT_EXTMEM_08f8 = 0;
  do {
    for (DAT_EXTMEM_08f7 = 0; bVar2 = DAT_EXTMEM_08f8, (DAT_EXTMEM_08f7 < 0x17) << 7 < '\0';
        DAT_EXTMEM_08f7 = DAT_EXTMEM_08f7 + 1) {
      DAT_INTMEM_2e = DAT_EXTMEM_08f7 + DAT_EXTMEM_08f8 * '\x17';
      if (*(char *)CONCAT11(-(((0x75 < DAT_INTMEM_2e) << 7) >> 7),DAT_INTMEM_2e + 0x8a) == '\0') {
        pcVar3 = (char *)CONCAT11('\x01' - (((9 < DAT_INTMEM_2e) << 7) >> 7),DAT_INTMEM_2e - 10);
        *pcVar3 = *pcVar3 + '\x01';
        sVar1 = (ushort)*(byte *)CONCAT11('\b' - (((0xe0 < DAT_INTMEM_2e) << 7) >> 7),
                                          DAT_INTMEM_2e + 0x1f) * 5;
        if (((byte)((ushort)sVar1 >> 8) ^ 0x80) -
            (((*(byte *)CONCAT11('\x01' - (((9 < DAT_INTMEM_2e) << 7) >> 7),DAT_INTMEM_2e - 10) <
              (byte)sVar1) << 7) >> 7) < 0x81) {
          *(undefined1 *)CONCAT11(-(((0x75 < DAT_INTMEM_2e) << 7) >> 7),DAT_INTMEM_2e + 0x8a) = 1;
        }
      }
      else {
        pcVar3 = (char *)CONCAT11('\x01' - (((9 < DAT_INTMEM_2e) << 7) >> 7),DAT_INTMEM_2e - 10);
        *pcVar3 = *pcVar3 + -2;
      }
      if (*(byte *)CONCAT11('\x01' - (((9 < DAT_INTMEM_2e) << 7) >> 7),DAT_INTMEM_2e - 10) < 5) {
        *(undefined1 *)CONCAT11(-(((0x75 < DAT_INTMEM_2e) << 7) >> 7),DAT_INTMEM_2e + 0x8a) = 0;
        *(undefined1 *)CONCAT11('\x03' - (((0xce < DAT_INTMEM_2e) << 7) >> 7),DAT_INTMEM_2e + 0x31)
             = 0;
        DAT_EXTMEM_081d = DAT_EXTMEM_08f8;
        FUN_CODE_8e33(DAT_EXTMEM_08f7);
      }
    }
    DAT_EXTMEM_08f8 = DAT_EXTMEM_08f8 + 1;
  } while (DAT_EXTMEM_08f8 < 6);
  return bVar2 - 5;
}


// ===== FUN_CODE_928b @ CODE:928b =====

void FUN_CODE_928b(void)

{
  byte bVar1;
  
  if ((DAT_EXTMEM_07c5 ^ 0xfe) == 0) {
    if (_0_0 == '\0') {
      DAT_EXTMEM_1183 = 0;
      DAT_EXTMEM_1181 = 0;
      DAT_EXTMEM_1182 = 0;
    }
    else {
      DAT_EXTMEM_1181 = 5;
      DAT_EXTMEM_1182 = DAT_INTMEM_6d;
      DAT_EXTMEM_1183 = DAT_EXTMEM_07a8;
    }
    DAT_EXTMEM_1180 = 0xd;
    DAT_EXTMEM_0937 = 0x80;
    DAT_EXTMEM_0936 = 0x11;
    uEXTMEM1184 = 0;
    uEXTMEM1185 = 0;
    uEXTMEM1186 = 0;
    uEXTMEM1187 = 0;
    DAT_SFR_9d = 8;
    bVar1 = DAT_SFR_9a;
    DAT_SFR_9a = bVar1 | 4;
    DAT_EXTMEM_07c5 = DAT_EXTMEM_07c5 ^ 0xfe;
    return;
  }
  if (((DAT_EXTMEM_07c5 & 0xf0) == 0xe0) && (DAT_EXTMEM_07c8 != '\x04')) {
    _0_2 = 1;
    FUN_CODE_bc9d();
    return;
  }
  if (DAT_EXTMEM_07c8 == '\x04') {
    _0_3 = 1;
    FUN_CODE_c069();
    return;
  }
  if (DAT_EXTMEM_07c8 == '\x0f') {
    _0_4 = 1;
    FUN_CODE_b7eb();
  }
  else if (DAT_EXTMEM_07c8 == '\0') {
    FUN_CODE_5b32();
    return;
  }
  return;
}


// ===== FUN_CODE_9365 @ CODE:9365 =====

void FUN_CODE_9365(void)

{
  undefined1 uVar1;
  undefined1 uVar2;
  byte bVar3;
  undefined1 *puVar4;
  
  DAT_INTMEM_2d = 0;
  while( true ) {
    if (0x89 < DAT_INTMEM_2d) break;
    *(undefined1 *)CONCAT11('\x01' - (((9 < DAT_INTMEM_2d) << 7) >> 7),DAT_INTMEM_2d - 10) = 0;
    bVar3 = (byte)((ushort)DAT_INTMEM_2d * 2);
    puVar4 = (undefined1 *)
             CONCAT11((char)((ushort)DAT_INTMEM_2d * 2 >> 8) +
                      ('\x03' - (((0x34 < bVar3) << 7) >> 7)),bVar3 - 0x35);
    *puVar4 = 0;
    puVar4[1] = (&DAT_CODE_89a7)[DAT_INTMEM_2d];
    *(undefined1 *)CONCAT11('\x03' - (((0xce < DAT_INTMEM_2d) << 7) >> 7),DAT_INTMEM_2d + 0x31) = 0;
    *(undefined1 *)CONCAT11(-(((0x75 < DAT_INTMEM_2d) << 7) >> 7),DAT_INTMEM_2d + 0x8a) = 0;
    *(undefined1 *)CONCAT11('\x02' - (((99 < DAT_INTMEM_2d) << 7) >> 7),DAT_INTMEM_2d + 0x9c) = 0;
    DAT_INTMEM_2d = DAT_INTMEM_2d + 1;
  }
  bVar3 = DAT_INTMEM_2d;
  FUN_CODE_b79e(DAT_INTMEM_2d + 0x76);
  uVar1 = 0xff;
  DAT_EXTMEM_0343 = bVar3;
  FUN_CODE_9f11(bVar3);
  DAT_EXTMEM_016e = uVar1;
  FUN_CODE_b79e();
  uVar2 = 0xff;
  DAT_EXTMEM_0356 = uVar1;
  FUN_CODE_9f11(uVar1);
  DAT_EXTMEM_0181 = uVar2;
  FUN_CODE_b79e();
  uVar1 = 0xff;
  DAT_EXTMEM_0369 = uVar2;
  FUN_CODE_9f11(uVar2);
  DAT_EXTMEM_0194 = uVar1;
  FUN_CODE_b79e();
  uVar2 = 0xff;
  DAT_EXTMEM_037c = uVar1;
  FUN_CODE_9f11(uVar1);
  DAT_EXTMEM_01a7 = uVar2;
  FUN_CODE_b79e();
  uVar1 = 0xff;
  DAT_EXTMEM_038f = uVar2;
  FUN_CODE_9f11(uVar2);
  DAT_EXTMEM_01ba = uVar1;
  FUN_CODE_b79e();
  uVar2 = 0xff;
  DAT_EXTMEM_03a2 = uVar1;
  FUN_CODE_9f11(uVar1);
  DAT_EXTMEM_01cd = uVar2;
  DAT_EXTMEM_0984 = 1;
  DAT_EXTMEM_0985 = 0;
  DAT_INTMEM_5a = 0;
  return;
}


// ===== FUN_CODE_943f @ CODE:943f =====

void FUN_CODE_943f(char param_1,char param_2)

{
  undefined1 uVar1;
  byte bVar2;
  undefined1 *puVar3;
  
  if (DAT_INTMEM_69 == '\x0f') {
    DAT_INTMEM_2c = param_2 * '\x17' + param_1;
    if (_0_0 != '\0') {
      if (*(char *)CONCAT11('\x01' - (((9 < DAT_INTMEM_2c) << 7) >> 7),DAT_INTMEM_2c - 10) == '\0')
      {
        FUN_CODE_b79e();
        *(char *)CONCAT11('\x03' - (((0xce < DAT_INTMEM_2c) << 7) >> 7),DAT_INTMEM_2c + 0x31) =
             param_2;
        uVar1 = 0xff;
        FUN_CODE_9f11(*(undefined1 *)
                       CONCAT11('\x03' - (((0xce < DAT_INTMEM_2c) << 7) >> 7),DAT_INTMEM_2c + 0x31))
        ;
        *(undefined1 *)CONCAT11('\x01' - (((0xa3 < DAT_INTMEM_2c) << 7) >> 7),DAT_INTMEM_2c + 0x5c)
             = uVar1;
      }
      *(undefined1 *)CONCAT11('\x01' - (((9 < DAT_INTMEM_2c) << 7) >> 7),DAT_INTMEM_2c - 10) = 100;
      bVar2 = (byte)((ushort)DAT_INTMEM_2c * 2);
      puVar3 = (undefined1 *)
               CONCAT11((char)((ushort)DAT_INTMEM_2c * 2 >> 8) +
                        ('\x03' - (((0x34 < bVar2) << 7) >> 7)),bVar2 - 0x35);
      *puVar3 = 0;
      puVar3[1] = 0;
      return;
    }
    if (DAT_INTMEM_5a == -0x56) {
      FUN_CODE_b79e();
      *(char *)CONCAT11('\x03' - (((0xce < DAT_INTMEM_2c) << 7) >> 7),DAT_INTMEM_2c + 0x31) =
           param_2;
      uVar1 = 0xff;
      FUN_CODE_9f11(*(undefined1 *)
                     CONCAT11('\x03' - (((0xce < DAT_INTMEM_2c) << 7) >> 7),DAT_INTMEM_2c + 0x31));
      *(undefined1 *)CONCAT11('\x01' - (((0xa3 < DAT_INTMEM_2c) << 7) >> 7),DAT_INTMEM_2c + 0x5c) =
           uVar1;
      DAT_INTMEM_5a = '\0';
    }
    *(undefined1 *)CONCAT11('\x01' - (((9 < DAT_INTMEM_2c) << 7) >> 7),DAT_INTMEM_2c - 10) = 100;
    bVar2 = (byte)((ushort)DAT_INTMEM_2c * 2);
    puVar3 = (undefined1 *)
             CONCAT11((char)((ushort)DAT_INTMEM_2c * 2 >> 8) +
                      ('\x03' - (((0x34 < bVar2) << 7) >> 7)),bVar2 - 0x35);
    *puVar3 = 0;
    puVar3[1] = 1;
  }
  return;
}


// ===== FUN_CODE_9518 @ CODE:9518 =====

void FUN_CODE_9518(void)

{
  byte bVar1;
  
  EA = 0;
  IEN1 = 0;
  _4_0 = 0;
  DAT_EXTMEM_091b = 0;
  _4_3 = 0;
  FUN_CODE_bbdd();
  DAT_EXTMEM_ff94 = 0x10;
  F8_7 = 0;
  DAT_EXTMEM_ff95 = 0x10;
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
  if (_3_6 == '\0') {
    bVar1 = IEN0;
    IEN0 = bVar1 & 0xfd;
    DAT_SFR_ba = 0;
  }
  else {
    _6_4 = '\0';
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
  DAT_SFR_94 = 0x95;
  bVar1 = SADDR;
  SADDR = bVar1 | 1;
  EA = 1;
  DAT_SFR_8e = 0x55;
  bVar1 = PCON;
  PCON = bVar1 | 2;
  IEN1 = 0;
  IEN1 = 0;
  nop();
  nop();
  nop();
  nop();
  nop();
  EA = 0;
  bVar1 = IEN0;
  IEN0 = bVar1 & 0xfd;
  DAT_SFR_ba = 0;
  bVar1 = IPL1;
  IPL1 = bVar1 | 8;
  bVar1 = DAT_SFR_bc;
  DAT_SFR_bc = bVar1 | 2;
  FUN_CODE_bd5a(0,0x14);
  IEN1 = 0;
  DAT_SFR_bc = 3;
  IPL1 = 0xc;
  if (_6_4 == '\0') {
    bVar1 = DAT_SFR_91;
    DAT_SFR_91 = bVar1 & 0xfe;
  }
  else {
    _6_4 = '\0';
    bVar1 = DAT_SFR_91;
    DAT_SFR_91 = bVar1 & 0xfe;
    bVar1 = DAT_SFR_91;
    DAT_SFR_91 = bVar1 | 2;
    FUN_CODE_bd5a(0,0x13,0x88);
  }
  DAT_SFR_94 = 0x5f;
  FUN_CODE_ac41();
  bVar1 = IEN0;
  IEN0 = bVar1 | 1;
  EA = 1;
  return;
}


// ===== FUN_CODE_95da @ CODE:95da =====

char FUN_CODE_95da(char param_1)

{
  DAT_EXTMEM_08f5 = param_1;
  if (BANK3_R3 + 1U <= DAT_INTMEM_57) {
    DAT_INTMEM_57 = 0;
    if (DAT_EXTMEM_0986 == '\x01') {
      FUN_CODE_7009();
      if ((byte)-(((DAT_EXTMEM_03cc < 0xc9) << 7) >> 7) <= DAT_EXTMEM_03cb) {
        DAT_EXTMEM_0986 = '\0';
        FUN_CODE_ab67();
      }
    }
    else if (DAT_EXTMEM_0986 == '\0') {
      FUN_CODE_7009();
      if ((byte)-(((DAT_EXTMEM_04ae < 0xc9) << 7) >> 7) <= DAT_EXTMEM_04ad) {
        DAT_EXTMEM_0986 = '\x01';
        FUN_CODE_aa86();
      }
    }
  }
  DAT_INTMEM_2d = 0;
  while( true ) {
    if (5 < DAT_INTMEM_2d) break;
    DAT_INTMEM_2e = DAT_EXTMEM_08f5 + DAT_INTMEM_2d * '\x17';
    if ((*(char *)CONCAT11('\x01' - (((9 < DAT_INTMEM_2e) << 7) >> 7),DAT_INTMEM_2e - 10) == '\0')
        << 7 < '\0') {
      *(undefined1 *)CONCAT11('\x06' - (((0xdf < DAT_INTMEM_2e) << 7) >> 7),DAT_INTMEM_2e + 0x20) =
           0;
      *(undefined1 *)CONCAT11('\x05' - (((0x74 < DAT_INTMEM_2e) << 7) >> 7),DAT_INTMEM_2e + 0x8b) =
           0;
      *(undefined1 *)CONCAT11('\x04' - (((9 < DAT_INTMEM_2e) << 7) >> 7),DAT_INTMEM_2e - 10) = 0;
    }
    else if (DAT_INTMEM_5c == '\a') {
      FUN_CODE_8805(DAT_INTMEM_2e);
    }
    else {
      FUN_CODE_9e7f(DAT_INTMEM_2e);
    }
    DAT_INTMEM_2d = DAT_INTMEM_2d + 1;
  }
  return DAT_INTMEM_2d - 6;
}


// ===== FUN_CODE_9699 @ CODE:9699 =====

void FUN_CODE_9699(void)

{
  char cVar1;
  undefined1 *puVar2;
  undefined1 *puVar3;
  
  FUN_CODE_9cbd();
  _0_5 = '\0';
  DAT_EXTMEM_08f5 = 0;
  do {
    if (5 < DAT_EXTMEM_08f5) {
LAB_CODE_96f1:
      if (_0_5 == '\0') {
        DAT_EXTMEM_08c6 = DAT_EXTMEM_08c6 + 1;
        if (200 < DAT_EXTMEM_08c6) {
          DAT_EXTMEM_08c6 = 200;
        }
      }
      else {
        DAT_EXTMEM_08c6 = 0;
      }
      for (DAT_EXTMEM_08f5 = 0; DAT_EXTMEM_08f5 < 6; DAT_EXTMEM_08f5 = DAT_EXTMEM_08f5 + 1) {
        puVar2 = (undefined1 *)
                 CONCAT11('\b' - (((0x38 < DAT_EXTMEM_08f5 * '\x04') << 7) >> 7),
                          DAT_EXTMEM_08f5 * '\x04' - 0x39);
        FUN_CODE_8193(CONCAT11('\b' - (((0x51 < DAT_EXTMEM_08f5 * '\x04') << 7) >> 7),
                               DAT_EXTMEM_08f5 * '\x04' + 0xae),*puVar2,puVar2[1],puVar2[2],
                      puVar2[3]);
      }
      if (DAT_EXTMEM_08c6 == 1) {
        _0_1 = 1;
      }
      return;
    }
    puVar2 = (undefined1 *)
             CONCAT11('\b' - (((0x51 < DAT_EXTMEM_08f5 * '\x04') << 7) >> 7),
                      DAT_EXTMEM_08f5 * '\x04' + 0xae);
    puVar3 = (undefined1 *)
             CONCAT11('\b' - (((0x38 < DAT_EXTMEM_08f5 * '\x04') << 7) >> 7),
                      DAT_EXTMEM_08f5 * '\x04' - 0x39);
    cVar1 = FUN_CODE_8134(*puVar2,puVar2[1],puVar2[2],puVar2[3],*puVar3,puVar3[1],puVar3[2],
                          puVar3[3]);
    if (cVar1 != '\0') {
      _0_5 = '\x01';
      goto LAB_CODE_96f1;
    }
    DAT_EXTMEM_08f5 = DAT_EXTMEM_08f5 + 1;
  } while( true );
}


// ===== FUN_CODE_980f @ CODE:980f =====

void FUN_CODE_980f(char param_1,char param_2)

{
  byte bVar1;
  
  DAT_INTMEM_2f = param_2 * '\x17' + param_1;
  *(undefined1 *)(param_2 + '0') = BANK0_R5;
  *(undefined1 *)(param_2 + '6') = BANK0_R6;
  bVar1 = DAT_INTMEM_2f;
  *(undefined1 *)(param_2 + '<') = BANK0_R5;
  *(undefined1 *)CONCAT11('\x04' - (((9 < bVar1) << 7) >> 7),bVar1 - 10) =
       *(undefined1 *)(param_2 + '<');
  *(undefined1 *)CONCAT11('\x06' - (((0xdf < DAT_INTMEM_2f) << 7) >> 7),DAT_INTMEM_2f + 0x20) =
       *(undefined1 *)(param_2 + '0');
  *(undefined1 *)CONCAT11('\x05' - (((0x74 < DAT_INTMEM_2f) << 7) >> 7),DAT_INTMEM_2f + 0x8b) =
       *(undefined1 *)(param_2 + '6');
  return;
}


// ===== FUN_CODE_98c5 @ CODE:98c5 =====

char FUN_CODE_98c5(char param_1)

{
  byte bVar1;
  char cVar2;
  
  DAT_INTMEM_57 = 0;
  DAT_EXTMEM_08f5 = param_1;
  if (DAT_INTMEM_5c == '\a') {
    for (DAT_INTMEM_2d = 0; DAT_INTMEM_2d < 6; DAT_INTMEM_2d = DAT_INTMEM_2d + 1) {
      DAT_INTMEM_2e = DAT_EXTMEM_08f5 + DAT_INTMEM_2d * '\x17';
      FUN_CODE_8805(DAT_INTMEM_2e);
    }
    DAT_EXTMEM_03cc = DAT_EXTMEM_03cc + '\x01';
    if (DAT_EXTMEM_03cc == '\0') {
      DAT_EXTMEM_03cb = DAT_EXTMEM_03cb + 1;
    }
    bVar1 = 2 - (((DAT_EXTMEM_03cc != -1) << 7) >> 7);
    cVar2 = DAT_EXTMEM_03cb - bVar1;
    if (bVar1 <= DAT_EXTMEM_03cb) {
      DAT_EXTMEM_03cb = 0;
      DAT_EXTMEM_03cc = 0;
      return '\0';
    }
  }
  else {
    DAT_EXTMEM_08f6 = DAT_INTMEM_5f;
    DAT_EXTMEM_08f7 = DAT_INTMEM_5e;
    DAT_EXTMEM_08f8 = DAT_INTMEM_5d;
    DAT_INTMEM_2d = 0;
    while( true ) {
      cVar2 = DAT_INTMEM_2d - 6;
      if (5 < DAT_INTMEM_2d) break;
      DAT_INTMEM_2e = DAT_EXTMEM_08f5 + DAT_INTMEM_2d * '\x17';
      *(undefined1 *)CONCAT11('\x06' - (((0xdf < DAT_INTMEM_2e) << 7) >> 7),DAT_INTMEM_2e + 0x20) =
           DAT_EXTMEM_08f8;
      *(undefined1 *)CONCAT11('\x05' - (((0x74 < DAT_INTMEM_2e) << 7) >> 7),DAT_INTMEM_2e + 0x8b) =
           DAT_EXTMEM_08f7;
      *(undefined1 *)CONCAT11('\x04' - (((9 < DAT_INTMEM_2e) << 7) >> 7),DAT_INTMEM_2e - 10) =
           DAT_EXTMEM_08f6;
      DAT_INTMEM_2d = DAT_INTMEM_2d + 1;
    }
  }
  return cVar2;
}


// ===== FUN_CODE_9a30 @ CODE:9a30 =====

void FUN_CODE_9a30(void)

{
  byte bVar1;
  undefined1 uVar2;
  undefined1 uVar3;
  byte bVar4;
  undefined1 *puVar5;
  
  bVar1 = 0;
  do {
    bVar4 = (byte)((ushort)bVar1 * 2);
    puVar5 = (undefined1 *)
             CONCAT11((char)((ushort)bVar1 * 2 >> 8) + ('\x03' - (((0x34 < bVar4) << 7) >> 7)),
                      bVar4 - 0x35);
    *puVar5 = 0;
    puVar5[1] = (&DAT_CODE_7cf9)[bVar1];
    *(undefined1 *)CONCAT11(-(((0x75 < bVar1) << 7) >> 7),bVar1 + 0x8a) = 0;
    *(undefined1 *)CONCAT11('\x02' - (((99 < bVar1) << 7) >> 7),bVar1 + 0x9c) = 0;
    *(undefined1 *)CONCAT11('\x01' - (((9 < bVar1) << 7) >> 7),bVar1 - 10) = 0;
    bVar1 = bVar1 + 1;
  } while (bVar1 != 0x8a);
  FUN_CODE_b79e();
  uVar2 = 0xff;
  DAT_EXTMEM_0366 = bVar1;
  FUN_CODE_9f11(bVar1);
  DAT_EXTMEM_0191 = uVar2;
  FUN_CODE_b79e();
  uVar3 = 0xff;
  DAT_EXTMEM_0367 = uVar2;
  FUN_CODE_9f11(uVar2);
  DAT_EXTMEM_0192 = uVar3;
  FUN_CODE_b79e();
  uVar2 = 0xff;
  DAT_EXTMEM_0368 = uVar3;
  FUN_CODE_9f11(uVar3);
  DAT_EXTMEM_0193 = uVar2;
  FUN_CODE_b79e();
  uVar3 = 0xff;
  DAT_EXTMEM_037e = uVar2;
  FUN_CODE_9f11(uVar2);
  DAT_EXTMEM_01a9 = uVar3;
  FUN_CODE_b79e();
  uVar2 = 0xff;
  DAT_EXTMEM_037f = uVar3;
  FUN_CODE_9f11(uVar3);
  DAT_EXTMEM_01aa = uVar2;
  DAT_EXTMEM_0988 = 2;
  DAT_EXTMEM_0989 = 0;
  DAT_INTMEM_5a = 0;
  DAT_INTMEM_6c = 0;
  return;
}


// ===== FUN_CODE_9c24 @ CODE:9c24 =====

char FUN_CODE_9c24(undefined1 param_1)

{
  byte bVar1;
  byte bVar2;
  byte *pbVar3;
  undefined1 *puVar4;
  
  DAT_EXTMEM_08f5 = param_1;
  if (BANK3_R3 + 1U <= DAT_INTMEM_57) {
    DAT_INTMEM_57 = 0;
    FUN_CODE_aca8();
    FUN_CODE_bbdd();
    DAT_EXTMEM_08f6 = 0;
    while( true ) {
      if (0x89 < DAT_EXTMEM_08f6) break;
      bVar1 = (byte)((ushort)DAT_EXTMEM_08f6 * 2);
      bVar2 = DAT_EXTMEM_08f6;
      FUN_CODE_80f2(0,CONCAT11((char)((ushort)DAT_EXTMEM_08f6 * 2 >> 8) +
                               ('\x03' - (((0x34 < bVar1) << 7) >> 7)),bVar1 - 0x35),3);
      bVar1 = (byte)((ushort)bVar2 * 2);
      pbVar3 = (byte *)CONCAT11((char)((ushort)bVar2 * 2 >> 8) +
                                ('\x03' - (((0x34 < bVar1) << 7) >> 7)),bVar1 - 0x35);
      if (3U - (((pbVar3[1] < 0xbb) << 7) >> 7) <= *pbVar3) {
        bVar2 = (byte)((ushort)DAT_EXTMEM_08f6 * 2);
        puVar4 = (undefined1 *)
                 CONCAT11((char)((ushort)DAT_EXTMEM_08f6 * 2 >> 8) +
                          ('\x03' - (((0x34 < bVar2) << 7) >> 7)),bVar2 - 0x35);
        *puVar4 = 0;
        puVar4[1] = 0;
      }
      DAT_EXTMEM_08f6 = DAT_EXTMEM_08f6 + 1;
    }
    FUN_CODE_ad0a(DAT_EXTMEM_08f6 + 0x76);
  }
  DAT_EXTMEM_08f6 = 0;
  while( true ) {
    if (5 < DAT_EXTMEM_08f6) break;
    FUN_CODE_980f(DAT_EXTMEM_08f5,DAT_EXTMEM_08f6);
    DAT_EXTMEM_08f6 = DAT_EXTMEM_08f6 + 1;
  }
  return DAT_EXTMEM_08f6 - 6;
}


// ===== FUN_CODE_9cbd @ CODE:9cbd =====

void FUN_CODE_9cbd(void)

{
  char cVar1;
  byte bVar2;
  byte bVar3;
  byte bVar4;
  byte bVar5;
  char cVar6;
  byte *pbVar7;
  
  FUN_CODE_b1f2();
  DAT_INTMEM_2d = 0;
  while( true ) {
    if (0x16 < DAT_INTMEM_2d) break;
    FUN_CODE_86e8(DAT_INTMEM_2d - 0x17,DAT_INTMEM_2d);
    DAT_INTMEM_2e = 0;
    while( true ) {
      cVar1 = '.';
      cVar6 = (DAT_INTMEM_2e < 6) << 7;
      if (DAT_INTMEM_2e >= 6) break;
      FUN_CODE_be2a(DAT_INTMEM_2e - 6,DAT_INTMEM_2e);
      *(char *)(cVar1 + '\x01') = -(cVar6 >> 7);
      if (-(cVar6 >> 7) != '\0') {
        bVar5 = 1;
        bVar4 = 0;
        bVar3 = 0;
        bVar2 = 0;
        FUN_CODE_8158(DAT_INTMEM_2d,DAT_INTMEM_2d,0,0,0,1);
        pbVar7 = (byte *)CONCAT11('\b' - (((0x38 < DAT_INTMEM_2e * '\x04') << 7) >> 7),
                                  DAT_INTMEM_2e * '\x04' - 0x39);
        FUN_CODE_8193(CONCAT11('\b' - (((0x38 < DAT_INTMEM_2e * '\x04') << 7) >> 7),
                               DAT_INTMEM_2e * '\x04' - 0x39),*pbVar7 | bVar2,pbVar7[1] | bVar3,
                      pbVar7[2] | bVar4,pbVar7[3] | bVar5);
      }
      DAT_INTMEM_2e = DAT_INTMEM_2e + 1;
    }
    DAT_INTMEM_2d = DAT_INTMEM_2d + 1;
  }
  bVar2 = RXFLG;
  RXFLG = bVar2 | 0x7f;
  bVar2 = CCAP3L;
  CCAP3L = bVar2 | 0x7f;
  RXCNTH = 0xff;
  DAT_SFR_ef = 0xff;
  bVar2 = RXCNTL;
  RXCNTL = bVar2 | 0x87;
  bVar2 = CCAP4L;
  CCAP4L = bVar2 | 0x87;
  bVar2 = EPCON;
  EPCON = bVar2 | 0xe0;
  bVar2 = CL;
  CL = bVar2 | 0xe0;
  bVar2 = PSW1;
  PSW1 = bVar2 | 0x10;
  bVar2 = CMOD;
  CMOD = bVar2 | 0x10;
  return;
}


// ===== FUN_CODE_9d55 @ CODE:9d55 =====

void FUN_CODE_9d55(void)

{
  DAT_EXTMEM_0970 = 0;
  FUN_CODE_bbdd();
  if (0x12 < DAT_INTMEM_69) {
    return;
  }
                    /* WARNING: Could not recover jumptable at 0x9d6e. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (*(code *)((ushort)(DAT_INTMEM_69 * '\x03') + 0x9d6f))();
  return;
}


// ===== FUN_CODE_9deb @ CODE:9deb =====

void FUN_CODE_9deb(byte param_1)

{
  if (7 < param_1) {
    return;
  }
                    /* WARNING: Could not recover jumptable at 0x9dfa. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (*(code *)((ushort)(param_1 * '\x03') + 0x9dfb))();
  return;
}


// ===== FUN_CODE_9e7f @ CODE:9e7f =====

void FUN_CODE_9e7f(byte param_1)

{
  char cVar1;
  
  cVar1 = DAT_EXTMEM_04f5;
  DAT_INTMEM_30 =
       ((byte)(DAT_INTMEM_5d * DAT_EXTMEM_04f5) / 100) *
       *(char *)CONCAT11('\x01' - (((9 < param_1) << 7) >> 7),param_1 - 10);
  *(char *)CONCAT11('\x06' - (((0xdf < param_1) << 7) >> 7),param_1 + 0x20) = DAT_INTMEM_30;
  DAT_INTMEM_31 =
       ((byte)(DAT_INTMEM_5e * cVar1) / 100) *
       *(char *)CONCAT11('\x01' - (((9 < param_1) << 7) >> 7),param_1 - 10);
  *(char *)CONCAT11('\x05' - (((0x74 < param_1) << 7) >> 7),param_1 + 0x8b) = DAT_INTMEM_31;
  DAT_INTMEM_32 =
       ((byte)(DAT_INTMEM_5f * DAT_EXTMEM_04f5) / 100) *
       *(char *)CONCAT11('\x01' - (((9 < param_1) << 7) >> 7),param_1 - 10);
  *(char *)CONCAT11('\x04' - (((9 < param_1) << 7) >> 7),param_1 - 10) = DAT_INTMEM_32;
  return;
}


// ===== FUN_CODE_9f11 @ CODE:9f11 =====

char FUN_CODE_9f11(byte param_1,byte param_2)

{
  byte bVar1;
  
  DAT_EXTMEM_08fd = (&DAT_CODE_03ba)[param_1];
  DAT_EXTMEM_08fe = FUN_CODE_07e0[(ushort)param_1 + 6];
  DAT_EXTMEM_08ff = (&DAT_CODE_0c12)[param_1];
  if (DAT_EXTMEM_08fd < 4) {
    DAT_EXTMEM_08fd = 4;
  }
  if ((byte)DAT_EXTMEM_08fe < 4) {
    DAT_EXTMEM_08fe = (code)0x4;
  }
  if (DAT_EXTMEM_08ff < 4) {
    DAT_EXTMEM_08ff = 4;
  }
  DAT_EXTMEM_0900 = param_2;
  if (DAT_EXTMEM_08fd != 0) {
    DAT_EXTMEM_0900 = param_2 / DAT_EXTMEM_08fd;
  }
  bVar1 = param_2;
  if (DAT_EXTMEM_08fe != (code)0x0) {
    bVar1 = param_2 / (byte)DAT_EXTMEM_08fe;
  }
  if (DAT_EXTMEM_08ff != 0) {
    param_2 = param_2 / DAT_EXTMEM_08ff;
  }
  DAT_EXTMEM_0902 = param_2;
  DAT_EXTMEM_0901 = bVar1;
  if (DAT_EXTMEM_0900 < bVar1) {
    DAT_EXTMEM_0901 = BANK0_R5;
    DAT_EXTMEM_0900 = bVar1;
  }
  return DAT_EXTMEM_0901 - (param_2 + 1);
}


// ===== FUN_CODE_9fa3 @ CODE:9fa3 =====

char FUN_CODE_9fa3(undefined1 param_1)

{
  byte bVar1;
  byte bVar2;
  byte *pbVar3;
  undefined1 *puVar4;
  
  DAT_EXTMEM_08f5 = param_1;
  if (BANK3_R3 + 1U <= DAT_INTMEM_57) {
    DAT_INTMEM_57 = 0;
    FUN_CODE_aca8();
    FUN_CODE_bbdd();
    DAT_INTMEM_2d = 0;
    while( true ) {
      if (0x89 < DAT_INTMEM_2d) break;
      bVar1 = (byte)((ushort)DAT_INTMEM_2d * 2);
      bVar2 = DAT_INTMEM_2d;
      FUN_CODE_80f2(0,CONCAT11((char)((ushort)DAT_INTMEM_2d * 2 >> 8) +
                               ('\x03' - (((0x34 < bVar1) << 7) >> 7)),bVar1 - 0x35),3);
      bVar1 = (byte)((ushort)bVar2 * 2);
      pbVar3 = (byte *)CONCAT11((char)((ushort)bVar2 * 2 >> 8) +
                                ('\x03' - (((0x34 < bVar1) << 7) >> 7)),bVar1 - 0x35);
      if (3U - (((pbVar3[1] < 0xbb) << 7) >> 7) <= *pbVar3) {
        bVar2 = (byte)((ushort)DAT_INTMEM_2d * 2);
        puVar4 = (undefined1 *)
                 CONCAT11((char)((ushort)DAT_INTMEM_2d * 2 >> 8) +
                          ('\x03' - (((0x34 < bVar2) << 7) >> 7)),bVar2 - 0x35);
        *puVar4 = 0;
        puVar4[1] = 0;
      }
      DAT_INTMEM_2d = DAT_INTMEM_2d + 1;
    }
    FUN_CODE_ad0a(DAT_INTMEM_2d + 0x76);
  }
  DAT_INTMEM_2e = 0;
  while( true ) {
    if (5 < DAT_INTMEM_2e) break;
    FUN_CODE_980f(DAT_EXTMEM_08f5,DAT_INTMEM_2e);
    DAT_INTMEM_2e = DAT_INTMEM_2e + 1;
  }
  return DAT_INTMEM_2e - 6;
}


// ===== FUN_CODE_a031 @ CODE:a031 =====

char FUN_CODE_a031(undefined1 param_1)

{
  byte bVar1;
  byte bVar2;
  byte *pbVar3;
  undefined1 *puVar4;
  
  DAT_EXTMEM_08f5 = param_1;
  if (BANK3_R3 + 1U <= DAT_INTMEM_57) {
    DAT_INTMEM_57 = 0;
    FUN_CODE_aca8();
    FUN_CODE_bbdd();
    DAT_INTMEM_2d = 0;
    while( true ) {
      if (0x89 < DAT_INTMEM_2d) break;
      bVar1 = (byte)((ushort)DAT_INTMEM_2d * 2);
      bVar2 = DAT_INTMEM_2d;
      FUN_CODE_80f2(0,CONCAT11((char)((ushort)DAT_INTMEM_2d * 2 >> 8) +
                               ('\x03' - (((0x34 < bVar1) << 7) >> 7)),bVar1 - 0x35),2);
      bVar1 = (byte)((ushort)bVar2 * 2);
      pbVar3 = (byte *)CONCAT11((char)((ushort)bVar2 * 2 >> 8) +
                                ('\x03' - (((0x34 < bVar1) << 7) >> 7)),bVar1 - 0x35);
      if (3U - (((pbVar3[1] < 0xbb) << 7) >> 7) <= *pbVar3) {
        bVar2 = (byte)((ushort)DAT_INTMEM_2d * 2);
        puVar4 = (undefined1 *)
                 CONCAT11((char)((ushort)DAT_INTMEM_2d * 2 >> 8) +
                          ('\x03' - (((0x34 < bVar2) << 7) >> 7)),bVar2 - 0x35);
        *puVar4 = 0;
        puVar4[1] = 0;
      }
      DAT_INTMEM_2d = DAT_INTMEM_2d + 1;
    }
    FUN_CODE_ad0a(DAT_INTMEM_2d + 0x76);
  }
  DAT_INTMEM_2e = 0;
  while( true ) {
    if (5 < DAT_INTMEM_2e) break;
    FUN_CODE_980f(DAT_EXTMEM_08f5,DAT_INTMEM_2e);
    DAT_INTMEM_2e = DAT_INTMEM_2e + 1;
  }
  return DAT_INTMEM_2e - 6;
}


// ===== FUN_CODE_a0bf @ CODE:a0bf =====

void FUN_CODE_a0bf(char param_1,char param_2)

{
  byte bVar1;
  
  if (DAT_INTMEM_69 == '\x13') {
    param_1 = -0x28;
    param_2 = '\0';
  }
  else if (DAT_INTMEM_69 == ' ') {
    param_1 = -0x14;
    param_2 = '\0';
  }
  else if (DAT_INTMEM_69 == '!') {
    param_1 = -0x1a;
    param_2 = '\0';
  }
  else if (DAT_INTMEM_69 == '\"') {
    param_1 = -0x18;
    param_2 = '\0';
  }
  else if (DAT_INTMEM_69 == '#') {
    param_1 = -0x16;
    param_2 = '\0';
  }
  else if (DAT_INTMEM_69 == '$') {
    param_1 = -0x26;
    param_2 = '\0';
  }
  bVar1 = 0;
  do {
    *(undefined1 *)CONCAT11('\x04' - (((9 < bVar1) << 7) >> 7),bVar1 - 10) =
         *(undefined1 *)CONCAT11(param_1,param_2);
    if (param_2 + '\x01' == '\0') {
      param_1 = param_1 + '\x01';
    }
    *(undefined1 *)CONCAT11('\x05' - (((0x74 < bVar1) << 7) >> 7),bVar1 + 0x8b) =
         *(undefined1 *)CONCAT11(param_1,param_2 + '\x01');
    if (param_2 + '\x02' == '\0') {
      param_1 = param_1 + '\x01';
    }
    *(undefined1 *)CONCAT11('\x06' - (((0xdf < bVar1) << 7) >> 7),bVar1 + 0x20) =
         *(undefined1 *)CONCAT11(param_1,param_2 + '\x02');
    param_2 = param_2 + '\x03';
    if (param_2 == '\0') {
      param_1 = param_1 + '\x01';
    }
    bVar1 = bVar1 + 1;
  } while (bVar1 != 0x8a);
  return;
}


// ===== FUN_CODE_a14c @ CODE:a14c =====

char FUN_CODE_a14c(undefined1 param_1)

{
  byte bVar1;
  byte bVar2;
  byte *pbVar3;
  undefined1 *puVar4;
  
  DAT_EXTMEM_08f5 = param_1;
  if (BANK3_R3 + 1U <= DAT_INTMEM_57) {
    FUN_CODE_aca8(DAT_INTMEM_57 - (BANK3_R3 + 1U));
    FUN_CODE_bbdd();
    DAT_INTMEM_57 = 0;
    DAT_INTMEM_2d = 0;
    while( true ) {
      if (0x89 < DAT_INTMEM_2d) break;
      bVar1 = (byte)((ushort)DAT_INTMEM_2d * 2);
      bVar2 = DAT_INTMEM_2d;
      FUN_CODE_80f2(0,CONCAT11((char)((ushort)DAT_INTMEM_2d * 2 >> 8) +
                               ('\x03' - (((0x34 < bVar1) << 7) >> 7)),bVar1 - 0x35),1);
      bVar1 = (byte)((ushort)bVar2 * 2);
      pbVar3 = (byte *)CONCAT11((char)((ushort)bVar2 * 2 >> 8) +
                                ('\x03' - (((0x34 < bVar1) << 7) >> 7)),bVar1 - 0x35);
      if (3U - (((pbVar3[1] < 0xbb) << 7) >> 7) <= *pbVar3) {
        bVar2 = (byte)((ushort)DAT_INTMEM_2d * 2);
        puVar4 = (undefined1 *)
                 CONCAT11((char)((ushort)DAT_INTMEM_2d * 2 >> 8) +
                          ('\x03' - (((0x34 < bVar2) << 7) >> 7)),bVar2 - 0x35);
        *puVar4 = 0;
        puVar4[1] = 0;
      }
      DAT_INTMEM_2d = DAT_INTMEM_2d + 1;
    }
    FUN_CODE_ad0a(DAT_INTMEM_2d + 0x76);
  }
  DAT_INTMEM_2e = 0;
  while( true ) {
    if (5 < DAT_INTMEM_2e) break;
    FUN_CODE_980f(DAT_EXTMEM_08f5,DAT_INTMEM_2e);
    DAT_INTMEM_2e = DAT_INTMEM_2e + 1;
  }
  return DAT_INTMEM_2e - 6;
}


// ===== FUN_CODE_a1d9 @ CODE:a1d9 =====

void FUN_CODE_a1d9(void)

{
  byte bVar1;
  undefined1 uVar2;
  undefined1 uVar3;
  byte bVar4;
  undefined1 *puVar5;
  
  bVar1 = 0;
  do {
    *(undefined1 *)CONCAT11('\x01' - (((9 < bVar1) << 7) >> 7),bVar1 - 10) = 0;
    bVar4 = (byte)((ushort)bVar1 * 2);
    puVar5 = (undefined1 *)
             CONCAT11((char)((ushort)bVar1 * 2 >> 8) + ('\x03' - (((0x34 < bVar4) << 7) >> 7)),
                      bVar4 - 0x35);
    *puVar5 = 0;
    puVar5[1] = (&DAT_CODE_7be5)[bVar1];
    *(undefined1 *)CONCAT11('\x03' - (((0xce < bVar1) << 7) >> 7),bVar1 + 0x31) = 0;
    *(undefined1 *)CONCAT11(-(((0x75 < bVar1) << 7) >> 7),bVar1 + 0x8a) = 0;
    *(undefined1 *)CONCAT11('\x02' - (((99 < bVar1) << 7) >> 7),bVar1 + 0x9c) = 0;
    bVar1 = bVar1 + 1;
  } while (bVar1 != 0x8a);
  FUN_CODE_b79e();
  uVar2 = 0xff;
  DAT_EXTMEM_0331 = bVar1;
  FUN_CODE_9f11(bVar1);
  DAT_EXTMEM_015c = uVar2;
  FUN_CODE_b79e();
  uVar3 = 0xff;
  DAT_EXTMEM_03ba = uVar2;
  FUN_CODE_9f11(uVar2);
  DAT_EXTMEM_01e5 = uVar3;
  DAT_INTMEM_6b = 0;
  DAT_EXTMEM_0988 = 0;
  DAT_EXTMEM_0989 = 0;
  DAT_INTMEM_5a = 0;
  DAT_INTMEM_6a = 0;
  DAT_INTMEM_6c = 0;
  return;
}


// ===== FUN_CODE_a48c @ CODE:a48c =====

byte FUN_CODE_a48c(void)

{
  bool bVar1;
  byte bVar2;
  byte bVar3;
  byte *pbVar4;
  
  if (DAT_EXTMEM_0923 == 0 && DAT_EXTMEM_0922 == 0) {
    DAT_EXTMEM_0935 = 2;
    bVar3 = DAT_SFR_9b;
    DAT_SFR_9b = bVar3 & 0xf0;
    bVar3 = 2;
  }
  else {
    if ((DAT_EXTMEM_0922 < (byte)-(((DAT_EXTMEM_0923 < 9) << 7) >> 7)) << 7 < '\0') {
      bVar3 = DAT_EXTMEM_0922;
      if (DAT_EXTMEM_0922 == 0) {
        bVar3 = DAT_EXTMEM_0923 ^ 8;
      }
      if (bVar3 != 0) {
        DAT_EXTMEM_0935 = 2;
        FUN_CODE_b1a9(DAT_EXTMEM_0923,DAT_EXTMEM_0928,DAT_EXTMEM_0929);
        bVar3 = DAT_SFR_9b;
        DAT_SFR_9b = bVar3 & 0xf0;
        bVar3 = DAT_SFR_9b;
        DAT_SFR_9b = bVar3 | DAT_EXTMEM_0923;
        bVar3 = DAT_EXTMEM_0923;
        goto LAB_CODE_a511;
      }
      FUN_CODE_b19e(1);
      bVar3 = 0;
      DAT_EXTMEM_0922 = 0;
      pbVar4 = &DAT_EXTMEM_0923;
    }
    else {
      DAT_EXTMEM_0935 = 1;
      DAT_EXTMEM_0923 = DAT_EXTMEM_0923 - 8;
      FUN_CODE_b19e();
      bVar1 = 0xf7 < DAT_EXTMEM_0929;
      DAT_EXTMEM_0929 = DAT_EXTMEM_0929 + 8;
      pbVar4 = &DAT_EXTMEM_0928;
      bVar3 = DAT_EXTMEM_0928 - ((bVar1 << 7) >> 7);
    }
    *pbVar4 = bVar3;
    bVar2 = DAT_SFR_9b;
    DAT_SFR_9b = bVar2 & 0xf0;
    bVar2 = DAT_SFR_9b;
    DAT_SFR_9b = bVar2 | 8;
  }
LAB_CODE_a511:
  bVar2 = DPX;
  DPX = bVar2 & 0xfe;
  return bVar3;
}


// ===== FUN_CODE_a515 @ CODE:a515 =====

void FUN_CODE_a515(void)

{
  byte bVar1;
  undefined1 uVar2;
  undefined1 uVar3;
  byte bVar4;
  undefined1 *puVar5;
  
  bVar1 = 0;
  do {
    *(undefined1 *)CONCAT11('\x01' - (((9 < bVar1) << 7) >> 7),bVar1 - 10) = 0;
    bVar4 = (byte)((ushort)bVar1 * 2);
    puVar5 = (undefined1 *)
             CONCAT11((char)((ushort)bVar1 * 2 >> 8) + ('\x03' - (((0x34 < bVar4) << 7) >> 7)),
                      bVar4 - 0x35);
    *puVar5 = 0;
    puVar5[1] = (&DAT_CODE_7be5)[bVar1];
    *(undefined1 *)CONCAT11('\x03' - (((0xce < bVar1) << 7) >> 7),bVar1 + 0x31) = 0;
    *(undefined1 *)CONCAT11(-(((0x75 < bVar1) << 7) >> 7),bVar1 + 0x8a) = 0;
    *(undefined1 *)CONCAT11('\x02' - (((99 < bVar1) << 7) >> 7),bVar1 + 0x9c) = 0;
    bVar1 = bVar1 + 1;
  } while (bVar1 != 0x8a);
  FUN_CODE_b79e();
  uVar2 = 0xff;
  DAT_EXTMEM_0331 = bVar1;
  FUN_CODE_9f11(bVar1);
  DAT_EXTMEM_015c = uVar2;
  FUN_CODE_b79e();
  uVar3 = 0xff;
  DAT_EXTMEM_03a2 = uVar2;
  FUN_CODE_9f11(uVar2);
  DAT_EXTMEM_01cd = uVar3;
  DAT_INTMEM_6b = 0;
  DAT_EXTMEM_0988 = 0;
  DAT_EXTMEM_0989 = 0;
  DAT_INTMEM_5a = 0;
  DAT_INTMEM_6c = 0;
  return;
}


// ===== FUN_CODE_a59d @ CODE:a59d =====

char FUN_CODE_a59d(char param_1)

{
  DAT_EXTMEM_08f5 = param_1;
  if (BANK3_R3 + 1U <= DAT_INTMEM_57) {
    DAT_INTMEM_57 = 0;
    FUN_CODE_91b0();
  }
  DAT_EXTMEM_08f6 = 0;
  while( true ) {
    if (5 < DAT_EXTMEM_08f6) break;
    DAT_INTMEM_2d = DAT_EXTMEM_08f5 + DAT_EXTMEM_08f6 * '\x17';
    if ((*(char *)CONCAT11('\x01' - (((9 < DAT_INTMEM_2d) << 7) >> 7),DAT_INTMEM_2d - 10) == '\0')
        << 7 < '\0') {
      *(undefined1 *)CONCAT11('\x06' - (((0xdf < DAT_INTMEM_2d) << 7) >> 7),DAT_INTMEM_2d + 0x20) =
           0;
      *(undefined1 *)CONCAT11('\x05' - (((0x74 < DAT_INTMEM_2d) << 7) >> 7),DAT_INTMEM_2d + 0x8b) =
           0;
      *(undefined1 *)CONCAT11('\x04' - (((9 < DAT_INTMEM_2d) << 7) >> 7),DAT_INTMEM_2d - 10) = 0;
    }
    else if (DAT_INTMEM_5c == '\a') {
      FUN_CODE_8805(DAT_INTMEM_2d);
    }
    else {
      FUN_CODE_9e7f(DAT_INTMEM_2d);
    }
    DAT_EXTMEM_08f6 = DAT_EXTMEM_08f6 + 1;
  }
  return DAT_EXTMEM_08f6 - 6;
}


// ===== FUN_CODE_a624 @ CODE:a624 =====

void FUN_CODE_a624(void)

{
  bool bVar1;
  byte bVar2;
  short sVar3;
  
  DAT_EXTMEM_0903 = 0x5f;
  DAT_EXTMEM_0904 = 0x8d;
  FUN_CODE_a72e();
  DAT_EXTMEM_092a = '\0';
  while( true ) {
    bVar2 = DAT_EXTMEM_0903;
    if ((*(char *)CONCAT11(DAT_EXTMEM_0903,DAT_EXTMEM_0904) == BANK0_R4) &&
       (bVar2 = DAT_EXTMEM_090f,
       *(char *)(CONCAT11(DAT_EXTMEM_0903,DAT_EXTMEM_0904) + 1) == BANK0_R6)) break;
    bVar1 = 0xfc < DAT_EXTMEM_0904;
    DAT_EXTMEM_0904 = DAT_EXTMEM_0904 + 3;
    DAT_EXTMEM_0903 = DAT_EXTMEM_0903 - ((bVar1 << 7) >> 7);
    if (0x5fU - (((DAT_EXTMEM_0904 < 0xcc) << 7) >> 7) <= DAT_EXTMEM_0903) {
LAB_CODE_a68e:
      sVar3 = CONCAT11('_' - (((0xb1U < (byte)(DAT_EXTMEM_092a * '\x03')) << 7) >> 7),
                       DAT_EXTMEM_092a * '\x03' + 0x4e);
      FUN_CODE_81d0(*(undefined1 *)(sVar3 + 2),*(undefined1 *)(sVar3 + 1),DAT_EXTMEM_090e,bVar2);
      return;
    }
  }
  DAT_EXTMEM_092a = *(char *)(CONCAT11(DAT_EXTMEM_0903,DAT_EXTMEM_0904) + 2);
  bVar2 = DAT_EXTMEM_0903;
  goto LAB_CODE_a68e;
}


// ===== FUN_CODE_a72e @ CODE:a72e =====

void FUN_CODE_a72e(void)

{
  DAT_EXTMEM_0936 = 0x11;
  DAT_EXTMEM_0937 = 0;
  DAT_EXTMEM_090e = uEXTMEM1100;
  DAT_EXTMEM_090f = uEXTMEM1101;
  DAT_EXTMEM_0910 = uEXTMEM1102;
  DAT_EXTMEM_0911 = uEXTMEM1103;
  DAT_EXTMEM_0912 = uEXTMEM1104;
  DAT_EXTMEM_0913 = uEXTMEM1105;
  DAT_EXTMEM_0914 = uEXTMEM1106;
  DAT_EXTMEM_0915 = uEXTMEM1107;
  return;
}


// ===== FUN_CODE_a7af @ CODE:a7af =====

char FUN_CODE_a7af(char param_1)

{
  DAT_EXTMEM_08f5 = param_1;
  if (BANK3_R3 + 1U <= DAT_INTMEM_57) {
    DAT_INTMEM_57 = 0;
    FUN_CODE_7d83();
  }
  DAT_INTMEM_2d = 0;
  while( true ) {
    if (5 < DAT_INTMEM_2d) break;
    DAT_INTMEM_2e = DAT_EXTMEM_08f5 + DAT_INTMEM_2d * '\x17';
    if ((*(char *)CONCAT11('\x01' - (((9 < DAT_INTMEM_2e) << 7) >> 7),DAT_INTMEM_2e - 10) == '\0')
        << 7 < '\0') {
      *(undefined1 *)CONCAT11('\x06' - (((0xdf < DAT_INTMEM_2e) << 7) >> 7),DAT_INTMEM_2e + 0x20) =
           0;
      *(undefined1 *)CONCAT11('\x05' - (((0x74 < DAT_INTMEM_2e) << 7) >> 7),DAT_INTMEM_2e + 0x8b) =
           0;
      *(undefined1 *)CONCAT11('\x04' - (((9 < DAT_INTMEM_2e) << 7) >> 7),DAT_INTMEM_2e - 10) = 0;
    }
    else if (DAT_INTMEM_5c == '\a') {
      FUN_CODE_8805(DAT_INTMEM_2e);
    }
    else {
      FUN_CODE_9e7f(DAT_INTMEM_2e);
    }
    DAT_INTMEM_2d = DAT_INTMEM_2d + 1;
  }
  return DAT_INTMEM_2d - 6;
}


// ===== FUN_CODE_a92d @ CODE:a92d =====

char FUN_CODE_a92d(char param_1)

{
  DAT_EXTMEM_08f6 = 0;
  DAT_EXTMEM_08f5 = param_1;
  while( true ) {
    if (5 < DAT_EXTMEM_08f6) break;
    DAT_INTMEM_2d = DAT_EXTMEM_08f5 + DAT_EXTMEM_08f6 * '\x17';
    if ((*(char *)CONCAT11('\x01' - (((9 < DAT_INTMEM_2d) << 7) >> 7),DAT_INTMEM_2d - 10) == '\0')
        << 7 < '\0') {
      *(undefined1 *)CONCAT11('\x06' - (((0xdf < DAT_INTMEM_2d) << 7) >> 7),DAT_INTMEM_2d + 0x20) =
           0;
      *(undefined1 *)CONCAT11('\x05' - (((0x74 < DAT_INTMEM_2d) << 7) >> 7),DAT_INTMEM_2d + 0x8b) =
           0;
      *(undefined1 *)CONCAT11('\x04' - (((9 < DAT_INTMEM_2d) << 7) >> 7),DAT_INTMEM_2d - 10) = 0;
    }
    else if (DAT_INTMEM_5c == '\a') {
      FUN_CODE_8805(DAT_INTMEM_2d);
    }
    else {
      FUN_CODE_9e7f(DAT_INTMEM_2d);
    }
    DAT_EXTMEM_08f6 = DAT_EXTMEM_08f6 + 1;
  }
  return DAT_EXTMEM_08f6 - 6;
}


// ===== FUN_CODE_a9a2 @ CODE:a9a2 =====

void FUN_CODE_a9a2(void)

{
  byte bVar1;
  undefined1 uVar2;
  byte bVar3;
  undefined1 *puVar4;
  
  bVar1 = 0;
  do {
    *(undefined1 *)CONCAT11('\x01' - (((9 < bVar1) << 7) >> 7),bVar1 - 10) = 0;
    bVar3 = (byte)((ushort)bVar1 * 2);
    puVar4 = (undefined1 *)
             CONCAT11((char)((ushort)bVar1 * 2 >> 8) + ('\x03' - (((0x34 < bVar3) << 7) >> 7)),
                      bVar3 - 0x35);
    *puVar4 = 0;
    puVar4[1] = (&DAT_CODE_a264)[bVar1];
    *(undefined1 *)CONCAT11('\x03' - (((0xce < bVar1) << 7) >> 7),bVar1 + 0x31) = 0;
    *(undefined1 *)CONCAT11('\x02' - (((99 < bVar1) << 7) >> 7),bVar1 + 0x9c) = 0;
    *(undefined1 *)CONCAT11(-(((0x75 < bVar1) << 7) >> 7),bVar1 + 0x8a) = 0;
    bVar1 = bVar1 + 1;
  } while (bVar1 != 0x8a);
  FUN_CODE_b79e();
  uVar2 = 0xff;
  DAT_EXTMEM_0331 = bVar1;
  FUN_CODE_9f11(bVar1);
  DAT_EXTMEM_015c = uVar2;
  FUN_CODE_9deb(DAT_INTMEM_5c);
  DAT_INTMEM_57 = 0;
  DAT_INTMEM_5a = 0;
  return;
}


// ===== FUN_CODE_aa15 @ CODE:aa15 =====

char FUN_CODE_aa15(char param_1)

{
  DAT_INTMEM_2d = 0;
  DAT_EXTMEM_08f5 = param_1;
  while( true ) {
    if (5 < DAT_INTMEM_2d) break;
    DAT_INTMEM_2e = DAT_EXTMEM_08f5 + DAT_INTMEM_2d * '\x17';
    if ((*(char *)CONCAT11('\x01' - (((9 < DAT_INTMEM_2e) << 7) >> 7),DAT_INTMEM_2e - 10) == '\0')
        << 7 < '\0') {
      *(undefined1 *)CONCAT11('\x06' - (((0xdf < DAT_INTMEM_2e) << 7) >> 7),DAT_INTMEM_2e + 0x20) =
           0;
      *(undefined1 *)CONCAT11('\x05' - (((0x74 < DAT_INTMEM_2e) << 7) >> 7),DAT_INTMEM_2e + 0x8b) =
           0;
      *(undefined1 *)CONCAT11('\x04' - (((9 < DAT_INTMEM_2e) << 7) >> 7),DAT_INTMEM_2e - 10) = 0;
    }
    else if (DAT_INTMEM_5c == '\a') {
      FUN_CODE_8805(DAT_INTMEM_2e);
    }
    else {
      FUN_CODE_9e7f(DAT_INTMEM_2e);
    }
    DAT_INTMEM_2d = DAT_INTMEM_2d + 1;
  }
  return DAT_INTMEM_2d - 6;
}


// ===== FUN_CODE_aa86 @ CODE:aa86 =====

void FUN_CODE_aa86(void)

{
  byte bVar1;
  undefined1 uVar2;
  byte bVar3;
  undefined1 *puVar4;
  
  bVar1 = 0;
  do {
    *(undefined1 *)CONCAT11('\x01' - (((9 < bVar1) << 7) >> 7),bVar1 - 10) = 0;
    bVar3 = (byte)((ushort)bVar1 * 2);
    puVar4 = (undefined1 *)
             CONCAT11((char)((ushort)bVar1 * 2 >> 8) + ('\x03' - (((0x34 < bVar3) << 7) >> 7)),
                      bVar3 - 0x35);
    *puVar4 = 0;
    puVar4[1] = (&DAT_CODE_8abb)[bVar1];
    *(undefined1 *)CONCAT11('\x03' - (((0xce < bVar1) << 7) >> 7),bVar1 + 0x31) = 0;
    *(undefined1 *)CONCAT11(-(((0x75 < bVar1) << 7) >> 7),bVar1 + 0x8a) = 0;
    *(undefined1 *)CONCAT11('\x02' - (((99 < bVar1) << 7) >> 7),bVar1 + 0x9c) = 0;
    bVar1 = bVar1 + 1;
  } while (bVar1 != 0x8a);
  FUN_CODE_b79e();
  uVar2 = 0xff;
  DAT_EXTMEM_03a2 = bVar1;
  FUN_CODE_9f11(bVar1);
  DAT_EXTMEM_01cd = uVar2;
  DAT_EXTMEM_0986 = 1;
  DAT_EXTMEM_0987 = 0;
  DAT_INTMEM_5a = 0;
  return;
}


// ===== FUN_CODE_aaf7 @ CODE:aaf7 =====

char FUN_CODE_aaf7(void)

{
  byte bVar1;
  char cVar2;
  byte bVar3;
  byte *pbVar4;
  undefined1 *puVar5;
  
  bVar1 = (0xfd < BANK3_R3 ^ 0x80U) - (((DAT_INTMEM_57 < BANK3_R3 + 3) << 7) >> 7);
  cVar2 = -0x80 - bVar1;
  if (bVar1 < 0x81) {
    DAT_INTMEM_57 = 0;
    FUN_CODE_aca8();
    FUN_CODE_bbdd();
    bVar1 = 0;
    do {
      bVar3 = (byte)((ushort)bVar1 * 2);
      FUN_CODE_80f2(0,CONCAT11((char)((ushort)bVar1 * 2 >> 8) +
                               ('\x03' - (((0x34 < bVar3) << 7) >> 7)),bVar3 - 0x35),3);
      bVar3 = (byte)((ushort)bVar1 * 2);
      pbVar4 = (byte *)CONCAT11((char)((ushort)bVar1 * 2 >> 8) +
                                ('\x03' - (((0x34 < bVar3) << 7) >> 7)),bVar3 - 0x35);
      if (3U - (((pbVar4[1] < 0xbb) << 7) >> 7) <= *pbVar4) {
        bVar3 = (byte)((ushort)bVar1 * 2);
        puVar5 = (undefined1 *)
                 CONCAT11((char)((ushort)bVar1 * 2 >> 8) + ('\x03' - (((0x34 < bVar3) << 7) >> 7)),
                          bVar3 - 0x35);
        *puVar5 = 0;
        puVar5[1] = 0;
      }
      bVar1 = bVar1 + 1;
    } while (bVar1 != 0x8a);
    cVar2 = FUN_CODE_ad0a();
  }
  return cVar2;
}


// ===== FUN_CODE_ab67 @ CODE:ab67 =====

void FUN_CODE_ab67(void)

{
  byte bVar1;
  undefined1 uVar2;
  byte bVar3;
  undefined1 *puVar4;
  
  bVar1 = 0;
  do {
    *(undefined1 *)CONCAT11('\x01' - (((9 < bVar1) << 7) >> 7),bVar1 - 10) = 0;
    bVar3 = (byte)((ushort)bVar1 * 2);
    puVar4 = (undefined1 *)
             CONCAT11((char)((ushort)bVar1 * 2 >> 8) + ('\x03' - (((0x34 < bVar3) << 7) >> 7)),
                      bVar3 - 0x35);
    *puVar4 = 0;
    puVar4[1] = (&DAT_CODE_8a31)[bVar1];
    *(undefined1 *)CONCAT11('\x03' - (((0xce < bVar1) << 7) >> 7),bVar1 + 0x31) = 0;
    *(undefined1 *)CONCAT11(-(((0x75 < bVar1) << 7) >> 7),bVar1 + 0x8a) = 0;
    *(undefined1 *)CONCAT11('\x02' - (((99 < bVar1) << 7) >> 7),bVar1 + 0x9c) = 0;
    bVar1 = bVar1 + 1;
  } while (bVar1 != 0x8a);
  FUN_CODE_b79e();
  uVar2 = 0xff;
  DAT_EXTMEM_0331 = bVar1;
  FUN_CODE_9f11(bVar1);
  DAT_EXTMEM_015c = uVar2;
  DAT_EXTMEM_0986 = 0;
  DAT_EXTMEM_0987 = 0;
  DAT_INTMEM_5a = 0;
  return;
}


// ===== FUN_CODE_ac41 @ CODE:ac41 =====

void FUN_CODE_ac41(void)

{
  if (DAT_INTMEM_69 != '\x01') {
    if (BANK3_R6 != '\x04') {
      if (BANK3_R6 == '\x03') {
        DAT_EXTMEM_ff95 = 0x18;
        DAT_EXTMEM_ffb5 = 0x80;
        return;
      }
      if (BANK3_R6 != '\x02') {
        if (BANK3_R6 != '\x01') {
          if (BANK3_R6 == '\0') {
            _5_2 = 1;
            BANK2_R7 = 9;
            _4_6 = 1;
            FUN_CODE_bbdd();
          }
          return;
        }
        DAT_EXTMEM_ff95 = 0x18;
        DAT_EXTMEM_ffb5 = 0xe6;
        return;
      }
      DAT_EXTMEM_ff95 = 0x18;
      DAT_EXTMEM_ffb5 = 0xb4;
      return;
    }
    if (_5_3 != '\x01') {
      _5_2 = 1;
      BANK2_R7 = 9;
      _4_6 = 1;
    }
  }
  DAT_EXTMEM_ff95 = 0x18;
  DAT_EXTMEM_ffb5 = 1;
  return;
}


// ===== FUN_CODE_aca8 @ CODE:aca8 =====

void FUN_CODE_aca8(void)

{
  DAT_INTMEM_42 = DAT_EXTMEM_ff80;
  DAT_INTMEM_43 = DAT_EXTMEM_ff81;
  DAT_INTMEM_44 = DAT_EXTMEM_ff82;
  DAT_INTMEM_45 = DAT_EXTMEM_ff83;
  DAT_INTMEM_46 = DAT_EXTMEM_ff84;
  DAT_INTMEM_47 = DAT_EXTMEM_ff85;
  DAT_INTMEM_48 = DAT_EXTMEM_ff86;
  DAT_INTMEM_49 = DAT_EXTMEM_ff87;
  DAT_INTMEM_4a = DAT_EXTMEM_ff88;
  DAT_INTMEM_4b = DAT_EXTMEM_ff89;
  DAT_INTMEM_4c = DAT_EXTMEM_ff8a;
  DAT_INTMEM_4d = DAT_EXTMEM_ff8b;
  DAT_INTMEM_4e = DAT_EXTMEM_ff8c;
  DAT_INTMEM_4f = DAT_EXTMEM_ff8d;
  DAT_INTMEM_50 = DAT_EXTMEM_ff8e;
  DAT_INTMEM_51 = DAT_EXTMEM_ff8f;
  DAT_INTMEM_52 = DAT_EXTMEM_ff90;
  DAT_INTMEM_53 = DAT_EXTMEM_ff91;
  DAT_EXTMEM_08a9 = FIFLG;
  DAT_EXTMEM_08aa = TCON;
  DAT_EXTMEM_08ab = P3;
  DAT_EXTMEM_08ac = DAT_SFR_f8;
  DAT_EXTMEM_08ad = P0;
  return;
}


// ===== FUN_CODE_ad0a @ CODE:ad0a =====

undefined1 FUN_CODE_ad0a(void)

{
  DAT_EXTMEM_ff80 = DAT_INTMEM_42;
  DAT_EXTMEM_ff81 = DAT_INTMEM_43;
  DAT_EXTMEM_ff82 = DAT_INTMEM_44;
  DAT_EXTMEM_ff83 = DAT_INTMEM_45;
  DAT_EXTMEM_ff84 = DAT_INTMEM_46;
  DAT_EXTMEM_ff85 = DAT_INTMEM_47;
  DAT_EXTMEM_ff86 = DAT_INTMEM_48;
  DAT_EXTMEM_ff87 = DAT_INTMEM_49;
  DAT_EXTMEM_ff88 = DAT_INTMEM_4a;
  DAT_EXTMEM_ff89 = DAT_INTMEM_4b;
  DAT_EXTMEM_ff8a = DAT_INTMEM_4c;
  DAT_EXTMEM_ff8b = DAT_INTMEM_4d;
  DAT_EXTMEM_ff8c = DAT_INTMEM_4e;
  DAT_EXTMEM_ff8d = DAT_INTMEM_4f;
  DAT_EXTMEM_ff8e = DAT_INTMEM_50;
  DAT_EXTMEM_ff8f = DAT_INTMEM_51;
  DAT_EXTMEM_ff90 = DAT_INTMEM_52;
  DAT_EXTMEM_ff91 = DAT_INTMEM_53;
  FIFLG = DAT_EXTMEM_08a9;
  TCON = DAT_EXTMEM_08aa;
  P3 = DAT_EXTMEM_08ab;
  DAT_SFR_f8 = DAT_EXTMEM_08ac;
  P0 = DAT_EXTMEM_08ad;
  return DAT_EXTMEM_08ad;
}


// ===== FUN_CODE_ae2a @ CODE:ae2a =====

char FUN_CODE_ae2a(void)

{
  byte bVar1;
  char cVar2;
  char cVar3;
  
  bVar1 = (0xfd < BANK3_R3 ^ 0x80U) - (((DAT_INTMEM_57 < BANK3_R3 + 3) << 7) >> 7);
  cVar3 = -0x80 - bVar1;
  if (bVar1 < 0x81) {
    DAT_INTMEM_57 = 0;
    if (DAT_EXTMEM_0984 == '\x01') {
      FUN_CODE_7897();
      cVar2 = ((DAT_EXTMEM_048a < 0xc9) << 7) >> 7;
      cVar3 = DAT_EXTMEM_0489 + cVar2;
      if ((byte)-cVar2 <= DAT_EXTMEM_0489) {
        DAT_EXTMEM_0984 = '\0';
        cVar3 = FUN_CODE_8ff5();
      }
    }
    else {
      cVar3 = DAT_EXTMEM_0984;
      if (DAT_EXTMEM_0984 == '\0') {
        FUN_CODE_7897();
        cVar2 = ((DAT_EXTMEM_04ae < 0xc9) << 7) >> 7;
        cVar3 = DAT_EXTMEM_04ad + cVar2;
        if ((byte)-cVar2 <= DAT_EXTMEM_04ad) {
          DAT_EXTMEM_0984 = 1;
          cVar3 = FUN_CODE_9365();
          return cVar3;
        }
      }
    }
  }
  return cVar3;
}


// ===== FUN_CODE_ae85 @ CODE:ae85 =====

undefined1 FUN_CODE_ae85(void)

{
  EPCON = 0xfc;
  RXSTAT = 0x3f;
  RXDAT = 0x3f;
  RXCON = 0x3f;
  RXFLG = 0xff;
  RXCNTL = 0xa7;
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


// ===== FUN_CODE_aede @ CODE:aede =====

char FUN_CODE_aede(byte param_1,char param_2)

{
  byte bVar1;
  char cVar2;
  
  *(undefined1 *)
   CONCAT11(-((CARRY1(param_2 * '\x17',param_1) << 7) >> 7),param_2 * '\x17' + param_1) = 1;
  bVar1 = DAT_EXTMEM_0295;
  *(undefined1 *)CONCAT11('\x02' - (((0x74 < DAT_EXTMEM_0295) << 7) >> 7),DAT_EXTMEM_0295 + 0x8b) =
       BANK0_R5;
  *(char *)CONCAT11('\x02' - (((0x6f < bVar1) << 7) >> 7),bVar1 + 0x90) = param_2;
  *(undefined1 *)CONCAT11('\x03' - (((0x39 < bVar1) << 7) >> 7),bVar1 - 0x3a) = 1;
  bVar1 = DAT_EXTMEM_0295 + 1;
  cVar2 = DAT_EXTMEM_0295 - 4;
  DAT_EXTMEM_0295 = bVar1;
  if (4 < bVar1) {
    cVar2 = '\0';
    DAT_EXTMEM_0295 = 0;
  }
  return cVar2;
}


// ===== FUN_CODE_af33 @ CODE:af33 =====

void FUN_CODE_af33(void)

{
  byte bVar1;
  byte bVar2;
  undefined1 *puVar3;
  
  bVar1 = 0;
  do {
    *(undefined1 *)CONCAT11('\x01' - (((9 < bVar1) << 7) >> 7),bVar1 - 10) = 0;
    bVar2 = (byte)((ushort)bVar1 * 2);
    puVar3 = (undefined1 *)
             CONCAT11((char)((ushort)bVar1 * 2 >> 8) + ('\x03' - (((0x34 < bVar2) << 7) >> 7)),
                      bVar2 - 0x35);
    *puVar3 = 0;
    puVar3[1] = (&DAT_CODE_7c6f)[bVar1];
    *(undefined1 *)CONCAT11(-(((0x75 < bVar1) << 7) >> 7),bVar1 + 0x8a) = 0;
    *(undefined1 *)CONCAT11('\x02' - (((99 < bVar1) << 7) >> 7),bVar1 + 0x9c) = 0;
    bVar1 = bVar1 + 1;
  } while (bVar1 != 0x8a);
  DAT_EXTMEM_0988 = 1;
  DAT_EXTMEM_0989 = 0;
  DAT_INTMEM_5a = 0;
  DAT_INTMEM_6a = 0;
  return;
}


// ===== FUN_CODE_afdc @ CODE:afdc =====

void FUN_CODE_afdc(void)

{
  byte bVar1;
  
  FUN_CODE_c1b4();
  FUN_CODE_0046();
  FUN_CODE_bf01(0x60);
  FUN_CODE_c1c5();
  FUN_CODE_bd5a(0xb,0xb8);
  bVar1 = 0;
  FUN_CODE_bd5a(0xb);
  do {
    FUN_CODE_c19a();
  } while ((bVar1 & 1) == 1);
  return;
}


// ===== FUN_CODE_b19e @ CODE:b19e =====

char FUN_CODE_b19e(undefined1 param_1,undefined1 *param_2)

{
  byte bVar1;
  
  *param_2 = param_1;
  DAT_EXTMEM_0905 = DAT_EXTMEM_0928;
  DAT_EXTMEM_0906 = DAT_EXTMEM_0929;
  DAT_EXTMEM_0936 = '\x11';
  DAT_EXTMEM_0937 = 8;
  for (bVar1 = 0; bVar1 < 8; bVar1 = bVar1 + 1) {
    *(undefined1 *)
     CONCAT11(DAT_EXTMEM_0936 - ((CARRY1(DAT_EXTMEM_0937,bVar1) << 7) >> 7),DAT_EXTMEM_0937 + bVar1)
         = *(undefined1 *)CONCAT11(DAT_EXTMEM_0905,DAT_EXTMEM_0906);
    DAT_EXTMEM_0906 = DAT_EXTMEM_0906 + '\x01';
    if (DAT_EXTMEM_0906 == '\0') {
      DAT_EXTMEM_0905 = DAT_EXTMEM_0905 + '\x01';
    }
  }
  return bVar1 - 8;
}


// ===== FUN_CODE_b1a9 @ CODE:b1a9 =====

char FUN_CODE_b1a9(byte param_1,char param_2,char param_3)

{
  byte bVar1;
  
  DAT_EXTMEM_0936 = '\x11';
  DAT_EXTMEM_0937 = 8;
  DAT_EXTMEM_0905 = param_2;
  DAT_EXTMEM_0906 = param_3;
  for (bVar1 = 0; bVar1 < param_1; bVar1 = bVar1 + 1) {
    *(undefined1 *)
     CONCAT11(DAT_EXTMEM_0936 - ((CARRY1(DAT_EXTMEM_0937,bVar1) << 7) >> 7),DAT_EXTMEM_0937 + bVar1)
         = *(undefined1 *)CONCAT11(DAT_EXTMEM_0905,DAT_EXTMEM_0906);
    DAT_EXTMEM_0906 = DAT_EXTMEM_0906 + '\x01';
    if (DAT_EXTMEM_0906 == '\0') {
      DAT_EXTMEM_0905 = DAT_EXTMEM_0905 + '\x01';
    }
  }
  return bVar1 - param_1;
}


// ===== FUN_CODE_b1f2 @ CODE:b1f2 =====

void FUN_CODE_b1f2(void)

{
  char cVar1;
  undefined1 *puVar2;
  
  FUN_CODE_bbdd();
  cVar1 = '\x18';
  puVar2 = &DAT_EXTMEM_08c7;
  do {
    *puVar2 = 0;
    puVar2 = puVar2 + 1;
    cVar1 = cVar1 + -1;
  } while (cVar1 != '\0');
  return;
}


// ===== FUN_CODE_b39e @ CODE:b39e =====

void FUN_CODE_b39e(void)

{
  byte bVar1;
  
  FUN_CODE_8193(0x909);
  FUN_CODE_c1b4();
  FUN_CODE_0046();
  FUN_CODE_bf01(2);
  FUN_CODE_8145(0x10,DAT_EXTMEM_0909,DAT_EXTMEM_090a,DAT_EXTMEM_090b,DAT_EXTMEM_090c);
  FUN_CODE_bf01();
  FUN_CODE_8145(8,DAT_EXTMEM_0909,DAT_EXTMEM_090a,DAT_EXTMEM_090b,DAT_EXTMEM_090c);
  FUN_CODE_bf01();
  bVar1 = DAT_EXTMEM_090c;
  FUN_CODE_bf01();
  FUN_CODE_c1bf();
  do {
    FUN_CODE_c19a();
  } while ((bVar1 & 1) == 1);
  return;
}


// ===== FUN_CODE_b59e @ CODE:b59e =====

void FUN_CODE_b59e(void)

{
  byte bVar1;
  char cVar2;
  
  _4_1 = 0;
  BANK1_R2 = 0;
  BANK1_R3 = 0;
  BANK1_R7 = 0;
  bVar1 = 0;
  do {
    *(undefined1 *)CONCAT11('\a' - (((0xf9 < bVar1) << 7) >> 7),bVar1 + 6) = 0;
    bVar1 = bVar1 + 1;
  } while (bVar1 != 0x10);
  _0_2 = 1;
  _2_4 = 1;
  cVar2 = '\0';
  do {
    FUN_CODE_819f(CONCAT11('\a' - (((0x55U < (byte)(cVar2 * '\x04')) << 7) >> 7),
                           cVar2 * '\x04' + 0xaa));
    nop();
    nop();
    nop();
    nop();
    FUN_CODE_819f(CONCAT11('\b' - (((0x38U < (byte)(cVar2 * '\x04')) << 7) >> 7),
                           cVar2 * '\x04' - 0x39));
    nop();
    nop();
    nop();
    nop();
    cVar2 = cVar2 + '\x01';
  } while (cVar2 != '\x06');
  return;
}


// ===== FUN_CODE_b5ef @ CODE:b5ef =====

undefined1 FUN_CODE_b5ef(void)

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


// ===== FUN_CODE_b79e @ CODE:b79e =====

byte FUN_CODE_b79e(byte param_1,byte param_2,byte param_3,byte param_4)

{
  char cVar1;
  byte bVar2;
  byte bVar3;
  byte bVar4;
  byte bVar5;
  
  FUN_CODE_81d6(0x97e);
  cVar1 = '\x10';
  if (((param_1 == 0 && param_2 == 0) && param_3 == 0) && param_4 == 0) {
    param_1 = 0xa5;
    param_2 = 0xa5;
  }
  do {
    bVar5 = param_1 >> 1;
    bVar2 = param_2 >> 1 | param_1 << 7;
    bVar3 = param_3 >> 1 | param_2 << 7;
    bVar4 = param_4 >> 1 | param_3 << 7;
    if ((char)(param_4 << 7) < '\0') {
      bVar5 = bVar5 ^ 0xcc;
      bVar2 = bVar2 ^ 0x4c;
      bVar3 = bVar3 ^ 0x4e;
      bVar4 = bVar4 ^ 0xce;
    }
    cVar1 = cVar1 + -1;
    param_1 = bVar5;
    param_2 = bVar2;
    param_3 = bVar3;
    param_4 = bVar4;
  } while (cVar1 != '\0');
  FUN_CODE_8193(0x97e);
  return bVar3 & 0x7f;
}


// ===== FUN_CODE_b7dc @ CODE:b7dc =====

void FUN_CODE_b7dc(undefined1 param_1,undefined1 param_2)

{
  DAT_EXTMEM_097e = param_1;
  DAT_EXTMEM_097f = param_2;
  DAT_EXTMEM_0980 = 0xa5;
  DAT_EXTMEM_0981 = 0xa5;
  return;
}


// ===== FUN_CODE_b7eb @ CODE:b7eb =====

void FUN_CODE_b7eb(void)

{
  DAT_EXTMEM_0757 = 1;
  DAT_EXTMEM_0758 = DAT_EXTMEM_07c5;
  if (_0_0 == '\0') {
    DAT_EXTMEM_0758 = 0;
  }
  return;
}


// ===== FUN_CODE_b99e @ CODE:b99e =====

void FUN_CODE_b99e(void)

{
  FUN_CODE_8193(0x8ea);
  FUN_CODE_0046();
  FUN_CODE_bf01(3);
  FUN_CODE_8145(0x10,DAT_EXTMEM_08ea,DAT_EXTMEM_08eb,DAT_EXTMEM_08ec,DAT_EXTMEM_08ed);
  FUN_CODE_bf01();
  FUN_CODE_8145(8,DAT_EXTMEM_08ea,DAT_EXTMEM_08eb,DAT_EXTMEM_08ec,DAT_EXTMEM_08ed);
  FUN_CODE_bf01();
  FUN_CODE_bf01(DAT_EXTMEM_08ed);
  FUN_CODE_001e();
  FUN_CODE_c1c5();
  return;
}


// ===== FUN_CODE_b9ea @ CODE:b9ea =====

undefined1 FUN_CODE_b9ea(undefined1 param_1)

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
  TF2 = 0;
  if ((_3_5 != '\x01') && (_4_4 != '\x01')) {
    FUN_CODE_2dbd();
  }
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


// ===== FUN_CODE_baca @ CODE:baca =====

char FUN_CODE_baca(void)

{
  byte bVar1;
  
  DAT_EXTMEM_0976 = 0xaa;
  DAT_EXTMEM_0977 = DAT_INTMEM_69;
  DAT_EXTMEM_0978 = BANK3_R3;
  DAT_EXTMEM_097b = BANK3_R6;
  DAT_EXTMEM_097c = DAT_INTMEM_5c;
  FUN_CODE_bebf(0xe4);
  DAT_EXTMEM_08f5 = 0;
  do {
    FUN_CODE_bdc0(*(undefined1 *)
                   CONCAT11('\t' - (((0x89 < DAT_EXTMEM_08f5) << 7) >> 7),DAT_EXTMEM_08f5 + 0x76),
                  DAT_EXTMEM_08f5,0xe4);
    bVar1 = DAT_EXTMEM_08f5;
    DAT_EXTMEM_08f5 = DAT_EXTMEM_08f5 + 1;
  } while ((DAT_EXTMEM_08f5 < 7) << 7 < '\0');
  return bVar1 - 6;
}


// ===== FUN_CODE_bb57 @ CODE:bb57 =====

undefined1 FUN_CODE_bb57(undefined1 param_1)

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
  FUN_CODE_8c56();
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


// ===== FUN_CODE_bbdd @ CODE:bbdd =====

void FUN_CODE_bbdd(void)

{
  byte bVar1;
  
  FIFLG = 0xff;
  bVar1 = TCON;
  TCON = bVar1 | 0x87;
  bVar1 = P3;
  P3 = bVar1 | 0x7f;
  F8_4 = 1;
  bVar1 = P0;
  P0 = bVar1 | 0xe0;
  DAT_EXTMEM_ff80 = 0xb0;
  DAT_EXTMEM_ff81 = 0x10;
  DAT_EXTMEM_ff82 = 0x10;
  DAT_EXTMEM_ff83 = 0x10;
  DAT_EXTMEM_ff84 = 0x10;
  DAT_EXTMEM_ff85 = 0x10;
  DAT_EXTMEM_ff86 = 0xb0;
  DAT_EXTMEM_ff87 = 0x10;
  DAT_EXTMEM_ff88 = 0x10;
  DAT_EXTMEM_ff89 = 0x10;
  DAT_EXTMEM_ff8a = 0x10;
  DAT_EXTMEM_ff8b = 0x10;
  DAT_EXTMEM_ff8c = 0xb0;
  DAT_EXTMEM_ff8d = 0x10;
  DAT_EXTMEM_ff8e = 0x10;
  DAT_EXTMEM_ff8f = 0x10;
  DAT_EXTMEM_ff90 = 0x10;
  DAT_EXTMEM_ff91 = 0x10;
  return;
}


// ===== FUN_CODE_bc1e @ CODE:bc1e =====

void FUN_CODE_bc1e(void)

{
  DAT_INTMEM_69 = DAT_CODE_e401;
  BANK3_R3 = DAT_CODE_e402;
  BANK3_R6 = DAT_CODE_e405;
  DAT_INTMEM_5c = 7;
  FUN_CODE_9deb(7);
  DAT_EXTMEM_ff9c = 0;
  DAT_EXTMEM_ff98 = 0xff;
  DAT_EXTMEM_ff9d = 0;
  DAT_EXTMEM_ff99 = 0xff;
  DAT_EXTMEM_ff9e = 0;
  DAT_EXTMEM_ff9a = 0xff;
  return;
}


// ===== FUN_CODE_bc5f @ CODE:bc5f =====

char FUN_CODE_bc5f(void)

{
  byte bVar1;
  char cVar2;
  
  if (DAT_EXTMEM_0935 == '\x01') {
    cVar2 = FUN_CODE_a48c();
    bVar1 = HADDR;
    HADDR = bVar1 | 4;
    bVar1 = DAT_SFR_92;
    DAT_SFR_92 = bVar1 & 0xaf;
    bVar1 = HADDR;
    HADDR = bVar1 | 1;
    return cVar2;
  }
  if (DAT_EXTMEM_0935 == '\x02') {
    bVar1 = DAT_SFR_92;
    DAT_SFR_92 = bVar1 & 0xaf;
    bVar1 = HADDR;
    HADDR = bVar1 | 1;
    bVar1 = HADDR;
    HADDR = bVar1 | 8;
    return '\x02';
  }
  bVar1 = HADDR;
  HADDR = bVar1 | 8;
  bVar1 = DAT_SFR_92;
  DAT_SFR_92 = bVar1 & 0xaf;
  bVar1 = HADDR;
  HADDR = bVar1 | 1;
  cVar2 = DAT_EXTMEM_090e;
  if ((DAT_EXTMEM_090e == '\0') && (cVar2 = DAT_EXTMEM_090f, DAT_EXTMEM_090f == '\x05')) {
    DAT_SFR_96 = DAT_EXTMEM_0910;
    cVar2 = DAT_EXTMEM_0910;
  }
  return cVar2;
}


// ===== FUN_CODE_bc9d @ CODE:bc9d =====

void FUN_CODE_bc9d(void)

{
  if (((DAT_EXTMEM_07c5 == 0xe3) && (_0_0 != '\0')) && (_2_0 != '\0')) {
    _5_7 = _5_7 ^ 1;
  }
  _1_6 = 1;
  if ((_5_7 == 0) || ((DAT_EXTMEM_07c5 != 0xe3 && (DAT_EXTMEM_07c5 != 0xe7)))) {
    if (_0_0 == '\0') {
      DAT_EXTMEM_0706 = DAT_EXTMEM_0706 & (&DAT_CODE_644f)[DAT_EXTMEM_07c5 & 0xf];
    }
    else {
      DAT_EXTMEM_0706 = DAT_EXTMEM_0706 | ~(&DAT_CODE_644f)[DAT_EXTMEM_07c5 & 0xf];
    }
  }
  return;
}


// ===== FUN_CODE_bd51 @ CODE:bd51 =====

char FUN_CODE_bd51(undefined1 param_1)

{
  char cVar1;
  byte bVar2;
  byte bVar3;
  
  DAT_EXTMEM_07c4 = param_1;
  IEN1 = 0;
  bVar3 = 0;
  bVar2 = 0;
  while (cVar1 = ((bVar3 < 0x14) << 7) >> 7, bVar2 < (byte)-cVar1) {
    IEN1 = 0;
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


// ===== FUN_CODE_bd54 @ CODE:bd54 =====

char FUN_CODE_bd54(undefined1 *param_1,undefined1 param_2)

{
  char cVar1;
  byte bVar2;
  byte bVar3;
  
  *param_1 = param_2;
  IEN1 = 0;
  bVar3 = 0;
  bVar2 = 0;
  while (cVar1 = ((bVar3 < 0x14) << 7) >> 7, bVar2 < (byte)-cVar1) {
    IEN1 = 0;
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


// ===== FUN_CODE_bd5a @ CODE:bd5a =====

char FUN_CODE_bd5a(char param_1,byte param_2)

{
  byte bVar1;
  byte bVar2;
  byte bVar3;
  
  IEN1 = 0;
  bVar3 = 0;
  bVar2 = 0;
  while (bVar1 = param_1 - (((bVar3 < param_2) << 7) >> 7), bVar2 < bVar1) {
    IEN1 = 0;
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


// ===== FUN_CODE_bdc0 @ CODE:bdc0 =====

undefined1 FUN_CODE_bdc0(undefined1 param_1)

{
  byte bVar1;
  
  bVar1 = EA;
  _6_2 = bVar1 & 1;
  EA = 0;
  XPAGE = param_1;
  IB_OFFSET = BANK0_R5;
  IB_DATA = BANK0_R3;
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


// ===== FUN_CODE_bdf7 @ CODE:bdf7 =====

void FUN_CODE_bdf7(void)

{
  DAT_EXTMEM_ff80 = 0xb8;
  DAT_EXTMEM_ff81 = 0x18;
  DAT_EXTMEM_ff82 = 0x18;
  DAT_EXTMEM_ff83 = 0x18;
  DAT_EXTMEM_ff84 = 0x18;
  DAT_EXTMEM_ff85 = 0x18;
  DAT_EXTMEM_ff86 = 0xb8;
  DAT_EXTMEM_ff87 = 0x18;
  DAT_EXTMEM_ff88 = 0x18;
  DAT_EXTMEM_ff89 = 0x18;
  DAT_EXTMEM_ff8a = 0x18;
  DAT_EXTMEM_ff8b = 0x18;
  DAT_EXTMEM_ff8c = 0xb8;
  DAT_EXTMEM_ff8d = 0x18;
  DAT_EXTMEM_ff8e = 0x18;
  DAT_EXTMEM_ff8f = 0x18;
  DAT_EXTMEM_ff90 = 0x18;
  DAT_EXTMEM_ff91 = 0x18;
  return;
}


// ===== FUN_CODE_be2a @ CODE:be2a =====

void FUN_CODE_be2a(char param_1)

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
      _6_1 = 0;
      return;
    }
    cVar1 = F8_0;
    bVar2 = cVar1 << 7;
  }
  _6_1 = bVar2 >> 7 ^ 1;
  return;
}


// ===== FUN_CODE_be5c @ CODE:be5c =====

char FUN_CODE_be5c(char param_1)

{
  bool bVar1;
  
  bVar1 = param_1 != '\0';
  TXD = bVar1;
  FIFLG_0 = bVar1;
  FIFLG_1 = bVar1;
  FIFLG_2 = bVar1;
  FIFLG_3 = bVar1;
  FIFLG_4 = bVar1;
  FIFLG_5 = bVar1;
  FIFLG_6 = bVar1;
  FIFLG_7 = bVar1;
  IT0 = bVar1;
  IE0 = bVar1;
  IT1 = bVar1;
  TF1 = bVar1;
  RXD = bVar1;
  T0 = bVar1;
  INT0 = bVar1;
  INT1 = bVar1;
  T1 = bVar1;
  WR = bVar1;
  F8_4 = bVar1;
  P0_5 = bVar1;
  P0_6 = bVar1;
  P0_7 = bVar1;
  return param_1 + -1;
}


// ===== FUN_CODE_bebf @ CODE:bebf =====

undefined1 FUN_CODE_bebf(undefined1 param_1)

{
  byte bVar1;
  
  bVar1 = EA;
  _6_2 = bVar1 & 1;
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


// ===== FUN_CODE_bef0 @ CODE:bef0 =====

void FUN_CODE_bef0(void)

{
  char cVar1;
  char cVar2;
  
  cVar2 = DAT_EXTMEM_090c;
  FUN_CODE_8145(DAT_EXTMEM_0909,DAT_EXTMEM_090a,DAT_EXTMEM_090b);
  cVar1 = '\0';
  do {
    P0_3 = 0;
    if (cVar2 < '\0') {
      P0_4 = 1;
    }
    else {
      P0_4 = 0;
    }
    cVar2 = cVar2 * '\x02';
    nop();
    nop();
    P0_3 = 1;
    nop();
    nop();
    cVar1 = cVar1 + '\x01';
  } while (cVar1 != '\b');
  return;
}


// ===== FUN_CODE_bf01 @ CODE:bf01 =====

void FUN_CODE_bf01(char param_1)

{
  char cVar1;
  
  cVar1 = '\0';
  do {
    P0_3 = 0;
    if (param_1 < '\0') {
      P0_4 = 1;
    }
    else {
      P0_4 = 0;
    }
    param_1 = param_1 * '\x02';
    nop();
    nop();
    P0_3 = 1;
    nop();
    nop();
    cVar1 = cVar1 + '\x01';
  } while (cVar1 != '\b');
  return;
}


// ===== FUN_CODE_bf79 @ CODE:bf79 =====

void FUN_CODE_bf79(void)

{
  byte bVar1;
  
  FUN_CODE_8193(0x909);
  FUN_CODE_c1b4();
  FUN_CODE_0046();
  bVar1 = 0x81;
  FUN_CODE_bf01();
  FUN_CODE_bef0(0x10);
  FUN_CODE_bef0(8);
  FUN_CODE_c1bf(0x90b);
  do {
    FUN_CODE_c19a();
  } while ((bVar1 & 1) == 1);
  return;
}


// ===== FUN_CODE_bfa4 @ CODE:bfa4 =====

char FUN_CODE_bfa4(void)

{
  char cVar1;
  char cVar2;
  
  cVar2 = DAT_INTMEM_57 - (BANK3_R3 + 1U);
  if (BANK3_R3 + 1U <= DAT_INTMEM_57) {
    DAT_INTMEM_57 = 0;
    FUN_CODE_76eb();
    cVar1 = ((DAT_EXTMEM_045c < 0xc9) << 7) >> 7;
    cVar2 = DAT_EXTMEM_045b + cVar1;
    if ((byte)-cVar1 <= DAT_EXTMEM_045b) {
      FUN_CODE_a9a2(cVar2);
      cVar2 = DAT_INTMEM_59;
      if (DAT_INTMEM_59 == 'U') {
        DAT_INTMEM_59 = -0x56;
      }
    }
  }
  return cVar2;
}


// ===== FUN_CODE_c044 @ CODE:c044 =====

char FUN_CODE_c044(undefined1 param_1)

{
  DAT_EXTMEM_08f7 = 0;
  DAT_EXTMEM_08f5 = param_1;
  while( true ) {
    if (5 < DAT_EXTMEM_08f7) break;
    FUN_CODE_980f(DAT_EXTMEM_08f5,DAT_EXTMEM_08f7);
    DAT_EXTMEM_08f7 = DAT_EXTMEM_08f7 + 1;
  }
  return DAT_EXTMEM_08f7 - 6;
}


// ===== FUN_CODE_c069 @ CODE:c069 =====

void FUN_CODE_c069(void)

{
  DAT_EXTMEM_07ca = 2;
  if (_0_0 != '\0') {
    DAT_EXTMEM_07cb = DAT_EXTMEM_07c5;
    DAT_EXTMEM_07cc = DAT_EXTMEM_07c6;
    return;
  }
  DAT_EXTMEM_07cb = 0;
  DAT_EXTMEM_07cc = 0;
  return;
}


// ===== FUN_CODE_c08b @ CODE:c08b =====

void FUN_CODE_c08b(void)

{
  FUN_CODE_c0c6();
  FUN_CODE_0016();
  FUN_CODE_bd5a(1,0xf4);
  FUN_CODE_ae85();
  FUN_CODE_c153();
  FUN_CODE_6214();
  FUN_CODE_c1e3();
  FUN_CODE_c113();
  FUN_CODE_b5ef();
  return;
}


// ===== FUN_CODE_c0aa @ CODE:c0aa =====

void FUN_CODE_c0aa(void)

{
  DAT_EXTMEM_0756 = 0;
  DAT_EXTMEM_0705 = 0;
  DAT_EXTMEM_07a7 = 0;
  DAT_EXTMEM_081a = 0;
  _0_0 = 0;
  _0_1 = 0;
  _0_2 = 0;
  _0_3 = 0;
  _0_4 = 0;
  return;
}


// ===== FUN_CODE_c0c6 @ CODE:c0c6 =====

void FUN_CODE_c0c6(void)

{
  IPL1 = 8;
  FUN_CODE_bd5a(0,5);
  DAT_SFR_bc = 2;
  FUN_CODE_bd5a(0,200);
  DAT_SFR_bc = 3;
  IPL1 = 0xc;
  return;
}


// ===== FUN_CODE_c0e1 @ CODE:c0e1 =====

void FUN_CODE_c0e1(void)

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
  cVar2 = '\x10';
  do {
    do {
      *puVar4 = 0;
      puVar4 = puVar4 + 1;
      cVar3 = cVar3 + -1;
    } while (cVar3 != '\0');
    cVar2 = cVar2 + -1;
  } while (cVar2 != '\0');
  SP_ = 0x6e;
  FUN_CODE_44c2();
  return;
}


// ===== FUN_CODE_c113 @ CODE:c113 =====

void FUN_CODE_c113(void)

{
  DAT_SFR_91 = 0xc0;
  DAT_SFR_96 = 0;
  DAT_SFR_94 = 0x5f;
  DAT_SFR_95 = 0x11;
  DAT_EXTMEM_091c = 0;
  DAT_EXTMEM_091e = 0;
  _4_3 = 0;
  return;
}


// ===== FUN_CODE_c140 @ CODE:c140 =====

char FUN_CODE_c140(void)

{
  if (200 < DAT_EXTMEM_091b) {
    _4_0 = 1;
    return DAT_EXTMEM_091b + 0x37;
  }
  DAT_EXTMEM_091b = DAT_EXTMEM_091b + 1;
  return DAT_EXTMEM_091b;
}


// ===== FUN_CODE_c153 @ CODE:c153 =====

undefined1 FUN_CODE_c153(void)

{
  TH2 = 0xfe;
  TL2 = 0x6f;
  RCAP2H = 0xfe;
  RCAP2L = 0x6f;
  T2MOD = 0;
  T2CON = 0;
  return 0;
}


// ===== FUN_CODE_c189 @ CODE:c189 =====

void FUN_CODE_c189(void)

{
  DAT_INTMEM_62 = 0;
  _0_7 = 0;
  _2_1 = 0;
  FUN_CODE_bbdd();
  FUN_CODE_bc1e();
  FUN_CODE_ac41();
  return;
}


// ===== FUN_CODE_c19a @ CODE:c19a =====

void FUN_CODE_c19a(void)

{
  FUN_CODE_0046();
  FUN_CODE_bf01(5);
  FUN_CODE_001e();
  FUN_CODE_c1c5();
  return;
}


// ===== FUN_CODE_c1a9 @ CODE:c1a9 =====

/* WARNING: Control flow encountered bad instruction data */

void FUN_CODE_c1a9(void)

{
  EA = 0;
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ===== FUN_CODE_c1b4 @ CODE:c1b4 =====

void FUN_CODE_c1b4(void)

{
  FUN_CODE_0046();
  FUN_CODE_bf01(6);
  FUN_CODE_c1c5();
  return;
}


// ===== FUN_CODE_c1bf @ CODE:c1bf =====

void FUN_CODE_c1bf(short param_1)

{
  FUN_CODE_bf01(*(undefined1 *)(param_1 + 1));
  TF0 = 1;
  return;
}


// ===== FUN_CODE_c1c5 @ CODE:c1c5 =====

void FUN_CODE_c1c5(void)

{
  TF0 = 1;
  return;
}


// ===== FUN_CODE_c1c8 @ CODE:c1c8 =====

void FUN_CODE_c1c8(void)

{
  _1_0 = 0;
  _0_1 = 0;
  _5_7 = 0;
  return;
}


// ===== FUN_CODE_c1dd @ CODE:c1dd =====

void FUN_CODE_c1dd(void)

{
  HIFLG = 0;
  _6_4 = 1;
  return;
}


// ===== FUN_CODE_c1e3 @ CODE:c1e3 =====

undefined1 FUN_CODE_c1e3(void)

{
  IPH1 = 0;
  TMOD = 0;
  return 0;
}


// ===== FUN_CODE_c1e9 @ CODE:c1e9 =====

void FUN_CODE_c1e9(void)

{
  P0_3 = 1;
  return;
}


