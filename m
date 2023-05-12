Received: (qmail 7840 invoked by uid 550); 12 May 2023 01:14:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7817 invoked from network); 12 May 2023 01:14:25 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Maxim Solodovnik <solomax@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <9d930de3-d919-ab47-71cd-a6701acc46b9@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 12 May 2023 01:14:09 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-28936: Apache OpenMeetings: insufficient check of
 invitation hash 

Severity: critical

Affected versions:

- Apache OpenMeetings 2.0.0 before 7.1.0

Description:

Attacker can access arbitrary recording/room

Vendor: The Apache Software Foundation

Versions=C2=A0Affected: Apache OpenMeetings from 2.0.0 before 7.1.0

This issue is being tracked as OPENMEETINGS-2762=20

Credit:

Stefan Schiller (reporter)

References:

https://openmeetings.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-28936
https://issues.apache.org/jira/browse/OPENMEETINGS-2762

