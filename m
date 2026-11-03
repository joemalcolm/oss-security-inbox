X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/03/15
Message-ID: <57154e08-f17d-69a4-f292-8b8ff89d133e@apache.org>
Date: Tue, 03 Nov 2026 14:32:07 +0000
From: "Christopher L. Shannon" <cshannon@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-103582: Apache ActiveMQ NMS OpenWire Client Library: Unbounded/Unvalidated Length Fields in Apache.NMS.OpenWire Unmarshalling (DoS) 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache ActiveMQ NMS OpenWire Client Library through 2.2.0

Description:

Unbounded memory allocation and missing frame size validation in Apache NMS ActiveMQ (the .NET OpenWire client, package Apache.NMS.ActiveMQ) before 2.3.0.



The OpenWire unmarshalling code trusted the frame size and the length and count fields read from the network. It did not enforce a maximum frame size, and it did not check that decoded lengths fit within the frame being read. A malicious or compromised broker, or an attacker able to intercept and modify an unencrypted connection, could send a crafted OpenWire frame with an oversized or negative length. This could cause the client to attempt very large memory allocations, leading to excessive memory consumption, an OutOfMemoryException or an uncaught exception, and a denial of service of the client application.



Users are recommended to upgrade to version 2.3.0, which enforces a configurable maximum frame size and validates lengths against the size of the frame being read.

Credit:

Biswajeet Ray (finder)

References:

https://activemq.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-103582

