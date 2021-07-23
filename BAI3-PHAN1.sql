SET SERVEROUTPUT ON

/*
      AX^2 + BX + C = 0
*/

DECLARE
      A INT     := &MOI_NHAP_A;
      B INT     := &MOI_NHAP_B;
      C INT     := &MOI_NHAP_C;
      DELTA FLOAT;
BEGIN
      IF A = 0 THEN
          IF B = 0 THEN
              IF C = 0 THEN
                  DBMS_OUTPUT.PUT_LINE('PHUONG TRINH CO VO SO NGHIEM');
              ELSE
                  DBMS_OUTPUT.PUT_LINE('PHUONG TRINH VO NGHIEM');
              END IF;
          ELSE
              IF C != 0 THEN
                  DBMS_OUTPUT.PUT_LINE('PHUONG TRINH CO NGHIEM' || (-C/B));
              END IF;
          END IF;
      ELSE
          DELTA := POWER(B,2) - 4 * A * C;
          IF DELTA < 0 THEN
              DBMS_OUTPUT.PUT_LINE('PHUONG TRINH VO NGHIEM');
          ELSIF DELTA = 0 THEN
              DBMS_OUTPUT.PUT_LINE('PHUONG TRINH CO NGHIEM' || (-B/2*A));
          ELSE
              DBMS_OUTPUT.PUT_LINE('PHUONG TRINH CO 2 NGHIEM: X1 = '||(-B + SQRT(DELTA))/(2 * A)
              ||' VA X2 = '||(-B - SQRT(DELTA))/(2 * A));
          END IF;
      END IF;
END;