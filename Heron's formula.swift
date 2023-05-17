// Write function heron which calculates the area of a triangle with sides a, b, and c (x, y, z in COBOL).

// Heron's formula:

// sqrt s ∗ (s−a) ∗ (s−b) ∗ (s−c) 
 
// where

// s = a + b + c / 2
 
// Output should have 2 digits precision.

// SOLUTION:

func heron(_ a: Double, _ b: Double, _ c: Double) -> Double {
  let s = (a + b + c) / 2
  return (sqrt(s * (s - a) * (s - b ) * (s - c)))
}
