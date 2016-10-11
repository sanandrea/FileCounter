## Synopsis

A very simple utility for iOS apps that prints on console a list of opened files by the mobile application.

## Motivation

The latest XCode Instruments lack of File Activity tool to inspect opened file in iOS but only in Mac OS. Why a Framework?
I had to use it on a Xamarin.iOS project so calling C code inside C# was a bit difficult for me. So I created the Framework in order to be bind in a dll by following the [Guide](https://developer.xamarin.com/guides/cross-platform/macios/binding/objective-sharpie/platform-features/native-frameworks/). See the binding project [here](https://github.com/sanandrea/FileCounter.Xamarin).

## Installation

Open Project in XCode and select the `framework` target. It will build an iOS Framework under the `build` folder.

## Code Example

Add Framework to an iOS app if you want to use it in native app. A faster way is to add directly the method in the source code of your. The intention of the framework is to be bind in a dll.

If one adds Framework then import header file like this

`#import <FileCounter/FileCounter.h>`

then use it in your code:

`[FileCounter lsof];`

## Contributors

All credits to this awesome SO [answer](http://stackoverflow.com/a/8153026/1073786). Thank you [Rich Waters](http://stackoverflow.com/users/420100/rich-waters)!

## License

The MIT License (MIT)

Copyright (c) 2016 Andi Palo

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
