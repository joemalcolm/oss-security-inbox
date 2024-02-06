Received: (qmail 32228 invoked by uid 550); 6 Feb 2024 12:26:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32164 invoked from network); 6 Feb 2024 09:09:29 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Carsten Ziegeler <cziegeler@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <c6990b6e-70c0-b937-eda2-67b6c24f79b2@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 06 Feb 2024 09:11:56 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-23673: Apache Sling Servlets Resolver: Malicious code
 execution via path traversal 

Affected versions:

- Apache Sling Servlets Resolver before 2.11.0

Description:

Malicious code execution via path traversal in Apache Software Foundation A=
pache Sling Servlets Resolver.This issue affects all version of Apache Slin=
g Servlets Resolver before 2.11.0. However, whether a system is vulnerable =
to this attack depends on the exact configuration of the system.
If the system is vulnerable, a user with write access to the repository mig=
ht be able to trick the Sling Servlet Resolver to load a previously uploade=
d script.=C2=A0

Users are recommended to upgrade to version 2.11.0, which fixes this issue.=
 It is recommended to upgrade, regardless of whether your system configurat=
ion currently allows this attack or not.

This issue is being tracked as SLING-12233=20

References:

https://sling.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-23673
https://issues.apache.org/jira/browse/SLING-12233

