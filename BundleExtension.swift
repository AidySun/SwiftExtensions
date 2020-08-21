import Foundation

extension Bundle {

    func getAppVersion() -> String {
        return (Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String) ?? ""
    }
    
    func getAppName() -> String {
        return (Bundle.main.infoDictionary?["CFBundleName"] as? String) ?? ""
    }
}
