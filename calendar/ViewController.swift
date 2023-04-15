//
//  ViewController.swift
//  calendar
//
//  Created by Diana Nikulina on 15.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()


    }

    @IBAction func senderButton(_ sender: UIButton) {
        labelName.backgroundColor = .green
//        запрос на сайт и получить данные
        makeRequest(string: "https://isdayoff.ru/20230223")
    }
    
    func makeRequest(string: String) {
        let request = URLRequest(url: URL(string: string)!)
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
        print(String(decoding: data!, as: UTF8.self))
        print(error)
        }
        task.resume()
    }

}

