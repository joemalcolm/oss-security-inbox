Received: (qmail 7542 invoked by uid 550); 27 Nov 2025 02:23:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32127 invoked from network); 27 Nov 2025 02:18:08 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Zhenxu Ke <kezhenxu94@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <834a7c45-2fcd-2232-8f38-88b6353625cd@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 27 Nov 2025 02:17:59 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-54057: Apache SkyWalking: Stored XSS vulnerability 

Severity: important=20

Affected versions:

- Apache SkyWalking through 10.2.0

Description:

Improper Neutralization of Script-Related HTML Tags in a Web Page (Basic XS=
S) vulnerability in Apache SkyWalking.

This issue affects Apache SkyWalking: <=3D 10.2.0.

Users are recommended to upgrade to version 10.3.0, which fixes the issue.

Credit:

Vinh Nguy=E1=BB=85n Quang (vinhnq4902@gmail.com) (reporter)

References:

https://skywalking.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-54057

