Received: (qmail 1998 invoked by uid 550); 19 Nov 2023 19:17:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9717 invoked from network); 19 Nov 2023 18:42:50 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: "Richard N. Hillegas" <rhillegas@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <1a27eef3-717e-5c99-b40f-5165d33a59ec@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 19 Nov 2023 18:42:36 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-46337: Apache Derby: LDAP injection vulnerability in
 authenticator 

Severity: low

Affected versions:

- Apache Derby 10.1.1.0 through 10.16.1.1

Description:

A cleverly devised username might bypass LDAP authentication checks. In=20
LDAP-authenticated Derby installations, this could let an attacker fill=20
up the disk by creating junk Derby databases. In LDAP-authenticated=20
Derby installations, this could also allow the attacker to execute=20
malware which was visible to and executable by the account which booted=20
the Derby server. In LDAP-protected databases which weren't also=20
protected by SQL GRANT/REVOKE authorization, this vulnerability could=20
also let an attacker view and corrupt sensitive data and run sensitive=20
database functions and procedures.

Mitigation:

Users should upgrade to Java 21 and Derby 10.17.1.0.

Alternatively, users who wish to remain on older Java versions should=20
build their own Derby distribution from one of the release families to=20
which the fix was backported: 10.16, 10.15, and 10.14. Those are the=20
releases which correspond, respectively, with Java LTS versions 17, 11,=20
and 8.

This issue is being tracked as DERBY-7147=20

Credit:

This issue was discovered by =EF=BB=BF4ra1n and Y4tacker, who also proposed=
 the fix. (finder)

References:

https://db.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2022-46337
https://issues.apache.org/jira/browse/DERBY-7147

