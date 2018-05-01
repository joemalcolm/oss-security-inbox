X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["602" "Tuesday" "1" "May" "2018" "13:02:58" "+0900" "Akira Ajisaka" "aajisaka@apache.org" "<64d9c5ed-3387-8649-944d-c95e4ef08f1a@apache.org>" "20" "[oss-security] CVE-2016-6811: Apache Hadoop Privilege escalation vulnerability" nil nil nil "5" "2018050104:02:58" "[oss-security] CVE-2016-6811: Apache Hadoop Privilege escalation vulnerability" (number mark "U       aajisaka@apa May  1   20/602   " thread-indent "\"[oss-security] CVE-2016-6811: Apache Hadoop Privilege escalation vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3123 invoked by uid 550); 1 May 2018 12:18:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9732 invoked from network); 1 May 2018 04:03:16 -0000
To: general@hadoop.apache.org, user@hadoop.apache.org,
 "<security@hadoop.apache.org>" <security@hadoop.apache.org>,
 bugtraq@securityfocus.com, oss-security@lists.openwall.com
From: Akira Ajisaka <aajisaka@apache.org>
Message-ID: <64d9c5ed-3387-8649-944d-c95e4ef08f1a@apache.org>
Date: Tue, 1 May 2018 13:02:58 +0900
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:52.0)
 Gecko/20100101 Thunderbird/52.7.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2016-6811: Apache Hadoop Privilege escalation vulnerability

CVE-2016-6811: Apache Hadoop Privilege escalation vulnerability

Severity: Critical

Vendor: The Apache Software Foundation

Versions Affected:
All the Apache Hadoop versions from 2.2.0 to 2.7.3

Description:
A user who can escalate to yarn user can possibly run arbitrary commands as root user.

Mitigation:
Users should upgrade to 2.7.4 or upper.
If you are using the affected version of Apache Hadoop and there are
any users who can escalate to yarn user and cannot escalate to root user,
remove the permission to escalate to yarn user from them.

Credit:
This issue was discovered by Freddie Rice.
