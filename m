Received: (qmail 19985 invoked by uid 550); 9 Apr 2024 13:07:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15474 invoked from network); 9 Apr 2024 02:39:41 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jongyoul Lee <jongyoul@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <22bb5ba2-fd75-2c59-d9ef-da194f6be7bf@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Apr 2024 02:39:31 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-31863: Apache Zeppelin: Replacing other users notebook,
 bypassing any permissions 

Severity: moderate

Affected versions:

- Apache Zeppelin 0.10.1 before 0.11.0

Description:

Authentication Bypass by Spoofing vulnerability by replacing to exsiting no=
tes in Apache Zeppelin.This issue affects Apache Zeppelin: from 0.10.1 befo=
re 0.11.0.

Users are recommended to upgrade to version 0.11.0, which fixes the issue.

Credit:

Esa Hiltunen (finder)
https://teragrep.com (finder)

References:

https://zeppelin.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-31863

