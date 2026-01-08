------------------------------------------------------------------------------
--                             Templates Parser                             --
--                                                                          --
--                       Copyright (C) 2026, AdaCore                        --
--                                                                          --
--  This is free software;  you can redistribute it  and/or modify it       --
--  under terms of the  GNU General Public License as published  by the     --
--  Free Software  Foundation;  either version 3,  or (at your option) any  --
--  later version.  This software is distributed in the hope  that it will  --
--  be useful, but WITHOUT ANY WARRANTY;  without even the implied warranty --
--  of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU     --
--  General Public License for  more details.                               --
--                                                                          --
--  You should have  received  a copy of the GNU General  Public  License   --
--  distributed  with  this  software;   see  file COPYING3.  If not, go    --
--  to http://www.gnu.org/licenses for a complete copy of the license.      --
------------------------------------------------------------------------------

with Ada.Exceptions;
with Ada.Text_IO;

with Templates_Parser;

procedure Null_Set is
   use Ada.Exceptions;
   use Ada.Text_IO;

   package T renames Templates_Parser;

begin
   Put_Line (T.Parse (Filename     => "./txt.tmplt",
                      Translations => T.Null_Set));
exception
   when E : others =>
      Put_Line (Exception_Information (E));
end Null_Set;
