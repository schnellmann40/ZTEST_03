*&---------------------------------------------------------------------*
*& Report Z_CALCULATOR_03

REPORT z_calculator_03.

DATA:
  gv_num1      TYPE i,
  gv_num2      TYPE i,
  gv_result    TYPE i,
  ok_code      TYPE sy-ucomm,
  o_calculator TYPE REF TO z_calculator_01.


START-OF-SELECTION.

  CALL SCREEN 0100.

*&---------------------------------------------------------------------*
*& Module STATUS_0100 OUTPUT
MODULE status_0100 OUTPUT.
  SET PF-STATUS 'STATUS_0100'.
  SET TITLEBAR 'TITLE_0100'.
ENDMODULE.


*&---------------------------------------------------------------------*
*&      Module  USER_COMMAND_0100  INPUT
MODULE user_command_0100 INPUT.
  CASE  ok_code.
    WHEN '&BACK'.
      LEAVE TO SCREEN 0.
    WHEN '&EXIT'.
      LEAVE TO SCREEN 0.
    WHEN '&CALCULATE'.
*      gv_result = gv_num1 + gv_num2.
      CREATE OBJECT o_calculator.
      gv_result = o_calculator->calculate( EXPORTING i_num1 = gv_num1
                                                     i_num2 = gv_num2 ).
  ENDCASE.

ENDMODULE.
