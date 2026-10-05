return function(value)
    assert(#value == 4, 'Rawcode must contain four bytes')
    local a, b, c, d = value:byte(1, 4)
    return ((a * 256 + b) * 256 + c) * 256 + d
end
