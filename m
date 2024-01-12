Received: (qmail 25999 invoked by uid 550); 12 Jan 2024 16:21:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25691 invoked from network); 12 Jan 2024 16:20:14 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Brian Demers <bdemers@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <a31603f8-fd7f-d1af-31bc-9abaffb6adba@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 12 Jan 2024 16:21:39 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-46749: Apache Shiro before 1.130 or 2.0.0-alpha-4, may be
 susceptible to a path traversal attack that results in an authentication
 bypass when used together with path rewriting  

Severity: low

Affected versions:

- Apache Shiro before 1.13.0
- Apache Shiro 2.0.0-alpha-1 before 2.0.0-alpha-4

Description:

Apache Shiro before 1.130 or 2.0.0-alpha-4, may be susceptible to a path tr=
aversal attack that results in an authentication bypass when used together =
with path rewriting=20

Mitigation: Update to Apache Shiro 1.13.0+ or 2.0.0-alpha-4+, or ensure `bl=
ockSemicolon` is enabled (this is the default).

References:

https://shiro.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-46749

