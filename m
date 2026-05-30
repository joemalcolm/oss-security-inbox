Received: (qmail 18056 invoked by uid 550); 30 May 2026 17:01:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 12202 invoked from network); 30 May 2026 15:19:42 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jark Wu <jark@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <6c7d16d1-26ed-85d7-1e5a-b01867bd596b@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sat, 30 May 2026 15:19:31 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-49361: Apache Fluss Netty Frame Decoder Memory Exhaustion
 Vulnerability 

Severity: important=20

Affected versions:

- Apache Fluss (incubating) 0.8.0
- Apache Fluss (incubating) 0.9.0

Description:

Apache Fluss versions prior to 0.9.1 configure the Netty LengthFieldBasedFr=
ameDecoder with Integer.MAX_VALUE as the maximum frame length, allowing una=
uthenticated remote attackers to exhaust JVM heap memory on TabletServer an=
d CoordinatorServer by sending specially crafted frame headers, resulting i=
n denial of service.

This issue affects Apache Fluss (incubating): 0.8.0 and 0.9.0.

Users are recommended to upgrade to version 0.9.1, which fixes the issue.

Credit:

Andrea Cosentino (reporter)

References:

https://fluss.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2026-49361

