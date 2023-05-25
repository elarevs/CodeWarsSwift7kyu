// This time no story, no theory. The examples below show you how to write function accum:

// Examples:

// accum("abcd") -> "A-Bb-Ccc-Dddd"
// accum("RqaEzty") -> "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
// accum("cwAt") -> "C-Ww-Aaa-Tttt"
// The parameter of accum is a string which includes only letters from a..z and A..Z.

// SOLUTION:

func accum(_ s: String) -> String {
    var mumbling = s.compactMap { "\($0)".uppercased() }
    
    for i in 0...s.count - 1 {
        mumbling[i] = (mumbling[i] + String(repeating: mumbling[i], count: i).lowercased())
    }
    
    return mumbling.joined(separator: "-")
}
