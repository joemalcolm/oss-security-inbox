Received: (qmail 15507 invoked by uid 550); 28 Nov 2023 16:41:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14184 invoked from network); 28 Nov 2023 16:40:51 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <47fc5eca-ee4a-79fb-abb4-e2d5e3c8345c@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 28 Nov 2023 16:39:26 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-42504: Apache Superset: Lack of rate limiting allows for
 possible denial of service 

Affected versions:

- Apache Superset before 3.0.0

Description:

An authenticated malicious user could initiate multiple concurrent requests=
, each requesting multiple dashboard exports, leading to a possible denial =
of service.

This issue affects Apache Superset: before 3.0.0

Credit:

Amit Laish =E2=80=93 GE Vernova (finder)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-42504

