Received: (qmail 9923 invoked by uid 550); 25 Sep 2024 01:30:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3480 invoked from network); 25 Sep 2024 01:25:52 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Shilun Fan <slfan1989@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <b85cbee2-a579-1e8b-0444-b9f0a1d78e4f@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 25 Sep 2024 01:25:43 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-23454: Apache Hadoop: Temporary File Local Information
 Disclosure 

Severity: low

Affected versions:

- Apache Hadoop before 3.4.0

Description:

Apache Hadoop=E2=80=99s RunJar.run()=C2=A0does not set permissions for temp=
orary directory=C2=A0by default. If sensitive data will be present in this =
file, all the other local users may be able to view the content.
This is because, on unix-like systems, the system temporary directory is
shared between all local users. As such, files written in this directory,
without setting the correct posix permissions explicitly, may be viewable
by all other local users.

This issue is being tracked as HADOOP-19031=20

Credit:

Andrea Cosentino (finder)

References:

https://issues.apache.org/jira/browse/HADOOP-19031
https://hadoop.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-23454
https://issues.apache.org/jira/browse/HADOOP-19031

