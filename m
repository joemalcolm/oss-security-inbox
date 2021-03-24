X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["597" "Thursday" "25" "March" "2021" "06:08:53" "+1300" "Sidney Markowitz" "sidney@apache.org" nil "13" "[oss-security] CVE-2020-1946: Apache SpamAssassin has an OS Command Injection vulnerability" nil nil nil "3" nil nil (number mark "U       sidney@apach Mar 25   13/597   " thread-indent "\"[oss-security] CVE-2020-1946: Apache SpamAssassin has an OS Command Injection vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-1946: Apache SpamAssassin has an OS Command Injection vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15816 invoked by uid 550); 24 Mar 2021 17:10:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15472 invoked from network); 24 Mar 2021 17:09:09 -0000
To: oss-security@lists.openwall.com
From: Sidney Markowitz <sidney@apache.org>
Message-ID: <438578f3-f595-87bd-c22f-508b92d872a1@apache.org>
Date: Thu, 25 Mar 2021 06:08:53 +1300
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.16; rv:78.0)
 Gecko/20100101 Thunderbird/78.8.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2020-1946: Apache SpamAssassin has an OS Command Injection
 vulnerability

Description:

In Apache SpamAssassin before 3.4.5, malicious rule configuration (.cf) files can be configured to run system commands without any output or errors. With this, exploits can be injected in a number of scenarios.  In addition to upgrading to SA version 3.4.5, users should only use update channels or 3rd party .cf files from trusted places.

This issue is being tracked as https://bz.apache.org/SpamAssassin/show_bug.cgi?id=7793

Credit:

Apache SpamAssassin would like to thank Damian Lukowski at credativ for ethically reporting this issue.

References:

https://s.apache.org/3r1wh
