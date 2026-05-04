Received: (qmail 5984 invoked by uid 550); 5 May 2026 00:00:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18318 invoked from network); 4 May 2026 23:46:35 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jens Geyer <jensg@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <e44b79c0-663f-d497-20d4-48ce38e01872@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 04 May 2026 23:43:24 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-43870: Apache Thrift: Node.js web_server.js
 multi-vulnerability 

Severity: important=20

Affected versions:

- Apache Thrift before 0.23.0

Description:

Origin Validation Error, Improper Limitation of a Pathname to a Restricted =
Directory ('Path Traversal'), Improper Neutralization of CRLF Sequences in =
HTTP Headers ('HTTP Request/Response Splitting'), Uncontrolled Resource Con=
sumption vulnerability in Apache Thrift.

This issue affects Apache Thrift: before 0.23.0.

Users are recommended to upgrade to version 0.23.0, which fixes the issue.

References:

https://thrift.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-43870

