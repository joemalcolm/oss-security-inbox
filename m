Received: (qmail 3135 invoked by uid 550); 11 Jul 2025 16:02:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3828 invoked from network); 11 Jul 2025 14:26:04 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: "Gary D. Gregory" <ggregory@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <c64ede75-0fa8-213b-7f4b-24a7249fbfb2@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 11 Jul 2025 14:25:52 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-48924: Apache Commons Lang:
 ClassUtils.getClass(...) can throw a StackOverflowError on very long
 inputs 

Severity: low=20

Affected versions:

- Apache Commons Lang (commons-lang:commons-lang) 2.0 through 2.6
- Apache Commons Lang (org.apache.commons:commons-lang3) 3.0 before 3.18.0

Description:

Uncontrolled Recursion vulnerability in Apache Commons Lang.

This issue affects Apache Commons Lang: Starting with=C2=A0commons-lang:com=
mons-lang=C2=A02.0 to 2.6, and, from org.apache.commons:commons-lang3 3.0 b=
efore=C2=A03.18.0.

The methods ClassUtils.getClass(...) can throw=C2=A0StackOverflowError on v=
ery long inputs. Because an Error is usually not handled by applications an=
d libraries, a=20
StackOverflowError could=C2=A0cause an application to stop.

Users are recommended to upgrade to version 3.18.0, which fixes the issue.

Credit:

OSS-Fuzz Issue 42522972 (finder)

References:

https://commons.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-48924

