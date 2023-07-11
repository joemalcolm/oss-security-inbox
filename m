Received: (qmail 14318 invoked by uid 550); 11 Jul 2023 16:20:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1738 invoked from network); 11 Jul 2023 15:48:33 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Dave Fisher <wave@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <3e0b0918-b02b-c7a9-af1f-4e08b44ed0dc@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 11 Jul 2023 15:48:17 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-30428: Apache Pulsar Broker: Incorrect Authorization
 Validation for Rest Producer 

Affected versions:

- Apache Pulsar Broker 2.9.0 through 2.9.5
- Apache Pulsar Broker 2.10.0 before 2.10.4
- Apache Pulsar Broker 2.11.0

Description:

Incorrect Authorization vulnerability in Apache Software Foundation Apache =
Pulsar Broker's Rest Producer allows authenticated user with a custom HTTP =
header to produce a message to any topic using the broker's admin role.
This issue affects Apache Pulsar Brokers: from 2.9.0 through 2.9.5, from 2.=
10.0 before 2.10.4, 2.11.0.

The vulnerability is exploitable when an attacker can connect directly to t=
he Pulsar Broker. If an attacker is connecting through the Pulsar Proxy, th=
ere is no known way to exploit this authorization vulnerability.

There are two known risks for affected users. First, an attacker could prod=
uce garbage messages to any topic in the cluster. Second, an attacker could=
 produce messages to the topic level policies topic for other tenants and i=
nfluence topic settings that could lead to exfiltration and/or deletion of =
messages for other tenants.

2.8 Pulsar Broker users and earlier are unaffected.
2.9 Pulsar Broker users should upgrade to one of the patched versions.
2.10 Pulsar Broker users should upgrade to at least 2.10.4.
2.11 Pulsar Broker users should upgrade to at least 2.11.1.
3.0 Pulsar Broker users are unaffected.

Credit:

Michael Marshall of DataStax (finder)

References:

https://pulsar.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-30428

