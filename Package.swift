// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Emojis",
    /**
     tw-TW      繁體中文
     en-TW      English
     zh-Hant-TW 繁體中文(台灣)
     zh-Hant-HK 繁體中文(香港)
     zh-Hant-MO 繁體中文(澳門)
     zh-Hans-TW 簡體中文
     */
    defaultLocalization: "en",
    products: [
        .library(
            name: "EmojiKit",
            targets: ["Emojier", "EmojiView"]),
    ],
    dependencies: [
        .package(url: "https://github.com/onmyway133/Smile", from: "2.1.0")
    ],
    targets: [
        .target(
            name: "Emojier",
            dependencies: ["Smile"]),
        .target(
            name: "EmojiView",
            dependencies: ["Emojier"],
            /**
                ...
             */
            exclude: ["Memo.txt", "Artwork"],
            /**
                resources 有兩個靜態方法
                process 會自動判斷並針對不同的平台的進行優化，也是官方推薦的方法
                copy 就是單純的複製，根據官方的 Demo 是可以指定一個資料夾，其底下的檔案也會被視為資源
             */
            resources: [.process("SpmLogo.png")]),
        
        .testTarget(
            name: "EmojierTests",
            dependencies: ["Emojier"]),
    ]
)
