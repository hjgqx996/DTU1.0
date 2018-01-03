///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.40.3.8902/W32 for ARM       25/Dec/2017  16:03:39
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        D:\Ruhr\Xiongmao\github\DTU1.0\gprsdtu\spiffs\src\spiffs_gc.c
//    Command line =  
//        D:\Ruhr\Xiongmao\github\DTU1.0\gprsdtu\spiffs\src\spiffs_gc.c -D
//        STM32F10X_MD -D USE_STDPERIPH_DRIVER -lb
//        D:\Ruhr\Xiongmao\github\DTU1.0\project\Debug\List\ --diag_suppress
//        Pa050 -o D:\Ruhr\Xiongmao\github\DTU1.0\project\Debug\Obj\ --no_cse
//        --no_unroll --no_inline --no_code_motion --no_tbaa --no_clustering
//        --no_scheduling --debug --endian=little --cpu=Cortex-M3 -e --fpu=None
//        --dlib_config D:\software\IAR\arm\INC\c\DLib_Config_Normal.h -I
//        D:\Ruhr\Xiongmao\github\DTU1.0\project\..\cpu\ -I
//        D:\Ruhr\Xiongmao\github\DTU1.0\project\..\cpu\Libraries\ -I
//        D:\Ruhr\Xiongmao\github\DTU1.0\project\..\cpu\Libraries\STM32F10x_StdPeriph_Driver\inc\
//        -I
//        D:\Ruhr\Xiongmao\github\DTU1.0\project\..\cpu\Libraries\CMSIS\CM3\DeviceSupport\ST\STM32F10x\
//        -I D:\Ruhr\Xiongmao\github\DTU1.0\project\..\ctkcore\ -I
//        D:\Ruhr\Xiongmao\github\DTU1.0\project\..\ctkcore\sys\ -I
//        D:\Ruhr\Xiongmao\github\DTU1.0\project\..\ctkcore\lib\ -I
//        D:\Ruhr\Xiongmao\github\DTU1.0\project\..\ctkcore\cfs\ -I
//        D:\Ruhr\Xiongmao\github\DTU1.0\project\..\gprsdtu\ -I
//        D:\Ruhr\Xiongmao\github\DTU1.0\project\..\gprsdtu\senproto\ -I
//        D:\Ruhr\Xiongmao\github\DTU1.0\project\..\tools\ -I
//        D:\Ruhr\Xiongmao\github\DTU1.0\project\..\gprsdtu\spiffs\src\ -I
//        D:\Ruhr\Xiongmao\github\DTU1.0\project\..\gprsdtu\dev\ -On --vla
//        --use_c++_inline -I D:\software\IAR\arm\CMSIS\Include\
//    List file    =  
//        D:\Ruhr\Xiongmao\github\DTU1.0\project\Debug\List\spiffs_gc.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_memset
        EXTERN spiffs_cache_drop_page
        EXTERN spiffs_cb_object_event
        EXTERN spiffs_erase_block
        EXTERN spiffs_obj_lu_find_id_and_span
        EXTERN spiffs_object_update_index_hdr
        EXTERN spiffs_page_delete
        EXTERN spiffs_page_move
        EXTERN spiffs_phys_rd

        PUBLIC spiffs_gc_check
        PUBLIC spiffs_gc_clean
        PUBLIC spiffs_gc_erase_page_stats
        PUBLIC spiffs_gc_find_candidate
        PUBLIC spiffs_gc_quick


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
spiffs_gc_erase_block:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R1,R5
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R4
        BL       spiffs_erase_block
        MOVS     R6,R0
        CMP      R6,#+0
        BPL.N    ??spiffs_gc_erase_block_0
        MOVS     R0,R6
        B.N      ??spiffs_gc_erase_block_1
??spiffs_gc_erase_block_0:
        MOVS     R0,#+0
        MOVS     R7,R0
??spiffs_gc_erase_block_2:
        CMP      R7,#+32
        BCS.N    ??spiffs_gc_erase_block_3
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        ADDS     R1,R7,R5, LSL #+5
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R4
        BL       spiffs_cache_drop_page
        ADDS     R7,R7,#+1
        B.N      ??spiffs_gc_erase_block_2
??spiffs_gc_erase_block_3:
        MOVS     R0,R6
??spiffs_gc_erase_block_1:
        POP      {R1,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
spiffs_gc_quick:
        PUSH     {R0,R1,R4-R11,LR}
        SUB      SP,SP,#+20
        MOVS     R4,#+0
        LDR      R0,[SP, #+20]
        LDR      R0,[R0, #+16]
        STR      R0,[SP, #+12]
        MOVS     R5,#+0
        MOVS     R6,#+0
        MOVS     R7,#+0
        LDR      R0,[SP, #+20]
        LDR      R0,[R0, #+36]
        STR      R0,[SP, #+16]
        LDR      R0,[SP, #+20]
        LDR      R0,[R0, #+72]
        ADDS     R0,R0,#+1
        LDR      R1,[SP, #+20]
        STR      R0,[R1, #+72]
        MOVS     R0,#+64
        STR      R0,[SP, #+8]
??spiffs_gc_quick_0:
        CMP      R4,#+0
        BNE.N    ??spiffs_gc_quick_1
        LDR      R0,[SP, #+12]
        SUBS     R1,R0,#+1
        STR      R1,[SP, #+12]
        CMP      R0,#+0
        BEQ.N    ??spiffs_gc_quick_1
        MOVS     R8,#+0
        MOVS     R9,#+0
        MOVS     R10,#+0
??spiffs_gc_quick_2:
        CMP      R4,#+0
        BNE.N    ??spiffs_gc_quick_3
        CMP      R10,#+1
        BGE.N    ??spiffs_gc_quick_3
        LDR      R0,[SP, #+8]
        MUL      R11,R0,R10
        LDR      R0,[SP, #+20]
        LDR      R0,[R0, #+36]
        STR      R0,[SP, #+4]
        MOVS     R0,#+128
        STR      R0,[SP, #+0]
        MOVS     R0,#+128
        MLA      R3,R0,R10,R6
        MOVS     R2,#+0
        MOVS     R1,#+20
        LDR      R0,[SP, #+20]
        BL       spiffs_phys_rd
        MOVS     R4,R0
??spiffs_gc_quick_4:
        CMP      R4,#+0
        BNE.N    ??spiffs_gc_quick_5
        SUBS     R0,R7,R11
        LDR      R1,[SP, #+8]
        CMP      R0,R1
        BGE.N    ??spiffs_gc_quick_5
        CMP      R7,#+31
        BGE.N    ??spiffs_gc_quick_5
        LDR      R0,[SP, #+16]
        SUBS     R1,R7,R11
        LDRH     R0,[R0, R1, LSL #+1]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BNE.N    ??spiffs_gc_quick_6
        ADDS     R8,R8,#+1
        B.N      ??spiffs_gc_quick_7
??spiffs_gc_quick_6:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOVW     R1,#+65535
        CMP      R0,R1
        BNE.N    ??spiffs_gc_quick_8
        ADDS     R9,R9,#+1
        LDRH     R1,[SP, #+24]
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        CMP      R1,R9
        BCS.N    ??spiffs_gc_quick_7
        MOVS     R1,#+1
        MOV      R10,R1
        MOVS     R1,#+1
        MOVS     R4,R1
        B.N      ??spiffs_gc_quick_5
??spiffs_gc_quick_8:
        MOVS     R1,#+1
        MOV      R10,R1
        MOVS     R1,#+1
        MOVS     R4,R1
        B.N      ??spiffs_gc_quick_5
??spiffs_gc_quick_7:
        ADDS     R7,R7,#+1
        B.N      ??spiffs_gc_quick_4
??spiffs_gc_quick_5:
        ADDS     R10,R10,#+1
        B.N      ??spiffs_gc_quick_2
??spiffs_gc_quick_3:
        CMP      R4,#+1
        BNE.N    ??spiffs_gc_quick_9
        MOVS     R0,#+0
        MOVS     R4,R0
??spiffs_gc_quick_9:
        CMP      R4,#+0
        BNE.N    ??spiffs_gc_quick_10
        UXTH     R8,R8            ;; ZeroExt  R8,R8,#+16,#+16
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        ADDS     R0,R9,R8
        CMP      R0,#+31
        BNE.N    ??spiffs_gc_quick_10
        LDRH     R0,[SP, #+24]
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        CMP      R0,R9
        BCC.N    ??spiffs_gc_quick_10
        LDR      R0,[SP, #+20]
        LDR      R0,[R0, #+64]
        UXTH     R8,R8            ;; ZeroExt  R8,R8,#+16,#+16
        SUBS     R0,R0,R8
        LDR      R1,[SP, #+20]
        STR      R0,[R1, #+64]
        MOVS     R1,R5
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR      R0,[SP, #+20]
        BL       spiffs_gc_erase_block
        MOVS     R4,R0
        MOVS     R0,R4
        B.N      ??spiffs_gc_quick_11
??spiffs_gc_quick_10:
        MOVS     R0,#+0
        MOVS     R7,R0
        ADDS     R5,R5,#+1
        ADDS     R6,R6,#+4096
        B.N      ??spiffs_gc_quick_0
??spiffs_gc_quick_1:
        CMP      R4,#+0
        BNE.N    ??spiffs_gc_quick_12
        LDR.W    R0,??DataTable2  ;; 0xffffd8d3
        MOVS     R4,R0
??spiffs_gc_quick_12:
        MOVS     R0,R4
??spiffs_gc_quick_11:
        ADD      SP,SP,#+28
        POP      {R4-R11,PC}      ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
spiffs_gc_check:
        PUSH     {R4-R11,LR}
        SUB      SP,SP,#+12
        MOVS     R4,R0
        MOVS     R5,R1
        LDR      R0,[R4, #+16]
        SUBS     R0,R0,#+2
        MOVS     R1,#+31
        MULS     R0,R1,R0
        LDR      R1,[R4, #+60]
        SUBS     R0,R0,R1
        LDR      R1,[R4, #+64]
        SUBS     R7,R0,R1
        MOVS     R8,#+0
        LDR      R0,[R4, #+56]
        CMP      R0,#+4
        BCC.N    ??spiffs_gc_check_0
        MOVS     R0,#+123
        MUL      R0,R0,R7
        CMP      R5,R0
        BGE.N    ??spiffs_gc_check_0
        MOVS     R0,#+0
        B.N      ??spiffs_gc_check_1
??spiffs_gc_check_0:
        ADDS     R0,R5,#+122
        MOVS     R1,#+123
        UDIV     R9,R0,R1
        LDR      R0,[R4, #+64]
        ADDS     R0,R0,R7
        CMP      R0,R9
        BGE.N    ??spiffs_gc_check_2
        LDR.W    R0,??DataTable2_1  ;; 0xffffd8ef
        B.N      ??spiffs_gc_check_1
??spiffs_gc_check_2:
        MOV      R11,R7
        CMP      R7,#+1
        BGE.N    ??spiffs_gc_check_3
        MOVS     R3,#+1
        B.N      ??spiffs_gc_check_4
??spiffs_gc_check_3:
        MOVS     R3,#+0
??spiffs_gc_check_4:
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ADD      R2,SP,#+0
        ADD      R1,SP,#+4
        MOVS     R0,R4
        BL       spiffs_gc_find_candidate
        MOVS     R6,R0
        CMP      R6,#+0
        BPL.N    ??spiffs_gc_check_5
        MOVS     R0,R6
        B.N      ??spiffs_gc_check_1
??spiffs_gc_check_5:
        LDR      R0,[SP, #+0]
        CMP      R0,#+0
        BNE.N    ??spiffs_gc_check_6
        CMP      R9,R7
        BGE.N    ??spiffs_gc_check_7
        MOVS     R0,#+0
        B.N      ??spiffs_gc_check_8
??spiffs_gc_check_7:
        LDR.W    R0,??DataTable2_1  ;; 0xffffd8ef
??spiffs_gc_check_8:
        B.N      ??spiffs_gc_check_1
??spiffs_gc_check_6:
        LDR      R0,[R4, #+72]
        ADDS     R0,R0,#+1
        STR      R0,[R4, #+72]
        LDR      R0,[SP, #+4]
        LDRH     R0,[R0, #+0]
        MOV      R10,R0
        MOVS     R0,#+1
        STRB     R0,[R4, #+68]
        MOV      R1,R10
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R4
        BL       spiffs_gc_clean
        MOVS     R6,R0
        MOVS     R0,#+0
        STRB     R0,[R4, #+68]
        CMP      R6,#+0
        BPL.N    ??spiffs_gc_check_9
        MOVS     R0,R6
        B.N      ??spiffs_gc_check_1
??spiffs_gc_check_9:
        MOV      R1,R10
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R4
        BL       spiffs_gc_erase_page_stats
        MOVS     R6,R0
        CMP      R6,#+0
        BPL.N    ??spiffs_gc_check_10
        MOVS     R0,R6
        B.N      ??spiffs_gc_check_1
??spiffs_gc_check_10:
        MOV      R1,R10
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R4
        BL       spiffs_gc_erase_block
        MOVS     R6,R0
        CMP      R6,#+0
        BPL.N    ??spiffs_gc_check_11
        MOVS     R0,R6
        B.N      ??spiffs_gc_check_1
??spiffs_gc_check_11:
        LDR      R0,[R4, #+16]
        SUBS     R0,R0,#+2
        MOVS     R1,#+31
        MULS     R0,R1,R0
        LDR      R1,[R4, #+60]
        SUBS     R0,R0,R1
        LDR      R1,[R4, #+64]
        SUBS     R0,R0,R1
        MOVS     R7,R0
        CMP      R11,#+1
        BGE.N    ??spiffs_gc_check_12
        CMP      R11,R7
        BEQ.N    ??spiffs_gc_check_13
??spiffs_gc_check_12:
        ADDS     R8,R8,#+1
        CMP      R8,#+5
        BGE.N    ??spiffs_gc_check_13
        LDR      R0,[R4, #+56]
        CMP      R0,#+3
        BCC.N    ??spiffs_gc_check_2
        MOVS     R0,#+123
        MUL      R0,R0,R7
        CMP      R0,R5
        BLT.N    ??spiffs_gc_check_2
??spiffs_gc_check_13:
        LDR      R0,[R4, #+16]
        SUBS     R0,R0,#+2
        MOVS     R1,#+31
        MULS     R0,R1,R0
        LDR      R1,[R4, #+60]
        SUBS     R0,R0,R1
        LDR      R1,[R4, #+64]
        SUBS     R0,R0,R1
        MOVS     R7,R0
        MOVS     R0,#+123
        MUL      R0,R0,R7
        CMP      R0,R5
        BGE.N    ??spiffs_gc_check_14
        LDR.W    R0,??DataTable2_1  ;; 0xffffd8ef
        MOVS     R6,R0
??spiffs_gc_check_14:
        MOVS     R0,R6
??spiffs_gc_check_1:
        POP      {R1-R11,PC}      ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
spiffs_gc_erase_page_stats:
        PUSH     {R1,R4-R11,LR}
        SUB      SP,SP,#+16
        MOVS     R4,R0
        MOVS     R5,#+0
        MOVS     R6,#+0
        MOVS     R7,#+64
        LDR      R0,[R4, #+36]
        STR      R0,[SP, #+8]
        MOVS     R8,#+0
        MOVS     R9,#+0
        MOVS     R10,#+0
??spiffs_gc_erase_page_stats_0:
        CMP      R5,#+0
        BNE.N    ??spiffs_gc_erase_page_stats_1
        CMP      R6,#+1
        BGE.N    ??spiffs_gc_erase_page_stats_1
        MUL      R11,R7,R6
        LDR      R0,[R4, #+36]
        STR      R0,[SP, #+4]
        MOVS     R0,#+128
        STR      R0,[SP, #+0]
        LDRH     R0,[SP, #+16]
        MOV      R1,#+4096
        MOVS     R2,#+128
        MUL      R2,R2,R6
        MLA      R3,R1,R0,R2
        MOVS     R2,#+0
        MOVS     R1,#+20
        MOVS     R0,R4
        BL       spiffs_phys_rd
        MOVS     R5,R0
??spiffs_gc_erase_page_stats_2:
        CMP      R5,#+0
        BNE.N    ??spiffs_gc_erase_page_stats_3
        SUBS     R0,R8,R11
        CMP      R0,R7
        BGE.N    ??spiffs_gc_erase_page_stats_3
        CMP      R8,#+31
        BGE.N    ??spiffs_gc_erase_page_stats_3
        LDR      R0,[SP, #+8]
        SUBS     R1,R8,R11
        LDRH     R0,[R0, R1, LSL #+1]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOVW     R1,#+65535
        CMP      R0,R1
        BEQ.N    ??spiffs_gc_erase_page_stats_4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BNE.N    ??spiffs_gc_erase_page_stats_5
        ADDS     R9,R9,#+1
        B.N      ??spiffs_gc_erase_page_stats_4
??spiffs_gc_erase_page_stats_5:
        ADDS     R10,R10,#+1
??spiffs_gc_erase_page_stats_4:
        ADDS     R8,R8,#+1
        B.N      ??spiffs_gc_erase_page_stats_2
??spiffs_gc_erase_page_stats_3:
        ADDS     R6,R6,#+1
        B.N      ??spiffs_gc_erase_page_stats_0
??spiffs_gc_erase_page_stats_1:
        LDR      R0,[R4, #+60]
        SUBS     R0,R0,R10
        STR      R0,[R4, #+60]
        LDR      R0,[R4, #+64]
        SUBS     R0,R0,R9
        STR      R0,[R4, #+64]
        MOVS     R0,R5
        ADD      SP,SP,#+20
        POP      {R4-R11,PC}      ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
spiffs_gc_find_candidate:
        PUSH     {R1-R11,LR}
        SUB      SP,SP,#+40
        MOVS     R4,R0
        MOVS     R5,#+0
        LDR      R0,[R4, #+16]
        STR      R0,[SP, #+28]
        MOVS     R6,#+0
        MOVS     R7,#+0
        LDR      R0,[R4, #+36]
        STR      R0,[SP, #+32]
        MOVS     R8,#+0
        LDR      R0,[R4, #+16]
        CMP      R0,#+20
        BCS.N    ??spiffs_gc_find_candidate_0
        LDR      R0,[R4, #+16]
        STR      R0,[SP, #+20]
        B.N      ??spiffs_gc_find_candidate_1
??spiffs_gc_find_candidate_0:
        MOVS     R0,#+20
        STR      R0,[SP, #+20]
??spiffs_gc_find_candidate_1:
        MOVS     R0,#+0
        LDR      R1,[SP, #+44]
        STR      R0,[R1, #+0]
        MOVS     R9,#+128
        MOV      R10,#+255
        LDR      R11,[R4, #+40]
        MOV      R2,R10
        MOV      R1,R9
        MOV      R0,R11
        BL       __aeabi_memset
        LDR      R0,[R4, #+40]
        STR      R0,[SP, #+16]
        LDR      R0,[R4, #+40]
        LDR      R1,[SP, #+20]
        ADDS     R0,R0,R1, LSL #+1
        STR      R0,[SP, #+12]
        LDR      R0,[SP, #+12]
        ADDS     R0,R0,#+3
        LSRS     R0,R0,#+2
        LSLS     R0,R0,#+2
        STR      R0,[SP, #+12]
        LDR      R0,[SP, #+16]
        LDR      R1,[SP, #+40]
        STR      R0,[R1, #+0]
        MOVS     R0,#+64
        STR      R0,[SP, #+24]
??spiffs_gc_find_candidate_2:
        CMP      R5,#+0
        BNE.W    ??spiffs_gc_find_candidate_3
        LDR      R0,[SP, #+28]
        SUBS     R1,R0,#+1
        STR      R1,[SP, #+28]
        CMP      R0,#+0
        BEQ.W    ??spiffs_gc_find_candidate_3
        MOVS     R9,#+0
        MOVS     R10,#+0
        MOVS     R11,#+0
??spiffs_gc_find_candidate_4:
        CMP      R5,#+0
        BNE.N    ??spiffs_gc_find_candidate_5
        CMP      R11,#+1
        BGE.N    ??spiffs_gc_find_candidate_5
        LDR      R0,[SP, #+24]
        MUL      R0,R0,R11
        STR      R0,[SP, #+8]
        LDR      R0,[R4, #+36]
        STR      R0,[SP, #+4]
        MOVS     R0,#+128
        STR      R0,[SP, #+0]
        MOVS     R0,#+128
        MLA      R3,R0,R11,R7
        MOVS     R2,#+0
        MOVS     R1,#+20
        MOVS     R0,R4
        BL       spiffs_phys_rd
        MOVS     R5,R0
??spiffs_gc_find_candidate_6:
        CMP      R5,#+0
        BNE.N    ??spiffs_gc_find_candidate_7
        LDR      R0,[SP, #+8]
        SUBS     R0,R8,R0
        LDR      R1,[SP, #+24]
        CMP      R0,R1
        BGE.N    ??spiffs_gc_find_candidate_7
        CMP      R8,#+31
        BGE.N    ??spiffs_gc_find_candidate_7
        LDR      R0,[SP, #+32]
        LDR      R1,[SP, #+8]
        SUBS     R1,R8,R1
        LDRH     R0,[R0, R1, LSL #+1]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOVW     R1,#+65535
        CMP      R0,R1
        BNE.N    ??spiffs_gc_find_candidate_8
        MOVS     R1,#+1
        MOVS     R5,R1
        B.N      ??spiffs_gc_find_candidate_7
??spiffs_gc_find_candidate_8:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BNE.N    ??spiffs_gc_find_candidate_9
        ADDS     R9,R9,#+1
        B.N      ??spiffs_gc_find_candidate_10
??spiffs_gc_find_candidate_9:
        ADDS     R10,R10,#+1
??spiffs_gc_find_candidate_10:
        ADDS     R8,R8,#+1
        B.N      ??spiffs_gc_find_candidate_6
??spiffs_gc_find_candidate_7:
        ADDS     R11,R11,#+1
        B.N      ??spiffs_gc_find_candidate_4
??spiffs_gc_find_candidate_5:
        CMP      R5,#+1
        BNE.N    ??spiffs_gc_find_candidate_11
        MOVS     R0,#+0
        MOVS     R5,R0
??spiffs_gc_find_candidate_11:
        CMP      R5,#+0
        BNE.W    ??spiffs_gc_find_candidate_12
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        CMP      R9,#+0
        BEQ.W    ??spiffs_gc_find_candidate_12
        ADD      R0,SP,#+8
        STR      R0,[SP, #+4]
        MOVS     R0,#+2
        STR      R0,[SP, #+0]
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        MOV      R0,#+4096
        MUL      R0,R0,R6
        ADDS     R3,R0,#+126
        MOVS     R2,#+0
        MOVS     R1,#+21
        MOVS     R0,R4
        BL       spiffs_phys_rd
        MOVS     R5,R0
        CMP      R5,#+0
        BPL.N    ??spiffs_gc_find_candidate_13
        MOVS     R0,R5
        B.N      ??spiffs_gc_find_candidate_14
??spiffs_gc_find_candidate_13:
        LDRH     R1,[SP, #+8]
        LDRH     R2,[R4, #+70]
        CMP      R1,R2
        BCS.N    ??spiffs_gc_find_candidate_15
        LDRH     R1,[R4, #+70]
        LDRH     R2,[SP, #+8]
        SUBS     R1,R1,R2
        MOVS     R0,R1
        B.N      ??spiffs_gc_find_candidate_16
??spiffs_gc_find_candidate_15:
        MOVW     R1,#+65535
        LDRH     R2,[SP, #+8]
        SUBS     R1,R1,R2
        LDRH     R2,[R4, #+70]
        ADDS     R1,R2,R1
        MOVS     R0,R1
??spiffs_gc_find_candidate_16:
        LDRB     R1,[SP, #+48]
        CMP      R1,#+0
        BEQ.N    ??spiffs_gc_find_candidate_17
        MOVS     R1,#+0
        B.N      ??spiffs_gc_find_candidate_18
??spiffs_gc_find_candidate_17:
        MOVS     R1,#+50
??spiffs_gc_find_candidate_18:
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        MOVS     R2,#+5
        UXTH     R10,R10          ;; ZeroExt  R10,R10,#+16,#+16
        MOVS     R3,#-1
        MUL      R3,R3,R10
        MLA      R2,R2,R9,R3
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MLA      R1,R1,R0,R2
        MOVS     R2,#+0
??spiffs_gc_find_candidate_19:
        LDR      R3,[SP, #+20]
        CMP      R2,R3
        BGE.N    ??spiffs_gc_find_candidate_20
        LDR      R3,[SP, #+16]
        LDRH     R3,[R3, R2, LSL #+1]
        MOVW     R12,#+65535
        CMP      R3,R12
        BNE.N    ??spiffs_gc_find_candidate_21
        LDR      R3,[SP, #+16]
        STRH     R6,[R3, R2, LSL #+1]
        LDR      R3,[SP, #+12]
        STR      R1,[R3, R2, LSL #+2]
        B.N      ??spiffs_gc_find_candidate_20
??spiffs_gc_find_candidate_21:
        LDR      R3,[SP, #+12]
        LDR      R3,[R3, R2, LSL #+2]
        CMP      R3,R1
        BGE.N    ??spiffs_gc_find_candidate_22
        LDR      R3,[SP, #+20]
        SUBS     R3,R3,#+2
??spiffs_gc_find_candidate_23:
        CMP      R3,R2
        BLT.N    ??spiffs_gc_find_candidate_24
        LDR      R12,[SP, #+16]
        LDRH     R12,[R12, R3, LSL #+1]
        LDR      LR,[SP, #+16]
        ADDS     LR,LR,R3, LSL #+1
        STRH     R12,[LR, #+2]
        LDR      R12,[SP, #+12]
        LDR      R12,[R12, R3, LSL #+2]
        LDR      LR,[SP, #+12]
        ADDS     LR,LR,R3, LSL #+2
        STR      R12,[LR, #+4]
        SUBS     R3,R3,#+1
        B.N      ??spiffs_gc_find_candidate_23
??spiffs_gc_find_candidate_24:
        LDR      R12,[SP, #+16]
        STRH     R6,[R12, R2, LSL #+1]
        LDR      R12,[SP, #+12]
        STR      R1,[R12, R2, LSL #+2]
        B.N      ??spiffs_gc_find_candidate_20
??spiffs_gc_find_candidate_22:
        ADDS     R2,R2,#+1
        B.N      ??spiffs_gc_find_candidate_19
??spiffs_gc_find_candidate_20:
        LDR      R3,[SP, #+44]
        LDR      R3,[R3, #+0]
        ADDS     R3,R3,#+1
        LDR      R12,[SP, #+44]
        STR      R3,[R12, #+0]
??spiffs_gc_find_candidate_12:
        MOVS     R0,#+0
        MOV      R8,R0
        ADDS     R6,R6,#+1
        ADDS     R7,R7,#+4096
        B.N      ??spiffs_gc_find_candidate_2
??spiffs_gc_find_candidate_3:
        MOVS     R0,R5
??spiffs_gc_find_candidate_14:
        ADD      SP,SP,#+52
        POP      {R4-R11,PC}      ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
spiffs_gc_clean:
        PUSH     {R4-R11,LR}
        SUB      SP,SP,#+92
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R11,#+0
        MOVS     R0,#+64
        STR      R0,[SP, #+60]
        MOVS     R6,#+0
        LDR      R0,[R4, #+36]
        STR      R0,[SP, #+76]
        MOVS     R7,#+0
        LDR      R0,[R4, #+40]
        STR      R0,[SP, #+72]
        LDR      R0,[R4, #+40]
        STR      R0,[SP, #+24]
        MOVS     R8,#+20
        MOVS     R9,#+0
        ADD      R10,SP,#+32
        MOV      R2,R9
        MOV      R1,R8
        MOV      R0,R10
        BL       __aeabi_memset
        MOVS     R0,#+0
        STRB     R0,[SP, #+32]
        LDRH     R0,[R4, #+20]
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R0,R5
        BNE.N    ??spiffs_gc_clean_0
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        ADDS     R0,R5,#+1
        LDR      R1,[R4, #+16]
        UDIV     R2,R0,R1
        MLS      R0,R1,R2,R0
        STRH     R0,[R4, #+20]
        MOVS     R0,#+0
        STR      R0,[R4, #+24]
??spiffs_gc_clean_0:
        CMP      R11,#+0
        BNE.W    ??spiffs_gc_clean_1
        LDRB     R0,[SP, #+32]
        CMP      R0,#+3
        BEQ.W    ??spiffs_gc_clean_1
        MOVS     R0,#+0
        STRB     R0,[SP, #+48]
        LDR      R0,[SP, #+60]
        SDIV     R8,R6,R0
        MOVS     R9,#+1
??spiffs_gc_clean_2:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+0
        BEQ.W    ??spiffs_gc_clean_3
        CMP      R11,#+0
        BNE.W    ??spiffs_gc_clean_3
        CMP      R8,#+1
        BGE.W    ??spiffs_gc_clean_3
        LDR      R0,[SP, #+60]
        MUL      R0,R0,R8
        STR      R0,[SP, #+12]
        LDR      R0,[R4, #+36]
        STR      R0,[SP, #+4]
        MOVS     R0,#+128
        STR      R0,[SP, #+0]
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        MOV      R0,#+4096
        MOVS     R1,#+128
        MUL      R1,R1,R8
        MLA      R3,R0,R5,R1
        MOVS     R2,#+0
        MOVS     R1,#+20
        MOVS     R0,R4
        BL       spiffs_phys_rd
        MOV      R11,R0
??spiffs_gc_clean_4:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+0
        BEQ.W    ??spiffs_gc_clean_5
        CMP      R11,#+0
        BNE.W    ??spiffs_gc_clean_5
        LDR      R0,[SP, #+12]
        SUBS     R0,R6,R0
        LDR      R1,[SP, #+60]
        CMP      R0,R1
        BGE.W    ??spiffs_gc_clean_5
        CMP      R6,#+31
        BGE.W    ??spiffs_gc_clean_5
        LDR      R0,[SP, #+76]
        LDR      R1,[SP, #+12]
        SUBS     R1,R6,R1
        LDRH     R10,[R0, R1, LSL #+1]
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        ADDS     R0,R6,R5, LSL #+5
        ADDS     R0,R0,#+1
        MOVS     R7,R0
        LDRB     R0,[SP, #+32]
        CMP      R0,#+0
        BEQ.N    ??spiffs_gc_clean_6
        CMP      R0,#+2
        BEQ.W    ??spiffs_gc_clean_7
        BCC.N    ??spiffs_gc_clean_8
        B.N      ??spiffs_gc_clean_9
??spiffs_gc_clean_6:
        UXTH     R10,R10          ;; ZeroExt  R10,R10,#+16,#+16
        CMP      R10,#+0
        BEQ.N    ??spiffs_gc_clean_10
        UXTH     R10,R10          ;; ZeroExt  R10,R10,#+16,#+16
        MOVW     R0,#+65535
        CMP      R10,R0
        BEQ.N    ??spiffs_gc_clean_10
        LSLS     R0,R10,#+16
        BMI.N    ??spiffs_gc_clean_10
        MOVS     R0,#+1
        STRB     R0,[SP, #+48]
        STRH     R10,[SP, #+34]
        STRH     R7,[SP, #+40]
        MOVS     R0,#+0
        MOV      R9,R0
??spiffs_gc_clean_10:
        B.N      ??spiffs_gc_clean_11
??spiffs_gc_clean_8:
        LDRH     R0,[SP, #+34]
        UXTH     R10,R10          ;; ZeroExt  R10,R10,#+16,#+16
        CMP      R10,R0
        BNE.W    ??spiffs_gc_clean_12
        ADD      R0,SP,#+52
        STR      R0,[SP, #+4]
        MOVS     R0,#+5
        STR      R0,[SP, #+0]
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        MOVS     R0,#+128
        MUL      R3,R0,R7
        MOVS     R2,#+0
        MOVS     R1,#+21
        MOVS     R0,R4
        BL       spiffs_phys_rd
        MOV      R11,R0
        CMP      R11,#+0
        BPL.N    ??spiffs_gc_clean_13
        MOV      R0,R11
        B.N      ??spiffs_gc_clean_14
??spiffs_gc_clean_13:
        LDRH     R0,[SP, #+54]
        CMP      R0,#+39
        BCS.N    ??spiffs_gc_clean_15
        MOVS     R0,#+0
        B.N      ??spiffs_gc_clean_16
??spiffs_gc_clean_15:
        LDRH     R0,[SP, #+54]
        SUBS     R0,R0,#+39
        MOVS     R1,#+60
        UDIV     R0,R0,R1
        ADDS     R0,R0,#+1
??spiffs_gc_clean_16:
        LDRH     R1,[SP, #+36]
        CMP      R0,R1
        BNE.N    ??spiffs_gc_clean_12
        LDRB     R0,[SP, #+56]
        LSLS     R0,R0,#+24
        BPL.N    ??spiffs_gc_clean_17
        ADD      R0,SP,#+20
        STR      R0,[SP, #+8]
        MOVS     R0,R7
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        STR      R0,[SP, #+4]
        ADD      R0,SP,#+52
        STR      R0,[SP, #+0]
        MOV      R3,R10
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,R4
        BL       spiffs_page_move
        MOV      R11,R0
        CMP      R11,#+0
        BPL.N    ??spiffs_gc_clean_18
        MOV      R0,R11
        B.N      ??spiffs_gc_clean_14
??spiffs_gc_clean_18:
        LDR      R0,[R4, #+36]
        STR      R0,[SP, #+4]
        MOVS     R0,#+128
        STR      R0,[SP, #+0]
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        MOV      R0,#+4096
        MOVS     R1,#+128
        MUL      R1,R1,R8
        MLA      R3,R0,R5,R1
        MOVS     R2,#+0
        MOVS     R1,#+20
        MOVS     R0,R4
        BL       spiffs_phys_rd
        MOV      R11,R0
        CMP      R11,#+0
        BPL.N    ??spiffs_gc_clean_19
        MOV      R0,R11
        B.N      ??spiffs_gc_clean_14
??spiffs_gc_clean_19:
        B.N      ??spiffs_gc_clean_20
??spiffs_gc_clean_17:
        MOVS     R1,R7
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R4
        BL       spiffs_page_delete
        MOV      R11,R0
        CMP      R11,#+0
        BPL.N    ??spiffs_gc_clean_21
        MOV      R0,R11
        B.N      ??spiffs_gc_clean_14
??spiffs_gc_clean_21:
        MOVW     R0,#+65535
        STRH     R0,[SP, #+20]
??spiffs_gc_clean_20:
        LDRH     R0,[SP, #+36]
        CMP      R0,#+0
        BNE.N    ??spiffs_gc_clean_22
        LDR      R0,[SP, #+72]
        LDRH     R1,[SP, #+54]
        ADDS     R0,R0,R1, LSL #+1
        LDRH     R1,[SP, #+20]
        STRH     R1,[R0, #+49]
        B.N      ??spiffs_gc_clean_12
??spiffs_gc_clean_22:
        LDRH     R0,[SP, #+54]
        CMP      R0,#+39
        BCS.N    ??spiffs_gc_clean_23
        LDRH     R0,[SP, #+54]
        B.N      ??spiffs_gc_clean_24
??spiffs_gc_clean_23:
        LDRH     R0,[SP, #+54]
        SUBS     R0,R0,#+39
        MOVS     R1,#+60
        UDIV     R2,R0,R1
        MLS      R0,R1,R2,R0
??spiffs_gc_clean_24:
        LDRH     R1,[SP, #+20]
        LDR      R2,[SP, #+24]
        ADDS     R0,R2,R0, LSL #+1
        STRH     R1,[R0, #+8]
??spiffs_gc_clean_12:
        B.N      ??spiffs_gc_clean_11
??spiffs_gc_clean_7:
        UXTH     R10,R10          ;; ZeroExt  R10,R10,#+16,#+16
        CMP      R10,#+0
        BEQ.N    ??spiffs_gc_clean_25
        UXTH     R10,R10          ;; ZeroExt  R10,R10,#+16,#+16
        MOVW     R0,#+65535
        CMP      R10,R0
        BEQ.N    ??spiffs_gc_clean_25
        LSLS     R0,R10,#+16
        BPL.N    ??spiffs_gc_clean_25
        ADD      R0,SP,#+64
        STR      R0,[SP, #+4]
        MOVS     R0,#+5
        STR      R0,[SP, #+0]
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        MOVS     R0,#+128
        MUL      R3,R0,R7
        MOVS     R2,#+0
        MOVS     R1,#+21
        MOVS     R0,R4
        BL       spiffs_phys_rd
        MOV      R11,R0
        CMP      R11,#+0
        BPL.N    ??spiffs_gc_clean_26
        MOV      R0,R11
        B.N      ??spiffs_gc_clean_14
??spiffs_gc_clean_26:
        LDRB     R0,[SP, #+68]
        LSLS     R0,R0,#+24
        BPL.N    ??spiffs_gc_clean_27
        ADD      R0,SP,#+30
        STR      R0,[SP, #+8]
        MOVS     R0,R7
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        STR      R0,[SP, #+4]
        ADD      R0,SP,#+64
        STR      R0,[SP, #+0]
        MOV      R3,R10
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,R4
        BL       spiffs_page_move
        MOV      R11,R0
        CMP      R11,#+0
        BPL.N    ??spiffs_gc_clean_28
        MOV      R0,R11
        B.N      ??spiffs_gc_clean_14
??spiffs_gc_clean_28:
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
        LDRH     R0,[SP, #+30]
        STR      R0,[SP, #+4]
        LDRH     R0,[SP, #+66]
        STR      R0,[SP, #+0]
        MOV      R3,R10
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        MOVS     R2,#+3
        ADD      R1,SP,#+64
        MOVS     R0,R4
        BL       spiffs_cb_object_event
        LDR      R0,[R4, #+36]
        STR      R0,[SP, #+4]
        MOVS     R0,#+128
        STR      R0,[SP, #+0]
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        MOV      R0,#+4096
        MOVS     R1,#+128
        MUL      R1,R1,R8
        MLA      R3,R0,R5,R1
        MOVS     R2,#+0
        MOVS     R1,#+20
        MOVS     R0,R4
        BL       spiffs_phys_rd
        MOV      R11,R0
        CMP      R11,#+0
        BPL.N    ??spiffs_gc_clean_29
        MOV      R0,R11
        B.N      ??spiffs_gc_clean_14
??spiffs_gc_clean_29:
        B.N      ??spiffs_gc_clean_30
??spiffs_gc_clean_27:
        MOVS     R1,R7
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R4
        BL       spiffs_page_delete
        MOV      R11,R0
        CMP      R11,#+0
        BNE.N    ??spiffs_gc_clean_30
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
        MOVS     R0,R7
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        STR      R0,[SP, #+4]
        LDRH     R0,[SP, #+66]
        STR      R0,[SP, #+0]
        MOV      R3,R10
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        MOVS     R2,#+2
        MOVS     R1,#+0
        MOVS     R0,R4
        BL       spiffs_cb_object_event
??spiffs_gc_clean_30:
        CMP      R11,#+0
        BPL.N    ??spiffs_gc_clean_31
        MOV      R0,R11
        B.N      ??spiffs_gc_clean_14
??spiffs_gc_clean_31:
??spiffs_gc_clean_25:
        B.N      ??spiffs_gc_clean_11
??spiffs_gc_clean_9:
        MOVS     R0,#+0
        MOV      R9,R0
??spiffs_gc_clean_11:
        ADDS     R6,R6,#+1
        B.N      ??spiffs_gc_clean_4
??spiffs_gc_clean_5:
        ADDS     R8,R8,#+1
        B.N      ??spiffs_gc_clean_2
??spiffs_gc_clean_3:
        CMP      R11,#+0
        BNE.W    ??spiffs_gc_clean_1
??spiffs_gc_clean_32:
        LDRB     R0,[SP, #+32]
        CMP      R0,#+0
        BEQ.N    ??spiffs_gc_clean_33
        CMP      R0,#+2
        BEQ.W    ??spiffs_gc_clean_34
        BCC.W    ??spiffs_gc_clean_35
        B.N      ??spiffs_gc_clean_36
??spiffs_gc_clean_33:
        LDRB     R0,[SP, #+48]
        CMP      R0,#+0
        BEQ.W    ??spiffs_gc_clean_37
        STR      R6,[SP, #+44]
        MOVS     R0,#+0
        MOVS     R6,R0
        MOVS     R0,#+1
        STRB     R0,[SP, #+32]
        ADD      R0,SP,#+80
        STR      R0,[SP, #+4]
        MOVS     R0,#+5
        STR      R0,[SP, #+0]
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        MOVS     R0,#+128
        MUL      R3,R0,R7
        MOVS     R2,#+0
        MOVS     R1,#+21
        MOVS     R0,R4
        BL       spiffs_phys_rd
        MOV      R11,R0
        CMP      R11,#+0
        BPL.N    ??spiffs_gc_clean_38
        MOV      R0,R11
        B.N      ??spiffs_gc_clean_14
??spiffs_gc_clean_38:
        LDRH     R0,[SP, #+82]
        CMP      R0,#+39
        BCS.N    ??spiffs_gc_clean_39
        MOVS     R0,#+0
        STRH     R0,[SP, #+36]
        B.N      ??spiffs_gc_clean_40
??spiffs_gc_clean_39:
        LDRH     R0,[SP, #+82]
        SUBS     R0,R0,#+39
        MOVS     R1,#+60
        UDIV     R0,R0,R1
        ADDS     R0,R0,#+1
        STRH     R0,[SP, #+36]
??spiffs_gc_clean_40:
        ADD      R0,SP,#+28
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        LDRH     R2,[SP, #+36]
        LDRH     R0,[SP, #+34]
        ORRS     R1,R0,#0x8000
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R4
        BL       spiffs_obj_lu_find_id_and_span
        MOV      R11,R0
        LDR.N    R0,??DataTable2_2  ;; 0xffffd8ee
        CMP      R11,R0
        BNE.N    ??spiffs_gc_clean_41
        LDRH     R1,[SP, #+40]
        MOVS     R0,R4
        BL       spiffs_page_delete
        MOV      R11,R0
        CMP      R11,#+0
        BPL.N    ??spiffs_gc_clean_42
        MOV      R0,R11
        B.N      ??spiffs_gc_clean_14
??spiffs_gc_clean_42:
        LDR      R0,[SP, #+44]
        MOVS     R6,R0
        MOVS     R0,#+0
        STRB     R0,[SP, #+32]
        B.N      ??spiffs_gc_clean_0
??spiffs_gc_clean_41:
        CMP      R11,#+0
        BPL.N    ??spiffs_gc_clean_43
        MOV      R0,R11
        B.N      ??spiffs_gc_clean_14
??spiffs_gc_clean_43:
        LDR      R0,[R4, #+40]
        STR      R0,[SP, #+4]
        MOVS     R0,#+128
        STR      R0,[SP, #+0]
        LDRH     R0,[SP, #+28]
        MOVS     R1,#+128
        MUL      R3,R1,R0
        MOVS     R2,#+0
        MOVS     R1,#+21
        MOVS     R0,R4
        BL       spiffs_phys_rd
        MOV      R11,R0
        CMP      R11,#+0
        BPL.N    ??spiffs_gc_clean_44
        MOV      R0,R11
        B.N      ??spiffs_gc_clean_14
??spiffs_gc_clean_44:
        LDR      R0,[SP, #+24]
        LDRB     R0,[R0, #+4]
        LSLS     R0,R0,#+31
        BPL.N    ??spiffs_gc_clean_45
        LDR.N    R0,??DataTable2_3  ;; 0xffffd8e4
        B.N      ??spiffs_gc_clean_14
??spiffs_gc_clean_45:
        LDR      R0,[SP, #+24]
        LDRB     R0,[R0, #+4]
        LSLS     R0,R0,#+24
        BMI.N    ??spiffs_gc_clean_46
        LDR.N    R0,??DataTable2_4  ;; 0xffffd8ec
        B.N      ??spiffs_gc_clean_14
??spiffs_gc_clean_46:
        LDR      R0,[SP, #+24]
        LDRB     R0,[R0, #+4]
        LSLS     R0,R0,#+30
        BPL.N    ??spiffs_gc_clean_47
        LDR.N    R0,??DataTable2_5  ;; 0xffffd8eb
        B.N      ??spiffs_gc_clean_14
??spiffs_gc_clean_47:
        LDR      R0,[SP, #+24]
        LDRB     R0,[R0, #+4]
        LSLS     R0,R0,#+29
        BPL.N    ??spiffs_gc_clean_48
        LDR.N    R0,??DataTable2_6  ;; 0xffffd8ea
        B.N      ??spiffs_gc_clean_14
??spiffs_gc_clean_48:
        LDR      R0,[SP, #+24]
        LDRH     R0,[R0, #+2]
        LDRH     R1,[SP, #+36]
        CMP      R0,R1
        BEQ.N    ??spiffs_gc_clean_49
        LDR.N    R0,??DataTable2_7  ;; 0xffffd8e3
        B.N      ??spiffs_gc_clean_14
??spiffs_gc_clean_49:
        LDRH     R0,[SP, #+28]
        STRH     R0,[SP, #+38]
        B.N      ??spiffs_gc_clean_50
??spiffs_gc_clean_37:
        MOVS     R0,#+2
        STRB     R0,[SP, #+32]
        MOVS     R0,#+0
        MOVS     R6,R0
??spiffs_gc_clean_50:
        B.N      ??spiffs_gc_clean_0
??spiffs_gc_clean_35:
        MOVS     R0,#+0
        STRB     R0,[SP, #+32]
        LDR      R0,[SP, #+44]
        MOVS     R6,R0
        LDRH     R0,[SP, #+36]
        CMP      R0,#+0
        BNE.N    ??spiffs_gc_clean_51
        ADD      R0,SP,#+22
        STR      R0,[SP, #+16]
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
        LDR      R0,[R4, #+40]
        STR      R0,[SP, #+0]
        LDRH     R3,[SP, #+38]
        LDRH     R0,[SP, #+34]
        ORRS     R2,R0,#0x8000
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,#+0
        MOVS     R0,R4
        BL       spiffs_object_update_index_hdr
        MOV      R11,R0
        CMP      R11,#+0
        BPL.N    ??spiffs_gc_clean_52
        MOV      R0,R11
        B.N      ??spiffs_gc_clean_14
??spiffs_gc_clean_52:
        B.N      ??spiffs_gc_clean_53
??spiffs_gc_clean_51:
        ADD      R0,SP,#+22
        STR      R0,[SP, #+8]
        LDRH     R0,[SP, #+38]
        STR      R0,[SP, #+4]
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        LDRH     R0,[SP, #+34]
        ORRS     R3,R0,#0x8000
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        LDR      R2,[R4, #+40]
        MOVS     R1,#+0
        MOVS     R0,R4
        BL       spiffs_page_move
        MOV      R11,R0
        CMP      R11,#+0
        BPL.N    ??spiffs_gc_clean_54
        MOV      R0,R11
        B.N      ??spiffs_gc_clean_14
??spiffs_gc_clean_54:
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
        LDRH     R0,[SP, #+22]
        STR      R0,[SP, #+4]
        LDR      R0,[SP, #+24]
        LDRH     R0,[R0, #+2]
        STR      R0,[SP, #+0]
        LDRH     R3,[SP, #+34]
        MOVS     R2,#+0
        LDR      R1,[R4, #+40]
        MOVS     R0,R4
        BL       spiffs_cb_object_event
??spiffs_gc_clean_53:
        B.N      ??spiffs_gc_clean_0
??spiffs_gc_clean_34:
        MOVS     R0,#+3
        STRB     R0,[SP, #+32]
        B.N      ??spiffs_gc_clean_0
??spiffs_gc_clean_36:
        MOVS     R0,#+0
        MOVS     R6,R0
        B.N      ??spiffs_gc_clean_0
??spiffs_gc_clean_1:
        MOV      R0,R11
??spiffs_gc_clean_14:
        ADD      SP,SP,#+92
        POP      {R4-R11,PC}      ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0xffffd8d3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     0xffffd8ef

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     0xffffd8ee

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     0xffffd8e4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     0xffffd8ec

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     0xffffd8eb

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DC32     0xffffd8ea

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_7:
        DC32     0xffffd8e3

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 
// 2 810 bytes in section .text
// 
// 2 810 bytes of CODE memory
//
//Errors: none
//Warnings: none
