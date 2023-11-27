Received: (qmail 19522 invoked by uid 550); 27 Nov 2023 09:54:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5758 invoked from network); 27 Nov 2023 09:44:47 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <add56994-a1d9-5545-dbb9-6a37ba4ea926@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 27 Nov 2023 09:44:33 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-43701: Apache Superset: Stored XSS on API endpoint 

Affected versions:

- Apache Superset before 2.1.2

Description:

Improper payload validation and an improper REST API response type, made it=
 possible for an authenticated malicious actor to store malicious code into=
 Chart's metadata, this code could get executed if a user specifically acce=
sses a specific deprecated API endpoint.=C2=A0This issue affects Apache Sup=
erset versions prior to 2.1.2.=C2=A0
Users are recommended to upgrade to version 2.1.2, which fixes this issue.

Credit:

Nick Barnes, Praetorian Security Inc. (reporter)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-43701

