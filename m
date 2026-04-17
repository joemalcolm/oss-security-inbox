Received: (qmail 28658 invoked by uid 550); 17 Apr 2026 08:34:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 26242 invoked from network); 17 Apr 2026 08:17:06 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Luke Chen <showuon@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <b76c9d86-87ae-a60c-6b38-c968809df9c8@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 17 Apr 2026 08:15:56 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-33557: Apache Kafka: Missing JWT token validation in
 OAUTHBEARER authentication 

Severity: important=20

Affected versions:

- Apache Kafka 4.1.0 through 4.1.1

Description:

A possible security vulnerability has been identified in Apache Kafka.

By default, the broker property `sasl.oauthbearer.jwt.validator.class` is=
=C2=A0set to `org.apache.kafka.common.security.oauthbearer.DefaultJwtValida=
tor`. It accepts any JWT token without validating its=C2=A0signature, issue=
r, or audience. An attacker can generate a JWT=C2=A0token from any issuer w=
ith the `preferred_username` set to any user, and the broker will accept it.

We advise the Kafka users using kafka v4.1.0 or v4.1.1 to set the config `s=
asl.oauthbearer.jwt.validator.class` to `org.apache.kafka.common.security.o=
authbearer.BrokerJwtValidator` explicitly to avoid this vulnerability. Sinc=
e Kafka v4.1.2 and v4.2.0 and later, the issue is fixed and will correctly =
validate the JWT token.

Credit:

=D0=9F=D0=B0=D0=B2=D0=B5=D0=BB =D0=A0=D0=BE=D0=BC=D0=B0=D0=BD=D0=BE=D0=B2 <=
promanov1994@gmail.com> (finder)

References:

https://kafka.apache.org/cve-list
https://kafka.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-33557

