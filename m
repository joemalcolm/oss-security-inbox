X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["951" "Tuesday" "10" "January" "2017" "10:44:23" "+0900" "Akira Ajisaka" "aajisaka@apache.org" "<4a9345f4-a141-3c80-c157-232699b604a1@apache.org>" "28" "[oss-security] [SECURITY] CVE-2016-3086: Apache Hadoop YARN NodeManager vulnerability" "^Date:" nil nil "1" "2017011001:44:23" "[oss-security] [SECURITY] CVE-2016-3086: Apache Hadoop YARN NodeManager vulnerability" (number mark "U       aajisaka@apa Jan 10   28/951   " thread-indent "\"[oss-security] [SECURITY] CVE-2016-3086: Apache Hadoop YARN NodeManager vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13547 invoked by uid 550); 10 Jan 2017 05:03:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32110 invoked from network); 10 Jan 2017 01:44:38 -0000
Message-ID: <4a9345f4-a141-3c80-c157-232699b604a1@apache.org>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
 Gecko/20100101 Thunderbird/45.6.0
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-2022-jp; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit
Date: Tue, 10 Jan 2017 10:44:23 +0900
From: Akira Ajisaka <aajisaka@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [SECURITY] CVE-2016-3086: Apache Hadoop YARN NodeManager
 vulnerability
To: oss-security@lists.openwall.com

CVE-2016-3086: Apache Hadoop YARN NodeManager vulnerability

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected:
Hadoop 2.6.0, 2.6.1, 2.6.2, 2.6.3, 2.6.4
Hadoop 2.7.0, 2.7.1, 2.7.2

Description:
The YARN NodeManager in Apache Hadoop 2.6.x before 2.6.5 and 2.7.x  
before 2.7.3 can leak the password for credential store provider used by  
the NodeManager to YARN Applications.

If you use the CredentialProvider feature to encrypt passwords used in  
NodeManager configs, it may be possible for any Container launched by  
that NodeManager to gain access to the encryption password. The other  
passwords themselves are not directly exposed.

Mitigation:
2.7.x users should upgrade to 2.7.3.
2.6.x users should upgrade to 2.6.5
If you cannot upgrade to the latest version, set the permission of the  
jceks file appropriately to restrict access from unauthorized users.

Credit:
This issue was discovered by Robert Kanter.
