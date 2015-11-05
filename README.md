# Lua-Units

A simple and elegant unit conversion module for Lua

Usage
-----

Here's how you convert from meters to feet:

```lua

local units = require( "units" )
print( units.convert( 1 ).from( "m" ).to( "ft" ) )
// 3.2808
```

By default precision is set to 4 digits. Here is how to change it:


```lua

local units = require( "units" )
units.precision = 3
print( units.convert( 1 ).from( "m" ).to( "ft" ) )
// 3.281
```

Supported units
---------------

For now the module can convert between:

* mm
* cm
* m
* km
* ft
* in
* mi

(more to come) 

Credit
------

A special thanks to [`ben-ng`](https://github.com/ben-ng) who did a great job with [`convert-units`](http://ben-ng.github.io/convert-units/), the Javascript equivalent lib who inspired the syntax of Lua-Units.

License
-------


Lua Units is a Lua module for the conversion of quantities between different unit measures.
Copyright (C) 2015  David Roulin Ltd.

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

For the complete terms of the GNU General Public License, please see this URL:
http://www.gnu.org/licenses/gpl-2.0.html
