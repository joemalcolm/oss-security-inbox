X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["747" "Thursday" "4" "October" "2018" "13:40:34" "+0200" "Daniel Gruno" "humbedooh@apache.org" "<85588672-185e-0540-d787-dd591f53b2ab@apache.org>" "17" "[oss-security] [NOTICE] CVE-2017-5658: Derived information disclosure by Apache Pony Mail" "^Date:" nil nil "10" "2018100411:40:34" "[oss-security] [NOTICE] CVE-2017-5658: Derived information disclosure by Apache Pony Mail" (number mark "U       humbedooh@ap Oct  4   17/747   " thread-indent "\"[oss-security] [NOTICE] CVE-2017-5658: Derived information disclosure by Apache Pony Mail\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1699 invoked by uid 550); 4 Oct 2018 12:15:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11380 invoked from network); 4 Oct 2018 11:40:49 -0000
Message-ID: <85588672-185e-0540-d787-dd591f53b2ab@apache.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Date: Thu, 4 Oct 2018 13:40:34 +0200
From: Daniel Gruno <humbedooh@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [NOTICE] CVE-2017-5658: Derived information disclosure by Apache Pony
 Mail
To: oss-security@lists.openwall.com, security <security@apache.org>


CVE-2017-5658
Product: Apache Pony Mail (incubating)
Version affected: Apache Pony Mail 0.7 to 0.9
Vulnerability type: Information Disclosure
Severity: Medium

The statistics generator was found to be returning timestamp data 
without proper authorization checks. This could lead to derived 
information disclosure on private lists about the timing of specific 
email subjects or text bodies, though without disclosing the content 
itself. As this was primarily used as a caching feature for faster 
loading times, the caching was disabled by default to prevent this. 
Users using 0.9 should upgrade to 0.10 to address this issue.

Please see http://ponymail.incubator.apache.org/downloads.html for the 
0.10 release that addresses these issues.
