Received: (qmail 32533 invoked by uid 550); 16 Nov 2024 14:05:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3541 invoked from network); 16 Nov 2024 09:43:00 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Chao Gong <gongchao@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <243e28be-4eb7-7986-e810-b5a041f40ba2@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sat, 16 Nov 2024 09:42:48 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-45505: Apache HertzBeat (incubating): Exists Native Deser
 RCE and file writing vulnerabilities 

Severity: moderate

Affected versions:

- Apache HertzBeat (incubating) before 1.6.1

Description:

Improper Neutralization of Special Elements used in a Command ('Command Inj=
ection') vulnerability in Apache HertzBeat (incubating).

This vulnerability can only be exploited by authorized attackers.
This issue affects Apache HertzBeat (incubating): before 1.6.1.

Users are recommended to upgrade to version 1.6.1, which fixes the issue.

Credit:

Unam4 (finder)
Springkilll (finder)
yemoli (finder)
yulate (finder)

References:

https://www.cve.org/CVERecord?id=3DCVE-2024-45505

