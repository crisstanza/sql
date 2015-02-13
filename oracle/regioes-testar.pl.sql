SET SERVEROUTPUT ON;
SHOW ERRORS;

CREATE OR REPLACE PACKAGE regioes AS
  PROCEDURE testar;
  -- FUNCTION get_oid_estado(sigla VARCHAR2) RETURN NUMBER;
END;
/

CREATE OR REPLACE PACKAGE BODY regioes AS

  FUNCTION get_oid_estado(sigla VARCHAR2) RETURN NUMBER IS
  BEGIN
    RETURN
      CASE UPPER(sigla)
        WHEN 'BR' THEN -1
        WHEN 'AC' THEN 1
        WHEN 'AL' THEN 2
        WHEN 'AM' THEN 3
        WHEN 'AP' THEN 4
        WHEN 'BA' THEN 5
        WHEN 'CE' THEN 6
        WHEN 'DF' THEN 7
        WHEN 'ES' THEN 8
        WHEN 'GO' THEN 9
        WHEN 'MA' THEN 10
        WHEN 'MG' THEN 11
        WHEN 'MS' THEN 12
        WHEN 'MT' THEN 13
        WHEN 'PA' THEN 14
        WHEN 'PB' THEN 15
        WHEN 'PE' THEN 16
        WHEN 'PI' THEN 17
        WHEN 'PR' THEN 18
        WHEN 'RJ' THEN 19
        WHEN 'RN' THEN 20
        WHEN 'RO' THEN 21
        WHEN 'RR' THEN 22
        WHEN 'RS' THEN 23
        WHEN 'SC' THEN 24
        WHEN 'SE' THEN 25
        WHEN 'SP' THEN 26
        WHEN 'TO' THEN 27
      END;
  END;

  PROCEDURE testar IS
  BEGIN
    DBMS_OUTPUT.PUT_LINE('RS: '||get_oid_estado('rs'));
    DBMS_OUTPUT.PUT_LINE('inexistente: '||get_oid_estado('?'));
  EXCEPTION
    WHEN OTHERS THEN
      ROLLBACK;
      RAISE;
  END;

END;
/

EXECUTE regioes.testar;
/

DROP PACKAGE regioes;
/
