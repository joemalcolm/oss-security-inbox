Received: (qmail 1562 invoked by uid 550); 22 Apr 2024 13:29:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5121 invoked from network); 22 Apr 2024 07:13:31 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Imba Jin <jin@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <218c768c-8ee5-7196-4263-9fc356158d99@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 22 Apr 2024 07:13:19 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-27347: Apache HugeGraph-Hubble: SSRF in Hubble connection
 page 

Severity: moderate

Affected versions:

- Apache HugeGraph-Hubble 1.0.0 before 1.3.0

Description:

Server-Side Request Forgery (SSRF) vulnerability in Apache HugeGraph-Hubble=
.This issue affects Apache HugeGraph-Hubble: from 1.0.0 before 1.3.0.

Users are recommended to upgrade to version 1.3.0, which fixes the issue.

Credit:

6right of moresec (reporter)

References:

https://hugegraph.incubator.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-27347

