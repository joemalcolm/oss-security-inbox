Received: (qmail 26523 invoked by uid 550); 12 Dec 2025 16:00:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26096 invoked from network); 12 Dec 2025 15:02:56 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Huajie Wang <benjobs@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <ff48fbea-ed16-7be7-bc53-cfa6d54be152@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 12 Dec 2025 15:01:04 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-54981: Apache StreamPark: Weak Encryption Algorithm in
 StreamPark 

Severity: important=20

Affected versions:

- Apache StreamPark 2.0.0 before 2.1.7

Description:

Weak Encryption Algorithm in StreamPark,=C2=A0The use of an AES cipher in E=
CB mode and a weak random number generator for encrypting sensitive data, i=
ncluding JWT tokens, may have risked exposing sensitive authentication data

This issue affects Apache StreamPark: from 2.0.0 before 2.1.7.

Users are recommended to upgrade to version 2.1.7, which fixes the issue.

Credit:

omkar parkhe <omkarparth@gmail.com> (finder)

References:

https://streampark.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2025-54981

