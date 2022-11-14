Received: (qmail 20398 invoked by uid 550); 14 Nov 2022 15:36:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7601 invoked from network); 14 Nov 2022 15:26:59 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Rob Vesse <rvesse@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <f504671e-250d-f954-4f7b-39439e2cd429@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 14 Nov 2022 15:26:45 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-45136: JDBC Deserialisation in Apache Jena SDB 

Severity: low

Description:

** UNSUPPORTED WHEN ASSIGNED ** Apache Jena SDB 3.17.0 and earlier is vulne=
rable to a JDBC Deserialisation attack if the attacker is able to control t=
he JDBC URL used or cause the underlying database server to return maliciou=
s data.  The mySQL JDBC driver in particular is known to be vulnerable to t=
his class of attack.  As a result an application using Apache Jena SDB can =
be subject to RCE when connected to a malicious database server.

Apache Jena SDB has been EOL since December 2020 and users should migrate t=
o alternative options e.g. Apache Jena TDB 2.

Mitigation:

Apache Jena SDB has been EOL since December 2020, users should migrate to a=
lternative options from the Apache Jena project e.g. Apache Jena TDB 2 or f=
rom 3rd party vendors.


Users utilising Apache Jena SDB with mySQL should ensure they explicitly se=
t autoDeserialize=3Dfalse on their JDBC connection strings.  It is also rec=
ommended that users ensure that any ability to set the JDBC connection stri=
ng is limited to appropriate users.

Credit:

Apache Jena would like to thank Crilwa & LaNyer640 for reporting this issue

