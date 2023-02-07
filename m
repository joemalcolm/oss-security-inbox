Received: (qmail 1344 invoked by uid 550); 7 Feb 2023 19:25:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17701 invoked from network); 7 Feb 2023 18:11:56 -0000
Authentication-Results: apache.org; auth=none
X-Gm-Message-State: AO0yUKW77UHYWvkLVCtLw3JjznMvhUQZb4f/j6nHdR28U1Vwe9LzsFUK
	G8l6RZdjvEGHA53tIGBjb5dNLbyakGHDTsmBNdk=
X-Google-Smtp-Source: AK7set+NJTRftzZkpe15z4uPmTJm2ZcY6xegKFw5pZ8DrkrHNMf4sWwR9xqlwvHoKjafmGqznjknfCSa4iYb8g4fN2U=
X-Received: by 2002:a50:d51c:0:b0:4aa:9fdd:c036 with SMTP id
 u28-20020a50d51c000000b004aa9fddc036mr1104860edi.32.1675793501534; Tue, 07
 Feb 2023 10:11:41 -0800 (PST)
MIME-Version: 1.0
From: Manikumar <manikumar@apache.org>
Date: Tue, 7 Feb 2023 23:41:30 +0530
X-Gmail-Original-Message-ID: <CAMVt_Ax_yicahFHffnaFSXQyW8xOthwvy0+TSrmGZFLCh=JBWw@mail.gmail.com>
Message-ID: <CAMVt_Ax_yicahFHffnaFSXQyW8xOthwvy0+TSrmGZFLCh=JBWw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] CVE-2023-25194: Apache Kafka: Possible RCE/Denial of service attack
 via SASL JAAS JndiLoginModule configuration using Kafka Connect

Severity: important

Description:

A possible security vulnerability has been identified in Apache Kafka
Connect. This requires access to a Kafka Connect worker,
and the ability to create/modify connectors on it with an arbitrary
Kafka client SASL JAAS config and a SASL-based security protocol,
which has been possible on Kafka Connect clusters since Apache Kafka
2.3.0. When configuring the connector via the Kafka Connect REST API,
an authenticated operator can set the `sasl.jaas.config` property for any
of the connector's Kafka clients to
"com.sun.security.auth.module.JndiLoginModule",
which can be done via the `producer.override.sasl.jaas.config`,
`consumer.override.sasl.jaas.config`, or
`admin.override.sasl.jaas.config` properties.

This will allow the server to connect to the attacker's LDAP server
and deserialize the LDAP response, which the attacker can use to
execute java deserialization gadget chains on the Kafka connect
server. Attackers can cause unrestricted deserialization of untrusted
data (or) RCE vulnerability when there are gadgets in the classpath.

Since Apache Kafka 3.0.0, users are allowed to specify these properties
in connector configurations for Kafka Connect clusters running with
out-of-the-box configurations. Before Apache Kafka 3.0.0, users may not
specify these properties unless the Kafka Connect cluster has been reconfig=
ured
with a connector client override policy that permits them.

Since Apache Kafka 3.4.0, we have added a system property
("-Dorg.apache.kafka.disallowed.login.modules") to disable the
problematic login modules usage in SASL JAAS configuration. Also by
default "com.sun.security.auth.module.JndiLoginModule" is disabled
in Apache Kafka 3.4.0.

We advise the Kafka Connect users to validate connector configurations
and only allow trusted JNDI configurations. Also examine connector
dependencies for vulnerable versions and either upgrade their
connectors, upgrading that specific dependency, or removing the
connectors as options for remediation. Finally, in addition to leveraging t=
he
"org.apache.kafka.disallowed.login.modules" system property, Kafka Connect =
users
can also implement their own connector client config override policy, which=
 can
be used to control which Kafka client properties can be overridden directly
in a connector config and which cannot.

Credit:

Apache Kafka would like to thank Jari J=C3=A4=C3=A4skel=C3=A4
(https://hackerone.com/reports/1529790)
and 4ra1n and Y4tacker (they found vulnerabilities in other Apache projects.
After discussion between PMC of the two projects, it was finally
confirmed that it was the vulnerability of Kafka then they reported it to u=
s)


References:

https://kafka.apache.org/cve-list
https://kafka.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-25194
