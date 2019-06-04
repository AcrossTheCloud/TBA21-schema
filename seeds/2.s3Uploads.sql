-- START FIRST QUERY tba21.s3uploads
INSERT INTO tba21.s3uploads(
  id_sha512, all_s3_keys, created_at, updated_at, exif, machine_recognition_tags, md5, image_hash, location)
VALUES (
  'MQFOC6NZV3S50LI1L96GY39GK1WYU8K1WJ5L1FX9P2UBS3VXV41C7AFS8RSNY93YXE9ZR73ON5EJZ46ICDJDL9G6VL5Y2Z1RX1ADTPVCCFISTN5RFHM2MYUFURNMTE30',
  '{wcHLmWtuuPhTFpwQXZkGFOSCmdOWc9H6w6z5fyTRY2shASsX1Vm6jbxM35GiPo7U2NZOJlE1I7YyhwC06STSGbfH7SrX4IHKDlbz3xevRoGIsHbQZmtnmW0JvmnUs0nOIZH8RYD4HKGIPAY4AnS6CKZ3HODs4XM7czksO1TqSpHARLPncu6xHCmDfcQaoczmJLOyeU9THyhDeCnBIJISxsl0pbM1USSgFOOcRLkv95mnIpIsWeJxw64ygyt7tedgfroDNWACwVzgutF03rDNQVUsSzsJaCgmDVymcSclknKDUevEVAOe36MF6V4Nf5ObBwKbqV16zSRiTYVDHyWWPP7VnZpEyCmeY4wCNYuh0QbGD5CAzjtBRCPFjFn24Ni0s7zEj8XrsNxr9nPoCJPoLSujCmEJz7mvTnDMzKa1B15vA2LXleMdaKT5XOIjNkODK34j52EtzNbGKWcqLG8sjtWbh1b7RQNEDAEEAMQPtD7ptA8jWNQmiTaOQsnZ7Cvv2nJTijC3hSwvbEz8ksoECapnGoQd8hobFT4ZZexV9nE8kgfKuGJXBr1qeFF15CvOmw6vru4PivatnSyTRs4USIXvZlDiFcv6rYRbKjWhHzNAkH4eXdHtym09MwXX0vy3PnJW9cj2tXiettfBj51GFOuV6l264Lamc1HMyBc306fEawI8gbJR9BclZJDrpxULcWwNNQ8oWVMSBZ3uwhcH99e3y7XUoRZ6A50D5MspZV0uVnV4waf93OMi4dciWN4YNIxhUpsZcLSsm2SO0zDpz16Skq5LsqZZ8Qi3TZjQPXnl3bC0bIOKyQPDfNXw3tdgPtKNuhzU44h9ET4EgtlTnXw45KAoJPNA4ZZfR6bbhP4A3p0p94D4SU9XOGwW4rhP1FtMXFHU0NSuoHnSj9f13xANSTOeZ57rUCPEthVNfBirDHxh2JlArGdjfd29BACTwOV8Wsy0VAnXEXEz89IyynkAcaLb3uoghl2GPwmbOITPx5vyiN3AF6xZL8dAJV5o}',
  '2011-07-01 06:30:30+05',
  '2011-07-01 06:30:30+05',
  '{"exif":123}',
  '{rekognition_labels: [ { Name: "Ground",
    Confidence: 99.99285888671875,
    Instances: [],
    Parents: [] },
    { Name: "Road",
    Confidence: 99.86767578125,
    Instances: [],
    Parents: [] },
    { Name: "Tarmac",
    Confidence: 80.00676727294922,
    Instances: [],
    Parents: [] },
    { Name: "Asphalt",
    Confidence: 80.00676727294922,
    Instances: [],
    Parents: [] },
    { Name: "Outdoors",
    Confidence: 71.5919189453125,
    Instances: [],
    Parents: [] },
    { Name: "Nature",
    Confidence: 66.427001953125,
    Instances: [],
    Parents: [] },
    { Name: "Water",
    Confidence: 63.095245361328125,
    Instances: [],
    Parents: [] } ]
}',
  'LIK8T8LXAW47YF794T716STH2EZR4DPK',
  'V5RWEAJ2K6DYIULX5GAXUNFXRCW0DZ3GUO3FA9B7Z99QRAVO17EVTGNXYXK1FSZU',
  ST_GeomFromText('POINT(23.3 19.234)', 4326)
), (
  'F8B77B9BYDVQWW96CRX5D3FEFXZPTOBXQ6H7QDNBVU5DAHGIXAFZMKEYCVW905VMCT8VP8JC2K6USTRQ15RNNBIA1VJY5XY5BHJ8LGA132Q0OX7WGJSHP3IZ5YD9VS3R',
  '{VMDrR2ifQtcXkhkj6GrRrbwRJsA72eP5mIjBLqWwlEZYYCgAe5AmZCivNUMdmCZN7CoxkF2yi5hAO6shMMqEx4Mh8yBXwPVpWzo6L2Hb97qOsJ5EprEmcFYIsDmGbpNa0BwreFxXVfbj2Ng4gKs8i7emAxOKpkomJppjrLeHrA5w6bRjMhvAD1iWPL5wKDUzr5XQdq5Z3UbSRGDEDjh5Z6Q05oWWTrRUH0cAul1mApwndrYAFcZ9oo1sAw8yM3fsgmUvXrhYiqXLwK2W05SngwAglcoFxIGLaoyPt5KoOhI00VYsKne2vuzs5qDiktLbM4gLMPc6D802XrMOS2LHyJWMUcXJiCbWvlZUwRqOYYCPzBJ88m49GvL6fEgh7d91sNNgQ8h5Ifg0dmdNTgnrDMnJeGB5wmyfjuSIJEIA659IaQQ5exR8dh3S9dtH5Ge9OU9GX5Sht1asjG0VEBtqBIuBdW4eGy3HIfphWw2R2TtutD7093M6C5Wu3b46Oq49EMqdFjxSn2Al9QxGzg0VhDCK9YsH2ycquaYmQ4oKoWd3lhwav2TB5zBMXsuX31j4XH1P48KgtJcT3VD4Sh2waIv7aWrDwEX80EALICdlbG4QYUH3SPCsGH5WbjZ7wcBTkWQAZjcTl7ooZGXmANRx7I9XT1BFz0OJzFGWgPhT6t13hIiVgpZCv7pSeVGDL5r2CmBVQGACF1krvtsQ9mWWaA54gc5QpiGcEWeZ5weis9qVtLgXtAKINHVbBPHkacIsElBnS8jsgnQk45TmXvtHjSnh7TzM61rZFliybENLeF1jpuXmZmhTaFFDVZMBCVwrDfblHqFApXe2v4aqBlXibdwEx82YJVmx1EY4SlKYHWlVTNSCJOBR5S1qkYt5dbcm4deStvIDJPwKUAqI4tZ58mnFU2kVOwMpwD0y03gzpnpABHIdRWl8mKAbcRKZ79LI3teT9bmCga4YPYPFdMLijIA8dcGSBp82uQFjEu70OyLGPN9pRuR93bg8GMoQUDWN}',
  '2011-07-01 06:30:30+05',
  '2011-07-01 06:30:30+05',
  '{"exif":321}',
  '{rekognition_labels: [ { Name: "Ground",
    Confidence: 99.99285888671875,
    Instances: [],
    Parents: [] },
    { Name: "Road",
    Confidence: 99.86767578125,
    Instances: [],
    Parents: [] },
    { Name: "Tarmac",
    Confidence: 80.00676727294922,
    Instances: [],
    Parents: [] },
    { Name: "Asphalt",
    Confidence: 80.00676727294922,
    Instances: [],
    Parents: [] },
    { Name: "Outdoors",
    Confidence: 71.5919189453125,
    Instances: [],
    Parents: [] },
    { Name: "Nature",
    Confidence: 66.427001953125,
    Instances: [],
    Parents: [] },
    { Name: "Water",
    Confidence: 63.095245361328125,
    Instances: [],
    Parents: [] } ]
}' ,
  'CNOROXYE3ND4ANXI3598C11B9H2QQ2NR',
  'F1UNG3S6YM6DD0KP7XFHP7UKDPOIHER8JAXYGHWCJS5T2I2NM0FRZXQ6LG5RTC5P',
  ST_GeomFromText('POINT(23.3 19.234)', 4326)
), (
  'KAG5H4J98U8XQILB0JG1JI6D4SV3CD6DCUIDSZRJL4V9KZY7V3J1DLENK52817GDMV0UDVTAWGALV2MM3OK1V05QX6BIGLRZO3NZES4AB8OB4EXT7TJ0NZ6DXZI3J0I3',
  '{UsSzsJaCgmDVymcSclknKDUevEVAOe36MF6V4Nf5ObBwKbqV16zSRiTYVDHyWWPP7VnZpEyCmeY4wCNYuh0QbGD5CAzjtBRCPFjFn24Ni0s7zEj8XrsGIPAY4AnS6CKZ3HODs4XM7czksO1TqSpHARLPncu6xHCmDfcQaoczmJLOyeU9THyhDeCnBIJISxsl0pbM1USSgFOOcRLkv95mnIpIsWeJxw64ygyt7tedgfroDNWACwVzgutF03rDNQVNxr9nPoCJPoLSujCmEJz7mvTnDMzKa1B15vA2LXleMdaKT5XOIjNkODK34j52EtzNbGKWcqLG8sjtWbh1b7RQNEDAEEAMQPtD7ptA8jWNQmiTaOQsnZ7Cvv2nJTijC3hSwvbEz8ksoECapnGoQd8hobFT4ZZexV9nE8kgfKuGJXBr1qeFF15CvOmw6vru4PivatnSyTRs4USIXvZlDiFcv6rYRbKjWhHzNAkH4eXdHtym09MwXX0vy3PnJW9cj2tXiettfBj51GFOuV6l264Lamc1HMyBc306fEawI8gbJR9BclZJDrpxULcWwNNQ8oWVMSBZ3uwhcH99e3y7XUoRZ6A50D5MspZV0uVnV4waf93OMi4dciWN4YNIxhUpsZcLSsm2SO0zDpz16Skq5LsqZZ8Qi3TZjQPXnl3bC0bIOKyQPDfNXw3tdgPtKNuhzU44h9ET4EgtlTnXw45KAoJPNA4ZZfR6bbhP4A3p0p94D4SU9XOGwW4rhP1FtMXFHU0NSuoHnSj9f13xANSTOeZ57rUCPEthVNfBirDHxh2JlArGdjfd29BACTwOV8Wsy0VAnXEXEz89IyynkAcaLb3uoghl2GPwmbOITPx5vyiN3AF}',
  '2011-07-01 06:30:30+05',
  '2011-07-01 06:30:30+05',
  '{"exif":213}',
  '{}',
  'TWGZ8J6VPOB6SN9KWNWQGKZ81FVQBXHM',
  'EL21JZJC0JIVW5YPZO2VMDCYW1YXDMEPK7O8A9Q0SQLHEA7YZ3XJCQQKUJR16DK3',
  ST_GeomFromText('POINT(23.3 19.234)', 4326)
),
(
  '685I30B0AX16HY26SOP3107Y239BLGS3Z2NKQT8M2ZR16S6NPY2MA9XUBF4LYV16LDIQ09WNXFTJZCZEBO5BCOWPLA64NC71ON6M5N6KCMDRQRP0G8COB8RLS2C7RGL4',
  '{WPP7VnZpEyCmeY4wCNYuh0QbGD5CAzjtBRCPFjFn24Ni0s7zEj8XrsGIPAY4AnS6CKZ3HODs4XMUsSzsJaCgmDVymcSclknKDUevEVAOe36MF6V4Nf5ObBwKbqV16zSRiTYVDHyW7czksO1TqSpHARLPncu6xHCmDfcQaoczmJLOyeU9THyhDeCnBIJISxsl0pbM1USSgFOOcRLkv95mnIpIsWeJxw64ygyt7tedgfroDNWACwVzgutF03rDNQVNxr9nPoCJPoLSujCmEJz7mvTnDMzKa1B15vA2LXleMdaKT5XOIjNkODK34j52EtzNbGKWcqLG8sjtWbh1b7RQNEDAEEAMQPtD7ptA8jWNQmiTaOQsnZ7Cvv2nJTijC3hSwvbEz8ksoECapnGoQd8hobFT4ZZexV9nE8kgfKuGJXBr1qeFF15CvOmw6vru4PivatnSyTRs4USIXvZlDiFcv6rYRbKjWhHzNAkH4eXdHtym09MwXX0vy3PnJW9cj2tXiettfBj51GFOuV6l264Lamc1HMyBc306fEawI8gbJR9BclZJDrpxULcWwNNQ8oWVMSBZ3uwhcH99e3y7XUoRZ6A50D5MspZV0uVnV4waf93OMi4dciWN4YNIxhUpsZcLSsm2SO0zDpz16Skq5LsqZZ8Qi3TZjQPXnl3bC0bIOKyQPDfNXw3tdgPtKNuhzU44h9ET4EgtlTnXw45KAoJPNA4ZZfR6bbhP4A3p0p94D4SU9XOGwW4rhP1FtMXFHU0NSuoHnSj9f13xANSTOeZ57rUCPEthVNfBirDHxh2JlArGdjfd29BACTwOV8Wsy0VAnXEXEz89IyynkAcaLb3uoghl2GPwmbOITPx5vyiN3AF}',
  '2011-07-01 06:30:30+05',
  '2011-07-01 06:30:30+05',
  '{"exif":323}',
  '{}',
  'XQ1AIA3QJI847FWSES3GYP8VS0QBAOS5',
  'YEIA2Z4Y6MJM8PW85JXHQVC1DM5H2QSGPF1C8OGTRSSWXM7NBV657JX73UXFO5K2',
  ST_GeomFromText('POINT(23.3 19.234)', 4326)
),
(
  'GUTUR5OIYG0LENQCQ7AD6CRVLHTBKDPKK8AV7XYTTV2J7LMW3IACJXI05KZ4H9H8O6DV55P3M6OYVYAFVIRYV2H8KQGBP5CMAFFVF97IEZNFQ8P3M02F17WB1PTNWZKC',
  '{9THyhDeCnBIJISxsl0pbM1USSgFOOcRLkv95mnIpIsWeJxw64ygyt7tedgfroDNWACwVzgutF03rDNQVNxr9nPoCJPoLSujCmEJz7mvTnDMzKa1B15vA2LXleMdaKT5XOIjNkODK34j52EtzNbGKWcqLG8sjtWbh1b7RQNEDAEEAMQPtD7ptA8jWNQmiTaOQsnZ7Cvv2nJTijCWPP7VnZpEyCmeY4wCNYuh0QbGD5CAzjtBRCPFjFn24Ni0s7zEj8XrsGIPAY4AnS6CKZ3HODs4XMUsSzsJaCgmDVymcSclknKDUevEVAOe36MF6V4Nf5ObBwKbqV16zSRiTYVDHyW7czksO1TqSpHARLPncu6xHCmDfcQaoczmJLOyeU3hSwvbEz8ksoECapnGoQd8hobFT4ZZexV9nE8kgfKuGJXBr1qeFF15CvOmw6vru4PivatnSyTRs4USIXvZlDiFcv6rYRbKjWhHzNAkH4eXdHtym09MwXX0vy3PnJW9cj2tXiettfBj51GFOuV6l264Lamc1HMyBc306fEawI8gbJR9BclZJDrpxULcWwNNQ8oWVMSBZ3uwhcH99e3y7XUoRZ6A50D5MspZV0uVnV4waf93OMi4dciWN4YNIxhUpsZcLSsm2SO0zDpz16Skq5LsqZZ8Qi3TZjQPXnl3bC0bIOKyQPDfNXw3tdgPtKNuhzU44h9ET4EgtlTnXw45KAoJPNA4ZZfR6bbhP4A3p0p94D4SU9XOGwW4rhP1FtMXFHU0NSuoHnSj9f13xANSTOeZ57rUCPEthVNfBirDHxh2JlArGdjfd29BACTwOV8Wsy0VAnXEXEz89IyynkAcaLb3uoghl2GPwmbOITPx5vyiN3AF}',
  '2011-07-01 06:30:30+05',
  '2011-07-01 06:30:30+05',
  '{"exif":444}',
    '{rekognition_labels: [ { Name: "Ground",
    Confidence: 99.99285888671875,
    Instances: [],
    Parents: [] },
    { Name: "Road",
    Confidence: 99.86767578125,
    Instances: [],
    Parents: [] },
    { Name: "Tarmac",
    Confidence: 80.00676727294922,
    Instances: [],
    Parents: [] },
    { Name: "Asphalt",
    Confidence: 80.00676727294922,
    Instances: [],
    Parents: [] },
    { Name: "Outdoors",
    Confidence: 71.5919189453125,
    Instances: [],
    Parents: [] },
    { Name: "Nature",
    Confidence: 66.427001953125,
    Instances: [],
    Parents: [] },
    { Name: "Water",
    Confidence: 63.095245361328125,
    Instances: [],
    Parents: [] } ]
}',
  'Q995X4JVDBO3YZRRBJYI3SZQSNNSGBMU',
  '8JHZXG1RKTQEHW7DD1LV5A7MDII5S7M9BOX81UPCYSZ1RP1SZNYZD8BSI6Q0SQ1B',
  ST_GeomFromText('POINT(23.3 19.234)', 4326)
),
(
  '6ST2DJF7ET5CRDRF5TQOJFIJH72MZ2IRJ1Z917RHOKMMQF51EICECPZ4BDG5J8LJK0N3FOE7WL9T4BQHN0GNL4F5U0TKZK0UW88NK95S2P588BZ1P8IT7UR0PU1MNMUD',
  '{PtD7ptA8jWNQmiTaOQsnZ7Cvv2nJTijCWPP7VnZpEyCmeY4wCNYuh0QbGD5CAzjtBRCPFjFn24Ni0s7zEj8XrsGIPAY4AnS6CKZ3HODs4XMUsSzsJaCgmDVymcSclknKDUevEVAOe36MF6V4Nf5ObBwKbqV16zSRiTYVDHyW7czksO1TqSpHAR9THyhDeCnBIJISxsl0pbM1USSgFOOcRLkv95mnIpIsWeJxw64ygyt7tedgfroDNWACwVzgutF03rDNQVNxr9nPoCJPoLSujCmEJz7mvTnDMzKa1B15vA2LXleMdaKT5XOIjNkODK34j52EtzNbGKWcqLG8sjtWbh1b7RQNEDAEEAMQLPncu6xHCmDfcQaoczmJLOyeU3hSwvbEz8ksoECapnGoQd8hobFT4ZZexV9nE8kgfKuGJXBr1qeFF15CvOmw6vru4PivatnSyTRs4USIXvZlDiFcv6rYRbKjWhHzNAkH4eXdHtym09MwXX0vy3PnJW9cj2tXiettfBj51GFOuV6l264Lamc1HMyBc306fEawI8gbJR9BclZJDrpxULcWwNNQ8oWVMSBZ3uwhcH99e3y7XUoRZ6A50D5MspZV0uVnV4waf93OMi4dciWN4YNIxhUpsZcLSsm2SO0zDpz16Skq5LsqZZ8Qi3TZjQPXnl3bC0bIOKyQPDfNXw3tdgPtKNuhzU44h9ET4EgtlTnXw45KAoJPNA4ZZfR6bbhP4A3p0p94D4SU9XOGwW4rhP1FtMXFHU0NSuoHnSj9f13xANSTOeZ57rUCPEthVNfBirDHxh2JlArGdjfd29BACTwOV8Wsy0VAnXEXEz89IyynkAcaLb3uoghl2GPwmbOITPx5vyiN3AF}',
  '2011-07-01 06:30:30+05',
  '2011-07-01 06:30:30+05',
  '{"exif":156}',
    '{rekognition_labels: [ { Name: "Ground",
    Confidence: 99.99285888671875,
    Instances: [],
    Parents: [] },
    { Name: "Road",
    Confidence: 99.86767578125,
    Instances: [],
    Parents: [] },
    { Name: "Tarmac",
    Confidence: 80.00676727294922,
    Instances: [],
    Parents: [] },
    { Name: "Asphalt",
    Confidence: 80.00676727294922,
    Instances: [],
    Parents: [] },
    { Name: "Outdoors",
    Confidence: 71.5919189453125,
    Instances: [],
    Parents: [] },
    { Name: "Nature",
    Confidence: 66.427001953125,
    Instances: [],
    Parents: [] },
    { Name: "Water",
    Confidence: 63.095245361328125,
    Instances: [],
    Parents: [] } ]
}',
  'XUHPYPVJR6VKAWKB1KYAFVCB6R86LH4M',
  'AYZZJ4X8IGY9SC4YMBW9BXCCIJOHTRA2R61657SEJX0KCUXDPX3LSRDNDNVJXYY9',
  ST_GeomFromText('POINT(23.3 19.234)', 4326)
),
(
  'FCD65GQTNGXV9DJ30LCSGOT9TY12XI49FQQ6NMS3UIBUU7RXBVOE6TW5F4Z1RP8UQ36LUKQR42I7KA2W0WAP8GM7HEC8XR586KJ06MRYJFFIEGXVA1ED13KT5YC90FFB',
  '{HyW7czksO1TqSpHAR9THyhDeCnBIJISxsl0pbM1USSgFOOcRLkv95mnIpIsWeJxw64ygyt7tedgfroDNWACwVzgutF03rDNQVNxr9nPoCJPoLSujCmEJz7mvTnDMzKa1B15vA2LXleMdaKT5XOIjNkODK34j52EtzNbGKPtD7ptA8jWNQmiTaOQsnZ7Cvv2nJTijCWPP7VnZpEyCmeY4wCNYuh0QbGD5CAzjtBRCPFjFn24Ni0s7zEj8XrsGIPAY4AnS6CKZ3HODs4XMUsSzsJaCgmDVymcSclknKDUevEVAOe36MF6V4Nf5ObBwKbqV16zSRiTYVDWcqLG8sjtWbh1b7RQNEDAEEAMQLPncu6xHCmDfcQaoczmJLOyeU3hSwvbEz8ksoECapnGoQd8hobFT4ZZexV9nE8kgfKuGJXBr1qeFF15CvOmw6vru4PivatnSyTRs4USIXvZlDiFcv6rYRbKjWhHzNAkH4eXdHtym09MwXX0vy3PnJW9cj2tXiettfBj51GFOuV6l264Lamc1HMyBc306fEawI8gbJR9BclZJDrpxULcWwNNQ8oWVMSBZ3uwhcH99e3y7XUoRZ6A50D5MspZV0uVnV4waf93OMi4dciWN4YNIxhUpsZcLSsm2SO0zDpz16Skq5LsqZZ8Qi3TZjQPXnl3bC0bIOKyQPDfNXw3tdgPtKNuhzU44h9ET4EgtlTnXw45KAoJPNA4ZZfR6bbhP4A3p0p94D4SU9XOGwW4rhP1FtMXFHU0NSuoHnSj9f13xANSTOeZ57rUCPEthVNfBirDHxh2JlArGdjfd29BACTwOV8Wsy0VAnXEXEz89IyynkAcaLb3uoghl2GPwmbOITPx5vyiN3AF}',
  '2011-07-01 06:30:30+05',
  '2011-07-01 06:30:30+05',
  '{"exif":987}',
    '{rekognition_labels: [ { Name: "Ground",
    Confidence: 99.99285888671875,
    Instances: [],
    Parents: [] },
    { Name: "Road",
    Confidence: 99.86767578125,
    Instances: [],
    Parents: [] },
    { Name: "Tarmac",
    Confidence: 80.00676727294922,
    Instances: [],
    Parents: [] },
    { Name: "Asphalt",
    Confidence: 80.00676727294922,
    Instances: [],
    Parents: [] },
    { Name: "Outdoors",
    Confidence: 71.5919189453125,
    Instances: [],
    Parents: [] },
    { Name: "Nature",
    Confidence: 66.427001953125,
    Instances: [],
    Parents: [] },
    { Name: "Water",
    Confidence: 63.095245361328125,
    Instances: [],
    Parents: [] } ]
}',
  '1GLRSXJDZOY5OAS8UB2GI4HWR3OTX3R8',
  'WLG9Z8V038T1JO5O0NCAYSB390T7WDV6Q4PGSWQJ1ZZ0C2OS6G5HOI4OPY4X93K9',
  ST_GeomFromText('POINT(23.3 19.234)', 4326)
);
-- END FIRST QUERY tba21.s3uploads
