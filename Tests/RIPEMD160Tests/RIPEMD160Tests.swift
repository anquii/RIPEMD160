import XCTest
@testable import RIPEMD160

final class RIPEMD160Tests: XCTestCase {
    private var testVectors: [TestVector]!

    override func setUpWithError() throws {
        testVectors = try JSONDecoder().decode([TestVector].self, from: testVectorData)
    }

    func testGivenVectors_WhenCount_ThenEqual8() {
        XCTAssertEqual(testVectors.count, 8)
    }

    func testGivenVectorMessage_WhenGenerateHash_ThenEqualVectorHash() {
        for testVector in testVectors {
            let hash = hash(message: testVector.message)
            let hexEncodedHash = hexEncodedString(data: hash)
            XCTAssertEqual(hexEncodedHash, testVector.hexEncodedHash)
        }
    }

    func testGivenVectorMessageTimes1M_WhenGenerateHash_ThenEqualVectorHash() {
        let message = String(repeating: "a", count: 1_000_000)
        let hash = hash(message: message)
        let hexEncodedHash = hexEncodedString(data: hash)
        XCTAssertEqual(hexEncodedHash, "52783243c1697bdbe16d37f97f68f08325dc1528")
    }
}

// MARK: - Helpers
fileprivate extension RIPEMD160Tests {
    func hash(message: String) -> Data {
        RIPEMD160.hash(data: message.data(using: .utf8)!)
    }

    func hexEncodedString(data: Data) -> String {
        data.map { String(format: "%02hhx", $0) }.joined()
    }
}
