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
                grow: nil,
                shrink: nil,
                flex: .auto,
                order: nil),
            boxAlignment: .init(),
            sizing: .init(width: .full, height: .n(40)),
            spacing: .init(),
            background: .init(backgroundColor: color))
    }
    
    public var body: some View {
        html("div", attributes: ["class" :
                                    closs(style, "flex")]) {
            html("div", attributes: ["class" :
                                        closs(style, "font-sans","text-6xl","pt-11")], content: "三種のチーズ牛丼特盛温玉乗せ")
        }
    }
}
