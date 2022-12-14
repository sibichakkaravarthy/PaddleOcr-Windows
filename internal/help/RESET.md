The **RESET** statement closes all files and writes the directory information to a diskette before it is removed from a disk drive.

## Syntax
 
> RESET

* Always execute a RESET command before removing a diskette from a disk drive. Otherwise, when the diskette is used again, it will not have the current directory information written on the directory track.
* RESET closes all open files on all drives and writes the directory track to every diskette with open files.

## See Also
 
* [OPEN](OPEN)
* [CLOSE](CLOSE)
