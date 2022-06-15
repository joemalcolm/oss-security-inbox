Received: (qmail 14090 invoked by uid 550); 15 Jun 2022 14:29:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5914 invoked from network); 15 Jun 2022 14:10:34 -0000
Content-Type: text/plain; charset=utf-8
From: Akira Ajisaka <aajisaka@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <632698ac-e78b-79ac-3a37-7a6a3acf782c@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 15 Jun 2022 14:10:21 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-33036: Apache Hadoop Privilege escalation vulnerability 

Severity: Critical

Description:

In Apache Hadoop 2.2.0 to 2.10.1, 3.0.0-alpha1 to 3.1.4, 3.2.0 to 3.2.2, an=
d 3.3.0 to 3.3.1, a user who can escalate to yarn user can possibly run arb=
itrary commands as root user.  Users should upgrade to Apache Hadoop 2.10.2=
, 3.2.3, 3.3.2 or higher.

Mitigation:

If you are using the affected version of Apache Hadoop and some users can e=
scalate to yarn user and cannot escalate to root user, remove the permissio=
n to escalate to yarn user from them.

Credit:

Apache Hadoop would like to thank Hideyuki Furue for reporting and fixing t=
his issue.

