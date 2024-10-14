//
//  DetailView.swift
//  UltimatePortfolio
//

import SwiftUI

//extension View {
//    func inlineNavigationBar() -> some View {
//        #if os(iOS)
//        self.navigationBarTitleDisplayMode(.inline)
//        #else
//        self
//        #endif
//    }
//}

struct DetailView: View {
    @EnvironmentObject var dataController: DataController

    var body: some View {
        VStack {
            if let issue = dataController.selectedIssue {
                IssueView(issue: issue)
            } else {
                NoIssueView()
            }
        }
        .navigationTitle("Details")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
