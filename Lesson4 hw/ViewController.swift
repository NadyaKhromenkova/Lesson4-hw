//
//  ViewController.swift
//  Lesson4 hw
//
//  Created by Надя Хроменкова on 4.08.21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(sortData(variables: [(1,"x"), (3,"z"), (2, "y"), (4, "a")]))
    }

    func sortData(variables: [(num: Int, letter: String)]) -> [(num: Int, letter: String)]{
//        let variables: [(num: Int, letter: String)] = [(1,"x"), (3,"z"), (2, "y"), (4, "a")]
        let variablesChanged = variables.map { (num: Int, letter: String) in
            return ((num * num), letter)
        }
        
        var variablesEven = variablesChanged.filter {(num: Int, letter: String) in
            return num % 2 == 0
        }
        
        variablesEven.sort { prevElement, nextElement in
            return prevElement.0 > nextElement.0
        }
        return variablesEven
    }

}

