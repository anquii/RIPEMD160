struct TestHMACVector: Decodable {
    let key: String
    let message: String
    let hexEncodedHash: String
}
