Received: (qmail 7335 invoked by uid 550); 6 Sep 2023 09:58:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9532 invoked from network); 6 Sep 2023 09:26:24 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <06c7e092-7ce4-3857-e43e-38c3bda87580@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 06 Sep 2023 09:26:10 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-39264: Apache Superset: Stack traces enabled by default 

Affected versions:

- Apache Superset through 2.1.0

Description:

By default, stack traces for errors were enabled, which resulted in the exp=
osure of internal traces on REST API endpoints to users.=C2=A0This vulnerab=
ility exists in Apache Superset versions up to and including 2.1.0.

Credit:

Miguel Segovia Gil (finder)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-39264

