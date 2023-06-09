//
//  AddPlaceSound.swift
//  PlaceSound
//
//  Created by 김보미 on 2022/11/30.
//

import SwiftUI

struct AddPlaceSound: View {
    
    var body: some View {
            VStack(alignment: .leading, spacing: 20) {
                Spacer()
                AddPlaceSound_Header()
                Spacer()
                ScrollView {
                    PlaceSearch()
                    SongSearch()
                    Spacer()
                    SaveButton()
                }
            }
    }
}

struct AddPlaceSound_Header: View {
    var body: some View {
        Text("Add Songs")
            .font(.title2)
            .fontWeight(.semibold)
            .padding(.leading, 15.0)
        Divider()
    }
}

struct PlaceSearch: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Place")
                .font(.title3)
                .fontWeight(.medium)
                .padding(.leading, 15.0)
            VStack {
                HStack {
                    Text("Enter Place")
                        .padding(.leading, 15.0)
                    Spacer()
                }
                Divider()
            }
            .foregroundColor(.gray)
        }
        .padding(.bottom, 20.0)
    }
}

struct SongSearch: View {
    var body: some View {
        VStack {
            HStack {
                Text("Search ")
                    .font(.title3)
                    .fontWeight(.medium)
                Spacer()
            }
                .padding(.leading, 15.0)
            SearchBar()
                .padding()
            AddedListView()
        }
    }
}

struct SaveButton: View {
    var body: some View {
        Button {
        } label: {
            ZStack {
                Rectangle()
                    .cornerRadius(40)
                    .frame(width: 310, height: 50)
                Text("Save")
                    .foregroundColor(.white)
            }
        }
        .padding()
    }
}

struct AddPlaceSound_Previews: PreviewProvider {
    static var previews: some View {
        AddPlaceSound()
    }
}
