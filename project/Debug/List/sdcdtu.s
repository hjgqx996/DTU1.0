///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.40.3.8902/W32 for ARM       15/Dec/2017  11:10:23
// Copyright 1999-2015 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\Ruhr\Xiongmao\github\DTU1.0\gprsdtu\sdcdtu.c
//    Command line =  
//        D:\Ruhr\Xiongmao\github\DTU1.0\gprsdtu\sdcdtu.c -D STM32F10X_MD -D
//        USE_STDPERIPH_DRIVER -lb
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
//        D:\Ruhr\Xiongmao\github\DTU1.0\project\..\gprsdtu\dev\ -Ol --vla
//        --use_c++_inline -I D:\software\IAR\arm\CMSIS\Include\
//    List file    =  
//        D:\Ruhr\Xiongmao\github\DTU1.0\project\Debug\List\sdcdtu.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_ldivmod
        EXTERN __aeabi_memcpy
        EXTERN __aeabi_memset
        EXTERN backup_clean
        EXTERN backup_pop
        EXTERN backup_push
        EXTERN battery_check_power
        EXTERN battery_read
        EXTERN configure_read
        EXTERN configure_update_apply
        EXTERN configure_update_check
        EXTERN configure_update_init
        EXTERN configure_update_push
        EXTERN deviceid_read
        EXTERN etimer_set
        EXTERN framebuff_clean
        EXTERN framebuff_datptr
        EXTERN framebuff_length
        EXTERN framebuff_push
        EXTERN framebuff_push_u16
        EXTERN framebuff_push_u32
        EXTERN framebuff_push_u8
        EXTERN framebuff_remove
        EXTERN free
        EXTERN gprs_close
        EXTERN gprs_connect
        EXTERN gprs_event_closed
        EXTERN gprs_event_connect
        EXTERN gprs_event_recv
        EXTERN gprs_open
        EXTERN gprs_send
        EXTERN gprs_set_parent_process
        EXTERN list_add
        EXTERN list_head
        EXTERN list_item_next
        EXTERN list_length
        EXTERN list_pop
        EXTERN list_remove
        EXTERN log_out
        EXTERN malloc
        EXTERN memb_alloc
        EXTERN memb_free
        EXTERN memb_init
        EXTERN process_current
        EXTERN process_is_running
        EXTERN process_post
        EXTERN process_start
        EXTERN rtc_get_time
        EXTERN rtc_set_time
        EXTERN rtc_wakeup_after_second
        EXTERN rtc_wakeup_at_second
        EXTERN senif_close
        EXTERN senif_open
        EXTERN senif_power_close
        EXTERN senif_power_open
        EXTERN senif_read
        EXTERN senif_write
        EXTERN senproto_lookup
        EXTERN sevproto_check
        EXTERN sevproto_prepare
        EXTERN strlen
        EXTERN timer_expired
        EXTERN timer_set

        PUBLIC backup_commit_process
        PUBLIC configure_update_process
        PUBLIC dtuconfig
        PUBLIC dtudata_commit_process
        PUBLIC hardware_update_process
        PUBLIC sdcdtu_init
        PUBLIC sdcdtu_process
        PUBLIC sendat_collect_process
        PUBLIC sendat_commit_process
        PUBLIC sensor_prewarm_process
        PUBLIC timesync_process


        SECTION `.bss`:DATA:REORDER:NOROOT(2)
framebuffer_gprs_send_buffer_data_buffer:
        DS8 512

        SECTION `.data`:DATA:REORDER:NOROOT(2)
// static __absolute framebuff_t gprs_send_buffer
gprs_send_buffer:
        DATA
        DC32 framebuffer_gprs_send_buffer_data_buffer
        DC32 framebuffer_gprs_send_buffer_data_buffer
        DC32 framebuffer_gprs_send_buffer_data_buffer + 200H

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
next_wakeuptime:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
configure_data_buffer:
        DS8 272

        SECTION `.data`:DATA:REORDER:NOROOT(2)
dtuconfig:
        DATA
        DC32 configure_data_buffer

        SECTION `.data`:DATA:REORDER:NOROOT(2)
timesync_process:
        DATA
        DC32 0H, ?_0, process_thread_timesync_process
        DC8 0, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
process_thread_timesync_process:
        PUSH     {R0-R6,LR}
        MOVS     R6,R0
        MOVS     R4,R1
        MOVS     R5,R2
        MOVS     R0,#+1
        LDRH     R1,[R6, #+0]
        CMP      R1,#+0
        BEQ.N    ??process_thread_timesync_process_0
        CMP      R1,#+60
        BEQ.N    ??process_thread_timesync_process_1
        B.N      ??process_thread_timesync_process_2
??process_thread_timesync_process_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+129
        BNE.N    ??process_thread_timesync_process_3
        LDR.W    R0,??DataTable6
        STR      R5,[R0, #+0]
        LDR.W    R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        BL       gprs_set_parent_process
??process_thread_timesync_process_3:
        BL       gprs_connect
        CMP      R0,#+1
        BNE.N    ??process_thread_timesync_process_4
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        BL       deviceid_read
        STR      R0,[SP, #+4]
        MOVS     R0,#+1
        STRB     R0,[SP, #+8]
        BL       rtc_get_time
        STR      R0,[SP, #+9]
        BL       rtc_get_time
        MOVS     R1,#+0
        LDR.W    R2,??DataTable6_2
        STRD     R0,R1,[R2, #+0]
        ADD      R2,SP,#+0
        MOVS     R1,#+9
        ADD      R0,SP,#+4
        BL       sevproto_prepare
        LDR      R1,[SP, #+0]
        BL       gprs_send
        MOVW     R1,#+30000
        LDR.W    R0,??DataTable6_3
        BL       etimer_set
        MOVS     R0,#+0
        MOVS     R1,#+60
        STRH     R1,[R6, #+0]
??process_thread_timesync_process_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??process_thread_timesync_process_5
        LDR.W    R0,??DataTable6_4
        LDRB     R0,[R0, #+0]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,R0
        BEQ.N    ??process_thread_timesync_process_6
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+136
        BEQ.N    ??process_thread_timesync_process_6
??process_thread_timesync_process_5:
        MOVS     R0,#+1
        B.N      ??process_thread_timesync_process_7
??process_thread_timesync_process_6:
        LDR.W    R0,??DataTable6_4
        LDRB     R0,[R0, #+0]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,R0
        BNE.N    ??process_thread_timesync_process_8
        LDR      R1,[R5, #+4]
        LDR      R0,[R5, #+0]
        BL       sevproto_check
        MOVS     R4,R0
        CMP      R4,#+0
        BEQ.N    ??process_thread_timesync_process_8
        BL       deviceid_read
        LDR      R1,[R4, #+0]
        CMP      R1,R0
        BNE.N    ??process_thread_timesync_process_8
        LDRB     R0,[R4, #+4]
        BICS     R0,R0,#0x80
        CMP      R0,#+1
        BNE.N    ??process_thread_timesync_process_8
        BL       rtc_get_time
        MOVS     R1,#+0
        LDR.W    R2,??DataTable6_5
        STRD     R0,R1,[R2, #+0]
        LDR      R0,[R4, #+5]
        LSLS     R0,R0,#+1
        MOVS     R1,#+0
        LDR.W    R2,??DataTable6_2
        LDRD     R4,R5,[R2, #+0]
        SUBS     R0,R0,R4
        SBCS     R1,R1,R5
        LDR.W    R2,??DataTable6_5
        LDRD     R4,R5,[R2, #+0]
        SUBS     R0,R0,R4
        SBCS     R1,R1,R5
        MOVS     R2,#+2
        MOVS     R3,#+0
        BL       __aeabi_ldivmod
        MOVS     R4,R0
        MOVS     R5,R1
        BL       rtc_get_time
        ADDS     R0,R4,R0
        BL       rtc_set_time
        LDR.W    R0,??DataTable8
        LDR      R0,[R0, #+0]
        ADDS     R0,R4,R0
        LDR.W    R1,??DataTable8
        STR      R0,[R1, #+0]
??process_thread_timesync_process_8:
??process_thread_timesync_process_4:
??process_thread_timesync_process_2:
        MOVS     R0,#+0
        MOVS     R0,#+0
        STRH     R0,[R6, #+0]
        MOVS     R0,#+3
??process_thread_timesync_process_7:
        ADD      SP,SP,#+16
        POP      {R4-R6,PC}       ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??et:
        DS8 16

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??parent:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(3)
??t1:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(3)
??t2:
        DS8 8

        SECTION `.data`:DATA:REORDER:NOROOT(2)
sensor_prewarm_list:
        DATA
        DC32 sensor_prewarm_list_list

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// static __absolute void *sensor_prewarm_list_list
sensor_prewarm_list_list:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
sendat_collect_list:
        DATA
        DC32 sendat_collect_list_list

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// static __absolute void *sendat_collect_list_list
sendat_collect_list_list:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
sendat_commit_list:
        DATA
        DC32 sendat_commit_list_list

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// static __absolute void *sendat_commit_list_list
sendat_commit_list_list:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
sccb_memb:
        DATA
        DC16 16, 16
        DC32 sccb_memb_memb_count, sccb_memb_memb_mem

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// static __absolute char sccb_memb_memb_count[16]
sccb_memb_memb_count:
        DS8 16

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// static __absolute struct sccb_struct sccb_memb_memb_mem[16]
sccb_memb_memb_mem:
        DS8 256

        SECTION `.data`:DATA:REORDER:NOROOT(2)
sensor_prewarm_process:
        DATA
        DC32 0H, ?_1, process_thread_sensor_prewarm_process
        DC8 0, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
process_thread_sensor_prewarm_process:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R0,#+1
        LDRH     R1,[R4, #+0]
        CMP      R1,#+0
        BEQ.N    ??process_thread_sensor_prewarm_process_0
        CMP      R1,#+120
        BEQ.N    ??process_thread_sensor_prewarm_process_1
        B.N      ??process_thread_sensor_prewarm_process_2
??process_thread_sensor_prewarm_process_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+129
        BNE.N    ??process_thread_sensor_prewarm_process_3
        LDR.W    R0,??DataTable7
        STR      R2,[R0, #+0]
        LDR.W    R0,??DataTable7_1
        BL       memb_init
??process_thread_sensor_prewarm_process_3:
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+0]
        ADDS     R6,R0,#+63
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+0]
        LDRB     R7,[R0, #+62]
        MOVS     R8,#+0
        B.N      ??process_thread_sensor_prewarm_process_4
??process_thread_sensor_prewarm_process_5:
        LDR.W    R0,??DataTable7_1
        BL       memb_alloc
        MOV      R9,R0
        CMP      R9,#+0
        BEQ.N    ??process_thread_sensor_prewarm_process_6
        MOVS     R0,#+13
        MLA      R0,R0,R8,R6
        STR      R0,[R9, #+4]
        BL       rtc_get_time
        MOVS     R1,#+13
        MLA      R1,R1,R8,R6
        LDR      R1,[R1, #+8]
        ADDS     R0,R0,R1
        STR      R0,[R9, #+8]
        MOVS     R0,#+13
        MLA      R0,R0,R8,R6
        LDRB     R0,[R0, #+12]
        BL       senif_power_open
        MOV      R1,R9
        LDR.W    R0,??DataTable7_3
        LDR      R0,[R0, #+0]
        BL       list_add
??process_thread_sensor_prewarm_process_6:
        ADDS     R8,R8,#+1
??process_thread_sensor_prewarm_process_4:
        CMP      R8,R7
        BCC.N    ??process_thread_sensor_prewarm_process_5
??process_thread_sensor_prewarm_process_7:
        LDR.W    R0,??DataTable7_3
        LDR      R0,[R0, #+0]
        BL       list_length
        CMP      R0,#+0
        BEQ.N    ??process_thread_sensor_prewarm_process_8
        MOVS     R2,#+0
        MOVS     R1,#+133
        LDR.W    R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        BL       process_post
        MOVS     R0,#+0
        MOVS     R1,#+120
        STRH     R1,[R4, #+0]
??process_thread_sensor_prewarm_process_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??process_thread_sensor_prewarm_process_9
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+133
        BEQ.N    ??process_thread_sensor_prewarm_process_10
??process_thread_sensor_prewarm_process_9:
        MOVS     R0,#+1
        B.N      ??process_thread_sensor_prewarm_process_11
??process_thread_sensor_prewarm_process_10:
        LDR.W    R0,??DataTable7_3
        LDR      R0,[R0, #+0]
        BL       list_head
        MOVS     R6,R0
        B.N      ??process_thread_sensor_prewarm_process_12
??process_thread_sensor_prewarm_process_13:
        MOVS     R0,R6
        BL       list_item_next
        MOVS     R6,R0
??process_thread_sensor_prewarm_process_12:
        CMP      R6,#+0
        BEQ.N    ??process_thread_sensor_prewarm_process_7
        BL       rtc_get_time
        LDR      R1,[R6, #+8]
        CMP      R1,R0
        BCS.N    ??process_thread_sensor_prewarm_process_13
        MOVS     R1,R6
        LDR.W    R0,??DataTable7_3
        LDR      R0,[R0, #+0]
        BL       list_remove
        MOVS     R1,R6
        LDR.W    R0,??DataTable8_1
        LDR      R0,[R0, #+0]
        BL       list_add
        B.N      ??process_thread_sensor_prewarm_process_7
??process_thread_sensor_prewarm_process_8:
??process_thread_sensor_prewarm_process_2:
        MOVS     R0,#+0
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+3
??process_thread_sensor_prewarm_process_11:
        POP      {R1,R4-R9,PC}    ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??parent_1:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
framebuffer_sensorInterfaceSendReceiveBuffer_data_buffer:
        DS8 512

        SECTION `.data`:DATA:REORDER:NOROOT(2)
// static __absolute framebuff_t sensorInterfaceSendReceiveBuffer
sensorInterfaceSendReceiveBuffer:
        DATA
        DC32 framebuffer_sensorInterfaceSendReceiveBuffer_data_buffer
        DC32 framebuffer_sensorInterfaceSendReceiveBuffer_data_buffer
        DC32 framebuffer_sensorInterfaceSendReceiveBuffer_data_buffer + 200H

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
framebuffer_sensorDataStringBuffer_data_buffer:
        DS8 512

        SECTION `.data`:DATA:REORDER:NOROOT(2)
// static __absolute framebuff_t sensorDataStringBuffer
sensorDataStringBuffer:
        DATA
        DC32 framebuffer_sensorDataStringBuffer_data_buffer
        DC32 framebuffer_sensorDataStringBuffer_data_buffer
        DC32 framebuffer_sensorDataStringBuffer_data_buffer + 200H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
sendat_collect_process:
        DATA
        DC32 0H, ?_2, process_thread_sendat_collect_process
        DC8 0, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
process_thread_sendat_collect_process:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R0,#+1
        LDRH     R1,[R4, #+0]
        CMP      R1,#+0
        BEQ.N    ??process_thread_sendat_collect_process_0
        CMP      R1,#+150
        BEQ.N    ??process_thread_sendat_collect_process_1
        CMP      R1,#+164
        BEQ.W    ??process_thread_sendat_collect_process_2
        B.N      ??process_thread_sendat_collect_process_3
??process_thread_sendat_collect_process_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+129
        BNE.N    ??process_thread_sendat_collect_process_4
        LDR.W    R0,??DataTable8_2
        STR      R2,[R0, #+0]
??process_thread_sendat_collect_process_4:
        LDR.W    R0,??DataTable8_3
        BL       process_is_running
        CMP      R0,#+0
        BNE.N    ??process_thread_sendat_collect_process_5
        LDR.W    R0,??DataTable8_1
        LDR      R0,[R0, #+0]
        BL       list_length
        CMP      R0,#+0
        BEQ.W    ??process_thread_sendat_collect_process_6
??process_thread_sendat_collect_process_5:
        MOVS     R2,#+0
        MOVS     R1,#+133
        LDR.W    R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        BL       process_post
        MOVS     R0,#+0
        MOVS     R1,#+150
        STRH     R1,[R4, #+0]
??process_thread_sendat_collect_process_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??process_thread_sendat_collect_process_7
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+133
        BEQ.N    ??process_thread_sendat_collect_process_8
??process_thread_sendat_collect_process_7:
        MOVS     R0,#+1
        B.N      ??process_thread_sendat_collect_process_9
??process_thread_sendat_collect_process_8:
        LDR.W    R0,??DataTable8_1
        LDR      R0,[R0, #+0]
        BL       list_pop
        LDR.W    R1,??DataTable8_4
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable8_4
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??process_thread_sendat_collect_process_4
        LDR.W    R0,??DataTable8_4
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+4]
        LDRH     R0,[R0, #+4]
        BL       senproto_lookup
        LDR.W    R1,??DataTable8_5
        STR      R0,[R1, #+0]
        CMP      R0,#+0
        BEQ.N    ??process_thread_sendat_collect_process_4
        MOVS     R6,#+0
        LDR.W    R0,??DataTable8_6
        BL       framebuff_clean
        LDR.W    R0,??DataTable8_6
        BL       framebuff_datptr
        LDR.W    R1,??DataTable8_4
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+4]
        LDRH     R1,[R1, #+6]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.W    R2,??DataTable8_5
        LDR      R2,[R2, #+0]
        LDR      R2,[R2, #+0]
        BLX      R2
        MOVS     R6,R0
        LDR.W    R0,??DataTable8_4
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+12]
        BL       senif_open
        LDR.W    R0,??DataTable8_6
        BL       framebuff_datptr
        MOVS     R1,R0
        MOVS     R2,R6
        LDR.W    R0,??DataTable8_4
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+12]
        BL       senif_write
        MOVW     R1,#+3000
        LDR.W    R0,??DataTable8_7
        BL       timer_set
        LDR.W    R0,??DataTable8_6
        BL       framebuff_clean
??process_thread_sendat_collect_process_10:
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
        MOVS     R6,#+0
        MOVS     R2,#+0
        MOVS     R1,#+133
        LDR.W    R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        BL       process_post
        MOVS     R0,#+0
        MOVS     R1,#+164
        STRH     R1,[R4, #+0]
??process_thread_sendat_collect_process_2:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??process_thread_sendat_collect_process_11
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+133
        BEQ.N    ??process_thread_sendat_collect_process_12
??process_thread_sendat_collect_process_11:
        MOVS     R0,#+1
        B.N      ??process_thread_sendat_collect_process_9
??process_thread_sendat_collect_process_12:
        LDR.W    R0,??DataTable8_7
        BL       timer_expired
        CMP      R0,#+0
        BEQ.N    ??process_thread_sendat_collect_process_13
        LDR.W    R0,??DataTable8_4
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+12]
        BL       senif_close
        LDR.W    R0,??DataTable8_4
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+12]
        BL       senif_power_close
        LDR.W    R0,??DataTable8_4
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable7_1
        BL       memb_free
        B.N      ??process_thread_sendat_collect_process_4
??process_thread_sendat_collect_process_13:
        MOVS     R2,#+1
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable8_4
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+12]
        BL       senif_read
        CMP      R0,#+0
        BEQ.N    ??process_thread_sendat_collect_process_10
        LDRB     R1,[SP, #+0]
        LDR.W    R0,??DataTable8_6
        BL       framebuff_push_u8
        LDR.W    R0,??DataTable8_6
        BL       framebuff_length
        MOVS     R6,R0
        LDR.W    R0,??DataTable8_6
        BL       framebuff_datptr
        MOVS     R7,R0
        LDR.W    R0,??DataTable9
        BL       framebuff_datptr
        MOVS     R3,R6
        MOVS     R2,R7
        MOVS     R1,R0
        LDR.W    R0,??DataTable8_4
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+4]
        LDR      R0,[R0, #+0]
        LDR.W    R6,??DataTable8_5
        LDR      R6,[R6, #+0]
        LDR      R6,[R6, #+4]
        BLX      R6
        MOVS     R6,R0
        CMP      R6,#+1
        BNE.N    ??process_thread_sendat_collect_process_14
        MOVS     R1,#+1
        LDR.W    R0,??DataTable8_6
        BL       framebuff_remove
??process_thread_sendat_collect_process_14:
        CMP      R6,#+2
        BCC.N    ??process_thread_sendat_collect_process_10
        LDR.W    R0,??DataTable8_4
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+12]
        BL       senif_close
        LDR.W    R0,??DataTable8_4
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+4]
        LDRB     R0,[R0, #+12]
        BL       senif_power_close
        ADDS     R0,R6,#+1
        BL       malloc
        LDR.W    R1,??DataTable8_4
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+12]
        LDR.W    R0,??DataTable8_4
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+12]
        CMP      R0,#+0
        BEQ.N    ??process_thread_sendat_collect_process_15
        ADDS     R1,R6,#+1
        MOVS     R2,#+0
        LDR.W    R0,??DataTable8_4
        LDR      R0,[R0, #+0]
        LDR      R7,[R0, #+12]
        MOVS     R0,R7
        BL       __aeabi_memset
        LDR.W    R0,??DataTable9
        BL       framebuff_datptr
        LDR.W    R1,??DataTable8_4
        LDR      R1,[R1, #+0]
        LDR      R7,[R1, #+12]
        MOVS     R2,R6
        MOVS     R1,R0
        MOVS     R0,R7
        BL       __aeabi_memcpy
        LDR.W    R0,??DataTable8_4
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable8_1
        LDR      R0,[R0, #+0]
        BL       list_remove
        LDR.W    R0,??DataTable8_4
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable9_1
        LDR      R0,[R0, #+0]
        BL       list_add
        B.N      ??process_thread_sendat_collect_process_16
??process_thread_sendat_collect_process_15:
        ADR.N    R0,??DataTable3  ;; 0x39, 0x0A, 0x00, 0x00
        BL       log_out
        LDR.W    R0,??DataTable8_4
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable7_1
        BL       memb_free
??process_thread_sendat_collect_process_16:
        B.N      ??process_thread_sendat_collect_process_4
??process_thread_sendat_collect_process_6:
??process_thread_sendat_collect_process_3:
        MOVS     R0,#+0
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+3
??process_thread_sendat_collect_process_9:
        POP      {R1,R4-R7,PC}    ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??parent_2:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??tm:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??sensorCollectControlBlock:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??sensorProtocol:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
commit_buff:
        DATA
        DC32 framebuffer_commit_buff_data_buffer
        DC32 framebuffer_commit_buff_data_buffer
        DC32 framebuffer_commit_buff_data_buffer + 100H

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// static __absolute uint8_t framebuffer_commit_buff_data_buffer[256]
framebuffer_commit_buff_data_buffer:
        DS8 256

        SECTION `.data`:DATA:REORDER:NOROOT(2)
sendat_commit_process:
        DATA
        DC32 0H, ?_3, process_thread_sendat_commit_process
        DC8 0, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
process_thread_sendat_commit_process:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R0,#+1
        LDRH     R1,[R4, #+0]
        CMP      R1,#+0
        BEQ.N    ??process_thread_sendat_commit_process_0
        CMP      R1,#+231
        BEQ.N    ??process_thread_sendat_commit_process_1
        CMP      R1,#+256
        BEQ.W    ??process_thread_sendat_commit_process_2
        B.N      ??process_thread_sendat_commit_process_3
??process_thread_sendat_commit_process_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+129
        BNE.N    ??process_thread_sendat_commit_process_4
        LDR.W    R0,??DataTable9_2
        STR      R6,[R0, #+0]
        MOVS     R0,#+1
        LDR.W    R1,??DataTable9_3
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        BL       gprs_set_parent_process
??process_thread_sendat_commit_process_4:
        LDR.W    R0,??DataTable9_4
        BL       process_is_running
        CMP      R0,#+0
        BNE.N    ??process_thread_sendat_commit_process_5
        LDR.W    R0,??DataTable9_1
        LDR      R0,[R0, #+0]
        BL       list_length
        CMP      R0,#+0
        BEQ.W    ??process_thread_sendat_commit_process_6
??process_thread_sendat_commit_process_5:
        BL       gprs_connect
        CMP      R0,#+1
        BNE.W    ??process_thread_sendat_commit_process_7
        LDR.W    R0,??DataTable9_1
        LDR      R0,[R0, #+0]
        BL       list_pop
        LDR.W    R1,??DataTable9_5
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable9_5
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.W    ??process_thread_sendat_commit_process_8
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        LDR.W    R0,??DataTable9_6
        BL       framebuff_clean
        BL       deviceid_read
        MOVS     R1,R0
        LDR.W    R0,??DataTable9_6
        BL       framebuff_push_u32
        MOVS     R1,#+2
        LDR.W    R0,??DataTable9_6
        BL       framebuff_push_u8
        LDR.W    R0,??DataTable9_5
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+12]
        BL       strlen
        MOVS     R2,R0
        LDR.W    R0,??DataTable9_5
        LDR      R0,[R0, #+0]
        LDR      R1,[R0, #+12]
        LDR.W    R0,??DataTable9_6
        BL       framebuff_push
        LDR.W    R0,??DataTable9_6
        BL       framebuff_length
        MOVS     R7,R0
        LDR.W    R0,??DataTable9_6
        BL       framebuff_datptr
        ADD      R2,SP,#+0
        MOVS     R1,R7
        BL       sevproto_prepare
        LDR      R1,[SP, #+0]
        BL       gprs_send
        MOVW     R1,#+30000
        LDR.W    R0,??DataTable9_7
        BL       etimer_set
        MOVS     R0,#+0
        MOVS     R1,#+231
        STRH     R1,[R4, #+0]
??process_thread_sendat_commit_process_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??process_thread_sendat_commit_process_9
        LDR.W    R0,??DataTable6_4
        LDRB     R0,[R0, #+0]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,R0
        BEQ.N    ??process_thread_sendat_commit_process_10
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+136
        BEQ.N    ??process_thread_sendat_commit_process_10
??process_thread_sendat_commit_process_9:
        MOVS     R0,#+1
        B.N      ??process_thread_sendat_commit_process_11
??process_thread_sendat_commit_process_10:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+136
        BNE.N    ??process_thread_sendat_commit_process_12
        LDR.W    R0,??DataTable9_5
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+12]
        BL       strlen
        MOVS     R1,R0
        LDR.W    R0,??DataTable9_5
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+12]
        BL       backup_push
??process_thread_sendat_commit_process_12:
        LDR.W    R0,??DataTable6_4
        LDRB     R0,[R0, #+0]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,R0
        BNE.N    ??process_thread_sendat_commit_process_13
        LDR      R1,[R6, #+4]
        MOVS     R7,#+0
        LDR      R0,[R6, #+0]
        BL       sevproto_check
        MOVS     R7,R0
        CMP      R7,#+0
        BEQ.N    ??process_thread_sendat_commit_process_14
        BL       deviceid_read
        LDR      R1,[R7, #+0]
        CMP      R1,R0
        BNE.N    ??process_thread_sendat_commit_process_14
        LDRB     R0,[R7, #+4]
        BICS     R0,R0,#0x80
        CMP      R0,#+2
        BNE.N    ??process_thread_sendat_commit_process_14
        LDRB     R0,[R7, #+5]
        CMP      R0,#+0
        BEQ.N    ??process_thread_sendat_commit_process_13
??process_thread_sendat_commit_process_14:
        LDR.W    R0,??DataTable9_5
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+12]
        BL       strlen
        MOVS     R1,R0
        LDR.W    R0,??DataTable9_5
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+12]
        BL       backup_push
??process_thread_sendat_commit_process_13:
        LDR.W    R0,??DataTable9_5
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+12]
        BL       free
        LDR.W    R0,??DataTable9_5
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable7_1
        BL       memb_free
        B.N      ??process_thread_sendat_commit_process_8
??process_thread_sendat_commit_process_7:
        LDR.W    R0,??DataTable9_1
        LDR      R0,[R0, #+0]
        BL       list_pop
        LDR.W    R1,??DataTable9_5
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable9_5
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??process_thread_sendat_commit_process_8
        LDR.W    R0,??DataTable9_5
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+12]
        BL       strlen
        MOVS     R1,R0
        LDR.W    R0,??DataTable9_5
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+12]
        BL       backup_push
        LDR.W    R0,??DataTable9_5
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+12]
        BL       free
        LDR.W    R0,??DataTable9_5
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable7_1
        BL       memb_free
??process_thread_sendat_commit_process_8:
        MOVS     R2,#+0
        MOVS     R1,#+133
        LDR.W    R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        BL       process_post
        MOVS     R0,#+0
        MOV      R1,#+256
        STRH     R1,[R4, #+0]
??process_thread_sendat_commit_process_2:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??process_thread_sendat_commit_process_15
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+133
        BEQ.N    ??process_thread_sendat_commit_process_16
??process_thread_sendat_commit_process_15:
        MOVS     R0,#+1
        B.N      ??process_thread_sendat_commit_process_11
??process_thread_sendat_commit_process_16:
        B.N      ??process_thread_sendat_commit_process_4
??process_thread_sendat_commit_process_6:
??process_thread_sendat_commit_process_3:
        MOVS     R0,#+0
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+3
??process_thread_sendat_commit_process_11:
        POP      {R1,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC8      0x39, 0x0A, 0x00, 0x00

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??parent_3:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??sendat_sent_flag:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??et_1:
        DS8 16

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??sccb:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
configure_update_process:
        DATA
        DC32 0H, ?_4, process_thread_configure_update_process
        DC8 0, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
process_thread_configure_update_process:
        PUSH     {R4-R7,LR}
        SUB      SP,SP,#+12
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R0,#+1
        LDRH     R1,[R4, #+0]
        CMP      R1,#+0
        BEQ.N    ??process_thread_configure_update_process_0
        CMP      R1,#+286
        BEQ.N    ??process_thread_configure_update_process_1
        CMP      R1,#+312
        BEQ.W    ??process_thread_configure_update_process_2
        CMP      R1,#+322
        BEQ.W    ??process_thread_configure_update_process_3
        B.N      ??process_thread_configure_update_process_4
??process_thread_configure_update_process_0:
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+129
        BNE.N    ??process_thread_configure_update_process_5
        LDR.W    R0,??DataTable9_8
        STR      R6,[R0, #+0]
        LDR.W    R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        BL       gprs_set_parent_process
??process_thread_configure_update_process_5:
        BL       gprs_connect
        CMP      R0,#+1
        BNE.W    ??process_thread_configure_update_process_6
        BL       deviceid_read
        LDR.W    R1,??DataTable9_9
        STR      R0,[R1, #+0]
        MOVS     R0,#+3
        LDR.W    R1,??DataTable9_9
        STRB     R0,[R1, #+4]
        LDR.W    R0,??DataTable7_2
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+2]
        LDR.W    R1,??DataTable9_9
        STR      R0,[R1, #+5]
        ADD      R2,SP,#+4
        MOVS     R1,#+9
        LDR.W    R0,??DataTable9_9
        BL       sevproto_prepare
        LDR      R1,[SP, #+4]
        BL       gprs_send
        MOVW     R1,#+30000
        LDR.W    R0,??DataTable9_10
        BL       etimer_set
        MOVS     R0,#+0
        MOV      R1,#+286
        STRH     R1,[R4, #+0]
??process_thread_configure_update_process_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??process_thread_configure_update_process_7
        LDR.N    R0,??DataTable6_4
        LDRB     R0,[R0, #+0]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,R0
        BEQ.N    ??process_thread_configure_update_process_8
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+136
        BEQ.N    ??process_thread_configure_update_process_8
??process_thread_configure_update_process_7:
        MOVS     R0,#+1
        B.N      ??process_thread_configure_update_process_9
??process_thread_configure_update_process_8:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+136
        BNE.N    ??process_thread_configure_update_process_10
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+2
        B.N      ??process_thread_configure_update_process_9
??process_thread_configure_update_process_10:
        LDR.N    R0,??DataTable6_4
        LDRB     R0,[R0, #+0]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,R0
        BNE.W    ??process_thread_configure_update_process_6
        LDR      R1,[R6, #+4]
        LDR      R0,[R6, #+0]
        BL       sevproto_check
        MOVS     R7,R0
        CMP      R7,#+0
        BEQ.N    ??process_thread_configure_update_process_11
        BL       deviceid_read
        LDR      R1,[R7, #+0]
        CMP      R1,R0
        BNE.N    ??process_thread_configure_update_process_11
        LDRB     R0,[R7, #+4]
        BICS     R0,R0,#0x80
        CMP      R0,#+3
        BEQ.N    ??process_thread_configure_update_process_12
??process_thread_configure_update_process_11:
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+2
        B.N      ??process_thread_configure_update_process_9
??process_thread_configure_update_process_12:
        LDR      R0,[R7, #+5]
        LDR.W    R1,??DataTable7_2
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+2]
        CMP      R0,R1
        BNE.N    ??process_thread_configure_update_process_13
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+2
        B.N      ??process_thread_configure_update_process_9
??process_thread_configure_update_process_13:
        LDRH     R0,[R7, #+9]
        LDR.W    R1,??DataTable11
        STR      R0,[R1, #+0]
        LDR      R0,[R7, #+5]
        LDR.W    R1,??DataTable10_1
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable11
        LDR      R1,[R0, #+0]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.W    R0,??DataTable10_1
        LDR      R0,[R0, #+0]
        BL       configure_update_init
??process_thread_configure_update_process_14:
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R2,#+0
        MOVS     R1,#+133
        LDR.N    R0,??DataTable6_1
        LDR      R0,[R0, #+0]
        BL       process_post
        MOVS     R0,#+0
        MOV      R1,#+312
        STRH     R1,[R4, #+0]
??process_thread_configure_update_process_2:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??process_thread_configure_update_process_15
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+133
        BEQ.N    ??process_thread_configure_update_process_16
??process_thread_configure_update_process_15:
        MOVS     R0,#+1
        B.N      ??process_thread_configure_update_process_9
??process_thread_configure_update_process_16:
        LDR.W    R0,??DataTable11
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable11_1
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        CMP      R0,#+512
        BLS.N    ??process_thread_configure_update_process_17
        MOV      R0,#+512
        LDR.W    R1,??DataTable11_2
        STR      R0,[R1, #+0]
        B.N      ??process_thread_configure_update_process_18
??process_thread_configure_update_process_17:
        LDR.W    R0,??DataTable11
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable11_1
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable11_2
        STR      R0,[R1, #+0]
??process_thread_configure_update_process_18:
        BL       deviceid_read
        LDR.W    R1,??DataTable11_3
        STR      R0,[R1, #+0]
        MOVS     R0,#+4
        LDR.W    R1,??DataTable11_3
        STRB     R0,[R1, #+4]
        LDR.W    R0,??DataTable10_1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable11_3
        STR      R0,[R1, #+5]
        LDR.W    R0,??DataTable11_1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable11_3
        STRH     R0,[R1, #+9]
        LDR.W    R0,??DataTable11_2
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable11_3
        STRH     R0,[R1, #+11]
        ADD      R2,SP,#+0
        MOVS     R1,#+13
        LDR.W    R0,??DataTable11_3
        BL       sevproto_prepare
        LDR      R1,[SP, #+0]
        BL       gprs_send
        MOVW     R1,#+30000
        LDR.W    R0,??DataTable9_10
        BL       etimer_set
        MOVS     R0,#+0
        MOV      R1,#+322
        STRH     R1,[R4, #+0]
??process_thread_configure_update_process_3:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??process_thread_configure_update_process_19
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+136
        BEQ.N    ??process_thread_configure_update_process_20
        LDR.N    R0,??DataTable6_4
        LDRB     R0,[R0, #+0]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,R0
        BEQ.N    ??process_thread_configure_update_process_20
??process_thread_configure_update_process_19:
        MOVS     R0,#+1
        B.N      ??process_thread_configure_update_process_9
??process_thread_configure_update_process_20:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+136
        BNE.N    ??process_thread_configure_update_process_21
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+2
        B.N      ??process_thread_configure_update_process_9
??process_thread_configure_update_process_21:
        LDR.N    R0,??DataTable6_4
        LDRB     R0,[R0, #+0]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,R0
        BNE.N    ??process_thread_configure_update_process_14
        LDR      R1,[R6, #+4]
        LDR      R0,[R6, #+0]
        BL       sevproto_check
        MOVS     R7,R0
        CMP      R7,#+0
        BEQ.N    ??process_thread_configure_update_process_22
        BL       deviceid_read
        LDR      R1,[R7, #+0]
        CMP      R1,R0
        BNE.N    ??process_thread_configure_update_process_22
        LDRB     R0,[R7, #+4]
        BICS     R0,R0,#0x80
        CMP      R0,#+4
        BEQ.N    ??process_thread_configure_update_process_23
??process_thread_configure_update_process_22:
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+2
        B.N      ??process_thread_configure_update_process_9
??process_thread_configure_update_process_23:
        LDR.W    R0,??DataTable11_2
        LDR      R1,[R0, #+0]
        ADDS     R0,R7,#+5
        BL       configure_update_push
        LDR.W    R0,??DataTable11_1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable11_2
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable11_1
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable11_1
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable11
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BNE.W    ??process_thread_configure_update_process_14
        BL       configure_update_check
        CMP      R0,#+1
        BNE.N    ??process_thread_configure_update_process_24
        BL       configure_update_apply
??process_thread_configure_update_process_24:
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+2
        B.N      ??process_thread_configure_update_process_9
??process_thread_configure_update_process_6:
??process_thread_configure_update_process_4:
        MOVS     R0,#+0
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+3
??process_thread_configure_update_process_9:
        POP      {R1-R7,PC}       ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??parent_4:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??et_2:
        DS8 16

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??config_require_frame:
        DS8 12

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??new_version:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??new_configure_size:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??recvsize:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??offset:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??config_data_require_frame:
        DS8 16

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
sdcdtu_frameware_update_require_version_prepare:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.W    R0,??DataTable11_4
        BL       framebuff_clean
        MOVS     R1,#+126
        LDR.W    R0,??DataTable11_4
        BL       framebuff_push_u8
        MOVS     R1,#+0
        LDR.W    R0,??DataTable11_4
        BL       framebuff_push_u8
        MOVS     R1,#+9
        LDR.W    R0,??DataTable11_4
        BL       framebuff_push_u16
        MOVS     R1,#+0
        LDR.W    R0,??DataTable11_4
        BL       framebuff_push_u32
        MOVS     R1,#+5
        LDR.W    R0,??DataTable11_4
        BL       framebuff_push_u8
        MOVS     R1,R4
        LDR.W    R0,??DataTable11_4
        BL       framebuff_push_u32
        MOVS     R1,#+0
        LDR.W    R0,??DataTable11_4
        BL       framebuff_push_u32
        MOVS     R1,#+10
        LDR.W    R0,??DataTable11_4
        BL       framebuff_push_u8
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
sdcdtu_frameware_update_reply_version_process:
        LDR      R3,[R0, #+4]
        CMP      R3,#+20
        BCS.N    ??sdcdtu_frameware_update_reply_version_process_0
        MOVS     R0,#+1
        B.N      ??sdcdtu_frameware_update_reply_version_process_1
??sdcdtu_frameware_update_reply_version_process_0:
        LDR      R3,[R0, #+0]
        LDRB     R0,[R3, #+0]
        ADDS     R3,R3,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+126
        BEQ.N    ??sdcdtu_frameware_update_reply_version_process_2
        MOVS     R0,#+2
        B.N      ??sdcdtu_frameware_update_reply_version_process_1
??sdcdtu_frameware_update_reply_version_process_2:
        LDRB     R0,[R3, #+0]
        ADDS     R3,R3,#+1
        LDRH     R0,[R3, #+0]
        ADDS     R3,R3,#+2
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+11
        BEQ.N    ??sdcdtu_frameware_update_reply_version_process_3
        MOVS     R0,#+1
        B.N      ??sdcdtu_frameware_update_reply_version_process_1
??sdcdtu_frameware_update_reply_version_process_3:
        LDR      R0,[R3, #+0]
        ADDS     R3,R3,#+4
        CMP      R0,#+0
        BEQ.N    ??sdcdtu_frameware_update_reply_version_process_4
        MOVS     R0,#+3
        B.N      ??sdcdtu_frameware_update_reply_version_process_1
??sdcdtu_frameware_update_reply_version_process_4:
        LDRB     R0,[R3, #+0]
        ADDS     R3,R3,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+133
        BEQ.N    ??sdcdtu_frameware_update_reply_version_process_5
        MOVS     R0,#+4
        B.N      ??sdcdtu_frameware_update_reply_version_process_1
??sdcdtu_frameware_update_reply_version_process_5:
        LDR      R0,[R3, #+0]
        STR      R0,[R1, #+0]
        ADDS     R3,R3,#+4
        LDRH     R0,[R3, #+0]
        STR      R0,[R2, #+0]
        ADDS     R3,R3,#+2
        LDR      R0,[R3, #+0]
        ADDS     R3,R3,#+4
        LDRB     R0,[R3, #+0]
        ADDS     R3,R3,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+10
        BEQ.N    ??sdcdtu_frameware_update_reply_version_process_6
        MOVS     R0,#+5
        B.N      ??sdcdtu_frameware_update_reply_version_process_1
??sdcdtu_frameware_update_reply_version_process_6:
        MOVS     R0,#+0
??sdcdtu_frameware_update_reply_version_process_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
sdcdtu_frameware_update_data_require_prepare:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        LDR.W    R0,??DataTable11_4
        BL       framebuff_clean
        MOVS     R1,#+126
        LDR.W    R0,??DataTable11_4
        BL       framebuff_push_u8
        MOVS     R1,#+0
        LDR.W    R0,??DataTable11_4
        BL       framebuff_push_u8
        MOVS     R1,#+13
        LDR.W    R0,??DataTable11_4
        BL       framebuff_push_u16
        MOVS     R1,#+0
        LDR.W    R0,??DataTable11_4
        BL       framebuff_push_u32
        MOVS     R1,#+6
        LDR.W    R0,??DataTable11_4
        BL       framebuff_push_u8
        MOVS     R1,R4
        LDR.W    R0,??DataTable11_4
        BL       framebuff_push_u32
        MOVS     R1,R5
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.W    R0,??DataTable11_4
        BL       framebuff_push_u16
        MOVS     R1,R6
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.W    R0,??DataTable11_4
        BL       framebuff_push_u16
        MOVS     R1,#+0
        LDR.W    R0,??DataTable11_4
        BL       framebuff_push_u32
        MOVS     R1,#+10
        LDR.W    R0,??DataTable11_4
        BL       framebuff_push_u8
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     ??parent

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     process_current

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC32     ??t1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC32     ??et

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_4:
        DC32     gprs_event_recv

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_5:
        DC32     ??t2

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
sdcdtu_frameware_update_data_reply_process:
        MOVS     R2,#+0
        LDR      R1,[R0, #+4]
        CMP      R1,#+13
        BCS.N    ??sdcdtu_frameware_update_data_reply_process_0
        MOVS     R0,#+1
        B.N      ??sdcdtu_frameware_update_data_reply_process_1
??sdcdtu_frameware_update_data_reply_process_0:
        LDR      R2,[R0, #+0]
        LDRB     R0,[R2, #+0]
        ADDS     R2,R2,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+126
        BEQ.N    ??sdcdtu_frameware_update_data_reply_process_2
        MOVS     R0,#+2
        B.N      ??sdcdtu_frameware_update_data_reply_process_1
??sdcdtu_frameware_update_data_reply_process_2:
        LDRB     R0,[R2, #+0]
        ADDS     R2,R2,#+1
        LDRH     R0,[R2, #+0]
        ADDS     R2,R2,#+2
        SUBS     R0,R0,#+5
        LDR      R1,[R2, #+0]
        ADDS     R2,R2,#+4
        CMP      R1,#+0
        BEQ.N    ??sdcdtu_frameware_update_data_reply_process_3
        MOVS     R0,#+3
        B.N      ??sdcdtu_frameware_update_data_reply_process_1
??sdcdtu_frameware_update_data_reply_process_3:
        LDRB     R1,[R2, #+0]
        ADDS     R2,R2,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+134
        BEQ.N    ??sdcdtu_frameware_update_data_reply_process_4
        MOVS     R0,#+4
        B.N      ??sdcdtu_frameware_update_data_reply_process_1
??sdcdtu_frameware_update_data_reply_process_4:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        ADDS     R2,R0,R2
        LDR      R1,[R2, #+0]
        ADDS     R2,R2,#+4
        LDRB     R1,[R2, #+0]
        ADDS     R2,R2,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+10
        BEQ.N    ??sdcdtu_frameware_update_data_reply_process_5
        MOVS     R0,#+5
        B.N      ??sdcdtu_frameware_update_data_reply_process_1
??sdcdtu_frameware_update_data_reply_process_5:
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
??sdcdtu_frameware_update_data_reply_process_1:
        BX       LR               ;; return

        SECTION `.data`:DATA:REORDER:NOROOT(2)
hardware_update_process:
        DATA
        DC32 0H, ?_5, process_thread_hardware_update_process
        DC8 0, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
process_thread_hardware_update_process:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R0,#+1
        LDRH     R1,[R4, #+0]
        CMP      R1,#+0
        BEQ.N    ??process_thread_hardware_update_process_0
        MOVW     R2,#+457
        SUBS     R1,R1,R2
        BEQ.N    ??process_thread_hardware_update_process_1
        SUBS     R1,R1,#+4
        BEQ.N    ??process_thread_hardware_update_process_2
        SUBS     R1,R1,#+15
        BEQ.W    ??process_thread_hardware_update_process_3
        SUBS     R1,R1,#+6
        BEQ.W    ??process_thread_hardware_update_process_4
        B.N      ??process_thread_hardware_update_process_5
??process_thread_hardware_update_process_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+129
        BNE.N    ??process_thread_hardware_update_process_6
        LDR.W    R0,??DataTable11_6
        LDR      R0,[R0, #+0]
        BL       gprs_set_parent_process
        MOVS     R0,#+0
        LDR.W    R1,??DataTable11_7
        STR      R0,[R1, #+0]
??process_thread_hardware_update_process_6:
        BL       gprs_connect
        CMP      R0,#+0
        BNE.N    ??process_thread_hardware_update_process_7
        MOVS     R2,#+0
        MOVS     R1,#+133
        LDR.W    R0,??DataTable11_6
        LDR      R0,[R0, #+0]
        BL       process_post
        MOVS     R0,#+0
        MOVW     R1,#+457
        STRH     R1,[R4, #+0]
??process_thread_hardware_update_process_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??process_thread_hardware_update_process_8
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+133
        BEQ.N    ??process_thread_hardware_update_process_9
??process_thread_hardware_update_process_8:
        MOVS     R0,#+1
        B.N      ??process_thread_hardware_update_process_10
??process_thread_hardware_update_process_9:
        B.N      ??process_thread_hardware_update_process_6
??process_thread_hardware_update_process_7:
        LDR.W    R0,??DataTable11_7
        LDR      R0,[R0, #+0]
        BL       sdcdtu_frameware_update_require_version_prepare
        LDR.W    R0,??DataTable11_4
        BL       framebuff_length
        MOVS     R7,R0
        LDR.W    R0,??DataTable11_4
        BL       framebuff_datptr
        MOVS     R1,R7
        BL       gprs_send
        MOVW     R1,#+30000
        LDR.W    R0,??DataTable11_8
        BL       etimer_set
        MOVS     R0,#+0
        MOVW     R1,#+461
        STRH     R1,[R4, #+0]
??process_thread_hardware_update_process_2:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??process_thread_hardware_update_process_11
        LDR.W    R0,??DataTable11_9
        LDRB     R0,[R0, #+0]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,R0
        BEQ.N    ??process_thread_hardware_update_process_12
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+136
        BEQ.N    ??process_thread_hardware_update_process_12
??process_thread_hardware_update_process_11:
        MOVS     R0,#+1
        B.N      ??process_thread_hardware_update_process_10
??process_thread_hardware_update_process_12:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+136
        BNE.N    ??process_thread_hardware_update_process_13
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+2
        B.N      ??process_thread_hardware_update_process_10
??process_thread_hardware_update_process_13:
        LDR.W    R0,??DataTable11_9
        LDRB     R0,[R0, #+0]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,R0
        BNE.W    ??process_thread_hardware_update_process_14
        LDR.W    R2,??DataTable11_10
        LDR.W    R1,??DataTable11_11
        MOVS     R0,R6
        BL       sdcdtu_frameware_update_reply_version_process
        CMP      R0,#+0
        BEQ.N    ??process_thread_hardware_update_process_15
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+2
        B.N      ??process_thread_hardware_update_process_10
??process_thread_hardware_update_process_15:
        LDR.W    R0,??DataTable11_7
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable11_11
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BNE.N    ??process_thread_hardware_update_process_16
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+2
        B.N      ??process_thread_hardware_update_process_10
??process_thread_hardware_update_process_16:
        MOVS     R2,#+0
        MOVS     R1,#+133
        LDR.W    R0,??DataTable11_6
        LDR      R0,[R0, #+0]
        BL       process_post
        MOVS     R0,#+0
        MOV      R1,#+476
        STRH     R1,[R4, #+0]
??process_thread_hardware_update_process_3:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??process_thread_hardware_update_process_17
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+133
        BEQ.N    ??process_thread_hardware_update_process_18
??process_thread_hardware_update_process_17:
        MOVS     R0,#+1
        B.N      ??process_thread_hardware_update_process_10
??process_thread_hardware_update_process_18:
        LDR.W    R0,??DataTable11_10
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable11_12
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        CMP      R0,#+512
        BLS.N    ??process_thread_hardware_update_process_19
        MOV      R0,#+512
        LDR.W    R1,??DataTable11_13
        STR      R0,[R1, #+0]
        B.N      ??process_thread_hardware_update_process_20
??process_thread_hardware_update_process_19:
        LDR.W    R0,??DataTable11_10
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable11_12
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR.W    R1,??DataTable11_13
        STR      R0,[R1, #+0]
??process_thread_hardware_update_process_20:
        LDR.W    R0,??DataTable11_13
        LDR      R2,[R0, #+0]
        LDR.W    R0,??DataTable11_12
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable11_11
        LDR      R0,[R0, #+0]
        BL       sdcdtu_frameware_update_data_require_prepare
        LDR.W    R0,??DataTable11_4
        BL       framebuff_length
        MOVS     R7,R0
        LDR.W    R0,??DataTable11_4
        BL       framebuff_datptr
        MOVS     R1,R7
        BL       gprs_send
        MOVW     R1,#+30000
        LDR.W    R0,??DataTable11_8
        BL       etimer_set
        MOVS     R0,#+0
        MOV      R1,#+482
        STRH     R1,[R4, #+0]
??process_thread_hardware_update_process_4:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??process_thread_hardware_update_process_21
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+136
        BEQ.N    ??process_thread_hardware_update_process_22
        LDR.W    R0,??DataTable11_9
        LDRB     R0,[R0, #+0]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,R0
        BEQ.N    ??process_thread_hardware_update_process_22
??process_thread_hardware_update_process_21:
        MOVS     R0,#+1
        B.N      ??process_thread_hardware_update_process_10
??process_thread_hardware_update_process_22:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+136
        BNE.N    ??process_thread_hardware_update_process_23
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+2
        B.N      ??process_thread_hardware_update_process_10
??process_thread_hardware_update_process_23:
        LDR.W    R0,??DataTable11_9
        LDRB     R0,[R0, #+0]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,R0
        BNE.N    ??process_thread_hardware_update_process_24
        LDR.W    R0,??DataTable11_13
        LDR      R7,[R0, #+0]
        MOVS     R0,R6
        BL       sdcdtu_frameware_update_data_reply_process
        CMP      R7,R0
        BEQ.N    ??process_thread_hardware_update_process_24
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+2
        B.N      ??process_thread_hardware_update_process_10
??process_thread_hardware_update_process_24:
        LDR.W    R0,??DataTable11_12
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable11_13
        LDR      R1,[R1, #+0]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable11_12
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable11_12
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable11_10
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BNE.W    ??process_thread_hardware_update_process_16
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+2
        B.N      ??process_thread_hardware_update_process_10
??process_thread_hardware_update_process_14:
??process_thread_hardware_update_process_5:
        MOVS     R0,#+0
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+3
??process_thread_hardware_update_process_10:
        POP      {R1,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     ??parent_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_1:
        DC32     sccb_memb

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_2:
        DC32     dtuconfig

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_3:
        DC32     sensor_prewarm_list

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??et_3:
        DS8 16

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??oldversion:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??newversion:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??hardwaresize:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??recvsize_1:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??offset_1:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
dtudata_commit_process:
        DATA
        DC32 0H, ?_6, process_thread_dtudata_commit_process
        DC8 0, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
process_thread_dtudata_commit_process:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R6,R1
        MOVS     R5,R2
        MOVS     R0,#+1
        LDRH     R1,[R4, #+0]
        CMP      R1,#+0
        BEQ.N    ??process_thread_dtudata_commit_process_0
        MOVW     R2,#+525
        CMP      R1,R2
        BEQ.N    ??process_thread_dtudata_commit_process_1
        B.N      ??process_thread_dtudata_commit_process_2
??process_thread_dtudata_commit_process_0:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+129
        BNE.N    ??process_thread_dtudata_commit_process_3
        LDR.W    R0,??DataTable11_6
        LDR      R0,[R0, #+0]
        BL       gprs_set_parent_process
??process_thread_dtudata_commit_process_3:
        MOVS     R1,#+128
        MOVS     R2,#+0
        LDR.W    R7,??DataTable11_14
        MOVS     R0,R7
        BL       __aeabi_memset
        MOVS     R1,#+128
        LDR.W    R0,??DataTable11_14
        BL       battery_read
        STR      R0,[SP, #+0]
        BL       gprs_connect
        CMP      R0,#+1
        BNE.N    ??process_thread_dtudata_commit_process_4
        LDR.N    R0,??DataTable9_6
        BL       framebuff_clean
        BL       deviceid_read
        MOVS     R1,R0
        LDR.N    R0,??DataTable9_6
        BL       framebuff_push_u32
        MOVS     R1,#+2
        LDR.N    R0,??DataTable9_6
        BL       framebuff_push_u8
        LDR.W    R0,??DataTable11_14
        BL       strlen
        MOVS     R2,R0
        LDR.W    R1,??DataTable11_14
        LDR.N    R0,??DataTable9_6
        BL       framebuff_push
        LDR.N    R0,??DataTable9_6
        BL       framebuff_length
        MOVS     R7,R0
        LDR.N    R0,??DataTable9_6
        BL       framebuff_datptr
        ADD      R2,SP,#+0
        MOVS     R1,R7
        BL       sevproto_prepare
        LDR      R1,[SP, #+0]
        BL       gprs_send
        MOVW     R1,#+30000
        LDR.W    R0,??DataTable11_15
        BL       etimer_set
        MOVS     R0,#+0
        MOVW     R1,#+525
        STRH     R1,[R4, #+0]
??process_thread_dtudata_commit_process_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??process_thread_dtudata_commit_process_5
        LDR.W    R0,??DataTable11_9
        LDRB     R0,[R0, #+0]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,R0
        BEQ.N    ??process_thread_dtudata_commit_process_6
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+136
        BEQ.N    ??process_thread_dtudata_commit_process_6
??process_thread_dtudata_commit_process_5:
        MOVS     R0,#+1
        B.N      ??process_thread_dtudata_commit_process_7
??process_thread_dtudata_commit_process_6:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+136
        BNE.N    ??process_thread_dtudata_commit_process_8
        LDR.W    R0,??DataTable11_14
        BL       strlen
        MOVS     R1,R0
        LDR.W    R0,??DataTable11_14
        BL       backup_push
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+2
        B.N      ??process_thread_dtudata_commit_process_7
??process_thread_dtudata_commit_process_8:
        LDR.W    R0,??DataTable11_9
        LDRB     R0,[R0, #+0]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,R0
        BNE.N    ??process_thread_dtudata_commit_process_9
        LDR      R1,[R5, #+4]
        MOVS     R6,#+0
        LDR      R0,[R5, #+0]
        BL       sevproto_check
        MOVS     R6,R0
        CMP      R6,#+0
        BEQ.N    ??process_thread_dtudata_commit_process_10
        BL       deviceid_read
        LDR      R1,[R6, #+0]
        CMP      R1,R0
        BNE.N    ??process_thread_dtudata_commit_process_10
        LDRB     R0,[R6, #+4]
        BICS     R0,R0,#0x80
        CMP      R0,#+2
        BNE.N    ??process_thread_dtudata_commit_process_10
        LDRB     R0,[R6, #+5]
        CMP      R0,#+0
        BEQ.N    ??process_thread_dtudata_commit_process_9
??process_thread_dtudata_commit_process_10:
        LDR.W    R0,??DataTable11_14
        BL       strlen
        MOVS     R1,R0
        LDR.W    R0,??DataTable11_14
        BL       backup_push
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+2
        B.N      ??process_thread_dtudata_commit_process_7
??process_thread_dtudata_commit_process_4:
        LDR.W    R0,??DataTable11_14
        BL       strlen
        MOVS     R1,R0
        LDR.W    R0,??DataTable11_14
        BL       backup_push
??process_thread_dtudata_commit_process_9:
??process_thread_dtudata_commit_process_2:
        MOVS     R0,#+0
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+3
??process_thread_dtudata_commit_process_7:
        POP      {R1,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DC32     next_wakeuptime

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_1:
        DC32     sendat_collect_list

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_2:
        DC32     ??parent_2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_3:
        DC32     sensor_prewarm_process

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_4:
        DC32     ??sensorCollectControlBlock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_5:
        DC32     ??sensorProtocol

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_6:
        DC32     sensorInterfaceSendReceiveBuffer

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_7:
        DC32     ??tm

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??et_4:
        DS8 16

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??dtuData:
        DS8 128

        SECTION `.data`:DATA:REORDER:NOROOT(2)
backup_commit_process:
        DATA
        DC32 0H, ?_7, process_thread_backup_commit_process
        DC8 0, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
process_thread_backup_commit_process:
        PUSH     {R4-R8,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOVS     R6,R1
        MOVS     R7,R2
        LDR.N    R0,??DataTable9
        BL       framebuff_datptr
        MOVS     R5,R0
        MOVS     R0,#+0
        MOVS     R0,#+1
        LDRH     R1,[R4, #+0]
        CMP      R1,#+0
        BEQ.N    ??process_thread_backup_commit_process_0
        MOVW     R2,#+571
        CMP      R1,R2
        BEQ.N    ??process_thread_backup_commit_process_1
        B.N      ??process_thread_backup_commit_process_2
??process_thread_backup_commit_process_0:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+129
        BNE.N    ??process_thread_backup_commit_process_3
        LDR.W    R0,??DataTable11_6
        LDR      R0,[R0, #+0]
        BL       gprs_set_parent_process
??process_thread_backup_commit_process_3:
        BL       gprs_connect
        CMP      R0,#+1
        BNE.W    ??process_thread_backup_commit_process_4
??process_thread_backup_commit_process_5:
        MOV      R1,#+512
        MOVS     R0,R5
        BL       backup_pop
        CMP      R0,#+0
        BNE.N    ??process_thread_backup_commit_process_6
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        LDR.N    R0,??DataTable9_6
        BL       framebuff_clean
        BL       deviceid_read
        MOVS     R1,R0
        LDR.N    R0,??DataTable9_6
        BL       framebuff_push_u32
        MOVS     R1,#+2
        LDR.N    R0,??DataTable9_6
        BL       framebuff_push_u8
        MOVS     R0,R5
        BL       strlen
        MOVS     R2,R0
        MOVS     R1,R5
        LDR.N    R0,??DataTable9_6
        BL       framebuff_push
        LDR.N    R0,??DataTable9_6
        BL       framebuff_length
        MOV      R8,R0
        LDR.N    R0,??DataTable9_6
        BL       framebuff_datptr
        ADD      R2,SP,#+0
        MOV      R1,R8
        BL       sevproto_prepare
        LDR      R1,[SP, #+0]
        BL       gprs_send
        MOVW     R1,#+30000
        LDR.W    R0,??DataTable11_16
        BL       etimer_set
        MOVS     R0,#+0
        MOVW     R1,#+571
        STRH     R1,[R4, #+0]
??process_thread_backup_commit_process_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??process_thread_backup_commit_process_7
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+136
        BEQ.N    ??process_thread_backup_commit_process_8
        LDR.W    R0,??DataTable11_9
        LDRB     R0,[R0, #+0]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,R0
        BEQ.N    ??process_thread_backup_commit_process_8
??process_thread_backup_commit_process_7:
        MOVS     R0,#+1
        B.N      ??process_thread_backup_commit_process_9
??process_thread_backup_commit_process_8:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+136
        BNE.N    ??process_thread_backup_commit_process_10
        MOVS     R0,R5
        BL       strlen
        MOVS     R1,R0
        MOVS     R0,R5
        BL       backup_push
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+2
        B.N      ??process_thread_backup_commit_process_9
??process_thread_backup_commit_process_10:
        LDR.W    R0,??DataTable11_9
        LDRB     R0,[R0, #+0]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,R0
        BNE.N    ??process_thread_backup_commit_process_5
        LDR      R1,[R7, #+4]
        MOVS     R8,#+0
        LDR      R0,[R7, #+0]
        BL       sevproto_check
        MOV      R8,R0
        CMP      R8,#+0
        BEQ.N    ??process_thread_backup_commit_process_11
        BL       deviceid_read
        LDR      R1,[R8, #+0]
        CMP      R1,R0
        BNE.N    ??process_thread_backup_commit_process_11
        LDRB     R0,[R8, #+4]
        BICS     R0,R0,#0x80
        CMP      R0,#+2
        BNE.N    ??process_thread_backup_commit_process_11
        LDRB     R0,[R8, #+5]
        CMP      R0,#+0
        BEQ.N    ??process_thread_backup_commit_process_5
??process_thread_backup_commit_process_11:
        MOVS     R0,R5
        BL       strlen
        MOVS     R1,R0
        MOVS     R0,R5
        BL       backup_push
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+2
        B.N      ??process_thread_backup_commit_process_9
??process_thread_backup_commit_process_6:
        CMP      R0,#+2
        BNE.N    ??process_thread_backup_commit_process_4
        BL       backup_clean
??process_thread_backup_commit_process_4:
??process_thread_backup_commit_process_2:
        MOVS     R0,#+0
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+3
??process_thread_backup_commit_process_9:
        POP      {R1,R2,R4-R8,PC}  ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9:
        DC32     sensorDataStringBuffer

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_1:
        DC32     sendat_commit_list

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_2:
        DC32     ??parent_3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_3:
        DC32     ??sendat_sent_flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_4:
        DC32     sendat_collect_process

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_5:
        DC32     ??sccb

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_6:
        DC32     commit_buff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_7:
        DC32     ??et_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_8:
        DC32     ??parent_4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_9:
        DC32     ??config_require_frame

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_10:
        DC32     ??et_2

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??et_5:
        DS8 16

        SECTION `.data`:DATA:REORDER:NOROOT(2)
sdcdtu_process:
        DATA
        DC32 0H, ?_8, process_thread_sdcdtu_process
        DC8 0, 0, 0, 0

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
process_thread_sdcdtu_process:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R0,#+1
        LDRH     R1,[R4, #+0]
        CMP      R1,#+0
        BEQ.N    ??process_thread_sdcdtu_process_0
        MOV      R2,#+616
        SUBS     R1,R1,R2
        BEQ.N    ??process_thread_sdcdtu_process_1
        SUBS     R1,R1,#+4
        BEQ.N    ??process_thread_sdcdtu_process_2
        SUBS     R1,R1,#+5
        BEQ.W    ??process_thread_sdcdtu_process_3
        SUBS     R1,R1,#+19
        BEQ.W    ??process_thread_sdcdtu_process_4
        SUBS     R1,R1,#+4
        BEQ.W    ??process_thread_sdcdtu_process_5
        SUBS     R1,R1,#+7
        BEQ.W    ??process_thread_sdcdtu_process_6
        SUBS     R1,R1,#+4
        BEQ.W    ??process_thread_sdcdtu_process_7
        SUBS     R1,R1,#+4
        BEQ.W    ??process_thread_sdcdtu_process_8
        SUBS     R1,R1,#+4
        BEQ.W    ??process_thread_sdcdtu_process_9
        SUBS     R1,R1,#+17
        BEQ.W    ??process_thread_sdcdtu_process_10
        B.N      ??process_thread_sdcdtu_process_11
??process_thread_sdcdtu_process_0:
??process_thread_sdcdtu_process_12:
        BL       rtc_get_time
        LDR.W    R1,??DataTable11_17
        STR      R0,[R1, #+0]
        BL       battery_check_power
        CMP      R0,#+0
        BNE.N    ??process_thread_sdcdtu_process_13
        ADR.N    R0,??process_thread_sdcdtu_process_14  ;; 0x31, 0x0A, 0x00, 0x00
        BL       log_out
        MOVS     R0,#+6
        BL       rtc_wakeup_after_second
??process_thread_sdcdtu_process_13:
        LDR.W    R0,??DataTable11_18
        LDR      R0,[R0, #+0]
        BL       configure_read
        CMP      R0,#+1
        BNE.W    ??process_thread_sdcdtu_process_15
        LDR.W    R0,??DataTable11_6
        LDR      R0,[R0, #+0]
        BL       gprs_set_parent_process
        LDR.W    R1,??DataTable11_19  ;; 0x1d4c0
        LDR.W    R0,??DataTable11_20
        BL       etimer_set
        LDR.W    R0,??DataTable11_18
        LDR      R0,[R0, #+0]
        ADDS     R1,R0,#+42
        LDR.W    R0,??DataTable11_18
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+10
        BL       gprs_open
        MOVS     R0,#+0
        MOV      R1,#+616
        STRH     R1,[R4, #+0]
??process_thread_sdcdtu_process_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??process_thread_sdcdtu_process_16
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+136
        BEQ.N    ??process_thread_sdcdtu_process_17
        LDR.W    R0,??DataTable11_21
        LDRB     R0,[R0, #+0]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,R0
        BEQ.N    ??process_thread_sdcdtu_process_17
??process_thread_sdcdtu_process_16:
        MOVS     R0,#+1
        B.N      ??process_thread_sdcdtu_process_18
??process_thread_sdcdtu_process_17:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+136
        BNE.N    ??process_thread_sdcdtu_process_19
        LDR.N    R0,??DataTable11_6
        LDR      R0,[R0, #+0]
        BL       gprs_set_parent_process
        BL       gprs_close
        MOVS     R0,#+0
        MOV      R1,#+620
        STRH     R1,[R4, #+0]
??process_thread_sdcdtu_process_2:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??process_thread_sdcdtu_process_20
        LDR.N    R0,??DataTable11_22
        LDRB     R0,[R0, #+0]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,R0
        BEQ.N    ??process_thread_sdcdtu_process_21
??process_thread_sdcdtu_process_20:
        MOVS     R0,#+1
        B.N      ??process_thread_sdcdtu_process_18
??process_thread_sdcdtu_process_21:
        ADR.N    R0,??DataTable10  ;; 0x33, 0x0A, 0x00, 0x00
        BL       log_out
        LDR.N    R0,??DataTable11_6
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable11_23
        BL       process_start
        LDR.N    R0,??DataTable11_6
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable11_24
        BL       process_start
??process_thread_sdcdtu_process_22:
        LDR.N    R0,??DataTable11_23
        BL       process_is_running
        CMP      R0,#+0
        BNE.N    ??process_thread_sdcdtu_process_23
        LDR.N    R0,??DataTable11_24
        BL       process_is_running
        CMP      R0,#+0
        BEQ.N    ??process_thread_sdcdtu_process_24
??process_thread_sdcdtu_process_23:
        MOVS     R2,#+0
        MOVS     R1,#+133
        LDR.N    R0,??DataTable11_6
        LDR      R0,[R0, #+0]
        BL       process_post
        MOVS     R0,#+0
        MOVW     R1,#+625
        STRH     R1,[R4, #+0]
??process_thread_sdcdtu_process_3:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??process_thread_sdcdtu_process_25
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+133
        BEQ.N    ??process_thread_sdcdtu_process_26
??process_thread_sdcdtu_process_25:
        MOVS     R0,#+1
        B.N      ??process_thread_sdcdtu_process_18
??process_thread_sdcdtu_process_26:
        MOVS     R6,#+0
        LDR.N    R0,??DataTable11_25
        LDR      R0,[R0, #+0]
        BL       list_pop
        MOVS     R6,R0
        CMP      R6,#+0
        BEQ.N    ??process_thread_sdcdtu_process_22
        LDR      R0,[R6, #+12]
        BL       strlen
        MOVS     R1,R0
        LDR      R0,[R6, #+12]
        BL       backup_push
        LDR      R0,[R6, #+12]
        BL       free
        MOVS     R1,R6
        LDR.N    R0,??DataTable11_26
        BL       memb_free
        B.N      ??process_thread_sdcdtu_process_22
??process_thread_sdcdtu_process_24:
        LDR.N    R0,??DataTable11_17
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable11_18
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+54]
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable11_17
        STR      R0,[R1, #+0]
        BL       rtc_get_time
        LDR.N    R1,??DataTable11_17
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BCS.N    ??process_thread_sdcdtu_process_27
        LDR.N    R0,??DataTable11_17
        LDR      R0,[R0, #+0]
        BL       rtc_wakeup_at_second
??process_thread_sdcdtu_process_19:
        LDR.N    R0,??DataTable11_21
        LDRB     R0,[R0, #+0]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,R0
        BNE.W    ??process_thread_sdcdtu_process_28
        LDR.N    R0,??DataTable11_6
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable11_27
        BL       process_start
??process_thread_sdcdtu_process_29:
        LDR.N    R0,??DataTable11_27
        BL       process_is_running
        CMP      R0,#+0
        BEQ.N    ??process_thread_sdcdtu_process_30
        MOVS     R2,#+0
        MOVS     R1,#+133
        LDR.N    R0,??DataTable11_6
        LDR      R0,[R0, #+0]
        BL       process_post
        MOVS     R0,#+0
        MOV      R1,#+644
        STRH     R1,[R4, #+0]
??process_thread_sdcdtu_process_4:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??process_thread_sdcdtu_process_31
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+133
        BEQ.N    ??process_thread_sdcdtu_process_32
??process_thread_sdcdtu_process_31:
        MOVS     R0,#+1
        B.N      ??process_thread_sdcdtu_process_18
??process_thread_sdcdtu_process_27:
        B.N      ??process_thread_sdcdtu_process_12
??process_thread_sdcdtu_process_32:
        B.N      ??process_thread_sdcdtu_process_29
??process_thread_sdcdtu_process_30:
        LDR.N    R0,??DataTable11_6
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable11_28
        BL       process_start
??process_thread_sdcdtu_process_33:
        LDR.N    R0,??DataTable11_28
        BL       process_is_running
        CMP      R0,#+0
        BEQ.N    ??process_thread_sdcdtu_process_34
        MOVS     R2,#+0
        MOVS     R1,#+133
        LDR.N    R0,??DataTable11_6
        LDR      R0,[R0, #+0]
        BL       process_post
        MOVS     R0,#+0
        MOV      R1,#+648
        STRH     R1,[R4, #+0]
??process_thread_sdcdtu_process_5:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??process_thread_sdcdtu_process_35
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+133
        BEQ.N    ??process_thread_sdcdtu_process_36
??process_thread_sdcdtu_process_35:
        MOVS     R0,#+1
        B.N      ??process_thread_sdcdtu_process_18
??process_thread_sdcdtu_process_36:
        B.N      ??process_thread_sdcdtu_process_33
??process_thread_sdcdtu_process_34:
        LDR.N    R0,??DataTable11_6
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable11_23
        BL       process_start
        LDR.N    R0,??DataTable11_6
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable11_24
        BL       process_start
        LDR.N    R0,??DataTable11_6
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable11_29
        BL       process_start
??process_thread_sdcdtu_process_37:
        LDR.N    R0,??DataTable11_23
        BL       process_is_running
        CMP      R0,#+0
        BNE.N    ??process_thread_sdcdtu_process_38
        LDR.N    R0,??DataTable11_29
        BL       process_is_running
        CMP      R0,#+0
        BNE.N    ??process_thread_sdcdtu_process_38
        LDR.N    R0,??DataTable11_24
        BL       process_is_running
        CMP      R0,#+0
        BEQ.N    ??process_thread_sdcdtu_process_39
??process_thread_sdcdtu_process_38:
        MOVS     R2,#+0
        MOVS     R1,#+133
        LDR.N    R0,??DataTable11_6
        LDR      R0,[R0, #+0]
        BL       process_post
        MOVS     R0,#+0
        MOVW     R1,#+655
        STRH     R1,[R4, #+0]
??process_thread_sdcdtu_process_6:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??process_thread_sdcdtu_process_40
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+133
        BEQ.N    ??process_thread_sdcdtu_process_41
??process_thread_sdcdtu_process_40:
        MOVS     R0,#+1
        B.N      ??process_thread_sdcdtu_process_18
??process_thread_sdcdtu_process_41:
        B.N      ??process_thread_sdcdtu_process_37
??process_thread_sdcdtu_process_39:
        LDR.N    R0,??DataTable11_6
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable11_30
        BL       process_start
??process_thread_sdcdtu_process_42:
        LDR.N    R0,??DataTable11_30
        BL       process_is_running
        CMP      R0,#+0
        BEQ.N    ??process_thread_sdcdtu_process_43
        MOVS     R2,#+0
        MOVS     R1,#+133
        LDR.N    R0,??DataTable11_6
        LDR      R0,[R0, #+0]
        BL       process_post
        MOVS     R0,#+0
        MOVW     R1,#+659
        STRH     R1,[R4, #+0]
??process_thread_sdcdtu_process_7:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??process_thread_sdcdtu_process_44
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+133
        BEQ.N    ??process_thread_sdcdtu_process_45
??process_thread_sdcdtu_process_44:
        MOVS     R0,#+1
        B.N      ??process_thread_sdcdtu_process_18
??process_thread_sdcdtu_process_45:
        B.N      ??process_thread_sdcdtu_process_42
??process_thread_sdcdtu_process_43:
        LDR.N    R0,??DataTable11_6
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable11_31
        BL       process_start
??process_thread_sdcdtu_process_46:
        LDR.N    R0,??DataTable11_31
        BL       process_is_running
        CMP      R0,#+0
        BEQ.N    ??process_thread_sdcdtu_process_47
        MOVS     R2,#+0
        MOVS     R1,#+133
        LDR.N    R0,??DataTable11_6
        LDR      R0,[R0, #+0]
        BL       process_post
        MOVS     R0,#+0
        MOVW     R1,#+663
        STRH     R1,[R4, #+0]
??process_thread_sdcdtu_process_8:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??process_thread_sdcdtu_process_48
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+133
        BEQ.N    ??process_thread_sdcdtu_process_49
??process_thread_sdcdtu_process_48:
        MOVS     R0,#+1
        B.N      ??process_thread_sdcdtu_process_18
??process_thread_sdcdtu_process_49:
        B.N      ??process_thread_sdcdtu_process_46
??process_thread_sdcdtu_process_47:
        LDR.N    R0,??DataTable11_6
        LDR      R0,[R0, #+0]
        BL       gprs_set_parent_process
        BL       gprs_close
        MOVS     R0,#+0
        MOVW     R1,#+667
        STRH     R1,[R4, #+0]
??process_thread_sdcdtu_process_9:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??process_thread_sdcdtu_process_50
        LDR.N    R0,??DataTable11_22
        LDRB     R0,[R0, #+0]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,R0
        BEQ.N    ??process_thread_sdcdtu_process_51
??process_thread_sdcdtu_process_50:
        MOVS     R0,#+1
        B.N      ??process_thread_sdcdtu_process_18
??process_thread_sdcdtu_process_51:
        LDR.N    R0,??DataTable11_17
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable11_18
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+54]
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable11_17
        STR      R0,[R1, #+0]
        BL       rtc_get_time
        LDR.N    R1,??DataTable11_17
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BCS.N    ??process_thread_sdcdtu_process_52
        LDR.N    R0,??DataTable11_17
        LDR      R0,[R0, #+0]
        BL       rtc_wakeup_at_second
??process_thread_sdcdtu_process_28:
        B.N      ??process_thread_sdcdtu_process_53
??process_thread_sdcdtu_process_52:
        B.N      ??process_thread_sdcdtu_process_12
??process_thread_sdcdtu_process_15:
        ADR.N    R0,??DataTable11_5  ;; "2.\n"
        BL       log_out
??process_thread_sdcdtu_process_54:
        B.N      ??process_thread_sdcdtu_process_54
        DATA
??process_thread_sdcdtu_process_14:
        DC8      0x31, 0x0A, 0x00, 0x00
        THUMB
??process_thread_sdcdtu_process_55:
        MOVS     R2,#+0
        MOVS     R1,#+133
        LDR.N    R0,??DataTable11_6
        LDR      R0,[R0, #+0]
        BL       process_post
        MOVS     R0,#+0
        MOV      R1,#+684
        STRH     R1,[R4, #+0]
??process_thread_sdcdtu_process_10:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??process_thread_sdcdtu_process_56
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+133
        BEQ.N    ??process_thread_sdcdtu_process_57
??process_thread_sdcdtu_process_56:
        MOVS     R0,#+1
        B.N      ??process_thread_sdcdtu_process_18
??process_thread_sdcdtu_process_57:
        LDR.N    R0,??DataTable11_32
        BL       process_is_running
        CMP      R0,#+0
        BNE.N    ??process_thread_sdcdtu_process_55
??process_thread_sdcdtu_process_53:
??process_thread_sdcdtu_process_11:
        MOVS     R0,#+0
        MOVS     R0,#+0
        STRH     R0,[R4, #+0]
        MOVS     R0,#+3
??process_thread_sdcdtu_process_18:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10:
        DC8      0x33, 0x0A, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_1:
        DC32     ??new_version

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
??et_6:
        DS8 16

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
sdcdtu_init:
        PUSH     {R7,LR}
        MOVS     R1,#+0
        LDR.N    R0,??DataTable11_33
        BL       process_start
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11:
        DC32     ??new_configure_size

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_1:
        DC32     ??offset

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_2:
        DC32     ??recvsize

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_3:
        DC32     ??config_data_require_frame

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_4:
        DC32     gprs_send_buffer

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_5:
        DC8      "2.\n"

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_6:
        DC32     process_current

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_7:
        DC32     ??oldversion

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_8:
        DC32     ??et_3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_9:
        DC32     gprs_event_recv

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_10:
        DC32     ??hardwaresize

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_11:
        DC32     ??newversion

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_12:
        DC32     ??offset_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_13:
        DC32     ??recvsize_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_14:
        DC32     ??dtuData

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_15:
        DC32     ??et_4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_16:
        DC32     ??et_5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_17:
        DC32     next_wakeuptime

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_18:
        DC32     dtuconfig

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_19:
        DC32     0x1d4c0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_20:
        DC32     ??et_6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_21:
        DC32     gprs_event_connect

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_22:
        DC32     gprs_event_closed

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_23:
        DC32     sensor_prewarm_process

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_24:
        DC32     sendat_collect_process

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_25:
        DC32     sendat_commit_list

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_26:
        DC32     sccb_memb

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_27:
        DC32     timesync_process

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_28:
        DC32     backup_commit_process

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_29:
        DC32     sendat_commit_process

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_30:
        DC32     dtudata_commit_process

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_31:
        DC32     configure_update_process

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_32:
        DC32     hardware_update_process

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11_33:
        DC32     sdcdtu_process

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_0:
        DATA
        DC8 "time sync process"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_1:
        DATA
        DC8 "sensor prewarm process"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_2:
        DATA
        DC8 "sendat collect process"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_3:
        DATA
        DC8 "sendat commit process"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_4:
        DATA
        DC8 "configure update process"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_5:
        DATA
        DC8 "frameware update process"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_6:
        DATA
        DC8 "dtudata commit process"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_7:
        DATA
        DC8 "backup commit process"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
?_8:
        DATA
        DC8 "sdcdtu process"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "9\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "1\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "3\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "2.\012"

        END
// 
// 2 716 bytes in section .bss
//   220 bytes in section .data
//   228 bytes in section .rodata
// 5 230 bytes in section .text
// 
// 5 230 bytes of CODE  memory
//   228 bytes of CONST memory
// 2 936 bytes of DATA  memory
//
//Errors: none
//Warnings: 21
