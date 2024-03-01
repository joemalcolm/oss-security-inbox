Received: (qmail 22172 invoked by uid 550); 1 Mar 2024 22:41:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22288 invoked from network); 1 Mar 2024 10:41:06 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Arnout Engelen <engelen@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <8e0de4a6-b56c-a4e2-dc20-c256abb7b2c9@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 01 Mar 2024 10:44:35 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-27138: Apache Archiva: disabling user registration is not
 effective 

Severity: moderate

Affected versions:

- Apache Archiva 2.0.0 or later

Description:

** UNSUPPORTED WHEN ASSIGNED ** Incorrect Authorization vulnerability in Ap=
ache Archiva.

Apache Archiva has a setting to disable user registration, however this res=
triction can be bypassed. As Apache Archiva has been retired, we do not exp=
ect to release a version of Apache Archiva that fixes this issue. You are r=
ecommended to look into migrating to a different solution, or isolate your =
instance from any untrusted users.

NOTE: This vulnerability only affects products that are no longer supported=
 by the maintainer

Credit:

Florian Hauser, @frycos (reporter)

References:

https://archiva.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-27138

