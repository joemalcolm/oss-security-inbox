Received: (qmail 27780 invoked by uid 550); 2 Jun 2026 15:28:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17448 invoked from network); 2 Jun 2026 08:04:17 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Luke Chen <showuon@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <97818c08-4edd-2460-cd62-71f66bc77f5d@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 02 Jun 2026 08:02:02 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-41115: Apache Kafka: Improper Authorization in
 CONSUMER_GROUP_DESCRIBE API 

Severity: moderate=20

Affected versions:

- Apache Kafka 4.0.0 through 4.3.0

Description:

An improper authorization vulnerability has been identified in Apache Kafka.

The implementation of the CONSUMER_GROUP_DESCRIBE (69) API validates the DE=
SCRIBE operation on the GROUP resource instead of the READ operation that d=
ocumented in the official kafka documentation and the KIP-848. This discrep=
ancy can result in misconfigured Access Control Lists (ACLs) and unintended=
 security postures, like granting READ permission to users who should not b=
e able to join/sync groups, or allowing users without READ permission (but =
with DESCRIBE permission) to access sensitive group metadata.

The correct permission for CONSUMER_GROUP_DESCRIBE API is DESCRIBE GROUP so=
 the current implementation is correct. However, the kafka documentation as=
 well as the KIP-848 will be updated to reflect the correct permission. We =
advise the Kafka users to review existing group ACLs to ensure the principl=
e of least privilege.

Credit:

Luke Chen <showuon@gmail.com> (finder)

References:

https://kafka.apache.org/cve-list
https://kafka.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-41115

