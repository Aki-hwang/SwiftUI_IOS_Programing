//
//  MydynamicList.swift
//  IOSPrograming_from_22
//
//  Created by Chuljin Hwang on 2022/02/03.
//

import SwiftUI

struct MydynamicList: View {
    @State private var numbers = [Int]()
    @State private var isToggle = false
    var body: some View {
        NavigationView {
            List {
                Section(header:Text("Settings"))  {
                    Toggle(isOn: $isToggle, label: {
                        Text("Allow Notifications")
                    })
                }
                Section(header:Text("To Do List")) {
                    ForEach(listData){ item in
                        HStack{
                            NavigationLink(destination: Text(item.task), label: {
                                Image(systemName: item.imageName)
                                Text(item.task)
                            })
                        }
                    }//foreach
                    .onDelete(perform: deleteItem) //지우기 위해
                    .onMove(perform: moveItem)
                }
            }
            .navigationBarTitle(Text("To Do List"))
            .navigationBarItems(trailing: EditButton())
        }
    }
    func deleteItem(at offsets: IndexSet){
        numbers.remove(atOffsets: offsets)
    }
    func moveItem(from source: IndexSet, to destination: Int){
    }
}

struct ToDOItem : Identifiable{
    var id = UUID()
    var task : String
    var imageName : String
}
var listData : [ToDOItem] = [
ToDOItem(task: "Take out trash", imageName: "trash.circle.fill"),
ToDOItem(task: "Pick up the kids", imageName: "person.2.fill"),
ToDOItem(task: "Wash the car", imageName: "trash.circle.fill")
]

struct MydynamicList_Previews: PreviewProvider {
    static var previews: some View {
        MydynamicList()
    }
}
