Received: (qmail 13897 invoked by uid 550); 28 Nov 2023 16:24:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18301 invoked from network); 28 Nov 2023 16:20:30 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <86140d54-a24f-6135-6f1c-d64a241a1006@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 28 Nov 2023 16:20:15 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-42505: Apache Superset: Sensitive information disclosure
 on db connection details 

Affected versions:

- Apache Superset before 3.0.0

Description:

An authenticated user with read permissions on database connections metadat=
a could potentially access sensitive information such as the connection's u=
sername.

This issue affects Apache Superset before 3.0.0.

Credit:

 Leonel John Erik Angel Torres (finder)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-42505

