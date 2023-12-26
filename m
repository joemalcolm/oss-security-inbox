Received: (qmail 28379 invoked by uid 550); 26 Dec 2023 13:10:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14204 invoked from network); 26 Dec 2023 10:16:43 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Nicolas Malin <nmalin@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <58d8d5e1-bb9d-afb1-7606-593067da71fb@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 26 Dec 2023 10:17:25 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-50968: Apache OFBiz: Arbitrary file properties reading
 and SSRF attack 

Severity: important

Affected versions:

- Apache OFBiz through 18.12.10

Description:

Arbitrary file properties reading vulnerability in Apache Software Foundati=
on Apache OFBiz when user operates an uri call without authorizations.

The same uri can be operated to realize a SSRF attack also  without  author=
izations.

Users are recommended to upgrade to version 18.12.11, which fixes this issu=
e.

Credit:

Yun Peng - =E9=83=AD =E8=BF=90=E9=B9=8F <puata123@outlook.com> (finder)

References:

https://ofbiz.apache.org/download.html
https://ofbiz.apache.org/security.html
https://ofbiz.apache.org/release-notes-18.12.11.html
https://issues.apache.org/jira/browse/OFBIZ-12875
https://ofbiz.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-50968

