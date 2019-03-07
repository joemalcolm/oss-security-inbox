X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1460" "Thursday" "7" "March" "2019" "13:53:59" "+0100" "=?UTF-8?B?SmVhbi1CYXB0aXN0ZSBPbm9mcsOp?=" "jb@nanthrax.net" "<c7f712c2-8505-31a3-87f4-2ecf3e89d65e@nanthrax.net>" "45" "[oss-security] [SECURITY] New security advisory for CVE-2019-0191 released for Apache Karaf" "^Date:" nil nil "3" "2019030712:53:59" "[oss-security] [SECURITY] New security advisory for CVE-2019-0191 released for Apache Karaf" (number mark "U       jb@nanthrax. Mar  7   45/1460  " thread-indent "\"[oss-security] [SECURITY] New security advisory for CVE-2019-0191 released for Apache Karaf\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [SECURITY] New security advisory for CVE-2019-0191 released for Apache Karaf" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24535 invoked by uid 550); 7 Mar 2019 13:34:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22125 invoked from network); 7 Mar 2019 12:54:13 -0000
Message-ID: <c7f712c2-8505-31a3-87f4-2ecf3e89d65e@nanthrax.net>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Date: Thu, 7 Mar 2019 13:53:59 +0100
From: =?UTF-8?Q?Jean-Baptiste_Onofr=c3=a9?= <jb@nanthrax.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [SECURITY] New security advisory for CVE-2019-0191 released for
 Apache Karaf
To: user@karaf.apache.org, Karaf Dev <dev@karaf.apache.org>,
 Apache Security Team <security@apache.org>, oss-security@lists.openwall.com,
 Colm O hEigeartaigh <coheigea@apache.org>

A new security advisory has been released for Apache Karaf, that is
fixed in recent 4.2.3 release.

CVE-2019-0191: Zip-slip vulnerability in KAR deployer

Severity: Low

Vendor: The Apache Software Foundation

Versions Affected: all versions of Apache Karaf prior to 4.2.3

Description:

Apache Karaf kar deployer reads .kar archives and extracts the paths from
the "repository/" and "resources/" entries in the zip file.

It then writes out the content of these paths to the Karaf repo and
resources
directories. However, it doesn't do any validation on the paths in the zip
file. This means that a malicious user could craft a .kar file with ".."
directory names and break out of the directories to write arbitrary content
to the filesystem. This is the "Zip-slip" vulnerability -
https://snyk.io/research/zip-slip-vulnerability

This vulnerability is low if the Karaf process user has limited permission
on the filesystem.

The mitigation is to prevent "Zip-slip" by checking the path used in kar
zip
entries and prevent use of ".." path.

This has been fixed in revision:

https://gitbox.apache.org/repos/asf?p=karaf.git;h=fef9a61
https://gitbox.apache.org/repos/asf?p=karaf.git;h=e36a7a6

Mitigation: Apache Karaf users should upgrade to 4.2.3
or later as soon as possible, or limit filesystem permission for the Karaf
process user.

JIRA Tickets: https://issues.apache.org/jira/browse/KARAF-6090

Credit: This issue was reported by Colm O hEigeartaigh


