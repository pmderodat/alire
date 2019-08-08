with Alire;
with Alire.Types;

with Simple_Logging;

package Alr with Preelaborate is

   --  Nothing of note in this root package. Entities declared here are
   --  generally useful everywhere or in many packages: Exceptions for
   --  commands, tracing for all

   Child_Failed   : exception;
   --  Used to notify that a subprocess completed with non-zero error

   Command_Failed : exception;
   --  Signals "normal" command completion with failure (i.e., no need to print
   --  stack trace).

   --  Use some general types for the benefit of all child packages:
   pragma Warnings (Off);
   use all type Alire.Project;
   use all type Simple_Logging.Levels;
   pragma Warnings (On);

   package Trace renames Simple_Logging;

   package Types renames Alire.Types;

   function "+" (S : Alire.UString) return String
                 renames Alire.UStrings.To_String;

   --  Some Paths constants that help to break circularities

   Bootstrap_Hash : constant String := "bootstrap";

end Alr;
