Received: (qmail 3539 invoked by uid 550); 6 Sep 2023 09:58:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28223 invoked from network); 6 Sep 2023 09:11:16 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <d4c80a00-82dd-d901-70dc-a7a42f0a83f2@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 06 Sep 2023 09:10:14 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-36388: Apache Superset: Improper API permission for low
 privilege users allows for SSRF 

Affected versions:

- Apache Superset through 2.1.0

Description:

Improper REST API permission in Apache Superset up to and including 2.1.0 a=
llows for an authenticated Gamma users to test network connections, possibl=
e SSRF.

Credit:

https://github.com/vin01 (finder)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-36388

