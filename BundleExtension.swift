import Foundation

extension Bundle {

    func getAppVersion() -> String {
        return (Bundle.main.infoDictionary?["CFBundleVersion"] as? String) ?? ""
    }
}
