Received: (qmail 10178 invoked by uid 550); 3 Mar 2026 17:25:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14309 invoked from network); 3 Mar 2026 17:22:11 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Justin Bertram <jbertram@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <03dec16c-fe98-0d84-856e-392f4f5c376c@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 03 Mar 2026 17:21:22 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-27446: Apache Artemis, Apache ActiveMQ Artemis: Auth
 bypass for Core downstream federation 

Severity: critical=20

Affected versions:

- Apache Artemis (org.apache.artemis:artemis-server) 2.50.0 through 2.51.0
- Apache ActiveMQ Artemis (org.apache.activemq:artemis-server) 2.11.0 throu=
gh 2.44.0

Description:

Missing Authentication for Critical Function (CWE-306) vulnerability in Apa=
che Artemis, Apache ActiveMQ Artemis. An unauthenticated remote attacker ca=
n use the Core protocol to force a target broker to establish an outbound C=
ore federation connection to an attacker-controlled rogue broker. This coul=
d potentially result in message injection into any queue and/or message exf=
iltration from any queue via the rogue broker. This impacts environments th=
at allow both:

- incoming Core protocol connections from untrusted sources to the broker

- outgoing Core protocol connections from the broker to untrusted targets

This issue affects:

- Apache Artemis from 2.50.0 through 2.51.0

- Apache ActiveMQ Artemis from 2.11.0 through 2.44.0.

Users are recommended to upgrade to Apache Artemis version 2.52.0, which fi=
xes the issue.

The issue can be mitigated by either of the following:

- Remove Core protocol support from any acceptor receiving connections from=
 untrusted sources. Incoming Core protocol connections are supported by def=
ault via the "artemis" acceptor listening on port 61616. See the "protocols=
" URL parameter configured for the acceptor. An acceptor URL without this p=
arameter supports all protocols by default, including Core.

- Use two-way SSL (i.e. certificate-based authentication) in order to force=
 every client to present the proper SSL certificate when establishing a con=
nection before any message protocol handshake is attempted. This will preve=
nt unauthenticated exploitation of this vulnerability.

Credit:

Hardik Mehta <mehtahardik@proton.me> (finder)

References:

https://artemis.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2026-27446

