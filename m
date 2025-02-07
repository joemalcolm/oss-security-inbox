Received: (qmail 28107 invoked by uid 550); 7 Feb 2025 17:43:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3223 invoked from network); 7 Feb 2025 12:32:08 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Mingyang Liu <twice@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <1a2269fd-3147-35ea-d614-05a37ac95d0f@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 07 Feb 2025 12:31:57 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-25069: Apache Kvrocks: Cross-Protocol Scripting
 Vulnerability 

Severity: Moderate

Affected versions:

- Apache Kvrocks through 2.11.0

Description:

A Cross-Protocol Scripting vulnerability is found in Apache Kvrocks.

Since Kvrocks didn't detect if "Host:" or "POST" appears in RESP requests,
a valid HTTP request can also be sent to Kvrocks as a valid RESP request=20
and trigger some database operations, which can be=C2=A0dangerous when=20
it is chained with SSRF.

It is similiar to=C2=A0CVE-2016-10517 in Redis.

This issue affects Apache Kvrocks: from the initial version to the latest v=
ersion 2.11.0.

Users are recommended to upgrade to version 2.11.1, which fixes the issue.

Credit:

Sergey Volosatov (reporter)

References:

https://www.cve.org/CVERecord?id=3DCVE-2016-10517
https://kvrocks.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2025-25069

