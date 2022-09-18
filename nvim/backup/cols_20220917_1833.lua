function rgbToHex(rgb)
	local hexadecimal = '0X'

	for key, value in pairs(rgb) do
		local hex = ''

		while value > 0 do
			local index = math.fmod(value, 16) + 1
			value = math.floor(value / 16)
			hex = string.sub('0123456789ABCDEF', index, index) .. hex			
		end

		if string.len(hex) == 0 then
			hex = '00'

		elseif string.len(hex) == 1 then
			hex = '0' .. hex
		end

		hexadecimal = hexadecimal .. hex
	end

	return hexadecimal
end

local ceil = math.ceil
local abs = math.abs

local function clamp(v, min, max)
    if v < min then return min end
    if v > max then return max end
    return v
end

local function HSV(h, s, v)
    local vert = ceil(h / 120)
    local r = abs(((h / 60) - 2 * vert))
    local r, g, b = clamp(r, 1 - s, 1), clamp(2 - r, 1 - s, 1), (1 - s * v)

    if vert == 1 then return {r, g, b} end
    if vert == 2 then return {b, r, g} end
    if vert == 3 then return {g, b, r} end
end
yes = HSV(214, 0.15, 0.8)
print(rgbToHex(yes))
