//
//  ViewController3.swift
//  LOTO
//
//  Created by Tam Vu on 21/01/2025.
//

import UIKit

class ViewController3: UIViewController {

    @IBOutlet weak var numberRandom: UILabel!
    @IBOutlet weak var arrayNumber: UILabel!
    
    let generator = RandomNumberGenerator()
    override func viewDidLoad() {
        super.viewDidLoad()
        startReset()
    }
    
    @IBAction func random(_ sender: Any) {
        startRandom()
    }
    
    @IBAction func reset(_ sender: Any) {
        startReset()
    }
    
    func startRandom() {
        if let number = generator.generateRandomNumber() {
            print(number)
            numberRandom.text = "\(number)"
            if arrayNumber.text == "" {
                arrayNumber.text = (numberRandom.text ?? "")
            } else {
                arrayNumber.text = (arrayNumber.text ?? "") + " - " + (numberRandom.text ?? "")
            }
        }
    }
    
    func startReset() {
        generator.reset()
        arrayNumber.text = ""
        numberRandom.text = "0"
    }
}

class RandomNumberGenerator {
    private var numbers: Set<Int> = []
    
    func generateRandomNumber() -> Int? {
        // Tạo một số ngẫu nhiên từ 1 đến 50
        let randomNumber = Int.random(in: 1...50)
        
        // Kiểm tra xem số đã xuất hiện chưa
        if numbers.contains(randomNumber) {
            return generateRandomNumber() // Nếu đã xuất hiện, gọi lại hàm để tìm số mới
        } else {
            numbers.insert(randomNumber) // Thêm số vào tập đã xuất hiện
            return randomNumber // Trả về số ngẫu nhiên
        }
    }
    
    func reset() {
        numbers = [] // Kiểm tra xem đã tạo ra đủ 50 số chưa
    }
}


