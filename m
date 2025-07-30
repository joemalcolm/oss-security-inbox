Received: (qmail 19601 invoked by uid 550); 30 Jul 2025 14:58:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17621 invoked from network); 30 Jul 2025 13:21:58 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Arnout Engelen <engelen@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <f3ea942d-ef80-ae1d-1dac-c205352195dd@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 30 Jul 2025 13:21:47 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-54656: Apache Struts Extras: Improper Output
 Neutralization for Logs 

Severity: low=20

Affected versions:

- Apache Struts Extras (org.apache.struts:struts-extras) before 2

Description:

** UNSUPPORTED WHEN ASSIGNED ** Improper Output Neutralization for Logs vul=
nerability in Apache Struts.

This issue affects Apache Struts Extras: before 2.

When using LookupDispatchAction, in some cases, Struts may print untrusted =
input to the logs without any filtering. Specially-crafted input may lead t=
o log output where part of the message masquerades as a separate log line, =
confusing consumers of the logs (either human or automated).=C2=A0

As this project is retired, we do not plan to release a version that fixes =
this issue. Users are recommended to find an alternative or restrict access=
 to the instance to trusted users.

NOTE: This vulnerability only affects products that are no longer supported=
 by the maintainer.

Credit:

Ryan Murphy of HeroDevs (finder)

References:

https://struts.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-54656

