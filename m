Received: (qmail 22281 invoked by uid 550); 21 Jul 2025 12:51:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3819 invoked from network); 21 Jul 2025 07:24:56 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Andy Seaborne <andy@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <27ef3844-0825-d242-803f-cdd000a57fe2@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 21 Jul 2025 07:23:02 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-50151: Apache Jena: Configuration files uploaded by
 administrative users are not check properly 

Severity: important=20

Affected versions:

- Apache Jena through <=3D 5.4.0

Description:

File access paths in configuration files uploaded by users with administrat=
or access are not validated.

This issue affects Apache Jena version up to 5.4.0.

Users are recommended to upgrade to version 5.5.0, which does not allow arb=
itrary configuration upload.

References:

https://jena.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-50151

