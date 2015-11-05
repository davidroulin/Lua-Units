local M = {}

local conversionMatrix = {
	
	cm2km = 0.00001, cm2m = 0.01, cm2cm = 1, cm2mm = 10,
	m2km = 1000, m2cm = 100, m2m = 1, m2mm = 1000,
	mm2km = 0.000001, mm2cm = 10, mm2mm = 1, mm2m = 0.001,
	
	ft2in = 0, ft2ft = 0, ft2mi = 0,
	in2ft = 0, in2in = 0, in2mi = 0,
	mi2ft = 0, mi2mi = 0, mi2in = 0,

	km2ft = 3280.84, m2ft = 3.28084, cm2ft = 0.0328084, mm2ft = 0.00328084,
	km2in = 39370, m2in = 39.37, cm2in = 0.3937, mm2in = 0.03937,
	km2mi = 0.621371, m2mi = 0.000621371, cm2mi = 0.00000621371, mm2mi = 0.000000621371,

	ft2km = 1/3280.84, ft2m = 1/3.28084, ft2cm = 1/0.0328084, ft2mm = 1/0.00328084,
	in2km = 1/39370, in2m = 1/39.37, in2cm = 1/0.3937, in2mm = 1/0.03937,
	mi2km = 1.609345, mi2m = 1609.345, mi2cm = 160934.5, mi2mm = 1609345,

	
}

M.precision = 4

-- function M.setPrecision( digits )
-- 	M.precision = digits
-- end

function M.convert( value )
	local convertTable = {}
	convertTable.value = value
	function convertTable.from( from_unit )
		convertTable.fromUnit = from_unit
		local fromTable = {}
		function fromTable.to( to_unit )
			if not convertTable.fromUnit or not to_unit then return end
			local fromto = convertTable.fromUnit .. "2" .. to_unit
			if not conversionMatrix[fromto] then return end
			local convertedValue = convertTable.value * conversionMatrix[fromto]
			return tonumber(string.format("%." .. (M.precision or 0) .. "f", convertedValue))
		end
		return fromTable
	end
	return convertTable
end

return M