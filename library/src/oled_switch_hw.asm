oled_switch_hw__oled_switch_set_dim_mode:
;oled_switch_hw.c,147 :: 		static void _oled_switch_set_dim_mode( void )
SUB	SP, SP, #16
STR	LR, [SP, #0]
;oled_switch_hw.c,149 :: 		uint8_t dim_modes[10] = { 0x00, 0x12, 0x0C, 0x14, 0x12 };
ADD	R11, SP, #4
ADD	R10, R11, #10
MOVW	R12, #lo_addr(?ICSoled_switch_hw__oled_switch_set_dim_mode_dim_modes_L0+0)
MOVT	R12, #hi_addr(?ICSoled_switch_hw__oled_switch_set_dim_mode_dim_modes_L0+0)
BL	___CC2DW+0
;oled_switch_hw.c,151 :: 		oled_switch_hal_cmd( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cmd+0
;oled_switch_hw.c,152 :: 		oled_switch_hal_cs( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,153 :: 		oled_switch_hal_write( DIM_MODE_ABC, dim_modes, 5 );
ADD	R0, SP, #4
MOVS	R2, #5
MOV	R1, R0
MOVS	R0, #171
BL	_oled_switch_hal_write+0
;oled_switch_hw.c,154 :: 		oled_switch_hal_cs( 1 );
MOVS	R0, #1
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,155 :: 		}
L_end__oled_switch_set_dim_mode:
LDR	LR, [SP, #0]
ADD	SP, SP, #16
BX	LR
; end of oled_switch_hw__oled_switch_set_dim_mode
oled_switch_hw__oled_switch_set_master_config:
;oled_switch_hw.c,157 :: 		static void _oled_switch_set_master_config( void )
SUB	SP, SP, #8
STR	LR, [SP, #0]
;oled_switch_hw.c,159 :: 		uint8_t arg = 0x8E;
MOVS	R0, #142
STRB	R0, [SP, #4]
;oled_switch_hw.c,161 :: 		oled_switch_hal_cmd( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cmd+0
;oled_switch_hw.c,162 :: 		oled_switch_hal_cs( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,163 :: 		oled_switch_hal_write( MASTER_CONFIG, &arg, 1 );
ADD	R0, SP, #4
MOVS	R2, #1
MOV	R1, R0
MOVS	R0, #173
BL	_oled_switch_hal_write+0
;oled_switch_hw.c,164 :: 		oled_switch_hal_cs( 1 );
MOVS	R0, #1
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,165 :: 		}
L_end__oled_switch_set_master_config:
LDR	LR, [SP, #0]
ADD	SP, SP, #8
BX	LR
; end of oled_switch_hw__oled_switch_set_master_config
oled_switch_hw__oled_switch_set_power_save_mode:
;oled_switch_hw.c,167 :: 		static void _oled_switch_set_power_save_mode( void )
SUB	SP, SP, #8
STR	LR, [SP, #0]
;oled_switch_hw.c,169 :: 		uint8_t arg = 0x0B;
MOVS	R0, #11
STRB	R0, [SP, #4]
;oled_switch_hw.c,171 :: 		oled_switch_hal_cmd( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cmd+0
;oled_switch_hw.c,172 :: 		oled_switch_hal_cs( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,173 :: 		oled_switch_hal_write( PWR_SAVE_MODE, &arg, 1 );
ADD	R0, SP, #4
MOVS	R2, #1
MOV	R1, R0
MOVS	R0, #176
BL	_oled_switch_hal_write+0
;oled_switch_hw.c,174 :: 		oled_switch_hal_cs( 1 );
MOVS	R0, #1
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,175 :: 		}
L_end__oled_switch_set_power_save_mode:
LDR	LR, [SP, #0]
ADD	SP, SP, #8
BX	LR
; end of oled_switch_hw__oled_switch_set_power_save_mode
oled_switch_hw__oled_switch_set_phase_1_2_period_adjustment:
;oled_switch_hw.c,177 :: 		static void _oled_switch_set_phase_1_2_period_adjustment( void )
SUB	SP, SP, #8
STR	LR, [SP, #0]
;oled_switch_hw.c,179 :: 		uint8_t arg = 0x44;
MOVS	R0, #68
STRB	R0, [SP, #4]
;oled_switch_hw.c,181 :: 		oled_switch_hal_cmd( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cmd+0
;oled_switch_hw.c,182 :: 		oled_switch_hal_cs( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,183 :: 		oled_switch_hal_write( PHASE_1_2_ADJ, &arg, 1 );
ADD	R0, SP, #4
MOVS	R2, #1
MOV	R1, R0
MOVS	R0, #177
BL	_oled_switch_hal_write+0
;oled_switch_hw.c,184 :: 		oled_switch_hal_cs( 1 );
MOVS	R0, #1
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,185 :: 		}
L_end__oled_switch_set_phase_1_2_period_adjustment:
LDR	LR, [SP, #0]
ADD	SP, SP, #8
BX	LR
; end of oled_switch_hw__oled_switch_set_phase_1_2_period_adjustment
oled_switch_hw__oled_switch_display_clock_div_osc_freq:
;oled_switch_hw.c,187 :: 		static void _oled_switch_display_clock_div_osc_freq( void )
SUB	SP, SP, #8
STR	LR, [SP, #0]
;oled_switch_hw.c,189 :: 		uint8_t arg = 0xA0;
MOVS	R0, #160
STRB	R0, [SP, #4]
;oled_switch_hw.c,191 :: 		oled_switch_hal_cmd( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cmd+0
;oled_switch_hw.c,192 :: 		oled_switch_hal_cs( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,193 :: 		oled_switch_hal_write( DSPLY_CLK_DIV_OSC_FREQ, &arg, 1 );
ADD	R0, SP, #4
MOVS	R2, #1
MOV	R1, R0
MOVS	R0, #179
BL	_oled_switch_hal_write+0
;oled_switch_hw.c,194 :: 		oled_switch_hal_cs( 1 );
MOVS	R0, #1
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,195 :: 		}
L_end__oled_switch_display_clock_div_osc_freq:
LDR	LR, [SP, #0]
ADD	SP, SP, #8
BX	LR
; end of oled_switch_hw__oled_switch_display_clock_div_osc_freq
oled_switch_hw__oled_switch_enable_linear_gray_scale:
;oled_switch_hw.c,197 :: 		static void _oled_switch_enable_linear_gray_scale( void )
SUB	SP, SP, #4
STR	LR, [SP, #0]
;oled_switch_hw.c,199 :: 		oled_switch_hal_cmd( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cmd+0
;oled_switch_hw.c,200 :: 		oled_switch_hal_cs( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,201 :: 		oled_switch_hal_write( ENABLE_LINEAR_GRAY_SCALE, 0, 0 );
MOVS	R2, #0
MOVS	R1, #0
MOVS	R0, #185
BL	_oled_switch_hal_write+0
;oled_switch_hw.c,202 :: 		oled_switch_hal_cs( 1 );
MOVS	R0, #1
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,203 :: 		}
L_end__oled_switch_enable_linear_gray_scale:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of oled_switch_hw__oled_switch_enable_linear_gray_scale
oled_switch_hw__oled_switch_pre_charge_level:
;oled_switch_hw.c,205 :: 		static void _oled_switch_pre_charge_level( void )
SUB	SP, SP, #8
STR	LR, [SP, #0]
;oled_switch_hw.c,207 :: 		uint8_t arg = 0x12;
MOVS	R0, #18
STRB	R0, [SP, #4]
;oled_switch_hw.c,209 :: 		oled_switch_hal_cmd( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cmd+0
;oled_switch_hw.c,210 :: 		oled_switch_hal_cs( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,211 :: 		oled_switch_hal_write( PRE_CHRGE_LVL, &arg, 1 );
ADD	R0, SP, #4
MOVS	R2, #1
MOV	R1, R0
MOVS	R0, #187
BL	_oled_switch_hal_write+0
;oled_switch_hw.c,212 :: 		oled_switch_hal_cs( 1 );
MOVS	R0, #1
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,213 :: 		}
L_end__oled_switch_pre_charge_level:
LDR	LR, [SP, #0]
ADD	SP, SP, #8
BX	LR
; end of oled_switch_hw__oled_switch_pre_charge_level
oled_switch_hw__oled_switch_set_vcomh:
;oled_switch_hw.c,215 :: 		static void _oled_switch_set_vcomh( void )
SUB	SP, SP, #8
STR	LR, [SP, #0]
;oled_switch_hw.c,217 :: 		uint8_t arg = 0x3E;
MOVS	R0, #62
STRB	R0, [SP, #4]
;oled_switch_hw.c,219 :: 		oled_switch_hal_cmd( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cmd+0
;oled_switch_hw.c,220 :: 		oled_switch_hal_cs( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,221 :: 		oled_switch_hal_write( SET_VCOMH, &arg, 1 );
ADD	R0, SP, #4
MOVS	R2, #1
MOV	R1, R0
MOVS	R0, #190
BL	_oled_switch_hal_write+0
;oled_switch_hw.c,222 :: 		oled_switch_hal_cs( 1 );
MOVS	R0, #1
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,223 :: 		}
L_end__oled_switch_set_vcomh:
LDR	LR, [SP, #0]
ADD	SP, SP, #8
BX	LR
; end of oled_switch_hw__oled_switch_set_vcomh
oled_switch_hw__oled_switch_display_normal_mode:
;oled_switch_hw.c,225 :: 		static void _oled_switch_display_normal_mode( void )
SUB	SP, SP, #4
STR	LR, [SP, #0]
;oled_switch_hw.c,227 :: 		oled_switch_hal_cmd( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cmd+0
;oled_switch_hw.c,228 :: 		oled_switch_hal_cs( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,229 :: 		oled_switch_hal_write( DSPLY_ON_NORMAL_MODE, 0, 0 );
MOVS	R2, #0
MOVS	R1, #0
MOVS	R0, #175
BL	_oled_switch_hal_write+0
;oled_switch_hw.c,230 :: 		oled_switch_hal_cs( 1 );
MOVS	R0, #1
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,231 :: 		}
L_end__oled_switch_display_normal_mode:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of oled_switch_hw__oled_switch_display_normal_mode
_oled_switch_init:
;oled_switch_hw.c,233 :: 		void oled_switch_init( buffer_size_t size )
; size start address is: 0 (R0)
SUB	SP, SP, #24
STR	LR, [SP, #0]
; size end address is: 0 (R0)
; size start address is: 0 (R0)
;oled_switch_hw.c,238 :: 		uint8_t row_range[ 5 ] = { 0 };
ADD	R11, SP, #11
ADD	R10, R11, #10
MOVW	R12, #lo_addr(?ICSoled_switch_init_row_range_L0+0)
MOVT	R12, #hi_addr(?ICSoled_switch_init_row_range_L0+0)
BL	___CC2DW+0
;oled_switch_hw.c,239 :: 		uint8_t col_range[ 5 ] = { 0 };
;oled_switch_hw.c,241 :: 		contrast.a_contrast = 0x0F;
MOVS	R1, #15
STRB	R1, [SP, #4]
;oled_switch_hw.c,242 :: 		contrast.b_contrast = 0x0E;
MOVS	R1, #14
STRB	R1, [SP, #5]
;oled_switch_hw.c,243 :: 		contrast.c_contrast = 0x1B;
MOVS	R1, #27
STRB	R1, [SP, #6]
;oled_switch_hw.c,244 :: 		if ( size == SMALL )
CMP	R0, #1
IT	NE
BNE	L_oled_switch_init0
; size end address is: 0 (R0)
;oled_switch_hw.c,246 :: 		coords.col_start    = 0x10;
MOVS	R1, #16
STRB	R1, [SP, #7]
;oled_switch_hw.c,247 :: 		coords.row_start    = 0x00;
MOVS	R1, #0
STRB	R1, [SP, #8]
;oled_switch_hw.c,248 :: 		coords.col_end      = 0x4F;
MOVS	R1, #79
STRB	R1, [SP, #9]
;oled_switch_hw.c,249 :: 		coords.row_end      = 0x2F;
MOVS	R1, #47
STRB	R1, [SP, #10]
;oled_switch_hw.c,250 :: 		row_range[0]        = 0x00;
ADD	R2, SP, #11
MOVS	R1, #0
STRB	R1, [R2, #0]
;oled_switch_hw.c,251 :: 		row_range[1]        = 0x2F;
ADDS	R2, R2, #1
MOVS	R1, #47
STRB	R1, [R2, #0]
;oled_switch_hw.c,252 :: 		col_range[0]        = 0x10;
ADD	R2, SP, #16
MOVS	R1, #16
STRB	R1, [R2, #0]
;oled_switch_hw.c,253 :: 		col_range[1]        = 0x4F;
ADDS	R2, R2, #1
MOVS	R1, #79
STRB	R1, [R2, #0]
;oled_switch_hw.c,254 :: 		}
IT	AL
BAL	L_oled_switch_init1
L_oled_switch_init0:
;oled_switch_hw.c,257 :: 		coords.col_start    = 0x00;
MOVS	R1, #0
STRB	R1, [SP, #7]
;oled_switch_hw.c,258 :: 		coords.row_start    = 0x00;
MOVS	R1, #0
STRB	R1, [SP, #8]
;oled_switch_hw.c,259 :: 		coords.col_end      = 0x5F;
MOVS	R1, #95
STRB	R1, [SP, #9]
;oled_switch_hw.c,260 :: 		coords.row_end      = 0x3F;
MOVS	R1, #63
STRB	R1, [SP, #10]
;oled_switch_hw.c,261 :: 		row_range[0]        = 0x00;
ADD	R2, SP, #11
MOVS	R1, #0
STRB	R1, [R2, #0]
;oled_switch_hw.c,262 :: 		row_range[1]        = 0x3F;
ADDS	R2, R2, #1
MOVS	R1, #63
STRB	R1, [R2, #0]
;oled_switch_hw.c,263 :: 		col_range[0]        = 0x00;
ADD	R2, SP, #16
MOVS	R1, #0
STRB	R1, [R2, #0]
;oled_switch_hw.c,264 :: 		col_range[1]        = 0x5F;
ADDS	R2, R2, #1
MOVS	R1, #95
STRB	R1, [R2, #0]
;oled_switch_hw.c,265 :: 		}
L_oled_switch_init1:
;oled_switch_hw.c,268 :: 		oled_switch_hal_rst( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_rst+0
;oled_switch_hw.c,269 :: 		Delay_us(3);
MOVW	R7, #35
MOVT	R7, #0
NOP
NOP
L_oled_switch_init2:
SUBS	R7, R7, #1
BNE	L_oled_switch_init2
NOP
NOP
NOP
;oled_switch_hw.c,270 :: 		oled_switch_hal_rst( 1 );
MOVS	R0, #1
BL	_oled_switch_hal_rst+0
;oled_switch_hw.c,273 :: 		oled_switch_hal_init();
BL	_oled_switch_hal_init+0
;oled_switch_hw.c,276 :: 		oled_switch_set_abc_contrast( &contrast );
ADD	R1, SP, #4
MOV	R0, R1
BL	_oled_switch_set_abc_contrast+0
;oled_switch_hw.c,277 :: 		oled_switch_set_master_current( 0x0F );
MOVS	R0, #15
BL	_oled_switch_set_master_current+0
;oled_switch_hw.c,278 :: 		oled_switch_set_remap_color_depth( 0 ); //Defaults
MOVS	R0, #0
BL	_oled_switch_set_remap_color_depth+0
;oled_switch_hw.c,279 :: 		oled_switch_set_display_start_line( 0 );
MOVS	R0, #0
BL	_oled_switch_set_display_start_line+0
;oled_switch_hw.c,280 :: 		oled_switch_set_display_offset( 0x10 );
MOVS	R0, #16
BL	_oled_switch_set_display_offset+0
;oled_switch_hw.c,281 :: 		oled_switch_set_normal_display();
BL	_oled_switch_set_normal_display+0
;oled_switch_hw.c,282 :: 		oled_switch_set_multiplex_ratio( 0x2F );
MOVS	R0, #47
BL	_oled_switch_set_multiplex_ratio+0
;oled_switch_hw.c,283 :: 		_oled_switch_set_dim_mode();            //Static functions used because datasheet doesn't explain how to use these features
BL	oled_switch_hw__oled_switch_set_dim_mode+0
;oled_switch_hw.c,284 :: 		_oled_switch_set_master_config();
BL	oled_switch_hw__oled_switch_set_master_config+0
;oled_switch_hw.c,285 :: 		_oled_switch_set_power_save_mode();
BL	oled_switch_hw__oled_switch_set_power_save_mode+0
;oled_switch_hw.c,286 :: 		_oled_switch_set_phase_1_2_period_adjustment();
BL	oled_switch_hw__oled_switch_set_phase_1_2_period_adjustment+0
;oled_switch_hw.c,287 :: 		_oled_switch_display_clock_div_osc_freq();
BL	oled_switch_hw__oled_switch_display_clock_div_osc_freq+0
;oled_switch_hw.c,288 :: 		_oled_switch_enable_linear_gray_scale();
BL	oled_switch_hw__oled_switch_enable_linear_gray_scale+0
;oled_switch_hw.c,289 :: 		_oled_switch_pre_charge_level();
BL	oled_switch_hw__oled_switch_pre_charge_level+0
;oled_switch_hw.c,290 :: 		_oled_switch_set_vcomh();
BL	oled_switch_hw__oled_switch_set_vcomh+0
;oled_switch_hw.c,291 :: 		_oled_switch_display_normal_mode();
BL	oled_switch_hw__oled_switch_display_normal_mode+0
;oled_switch_hw.c,294 :: 		oled_switch_set_row_range( row_range[0], row_range[1] );
ADD	R3, SP, #11
ADDS	R1, R3, #1
LDRB	R1, [R1, #0]
UXTB	R2, R1
LDRB	R1, [R3, #0]
UXTB	R0, R1
UXTB	R1, R2
BL	_oled_switch_set_row_range+0
;oled_switch_hw.c,295 :: 		oled_switch_set_col_range( col_range[0], col_range[1] );
ADD	R3, SP, #16
ADDS	R1, R3, #1
LDRB	R1, [R1, #0]
UXTB	R2, R1
LDRB	R1, [R3, #0]
UXTB	R0, R1
UXTB	R1, R2
BL	_oled_switch_set_col_range+0
;oled_switch_hw.c,298 :: 		oled_switch_clear_window( coords );
SUB	SP, SP, #4
ADD	R12, SP, #11
ADD	R11, SP, #0
ADD	R10, R11, #4
BL	___CC2DW+0
BL	_oled_switch_clear_window+0
ADD	SP, SP, #4
;oled_switch_hw.c,300 :: 		}
L_end_oled_switch_init:
LDR	LR, [SP, #0]
ADD	SP, SP, #24
BX	LR
; end of _oled_switch_init
_oled_switch_draw_565_img:
;oled_switch_hw.c,302 :: 		void oled_switch_draw_565_img( const unsigned char* img, uint16_t image_size )
; img start address is: 0 (R0)
SUB	SP, SP, #12
STR	LR, [SP, #0]
STRH	R1, [SP, #8]
; img end address is: 0 (R0)
; img start address is: 0 (R0)
;oled_switch_hw.c,304 :: 		const unsigned char *ptr = img;
STR	R0, [SP, #4]
; img end address is: 0 (R0)
;oled_switch_hw.c,306 :: 		oled_switch_hal_cmd( 1 );
MOVS	R0, #1
BL	_oled_switch_hal_cmd+0
;oled_switch_hw.c,307 :: 		oled_switch_hal_cs( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,308 :: 		oled_switch_hal_write_image( ptr, image_size );
LDRH	R1, [SP, #8]
LDR	R0, [SP, #4]
BL	_oled_switch_hal_write_image+0
;oled_switch_hw.c,309 :: 		oled_switch_hal_cs( 1 );
MOVS	R0, #1
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,310 :: 		}
L_end_oled_switch_draw_565_img:
LDR	LR, [SP, #0]
ADD	SP, SP, #12
BX	LR
; end of _oled_switch_draw_565_img
_oled_switch_scrolling_setup:
;oled_switch_hw.c,312 :: 		void oled_switch_scrolling_setup( scroll_t setup )
SUB	SP, SP, #24
STR	LR, [SP, #0]
;oled_switch_hw.c,314 :: 		uint8_t args[ 20 ] = { 0 };
ADD	R11, SP, #4
ADD	R10, R11, #20
MOVW	R12, #lo_addr(?ICSoled_switch_scrolling_setup_args_L0+0)
MOVT	R12, #hi_addr(?ICSoled_switch_scrolling_setup_args_L0+0)
BL	___CC2DW+0
;oled_switch_hw.c,316 :: 		args[0] = setup.col_horiz_shift;    //Populate args w/ scroll settings
ADD	R2, SP, #4
LDRB	R0, [SP, #24]
STRB	R0, [R2, #0]
;oled_switch_hw.c,317 :: 		args[1] = setup.row_offset;
ADDS	R1, R2, #1
LDRB	R0, [SP, #25]
STRB	R0, [R1, #0]
;oled_switch_hw.c,318 :: 		args[2] = setup.row_horiz_shift;
ADDS	R1, R2, #2
LDRB	R0, [SP, #26]
STRB	R0, [R1, #0]
;oled_switch_hw.c,319 :: 		args[3] = setup.row_vert_shift;
ADDS	R1, R2, #3
LDRB	R0, [SP, #27]
STRB	R0, [R1, #0]
;oled_switch_hw.c,320 :: 		args[4] = setup.interval;
ADDS	R1, R2, #4
LDRB	R0, [SP, #28]
STRB	R0, [R1, #0]
;oled_switch_hw.c,322 :: 		oled_switch_hal_cmd( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cmd+0
;oled_switch_hw.c,323 :: 		oled_switch_hal_cs( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,324 :: 		oled_switch_hal_write( SCROLLING_SETUP, args, 5 );
ADD	R0, SP, #4
MOVS	R2, #5
MOV	R1, R0
MOVS	R0, #39
BL	_oled_switch_hal_write+0
;oled_switch_hw.c,325 :: 		oled_switch_hal_cs( 1 );
MOVS	R0, #1
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,327 :: 		}
L_end_oled_switch_scrolling_setup:
LDR	LR, [SP, #0]
ADD	SP, SP, #24
BX	LR
; end of _oled_switch_scrolling_setup
_oled_switch_deactivate_scrolling:
;oled_switch_hw.c,329 :: 		void oled_switch_deactivate_scrolling( void )
SUB	SP, SP, #4
STR	LR, [SP, #0]
;oled_switch_hw.c,331 :: 		oled_switch_hal_cmd( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cmd+0
;oled_switch_hw.c,332 :: 		oled_switch_hal_cs( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,333 :: 		oled_switch_hal_write( DEACTIVATE_SCROLLING, 0, 0 );
MOVS	R2, #0
MOVS	R1, #0
MOVS	R0, #46
BL	_oled_switch_hal_write+0
;oled_switch_hw.c,334 :: 		oled_switch_hal_cs( 1 );
MOVS	R0, #1
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,335 :: 		}
L_end_oled_switch_deactivate_scrolling:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _oled_switch_deactivate_scrolling
_oled_switch_activate_scrolling:
;oled_switch_hw.c,337 :: 		void oled_switch_activate_scrolling( void )
SUB	SP, SP, #4
STR	LR, [SP, #0]
;oled_switch_hw.c,339 :: 		oled_switch_hal_cmd( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cmd+0
;oled_switch_hw.c,340 :: 		oled_switch_hal_cs( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,341 :: 		oled_switch_hal_write( ACTIVATE_SCROLLING, 0, 0 );
MOVS	R2, #0
MOVS	R1, #0
MOVS	R0, #47
BL	_oled_switch_hal_write+0
;oled_switch_hw.c,342 :: 		oled_switch_hal_cs( 1 );
MOVS	R0, #1
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,343 :: 		}
L_end_oled_switch_activate_scrolling:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _oled_switch_activate_scrolling
_oled_switch_draw_line:
;oled_switch_hw.c,345 :: 		void oled_switch_draw_line( coord_t address, color_t color )
SUB	SP, SP, #24
STR	LR, [SP, #0]
;oled_switch_hw.c,347 :: 		uint8_t args[ 20 ] = { 0 };
ADD	R11, SP, #4
ADD	R10, R11, #20
MOVW	R12, #lo_addr(?ICSoled_switch_draw_line_args_L0+0)
MOVT	R12, #hi_addr(?ICSoled_switch_draw_line_args_L0+0)
BL	___CC2DW+0
;oled_switch_hw.c,349 :: 		args[0] = address.col_start;    //Populate args w/ coords for line and color
ADD	R2, SP, #4
LDRB	R0, [SP, #24]
STRB	R0, [R2, #0]
;oled_switch_hw.c,350 :: 		args[1] = address.row_start;
ADDS	R1, R2, #1
LDRB	R0, [SP, #25]
STRB	R0, [R1, #0]
;oled_switch_hw.c,351 :: 		args[2] = address.col_end;
ADDS	R1, R2, #2
LDRB	R0, [SP, #26]
STRB	R0, [R1, #0]
;oled_switch_hw.c,352 :: 		args[3] = address.row_end;
ADDS	R1, R2, #3
LDRB	R0, [SP, #27]
STRB	R0, [R1, #0]
;oled_switch_hw.c,353 :: 		args[4] = color.color_b;
ADDS	R1, R2, #4
LDRB	R0, [SP, #30]
STRB	R0, [R1, #0]
;oled_switch_hw.c,354 :: 		args[5] = color.color_g;
ADDS	R1, R2, #5
LDRB	R0, [SP, #29]
STRB	R0, [R1, #0]
;oled_switch_hw.c,355 :: 		args[6] = color.color_r;
ADDS	R1, R2, #6
LDRB	R0, [SP, #28]
STRB	R0, [R1, #0]
;oled_switch_hw.c,357 :: 		oled_switch_hal_cmd( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cmd+0
;oled_switch_hw.c,358 :: 		oled_switch_hal_cs( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,359 :: 		oled_switch_hal_write( DRAW_LINE, args, 7 );
ADD	R0, SP, #4
MOVS	R2, #7
MOV	R1, R0
MOVS	R0, #33
BL	_oled_switch_hal_write+0
;oled_switch_hw.c,360 :: 		oled_switch_hal_cs( 1 );
MOVS	R0, #1
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,361 :: 		}
L_end_oled_switch_draw_line:
LDR	LR, [SP, #0]
ADD	SP, SP, #24
BX	LR
; end of _oled_switch_draw_line
_oled_switch_dim_window:
;oled_switch_hw.c,363 :: 		void oled_switch_dim_window( coord_t window )
SUB	SP, SP, #24
STR	LR, [SP, #0]
;oled_switch_hw.c,365 :: 		uint8_t args[ 20 ] = { 0 };
ADD	R11, SP, #4
ADD	R10, R11, #20
MOVW	R12, #lo_addr(?ICSoled_switch_dim_window_args_L0+0)
MOVT	R12, #hi_addr(?ICSoled_switch_dim_window_args_L0+0)
BL	___CC2DW+0
;oled_switch_hw.c,367 :: 		args[0] = window.col_start;    //Populate args w/ coords for dimming window
ADD	R2, SP, #4
LDRB	R0, [SP, #24]
STRB	R0, [R2, #0]
;oled_switch_hw.c,368 :: 		args[1] = window.row_start;
ADDS	R1, R2, #1
LDRB	R0, [SP, #25]
STRB	R0, [R1, #0]
;oled_switch_hw.c,369 :: 		args[2] = window.col_end;
ADDS	R1, R2, #2
LDRB	R0, [SP, #26]
STRB	R0, [R1, #0]
;oled_switch_hw.c,370 :: 		args[3] = window.row_end;
ADDS	R1, R2, #3
LDRB	R0, [SP, #27]
STRB	R0, [R1, #0]
;oled_switch_hw.c,372 :: 		oled_switch_hal_cmd( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cmd+0
;oled_switch_hw.c,373 :: 		oled_switch_hal_cs( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,374 :: 		oled_switch_hal_write( DIM_WINDOW, args, 4 );
ADD	R0, SP, #4
MOVS	R2, #4
MOV	R1, R0
MOVS	R0, #36
BL	_oled_switch_hal_write+0
;oled_switch_hw.c,375 :: 		oled_switch_hal_cs( 1 );
MOVS	R0, #1
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,376 :: 		}
L_end_oled_switch_dim_window:
LDR	LR, [SP, #0]
ADD	SP, SP, #24
BX	LR
; end of _oled_switch_dim_window
_oled_switch_clear_window:
;oled_switch_hw.c,378 :: 		void oled_switch_clear_window( coord_t window )
SUB	SP, SP, #24
STR	LR, [SP, #0]
;oled_switch_hw.c,380 :: 		uint8_t args[ 20 ] = { 0 };
ADD	R11, SP, #4
ADD	R10, R11, #20
MOVW	R12, #lo_addr(?ICSoled_switch_clear_window_args_L0+0)
MOVT	R12, #hi_addr(?ICSoled_switch_clear_window_args_L0+0)
BL	___CC2DW+0
;oled_switch_hw.c,382 :: 		args[0] = window.col_start;    //Populate args w/ coords for clearing window
ADD	R2, SP, #4
LDRB	R0, [SP, #24]
STRB	R0, [R2, #0]
;oled_switch_hw.c,383 :: 		args[1] = window.row_start;
ADDS	R1, R2, #1
LDRB	R0, [SP, #25]
STRB	R0, [R1, #0]
;oled_switch_hw.c,384 :: 		args[2] = window.col_end;
ADDS	R1, R2, #2
LDRB	R0, [SP, #26]
STRB	R0, [R1, #0]
;oled_switch_hw.c,385 :: 		args[3] = window.row_end;
ADDS	R1, R2, #3
LDRB	R0, [SP, #27]
STRB	R0, [R1, #0]
;oled_switch_hw.c,387 :: 		oled_switch_hal_cmd( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cmd+0
;oled_switch_hw.c,388 :: 		oled_switch_hal_cs( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,389 :: 		oled_switch_hal_write( CLEAR_WINDOW, args, 4 );
ADD	R0, SP, #4
MOVS	R2, #4
MOV	R1, R0
MOVS	R0, #37
BL	_oled_switch_hal_write+0
;oled_switch_hw.c,390 :: 		oled_switch_hal_cs( 1 );
MOVS	R0, #1
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,391 :: 		}
L_end_oled_switch_clear_window:
LDR	LR, [SP, #0]
ADD	SP, SP, #24
BX	LR
; end of _oled_switch_clear_window
_oled_switch_draw_rectangle:
;oled_switch_hw.c,393 :: 		void oled_switch_draw_rectangle( coord_t rect, color_t line, color_t fill )
SUB	SP, SP, #24
STR	LR, [SP, #0]
;oled_switch_hw.c,395 :: 		uint8_t args[ 20 ] = { 0 };
ADD	R11, SP, #4
ADD	R10, R11, #20
MOVW	R12, #lo_addr(?ICSoled_switch_draw_rectangle_args_L0+0)
MOVT	R12, #hi_addr(?ICSoled_switch_draw_rectangle_args_L0+0)
BL	___CC2DW+0
;oled_switch_hw.c,397 :: 		args[0] = rect.col_start;    //Populate args w/ coords and colors for lines and fill
ADD	R2, SP, #4
LDRB	R0, [SP, #24]
STRB	R0, [R2, #0]
;oled_switch_hw.c,398 :: 		args[1] = rect.row_start;
ADDS	R1, R2, #1
LDRB	R0, [SP, #25]
STRB	R0, [R1, #0]
;oled_switch_hw.c,399 :: 		args[2] = rect.col_end;
ADDS	R1, R2, #2
LDRB	R0, [SP, #26]
STRB	R0, [R1, #0]
;oled_switch_hw.c,400 :: 		args[3] = rect.row_end;
ADDS	R1, R2, #3
LDRB	R0, [SP, #27]
STRB	R0, [R1, #0]
;oled_switch_hw.c,401 :: 		args[4] = line.color_b;
ADDS	R1, R2, #4
LDRB	R0, [SP, #30]
STRB	R0, [R1, #0]
;oled_switch_hw.c,402 :: 		args[5] = line.color_g;
ADDS	R1, R2, #5
LDRB	R0, [SP, #29]
STRB	R0, [R1, #0]
;oled_switch_hw.c,403 :: 		args[6] = line.color_r;
ADDS	R1, R2, #6
LDRB	R0, [SP, #28]
STRB	R0, [R1, #0]
;oled_switch_hw.c,404 :: 		args[7] = fill.color_b;
ADDS	R1, R2, #7
LDRB	R0, [SP, #34]
STRB	R0, [R1, #0]
;oled_switch_hw.c,405 :: 		args[8] = fill.color_g;
ADDW	R1, R2, #8
LDRB	R0, [SP, #33]
STRB	R0, [R1, #0]
;oled_switch_hw.c,406 :: 		args[9] = fill.color_r;
ADDW	R1, R2, #9
LDRB	R0, [SP, #32]
STRB	R0, [R1, #0]
;oled_switch_hw.c,408 :: 		oled_switch_hal_cmd( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cmd+0
;oled_switch_hw.c,409 :: 		oled_switch_hal_cs( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,410 :: 		oled_switch_hal_write( DRAW_RECTANGLE, args, 10 );
ADD	R0, SP, #4
MOVS	R2, #10
MOV	R1, R0
MOVS	R0, #34
BL	_oled_switch_hal_write+0
;oled_switch_hw.c,411 :: 		oled_switch_hal_cs( 1 );
MOVS	R0, #1
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,412 :: 		}
L_end_oled_switch_draw_rectangle:
LDR	LR, [SP, #0]
ADD	SP, SP, #24
BX	LR
; end of _oled_switch_draw_rectangle
_oled_switch_copy:
;oled_switch_hw.c,414 :: 		void oled_switch_copy( coord_t from, coord_t to )
SUB	SP, SP, #24
STR	LR, [SP, #0]
;oled_switch_hw.c,416 :: 		uint8_t args[ 20 ] = { 0 };
ADD	R11, SP, #4
ADD	R10, R11, #20
MOVW	R12, #lo_addr(?ICSoled_switch_copy_args_L0+0)
MOVT	R12, #hi_addr(?ICSoled_switch_copy_args_L0+0)
BL	___CC2DW+0
;oled_switch_hw.c,418 :: 		args[0] = from.col_start;    //Populate args w/ coords for the "from" and then the "to"
ADD	R2, SP, #4
LDRB	R0, [SP, #24]
STRB	R0, [R2, #0]
;oled_switch_hw.c,419 :: 		args[1] = from.row_start;
ADDS	R1, R2, #1
LDRB	R0, [SP, #25]
STRB	R0, [R1, #0]
;oled_switch_hw.c,420 :: 		args[2] = from.col_end;
ADDS	R1, R2, #2
LDRB	R0, [SP, #26]
STRB	R0, [R1, #0]
;oled_switch_hw.c,421 :: 		args[3] = from.row_end;
ADDS	R1, R2, #3
LDRB	R0, [SP, #27]
STRB	R0, [R1, #0]
;oled_switch_hw.c,422 :: 		args[4] = to.col_start;
ADDS	R1, R2, #4
LDRB	R0, [SP, #28]
STRB	R0, [R1, #0]
;oled_switch_hw.c,423 :: 		args[5] = to.row_start;
ADDS	R1, R2, #5
LDRB	R0, [SP, #29]
STRB	R0, [R1, #0]
;oled_switch_hw.c,425 :: 		oled_switch_hal_cmd( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cmd+0
;oled_switch_hw.c,426 :: 		oled_switch_hal_cs( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,427 :: 		oled_switch_hal_write( COPY, args, 6 );
ADD	R0, SP, #4
MOVS	R2, #6
MOV	R1, R0
MOVS	R0, #35
BL	_oled_switch_hal_write+0
;oled_switch_hw.c,428 :: 		oled_switch_hal_cs( 1 );
MOVS	R0, #1
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,429 :: 		}
L_end_oled_switch_copy:
LDR	LR, [SP, #0]
ADD	SP, SP, #24
BX	LR
; end of _oled_switch_copy
_oled_switch_fill_settings:
;oled_switch_hw.c,431 :: 		void oled_switch_fill_settings( fill_sett_t sett )
; sett start address is: 0 (R0)
SUB	SP, SP, #8
STR	LR, [SP, #0]
; sett end address is: 0 (R0)
; sett start address is: 0 (R0)
;oled_switch_hw.c,433 :: 		uint8_t arg = sett;
STRB	R0, [SP, #4]
; sett end address is: 0 (R0)
;oled_switch_hw.c,435 :: 		oled_switch_hal_cmd( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cmd+0
;oled_switch_hw.c,436 :: 		oled_switch_hal_cs( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,437 :: 		oled_switch_hal_write( FILL_ENABLE_DISABLE, &arg, 1 );
ADD	R1, SP, #4
MOVS	R2, #1
MOVS	R0, #38
BL	_oled_switch_hal_write+0
;oled_switch_hw.c,438 :: 		oled_switch_hal_cs( 1 );
MOVS	R0, #1
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,439 :: 		}
L_end_oled_switch_fill_settings:
LDR	LR, [SP, #0]
ADD	SP, SP, #8
BX	LR
; end of _oled_switch_fill_settings
_oled_switch_set_abc_contrast:
;oled_switch_hw.c,441 :: 		void oled_switch_set_abc_contrast( contrast_t* contrast )
SUB	SP, SP, #12
STR	LR, [SP, #0]
STR	R0, [SP, #8]
;oled_switch_hw.c,445 :: 		oled_switch_hal_cmd( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cmd+0
;oled_switch_hw.c,446 :: 		arg = contrast->a_contrast;
LDR	R1, [SP, #8]
LDRB	R1, [R1, #0]
STRB	R1, [SP, #4]
;oled_switch_hw.c,447 :: 		oled_switch_hal_cs( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,448 :: 		oled_switch_hal_write( A_CONTRAST, &arg, 1 );
ADD	R1, SP, #4
MOVS	R2, #1
MOVS	R0, #129
BL	_oled_switch_hal_write+0
;oled_switch_hw.c,449 :: 		oled_switch_hal_cs( 1 );
MOVS	R0, #1
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,450 :: 		arg = contrast->b_contrast;
LDR	R1, [SP, #8]
ADDS	R1, R1, #1
LDRB	R1, [R1, #0]
STRB	R1, [SP, #4]
;oled_switch_hw.c,451 :: 		oled_switch_hal_cs( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,452 :: 		oled_switch_hal_write( B_CONTRAST, &arg, 1 );
ADD	R1, SP, #4
MOVS	R2, #1
MOVS	R0, #130
BL	_oled_switch_hal_write+0
;oled_switch_hw.c,453 :: 		oled_switch_hal_cs( 1 );
MOVS	R0, #1
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,454 :: 		arg = contrast->c_contrast;
LDR	R1, [SP, #8]
ADDS	R1, R1, #2
LDRB	R1, [R1, #0]
STRB	R1, [SP, #4]
;oled_switch_hw.c,455 :: 		oled_switch_hal_cs( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,456 :: 		oled_switch_hal_write( C_CONTRAST, &arg, 1 );
ADD	R1, SP, #4
MOVS	R2, #1
MOVS	R0, #131
BL	_oled_switch_hal_write+0
;oled_switch_hw.c,457 :: 		oled_switch_hal_cs( 1 );
MOVS	R0, #1
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,458 :: 		}
L_end_oled_switch_set_abc_contrast:
LDR	LR, [SP, #0]
ADD	SP, SP, #12
BX	LR
; end of _oled_switch_set_abc_contrast
_oled_switch_set_master_current:
;oled_switch_hw.c,460 :: 		void oled_switch_set_master_current( uint8_t current )
SUB	SP, SP, #8
STR	LR, [SP, #0]
STRB	R0, [SP, #4]
;oled_switch_hw.c,462 :: 		oled_switch_hal_cmd( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cmd+0
;oled_switch_hw.c,463 :: 		oled_switch_hal_cs( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,464 :: 		oled_switch_hal_write( MAST_CURR_CNTL, &current, 1 );
ADD	R1, SP, #4
MOVS	R2, #1
MOVS	R0, #135
BL	_oled_switch_hal_write+0
;oled_switch_hw.c,465 :: 		oled_switch_hal_cs( 1 );
MOVS	R0, #1
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,466 :: 		}
L_end_oled_switch_set_master_current:
LDR	LR, [SP, #0]
ADD	SP, SP, #8
BX	LR
; end of _oled_switch_set_master_current
_oled_switch_set_remap_color_depth:
;oled_switch_hw.c,468 :: 		void oled_switch_set_remap_color_depth( color_depth_t depth )
; depth start address is: 0 (R0)
SUB	SP, SP, #8
STR	LR, [SP, #0]
; depth end address is: 0 (R0)
; depth start address is: 0 (R0)
;oled_switch_hw.c,470 :: 		uint8_t arg = depth;
STRB	R0, [SP, #4]
;oled_switch_hw.c,472 :: 		arg |= 0x70;  //These bits must be 1
ORR	R1, R0, #112
; depth end address is: 0 (R0)
STRB	R1, [SP, #4]
;oled_switch_hw.c,473 :: 		oled_switch_hal_cmd( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cmd+0
;oled_switch_hw.c,474 :: 		oled_switch_hal_cs( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,475 :: 		oled_switch_hal_write( REMAP_CLR_DPTH_SETT, &arg, 1 );
ADD	R1, SP, #4
MOVS	R2, #1
MOVS	R0, #160
BL	_oled_switch_hal_write+0
;oled_switch_hw.c,476 :: 		oled_switch_hal_cs( 1 );
MOVS	R0, #1
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,477 :: 		}
L_end_oled_switch_set_remap_color_depth:
LDR	LR, [SP, #0]
ADD	SP, SP, #8
BX	LR
; end of _oled_switch_set_remap_color_depth
_oled_switch_set_display_start_line:
;oled_switch_hw.c,479 :: 		void oled_switch_set_display_start_line( uint8_t st_line )
; st_line start address is: 0 (R0)
SUB	SP, SP, #8
STR	LR, [SP, #0]
; st_line end address is: 0 (R0)
; st_line start address is: 0 (R0)
;oled_switch_hw.c,481 :: 		uint8_t arg = st_line;
STRB	R0, [SP, #4]
; st_line end address is: 0 (R0)
;oled_switch_hw.c,483 :: 		oled_switch_hal_cmd( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cmd+0
;oled_switch_hw.c,484 :: 		oled_switch_hal_cs( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,485 :: 		oled_switch_hal_write( SET_DSPLY_STRT_LINE, &arg, 1 );
ADD	R1, SP, #4
MOVS	R2, #1
MOVS	R0, #161
BL	_oled_switch_hal_write+0
;oled_switch_hw.c,486 :: 		oled_switch_hal_cs( 1 );
MOVS	R0, #1
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,487 :: 		}
L_end_oled_switch_set_display_start_line:
LDR	LR, [SP, #0]
ADD	SP, SP, #8
BX	LR
; end of _oled_switch_set_display_start_line
_oled_switch_set_display_offset:
;oled_switch_hw.c,489 :: 		void oled_switch_set_display_offset( uint8_t offset )
; offset start address is: 0 (R0)
SUB	SP, SP, #8
STR	LR, [SP, #0]
; offset end address is: 0 (R0)
; offset start address is: 0 (R0)
;oled_switch_hw.c,491 :: 		uint8_t arg = offset;
STRB	R0, [SP, #4]
; offset end address is: 0 (R0)
;oled_switch_hw.c,493 :: 		oled_switch_hal_cmd( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cmd+0
;oled_switch_hw.c,494 :: 		oled_switch_hal_cs( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,495 :: 		oled_switch_hal_write( SET_DSPLY_OFFSET, &arg, 1 );
ADD	R1, SP, #4
MOVS	R2, #1
MOVS	R0, #162
BL	_oled_switch_hal_write+0
;oled_switch_hw.c,496 :: 		oled_switch_hal_cs( 1 );
MOVS	R0, #1
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,497 :: 		}
L_end_oled_switch_set_display_offset:
LDR	LR, [SP, #0]
ADD	SP, SP, #8
BX	LR
; end of _oled_switch_set_display_offset
_oled_switch_set_normal_display:
;oled_switch_hw.c,499 :: 		void oled_switch_set_normal_display( void )
SUB	SP, SP, #4
STR	LR, [SP, #0]
;oled_switch_hw.c,501 :: 		oled_switch_hal_cmd( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cmd+0
;oled_switch_hw.c,502 :: 		oled_switch_hal_cs( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,503 :: 		oled_switch_hal_write( NORMAL_DSPLY, 0, 0 );
MOVS	R2, #0
MOVS	R1, #0
MOVS	R0, #164
BL	_oled_switch_hal_write+0
;oled_switch_hw.c,504 :: 		oled_switch_hal_cs( 1 );
MOVS	R0, #1
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,505 :: 		}
L_end_oled_switch_set_normal_display:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _oled_switch_set_normal_display
_oled_switch_set_multiplex_ratio:
;oled_switch_hw.c,507 :: 		void oled_switch_set_multiplex_ratio( uint8_t ratio )
; ratio start address is: 0 (R0)
SUB	SP, SP, #8
STR	LR, [SP, #0]
; ratio end address is: 0 (R0)
; ratio start address is: 0 (R0)
;oled_switch_hw.c,509 :: 		uint8_t arg = ratio;
STRB	R0, [SP, #4]
; ratio end address is: 0 (R0)
;oled_switch_hw.c,511 :: 		oled_switch_hal_cmd( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cmd+0
;oled_switch_hw.c,512 :: 		oled_switch_hal_cs( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,513 :: 		oled_switch_hal_write( MULTIPLEX_RATIO, &arg, 1 );
ADD	R1, SP, #4
MOVS	R2, #1
MOVS	R0, #168
BL	_oled_switch_hal_write+0
;oled_switch_hw.c,514 :: 		oled_switch_hal_cs( 1 );
MOVS	R0, #1
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,515 :: 		}
L_end_oled_switch_set_multiplex_ratio:
LDR	LR, [SP, #0]
ADD	SP, SP, #8
BX	LR
; end of _oled_switch_set_multiplex_ratio
_oled_switch_set_row_range:
;oled_switch_hw.c,517 :: 		void oled_switch_set_row_range( uint8_t start, uint8_t end )
; end start address is: 4 (R1)
; start start address is: 0 (R0)
SUB	SP, SP, #8
STR	LR, [SP, #0]
; end end address is: 4 (R1)
; start end address is: 0 (R0)
; start start address is: 0 (R0)
; end start address is: 4 (R1)
;oled_switch_hw.c,519 :: 		uint8_t args[ 4 ] = { 0 };
MOVS	R2, #0
STRB	R2, [SP, #4]
MOVS	R2, #0
STRB	R2, [SP, #5]
STRB	R2, [SP, #6]
STRB	R2, [SP, #7]
;oled_switch_hw.c,521 :: 		args[0] = start;
ADD	R2, SP, #4
STRB	R0, [R2, #0]
; start end address is: 0 (R0)
;oled_switch_hw.c,522 :: 		args[1] = end;
ADDS	R2, R2, #1
STRB	R1, [R2, #0]
; end end address is: 4 (R1)
;oled_switch_hw.c,524 :: 		oled_switch_hal_cmd( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cmd+0
;oled_switch_hw.c,525 :: 		oled_switch_hal_cs( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,526 :: 		oled_switch_hal_write( SET_ROW_RANGE, &args, 2 );
ADD	R2, SP, #4
MOV	R1, R2
MOVS	R2, #2
MOVS	R0, #117
BL	_oled_switch_hal_write+0
;oled_switch_hw.c,527 :: 		oled_switch_hal_cs( 1 );
MOVS	R0, #1
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,528 :: 		}
L_end_oled_switch_set_row_range:
LDR	LR, [SP, #0]
ADD	SP, SP, #8
BX	LR
; end of _oled_switch_set_row_range
_oled_switch_set_col_range:
;oled_switch_hw.c,530 :: 		void oled_switch_set_col_range( uint8_t start, uint8_t end )
; end start address is: 4 (R1)
; start start address is: 0 (R0)
SUB	SP, SP, #8
STR	LR, [SP, #0]
; end end address is: 4 (R1)
; start end address is: 0 (R0)
; start start address is: 0 (R0)
; end start address is: 4 (R1)
;oled_switch_hw.c,532 :: 		uint8_t args[ 4 ] = { 0 };
MOVS	R2, #0
STRB	R2, [SP, #4]
MOVS	R2, #0
STRB	R2, [SP, #5]
STRB	R2, [SP, #6]
STRB	R2, [SP, #7]
;oled_switch_hw.c,534 :: 		args[0] = start;
ADD	R2, SP, #4
STRB	R0, [R2, #0]
; start end address is: 0 (R0)
;oled_switch_hw.c,535 :: 		args[1] = end;
ADDS	R2, R2, #1
STRB	R1, [R2, #0]
; end end address is: 4 (R1)
;oled_switch_hw.c,537 :: 		oled_switch_hal_cmd( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cmd+0
;oled_switch_hw.c,538 :: 		oled_switch_hal_cs( 0 );
MOVS	R0, #0
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,539 :: 		oled_switch_hal_write( SET_COL_RANGE, &args, 2 );
ADD	R2, SP, #4
MOV	R1, R2
MOVS	R2, #2
MOVS	R0, #21
BL	_oled_switch_hal_write+0
;oled_switch_hw.c,540 :: 		oled_switch_hal_cs( 1 );
MOVS	R0, #1
BL	_oled_switch_hal_cs+0
;oled_switch_hw.c,541 :: 		}
L_end_oled_switch_set_col_range:
LDR	LR, [SP, #0]
ADD	SP, SP, #8
BX	LR
; end of _oled_switch_set_col_range
