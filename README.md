# WolfAnyCodable

Swift type-erased wrappers for Encodable, Decodable, and Codable values.

This cocoapod exists to easily incorporate the functionality of [AnyCodable](https://github.com/Flight-School/AnyCodable).

This functionality is discussed in Chapter 3 of [Flight School Guide to Swift Codable](https://gumroad.com/l/codable).

## AnyEncodable

```swift
import AnyCodable

let dictionary: [String: AnyEncodable] = [
    "boolean": true,
    "integer": 1,
    "double": 3.14159265358979323846,
    "string": "string",
    "array": [1, 2, 3],
    "nested": [
        "a": "alpha",
        "b": "bravo",
        "c": "charlie"
    ]
]

let encoder = JSONEncoder()
let json = try! encoder.encode(dictionary)
```

## AnyDecodable

```swift
let json = """
     {
         "boolean": true,
         "integer": 1,
         "double": 3.14159265358979323846,
         "string": "string",
         "array": [1, 2, 3],
         "nested": {
             "a": "alpha",
             "b": "bravo",
             "c": "charlie"
         }
     }
""".data(using: .utf8)!

let decoder = JSONDecoder()
let dictionary = try! decoder.decode([String: AnyDecodable].self, from: json)
```

## AnyCodable

`AnyCodable` can be used to wrap values for encoding and decoding.

## License

MIT

## Original Author

Mattt ([@mattt](https://twitter.com/mattt))

## Requirements

Swift 4.2

## Installation

WolfAnyCodable is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'WolfAnyCodable'
```

## Author

Wolf McNally, wolf@wolfmcnally.com

## License

WolfAnyCodable is available under the MIT license. See the LICENSE file for more info.
