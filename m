Received: (qmail 1071 invoked by uid 550); 1 Jun 2026 10:16:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15477 invoked from network); 1 Jun 2026 09:59:24 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Shuxin Pan <psxjoy@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <71a042cd-6f30-e38d-9d1a-5fccc68a3b14@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 01 Jun 2026 09:59:11 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-49328: Apache Fesod (Incubating): Improper validation of
 user-supplied URLs leading to SSRF 

Severity: important=20

Affected versions:

- Apache Fesod (Incubating) (org.apache.fesod:fesod-sheet) before 2.0.2-inc=
ubating

Description:

Server-Side Request Forgery (SSRF) in the UrlImageConverter component of Ap=
ache Fesod (Incubating) fesod-sheet before 2.0.2-incubating allows attacker=
s to cause outbound network requests to internal or otherwise restricted re=
sources via a user-supplied image URL. Users are recommended to upgrade to =
version 2.0.2-incubating, which fixes this issue.

This issue is being tracked as apache/fesod#917=20

Credit:

Xu Han (finder)

References:

https://github.com/apache/fesod/pull/917
https://github.com/apache/fesod/releases/tag/2.0.2-incubating
https://fesod.apache.org/docs/download
https://fesod.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2026-49328
https://issues.apache.org/jira/browse/apache/fesod#917

