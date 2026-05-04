Received: (qmail 3125 invoked by uid 550); 5 May 2026 00:00:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22167 invoked from network); 4 May 2026 23:42:31 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jens Geyer <jensg@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <d4da84a1-c859-33b0-ddae-280e0d95d487@apache.org>
Content-Transfer-Encoding: 7bit
Date: Mon, 04 May 2026 23:42:19 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-43868: Apache Thrift: Rust implementation vulnerable to
 CVE-2020-13949 pattern 

Severity: important 

Affected versions:

- Apache Thrift before 0.23.0

Description:

Memory Allocation with Excessive Size Value vulnerability in Apache Thrift.

This issue affects Apache Thrift: before 0.23.0.

Users are recommended to upgrade to version 0.23.0, which fixes the issue.

References:

https://thrift.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-43868

