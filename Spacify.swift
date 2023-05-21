// Modify the spacify function so that it returns the given string with spaces inserted between each character.

// spacify("hello world") // "h e l l o   w o r l d"

// SOLUTION:

func spacify(_ str: String) -> String {
  return str.map { "\($0)" }.joined(separator: " ")
}
