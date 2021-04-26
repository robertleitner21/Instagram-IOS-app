//
//  DatabaseManager.swift
//  Instagram
//
//  Created by Robert Leitner on 19/02/2021.
//

import FirebaseDatabase

public class DatabaseManager {
    
    static let shared = DatabaseManager()
    
    private let database = Database.database().reference()
    
    // Check if email and username is available
    public func canCreateNewUser(with email: String, username: String, completion: (Bool) -> Void) {
        completion(true)
    }
    
    // Inserts new user data to database
    public func insertNewUser(with email: String, username: String, completion: @escaping (Bool) -> Void) {
        database.child(email.safeDatabaseKey()).setValue(["username": username]) { error, _ in
            if error == nil {
                // success
                completion(true)
                return
            }
            else {
                // failed
                completion(false)
                return
            }
        }
    }
}
