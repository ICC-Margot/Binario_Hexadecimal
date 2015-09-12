with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Main is
  n,r,i,m,b,j,h,s:Integer;
   binario : array (0..19) of Integer;
   hexa:array (0..15) of Character;
   P:array (0..3) of Integer;
   --dig_h:array (1..20) of Character;
begin
   i:=0;
   --j:=1;
   hexa(0..15):=('0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F');
   P(0..3):=(1,2,4,8);

   Put_Line("No. a Convertir a Binario :");
   get(n);

   b:=n;

   Put_Line("");
   Put_Line("Valor Binario");
   while (b /= 0) loop
      r:=b mod 2;
      binario(i):=r;
      b:=b/2;
      i:= i+1;
   end loop;
   m:=i-1;

   for i in reverse 0..m loop
      Put(binario(i));
      --put(i);
   end loop;

   --k:=0;

   Put_Line("");
   Put_Line("Valor Hexadecimal: ");

   if (n<=15) then
      Put(hexa(n));
   else
      --put(m);
      if ((m+1) mod 2) = 0 then
         s:=m;
      else
         i:=0;
         s:=m*2;
         s:=s-1;

         for i in reverse 0..s loop
            if binario(i) = 1 then
               binario(i):=binario(i);
            else
               binario(i):=0;
            end if;
            --Put(binario(i));
            --Put(i);
         end loop;
      end if;

      i:=0;
      j:=0;
      --k:=s-1;
      --s:=k/2;
      for i in 0..s loop
         binario(i):=binario(i)*p(j);
         --Put(binario(i));
           --put(i);
         if (j=3) then
            j:=0;
         else
            j:=j+1;
         end if;
      end loop;

      i:=0;

      while (s /= 0) loop
         j:=0;
         h:=0;
         for j in 0..3 loop
            h:=binario(s)+h;
            s:=s-1;
            --put(binario(s));
         end loop;
         put(hexa(h));
      end loop;

      --put(s);
      --put(m);


   end if;
end Main;
