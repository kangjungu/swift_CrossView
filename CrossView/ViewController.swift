/*
 storyboard에 있는 label의 constraint를 삭제하고 (View b의 중앙 컨스트레인트)
 button과 수평을 맞추는 예제
 */
import UIKit

class ViewController: UIViewController {

    @IBOutlet var myLabel: UILabel!
    @IBOutlet var myButton: UIButton!
    @IBOutlet var viewB: UIView!
    @IBOutlet var centerConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //constraint 삭제
        viewB.removeConstraint(centerConstraint)
        
        //contraint 생성
        let constraint = NSLayoutConstraint(item: myLabel,
                                            attribute:NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: myButton, attribute: NSLayoutAttribute.CenterX, multiplier: 1.0, constant: 0.0)
        
        self.view.addConstraint(constraint)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

