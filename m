Received: (qmail 26129 invoked by uid 550); 9 Jun 2025 14:58:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11865 invoked from network); 9 Jun 2025 11:47:20 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Luke Chen <showuon@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <aa20713e-0b1f-29d3-f967-72322d335560@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 09 Jun 2025 11:44:50 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-27818: Apache Kafka: Possible RCE attack via SASL JAAS
 LdapLoginModule configuration 

Severity: important=20

Affected versions:

- Apache Kafka 2.3.0 through 3.9.0

Description:

A possible security vulnerability has been identified in Apache Kafka.
This requires access to a alterConfig to the=C2=A0cluster resource, or Kafk=
a Connect worker, and the ability to create/modify connectors on it with an=
 arbitrary Kafka client SASL JAAS config
and a SASL-based security protocol, which has been possible on Kafka cluste=
rs since Apache Kafka 2.0.0 (Kafka Connect 2.3.0).
When configuring the broker via config file or AlterConfig command, or conn=
ector via the Kafka Kafka Connect REST API, an authenticated operator=C2=A0=
can set the `sasl.jaas.config`
property for any of the connector's Kafka clients to "com.sun.security.auth=
.module.LdapLoginModule", which can be done via the
`producer.override.sasl.jaas.config`, `consumer.override.sasl.jaas.config`,=
 or `admin.override.sasl.jaas.config` properties.
This will allow the server to connect to the attacker's LDAP server
and deserialize the LDAP response, which the attacker can use to execute ja=
va deserialization gadget chains on the Kafka connect server.
Attacker can cause unrestricted deserialization of untrusted data (or) RCE =
vulnerability when there are gadgets in the classpath.

Since Apache Kafka 3.0.0, users are allowed to specify these properties in =
connector configurations for Kafka Connect clusters running with out-of-the=
-box
configurations. Before Apache Kafka 3.0.0, users may not specify these prop=
erties unless the Kafka Connect cluster has been reconfigured with a connec=
tor
client override policy that permits them.

Since Apache Kafka 3.9.1/4.0.0, we have added a system property ("-Dorg.apa=
che.kafka.disallowed.login.modules") to disable the problematic login modul=
es usage
in SASL JAAS configuration. Also by default "com.sun.security.auth.module.J=
ndiLoginModule,com.sun.security.auth.module.LdapLoginModule" are disabled i=
n Apache Kafka Connect 3.9.1/4.0.0.=20

We advise the Kafka users to validate connector configurations and only all=
ow trusted LDAP configurations. Also examine connector dependencies for=20
vulnerable versions and either upgrade their connectors, upgrading that spe=
cific dependency, or removing the connectors as options for remediation. Fi=
nally,
in addition to leveraging the "org.apache.kafka.disallowed.login.modules" s=
ystem property, Kafka Connect users can also implement their own connector
client config override policy, which can be used to control which Kafka cli=
ent properties can be overridden directly in a connector config and which c=
annot.

Credit:

=E7=BD=97=E9=91=AB <lx2317103712@gmail.com> (finder)
ra1lgun <ra1lgun@foxmail.com> (finder)

References:

https://kafka.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-27818

