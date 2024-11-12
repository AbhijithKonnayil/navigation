import 'dart:isolate';

import 'package:flutter/foundation.dart';

const a = 'a';
const b = 'b';
const first = 1;
const last = 7;
void matchListPattern(dynamic obj) {
  switch (obj) {
    // Matches if 1 == obj.
    case 1:
      print('one');

    // Matches if the value of obj is between the
    // constant values of 'first' and 'last'.
    case >= first && <= last:
      print('in range');

    // Matches if obj is a record with two fields,
    // then assigns the fields to 'a' and 'b'.
    case (var a, var b):
      print('a = $a, b = $b');

    default:
  }

}

void main() {
  matchListPattern(3); // Output: a, b
  matchListPattern(['x', 'y']); // Output: No match
}
