//
//  TodoList.TableView.swift
//  TaskMasterio
//
//  Created by Aynur Nasybullin on 29.06.2023.
//

import UIKit

final class TodoListTableView: UITableView {
    
    // MARK: - Lifesycle Functions
    init(for view: UIView) {
        super.init(frame: view.bounds, style: .plain)
        
        setup()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("Trying to initialize Todo List Table View...")
    }
    
    // MARK: - Setup Functions
    private func setup() {
        self.register(TodoListTableViewCell.self, forCellReuseIdentifier: Titles.todoListCellId)
        self.backgroundColor = UIColor(named: AccentColors.backPrimary)
    }
}
