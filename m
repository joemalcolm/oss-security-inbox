Received: (qmail 30226 invoked by uid 550); 18 Nov 2024 19:02:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24011 invoked from network); 18 Nov 2024 18:41:23 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Greg Harris <gharris@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <1aaba0dd-1a3d-50f4-e803-84675dcce1cb@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 18 Nov 2024 18:39:08 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-31141: Apache Kafka Clients: Privilege escalation to
 filesystem read-access via automatic ConfigProvider 

Severity: moderate

Affected versions:

- Apache Kafka Clients 2.3.0 through 3.5.2
- Apache Kafka Clients 3.6.0 through 3.6.2
- Apache Kafka Clients 3.7.0 through 3.7.1

Description:

Files or Directories Accessible to External Parties, Improper Privilege Man=
agement vulnerability in Apache Kafka Clients.

Apache Kafka Clients accept configuration data for customizing behavior, an=
d includes ConfigProvider plugins in order to manipulate these configuratio=
ns. Apache Kafka also provides FileConfigProvider, DirectoryConfigProvider,=
 and EnvVarConfigProvider implementations which include the ability to read=
 from disk or environment variables.
In applications where Apache Kafka Clients configurations can be specified =
by an untrusted party, attackers may use these ConfigProviders to read arbi=
trary contents of the disk and environment variables.

In particular, this flaw may be used in Apache Kafka Connect to escalate fr=
om REST API access to filesystem/environment access, which may be undesirab=
le in certain environments, including SaaS products.
This issue affects Apache Kafka Clients: from 2.3.0 through 3.5.2, 3.6.2, 3=
.7.1.


Users with affected applications are recommended to upgrade kafka-clients t=
o version >=3D3.8.0, and set the JVM system property "org.apache.kafka.auto=
matic.config.providers=3Dnone".
Users of Kafka Connect with one of the listed ConfigProvider implementation=
s specified in their worker config are also recommended to add appropriate =
"allowlist.pattern" and "allowed.paths" to restrict their operation to appr=
opriate bounds.


For users of Kafka Clients or Kafka Connect in environments that trust user=
s with disk and environment variable access, it is not recommended to set t=
he system property.
For users of the Kafka Broker, Kafka MirrorMaker 2.0, Kafka Streams, and Ka=
fka command-line tools, it is not recommended to set the system property.

Credit:

Greg Harris (finder)
Mickael Maison (remediation reviewer)
Chris Egerton (remediation reviewer)

References:

https://kafka.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-31141

