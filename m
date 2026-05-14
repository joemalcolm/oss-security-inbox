Received: (qmail 24567 invoked by uid 550); 14 May 2026 18:55:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17614 invoked from network); 14 May 2026 11:01:23 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: "Gary D. Gregory" <ggregory@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <1a0258a0-fd45-f0ce-3082-bb336058df53@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 11:01:03 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-45205: Apache Commons Configuration: StackOverflowError
 for YAML input with cycles 

Severity: low=20

Affected versions:

- Apache Commons Configuration (org.apache.commons:commons-configuration2) =
2.2 before 2.15.0

Description:

Uncontrolled Recursion vulnerability in Apache Commons.

When processing an untrusted configuration file, Commons Configuration will=
 throw a StackOverflowError for YAML input with cycles.
This issue affects Apache Commons: from 2.2 before 2.15.0.

Users are recommended to upgrade to version 2.15.0, which fixes the issue.

Credit:

Erichen, Institute of Computing Technology, Chinese Academy of Sciences (re=
porter)

References:

https://github.com/apache/commons-configuration/pull/634
https://commons.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-45205

