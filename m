Received: (qmail 7720 invoked by uid 550); 20 Mar 2026 19:14:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28075 invoked from network); 20 Mar 2026 18:44:45 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Justin Bertram <jbertram@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <c2ca2c1a-f97a-8323-a296-fe84bfbd3dbe@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 20 Mar 2026 18:44:28 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-32642: Apache Artemis, Apache ActiveMQ Artemis: Temporary
 address auto-created for OpenWire consumer without createAddress
 permission 

Severity: low=20

Affected versions:

- Apache Artemis (org.apache.artemis:artemis-openwire-protocol) 2.50.0 thro=
ugh 2.52.0
- Apache ActiveMQ Artemis (org.apache.activemq:artemis-openwire-protocol) 2=
.0.0 through 2.44.0

Description:

Incorrect Authorization (CWE-863)=C2=A0vulnerability in Apache Artemis, Apa=
che ActiveMQ Artemis exists when an application using the OpenWire protocol=
 attempts to create a non-durable JMS topic subscription on an address that=
 doesn't exist with an authenticated user which has the "createDurableQueue=
" permission but does not have the "createAddress" permission and address a=
uto-creation is disabled. In this circumstance, a temporary address will be=
 created whereas the attempt to create the non-durable subscription should =
instead fail since the user is not authorized to create the corresponding a=
ddress. When the OpenWire connection is closed the address is removed.

This issue affects Apache Artemis: from 2.50.0 through 2.52.0; Apache Activ=
eMQ Artemis: from 2.0.0 through 2.44.0.

Users are recommended to upgrade to version 2.53.0, which fixes the issue.

Credit:

Stephen Higgs <shiggs@redhat.com> (reporter)

References:

https://artemis.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2026-32642

