Received: (qmail 7859 invoked by uid 550); 31 Mar 2025 16:27:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20290 invoked from network); 31 Mar 2025 14:18:34 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Justin Bertram <jbertram@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <23971244-c3f4-7b4f-b5cb-750f28b50892@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 31 Mar 2025 14:18:22 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-27427: Apache ActiveMQ Artemis: Address routing-type can
 be updated by user without the createAddress permission 

Affected versions:

- Apache ActiveMQ Artemis 2.0.0 through 2.39.0

Description:

A vulnerability exists in Apache ActiveMQ Artemis whereby a user with the c=
reateDurableQueue or createNonDurableQueue permission on an address can aug=
ment the routing-type supported by that address even if said user doesn't h=
ave the createAddress permission for that particular address. When combined=
 with the send permission and automatic queue creation a user could success=
fully send a message with a routing-type not supported by the address when =
that message should actually be rejected on the basis that the user doesn't=
 have permission to change the routing-type of the address.

This issue affects Apache ActiveMQ Artemis from 2.0.0 through 2.39.0.

Users are recommended to upgrade to version 2.40.0 which fixes the issue.

This issue is being tracked as ARTEMIS-5346=20

Credit:

Eojin Lee <djwls7179@gmail.com> (reporter)
Dain Lee <ledain5094@gmail.com> (finder)
WooJin Park <1203kids@gmail.com> (finder)
MinJung Lee <whitney2319@gmail.com> (finder)
SeChang Oh <osc010524@gmail.com> (finder)

References:

https://activemq.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-27427
https://issues.apache.org/jira/browse/ARTEMIS-5346

