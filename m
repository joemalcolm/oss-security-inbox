Received: (qmail 19544 invoked by uid 550); 10 Apr 2024 16:23:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32242 invoked from network); 10 Apr 2024 16:19:08 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jongyoul Lee <jongyoul@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <8849144e-4b85-c36b-752a-9d56fa3982b2@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 10 Apr 2024 16:18:45 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-31861: Apache Zeppelin: Code injection by Shell
 interpreter 

Severity: important

Affected versions:

- Apache Zeppelin 0.10.1 before 0.11.1

Description:

Improper Control of Generation of Code ('Code Injection') vulnerability in =
Apache Zeppelin.

The attackers can use Shell interpreter as a code generation gateway, and e=
xecute the generated code as a normal way.
This issue affects Apache Zeppelin: from 0.10.1 before 0.11.1.

Users are recommended to upgrade to version 0.11.1, which doesn't have Shel=
l interpreter by default.

Credit:

Esa Hiltunen (finder)
https://teragrep.com (finder)

References:

https://github.com/apache/zeppelin/pull/4708
https://zeppelin.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-31861

