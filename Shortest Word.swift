// Simple, given a string of words, return the length of the shortest word(s).

// String will never be empty and you do not need to account for different data types.

// SOLUTION:

func find_short(_ str: String) -> Int
{
    let wordsArray = str.components(separatedBy: " ")
    var minValue = Int.max
    for word in wordsArray {
        if word.count < minValue {
            minValue = word.count
        }
    }
    return minValue
}
