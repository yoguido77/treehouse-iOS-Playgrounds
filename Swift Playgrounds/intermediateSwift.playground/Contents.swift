//: Playground - noun: a place where people can play

import UIKit

//struct Point {
//    let x: Int
//    let y: Int
//}


//struct Map {
//    static let origin: Point = Point(x: 0, y: 0)
    
//}

//Map.origin


//// Code Challenge

/*
Challenge Task 1 of 1

Declare a struct named LevelTracker with a single constant type property maxLevel. Assign an Int value to maxLevel.
 
 */


struct LevelTracker {
    static let maxLevel = 1
}

//End Challenge


/////Computed Properties

struct Point {
    var x: Int = 0
    var y: Int = 0
}


struct Size {
    var width: Int = 0
    var height: Int = 0
}

struct Rectangle {
    var origin = Point()
    var size = Size()
    
    var center: Point {
        get {
            let centerX = origin.x + size.width/2
            let centerY = origin.y + size.width/2
            
            return Point(x: centerX, y: centerY)
            
        }
        
        set(centerValue) {
            origin.x = centerValue.x - size.width/2
            origin.y = centerValue.y - size.height/2
        }
    }

}

var rect = Rectangle()
print(rect.center)
rect.center = Point(x: 10, y: 15)
print(rect.center)


/* Code Challenge 2
 
 In the editor I've created an enum to manage text presentation in my app. The enum members represent the three different text options.
 Your task is to create a computed property, style, that returns the correct style specifier provided below. For example Text.Headline.style should return the string "UIFontTextStyleHeadline".
 
*/

let UIFontTextStyleHeadline = "UIFontTextStyleHeadline"
let UIFontTextStyleBody = "UIFontTextStyleBody"
let UIFontTextStyleFootnote = "UIFontTextStyleFootnote"

enum Text {
    case Headline
    case Body
    case Footnote

    var style: String {
        switch self {
        case Headline: return UIFontTextStyleHeadline
        case Body: return UIFontTextStyleBody
        case Footnote: return UIFontTextStyleFootnote
        }
    }

}


Text.Headline.style

// End Challene....I was confused on using the switch statement..still confused


// Example Code

enum ReadingMode {
    case Day
    case Evening
    case Night
    
    var statusBarStyle: UIStatusBarStyle {
        switch self {
        case .Day, .Evening: return .Default
        case .Night: return .LightContent
        }
    }
    
    var headlineColor: UIColor {
        switch self {
        case Night: return UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        case .Evening, .Day: return UIColor(red: 16/255.0, green: 16/255.0, blue: 16/255.0, alpha: 1.0)
        }
    }
    
    var dateColor: UIColor {
        switch self {
        case .Day, .Evening: return UIColor(red: 132/255.0, green: 132/255.0, blue: 132/255.0, alpha: 1.0)
        case .Night: return UIColor(red: 151/255.0, green: 151/255.0, blue: 151/255.0, alpha: 1.0)
        }
    }
    
    var bodyTextColor: UIColor {
        switch self {
        case .Day, .Evening: return UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        case .Night: return UIColor(red: 151/255.0, green: 151/255.0, blue: 151/255.0, alpha: 1.0)
        }
    }
    
    var linkColor: UIColor {
        switch self {
        case .Day, .Evening: return UIColor(red: 68/255.0, green: 133/255.0, blue: 164/255.0, alpha: 1.0)
        case .Night: return UIColor(red: 129/255.0, green: 161/255.0, blue: 166/255.0, alpha: 1.0)
        }
    }
}

let titleLabel = UILabel()

func readingViewWithMode(readingMode: ReadingMode) {
    titleLabel.textColor = readingMode.headlineColor
}


