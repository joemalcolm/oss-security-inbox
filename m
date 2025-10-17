Received: (qmail 10208 invoked by uid 550); 17 Oct 2025 16:30:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3985 invoked from network); 17 Oct 2025 16:03:08 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: William Hodges <whodges@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <fc3ba4c4-0246-447b-1bc0-8d1feca16302@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 17 Oct 2025 16:01:45 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-47410: Apache Geode: CSRF attacks through GET requests to
 the Management and Monitoring REST API that can execute gfsh commands on
 the target system 

Severity: moderate=20

Affected versions:

- Apache Geode (org.apache.geode:geode-web) 1.10.0 before 1.15.2

Description:

Apache Geode is vulnerable to CSRF attacks through GET requests to the Mana=
gement and Monitoring REST API that could allow an attacker who has tricked=
 a user into giving up their Geode session credentials to submit malicious =
commands on the target system on behalf of the authenticated user.


This issue affects Apache Geode: versions 1.10 through 1.15.1

Users are recommended to upgrade to version 1.15.2, which fixes the issue.

Credit:

S. M. Zuhair Zaki (finder)

References:

https://geode.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-47410

