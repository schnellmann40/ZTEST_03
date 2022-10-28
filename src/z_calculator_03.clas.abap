CLASS z_calculator_03 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS: calculate IMPORTING i_num1          TYPE i
                                 i_num2          TYPE i
                       RETURNING VALUE(r_result) TYPE i.
  PRIVATE SECTION.
    DATA: num1     TYPE i,
          num2     TYPE i,
          r_result TYPE i.
ENDCLASS.                    "z_calculator_02 DEFINITION



CLASS z_calculator_03 IMPLEMENTATION.

  METHOD calculate.
    r_result = i_num1 + i_num2.
    WRITE: 'Result = ', r_result.
  ENDMETHOD.

ENDCLASS.                    "z_calculator_02 IMPLEMENTATION


