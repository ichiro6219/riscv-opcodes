`define UNIMP      32'b00000000000000000000000000000000
`define J          32'b?????????????????????????_1100000
`define JAL        32'b?????????????????????????_1100001
`define JALR_C     32'b?????_?????_????????????_000_1100010
`define JALR_R     32'b?????_?????_????????????_001_1100010
`define JALR_J     32'b?????_?????_????????????_010_1100010
`define BEQ        32'b?????_?????_?????_???????_000_1100011
`define BNE        32'b?????_?????_?????_???????_001_1100011
`define BLT        32'b?????_?????_?????_???????_100_1100011
`define BGE        32'b?????_?????_?????_???????_101_1100011
`define BLTU       32'b?????_?????_?????_???????_110_1100011
`define BGEU       32'b?????_?????_?????_???????_111_1100011
`define LUI        32'b?????_????????????????????_1110001
`define ADDI       32'b?????_?????_????????????_000_1110100
`define SLTI       32'b?????_?????_????????????_010_1110100
`define SLTIU      32'b?????_?????_????????????_011_1110100
`define ANDI       32'b?????_?????_????????????_100_1110100
`define ORI        32'b?????_?????_????????????_101_1110100
`define XORI       32'b?????_?????_????????????_110_1110100
`define SLLI       32'b?????_?????_??????_000001_111_1110100
`define SRLI       32'b?????_?????_??????_000010_111_1110100
`define SRAI       32'b?????_?????_??????_000011_111_1110100
`define ADD        32'b?????_?????_?????_0000000000_1110101
`define SUB        32'b?????_?????_?????_0000001000_1110101
`define SLT        32'b?????_?????_?????_0000010000_1110101
`define SLTU       32'b?????_?????_?????_0000011000_1110101
`define AND        32'b?????_?????_?????_0000100000_1110101
`define OR         32'b?????_?????_?????_0000101000_1110101
`define XOR        32'b?????_?????_?????_0000110000_1110101
`define SLL        32'b?????_?????_?????_0000001111_1110101
`define SRL        32'b?????_?????_?????_0000010111_1110101
`define SRA        32'b?????_?????_?????_0000011111_1110101
`define MUL        32'b?????_?????_?????_0000000001_1110101
`define MULH       32'b?????_?????_?????_0000010001_1110101
`define MULHU      32'b?????_?????_?????_0000011001_1110101
`define DIV        32'b?????_?????_?????_0000100001_1110101
`define DIVU       32'b?????_?????_?????_0000101001_1110101
`define REM        32'b?????_?????_?????_0000110001_1110101
`define REMU       32'b?????_?????_?????_0000111001_1110101
`define ADDIW      32'b?????_?????_????????????_000_1110110
`define SLLIW      32'b?????_?????_0_?????_000001_111_1110110
`define SRLIW      32'b?????_?????_0_?????_000010_111_1110110
`define SRAIW      32'b?????_?????_0_?????_000011_111_1110110
`define ADDW       32'b?????_?????_?????_0000000000_1110111
`define SUBW       32'b?????_?????_?????_0000001000_1110111
`define SLLW       32'b?????_?????_?????_0000001111_1110111
`define SRLW       32'b?????_?????_?????_0000010111_1110111
`define SRAW       32'b?????_?????_?????_0000011111_1110111
`define MULW       32'b?????_?????_?????_0000000001_1110111
`define MULHW      32'b?????_?????_?????_0000010001_1110111
`define MULHUW     32'b?????_?????_?????_0000011001_1110111
`define DIVW       32'b?????_?????_?????_0000100001_1110111
`define DIVUW      32'b?????_?????_?????_0000101001_1110111
`define REMW       32'b?????_?????_?????_0000110001_1110111
`define REMUW      32'b?????_?????_?????_0000111001_1110111
`define LB         32'b?????_?????_????????????_000_1111000
`define LH         32'b?????_?????_????????????_001_1111000
`define LW         32'b?????_?????_????????????_010_1111000
`define LD         32'b?????_?????_????????????_011_1111000
`define LBU        32'b?????_?????_????????????_100_1111000
`define LHU        32'b?????_?????_????????????_101_1111000
`define LWU        32'b?????_?????_????????????_110_1111000
`define SYNCI      32'b00000_?????_????????????_111_1111000
`define SB         32'b?????_?????_?????_???????_000_1111001
`define SH         32'b?????_?????_?????_???????_001_1111001
`define SW         32'b?????_?????_?????_???????_010_1111001
`define SD         32'b?????_?????_?????_???????_011_1111001
`define AMOW_ADD   32'b?????_?????_?????_0000000010_1111010
`define AMOW_SWAP  32'b?????_?????_?????_0000001010_1111010
`define AMOW_AND   32'b?????_?????_?????_0000010010_1111010
`define AMOW_OR    32'b?????_?????_?????_0000011010_1111010
`define AMOW_MIN   32'b?????_?????_?????_0000100010_1111010
`define AMOW_MAX   32'b?????_?????_?????_0000101010_1111010
`define AMOW_MINU  32'b?????_?????_?????_0000110010_1111010
`define AMOW_MAXU  32'b?????_?????_?????_0000111010_1111010
`define AMO_ADD    32'b?????_?????_?????_0000000011_1111010
`define AMO_SWAP   32'b?????_?????_?????_0000001011_1111010
`define AMO_AND    32'b?????_?????_?????_0000010011_1111010
`define AMO_OR     32'b?????_?????_?????_0000011011_1111010
`define AMO_MIN    32'b?????_?????_?????_0000100011_1111010
`define AMO_MAX    32'b?????_?????_?????_0000101011_1111010
`define AMO_MINU   32'b?????_?????_?????_0000110011_1111010
`define AMO_MAXU   32'b?????_?????_?????_0000111011_1111010
`define RDNPC      32'b?????_00000_00000_0000000000_1111011
`define MFCR       32'b?????_00000_?????_0000000001_1111011
`define MTCR       32'b00000_?????_?????_0000001001_1111011
`define SYNC       32'b00000_00000_00000_0000000010_1111011
`define SYSCALL    32'b00000_00000_????????????_011_1111011
`define EI         32'b?????_00000_00000_0000000000_1101011
`define DI         32'b?????_00000_00000_0000001000_1101011
`define MFPCR      32'b?????_00000_?????_0000000001_1101011
`define MTPCR      32'b00000_?????_?????_0000001001_1101011
`define ERET       32'b00000_00000_00000_0000000010_1101011
`define ADD_S      32'b?????_?????_?????_00000_???_00_1101010
`define SUB_S      32'b?????_?????_?????_00001_???_00_1101010
`define MUL_S      32'b?????_?????_?????_00010_???_00_1101010
`define DIV_S      32'b?????_?????_?????_00011_???_00_1101010
`define SQRT_S     32'b?????_?????_00000_00100_???_00_1101010
`define SGNINJ_S   32'b?????_?????_?????_0010100000_1101010
`define SGNINJN_S  32'b?????_?????_?????_0011000000_1101010
`define SGNMUL_S   32'b?????_?????_?????_0011100000_1101010
`define ADD_D      32'b?????_?????_?????_00000_???_11_1101010
`define SUB_D      32'b?????_?????_?????_00001_???_11_1101010
`define MUL_D      32'b?????_?????_?????_00010_???_11_1101010
`define DIV_D      32'b?????_?????_?????_00011_???_11_1101010
`define SQRT_D     32'b?????_?????_00000_00100_???_11_1101010
`define SGNINJ_D   32'b?????_?????_?????_0010100011_1101010
`define SGNINJN_D  32'b?????_?????_?????_0011000011_1101010
`define SGNMUL_D   32'b?????_?????_?????_0011100011_1101010
`define CVT_L_S    32'b?????_?????_00000_01000_???_00_1101010
`define CVTU_L_S   32'b?????_?????_00000_01001_???_00_1101010
`define CVT_W_S    32'b?????_?????_00000_01010_???_00_1101010
`define CVTU_W_S   32'b?????_?????_00000_01011_???_00_1101010
`define CVT_L_D    32'b?????_?????_00000_01000_???_11_1101010
`define CVTU_L_D   32'b?????_?????_00000_01001_???_11_1101010
`define CVT_W_D    32'b?????_?????_00000_01010_???_11_1101010
`define CVTU_W_D   32'b?????_?????_00000_01011_???_11_1101010
`define CVT_S_L    32'b?????_?????_00000_01100_???_00_1101010
`define CVTU_S_L   32'b?????_?????_00000_01101_???_00_1101010
`define CVT_S_W    32'b?????_?????_00000_01110_???_00_1101010
`define CVTU_S_W   32'b?????_?????_00000_01111_???_00_1101010
`define CVT_D_L    32'b?????_?????_00000_01100_???_11_1101010
`define CVTU_D_L   32'b?????_?????_00000_01101_???_11_1101010
`define CVT_D_W    32'b?????_?????_00000_0111000011_1101010
`define CVTU_D_W   32'b?????_?????_00000_0111100011_1101010
`define CVT_S_D    32'b?????_?????_00000_10011_???_00_1101010
`define CVT_D_S    32'b?????_?????_00000_1000000011_1101010
`define C_EQ_S     32'b?????_?????_?????_1010100000_1101010
`define C_LT_S     32'b?????_?????_?????_1011000000_1101010
`define C_LE_S     32'b?????_?????_?????_1011100000_1101010
`define C_EQ_D     32'b?????_?????_?????_1010100011_1101010
`define C_LT_D     32'b?????_?????_?????_1011000011_1101010
`define C_LE_D     32'b?????_?????_?????_1011100011_1101010
`define MFF_S      32'b?????_00000_?????_1100001000_1101010
`define MFF_D      32'b?????_00000_?????_1100001011_1101010
`define MFFL_D     32'b?????_00000_?????_1100101011_1101010
`define MFFH_D     32'b?????_00000_?????_1101001011_1101010
`define MTF_S      32'b?????_?????_00000_1110001000_1101010
`define MTF_D      32'b?????_?????_00000_1110001011_1101010
`define MTFLH_D    32'b?????_?????_?????_1110001111_1101010
`define L_S        32'b?????_?????_????????????_010_1101000
`define L_D        32'b?????_?????_????????????_011_1101000
`define S_S        32'b?????_?????_?????_???????_010_1101001
`define S_D        32'b?????_?????_?????_???????_011_1101001
`define MADD_S     32'b?????_?????_?????_?????_???_00_1101100
`define MSUB_S     32'b?????_?????_?????_?????_???_00_1101101
`define NMSUB_S    32'b?????_?????_?????_?????_???_00_1101110
`define NMADD_S    32'b?????_?????_?????_?????_???_00_1101111
`define MADD_D     32'b?????_?????_?????_?????_???_11_1101100
`define MSUB_D     32'b?????_?????_?????_?????_???_11_1101101
`define NMSUB_D    32'b?????_?????_?????_?????_???_11_1101110
`define NMADD_D    32'b?????_?????_?????_?????_???_11_1101111
