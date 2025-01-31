```ada
procedure Example_Solution is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   I : Integer := My_Arr'First; -- Initialize I
begin
   for J in My_Arr'Range loop
      if My_Arr(J) = 5 then
         I := J;
         exit;
      end if;
   end loop;
   Put_Line("Value of I is: " & I'Image);
exception
   when others =>
      Put_Line("An error occurred");
end Example_Solution;
```