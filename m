Received: (qmail 21803 invoked by uid 550); 9 Apr 2025 14:35:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18123 invoked from network); 9 Apr 2025 14:34:33 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Domenico Francesco Bruscino <brusdev@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <7bce2dc1-7971-de8c-67b8-d61c72336ae3@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 09 Apr 2025 14:34:10 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-27391: Apache ActiveMQ Artemis: Passwords leaking from
 broker properties in the debug log 

Affected versions:

- Apache ActiveMQ Artemis 1.5.1 before 2.40.0

Description:

Insertion of Sensitive Information into Log File vulnerability in Apache Ac=
tiveMQ Artemis. All the values of the broker properties are=C2=A0logged whe=
n the org.apache.activemq.artemis.core.config.impl.ConfigurationImpl logger=
 has the=C2=A0debug level enabled.

This issue affects Apache ActiveMQ Artemis: from 1.5.1 before 2.40.0. It ca=
n be mitigated by restricting log access to only trusted users.

Users are recommended to upgrade to version 2.40.0, which fixes the issue.

Credit:

Rafael Yanez Illescas <ryanezil@redhat.com> (finder)

References:

https://activemq.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-27391

