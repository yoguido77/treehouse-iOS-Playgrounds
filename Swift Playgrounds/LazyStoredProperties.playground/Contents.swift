//: Playground - noun: a place where people can play

import UIKit

class ReadItLaterClient {
    lazy var session: NSURLSession = NSURLSession(configuration: NSURLSessionConfiguration.defaultSessionConfiguration())
    
    /* 
     Do the rest of the work
 
 */
}

///Property Observers Code Challenge

/* Challenge Task 1 of 1
 
 In the editor, I've created a UIViewController subclass, TemperatureController that contains a single property - temperature.
 Your task is to add a didSet property observer to temperature and set the view's background color depending on value of the temperature.
 For example, if the temperature is greater than 80, set the view's background color to UIColor.redColor(). Similarly if the temperature is less than 40, set it to blue color, otherwise set it to green color.
 Note: For changing the view's background color, there's example code in viewDidLoad()
 
 */
 
 class TemperatureController: UIViewController {
    var temperature: Double { //start my code
    didSet {
      if temperature > 80 {
        view.backgroundColor = UIColor.redColor()}
    else if temperature < 40 {
        view.backgroundColor = UIColor.blueColor()
      } else { view.backgroundColor = UIColor.greenColor() }
     }
    }
    //end my code
    
    init(temperature: Double) {
        self.temperature = temperature
        super.init()
    }
    
    override func viewDidLoad() {
        view.backgroundColor = UIColor.whiteColor()
    }
}