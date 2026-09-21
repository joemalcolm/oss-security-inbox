X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/21/1
Message-ID: <54fa35fa-0979-be3c-6f0a-6375d43d3bc9@apache.org>
Date: Mon, 21 Sep 2026 07:40:33 +0000
From: Emmanuel Lécharny <elecharny@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-47321: Apache MINA: Unbounded Decompression Amplification DoS in Zlib.inflate 
Content-Type: text/plain; charset=utf-8

Severity: 

Affected versions:

- Apache MINA (org.apache.mina:mina-filter-compression) 2.2.0 before 2.2.8
- Apache MINA (org.apache.mina:mina-filter-compression) 2.1.0 before 2.1.13
- Apache MINA (org.apache.mina:mina-filter-compression) 2.0.0 before 2.0.29

Description:

The CompressionFilter class uses ZLib to deflate and inflate data sent and received. When we inflate incoming data, the filter does not control the resulting size, and create a buffer no matter what.

Some compressed data may have a compression ration greater than 1 thousand, leading to an exhaustion of the application memory, as we don't control the deflated size.




The fix adds such a control by allowing the application developer to provide a fixed size limit, which when reached throws an exception. It also allows the user to provide a compression ratio that should not be exceeded, protected the application from small inflated files that inflate in gigantic files, but with a grace limit for the resulting size (1Mb) to avoid false positive (like a very small file inflating with a high ratio, but resulting with a acceptable size, like a few thousands bytes)




For application using this feature, it is highly recommended to create the CompressionFilter and to pass the maximum limit as a forth constructor parameter, maxDecompressedSize:




public CompressionFilter(final boolean compressInbound, final boolean compressOutbound, final int compressionLevel, final int maxDecompressedSize)Optionally one can also provide a maxDecompressRatio fifth parameter, and a decompressRatioMinSize sixth parameter to allow small inflated files with a high compression ratio to still be accepted.




Here are the additional constructor:






public CompressionFilter(final boolean compressInbound, final boolean compressOutbound,



            final int compressionLevel, final int maxDecompressedSize,



            final long maxDecompressRatio, final long decompressRatioMinSize)








Also note that a fluent API has been added to spare the users the pain to call a constructor with that many parameters:






 CompressionFilter compressionFilter = new CompressionFilter()

                                                .setCompressionLevel(Zlib.COMPRESSION_MAX)

                                                .setMaxDecompressedSize(1_000_000)

                                                .setMaxDecompressRatio(100).

                                                .setDecompressRatioMinSize(100_000); 









Applications using Apache MINA are advised to upgrade and configure their CompressionFilter instance.

Credit:

Venkatraman Kumar, SecurIn (finder)

References:

https://lists.apache.org/thread/y7xj1bl8qo47p9bktb11hg5v6k1d4dyj
https://mina.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-47321

