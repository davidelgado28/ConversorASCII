CREATE OR REPLACE FUNCTION numero_para_ascii(n INT)
RETURNS TEXT AS BEGINIFn<0ORn>127THENRETURN′Valorinvalido!′;ENDIF;RETURNchr(n);END;BEGIN
    IF n < 0 OR n > 127 THEN
        RETURN 'Valor invalido!';
    END IF;
    RETURN chr(n);
END;BEGINIFn<0ORn>127THENRETURN′Valorinvalido!′;ENDIF;RETURNchr(n);END; LANGUAGE plpgsql;

SELECT numero_para_ascii(65);  
