Received: (qmail 17915 invoked by uid 550); 4 May 2026 16:09:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1121 invoked from network); 4 May 2026 14:16:24 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Eric Covener <covener@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <e6a48645-bb78-c3df-755f-56456a8e58f3@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 04 May 2026 14:15:25 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-29169: Apache HTTP Server: mod_dav_lock indirect lock
 crash 

Severity: low=20

Affected versions:

- Apache HTTP Server through 2.4.66

Description:

A NULL pointer dereference in mod_dav_lock in Apache HTTP Server 2.4.66 and=
 earlier may allow an attacker to crash the server with a malicious request=
.mod_dav_lock is not used internally by mod_dav or mod_dav_fs.

The only known use-case for mod_dav_lock was mod_dav_svn from Apache Subver=
sion earlier than version 1.2.0.

Users are recommended to upgrade to version 2.4.66, which fixes this issue,=
 or remove mod_dav_lock.

Credit:

Pavel Kohout, Aisle Research, Aisle.com (finder)

References:

https://httpd.apache.org/security/vulnerabilities_24.html
https://httpd.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-29169

Timeline:

2026-03-04: Report received
2026-05-04: 2.4.67 released
2026-05-04: fixed in 2.4.x by r1933354

