X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/30/7
Message-ID: <06aba59c-9a1b-9716-313c-6535de1b0ca0@apache.org>
Date: Wed, 30 Sep 2026 07:37:33 +0000
From: Christofer Dutz <cdutz@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-102511: Apache PLC4X: ADS discovery accepts spoofed responses and derives the connection target from them 
Content-Type: text/plain; charset=utf-8

Severity: 
    CVSS 4.0: 8.5 (high) CVSS:4.0/AV:A/AC:L/AT:N/PR:N/UI:P/VC:H/VI:H/VA:N/SC:N/SI:N/SA:N

Affected versions:

- Apache PLC4X 0.11.0 before 1.0.0
- Apache PLC4X 1.0.0 unaffected
- Apache PLC4X 0.10.0 before 1.0.0
- Apache PLC4X 1.0.0 unaffected
- Apache PLC4X 0.10.0 before 1.0.0
- Apache PLC4X 1.0.0 unaffected
- Apache PLC4X 0.11.0 before 1.0.0
- Apache PLC4X 1.0.0 unaffected

Description:

Improper Verification of Source of a Communication Channel in the ADS discovery of the Go implementation of Apache PLC4X (PLC4Go) allows an attacker able to send UDP datagrams to the discovering host to redirect subsequent connections to an arbitrary, attacker-chosen address. The discovery result's connection 
address was derived from the AmsNetId claimed in the response body rather than from the datagram's actual source address. One spoofed discovery response can therefore insert an inventory entry pointing at any host, including hosts outside the local network, and an application that connects to discovered devices
will open its ADS session, including any configured route credentials, to that host.

Additionally, discovery listeners in both implementations can be disabled by a single malformed datagram:
- In PLC4Go ADS discovery, a short version block causes a panic that ends the listener for the rest of the discovery call, so legitimate devices answering afterwards are not reported.
- In PLC4J, the ADS and EtherNet/IP discoverers stop on an unhandled exception from a malformed response.
- The PLC4J Modbus discoverer can be made to spin indefinitely, consuming a CPU core, by a scanned host that sends a partial response.

Exploitation requires the application to invoke the discovery API, which is opt-in, and for the connection redirect, to act on the discovered items.

This issue affects Apache PLC4X: PLC4Go from 0.11.0 before 1.0.0; PLC4J ADS and Modbus drivers from 0.10.0 before 1.0.0; PLC4J EtherNet/IP driver from 0.11.0 before 1.0.0. PLC4Go is consumed as the Go module github.com/apache/plc4x/plc4go; versions refer to the corresponding Apache PLC4X releases.

Users are recommended to upgrade to version 1.0.0, which fixes the issue. Version 1.0.0 derives the connection address from the datagram's source address and logs a warning when the claimed AmsNetId disagrees with it.

References:

https://plc4x.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-102511

Timeline:

2026-08-11: found during the internal security review
2026-09-07: Apache PLC4X 1.0.0 released with the fixes

