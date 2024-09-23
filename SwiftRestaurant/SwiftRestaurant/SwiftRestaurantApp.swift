//
//  SwiftRestaurantApp.swift
//  SwiftRestaurant
//
//  Created by Nafis Ahmed Munim on 11/6/22.
//

import SwiftUI

@main
struct SwiftRestaurantApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(model : CafeModel(),selected: MenuItem(title: "",desc:""))
        }
    }
}
