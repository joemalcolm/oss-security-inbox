Received: (qmail 1059 invoked by uid 550); 4 May 2022 21:33:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20046 invoked from network); 4 May 2022 21:26:59 -0000
Content-Type: text/plain; charset=utf-8
From: Andy Seaborne <andy@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <6fb88b6d-9aa2-cf2c-5b4e-4168425ba462@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 04 May 2022 21:26:45 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-28890: Apache Jena: Processing external DTDs 

Severity: medium

Description:

A vulnerability in the RDF/XML parser of Apache Jena allows an attacker to =
cause an external DTD to be retrieved.  This issue affects Apache Jena vers=
ion 4.4.0 and prior versions.  Apache Jena 4.2.x and 4.3.x do not allow ext=
ernal entities.

Mitigation:

Users are advised to upgrade to Apache Jena 4.5.0 or later.

Credit:

Apache Jena would like to thank Feras Daragma, Avishag Shapira & Amit Laish=
 (GE Digital, Cyber Security Lab) for their report.

