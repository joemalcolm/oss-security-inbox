Received: (qmail 11410 invoked by uid 550); 30 Dec 2022 11:17:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20228 invoked from network); 30 Dec 2022 06:52:31 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Xiaoxiang Yu <xxyu@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <30c1915c-551e-732c-dcb8-7e838253e2b6@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 30 Dec 2022 06:52:17 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-43396: Apache Kylin: Command injection by Useless
 configuration 

Severity: important

Description:

In the fix for CVE-2022-24697, a blacklist is used to filter user input com=
mands. But there is a risk of being bypassed. The user can control the comm=
and by controlling the=C2=A0kylin.engine.spark-cmd=C2=A0parameter of conf.

Work Arounds:

Users of Kylin 2.x & Kylin 3.x & 4.x should upgrade to 4.0.3 or apply patch=
=C2=A0 https://github.com/apache/kylin/pull/2011 https://github.com/apache/=
kylin/pull/2011

Credit:

Yasax1 Li <pp1ove.lit@gmail.com> (finder)

References:

https://lists.apache.org/thread/o53vqxjdd9q731bwqpgcqyzx9r716qwx
https://kylin.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2022-43396

