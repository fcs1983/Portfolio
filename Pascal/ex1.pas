program ex1;
uses crt;
var qnt, prc :real;
        begin
         clrscr;
         write ('Quantidade: ');
         readln (qnt);
         write ('Pre‡o Unit rio: R$ ');
         readln (prc);
         write ('Total a Pagar: R$ ', ((qnt*prc)*0.9));
         readln;
        end.
