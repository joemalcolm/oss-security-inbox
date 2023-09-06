Received: (qmail 5989 invoked by uid 550); 6 Sep 2023 09:58:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5191 invoked from network); 6 Sep 2023 09:21:26 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <9a2c2f90-582b-dfb7-058e-70f58acbae7d@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 06 Sep 2023 09:21:13 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-27526: Apache Superset: Improper Authorization check on
 import charts 

Affected versions:

- Apache Superset through 2.1.0

Description:

A non Admin authenticated user could incorrectly create resources using the=
 import charts feature, on Apache Superset up to and including 2.1.0.

Credit:

NTT DATA (finder)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-27526

