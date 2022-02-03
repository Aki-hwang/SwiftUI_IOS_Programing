//
//  ContentView.swift
//  ListNavDemo26
//
//  Created by Chuljin Hwang on 2022/02/03.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var carstore : CarStore = CarStore(cars: carData)
    var body: some View {
        NavigationView{
            List{
                ForEach(carstore.cars){ aa in
                    ListCell(car: aa)
                }
                .onDelete(perform: deleteItems)
                .onMove(perform: moveItems)
            }
            .navigationBarTitle(Text("EV Cars"))
            .navigationBarItems(leading: NavigationLink(destination: {AddNewCar(carStore: self.carstore)}, label: {
                Text("Add")
            }), trailing: EditButton())
        }
    }
    
    func deleteItems(at offets: IndexSet){
        carstore.cars.remove(atOffsets: offets)
    }
    func moveItems(from source: IndexSet, to destination: Int){
        carstore.cars.move(fromOffsets: source, toOffset: destination)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ListCell: View {
    var car: Car //Car 구조체의 형태를 따른다
    var body: some View {
        
        NavigationLink(destination: {
            CarDetail(selectedCar: car)
        }, label: {
            HStack{
                Image(car.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 60)
                Text(car.name)
            }
        })
            
        
    }
}
