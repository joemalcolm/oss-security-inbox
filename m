Received: (qmail 7745 invoked by uid 550); 12 Mar 2024 16:55:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3698 invoked from network); 12 Mar 2024 16:25:38 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Lari Hotari <lhotari@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <cecd6298-1f63-d54f-d3be-f4a360e0140b@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 12 Mar 2024 16:29:32 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-28098: Apache Pulsar: Improper Authorization For
 Topic-Level Policy Management 

Affected versions:

- Apache Pulsar 2.7.1 before 2.10.6
- Apache Pulsar 2.11.0 before 2.11.4
- Apache Pulsar 3.0.0 before 3.0.3
- Apache Pulsar 3.1.0 before 3.1.3
- Apache Pulsar 3.2.0 before 3.2.1

Description:

The vulnerability allows authenticated users with only produce or consume p=
ermissions to modify topic-level policies, such as retention, TTL, and offl=
oading settings. These management operations should be restricted to users =
with the tenant admin role or super user role.

This issue affects Apache Pulsar versions from 2.7.1 to 2.10.5, from 2.11.0=
 to 2.11.3, from 3.0.0 to 3.0.2, from 3.1.0 to 3.1.2, and 3.2.0.=20

2.10 Apache Pulsar users should upgrade to at least 2.10.6.
2.11 Apache Pulsar users should upgrade to at least 2.11.4.
3.0 Apache Pulsar users should upgrade to at least 3.0.3.
3.1 Apache Pulsar users should upgrade to at least 3.1.3.
3.2 Apache Pulsar users should upgrade to at least 3.2.1.

Users operating versions prior to those listed above should upgrade to the =
aforementioned patched versions or newer versions.

References:

https://pulsar.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-28098

