
import UIKit

extension UIDevice {

  func isRealPortait() -> Bool {
    return UIApplication.shared.statusBarOrientation.isPortait
  }

  func isRealLandscape() -> Bool {
    return UIApplication.shared.statusBarOrientation.isLandscape
  }
}
