//
//  UnitOfWork.swift
//  TaskMasterio
//
//  Created by Aynur Nasybullin on 14.07.2023.
//

import Foundation
import SQLite

protocol UnitOfWork: DataStore {
    associatedtype TodoListRepoType: TodoListRepository
    
    var todoLisrRepo: TodoListRepoType { get }
    
    var name: String { get }
    var connectionUrl: URL? { get }
    
    func configure(name: String, connectionUrl: URL?)
    
    func load() -> Swift.Result<Void, Error>
    func save() -> Swift.Result<Void, Error>
}
