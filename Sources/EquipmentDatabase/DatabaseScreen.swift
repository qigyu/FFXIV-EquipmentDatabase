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
    
    @State var color: Tailwind.BackgroundColor = .gray(.n500)
    
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
    layout: .init(overflow: .auto),
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
            background: .init(backgroundColor: .black))
    }
    var style1: TailwindStyle {
        TailwindStyle.init(
            flexbox: .init(
                direction: .row,
                wrap: nil,
                grow: nil,
                shrink: nil,
                flex: .auto,
                order: nil),
            boxAlignment: .init(justifyContent: .start, justifyItems: .start, justifySelf: nil, alignContent: .start, alignItems: nil, alignSelf: nil, placeContent: nil, placeItems: nil, placeSelf: nil),
            sizing: .init(width: .full, height: . n(52)),
            spacing: .init(margin: [.top(52)]),
            background: .init(backgroundColor: .yellow(.n900)))
    }
    var style2: TailwindStyle {
        TailwindStyle.init(
            flexbox: .init(
                direction: .row,
                wrap: nil,
                grow: nil,
                shrink: nil,
                flex: .auto,
                order: nil),
            boxAlignment: .init(justifyContent: .start, justifyItems: .start, justifySelf: nil, alignContent: .start, alignItems: nil, alignSelf: nil, placeContent: nil, placeItems: nil, placeSelf: nil),
            sizing: .init(width: .full, height: .n(96)),
            spacing: .init(),
            background: .init(backgroundColor: .yellow(.n900)))
        
    }
    var equipmentStyle: TailwindStyle {
        TailwindStyle.init(
            flexbox: .init(
                direction: .row,
                wrap: nil,
                grow: nil,
                shrink: nil,
                flex: .auto,
                order: nil),
            boxAlignment: .init(justifyContent: .center, justifyItems: .center, justifySelf: .center, alignContent: .center, alignItems: .center, alignSelf: .center, placeContent: .center, placeItems: .center, placeSelf: .center),
            sizing: .init(width: .n(80), height: .n(96)),
            spacing: .init(margin: [.left(32)]),
            background: .init(backgroundColor: .gray(.n700)))
        
    }
    var equipmentStyle2: TailwindStyle {
        TailwindStyle.init(
            flexbox: .init(
                direction: .row,
                wrap: nil,
                grow: nil,
                shrink: nil,
                flex: .auto,
                order: nil),
            boxAlignment: .init(justifyContent: .center, justifyItems: .center, justifySelf: .center, alignContent: .center, alignItems: .center, alignSelf: .center, placeContent: .center, placeItems: .center, placeSelf: .center),
            sizing: .init(width: .n(80), height: .n(96)),
            spacing: .init(margin: [.left(96)]),
            background: .init(backgroundColor: .gray(.n700)))
        
    }
    var style3: TailwindStyle {
        TailwindStyle.init(
            flexbox: .init(
                direction: .row,
                wrap: nil,
                grow: nil,
                shrink: nil,
                flex: .auto,
                order: nil),
            boxAlignment: .init(justifyContent: .start, justifyItems: .start, justifySelf: nil, alignContent: .start, alignItems: nil, alignSelf: nil, placeContent: nil, placeItems: nil, placeSelf: nil),
            sizing: .init(width: .full, height: .n(52)),
            spacing: .init(),
            background: .init(backgroundColor: .gray(.n500)))
    }
    
    var equipmentImageStyle: TailwindStyle {
        TailwindStyle.init(
            layout: .init(container: .container, boxDecorationBreak: nil, boxSizing: nil, display: nil, floats: nil, clear: nil, isolation: nil, objectFit: nil, objectPosition: .leftTop, overflow: .auto, overscrollbehavior: nil, position: nil, visibility: nil, zIndex: nil, layoutPosition: nil),
            flexbox: .init(
                direction: .row,
                wrap: nil,
                grow: nil,
                shrink: nil,
                flex: .auto,
                order: nil),
            boxAlignment: .init(justifyContent: .start, justifyItems: .start, justifySelf: nil, alignContent: .start, alignItems: nil, alignSelf: nil, placeContent: nil, placeItems: nil, placeSelf: nil),
            sizing: .init(width: .n(24), height: .n(24)),
            spacing: .init(),
            background: .init(backgroundColor: .green(.n700)))
    }
    
    var equipmentImageStyle2: TailwindStyle {
        TailwindStyle.init(
            layout: .init(container: .container, boxDecorationBreak: nil, boxSizing: nil, display: nil, floats: nil, clear: nil, isolation: nil, objectFit: nil, objectPosition: .leftTop, overflow: .auto, overscrollbehavior: nil, position: nil, visibility: nil, zIndex: nil, layoutPosition: nil),
            flexbox: .init(
                direction: .row,
                wrap: nil,
                grow: nil,
                shrink: nil,
                flex: .auto,
                order: nil),
            boxAlignment: .init(justifyContent: .start, justifyItems: .start, justifySelf: nil, alignContent: .start, alignItems: nil, alignSelf: nil, placeContent: nil, placeItems: nil, placeSelf: nil),
            sizing: .init(width: .n(24), height: .n(24)),
            spacing: .init( margin: [.top(-24)]),
            background: .init(backgroundColor: .green(.n700)))
    }
    
    var equipmentNameStyle: TailwindStyle {
        TailwindStyle.init(
            layout: .init(),
            flexbox: .init(
                direction: .row,
                wrap: nil,
                grow: nil,
                shrink: nil,
                flex: .auto,
                order: nil),
            grid: .init(),
            boxAlignment: .init(),
            sizing: .init(width: .n(56),height: .n(24)),
            spacing: .init(margin: [.top(-24),.left(24)]),
            typography: .init(),
            background: .init(backgroundColor: .blue(.n50)))
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
            sizing: .init(width: .n(56), height: .screen),
            spacing: .init(),
            background: .init(backgroundColor: .yellow(.n100)))
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
    public var body: some View {
        html("div", attributes: ["class" :
                                    closs(style)]) {
            html("div", attributes: [:], content: "あばばばば")
            html("div", attributes: ["class" :
                                        closs(contentStyle)]) {
                html("div", attributes: ["class" : closs(style1)])
                html("div", attributes: ["class" : closs(style2)]){
                    html("div", attributes: ["class" : closs(equipmentStyle)])
                    {
                        html("img", attributes: [ "src":"https://res.cloudinary.com/pando-life/image/upload/f_auto,b_rgb:E9E9E9,c_limit,q_auto:good/article/contents/gpbwy8486yrpfdl31591479103.jpg","class" : closs(equipmentImageStyle)])
                        html("div", attributes: ["class" :
                                                    closs(equipmentNameStyle, "font-sans","text-xl","pt-11")], content: "とろ〜り3種のチーズ牛丼")
                        html("div", attributes: ["class" : closs(equipmentStyle2)]){
                            html("div", attributes: ["class" : closs(equipmentImageStyle2)])
                            html("img",
                                 attributes: [
                                    "src":"https://res.cloudinary.com/pando-life/image/upload/f_auto,b_rgb:E9E9E9,c_limit,q_auto:good/article/contents/gpbwy8486yrpfdl31591479103.jpg",
                                    "class": closs(equipmentImageStyle2)
                                 ])
                            html("div", attributes: ["class" :
                                                        closs(equipmentNameStyle, "font-sans","text-xl","pt-11")], content: "高菜明太マヨ牛丼")
                        }
                    } }
                html("div", attributes: ["class" : closs(style3)], content: "ふったー")
            }
        }
    }
    
    
    
    
}
public struct HelloView: View {
    
    public var outlineStyle = TailwindStyle(
        sizing: .init(width: .screen, height: .screen),
        spacing: .init(padding: [.top(4), .left(4)]),
        background: .init(backgroundColor: .indigo(.n500)))
    
    
    public var body: some View {
        html("div", attributes: ["class" :closs(rootViewStyle)]) {
            HeaderView()
            ContentView()
            
        }
    }
}

