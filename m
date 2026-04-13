Received: (qmail 10088 invoked by uid 550); 13 Apr 2026 14:04:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7441 invoked from network); 13 Apr 2026 12:24:14 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Zhenxu Ke <kezhenxu94@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <d704a6ae-5cda-8c75-f17f-634707537a94@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 13 Apr 2026 12:24:02 +0000
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

https://lists.apache.org/thread/sl2x2tx8y007x0mo746yddx2lvnv9tcr
https://skywalking.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-54057

