Received: (qmail 3903 invoked by uid 550); 6 Sep 2023 09:58:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1939 invoked from network); 6 Sep 2023 09:18:46 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <2bcf3e11-a838-b120-5902-48f8ec5d90a4@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 06 Sep 2023 09:17:37 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-27523: Apache Superset: Improper data permission
 validation on Jinja templated queries 

Affected versions:

- Apache Superset through 2.1.0

Description:

Improper data authorization check on Jinja templated queries in Apache Supe=
rset=C2=A0up to and including 2.1.0 allows for an authenticated user to iss=
ue queries on database tables they may not have access to.

Credit:

Jingjing Hu (finder)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-27523

