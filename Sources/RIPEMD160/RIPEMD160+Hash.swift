import Foundation

public extension RIPEMD160 {
    static func hash(message: Data) -> Data {
        var md = Self()
        md.update(data: message)
        return md.finalize()
    }

    static func hash(message: String) -> Data {
        Self.hash(message: message.data(using: .utf8)!)
    }
}
