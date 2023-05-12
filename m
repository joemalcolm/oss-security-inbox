Received: (qmail 25685 invoked by uid 550); 12 May 2023 01:17:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25666 invoked from network); 12 May 2023 01:17:43 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Maxim Solodovnik <solomax@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <f9917150-55d3-d094-1460-a88cd28b3ecd@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 12 May 2023 01:16:56 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-29032: Apache OpenMeetings: allows bypass authentication 

Severity: important

Affected versions:

- Apache OpenMeetings 3.1.3 before 7.1.0

Description:

An attacker that has gained access to certain private information can use t=
his to act as other user.

Vendor: The Apache Software Foundation

Versions Affected: Apache OpenMeetings from 3.1.3 before 7.1.0

This issue is being tracked as OPENMEETINGS-2764=20

Credit:

Stefan Schiller (reporter)

References:

https://openmeetings.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-29032
https://issues.apache.org/jira/browse/OPENMEETINGS-2764

