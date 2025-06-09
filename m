Received: (qmail 27934 invoked by uid 550); 9 Jun 2025 14:58:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5721 invoked from network); 9 Jun 2025 11:52:02 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Luke Chen <showuon@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <663a6e87-b184-0f42-0080-5415c5d6d297@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 09 Jun 2025 11:49:14 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-27819: Apache Kafka: Possible RCE/Denial of service
 attack via SASL JAAS JndiLoginModule configuration 

Severity: important=20

Affected versions:

- Apache Kafka 2.0.0 through 3.3.2

Description:

In CVE-2023-25194, we announced the RCE/Denial of service attack via SASL J=
AAS JndiLoginModule configuration in Kafka Connect API. But not only Kafka =
Connect API is vulnerable to this attack, the Apache Kafka brokers also hav=
e this vulnerability. To exploit this vulnerability, the attacker needs to =
be able to connect to the Kafka cluster and have the AlterConfigs permissio=
n on the cluster resource.


Since Apache Kafka 3.4.0, we have added a system property ("-Dorg.apache.ka=
fka.disallowed.login.modules") to disable the problematic login modules usa=
ge in SASL JAAS configuration. Also by default "com.sun.security.auth.modul=
e.JndiLoginModule" is disabled in Apache Kafka 3.4.0, and "com.sun.security=
.auth.module.JndiLoginModule,com.sun.security.auth.module.LdapLoginModule" =
is disabled by default in in Apache Kafka 3.9.1/4.0.0

Credit:

Ziyang Li (finder)
Ji'an Zhou (finder)
Ying Zhu (finder)

References:

https://kafka.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-27819

