//
//  DatabaseScreen.swift
//  EquipmentDatabase
//
//  Created by dodocha169 on 2021/06/15.
//

import Foundation
import TokamakStaticHTML
import TailwindSwift
import Closswift
import TokamakHTMLFunctionBuilder
import TokamakDOM
import TokamakCore

extension TailwindStyle: ClosswiftCombinable {
    
    public var clossValue: Array<String> {
        [tailwindValue]
    }
}

struct HeaderView: View {
    
    @State var color: Tailwind.BackgroundColor = .blue(.n200)
    
    var style: TailwindStyle {
        TailwindStyle.init(
            flexbox: .init(
                direction: .row,
                wrap: nil,
                grow: .enable,
                shrink: nil,
                flex: .auto,
                order: nil),
            boxAlignment: .init(justifyContent: .center, justifyItems: .center, justifySelf: .auto, alignContent: .center, alignItems: nil, alignSelf: nil, placeContent: nil, placeItems: nil, placeSelf: nil),
            sizing: .init(width: .max, height: .n(40)),
            spacing: .init(),
            background: .init(backgroundColor: color))
    }
    
    public var body: some View {
        html("div", attributes: ["class" :
                                    closs(style, "flex")]) {
            html("img",
                 attributes: [
                    "src":"https://alienwarezone.jp/images/upload/2021/02/5575be14b51d9eddb2687e215c1e4498.png",
                    "class": closs(headerLogoStyle)
                 ] )
            html("div", attributes: ["class" :
                                        closs(style, "font-sans","text-5xl","pt-11")], content: "FFXIV-Equipment Database(仮)")
        }
    }
}

let headerLogoStyle = TailwindStyle(
    spacing: .init(
        padding: [
            
        ],
        margin: [
            .left(48)
        ])
)

let rootViewStyle = TailwindStyle(
    flexbox: .init(direction: .col),
    boxAlignment: .init(
        justifyContent: .start,
        justifyItems: .stretch,
        justifySelf: .auto,
        alignContent: nil,
        alignItems: .stretch,
        alignSelf: nil),
    sizing: .init(width: .full, height: .full))

struct ContentView: View {
    var contentStyle: TailwindStyle {
        TailwindStyle.init(
            layout: .init(container: nil, boxDecorationBreak: nil, boxSizing: nil, display: nil, floats: nil, clear: nil, isolation: nil, objectFit: nil, objectPosition: nil, overflow: nil, overscrollbehavior: nil, position: nil, visibility: nil, zIndex: nil, layoutPosition: nil),
            flexbox: .init(
                direction: .col,
                wrap: nil,
                grow: nil,
                shrink: nil,
                flex: .enable,
                order: nil),
            boxAlignment: .init(justifyContent: nil, justifyItems: nil, justifySelf: nil, alignContent: nil, alignItems: nil, alignSelf: nil, placeContent: nil, placeItems: nil, placeSelf: nil),
            sizing: .init(width: .screen, height: .full),
            spacing: .init(margin: [.left(56),.top(-60)]),
            background: .init(backgroundColor: .pink(.n100)))
    }
    
    var style: TailwindStyle {
        TailwindStyle.init(
            flexbox: .init(
                direction: .row,
                wrap: nil,
                grow: .enable,
                shrink: nil,
                flex: .auto,
                order: nil),
            boxAlignment: .init(justifyContent: .start, justifyItems: .start, justifySelf: nil, alignContent: .start, alignItems: nil, alignSelf: nil, placeContent: nil, placeItems: nil, placeSelf: nil),
            sizing: .init(width: .n(56), height: .full),
            spacing: .init(),
            background: .init(backgroundColor: .indigo(.n500)))
    }
    
    var imageStyle: TailwindStyle {
        TailwindStyle.init(
            flexbox: .init(
                direction: nil,
                wrap: nil,
                grow: .enable,
                shrink: nil,
                flex: .auto,
                order: nil),
            boxAlignment: .init(),
            sizing: .init(width: .full, height: .auto),
            spacing: .init())
        
    }
    var equipmentStyle: TailwindStyle {
        TailwindStyle.init(
            layout: .init(
            container: .container,
            boxDecorationBreak: nil,
            boxSizing: .content,
            display: .flex,
            floats: .left,
                clear: nil,
                isolation: nil,
                objectFit: nil,
                objectPosition: nil,
                overflow: nil,
                overscrollbehavior: nil,
                position: nil,
                visibility: nil,
                zIndex: nil,
                layoutPosition: nil),
            flexbox: .init(
                direction: .row,
                wrap: nil,
                grow: nil,
                shrink: nil,
                flex: .enable,
                order: nil),
                grid: .init(),
                boxAlignment: .init(),
                sizing: .init(width: .n(60), height: .n(60)),
                spacing: .init(margin: [.left(0),.top(0)]),
                typography: .init(),
                background: .init(backgroundColor: .gray(.n100)))
    }
    public var body: some View {
        html("div", attributes: ["class" :
                                    closs(style)]) {
            html("div", attributes: [:], content: "なんもしたくない プロフィールとかかきたい")
            html("div", attributes: ["class" :
                                        closs(contentStyle)]) {}
                                        html("div", attributes: ["class":closs(equipmentStyle)])
        }
    }
    
    
    
    
}
public struct HelloView: View {
    
    public var outlineStyle = TailwindStyle(
        sizing: .init(width: .screen, height: .screen),
        spacing: .init(padding: [.top(4), .left(4)]),
        background: .init(backgroundColor: .indigo(.n500)))
    
    
    public var body: some View {
        html("div", attributes: ["class" :closs(rootViewStyle, "overflow-auto", "h-screen")]) {
            HeaderView()
            ContentView()
            
        }
    }
}

