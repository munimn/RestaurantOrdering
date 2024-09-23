//
//  ContentView.swift
//  SwiftRestaurant
//
//  Created by Nafis Ahmed Munim on 11/6/22.
//
import SwiftUI

struct ContentView: View {
    @StateObject var model : CafeModel
    @State var isShowingDetailView = false
    @State var selected: MenuItem
    func addorder(_ item : MenuItem){
        model.order.append(item)
    }
    var body: some View {

        NavigationView {
            VStack {
                List {
                    ForEach(model.items, id: \.self) { p in
                        HStack{
                            Text(p.title)
                            
                        }.onTapGesture{
                                selected = p
                        }.listRowBackground(selected == p ? Color.accentColor : Color(UIColor.systemGroupedBackground))
                    }
                }.navigationBarItems(trailing: NavigationLink("View Order"){
                    OrderView(m:model)
                })
                VStack{
                        Text(selected.title).padding()
                        Text(selected.description).padding()
                }
                HStack {
                    Spacer()
                    Button("Order") {
                        addorder(selected)
                    }.buttonStyle(.borderedProminent)
                    Spacer()
                }
            }
        }
        
        
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView(model: CafeModel(),selected: MenuItem(title: "",desc:""))
        }
    }
    
}
