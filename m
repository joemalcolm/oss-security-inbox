Received: (qmail 16089 invoked by uid 550); 2 Apr 2024 12:46:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25832 invoked from network); 2 Apr 2024 07:31:18 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Lari Hotari <lhotari@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <2570fd6b-672f-4da1-3453-0e7b28e87bbe@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 02 Apr 2024 07:31:07 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-29834: Apache Pulsar: Improper Authorization For
 Namespace and Topic Management Endpoints 

Affected versions:

- Apache Pulsar 2.7.1 through 2.10.6
- Apache Pulsar 2.11.0 through 2.11.4
- Apache Pulsar 3.0.0 before 3.0.4
- Apache Pulsar 3.1.0 through 3.1.3
- Apache Pulsar 3.2.0 before 3.2.2

Description:

This vulnerability allows authenticated users with produce or consume permi=
ssions to perform unauthorized operations on partitioned topics, such as un=
loading topics and triggering compaction. These management operations shoul=
d be restricted to users with the tenant admin role or superuser role. An a=
uthenticated user with produce permission can create subscriptions and upda=
te subscription properties on partitioned topics, even though this should b=
e limited to users with consume permissions. This impact analysis assumes t=
hat Pulsar has been configured with the default authorization provider. For=
 custom authorization providers, the impact could be slightly different. Ad=
ditionally, the vulnerability allows an authenticated user to read, create,=
 modify, and delete namespace properties in any namespace in any tenant. In=
 Pulsar, namespace properties are reserved for user provided metadata about=
 the namespace.

This issue affects Apache Pulsar versions from 2.7.1 to 2.10.6, from 2.11.0=
 to 2.11.4, from 3.0.0 to 3.0.3, from 3.1.0 to 3.1.3, and from 3.2.0 to 3.2=
.1.=20

3.0 Apache Pulsar users should upgrade to at least 3.0.4.
3.1 and 3.2 Apache Pulsar users should upgrade to at least 3.2.2.

Users operating versions prior to those listed above should upgrade to the =
aforementioned patched versions or newer versions.

References:

https://pulsar.apache.org/security/CVE-2024-29834/
https://pulsar.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-29834

