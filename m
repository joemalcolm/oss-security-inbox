Received: (qmail 29873 invoked by uid 550); 9 Apr 2025 13:45:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3470 invoked from network); 9 Apr 2025 10:59:58 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Lari Hotari <lhotari@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <4cee93e6-83c0-45a6-8cbc-baba76f07fa1@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 09 Apr 2025 10:59:04 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-30677: Apache Pulsar IO Kafka Connector, Apache Pulsar IO
 Kafka Connect Adaptor: Sensitive information logged in Pulsar's Apache
 Kafka Connectors 

Affected versions:

- Apache Pulsar IO Kafka Connector 2.3.0 before 3.0.11
- Apache Pulsar IO Kafka Connector 3.1.0 before 3.3.6
- Apache Pulsar IO Kafka Connector 4.0.0 before 4.0.4
- Apache Pulsar IO Kafka Connect Adaptor 2.3.0 before 3.0.11
- Apache Pulsar IO Kafka Connect Adaptor 3.1.0 before 3.3.6
- Apache Pulsar IO Kafka Connect Adaptor 4.0.0 before 4.0.4

Description:

Apache Pulsar contains multiple connectors for integrating with Apache Kafk=
a. The Pulsar IO Apache Kafka Source Connector, Sink Connector, and Kafka C=
onnect Adaptor Sink Connector log sensitive configuration properties in pla=
in text in application logs.


This vulnerability can lead to unintended exposure of credentials in log fi=
les, potentially allowing attackers with access to these logs to obtain Apa=
che Kafka credentials. The vulnerability's impact is limited by the fact th=
at an attacker would need access to the application logs to exploit this is=
sue.

This issue affects Apache Pulsar IO's Apache Kafka connectors in all versio=
ns before 3.0.11, 3.3.6, and 4.0.4.


3.0.x version users should upgrade to at least 3.0.11.

3.3.x version users should upgrade to at least 3.3.6.

4.0.x version users should upgrade to at least 4.0.4.


Users operating versions prior to those listed above should upgrade to the =
aforementioned patched versions or newer versions.

Credit:

Kyler Katz (finder)

References:

https://pulsar.apache.org/security/
https://pulsar.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-30677

