Received: (qmail 30581 invoked by uid 550); 28 Apr 2026 00:39:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28420 invoked from network); 28 Apr 2026 00:04:13 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jens Geyer <jensg@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <7ecd4b56-d828-e9bf-ff8b-2c7226bc373c@apache.org>
Content-Transfer-Encoding: 7bit
Date: Tue, 28 Apr 2026 00:00:24 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-41605: Apache Thrift: Swift Compact Protocol integer
 overflow 

Severity: important 

Affected versions:

- Apache Thrift before 0.23.0

Description:

Integer Overflow or Wraparound vulnerability in Apache Thrift.

This issue affects Apache Thrift: before 0.23.0.

Users are recommended to upgrade to version 0.23.0, which fixes the issue.

Credit:

Hasnain Lakhani (finder)

References:

https://thrift.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-41605

