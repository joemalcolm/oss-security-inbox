X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/09/6
Message-ID: <a6135355-3162-fbe6-ef83-f645a2b0866c@apache.org>
Date: Fri, 09 Oct 2026 09:52:54 +0000
From: Colm O hEigeartaigh <coheigea@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-78384: Apache CXF: Unbounded DEFLATE Decompression in CXF JOSE/JWE and SAML Processing (Decompression Bomb) 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache CXF (org.apache.cxf:cxf-core) 4.2.0 before 4.2.4
- Apache CXF (org.apache.cxf:cxf-core) 4.0.0 before 4.1.9
- Apache CXF (org.apache.cxf:cxf-core) before 3.6.13

Description:

CompressionUtils.inflate() decompressed attacker-controlled DEFLATE data with no output-size cap. A small (~KB) crafted payload could expand to gigabytes on the heap. Reachable via JWE decryption when zip=DEF (e.g. JoseSessionTokenProvider with RSA-OAEP key wrap) and via SAML redirect/POST binding token inflation — in both cases decompression happens before/independent of trust validation.

Fix: Added a configurable maximum inflated-size cap (default 10 MiB, org.apache.cxf.compression-max-inflated-size system property) to CompressionUtils.inflate(); aborts with DataFormatException once exceeded.
Users are recommended to upgrade to versions 4.2.4 or 4.1.9 or 3.6.13, which fix this issue.

Credit:

Guanping Zhang reported this vulnerability. (finder)

References:

https://cxf.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-78384

