//
//  CheckinFormView.swift
//  MYAH
//
//  Created by Desola Fujah on 8/3/26.
//

import SwiftUI

struct CheckInFormView: View {
    let shop: Shop

    @Environment(\.dismiss) private var dismiss

    @State private var drinkName = ""
    @State private var caption = ""

    var body: some View {
        NavigationStack {
            Form {
                Section("Coffee Shop") {
                    Text(shop.name)
                }

                Section("What did you order?") {
//                    TODO: this should provide the store's scrollable menu so user doesn't have to type anything in
//                         unless what they ordered isn't on the menu 
                    TextField("Drink name", text: $drinkName)
                }

                Section("Your visit") {
                    TextField(
                        "How was your experience?",
                        text: $caption,
                        axis: .vertical
                    )
                    .lineLimit(3...6)
                }

                Section {
                    Button("Post Check-In") {
                        print("Posting check-in")
                        dismiss()
                        // TODO: send to backend
                    }
                    .disabled(drinkName.isEmpty)
                }
            }
            .navigationTitle("Check In")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
            }
        }
    }
}
