Received: (qmail 32446 invoked by uid 550); 9 Apr 2026 14:22:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32421 invoked from network); 9 Apr 2026 14:22:21 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Maxim Solodovnik <solomax@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <b0cc76fe-de8d-4801-afa2-0ed3c127fee3@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Apr 2026 14:21:08 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-33266: Apache OpenMeetings: Hardcoded Remember-Me Cookie
 Encryption Key and Salt 

Severity: important=20

Affected versions:

- Apache OpenMeetings 6.1.0 before 9.0.0

Description:

Use of Hard-coded Cryptographic Key vulnerability in Apache OpenMeetings.

The remember-me cookie encryption key is set to default value in openmeetin=
gs.properties and not being auto-rotated. In case OM admin hasn't changed t=
he default encryption key, an attacker who has stolen a cookie from a logge=
d-in user can get full user credentials.


This issue affects Apache OpenMeetings: from 6.1.0 before 9.0.0.

Users are recommended to upgrade to version 9.0.0, which fixes the issue.

This issue is being tracked as OPENMEETINGS-2813=20

Credit:

4ra2n (A code security AI agent) (finder)

References:

https://openmeetings.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-33266
https://issues.apache.org/jira/browse/OPENMEETINGS-2813

