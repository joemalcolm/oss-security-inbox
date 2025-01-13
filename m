Received: (qmail 9432 invoked by uid 550); 13 Jan 2025 17:06:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 29940 invoked from network); 13 Jan 2025 11:46:45 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Nux <nux@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <3dfb08f6-ad3a-3dea-e931-4bcdb43658e2@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 13 Jan 2025 11:46:33 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-22828: Apache CloudStack: Unauthorised access to
 annotations 

Severity: Low

Affected versions:

- Apache CloudStack 4.16.0 or later

Description:

CloudStack users can add and read comments (annotations) on resources they =
are authorised to access.=C2=A0

Due to an access validation issue that affects Apache CloudStack versions f=
rom 4.16.0, users who have access, prior access or knowledge of resource UU=
IDs can list and add comments (annotations) to such resources.=C2=A0

An attacker with a user-account and access or prior knowledge of resource U=
UIDs may exploit this issue to read contents of the comments (annotations) =
or add malicious comments (annotations) to such resources.=C2=A0

This may cause potential loss of confidentiality of CloudStack environments=
 and resources if the comments (annotations) contain any privileged informa=
tion. However, guessing or brute-forcing resource UUIDs are generally hard =
to impossible and access to listing or adding comments isn't same as access=
 to CloudStack resources, making this issue of very low severity and genera=
l low impact.


CloudStack admins may also disallow listAnnotations and addAnnotation API a=
ccess to non-admin roles in their environment as an interim measure.

Credit:

Alex Perrakis <alexperrakis1@gmail.com> (reporter)
Efstratios Chatzoglou <efchatzoglou@gmail.com> (reporter)

References:

https://cloudstack.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-22828

