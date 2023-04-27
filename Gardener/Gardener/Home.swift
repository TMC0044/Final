//
//  Home.swift
//  Gardener
//
//  Created by user231949 on 4/26/23.
//

import SwiftUI

struct Home: View {
    @State private var listSelected = false
    @State private var noteSelected = false

    var body: some View {
        NavigationView{
            ZStack {
                Image("Background")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(minWidth: 0,maxWidth: .infinity)
                    .edgesIgnoringSafeArea(.all)
                    .opacity(0.9)
                VStack{
                    Text("Welcome to Gardener")
                        .fontWeight(.heavy)
                        .font(.title)
                        .multilineTextAlignment(.center)
                        .padding()
                        .background()
                        .cornerRadius(15)
                    Text("Select an option Below")
                        .fontWeight(.bold)
                        .font(.body)
                        .background()
                        .cornerRadius(5)
                    VStack {
                        ZStack{
                            Capsule()
                                .frame(height: 50)
                                .foregroundColor(.blue)
                            Button(action: {
                                DispatchQueue.main.asyncAfter(deadline: .now()) {
                                    self.listSelected = true
                                }
                            }
                            )
                            {
                                Text("Plant List")
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                            }
                            NavigationLink(destination: ListDisplay(), isActive: $listSelected) {
                                EmptyView()
                            }
                        }
                        ZStack {
                            Capsule()
                                .frame(height: 50)
                                .foregroundColor(.blue)
                            Button(action: {
                                DispatchQueue.main.asyncAfter(deadline: .now()) {
                                    self.noteSelected = true
                                }
                            }
                            )
                            {
                                Text("Note Pad")
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                
                            }
                            NavigationLink(destination: NoteDisplay(), isActive: $noteSelected) {
                                EmptyView()
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ListDisplay: View {
    var body: some View {
        PlantList()
    }
}

struct NoteDisplay: View {
    var body: some View {
        NotePad()
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
