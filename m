Received: (qmail 24202 invoked by uid 550); 9 Jun 2025 14:58:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30671 invoked from network); 9 Jun 2025 11:48:47 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Luke Chen <showuon@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <4fd90015-fe56-728a-4413-4fc0b4b22b6d@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 09 Jun 2025 11:42:21 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-27817: Apache Kafka Client: Arbitrary file read and SSRF
 vulnerability 

Severity: important=20

Affected versions:

- Apache Kafka Client 3.1.0 through 3.9.0

Description:

A possible arbitrary file read and SSRF vulnerability has been identified i=
n Apache Kafka Client. Apache Kafka Clients accept configuration data for s=
etting the SASL/OAUTHBEARER connection with the brokers, including "sasl.oa=
uthbearer.token.endpoint.url" and "sasl.oauthbearer.jwks.endpoint.url". Apa=
che Kafka allows clients to read an arbitrary file and return the content i=
n the error log, or sending requests to an unintended location. In applicat=
ions where Apache Kafka Clients configurations can be specified by an untru=
sted party, attackers may use the "sasl.oauthbearer.token.endpoint.url" and=
 "sasl.oauthbearer.jwks.endpoint.url" configuratin to read arbitrary conten=
ts of the disk and environment variables or make requests to an unintended =
location. In particular, this flaw may be used in Apache Kafka Connect to e=
scalate from REST API access to filesystem/environment/URL access, which ma=
y be undesirable in certain environments, including SaaS products.=20

Since Apache Kafka 3.9.1/4.0.0, we have added a system property ("-Dorg.apa=
che.kafka.sasl.oauthbearer.allowed.urls") to set the allowed urls in SASL J=
AAS configuration. In 3.9.1, it accepts all urls by default for backward co=
mpatibility. However in 4.0.0 and newer, the default value is empty list an=
d users have to set the allowed urls explicitly.

Credit:

=E7=BD=97=E9=91=AB <lx2317103712@gmail.com> (finder)
1ue (https://github.com/luelueking) (finder)
4ra1n (https://github.com/4ra1n) (finder)
enokiy <846800628@qq.com> (finder)
VulTeam of ThreatBook (finder)

References:

https://kafka.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-27817

