//
//  ViewController.swift
//  TodoList
//
//  Created by t2023-m0032 on 3/21/24.
//

import UIKit

var list = [Todo]()


class ViewController: UIViewController {

    @IBOutlet weak var TableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        TableView.dataSource = self
        
        list.append(Todo(id: 1, title: "test1", isComplete: true))
        list.append(Todo(id: 2, title: "test2", isComplete: true))    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell1")

        return cell!
        }
    }
    
struct Todo {
    var id: Int = 0
    var title: String = ""
    var isComplete: Bool = false
    init(id: Int, title: String, isComplete: Bool) {
        self.id = id
        self.title = title
        self.isComplete = isComplete
    }
    
}
