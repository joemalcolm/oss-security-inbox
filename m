Received: (qmail 32079 invoked by uid 550); 28 Apr 2026 00:39:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 31972 invoked from network); 28 Apr 2026 00:04:57 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jens Geyer <jensg@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <728d8af2-7bce-b85d-1c2d-703997549845@apache.org>
Content-Transfer-Encoding: 7bit
Date: Tue, 28 Apr 2026 00:00:36 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-41604: Apache Thrift: Swift Range crash in skip() 

Severity: moderate 

Affected versions:

- Apache Thrift before 0.23.0

Description:

Out-of-bounds Read vulnerability in Apache Thrift.

This issue affects Apache Thrift: before 0.23.0.

Users are recommended to upgrade to version 0.23.0, which fixes the issue.

Credit:

Hasnain Lakhani (finder)

References:

https://thrift.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-41604

