" =============================================================================
" File Name:     vimcmdline.vim
" Author:        Evan Pete Walsh
" Contact:       epwalsh10@gmail.com
" Creation Date: 13-04-2016
" Last Modified: Wed Apr 13 10:06:05 2016
" =============================================================================

let cmdline_vsplit = 1        " Split the window vertically
let cmdline_esc_term = 1      " Remap <Esc> to :stopinsert in Neovim terminal
let cmdline_in_buffer = 1     " Start the interpreter in a Neovim buffer
let cmdline_term_height = 15  " Initial height of interpreter window or pane
let cmdline_term_width = 80   " Initial width of interpreter window or pane
let cmdline_tmp_dir = '/tmp'  " Temporary directory to save files
let cmdline_outhl = 1         " Syntax highlight the output

if &t_Co == 256
    let cmdline_color_input = 247
    let cmdline_color_normal = 39
    let cmdline_color_number = 51
    let cmdline_color_integer = 51
    let cmdline_color_float = 51
    let cmdline_color_complex = 51
    let cmdline_color_negnum = 183
    let cmdline_color_negfloat = 183
    let cmdline_color_date = 43
    let cmdline_color_true = 78
    let cmdline_color_false = 203
    let cmdline_color_inf = 39
    let cmdline_color_constant = 75
    let cmdline_color_string = 79
    let cmdline_color_stderr = 33
    let cmdline_color_error = 15
    let cmdline_color_warn = 1
    let cmdline_color_index = 186
endif

let cmdline_follow_colorscheme = 0 " Use whatever default color scheme