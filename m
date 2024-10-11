Received: (qmail 3747 invoked by uid 550); 12 Oct 2024 00:27:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24365 invoked from network); 11 Oct 2024 21:51:48 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: "David M. Johnson" <snoopdave@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <f4ffd3f9-6884-1f24-fe24-f16bb0c716e3@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 11 Oct 2024 21:51:39 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-46911: Apache Roller: Weakness in CSRF protection allows
 privilege escalation 

Severity: important

Affected versions:

- Apache Roller 1.0.0 before 6.1.4

Description:

Cross-site Resource Forgery (CSRF), Privilege escalation vulnerability in A=
pache Roller. On multi-blog/user Roller websites, by default weblog owners =
are trusted to publish arbitrary weblog content and this combined with a de=
ficiency in Roller's CSRF protections allowed an escalation of privileges a=
ttack. This issue affects Apache Roller before 6.1.4.

Roller users who run multi-blog/user Roller websites are recommended to upg=
rade to version 6.1.4, which fixes the issue.

Roller 6.1.4 release announcement:=C2=A0 https://lists.apache.org/thread/3c=
3f6rwqptyw6wdc95654fq5vlosqdpw

Credit:

Chi Tran from EEVEE (finder)

References:

https://roller.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-46911

