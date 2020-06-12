X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2121" "Friday" "12" "June" "2020" "07:09:13" "+0200" "Jean-Baptiste Onofre" "jb@nanthrax.net" "<4FF677C8-DA5B-4335-8136-6DB805323F05@nanthrax.net>" "55" "[oss-security] [CVE-2020-11980] A remote client could create MBeans from arbitrary URLs" nil nil nil "6" "2020061205:09:13" "[oss-security] [CVE-2020-11980] A remote client could create MBeans from arbitrary URLs" (number mark "U       jb@nanthrax. Jun 12   55/2121  " thread-indent "\"[oss-security] [CVE-2020-11980] A remote client could create MBeans from arbitrary URLs\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-11980] A remote client could create MBeans from arbitrary URLs" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14026 invoked by uid 550); 12 Jun 2020 11:22:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19806 invoked from network); 12 Jun 2020 05:09:25 -0000
X-Originating-IP: 78.218.26.15
From: Jean-Baptiste Onofre <jb@nanthrax.net>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_C05319A1-1113-417B-BDA1-9F3D66FF10C2"
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Message-Id: <4FF677C8-DA5B-4335-8136-6DB805323F05@nanthrax.net>
Date: Fri, 12 Jun 2020 07:09:13 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3608.80.23.2.2)
Subject: [oss-security] [CVE-2020-11980] A remote client could create MBeans from arbitrary
 URLs

--Apple-Mail=_C05319A1-1113-417B-BDA1-9F3D66FF10C2
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

CVE-2020-11980: A remote client could create MBeans from arbitrary URLs

Severity: Low

Vendor: The Apache Software Foundation

Versions Affected: all versions of Apache Karaf prior to 4.2.9

Description:

In Karaf, JMX authentication takes place using JAAS and authorization takes
place using ACL files. By default, only an "admin" can actually invoke on
an MBean. However there is a vulnerability there for someone who is not an
admin, but has a "viewer" role. In the 'etc/jmx.acl.cfg', such as role can
call get*. This leaves it partially vulnerable to this attack:

https://docs.oracle.com/javase/8/docs/technotes/guides/management/agent.html

"A remote client could create a javax.management.loading.MLet MBean and use
it to create new MBeans from arbitrary URLs, at least if there is no
security manager. In other words, a rogue remote client could make your
Java application execute arbitrary code."

It's possible to authenticate as a viewer role + invokes on the MLet
getMBeansFromURL method, which goes off to a remote server to fetch the
desired MBean, which is then registered in Karaf. At this point the attack
fails as "viewer" doesn't have the permission to invoke on the MBean.
Still, it could act as a SSRF style attack and also it essentially allows a
"viewer" role to pollute the MBean registry, which is a kind of privilege
escalation.


The vulnerability is low as it's possible to add a ACL to limit access.

This has been fixed in revision:

https://gitbox.apache.org/repos/asf?p=3Dkaraf.git;a=3Dcommit;h=3D3e4c4bed2d=
08e81ca5961ab5fcadab23470db1c9
https://gitbox.apache.org/repos/asf?p=3Dkaraf.git;a=3Dcommit;h=3D2ccfba48bd=
fac6c2cd09c8f058641da0011e4c7e

Mitigation: Apache Karaf users should upgrade to 4.2.9
or later as soon as possible, or a new JMX ACL in etc configuration.

JIRA Tickets: https://issues.apache.org/jira/browse/KARAF-6763

Credit: This issue was reported by Colm O hEigeartaigh


--Apple-Mail=_C05319A1-1113-417B-BDA1-9F3D66FF10C2--
