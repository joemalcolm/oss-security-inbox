Received: (qmail 26043 invoked by uid 550); 12 Dec 2025 16:00:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30501 invoked from network); 12 Dec 2025 14:59:42 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Huajie Wang <benjobs@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <8d3fb2d0-ddeb-63da-1f6a-4c430a4a407d@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 12 Dec 2025 14:57:25 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-54947: Apache StreamPark: Use hard-coded key
 vulnerability 

Severity: important=20

Affected versions:

- Apache StreamPark 2.0.0 before 2.1.7

Description:

In Apache StreamPark versions 2.0.0 through 2.1.7, a security vulnerability=
 involving a hard-coded encryption key exists. This vulnerability occurs be=
cause the system uses a fixed, immutable key for encryption instead of dyna=
mically generating or securely configuring the key. Attackers may obtain th=
is key through reverse engineering or code analysis, potentially decrypting=
 sensitive data or forging encrypted information, leading to information di=
sclosure or unauthorized system access.

This issue affects Apache StreamPark: from 2.0.0 before 2.1.7.

Users are recommended to upgrade to version 2.1.7, which fixes the issue.

Credit:

omkarparth@gmail.com (finder)

References:

https://streampark.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2025-54947

