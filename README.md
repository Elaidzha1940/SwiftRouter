# SwiftRouter

## Features  
✅ Easy-to-use API for navigation  
✅ Supports `NavigationStack`, `sheet`, and `fullscreenCover`  
✅ Custom transitions and flexible routing  

## Installation  
Swift Package Manager (SPM):  
1. Open Xcode and go to **File** → **Add Packages**  
2. Enter the URL:  
3. Select **Add Package**  

Or manually add to `Package.swift`:  

```swift
dependencies: [
 .package(url: "https://github.com/yourusername/SwiftRouter.git", from: "1.0.0")
]
```

## Usage

```swift
import SwiftRouter

SwiftRouter.push(destination: SomeView())
```

