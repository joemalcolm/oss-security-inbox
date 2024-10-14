Received: (qmail 5743 invoked by uid 550); 14 Oct 2024 18:01:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13718 invoked from network); 14 Oct 2024 16:01:12 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Justin Bertram <jbertram@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <cd8a3a1e-d4a6-6d74-6703-c247031d0c49@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 14 Oct 2024 16:00:41 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-50780: Apache ActiveMQ Artemis: Authenticated users could
 perform RCE via Jolokia MBeans 

Severity: moderate

Affected versions:

- Apache ActiveMQ Artemis before 2.29.0

Description:

Apache ActiveMQ Artemis allows access to diagnostic information and control=
s through MBeans, which are also exposed through the authenticated Jolokia =
endpoint. Before version 2.29.0, this also included the Log4J2 MBean. This =
MBean is not meant for exposure to non-administrative users. This could eve=
ntually allow an authenticated attacker to write arbitrary files to the fil=
esystem and indirectly achieve RCE.


Users are recommended to upgrade to version 2.29.0 or later, which fixes th=
e issue.

This issue is being tracked as ARTEMIS-4150=20

Credit:

Matei "Mal" Badanoiu (finder)

References:

https://activemq.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-50780
https://issues.apache.org/jira/browse/ARTEMIS-4150

