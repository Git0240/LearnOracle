SET SERVEROUTPUT ON

/*
    AX + B = 0
*/
DECLARE
      A INT:= &MOI_BAN_NHAP_SO_A;
      B INT:= &MOI_BAN_NHAP_SO_B;
BEGIN
      IF (A = 0) THEN
        IF B =0 THEN
          DBMS_OUTPUT.PUT_LINE('PHUONG TRINH CO VO SO NGHIEM');
        ELSE
          DBMS_OUTPUT.PUT_LINE('PHUONG TRINH VO NGHIEM');
        END IF;
      ELSE
          DBMS_OUTPUT.PUT_LINE('PHUONG TRINH NGHIEM: '||(-B/A));
      END IF;
END;