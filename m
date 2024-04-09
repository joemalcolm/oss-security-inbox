Received: (qmail 17559 invoked by uid 550); 9 Apr 2024 13:06:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1976 invoked from network); 9 Apr 2024 02:10:41 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jongyoul Lee <jongyoul@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <5ca00489-f6fa-26ac-3849-8055992e6955@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Apr 2024 02:10:27 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-28656: Apache Zeppelin: CSRF vulnerability in the
 Credentials page 

Severity: low

Affected versions:

- Apache Zeppelin through 0.9.0

Description:

Cross-Site Request Forgery (CSRF) vulnerability in Credential page of Apach=
e Zeppelin allows an attacker to submit malicious request.  This issue affe=
cts Apache Zeppelin Apache Zeppelin version 0.9.0 and prior versions.

Credit:

Jiang Qingzhi (finder)

References:

https://zeppelin.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2021-28656

