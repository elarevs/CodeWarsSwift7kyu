// In a factory a printer prints labels for boxes. For one kind of boxes the printer has to use colors which, 
// for the sake of simplicity, are named with letters from a to m.

// The colors used by the printer are recorded in a control string. 
// For example a "good" control string would be aaabbbbhaijjjm meaning that the printer used three times color a, 
// four times color b, one time color h then one time color a...

// Sometimes there are problems: lack of colors, technical malfunction and a "bad" control string is produced e.g. 
// aaaxbbbbyyhwawiwjjjwwm with letters not from a to m.

// You have to write a function printer_error which given a string will return the error rate of the printer 
// as a string representing a rational whose numerator is the number of errors and the denominator the length of the control string. Don't reduce this fraction to a simpler expression.

// The string has a length greater or equal to one and contains only letters from ato z.

// Examples:

// s="aaabbbbhaijjjm"
// printer_error(s) => "0/14"

// s="aaaxbbbbyyhwawiwjjjwwm"
// printer_error(s) => "8/22"

// SOLUTION:

func printerError(_ s: String) -> String {
  let error = s.filter { $0 > "m" }.count
  return "\(error)/\(s.count)" 
}

// SOLUTION 2:

// func printerError(_ s: String) -> String {
//   let count = s.filter { "\($0)".contains("a") || "\($0)".contains("b") || "\($0)".contains("c") || "\($0)".contains("d") || "\($0)".contains("e") || "\($0)".contains("f") || "\($0)".contains("g") || "\($0)".contains("h") || "\($0)".contains("i") || "\($0)".contains("j") || "\($0)".contains("l") || "\($0)".contains("k") || "\($0)".contains("m") }.count
//   let errors = s.count - count
//   return "\(errors)/\(s.count)"
// }
