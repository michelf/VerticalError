
Vertical Error
==============

A special kind of fatal error that will convert a message to a stack of
function calls. You can then read the message vertically in your stack trace.

This contraption works on Apple's platforms. Elsewhere it is equivalent
to a regular call to `fatalError`.


Usage
-----

### Swift

``` .swift
import VerticalError

let value = Int.random(in: 0...10)
verticalError("Invalid value \(value)")
```

### Objective-C

``` .objc
@import VerticalError

int value = random();
VerticalError([NSString stringWithFormat:@"Invalid value %d", value]);
```
