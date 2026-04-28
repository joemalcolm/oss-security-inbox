Received: (qmail 28555 invoked by uid 550); 28 Apr 2026 00:39:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 27729 invoked from network); 28 Apr 2026 00:04:04 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jens Geyer <jensg@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <a12beca1-e7d5-861a-6d40-d82f48ed6677@apache.org>
Content-Transfer-Encoding: 7bit
Date: Tue, 28 Apr 2026 00:00:12 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-41606: Apache Thrift: c_glib dispatch stack overflow 

Severity: important 

Affected versions:

- Apache Thrift before 0.23.0

Description:

Uncontrolled Recursion vulnerability in Apache Thrift.

This issue affects Apache Thrift: before 0.23.0.

Users are recommended to upgrade to version 0.23.0, which fixes the issue.

Credit:

Hasnain Lakhani (finder)

References:

https://thrift.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-41606

