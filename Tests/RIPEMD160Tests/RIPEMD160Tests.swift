import XCTest
@testable import RIPEMD160

final class RIPEMD160Tests: XCTestCase {
    private var testVectors: [TestVector]!

    override func setUpWithError() throws {
        testVectors = try JSONDecoder().decode([TestVector].self, from: testVectorData)
    }

    func testGivenHashVectors_WhenCount_ThenEqual8() {
        XCTAssertEqual(testVectors.count, 8)
    }

    func testGivenVectorMessage_WhenGenerateHash_ThenEqualVectorHash() {
        for testVector in testVectors {
            let hexEncodedHash = RIPEMD160
                .hash(message: testVector.message)
                .hexEncodedString()
            XCTAssertEqual(hexEncodedHash, testVector.hexEncodedHash)
        }
    }
}

// MARK: - Data+HexEncodedString
fileprivate extension Data {
    func hexEncodedString() -> String {
        map { String(format: "%02hhx", $0) }.joined()
    }
}
