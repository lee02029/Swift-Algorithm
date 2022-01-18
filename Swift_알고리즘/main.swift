//
//  main.swift
//  Swift_알고리즘
//
//  Created by Yoonjae lee on 2021/12/23.
//

import Foundation

func doSomething(_ callback: (String) -> ()) {
    callback("sodeul")
    callback("sodeul")
    callback("sodeul")
}

doSomething {message in
    print("Success!" + message)
}
