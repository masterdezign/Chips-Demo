--  ****************************************************************************
--  Filename         :svga_package.vhd
--  Project          :Wishbone VGA Core 
--  Version          :0.1
--  Author           :Jonathan P Dawson
--  Created Date     :2005-12-18
--  ****************************************************************************
--  Description      :A package defining the carachter glyphs.
--  ****************************************************************************
--  Dependencies     :Standard Libraries
--  ****************************************************************************
--  Revision History :
--  
--  Date :2005-12-18
--  Author :Jonathan P Dawson
--  Modification: Created File
--  
--  ****************************************************************************
--  Copyright (C) Jonathan P Dawson 2005
--  ****************************************************************************

library IEEE;
use Ieee.std_logic_1164.all;

package PIXPACKAGE is
  
  
  type PIX_ARRAY_TYPE  is array (0 to 2047) of Std_logic_vector(7 downto 0);  
  
  constant PIXARRAY : PIX_ARRAY_TYPE := (
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --0d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --1d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --2d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --3d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --4d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --5d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --6d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --7d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --8d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --9d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --10d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --11d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --12d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --13d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --14d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --15d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --16d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --17d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --18d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --19d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --20d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --21d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --22d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --23d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --24d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --25d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --26d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --27d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --28d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --29d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --30d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --31d
  
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --space
  "00001000","00001000","00001000","00001000","00000000","00001000","00000000","00000000", --!
  "00010100","00010100","00000000","00000000","00000000","00000000","00000000","00000000", --"
  "00000000","00010100","00111110","00010100","00111110","00010100","00000000","00000000", --#
  "00001000","00111100","00001010","00011100","00101000","00011110","00001000","00000000", --$
  "10001110","01001010","00101110","00010000","11101000","10100100","11100010","00000000", --%
  "00001100","00010010","00010010","00001100","00110010","00010010","01101100","00000000", ----'
  "00001000","00001000","00000000","00000000","00000000","00000000","00000000","00000000", --(
  "00001000","00000100","00000010","00000010","00000010","00000100","00001000","00000000", --)
  "00001000","00010000","00100000","00100000","00100000","00010000","00001000","00000000", --*
  "00001000","00111110","00010100","00100010","00000000","00000000","00000000","00000000", --+
  "00010000","00010000","00010000","11111110","00010000","00010000","00010000","00000000", --,
  "00000000","00000000","00000000","00000000","00000000","00001000","00001000","00000000", ---
  "00000000","00000000","00000000","00111110","00000000","00000000","00000000","00000000", --.
  "00000000","00000000","00000000","00000000","00000000","00001000","00000000","00000000", --/
  "01000000","00100000","00010000","00001000","00000100","00000010","00000000","00000000", --0
  
  "00011100","00110010","00101010","00101010","00100110","00011100","00000000","00000000", --1
  "00001000","00001100","00001000","00001000","00001000","00111110","00000000","00000000", --2
  "00011100","00100010","00010000","00001000","00000100","00111110","00000000","00000000", --3
  "00011100","00100010","00010000","00100000","00100010","00011100","00000000","00000000", --4  
  "00011000","00010100","00010010","00111110","00010000","00111100","00000000","00000000", --5
  "00111110","00000010","00111110","00100000","00100010","00011100","00000000","00000000", --6
  "00011100","00100010","00000010","00011110","00100010","00011100","00000000","00000000", --7
  "00111110","00100010","00100000","00010000","00001000","00001000","00000000","00000000", --8
  "00011100","00100010","00011100","00100010","00100010","00011100","00000000","00000000", --9
  "00011100","00100010","00111100","00100000","00100010","00011100","00000000","00000000", --:
  
  "00000000","00001000","00000000","00000000","00000000","00001000","00000000","00000000", --;
  "00000000","00001000","00000000","00000000","00000000","00001000","00001000","00000000", --<
  "00010000","00001000","00000100","00000010","00000100","00001000","00010000","00000000", --=
  "00000000","00000000","00111110","00000000","00000000","00111110","00000000","00000000", -->
  "00000010","00000100","00001000","00010000","00001000","00000100","00000010","00000000", --?
  "00011100","00100010","00011000","00001000","00000000","00001000","00000000","00000000", --@
  "01111100","10000010","10111010","10101010","10111010","10100010","01101100","00000000", --A
  
  "00011100","00100010","00111110","00100010","00100010","00100010","00000000","00000000", --B
  "00011110","00100010","00011110","00100010","00100010","00011110","00000000","00000000", --C
  "00011100","00100010","00000010","00000010","00100010","00011100","00000000","00000000", --D
  "00011110","00100010","00100010","00100010","00100010","00011110","00000000","00000000", --E
  "00111110","00000010","00011110","00000010","00000010","00111110","00000000","00000000", --F
  "00111110","00000010","00011110","00000010","00000010","00000010","00000000","00000000", --G
  "00011100","00100010","00000010","00111010","00100010","00011100","00000000","00000000", --H
  "00100010","00100010","00111110","00100010","00100010","00100010","00000000","00000000", --I
  "00111110","00001000","00001000","00001000","00001000","00111110","00000000","00000000", --J
  "00111000","00010000","00010000","00010000","00010010","00001100","00000000","00000000", --K
  "00010010","00001010","00000110","00001010","00010010","00100010","00000000","00000000", --L
  "00000010","00000010","00000010","00000010","00000010","00111110","00000000","00000000", --M
  "00100010","00110110","00101010","00101010","00100010","00100010","00000000","00000000", --N
  "00100010","00100010","00100110","00101010","00110010","00100010","00000000","00000000", --O
  "00011100","00100010","00100010","00100010","00100010","00011100","00000000","00000000", --P
  "00011110","00100010","00100010","00011110","00000010","00000010","00000000","00000000", --Q
  "00011100","00100010","00100010","00100010","00100010","00011100","01101000","00000000", --R
  "00011110","00100010","00011110","00001010","00010010","00100010","00000000","00000000", --S
  "00111100","00000010","00011100","00100000","00100000","00011110","00000000","00000000", --T
  "00111110","00001000","00001000","00001000","00001000","00001000","00000000","00000000", --U
  "00100010","00100010","00100010","00100010","00100010","00011100","00000000","00000000", --V
  "00100010","00100010","00100010","00010100","00010100","00001000","00000000","00000000", --W
  "00100010","00100010","00100010","00101010","00101010","00010100","00000000","00000000", --X
  "00100010","00010100","00001000","00001000","00010100","00100010","00000000","00000000", --Y
  "00100010","00100010","00011100","00001000","00001000","00001000","00000000","00000000", --Z
  "00111110","00010000","00001000","00000100","00000010","00111110","00000000","00000000", --[
  
  "00011000","00001000","00001000","00001000","00001000","00001000","00011000","00000000", --\
  "00000010","00000100","00001000","00010000","00100000","01000000","00000000","00000000", --]
  "00011000","00010000","00010000","00010000","00010000","00010000","00011000","00000000", --^
  "00001000","00010100","00100010","00000000","00000000","00000000","00000000","00000000", --_
  "00000000","00000000","00000000","00000000","00000000","00000000","11111111","00000000", --`
  "00001000","00010000","00000000","00000000","00000000","00000000","00000000","00000000", --a
  
  "00000000","00011100","00100000","00111100","00100010","01011100","00000000","00000000", --b
  "00000010","00000010","00011010","00100110","00100010","00011110","00000000","00000000", --c
  "00000000","00011100","00000010","00000010","00100010","00011100","00000000","00000000", --d
  "00100000","00100000","00101100","00110010","00100010","00111100","00000000","00000000", --e
  "00000000","00011100","00100010","00111110","00000010","00011100","00000000","00000000", --f
  "00011100","00100010","00000010","00001110","00000010","00000010","00000000","00000000", --g
  "00000000","00111100","00100010","00100010","00111100","00100000","00011100","00000000", --h
  "00000010","00000010","00011010","00100110","00100010","00100010","00000000","00000000", --i
  "00001000","00000000","00001100","00001000","00001000","00011100","00000000","00000000", --j					   
  "00010000","00000000","00011000","00010000","00010000","00010010","00001100","00000000", --k
  "00000010","00010010","00001010","00001110","00010010","00100010","00000000","00000000", --l
  "00001100","00001000","00001000","00001000","00001000","00111110","00000000","00000000", --m
  "00000000","00010110","00101010","00101010","00101010","00101010","00000000","00000000", --n
  "00000000","00011010","00100100","00100100","00100100","00100100","00000000","00000000", --o
  "00000000","00011100","00100010","00100010","00100010","00011100","00000000","00000000", --p
  "00000000","00011110","00100010","00100010","00011110","00000010","00000010","00000000", --q
  "00000000","00101100","00110010","00100010","00111100","00100000","00100000","00000000", --r
  "00000000","00011010","00100100","00000100","00000100","00000100","00000000","00000000", --s
  "00000000","00111100","00000010","00011100","00100000","00011110","00000000","00000000", --t
  "00000010","00000010","00001110","00000010","00100010","00011100","00000000","00000000", --u
  "00000000","00010010","00010010","00010010","00010010","00101100","00000000","00000000", --v
  "00000000","00100010","00100010","00010100","00010100","00001000","00000000","00000000", --w
  "00000000","00100010","00100010","00101010","00101010","00010100","00000000","00000000", --x
  "00000000","00100010","00010100","00001000","00010100","00100010","00000000","00000000", --y
  "00000000","00100010","00100010","00100010","00111100","00100000","00011100","00000000", --z
  "00000000","00111110","00010000","00001000","00000100","00111110","00000000","00000000", --{
  
  "00010000","00001000","00001000","00000100","00001000","00001000","00010000","00000000", --|
  "00001000","00001000","00001000","00001000","00001000","00001000","00001000","00000000", --}
  "00000100","00001000","00001000","00010000","00001000","00001000","00000100","00000000", --~
  "00000000","00000000","00001100","10010010","01100000","00000000","00000000","00000000", --del
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --0d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --1d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --2d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --3d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --4d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --5d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --6d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --7d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --8d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --9d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --10d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --11d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --12d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --13d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --14d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --15d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --16d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --17d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --18d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --19d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --20d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --21d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --22d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --23d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --24d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --25d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --26d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --27d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --28d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --29d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --30d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --31d
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --space
  
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000", --!
  "00001000","00001000","00001000","00001000","00000000","00001000","00000000","00000000", --"
  "00010100","00010100","00000000","00000000","00000000","00000000","00000000","00000000", --#
  "00000000","00010100","00111110","00010100","00111110","00010100","00000000","00000000", --$
  "00001000","00111100","00001010","00011100","00101000","00011110","00001000","00000000", --%
  "10001110","01001010","00101110","00010000","11101000","10100100","11100010","00000000", ----'
  "00001100","00010010","00010010","00001100","00110010","00010010","01101100","00000000", --(
  "00001000","00001000","00000000","00000000","00000000","00000000","00000000","00000000", --)
  "00001000","00000100","00000010","00000010","00000010","00000100","00001000","00000000", --*
  "00001000","00010000","00100000","00100000","00100000","00010000","00001000","00000000", --+
  "00001000","00111110","00010100","00100010","00000000","00000000","00000000","00000000", --,
  "00010000","00010000","00010000","11111110","00010000","00010000","00010000","00000000", ---
  "00000000","00000000","00000000","00000000","00000000","00001000","00001000","00000000", --.
  "00000000","00000000","00000000","00111110","00000000","00000000","00000000","00000000", --/
  "00000000","00000000","00000000","00000000","00000000","00001000","00000000","00000000", --0
  "01000000","00100000","00010000","00001000","00000100","00000010","00000000","00000000", --1
  
  "00011100","00110010","00101010","00101010","00100110","00011100","00000000","00000000", --2
  "00001000","00001100","00001000","00001000","00001000","00111110","00000000","00000000", --3
  "00011100","00100010","00010000","00001000","00000100","00111110","00000000","00000000", --4  
  "00011100","00100010","00010000","00100000","00100010","00011100","00000000","00000000", --5
  "00011000","00010100","00010010","00111110","00010000","00111100","00000000","00000000", --6
  "00111110","00000010","00111110","00100000","00100010","00011100","00000000","00000000", --7
  "00011100","00100010","00000010","00011110","00100010","00011100","00000000","00000000", --8
  "00111110","00100010","00100000","00010000","00001000","00001000","00000000","00000000", --9
  "00011100","00100010","00011100","00100010","00100010","00011100","00000000","00000000", --:
  "00011100","00100010","00111100","00100000","00100010","00011100","00000000","00000000", --;
  
  "00000000","00001000","00000000","00000000","00000000","00001000","00000000","00000000", --<
  "00000000","00001000","00000000","00000000","00000000","00001000","00001000","00000000", --=
  "00010000","00001000","00000100","00000010","00000100","00001000","00010000","00000000", -->
  "00000000","00000000","00111110","00000000","00000000","00111110","00000000","00000000", --?
  "00000010","00000100","00001000","00010000","00001000","00000100","00000010","00000000", --@
  "00011100","00100010","00011000","00001000","00000000","00001000","00000000","00000000", --A
  "01111100","10000010","10111010","10101010","10111010","10100010","01101100","00000000", --B
  
  "00011100","00100010","00111110","00100010","00100010","00100010","00000000","00000000", --C
  "00011110","00100010","00011110","00100010","00100010","00011110","00000000","00000000", --D
  "00011100","00100010","00000010","00000010","00100010","00011100","00000000","00000000", --E
  "00011110","00100010","00100010","00100010","00100010","00011110","00000000","00000000", --F
  "00111110","00000010","00011110","00000010","00000010","00111110","00000000","00000000", --G
  "00111110","00000010","00011110","00000010","00000010","00000010","00000000","00000000", --H
  "00011100","00100010","00000010","00111010","00100010","00011100","00000000","00000000", --I
  "00100010","00100010","00111110","00100010","00100010","00100010","00000000","00000000", --J
  "00111110","00001000","00001000","00001000","00001000","00111110","00000000","00000000", --K
  "00111000","00010000","00010000","00010000","00010010","00001100","00000000","00000000", --L
  "00010010","00001010","00000110","00001010","00010010","00100010","00000000","00000000", --M
  "00000010","00000010","00000010","00000010","00000010","00111110","00000000","00000000", --N
  "00100010","00110110","00101010","00101010","00100010","00100010","00000000","00000000", --O
  "00100010","00100010","00100110","00101010","00110010","00100010","00000000","00000000", --P
  "00011100","00100010","00100010","00100010","00100010","00011100","00000000","00000000", --Q
  "00011110","00100010","00100010","00011110","00000010","00000010","00000000","00000000", --R
  "00011100","00100010","00100010","00100010","00100010","00011100","01101000","00000000", --S
  "00011110","00100010","00011110","00001010","00010010","00100010","00000000","00000000", --T
  "00111100","00000010","00011100","00100000","00100000","00011110","00000000","00000000", --U
  "00111110","00001000","00001000","00001000","00001000","00001000","00000000","00000000", --V
  "00100010","00100010","00100010","00100010","00100010","00011100","00000000","00000000", --W
  "00100010","00100010","00100010","00010100","00010100","00001000","00000000","00000000", --X
  "00100010","00100010","00100010","00101010","00101010","00010100","00000000","00000000", --Y
  "00100010","00010100","00001000","00001000","00010100","00100010","00000000","00000000", --Z
  "00100010","00100010","00011100","00001000","00001000","00001000","00000000","00000000", --[
  "00111110","00010000","00001000","00000100","00000010","00111110","00000000","00000000", --\
  
  "00011000","00001000","00001000","00001000","00001000","00001000","00011000","00000000", --]
  "00000010","00000100","00001000","00010000","00100000","01000000","00000000","00000000", --^
  "00011000","00010000","00010000","00010000","00010000","00010000","00011000","00000000", --_
  "00001000","00010100","00100010","00000000","00000000","00000000","00000000","00000000", --`
  "00000000","00000000","00000000","00000000","00000000","00000000","11111111","00000000", --a
  "00001000","00010000","00000000","00000000","00000000","00000000","00000000","00000000", --b
  
  "00000000","00011100","00100000","00111100","00100010","01011100","00000000","00000000", --c
  "00000010","00000010","00011010","00100110","00100010","00011110","00000000","00000000", --d
  "00000000","00011100","00000010","00000010","00100010","00011100","00000000","00000000", --e
  "00100000","00100000","00101100","00110010","00100010","00111100","00000000","00000000", --f
  "00000000","00011100","00100010","00111110","00000010","00011100","00000000","00000000", --g
  "00011100","00100010","00000010","00001110","00000010","00000010","00000000","00000000", --h
  "00000000","00111100","00100010","00100010","00111100","00100000","00011100","00000000", --i
  "00000010","00000010","00011010","00100110","00100010","00100010","00000000","00000000", --j					   
  "00001000","00000000","00001100","00001000","00001000","00011100","00000000","00000000", --k
  "00010000","00000000","00011000","00010000","00010000","00010010","00001100","00000000", --l
  "00000010","00010010","00001010","00001110","00010010","00100010","00000000","00000000", --m
  "00001100","00001000","00001000","00001000","00001000","00111110","00000000","00000000", --n
  "00000000","00010110","00101010","00101010","00101010","00101010","00000000","00000000", --o
  "00000000","00011010","00100100","00100100","00100100","00100100","00000000","00000000", --p
  "00000000","00011100","00100010","00100010","00100010","00011100","00000000","00000000", --q
  "00000000","00011110","00100010","00100010","00011110","00000010","00000010","00000000", --r
  "00000000","00101100","00110010","00100010","00111100","00100000","00100000","00000000", --s
  "00000000","00011010","00100100","00000100","00000100","00000100","00000000","00000000", --t
  "00000000","00111100","00000010","00011100","00100000","00011110","00000000","00000000", --u
  "00000010","00000010","00001110","00000010","00100010","00011100","00000000","00000000", --v
  "00000000","00010010","00010010","00010010","00010010","00101100","00000000","00000000", --w
  "00000000","00100010","00100010","00010100","00010100","00001000","00000000","00000000", --x
  "00000000","00100010","00100010","00101010","00101010","00010100","00000000","00000000", --y
  "00000000","00100010","00010100","00001000","00010100","00100010","00000000","00000000", --z
  "00000000","00100010","00100010","00100010","00111100","00100000","00011100","00000000", --{
  "00000000","00111110","00010000","00001000","00000100","00111110","00000000","00000000", --|
  
  "00010000","00001000","00001000","00000100","00001000","00001000","00010000","00000000", --}
  "00001000","00001000","00001000","00001000","00001000","00001000","00001000","00000000", --~
  "00000100","00001000","00001000","00010000","00001000","00001000","00000100","00000000", --del
  "00000000","00000000","00001100","10010010","01100000","00000000","00000000","00000000", 
  "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000"); 
  
end PIXPACKAGE;



