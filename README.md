# Postgres wire server

This package allows you to create a server implementing the PostgreSQL wire protocol (PQ).

## How it works

See [usage example](/Sources/PostgresWireServerExample/main.swift).

## Installation

#### Swift Package Manager (SPM)
 
 You can install the driver using Swift Package Manager by adding the following line to your ```Package.swift``` as a dependency:
 
 ```
 .Package(url: "https://github.com/pixelspark/postgres-wire-server.git", majorVersion: 1)
 ```
 
 To use in an Xcode project, generate an Xcode project file using SPM:
 ```
 swift package generate-xcodeproj
 ```

## MIT license

````
Copyright (c) 2017 Pixelspark, Tommy van der Vorst

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
````

## Contributing

We welcome contributions of all kinds - from typo fixes to complete refactors and new features. Just be sure to contact us if you want to work on something big, to prevent double effort. You can help in the following ways:

* Open an issue with suggestions for improvements
* Submit a pull request (bug fix, new feature, improved documentation)

Note that before we can accept any new code to the repository, we need you to confirm in writing that your contribution is made available to us under the terms of the MIT license.
