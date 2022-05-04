#if !os(macOS)
import UIKit
#endif

extension UIDevice {

  func isRealPortait() -> Bool {
    return UIApplication.shared.statusBarOrientation.isPortrait
  }

  func isRealLandscape() -> Bool {
    return UIApplication.shared.statusBarOrientation.isLandscape
  }
}
