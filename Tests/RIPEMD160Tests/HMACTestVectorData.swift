let hmacTestVectorData =
    """
    [
        {
            "message": "",
            "hexEncodedHash": "cf387677bfda8483e63b57e06c3b5ecd8b7fc055"
        },
        {
            "message": "a",
            "hexEncodedHash": "0d351d71b78e36dbb7391c810a0d2b6240ddbafc"
        },
        {
            "message": "abc",
            "hexEncodedHash": "f7ef288cb1bbcc6160d76507e0a3bbf712fb67d6"
        },
        {
            "message": "message digest",
            "hexEncodedHash": "f83662cc8d339c227e600fcd636c57d2571b1c34"
        },
        {
            "message": "abcdefghijklmnopqrstuvwxyz",
            "hexEncodedHash": "843d1c4eb880ac8ac0c9c95696507957d0155ddb"
        },
        {
            "message": "abcdbcdecdefdefgefghfghighijhijkijkljklmklmnlmnomnopnopq",
            "hexEncodedHash": "60f5ef198a2dd5745545c1f0c47aa3fb5776f881"
        },
        {
            "message": "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789",
            "hexEncodedHash": "e49c136a9e5627e0681b808a3b97e6a6e661ae79"
        },
        {
            "message": "12345678901234567890123456789012345678901234567890123456789012345678901234567890",
            "hexEncodedHash": "31be3cc98cee37b79b0619e3e1c2be4f1aa56e6c"
        }
    ]
    """
    .data(using: .utf8)!
