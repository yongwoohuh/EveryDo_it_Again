//
//  DetailViewController.swift
//  Every.Do it Again
//
//  Created by Yongwoo Huh on 2018-02-21.
//  Copyright © 2018 YongwooHuh. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var todoTitleLabel: UILabel!
    @IBOutlet weak var todoDescriptionLabel: UILabel!
    @IBOutlet var todoPriorityLabel: UILabel!
    

    func configureView() {
        // Update the user interface for the detail item.
        if let todo = detailItem {
            todoTitleLabel?.text = "Title: \(todo.title ?? "")"
            todoDescriptionLabel?.text = "Description: \(todo.todoDescription ?? "")"
            todoPriorityLabel?.text = "Priority Number: \(todo.priorityNumber)"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: Todo? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

