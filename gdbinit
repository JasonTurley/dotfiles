# Intel syntax is superior :)
set disassembly-flavor intel

#--------------------------------
# WinDbg style breakpoint aliases
#--------------------------------
# Create breakpoint
define bp
    if $argc != 1
        help bp
    else
        break $arg0
    end
end
document bp
Syntax: bp LOCATION
| Set breakpoint.
| LOCATION may be a line number, function name, or "*" and an address.
| To break on a symbol you must enclose symbol name inside "".
| Example:
| bp "[NSControl stringValue]"
| Or else you can use directly the break command (break [NSControl stringValue])
end

# List breakpoints
define bl
	info breakpoints
end
document bl
Syntax: bl
| List all breakpoints.
end

# Clear breakpoints
define bc
	# If no arguments given, then clear all breakpoints
	if $argc != 0
		clear	
	# Otherwise, clear the specified breakpoint
	else
		clear $arg0
	end
end
document bc 
Syntax: bc LOCATION
| Clears the breakpoint at the specified location.
|
| If called with no arguments, clears all breakpoints
end
