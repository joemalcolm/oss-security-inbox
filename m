Received: (qmail 9845 invoked by uid 550); 26 Jan 2026 16:46:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19807 invoked from network); 26 Jan 2026 11:28:21 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Arnout Engelen <engelen@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <b389fa46-6921-b538-e09a-37f6fc65f501@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 26 Jan 2026 11:28:09 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2016-15057: Apache Continuum: Command injection leading to RCE
 

Severity: important=20

Affected versions:

- Apache Continuum (org.apache.continuum:continuum): all versions

Description:

** UNSUPPORTED WHEN ASSIGNED ** Improper Neutralization of Special Elements=
 used in a Command ('Command Injection') vulnerability in Apache Continuum.

This issue affects Apache Continuum: all versions.

Attackers with access to the installations REST API can use this to invoke =
arbitrary commands on the server.

As this project is retired, we do not plan to release a version that fixes =
this issue. Users are recommended to find an alternative or restrict access=
 to the instance to trusted users.

NOTE: This vulnerability only affects products that are no longer supported=
 by the maintainer.

References:

https://www.apache.org/security/
https://www.cve.org/CVERecord?id=3DCVE-2016-15057

