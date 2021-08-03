
import UIKit

struct DefaultStyle {
    let colors = Colors()
    
    struct Colors {
            let whiteDarkColor = color(
                lightMode: .white,
                darkMode: .secondarySystemBackground
            )
            
            static func color(lightMode: UIColor, darkMode: UIColor) -> UIColor {
                if #available(iOS 13, *) {
                    return UIColor { (UITraitCollection: UITraitCollection) -> UIColor in
                        if UITraitCollection.userInterfaceStyle == .dark {
                            return darkMode
                        } else {
                            return lightMode
                        }
                    }
                } else {
                    return lightMode
                }
            }
    }
}
