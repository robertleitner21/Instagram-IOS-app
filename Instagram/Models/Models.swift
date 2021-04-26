//
//  Models.swift
//  Instagram
//
//  Created by Robert Leitner on 10/03/2021.
//

import Foundation

enum Gender {
    case male, female, other
}

struct User {
    let bio: String
    let username: String
    let name: (first: String, last: String)
    let birthDate: Int
    let gender: Gender
    let counts: UserCount
    let joinDate: Date
}

struct UserCount{
    let followers: Int
    let following: Int
    let posts: Int
}

public enum UserPostType {
    case photo, video
}


/// Represents a user posts

public struct UserPost {
    let identifier: String
    let postType: UserPostType
    let thumbnailImage: URL
    let postURL: URL // either video url or full resolution photo
    let caption: String?
    let likeCount: [PostLike]
    let comments: [PostComment]
    let createdDate: Date
    let taggedUsers: [String]
}

struct PostComment {
    let identifier: String
    let username: String
    let text: String
    let createdDate: Date
    let likes: [CommentLike]
}

struct CommentLike {
    let username: String
    let commentIdentifier: String
}

struct PostLike {
    let username: String
    let postIdentifier: String
}
