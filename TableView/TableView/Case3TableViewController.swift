//
//  Case3TableViewController.swift
//  TableView
//
//  Created by 황민채 on 5/23/24.
//

import UIKit


class Case3TableViewController: UITableViewController {

    var todoList: [Todo] = [
        Todo(
            content: "그립톡 구매하기",
             isComplete: true,
             isStar: true
        ),
        Todo(
            content: "사이다 구매",
             isComplete: false,
             isStar: true
        ),
    ]
    
    @IBOutlet weak var addTodoButton: UIButton!
    @IBOutlet weak var addTodoView: UIView!
    @IBOutlet weak var todoTextField: UITextField!
    
    override func viewDidLoad() {
        print(#function)
        super.viewDidLoad()
        
        addTodoView.backgroundColor = #colorLiteral(red: 0.949019134, green: 0.9490200877, blue: 0.9705253243, alpha: 1)
        addTodoView.layer.cornerRadius = 8
        
        todoTextField.placeholder = " 무엇을 구매하실 건가요?"
        todoTextField.borderStyle = .none
        todoTextField.font = .systemFont(ofSize: 15, weight: .medium)
        
        addTodoButton.backgroundColor = #colorLiteral(red: 0.8980388045, green: 0.8980395198, blue: 0.9152473807, alpha: 1)
        addTodoButton.setTitle("추가", for: .normal)
        addTodoButton.tintColor = .black
        addTodoButton.layer.cornerRadius = 8
        
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(#function)
        
        return todoList.count
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        print(#function)
        return 50
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(#function, indexPath)
        // 3-1. 어떤 셀을 쓸 지 결정
        // 재사용 메커니즘
        let cell = tableView.dequeueReusableCell(withIdentifier: "case3", for: indexPath) as! TableViewCell
        cell.checkButton.tintColor = .black
        cell.starButton.tintColor = .black
        
        cell.todoListLabel.text = todoList [indexPath.row].content
            cell.textLabel?.textColor = .label
            cell.textLabel?.font = .systemFont(ofSize: 13)
            cell.separatorInset.bottom = .greatestFiniteMagnitude
        
        if todoList[indexPath.row].isComplete {
            cell.checkButton.setImage(UIImage(systemName: "checkmark.square.fill"), for: .normal)
        } else {
            cell.checkButton.setImage(UIImage(systemName: "square"), for: .normal)
        }
        
        if todoList[indexPath.row].isStar {
            cell.starButton.setImage(UIImage(systemName: "star.fill"), for: .normal)
            
        } else {
            cell.starButton.setImage(UIImage(systemName: "star"), for: .normal)
        }
        
        return cell
    }
    
    @IBAction func addButtonClicked(_ sender: UIButton) {
        if let string = todoTextField.text {
            todoList.append(Todo(content: string, isComplete: false, isStar: false))
        }
        print(todoList)
        tableView.reloadData()
    }
    
}


struct Todo {
    var content: String
    var isComplete: Bool
    var isStar: Bool
    
    init(content: String, isComplete: Bool, isStar: Bool) {
        self.content = content
        self.isComplete = isComplete
        self.isStar = isStar
    }
}