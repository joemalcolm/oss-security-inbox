Received: (qmail 9341 invoked by uid 550); 12 May 2023 01:20:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9323 invoked from network); 12 May 2023 01:20:19 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Maxim Solodovnik <solomax@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <0841cfb9-4068-f742-37ae-1428aff994fe@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 12 May 2023 01:20:05 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-29246: Apache OpenMeetings: allows null-byte Injection 

Severity: important

Affected versions:

- Apache OpenMeetings 2.0.0 before 7.1.0

Description:

An attacker who has gained access to an admin account can perform RCE via n=
ull-byte injection

Vendor: The Apache Software Foundation

Versions Affected: Apache OpenMeetings from 2.0.0 before 7.1.0

This issue is being tracked as OPENMEETINGS-2765=20

Credit:

Stefan Schiller (reporter)

References:

https://openmeetings.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-29246
https://issues.apache.org/jira/browse/OPENMEETINGS-2765

