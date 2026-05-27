Received: (qmail 18049 invoked by uid 550); 27 May 2026 16:29:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19845 invoked from network); 27 May 2026 16:22:34 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Justin Bertram <jbertram@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <8137c98b-dae6-18bb-8fdb-5d3d3b6d31de@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 27 May 2026 16:22:03 +0000
MIME-Version: 1.0
Subject: [oss-security] ARTEMIS-5996: CVE-2026-40914: Apache Artemis, Apache ActiveMQ
 Artemis: Address routing-type can be updated by STOMP protocol user
 without the createAddress permission 

Severity: low=20

Affected versions:

- Apache Artemis (org.apache.artemis:artemis-stomp-protocol) 2.50.0 through=
 2.53.0
- Apache ActiveMQ Artemis (org.apache.artemis:artemis-stomp-protocol) 2.0.0=
 through 2.44.0

Description:

A vulnerability exists in Apache Artemis whereby an application using the S=
TOMP protocol with security credentials that grant either the consume or se=
nd permission on an address can augment the routing-type supported by that =
address even if said user doesn't have the createAddress permission for tha=
t particular address. A user could successfully send a message to an addres=
s or consume a message from a queue with a routing-type not supported by th=
e corresponding address when that operation should actually be rejected on =
the basis that the user doesn't have permission to change the routing-type =
of the address. Even though the user was already granted permission to send=
 and/or consume messages, they should not be able to augment the routing-ty=
pe of the address without the createAddress permission.



This issue affects Apache Artemis: from 2.50.0 through 2.53.0; Apache Activ=
eMQ Artemis: from 2.0.0 through 2.44.0.

Users are recommended to upgrade to version 2.54.0, which fixes the issue.

This issue is being tracked as ARTEMIS-5996=20

Credit:

bugbunny.ai (tool)
Isaac David <isaac@bugbunny.ai> (reporter)
Arthur Gervais <arthur@bugbunny.ai> (reporter)

References:

https://artemis.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2026-40914
https://issues.apache.org/jira/browse/ARTEMIS-5996

