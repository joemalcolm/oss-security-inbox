X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["656" "Monday" "1" "March" "2021" "11:15:46" "+0000" "Mark Thomas" "markt@apache.org" nil "15" "[oss-security] CVE-2021-25329: Apache Tomcat Incomplete fix for CVE-2020-9484" nil nil nil "3" nil nil (number mark "U       markt@apache Mar  1   15/656   " thread-indent "\"[oss-security] CVE-2021-25329: Apache Tomcat Incomplete fix for CVE-2020-9484\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-25329: Apache Tomcat Incomplete fix for CVE-2020-9484" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16006 invoked by uid 550); 1 Mar 2021 12:31:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17788 invoked from network); 1 Mar 2021 11:16:02 -0000
To: oss-security@lists.openwall.com
From: Mark Thomas <markt@apache.org>
Message-ID: <1d9e46e1-2201-5fb9-b5dc-791ce8f7e461@apache.org>
Date: Mon, 1 Mar 2021 11:15:46 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2021-25329: Apache Tomcat Incomplete fix for CVE-2020-9484

The fix for CVE-2020-9484 was incomplete. When using Apache Tomcat 
10.0.0-M1 to 10.0.0, 9.0.0.M1 to 9.0.41, 8.5.0 to 8.5.61 or 7.0.0. to 
7.0.107 with a configuration edge case that was highly unlikely to be 
used, the Tomcat instance was still vulnerable to CVE-2020-9494. Note 
that both the previously published prerequisites for CVE-2020-9484 and 
the previously published mitigations for CVE-2020-9484 also apply to 
this issue.

Credit:

This issue was identified by Trung Pham of Viettel Cyber Security.

References:

https://lists.apache.org/thread.html/rfe62fbf9d4c314f166fe8c668e50e5d9dd882a99447f26f0367474bf%40%3Cannounce.tomcat.apache.org%3E
