//
//  CotentRowUIView.swift
//  LOTO
//
//  Created by Tam Vu on 09/05/2024.
//

import UIKit

class CotentRowUIView: UIView {
    
    @IBOutlet weak var text1: UILabel!
    @IBOutlet weak var text2: UILabel!
    @IBOutlet weak var text3: UILabel!
    @IBOutlet weak var text4: UILabel!
    @IBOutlet weak var text5: UILabel!

    var contentView: UIView?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        xibSetup()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        xibSetup()
    }
    
    func xibSetup() {
        
        contentView = loadViewFromNib()

        // use bounds not frame or it'll be offset
        contentView!.frame = bounds

        // Make the view stretch with containing view
        contentView!.autoresizingMask = [UIView.AutoresizingMask.flexibleWidth, UIView.AutoresizingMask.flexibleHeight]
        if #available(iOS 13.0, *) {
           
        } else {
            self.contentView?.backgroundColor = .white
        }
        // Adding custom subview on top of our view (over any custom drawing > see note below)
        addSubview(contentView!)

    }

    func loadViewFromNib() -> UIView! {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: String(describing: type(of: self)), bundle: bundle)
        guard let view = nib.instantiate(withOwner: self, options: nil).first as? UIView else { return UIView() }
        return view
    }
    
    func setData(arrayData: [Obj1]) {
        for index in 0..<arrayData.count {
            
            var number = arrayData[index].isShow ? "\(arrayData[index].number)" : ""
            
            switch index {
            case 0:
                text1.text = number
            case 1:
                text2.text = number
            case 2:
                text3.text = number
            case 3:
                text4.text = number
            case 4:
                text5.text = number
            default:
                break
            }
        }
    }
    
    
}
