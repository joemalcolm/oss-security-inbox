Received: (qmail 23949 invoked by uid 550); 4 Apr 2024 14:02:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17604 invoked from network); 4 Apr 2024 14:01:19 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Eric Covener <covener@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <a137475c-85bc-ff66-3cb5-4f02096a30de@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 04 Apr 2024 13:57:26 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-24795: Apache HTTP Server: HTTP Response Splitting in
 multiple modules 

Severity: low

Affected versions:

- Apache HTTP Server 2.4.0 through 2.4.58

Description:

HTTP Response splitting in multiple modules in Apache HTTP Server allows an=
 attacker that can inject malicious response headers into backend applicati=
ons to cause an HTTP desynchronization attack.

Users are recommended to upgrade to version 2.4.59, which fixes this issue.

Credit:

Keran Mu, Tsinghua University and Zhongguancun Laboratory. (finder)
Jianjun Chen, Tsinghua University and Zhongguancun Laboratory. (finder)

References:

https://httpd.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-24795

Timeline:

2023-09-06: Reported to security team

