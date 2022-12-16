Received: (qmail 27956 invoked by uid 550); 16 Dec 2022 13:17:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 2044 invoked from network); 16 Dec 2022 12:49:31 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Arnout Engelen <engelen@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <caedcf4c-58a4-345d-41a1-a4e23be32780@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 16 Dec 2022 12:48:32 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-28655: Apache Zeppelin: Arbitrary file deletion
 vulnerability 

Severity: important

Description:

The improper Input Validation vulnerability in "=E2=80=9DMove folder to Tra=
sh=E2=80=9D feature of Apache Zeppelin allows an attacker to delete the arb=
itrary files.  This issue affects Apache Zeppelin Apache Zeppelin version 0=
.9.0 and prior versions.

Credit:

Kai Zhao (finder)

References:

https://zeppelin.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2021-28655

