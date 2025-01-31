# Uninitialized Variable After Loop Exit in Ada

This example demonstrates a potential issue in Ada where a variable used in a loop might be uninitialized if the loop exits prematurely due to a condition.  The example shows how an `exit` statement within a loop can bypass the loop's natural completion, leaving variables potentially uninitialized.

**The Problem:**
In the provided Ada code, the loop iterates through the array `My_Arr`. If the value 5 is encountered, the loop terminates using `exit`. If the value 5 is not in the array, the loop completes normally. However, the variable `I` might not be initialized, and thus the program might crash or produce unpredictable results when referencing `I` after the loop. 

**Solution:**
The solution addresses the issue by introducing a variable to explicitly handle this conditional execution path.  This ensures that `I` always has a defined value.