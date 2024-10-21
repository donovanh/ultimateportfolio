//
//  SidebarViewToolbar.swift
//  UltimatePortfolio
//
//  Shows a toolbar with options for adding issues and showing awards sheet
//

import SwiftUI

struct SidebarViewToolbar: View {
    @EnvironmentObject var dataController: DataController
    @State private var showingAwards = false
    
    var body: some View {
        Button(action: dataController.newTag) {
            Label("Add tag", systemImage: "plus")
        }
        
        Button {
            showingAwards.toggle()
        } label: {
            Label("Show awards", systemImage: "rosette")
        }
        .sheet(isPresented: $showingAwards, content: AwardsView.init)
        
        #if DEBUG
        Button {
            dataController.deleteAll()
            dataController.createSampleData()
        } label: {
            Label(LocalizedStringKey("ADD SAMPLES"), systemImage: "flame")
        }
        #endif
    }
}

#Preview {
    SidebarViewToolbar()
}
