import Foundation

public extension RIPEMD160 {
    static func hash(data: Data) -> Data {
        var md = Self()
        md.update(data: data)
        return md.finalize()
    }
}
