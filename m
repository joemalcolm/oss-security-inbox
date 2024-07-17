Received: (qmail 26597 invoked by uid 550); 17 Jul 2024 18:26:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24119 invoked from network); 17 Jul 2024 18:24:23 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Eric Covener <covener@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <541b38a0-dcf7-0741-98b8-b5e054f87bf0@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 17 Jul 2024 18:23:15 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-40725: Apache HTTP Server: source code disclosure with
 handlers configured via AddType 

Severity: important

Affected versions:

- Apache HTTP Server 2.4.60 through 2.4.61

Description:

A partial fix for=C2=A0 CVE-2024-39884 in the core of Apache HTTP Server 2.=
4.61 ignores some use of the legacy content-type based configuration of han=
dlers. "AddType" and similar configuration, under some circumstances where =
files are requested indirectly, result in source code disclosure of local c=
ontent. For example, PHP scripts may be served instead of interpreted.

Users are recommended to upgrade to version 2.4.62, which fixes this issue.

References:

https://httpd.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-40725

Timeline:

2024-07-09: reported

