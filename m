Received: (qmail 5768 invoked by uid 550); 20 Jun 2023 19:44:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30657 invoked from network); 20 Jun 2023 19:33:59 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Christopher Tubbs <ctubbsii@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <5a9446f4-8267-e703-421b-79b300b93ad6@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 20 Jun 2023 19:33:44 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-34340: Apache Accumulo: Accumulo 2.1.0 may incorrectly
 validate cached credentials 

Severity: critical

Affected versions:

- Apache Accumulo 2.1.0 before 2.1.1

Description:

Improper Authentication vulnerability in Apache Software Foundation Apache =
Accumulo.
This issue affects Apache Accumulo: 2.1.0.

Accumulo 2.1.0 contains a defect in the user authentication process that ma=
y succeed when invalid credentials are provided. Users are advised to upgra=
de to 2.1.1.

References:

https://accumulo.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-34340

