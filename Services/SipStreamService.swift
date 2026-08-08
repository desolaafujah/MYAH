//
//  SipStreamService.swift
//  MYAH
//
//  Created by Desola Fujah on 8/7/26.
//

protocol SipStreamService{
    func fetchPosts() async throws -> [SipPost]
}


struct MockSipStreamService: SipStreamService {
    func fetchPosts() async throws -> [SipPost] {
        try await Task.sleep (for: .milliseconds(400))
        return MockSipPosts.posts
    }
}


// TODO: replace with
//struct APISipStreamService: SipStreamService {
//    func fetchPosts() async throws -> [SipPost] {
//        // Call your backend here
//        []
//    }
//}
