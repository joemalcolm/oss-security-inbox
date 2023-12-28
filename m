Received: (qmail 28274 invoked by uid 550); 28 Dec 2023 20:30:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27943 invoked from network); 28 Dec 2023 20:29:45 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Arrigo Marchiori <ardovm@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <ae91bb8a-9155-6c71-ea73-20df3905202d@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 28 Dec 2023 20:30:33 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-47804: Apache OpenOffice: Macro URL arbitrary script
 execution 

Severity: important

Affected versions:

- Apache OpenOffice through 4.1.15

Description:

Apache OpenOffice documents can contain links that call internal macros wit=
h arbitrary arguments. Several URI Schemes are defined for this purpose.

Links can be activated by clicks, or by automatic document events.

The execution of such links must be subject to user approval.

In the affected versions of OpenOffice, approval for certain links is not r=
equested; when activated, such links could therefore result in arbitrary sc=
ript execution.

This is a corner case of CVE-2022-47502.

Credit:

Amel BOUZIANE-LEBLOND aka Icare Bug Bounty Hunter (reporter)

References:

https://openoffice.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-47804

