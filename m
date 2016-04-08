X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1010" "Friday" "8" "April" "2016" "21:57:35" "+0200" "jleroux@apache.org" "jleroux@apache.org" "<57080D2F.4000407@apache.org>" "32" "[oss-security] CVE-2015-3268: Apache OFBiz information disclosure vulnerability" nil nil nil "4" "2016040819:57:35" "[oss-security] CVE-2015-3268: Apache OFBiz information disclosure vulnerability" (number mark "U       jleroux@apac Apr  8   32/1010  " thread-indent "\"[oss-security] CVE-2015-3268: Apache OFBiz information disclosure vulnerability\"\n") "<57061BB1.1040108@les7arts.com>" ("<57061BB1.1040108@les7arts.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19477 invoked by uid 550); 9 Apr 2016 07:05:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24402 invoked from network); 8 Apr 2016 19:57:47 -0000
References: <57061BB1.1040108@les7arts.com>
To: oss-security@lists.openwall.com, bugtraq@securityfocus.com
From: "jleroux@apache.org" <jleroux@apache.org>
X-Forwarded-Message-Id: <57061BB1.1040108@les7arts.com>
Message-ID: <57080D2F.4000407@apache.org>
Date: Fri, 8 Apr 2016 21:57:35 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.7.2
MIME-Version: 1.0
In-Reply-To: <57061BB1.1040108@les7arts.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2015-3268: Apache OFBiz information disclosure vulnerability

CVE-2015-3268: Apache OFBiz information disclosure vulnerability

==========================================
Severity: Moderate

Vendor:
The Apache Software Foundation

Versions Affected:
Apache OFBiz 13.07.02 and 13.07.01
Apache OFBiz 12.04.05 and earlier releases in the series (12.04.*)
The unsupported releases 11.04.*,  10.04.*  and 09.04 versions are also affected (Lilian Iatco reported he tried with r691692, which is early March 2008)

Description:
Stored Cross-Site Scripting Vulnerability affecting the description attribute of the display-entity element because it was not escaped.

Mitigation:
13.07.* users should upgrade to 13.07.03
12.04.05 users should upgrade to 12.04.06
You can find more information at https://issues.apache.org/jira/browse/OFBIZ-6506

Credit:
This issue was discovered by Lilian Iatco and reported at https://issues.apache.org/jira/browse/OFBIZ-6506

References:

http://ofbiz.apache.org/download.html#vulnerabilities

==========================================

Jacques

