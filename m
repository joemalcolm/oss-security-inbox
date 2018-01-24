X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["891" "Wednesday" "24" "January" "2018" "19:59:23" "+0900" "Akira Ajisaka" "aajisaka@apache.org" "<0e5a12ae-69ca-0227-319c-f661c037e48d@apache.org>" "26" "[oss-security] CVE-2017-15718: Apache Hadoop YARN NodeManager vulnerability" nil nil nil "1" "2018012410:59:23" "[oss-security] CVE-2017-15718: Apache Hadoop YARN NodeManager vulnerability" (number mark "U       aajisaka@apa Jan 24   26/891   " thread-indent "\"[oss-security] CVE-2017-15718: Apache Hadoop YARN NodeManager vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23618 invoked by uid 550); 24 Jan 2018 11:14:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15497 invoked from network); 24 Jan 2018 10:59:41 -0000
To: general@hadoop.apache.org, user@hadoop.apache.org,
 security@hadoop.apache.org, bugtraq@securityfocus.com,
 oss-security@lists.openwall.com
From: Akira Ajisaka <aajisaka@apache.org>
Message-ID: <0e5a12ae-69ca-0227-319c-f661c037e48d@apache.org>
Date: Wed, 24 Jan 2018 19:59:23 +0900
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:52.0)
 Gecko/20100101 Thunderbird/52.5.2
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2017-15718: Apache Hadoop YARN NodeManager vulnerability

CVE-2017-15718: Apache Hadoop YARN NodeManager vulnerability

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected:
Hadoop 2.7.3, 2.7.4

Description:
In Apache Hadoop 2.7.3 and 2.7.4, the security fix for CVE-2016-3086 is incomplete.
The YARN NodeManager can leak the password for credential store provider
used by the NodeManager to YARN Applications.

If you use the CredentialProvider feature to encrypt passwords used in
NodeManager configs, it may be possible for any Container launched
by that NodeManager to gain access to the encryption password.
The other passwords themselves are not directly exposed.

Mitigation:
2.7.3 and 2.7.4 users should upgrade to 2.7.5.
If you cannot upgrade to the latest version, set the permission of
the jceks file appropriately to restrict access from unauthorized users.

Credit:
This issue was discovered by Vinayakumar B.
