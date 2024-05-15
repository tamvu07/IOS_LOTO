

//
//  ViewController.swift
//  LOTO
//
//  Created by Tam Vu on 09/05/2024.
//

import UIKit

class Obj1 {
    var isShow: Bool = false
    var number: Int = -1
}

class DetailViewController: UIViewController {
    
    @IBOutlet weak var row1View: CotentRowUIView!
    @IBOutlet weak var row2View: CotentRowUIView!
    @IBOutlet weak var row3View: CotentRowUIView!
    @IBOutlet weak var row4View: CotentRowUIView!
    @IBOutlet weak var row5View: CotentRowUIView!
    
    @IBOutlet weak var titleNumberView: UIView!
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var titleNumberLabel: UILabel!
    
    @IBOutlet weak var roundLabel: UILabel!
    
    var round: String = ""
    
    var R1: [Obj1] = []
    var R2: [Obj1] = []
    var R3: [Obj1] = []
    var R4: [Obj1] = []
    var R5: [Obj1] = []
    
    var numbersValue0: [Int] = []
    var numbersValue1: [Int] = []
    var numbersValue2: [Int] = []
    var numbersValue3: [Int] = []
    var numbersValue4: [Int] = []
    
    var numberTitle: Int = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        R1 = getRandomR()
        R2 = getRandomR()
        R3 = getRandomR()
        R4 = getRandomR()
        R5 = getRandomR()
        
        // update number
        updateNumberR(data: R1)
        updateNumberR(data: R2)
        updateNumberR(data: R3)
        updateNumberR(data: R4)
        updateNumberR(data: R5)
        
        row1View.setData(arrayData: R1)
        row2View.setData(arrayData: R2)
        row3View.setData(arrayData: R3)
        row4View.setData(arrayData: R4)
        row5View.setData(arrayData: R5)
        
        titleNumberView.layer.borderColor = UIColor.black.cgColor
        backgroundView.layer.borderColor = UIColor.black.cgColor
        titleNumberLabel.text = "\(numberTitle)"
        
        roundLabel.text = "Vòng \(round)"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    
    @IBAction func backAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    func getRandomR() -> [Obj1] {
        
        var items: [Obj1] = []
        // Khởi tạo mảng với 5 phần tử có giá trị mặc định là false
        for _ in 1...5 {
            items.append(Obj1())
        }
        
        // Thiết lập 3 phần tử đầu tiên là true
        items[0...2].forEach { $0.isShow = true }
        
        // Xáo trộn ngẫu nhiên các phần tử trong mảng
        items.shuffle()
        return items
    }
    
    func updateNumberR(data: [Obj1]) {
        for index in 0..<data.count {
            switch index {
                
                // column 1
            case 0:
                if data[index].isShow {
                    
                    var isExist: Bool = true
                    var number = -1
                    
                    // default la phai chay vao, khi nao isExist == false la chua co xuat hien thi moi thoat vong lap
                    while isExist == true {
                        let randomNumber = Int.random(in: 1..<10)
                        
                        var isExistTemp = false
                        for item in numbersValue0 {
                            if item == randomNumber {
                                isExistTemp = true
                            }
                        }
                        isExist = isExistTemp
                        // co nghia la chua xuat hien
                        if isExistTemp == false {
                            number = randomNumber
                        }
                    }
                    
                    data[index].number = number
                    numbersValue0.append(number)
                }
                
                // column 2
            case 1:
                if data[index].isShow {
                    
                    var isExist: Bool = true
                    var number = -1
                    
                    // default la phai chay vao, khi nao isExist == false la chua co xuat hien thi moi thoat vong lap
                    while isExist == true {
                        let randomNumber = Int.random(in: 10..<20)
                        
                        var isExistTemp = false
                        for item in numbersValue1 {
                            if item == randomNumber {
                                isExistTemp = true
                            }
                        }
                        isExist = isExistTemp
                        // co nghia la chua xuat hien
                        if isExistTemp == false {
                            number = randomNumber
                        }
                    }
                    
                    data[index].number = number
                    numbersValue1.append(number)
                }
                
                // column 3
            case 2:
                if data[index].isShow {
                    
                    var isExist: Bool = true
                    var number = -1
                    
                    // default la phai chay vao, khi nao isExist == false la chua co xuat hien thi moi thoat vong lap
                    while isExist == true {
                        let randomNumber = Int.random(in: 20..<30)
                        
                        var isExistTemp = false
                        for item in numbersValue2 {
                            if item == randomNumber {
                                isExistTemp = true
                            }
                        }
                        isExist = isExistTemp
                        // co nghia la chua xuat hien
                        if isExistTemp == false {
                            number = randomNumber
                        }
                    }
                    
                    data[index].number = number
                    numbersValue2.append(number)
                }
                
                // column 4
            case 3:
                if data[index].isShow {
                    
                    var isExist: Bool = true
                    var number = -1
                    
                    // default la phai chay vao, khi nao isExist == false la chua co xuat hien thi moi thoat vong lap
                    while isExist == true {
                        let randomNumber = Int.random(in: 30..<40)
                        
                        var isExistTemp = false
                        for item in numbersValue3 {
                            if item == randomNumber {
                                isExistTemp = true
                            }
                        }
                        isExist = isExistTemp
                        // co nghia la chua xuat hien
                        if isExistTemp == false {
                            number = randomNumber
                        }
                    }
                    
                    data[index].number = number
                    numbersValue3.append(number)
                }
                
                // column 5
            case 4:
                if data[index].isShow {
                    
                    var isExist: Bool = true
                    var number = -1
                    
                    // default la phai chay vao, khi nao isExist == false la chua co xuat hien thi moi thoat vong lap
                    while isExist == true {
                        let randomNumber = Int.random(in: 40..<50)
                        
                        var isExistTemp = false
                        for item in numbersValue4 {
                            if item == randomNumber {
                                isExistTemp = true
                            }
                        }
                        isExist = isExistTemp
                        // co nghia la chua xuat hien
                        if isExistTemp == false {
                            number = randomNumber
                        }
                    }
                    
                    data[index].number = number
                    numbersValue4.append(number)
                }
            default:
                break
            }
            
        }
    }
    
//    func updateNumberR1_123() {
//        for index in 0..<R1.count {
//            switch index {
//
//                // column 1
//            case 0:
//                if R1[index].isShow {
//                    let randomNumber = Int.random(in: 1..<10)
//                    R1[index].number = randomNumber
//                    numbersValue0.append(randomNumber)
//                }
//
//                // column 2
//            case 1:
//                if R1[index].isShow {
//                    let randomNumber = Int.random(in: 10..<20)
//                    R1[index].number = randomNumber
//                    numbersValue1.append(randomNumber)
//                }
//
//                // column 3
//            case 2:
//                if R1[index].isShow {
//                    let randomNumber = Int.random(in: 20..<30)
//                    R1[index].number = randomNumber
//                    numbersValue2.append(randomNumber)
//                }
//
//                // column 4
//            case 3:
//                if R1[index].isShow {
//                    let randomNumber = Int.random(in: 30..<40)
//                    R1[index].number = randomNumber
//                    numbersValue3.append(randomNumber)
//                }
//
//                // column 5
//            case 4:
//                if R1[index].isShow {
//                    let randomNumber = Int.random(in: 40..<50)
//                    R1[index].number = randomNumber
//                    numbersValue4.append(randomNumber)
//                }
//            default:
//                break
//            }
//
//        }
//    }
    
//    func updateNumberR2123() {
//        for index in 0..<R2.count {
//            switch index {
//
//                // column 1
//            case 0:
//                if R2[index].isShow {
//
//                    var isExist: Bool = true
//                    var number = -1
//
//                    // default la phai chay vao, khi nao isExist == false la chua co xuat hien thi moi thoat vong lap
//                    while isExist == true {
//                        let randomNumber = Int.random(in: 1..<10)
//
//                        var isExistTemp = false
//                        for item in numbersValue0 {
//                            if item == randomNumber {
//                                isExistTemp = true
//                            }
//                        }
//                        isExist = isExistTemp
//                        // co nghia la chua xuat hien
//                        if isExistTemp == false {
//                            number = randomNumber
//                        }
//                    }
//
//                    R2[index].number = number
//                    numbersValue0.append(number)
//                }
//
//                // column 2
//            case 1:
//                if R2[index].isShow {
//
//                    var isExist: Bool = true
//                    var number = -1
//
//                    // default la phai chay vao, khi nao isExist == false la chua co xuat hien thi moi thoat vong lap
//                    while isExist == true {
//                        let randomNumber = Int.random(in: 10..<20)
//
//                        var isExistTemp = false
//                        for item in numbersValue1 {
//                            if item == randomNumber {
//                                isExistTemp = true
//                            }
//                        }
//                        isExist = isExistTemp
//                        // co nghia la chua xuat hien
//                        if isExistTemp == false {
//                            number = randomNumber
//                        }
//                    }
//
//                    R2[index].number = number
//                    numbersValue1.append(number)
//                }
//
//                // column 3
//            case 2:
//                if R2[index].isShow {
//
//                    var isExist: Bool = true
//                    var number = -1
//
//                    // default la phai chay vao, khi nao isExist == false la chua co xuat hien thi moi thoat vong lap
//                    while isExist == true {
//                        let randomNumber = Int.random(in: 20..<30)
//
//                        var isExistTemp = false
//                        for item in numbersValue2 {
//                            if item == randomNumber {
//                                isExistTemp = true
//                            }
//                        }
//                        isExist = isExistTemp
//                        // co nghia la chua xuat hien
//                        if isExistTemp == false {
//                            number = randomNumber
//                        }
//                    }
//
//                    R2[index].number = number
//                    numbersValue2.append(number)
//                }
//
//                // column 4
//            case 3:
//                if R2[index].isShow {
//
//                    var isExist: Bool = true
//                    var number = -1
//
//                    // default la phai chay vao, khi nao isExist == false la chua co xuat hien thi moi thoat vong lap
//                    while isExist == true {
//                        let randomNumber = Int.random(in: 30..<40)
//
//                        var isExistTemp = false
//                        for item in numbersValue3 {
//                            if item == randomNumber {
//                                isExistTemp = true
//                            }
//                        }
//                        isExist = isExistTemp
//                        // co nghia la chua xuat hien
//                        if isExistTemp == false {
//                            number = randomNumber
//                        }
//                    }
//
//                    R2[index].number = number
//                    numbersValue3.append(number)
//                }
//
//                // column 5
//            case 4:
//                if R2[index].isShow {
//
//                    var isExist: Bool = true
//                    var number = -1
//
//                    // default la phai chay vao, khi nao isExist == false la chua co xuat hien thi moi thoat vong lap
//                    while isExist == true {
//                        let randomNumber = Int.random(in: 40..<50)
//
//                        var isExistTemp = false
//                        for item in numbersValue4 {
//                            if item == randomNumber {
//                                isExistTemp = true
//                            }
//                        }
//                        isExist = isExistTemp
//                        // co nghia la chua xuat hien
//                        if isExistTemp == false {
//                            number = randomNumber
//                        }
//                    }
//
//                    R2[index].number = number
//                    numbersValue4.append(number)
//                }
//            default:
//                break
//            }
//
//        }
//    }
    
}

