X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1149" "Sunday" "6" "January" "2019" "07:23:52" "+0100" "=?UTF-8?B?SmVhbi1CYXB0aXN0ZSBPbm9mcsOp?=" "jb@nanthrax.net" "<1c9e7212-f8a7-04b2-a956-17f7bce8c3bb@nanthrax.net>" "40" "[oss-security] [SECURITY] New security advisory for CVE-2018-11788 released for Apache Karaf" "^Date:" nil nil "1" "2019010606:23:52" "[oss-security] [SECURITY] New security advisory for CVE-2018-11788 released for Apache Karaf" (number mark "        jb@nanthrax. Jan  6   40/1149  " thread-indent "\"[oss-security] [SECURITY] New security advisory for CVE-2018-11788 released for Apache Karaf\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20108 invoked by uid 550); 6 Jan 2019 09:27:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9601 invoked from network); 6 Jan 2019 06:24:04 -0000
Message-ID: <1c9e7212-f8a7-04b2-a956-17f7bce8c3bb@nanthrax.net>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Date: Sun, 6 Jan 2019 07:23:52 +0100
From: =?UTF-8?Q?Jean-Baptiste_Onofr=c3=a9?= <jb@nanthrax.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [SECURITY] New security advisory for CVE-2018-11788 released for
 Apache Karaf
To: user@karaf.apache.org, Karaf Dev <dev@karaf.apache.org>,
 Apache Security Team <security@apache.org>, oss-security@lists.openwall.com,
 Brian Wang <brianwangrewa@gmail.com>

A new security advisory has been released for Apache Karaf, that is
fixed in recent 4.1.7 and 4.2.2 releases.

CVS-2018-11788: XXE vulnerability found on Apache Karaf

Severity: Moderate

Vendor: The Apache Software Foundation

Versions Affected: all versions of Apache Karaf prior to 4.1.7, 4.2.2.

Description:

Apache Karaf provides a features deployer, which allows users to "hot
deploy"
a features XML by dropping the file directly in the deploy folder.

The features XML is parsed by XMLInputFactory class.

Apache Karaf XMLInputFactory class doesn't contain any mitigation codes
against XXE.
This is a potential security risk as an user can inject external XML
entities.

The mitigation is to prevent XXE by disabling external entities loading
feature
in XMLInputFactory and XmlUtils.

This has been fixed in revision:

https://gitbox.apache.org/repos/asf?p=karaf.git;h=cc3332e
https://gitbox.apache.org/repos/asf?p=karaf.git;h=1ffa6d1

Mitigation: Apache Karaf users should upgrade to 4.1.7, 4.2.2
or later as soon as possible.

JIRA Tickets: https://issues.apache.org/jira/browse/KARAF-5911

Credit: This issue was reported by Brian Wang.

