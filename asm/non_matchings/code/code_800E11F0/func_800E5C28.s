glabel func_800E5C28
/* B5CDC8 800E5C28 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B5CDCC 800E5C2C AFBF002C */  sw    $ra, 0x2c($sp)
/* B5CDD0 800E5C30 AFB40028 */  sw    $s4, 0x28($sp)
/* B5CDD4 800E5C34 AFB30024 */  sw    $s3, 0x24($sp)
/* B5CDD8 800E5C38 AFB20020 */  sw    $s2, 0x20($sp)
/* B5CDDC 800E5C3C AFB1001C */  sw    $s1, 0x1c($sp)
/* B5CDE0 800E5C40 AFB00018 */  sw    $s0, 0x18($sp)
/* B5CDE4 800E5C44 90820000 */  lbu   $v0, ($a0)
/* B5CDE8 800E5C48 240100F0 */  li    $at, 240
/* B5CDEC 800E5C4C 00809825 */  move  $s3, $a0
/* B5CDF0 800E5C50 304E00F0 */  andi  $t6, $v0, 0xf0
/* B5CDF4 800E5C54 15C10005 */  bne   $t6, $at, .L800E5C6C
/* B5CDF8 800E5C58 3C058017 */   lui   $a1, %hi(gAudioContext) # $a1, 0x8017
/* B5CDFC 800E5C5C 0C039561 */  jal   func_800E5584
/* B5CE00 800E5C60 00000000 */   nop
/* B5CE04 800E5C64 1000003A */  b     .L800E5D50
/* B5CE08 800E5C68 8FBF002C */   lw    $ra, 0x2c($sp)
.L800E5C6C:
/* B5CE0C 800E5C6C 92640001 */  lbu   $a0, 1($s3)
/* B5CE10 800E5C70 24A5F180 */  addiu $a1, %lo(gAudioContext) # addiu $a1, $a1, -0xe80
/* B5CE14 800E5C74 84AF285C */  lh    $t7, 0x285c($a1)
/* B5CE18 800E5C78 0004C080 */  sll   $t8, $a0, 2
/* B5CE1C 800E5C7C 0304C023 */  subu  $t8, $t8, $a0
/* B5CE20 800E5C80 008F082A */  slt   $at, $a0, $t7
/* B5CE24 800E5C84 10200031 */  beqz  $at, .L800E5D4C
/* B5CE28 800E5C88 0018C080 */   sll   $t8, $t8, 2
/* B5CE2C 800E5C8C 0304C023 */  subu  $t8, $t8, $a0
/* B5CE30 800E5C90 0018C140 */  sll   $t8, $t8, 5
/* B5CE34 800E5C94 00B8A021 */  addu  $s4, $a1, $t8
/* B5CE38 800E5C98 30590080 */  andi  $t9, $v0, 0x80
/* B5CE3C 800E5C9C 13200005 */  beqz  $t9, .L800E5CB4
/* B5CE40 800E5CA0 26943530 */   addiu $s4, $s4, 0x3530
/* B5CE44 800E5CA4 0C039561 */  jal   func_800E5584
/* B5CE48 800E5CA8 02602025 */   move  $a0, $s3
/* B5CE4C 800E5CAC 10000028 */  b     .L800E5D50
/* B5CE50 800E5CB0 8FBF002C */   lw    $ra, 0x2c($sp)
.L800E5CB4:
/* B5CE54 800E5CB4 30480040 */  andi  $t0, $v0, 0x40
/* B5CE58 800E5CB8 51000007 */  beql  $t0, $zero, .L800E5CD8
/* B5CE5C 800E5CBC 92620002 */   lbu   $v0, 2($s3)
/* B5CE60 800E5CC0 02802025 */  move  $a0, $s4
/* B5CE64 800E5CC4 0C03984A */  jal   func_800E6128
/* B5CE68 800E5CC8 02602825 */   move  $a1, $s3
/* B5CE6C 800E5CCC 10000020 */  b     .L800E5D50
/* B5CE70 800E5CD0 8FBF002C */   lw    $ra, 0x2c($sp)
/* B5CE74 800E5CD4 92620002 */  lbu   $v0, 2($s3)
.L800E5CD8:
/* B5CE78 800E5CD8 28410010 */  slti  $at, $v0, 0x10
/* B5CE7C 800E5CDC 10200008 */  beqz  $at, .L800E5D00
/* B5CE80 800E5CE0 00401825 */   move  $v1, $v0
/* B5CE84 800E5CE4 00024880 */  sll   $t1, $v0, 2
/* B5CE88 800E5CE8 02895021 */  addu  $t2, $s4, $t1
/* B5CE8C 800E5CEC 8D440038 */  lw    $a0, 0x38($t2)
/* B5CE90 800E5CF0 0C0398C0 */  jal   func_800E6300
/* B5CE94 800E5CF4 02602825 */   move  $a1, $s3
/* B5CE98 800E5CF8 10000015 */  b     .L800E5D50
/* B5CE9C 800E5CFC 8FBF002C */   lw    $ra, 0x2c($sp)
.L800E5D00:
/* B5CEA0 800E5D00 240100FF */  li    $at, 255
/* B5CEA4 800E5D04 14610011 */  bne   $v1, $at, .L800E5D4C
/* B5CEA8 800E5D08 00045840 */   sll   $t3, $a0, 1
/* B5CEAC 800E5D0C 00AB6021 */  addu  $t4, $a1, $t3
/* B5CEB0 800E5D10 95825BDC */  lhu   $v0, 0x5bdc($t4)
/* B5CEB4 800E5D14 00008025 */  move  $s0, $zero
/* B5CEB8 800E5D18 24120010 */  li    $s2, 16
.L800E5D1C:
/* B5CEBC 800E5D1C 304D0001 */  andi  $t5, $v0, 1
/* B5CEC0 800E5D20 11A00006 */  beqz  $t5, .L800E5D3C
/* B5CEC4 800E5D24 00408825 */   move  $s1, $v0
/* B5CEC8 800E5D28 00107080 */  sll   $t6, $s0, 2
/* B5CECC 800E5D2C 028E7821 */  addu  $t7, $s4, $t6
/* B5CED0 800E5D30 8DE40038 */  lw    $a0, 0x38($t7)
/* B5CED4 800E5D34 0C0398C0 */  jal   func_800E6300
/* B5CED8 800E5D38 02602825 */   move  $a1, $s3
.L800E5D3C:
/* B5CEDC 800E5D3C 26100001 */  addiu $s0, $s0, 1
/* B5CEE0 800E5D40 00111043 */  sra   $v0, $s1, 1
/* B5CEE4 800E5D44 1612FFF5 */  bne   $s0, $s2, .L800E5D1C
/* B5CEE8 800E5D48 3042FFFF */   andi  $v0, $v0, 0xffff
.L800E5D4C:
/* B5CEEC 800E5D4C 8FBF002C */  lw    $ra, 0x2c($sp)
.L800E5D50:
/* B5CEF0 800E5D50 8FB00018 */  lw    $s0, 0x18($sp)
/* B5CEF4 800E5D54 8FB1001C */  lw    $s1, 0x1c($sp)
/* B5CEF8 800E5D58 8FB20020 */  lw    $s2, 0x20($sp)
/* B5CEFC 800E5D5C 8FB30024 */  lw    $s3, 0x24($sp)
/* B5CF00 800E5D60 8FB40028 */  lw    $s4, 0x28($sp)
/* B5CF04 800E5D64 03E00008 */  jr    $ra
/* B5CF08 800E5D68 27BD0030 */   addiu $sp, $sp, 0x30
