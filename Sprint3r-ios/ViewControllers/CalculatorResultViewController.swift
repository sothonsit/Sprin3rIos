import UIKit

class CalculatorResultViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var result:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.resultLabel.text = self.result
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
}
