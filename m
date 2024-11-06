Received: (qmail 10009 invoked by uid 550); 6 Nov 2024 16:17:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28302 invoked from network); 6 Nov 2024 15:31:19 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Andor Molnar <andor@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <3044e19f-7f25-b272-2e32-9e79893d30a3@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 06 Nov 2024 15:30:09 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-51504: Apache ZooKeeper: Authentication bypass with
 IP-based authentication in Admin Server 

Severity: important

Affected versions:

- Apache ZooKeeper 3.9.0 before 3.9.3

Description:

When using IPAuthenticationProvider in ZooKeeper Admin Server there is a po=
ssibility of Authentication Bypass by Spoofing -- this only impacts IP base=
d authentication implemented in ZooKeeper Admin Server. Default configurati=
on of client's IP address detection in=C2=A0IPAuthenticationProvider, which=
 uses HTTP request headers, is weak=C2=A0and allows an attacker to bypass a=
uthentication via spoofing client's IP address in request headers. Default =
configuration honors X-Forwarded-For HTTP header to read client's IP addres=
s. X-Forwarded-For request header is mainly used by proxy servers to identi=
fy the client and can be easily spoofed by an attacker pretending that the =
request comes from a different IP address. Admin Server commands, such as s=
napshot and restore arbitrarily can be executed on successful exploitation =
which could potentially lead to information leakage or service availability=
 issues. Users are recommended to upgrade to version 3.9.3, which fixes thi=
s issue.

Credit:

4ra1n (reporter)
Y4tacker (reporter)

References:

https://zookeeper.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-51504

