/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Renato/Documents/Projeto_um_AC-PAULOALVES.2120722_RENATOPESSEGO.2121922/ALU.vhd";
extern char *IEEE_P_0774719531;
extern char *IEEE_P_2592010699;

unsigned char ieee_p_0774719531_sub_1742983514_2162500114(char *, char *, char *, char *, char *);
unsigned char ieee_p_0774719531_sub_2698824431_2162500114(char *, char *, char *, char *, char *);
unsigned char ieee_p_0774719531_sub_2698860368_2162500114(char *, char *, char *, char *, char *);
char *ieee_p_0774719531_sub_767668596_2162500114(char *, char *, char *, char *, char *, char *);
char *ieee_p_0774719531_sub_767740470_2162500114(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1306069469_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1697423399_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1735675855_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_3798478767_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_43738421_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_795620321_503743352(char *, char *, char *, char *, char *, char *);


static void work_a_0832606739_3212880686_p_0(char *t0)
{
    char t29[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    char *t12;
    int t13;
    char *t14;
    char *t15;
    int t16;
    char *t17;
    char *t18;
    int t19;
    char *t20;
    int t22;
    char *t23;
    int t25;
    char *t26;
    int t28;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    unsigned char t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;

LAB0:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 5508);
    t4 = xsi_mem_cmp(t1, t2, 4U);
    if (t4 == 1)
        goto LAB3;

LAB13:    t5 = (t0 + 5512);
    t7 = xsi_mem_cmp(t5, t2, 4U);
    if (t7 == 1)
        goto LAB4;

LAB14:    t8 = (t0 + 5516);
    t10 = xsi_mem_cmp(t8, t2, 4U);
    if (t10 == 1)
        goto LAB5;

LAB15:    t11 = (t0 + 5520);
    t13 = xsi_mem_cmp(t11, t2, 4U);
    if (t13 == 1)
        goto LAB6;

LAB16:    t14 = (t0 + 5524);
    t16 = xsi_mem_cmp(t14, t2, 4U);
    if (t16 == 1)
        goto LAB7;

LAB17:    t17 = (t0 + 5528);
    t19 = xsi_mem_cmp(t17, t2, 4U);
    if (t19 == 1)
        goto LAB8;

LAB18:    t20 = (t0 + 5532);
    t22 = xsi_mem_cmp(t20, t2, 4U);
    if (t22 == 1)
        goto LAB9;

LAB19:    t23 = (t0 + 5536);
    t25 = xsi_mem_cmp(t23, t2, 4U);
    if (t25 == 1)
        goto LAB10;

LAB20:    t26 = (t0 + 5540);
    t28 = xsi_mem_cmp(t26, t2, 4U);
    if (t28 == 1)
        goto LAB11;

LAB21:
LAB12:    xsi_set_current_line(63, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t2 = t1;
    memset(t2, (unsigned char)1, 8U);
    t3 = (t0 + 3232);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(63, ng0);
    t1 = xsi_get_transient_memory(5U);
    memset(t1, 0, 5U);
    t2 = t1;
    memset(t2, (unsigned char)1, 5U);
    t3 = (t0 + 3296);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 5U);
    xsi_driver_first_trans_fast_port(t3);

LAB2:    t1 = (t0 + 3152);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(45, ng0);
    t30 = (t0 + 1032U);
    t31 = *((char **)t30);
    t30 = (t0 + 5400U);
    t32 = (t0 + 1192U);
    t33 = *((char **)t32);
    t32 = (t0 + 5416U);
    t34 = ieee_p_0774719531_sub_767668596_2162500114(IEEE_P_0774719531, t29, t31, t30, t33, t32);
    t35 = (t29 + 12U);
    t36 = *((unsigned int *)t35);
    t37 = (1U * t36);
    t38 = (8U != t37);
    if (t38 == 1)
        goto LAB23;

LAB24:    t39 = (t0 + 3232);
    t40 = (t39 + 56U);
    t41 = *((char **)t40);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    memcpy(t43, t34, 8U);
    xsi_driver_first_trans_fast_port(t39);
    xsi_set_current_line(45, ng0);
    t1 = (t0 + 5544);
    t3 = (t0 + 3296);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 5U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB4:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5400U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 5416U);
    t6 = ieee_p_0774719531_sub_767740470_2162500114(IEEE_P_0774719531, t29, t2, t1, t5, t3);
    t8 = (t29 + 12U);
    t36 = *((unsigned int *)t8);
    t37 = (1U * t36);
    t38 = (8U != t37);
    if (t38 == 1)
        goto LAB25;

LAB26:    t9 = (t0 + 3232);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 8U);
    xsi_driver_first_trans_fast_port(t9);
    xsi_set_current_line(46, ng0);
    t1 = (t0 + 5549);
    t3 = (t0 + 3296);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 5U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB5:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5400U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 5416U);
    t6 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t29, t2, t1, t5, t3);
    t8 = (t29 + 12U);
    t36 = *((unsigned int *)t8);
    t37 = (1U * t36);
    t38 = (8U != t37);
    if (t38 == 1)
        goto LAB27;

LAB28:    t9 = (t0 + 3232);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 8U);
    xsi_driver_first_trans_fast_port(t9);
    xsi_set_current_line(47, ng0);
    t1 = (t0 + 5554);
    t3 = (t0 + 3296);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 5U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB6:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5400U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 5416U);
    t6 = ieee_p_2592010699_sub_3798478767_503743352(IEEE_P_2592010699, t29, t2, t1, t5, t3);
    t8 = (t29 + 12U);
    t36 = *((unsigned int *)t8);
    t37 = (1U * t36);
    t38 = (8U != t37);
    if (t38 == 1)
        goto LAB29;

LAB30:    t9 = (t0 + 3232);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 8U);
    xsi_driver_first_trans_fast_port(t9);
    xsi_set_current_line(48, ng0);
    t1 = (t0 + 5559);
    t3 = (t0 + 3296);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 5U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB7:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5400U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 5416U);
    t6 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t29, t2, t1, t5, t3);
    t8 = (t29 + 12U);
    t36 = *((unsigned int *)t8);
    t37 = (1U * t36);
    t38 = (8U != t37);
    if (t38 == 1)
        goto LAB31;

LAB32:    t9 = (t0 + 3232);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 8U);
    xsi_driver_first_trans_fast_port(t9);
    xsi_set_current_line(49, ng0);
    t1 = (t0 + 5564);
    t3 = (t0 + 3296);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 5U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB8:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5400U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 5416U);
    t6 = ieee_p_2592010699_sub_1306069469_503743352(IEEE_P_2592010699, t29, t2, t1, t5, t3);
    t8 = (t29 + 12U);
    t36 = *((unsigned int *)t8);
    t37 = (1U * t36);
    t38 = (8U != t37);
    if (t38 == 1)
        goto LAB33;

LAB34:    t9 = (t0 + 3232);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 8U);
    xsi_driver_first_trans_fast_port(t9);
    xsi_set_current_line(50, ng0);
    t1 = (t0 + 5569);
    t3 = (t0 + 3296);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 5U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB9:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5400U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 5416U);
    t6 = ieee_p_2592010699_sub_1697423399_503743352(IEEE_P_2592010699, t29, t2, t1, t5, t3);
    t8 = (t29 + 12U);
    t36 = *((unsigned int *)t8);
    t37 = (1U * t36);
    t38 = (8U != t37);
    if (t38 == 1)
        goto LAB35;

LAB36:    t9 = (t0 + 3232);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 8U);
    xsi_driver_first_trans_fast_port(t9);
    xsi_set_current_line(51, ng0);
    t1 = (t0 + 5574);
    t3 = (t0 + 3296);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 5U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB10:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5400U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 5416U);
    t6 = ieee_p_2592010699_sub_43738421_503743352(IEEE_P_2592010699, t29, t2, t1, t5, t3);
    t8 = (t29 + 12U);
    t36 = *((unsigned int *)t8);
    t37 = (1U * t36);
    t38 = (8U != t37);
    if (t38 == 1)
        goto LAB37;

LAB38:    t9 = (t0 + 3232);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 8U);
    xsi_driver_first_trans_fast_port(t9);
    xsi_set_current_line(52, ng0);
    t1 = (t0 + 5579);
    t3 = (t0 + 3296);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 5U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB2;

LAB11:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5400U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 5416U);
    t38 = ieee_p_0774719531_sub_2698824431_2162500114(IEEE_P_0774719531, t2, t1, t5, t3);
    if (t38 != 0)
        goto LAB39;

LAB41:
LAB40:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5400U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 5416U);
    t38 = ieee_p_0774719531_sub_1742983514_2162500114(IEEE_P_0774719531, t2, t1, t5, t3);
    if (t38 != 0)
        goto LAB42;

LAB44:
LAB43:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5400U);
    t3 = (t0 + 1192U);
    t5 = *((char **)t3);
    t3 = (t0 + 5416U);
    t38 = ieee_p_0774719531_sub_2698860368_2162500114(IEEE_P_0774719531, t2, t1, t5, t3);
    if (t38 != 0)
        goto LAB45;

LAB47:
LAB46:    goto LAB2;

LAB22:;
LAB23:    xsi_size_not_matching(8U, t37, 0);
    goto LAB24;

LAB25:    xsi_size_not_matching(8U, t37, 0);
    goto LAB26;

LAB27:    xsi_size_not_matching(8U, t37, 0);
    goto LAB28;

LAB29:    xsi_size_not_matching(8U, t37, 0);
    goto LAB30;

LAB31:    xsi_size_not_matching(8U, t37, 0);
    goto LAB32;

LAB33:    xsi_size_not_matching(8U, t37, 0);
    goto LAB34;

LAB35:    xsi_size_not_matching(8U, t37, 0);
    goto LAB36;

LAB37:    xsi_size_not_matching(8U, t37, 0);
    goto LAB38;

LAB39:    xsi_set_current_line(55, ng0);
    t6 = xsi_get_transient_memory(5U);
    memset(t6, 0, 5U);
    t8 = t6;
    memset(t8, (unsigned char)2, 5U);
    t4 = (1 - 4);
    t36 = (t4 * -1);
    t37 = (1U * t36);
    t9 = (t8 + t37);
    *((unsigned char *)t9) = (unsigned char)3;
    t7 = (2 - 4);
    t44 = (t7 * -1);
    t45 = (1U * t44);
    t11 = (t8 + t45);
    *((unsigned char *)t11) = (unsigned char)3;
    t10 = (3 - 4);
    t46 = (t10 * -1);
    t47 = (1U * t46);
    t12 = (t8 + t47);
    *((unsigned char *)t12) = (unsigned char)3;
    t14 = (t0 + 3296);
    t15 = (t14 + 56U);
    t17 = *((char **)t15);
    t18 = (t17 + 56U);
    t20 = *((char **)t18);
    memcpy(t20, t6, 5U);
    xsi_driver_first_trans_fast_port(t14);
    goto LAB40;

LAB42:    xsi_set_current_line(58, ng0);
    t6 = xsi_get_transient_memory(5U);
    memset(t6, 0, 5U);
    t8 = t6;
    memset(t8, (unsigned char)2, 5U);
    t4 = (0 - 4);
    t36 = (t4 * -1);
    t37 = (1U * t36);
    t9 = (t8 + t37);
    *((unsigned char *)t9) = (unsigned char)3;
    t7 = (1 - 4);
    t44 = (t7 * -1);
    t45 = (1U * t44);
    t11 = (t8 + t45);
    *((unsigned char *)t11) = (unsigned char)3;
    t12 = (t0 + 3296);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t6, 5U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB43;

LAB45:    xsi_set_current_line(61, ng0);
    t6 = xsi_get_transient_memory(5U);
    memset(t6, 0, 5U);
    t8 = t6;
    memset(t8, (unsigned char)2, 5U);
    t4 = (4 - 4);
    t36 = (t4 * -1);
    t37 = (1U * t36);
    t9 = (t8 + t37);
    *((unsigned char *)t9) = (unsigned char)3;
    t7 = (3 - 4);
    t44 = (t7 * -1);
    t45 = (1U * t44);
    t11 = (t8 + t45);
    *((unsigned char *)t11) = (unsigned char)3;
    t12 = (t0 + 3296);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t6, 5U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB46;

}


extern void work_a_0832606739_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0832606739_3212880686_p_0};
	xsi_register_didat("work_a_0832606739_3212880686", "isim/test_MotherBoard_isim_beh.exe.sim/work/a_0832606739_3212880686.didat");
	xsi_register_executes(pe);
}
