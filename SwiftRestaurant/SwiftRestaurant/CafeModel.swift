//
//  CafeModel.swift
//  SwiftRestaurant
//
//  Created by Nafis Ahmed Munim on 11/6/22.
//


import Foundation

class CafeModel : ObservableObject{
    var items : [MenuItem]
    var order : [MenuItem]
    
    init() {
        items = []
        items.append(MenuItem(title:"Hamburger",desc: "Two all beef patties, pickles, and lettuce on a sesame seed bun"))
        items.append(MenuItem(title: "French Fries", desc: "Chunky fries made from the finest Idaho potatoes"))
        items.append(MenuItem(title: "Garden Salad", desc: "Lots of iceberg lettuce and ranch dressing"))
        items.append(MenuItem(title: "Apple Pie", desc: "Made with fresh locally grown apples"))
        items.append(MenuItem(title: "Tacos", desc: "We got these from Taco Bell next door"))
        order = []
    }
}
