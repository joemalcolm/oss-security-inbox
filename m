Received: (qmail 1574 invoked by uid 550); 21 Jan 2025 17:25:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1542 invoked from network); 21 Jan 2025 17:25:43 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Velmurugan Periasamy <vel@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <236c4753-b6f8-6a0e-856a-b060382e5308@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 21 Jan 2025 17:23:48 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-45479: Apache Ranger: SSRF in Edit Service page - Add
 logic to filter requests to localhost 

Severity: moderate

Affected versions:

- Apache Ranger 2.4.0 before 2.5.0

Description:

SSRF vulnerability in Edit Service Page of Apache Ranger UI in Apache Range=
r Version 2.4.0.
Users are recommended to upgrade to version Apache Ranger 2.5.0, which fixe=
s this issue.

Credit:

Gyujin (biz@web-us.kr) (finder)

References:

https://cwiki.apache.org/confluence/display/RANGER/Vulnerabilities+found+in=
+Ranger
https://ranger.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-45479

