Received: (qmail 13723 invoked by uid 550); 21 Jul 2025 12:50:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9781 invoked from network); 21 Jul 2025 07:23:39 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Andy Seaborne <andy@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <2c219aa8-e149-db8a-fa32-ff9b3fc32369@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 21 Jul 2025 07:22:53 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-49656: Apache Jena: Administrative users can create files
 outside the server directory space via the admin UI 

Severity: important=20

Affected versions:

- Apache Jena through 5.4.0

Description:

Users with administrator access can create databases files outside the file=
s area of the Fuseki server.

This issue affects Apache Jena version up to 5.4.0.

Users are recommended to upgrade to version 5.5.0, which fixes the issue.

Credit:

Noriaki Iwasaki; Cyber Defense Institute, Inc (reporter)

References:

https://jena.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-49656

