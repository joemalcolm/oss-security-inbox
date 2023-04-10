Received: (qmail 17612 invoked by uid 550); 10 Apr 2023 08:27:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17579 invoked from network); 10 Apr 2023 06:15:08 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Heping Wang <peacewong@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <ae225238-7f93-60b4-89f7-b48bfe6bcdd8@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 10 Apr 2023 06:14:52 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-29215: Apache Linkis JDBC EngineCon  has a
 deserialization command execution 

Severity: important

Description:

In Apache Linkis <=3D1.3.1, due to the lack of effective filtering
of parameters, an attacker configuring malicious Mysql JDBC parameters in J=
DBC EengineConn Module will trigger a
deserialization vulnerability and eventually lead to remote code execution.=
 Therefore, the parameters in the Mysql JDBC URL should be blacklisted. Ver=
sions of Apache Linkis <=3D 1.3.0 will be affected.
We recommend users upgrade the version of Linkis to version 1.3.2.

Credit:

sw0rd1ight (reporter)

References:

https://linkis.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-29215

