let testVectorData =
    """
    [
        {
            "message": "",
            "hexEncodedHash": "9c1185a5c5e9fc54612808977ee8f548b2258d31"
        },
        {
            "message": "a",
            "hexEncodedHash": "0bdc9d2d256b3ee9daae347be6f4dc835a467ffe"
        },
        {
            "message": "abc",
            "hexEncodedHash": "8eb208f7e05d987a9b044a8e98c6b087f15a0bfc"
        },
        {
            "message": "message digest",
            "hexEncodedHash": "5d0689ef49d2fae572b881b123a85ffa21595f36"
        },
        {
            "message": "abcdefghijklmnopqrstuvwxyz",
            "hexEncodedHash": "f71c27109c692c1b56bbdceb5b9d2865b3708dbc"
        },
        {
            "message": "abcdbcdecdefdefgefghfghighijhijkijkljklmklmnlmnomnopnopq",
            "hexEncodedHash": "12a053384a9c0c88e405a06c27dcf49ada62eb2b"
        },
        {
            "message": "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789",
            "hexEncodedHash": "b0e20b6e3116640286ed3a87a5713079b21f5189"
        },
        {
            "message": "12345678901234567890123456789012345678901234567890123456789012345678901234567890",
            "hexEncodedHash": "9b752e45573d4b39f4dbd3323cab82bf63326bfb"
        }
    ]
    """
    .data(using: .utf8)!
