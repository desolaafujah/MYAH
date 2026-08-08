//
//  SipStreamView.swift
//  MYAH
//
//  Created by Desola Fujah on 8/7/26.
//

import SwiftUI

struct SipStreamView: View {
    private let service: any SipStreamService

    @State private var posts: [SipPost] = []
    @State private var isLoading = true
    @State private var errorMessage: String?

    init(service: any SipStreamService = MockSipStreamService()) {
        self.service = service
    }

    var body: some View {
        NavigationStack {
            Group {
                if isLoading {
                    ProgressView("Brewing your stream...")
                } else if let errorMessage {
                    ContentUnavailableView(
                        "Unable to Load Sip Stream",
                        systemImage: "wifi.exclamationmark",
                        description: Text(errorMessage)
                    )
                } else {
                    ScrollView {
                        LazyVStack(spacing: 20) {
                            ForEach(posts) { post in
                                SipPostCard(post: post)
                            }
                        }
                        .padding(.vertical)
                    }
                    .refreshable {
                        await loadPosts()
                    }
                }
            }
            .navigationTitle("Sip Stream")
            .task {
                await loadPosts()
            }
        }
    }

    private func loadPosts() async {
        isLoading = true
        errorMessage = nil

        do {
            posts = try await service.fetchPosts()
        } catch {
            errorMessage = error.localizedDescription
        }

        isLoading = false
    }
}
