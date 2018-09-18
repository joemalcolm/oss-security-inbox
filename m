X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1343" "Tuesday" "18" "September" "2018" "14:36:56" "+0200" "=?UTF-8?B?SmVhbi1CYXB0aXN0ZSBPbm9mcsOp?=" "jb@nanthrax.net" "<234fcf46-0b7e-1055-de68-ca30adcd6e5b@nanthrax.net>" "37" "[oss-security] [SECURITY] New security advisory for CVE-2018-11786 released for Apache Karaf" nil nil nil "9" "2018091812:36:56" "[oss-security] [SECURITY] New security advisory for CVE-2018-11786 released for Apache Karaf" (number mark "U       jb@nanthrax. Sep 18   37/1343  " thread-indent "\"[oss-security] [SECURITY] New security advisory for CVE-2018-11786 released for Apache Karaf\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14317 invoked by uid 550); 18 Sep 2018 12:46:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7331 invoked from network); 18 Sep 2018 12:37:09 -0000
X-Originating-IP: 82.238.224.4
To: Karaf Dev <dev@karaf.apache.org>, user@karaf.apache.org,
 Apache Security Team <security@apache.org>, oss-security@lists.openwall.com,
 coyotesqrl@gmail.com
From: =?UTF-8?Q?Jean-Baptiste_Onofr=c3=a9?= <jb@nanthrax.net>
Message-ID: <234fcf46-0b7e-1055-de68-ca30adcd6e5b@nanthrax.net>
Date: Tue, 18 Sep 2018 14:36:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [oss-security] [SECURITY] New security advisory for CVE-2018-11786 released for
 Apache Karaf

A new security advisory has been released for Apache Karaf, that is
fixed in recent 4.2.0 release.

CVS-2018-11786: Apache Karaf SSH RBAC security enforcement

Severity: Moderate

Vendor: The Apache Software Foundation

Versions Affected: all versions of Apache Karaf prior to 4.2.0.M1

Description:

If the sshd service in Karaf is left on so an administrator can manage
the running instance, any user with rights to the Karaf console can
pivot and read/write any file on the file system to which the Karaf
process user has access. This can be locked down a bit by using chroot
to change the root directory to protect files outside of the Karaf
install directory; it can be further locked down by defining a
security manager policy that limits file system access to those
directories beneath the Karaf home that are necessary for the system
to run. However, this still allows anyone with ssh access to the Karaf
process to read and write a large number of files as the Karaf process
user.


This has been fixed in revision:

https://gitbox.apache.org/repos/asf?p=karaf.git;h=24fb477
https://gitbox.apache.org/repos/asf?p=karaf.git;h=7ad0da3

Mitigation: Apache Karaf users should upgrade to 4.2.0.M1 or later as
soon as possible.

JIRA Tickets: https://issues.apache.org/jira/browse/KARAF-5427

Credit: This issue was reported by R.A. Porter
