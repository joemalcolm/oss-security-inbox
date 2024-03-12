Received: (qmail 15673 invoked by uid 550); 12 Mar 2024 16:53:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32208 invoked from network); 12 Mar 2024 16:23:21 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Lari Hotari <lhotari@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <9bba44ed-565e-14ad-3e05-45eed578a2fc@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 12 Mar 2024 16:27:19 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-34321: Apache Pulsar: Improper Authentication for Pulsar
 Proxy Statistics Endpoint 

Affected versions:

- Apache Pulsar 2.6.0 before 2.10.6
- Apache Pulsar 2.11.0 before 2.11.3
- Apache Pulsar 3.0.0 before 3.0.2
- Apache Pulsar 3.1.0 before 3.1.1

Description:

Improper Authentication vulnerability in Apache Pulsar Proxy allows an atta=
cker to connect to the /proxy-stats endpoint without authentication. The vu=
lnerable endpoint exposes detailed statistics about live connections, along=
 with the capability to modify the logging level of proxied connections wit=
hout requiring proper authentication credentials.

This issue affects Apache Pulsar versions from 2.6.0 to 2.10.5, from 2.11.0=
 to 2.11.2, from 3.0.0 to 3.0.1, and 3.1.0.

The known risks include exposing sensitive information such as connected cl=
ient IP and unauthorized logging level manipulation which could lead to a d=
enial-of-service condition by significantly increasing the proxy's logging =
overhead. When deployed via the Apache Pulsar Helm chart within Kubernetes =
environments, the actual client IP might not be revealed through the load b=
alancer's default behavior, which typically obscures the original source IP=
 addresses when externalTrafficPolicy is being configured to "Cluster" by d=
efault. The /proxy-stats endpoint contains topic level statistics, however,=
 in the default configuration, the topic level statistics aren't known to b=
e exposed.

2.10 Pulsar Proxy users should upgrade to at least 2.10.6.
2.11 Pulsar Proxy users should upgrade to at least 2.11.3.
3.0 Pulsar Proxy users should upgrade to at least 3.0.2.
3.1 Pulsar Proxy users should upgrade to at least 3.1.1.

Users operating versions prior to those listed above should upgrade to the =
aforementioned patched versions or newer versions. Additionally, it's imper=
ative to recognize that the Apache Pulsar Proxy is not intended for direct =
exposure to the internet. The architectural design of Pulsar Proxy assumes =
that it will operate within a secured network environment, safeguarded by a=
ppropriate perimeter defenses.

Credit:

Lari Hotari (finder)

References:

https://pulsar.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2022-34321

