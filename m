X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1178" "Friday" "8" "April" "2016" "22:41:37" "+0200" "jleroux@apache.org" "jleroux@apache.org" "<57081781.6060209@apache.org>" "31" "[oss-security] CVE-2016-2170: Apache OFBiz information disclosure vulnerability" nil nil nil "4" "2016040820:41:37" "[oss-security] CVE-2016-2170: Apache OFBiz information disclosure vulnerability" (number mark "U       jleroux@apac Apr  8   31/1178  " thread-indent "\"[oss-security] CVE-2016-2170: Apache OFBiz information disclosure vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27735 invoked by uid 550); 9 Apr 2016 07:05:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17543 invoked from network); 8 Apr 2016 20:48:47 -0000
To: "user@ofbiz.apache.org" <user@ofbiz.apache.org>
Cc: "dev@ofbiz.apache.org" <dev@ofbiz.apache.org>,
 "security@apache.org" <security@apache.org>,
 oss-security@lists.openwall.com, bugtraq@securityfocus.com
From: "jleroux@apache.org" <jleroux@apache.org>
Message-ID: <57081781.6060209@apache.org>
Date: Fri, 8 Apr 2016 22:41:37 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.7.2
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2016-2170: Apache OFBiz information disclosure vulnerability

==========================================
CVE-2016-2170: Apache OFBiz information disclosure vulnerability

Severity: Important

Vendor:
The Apache Software Foundation

Versions Affected:
Apache OFBiz 13.07.02 and 13.07.01
Apache OFBiz 12.04.05 and earlier releases in the series (12.04.*)
The unsupported releases 11.04.*,  10.04.*  and 09.04 versions are also affected but not fixed.

Description:
The infamous Java serialization vulnerability

Mitigation:
13.07.* users should upgrade to 13.07.03
12.04.05 users should upgrade to 12.04.06 (Note though that in 12.04.06 RMI is not deactivated so you should use the recommended remediation: notsoserial)

Credit:
This infamous issue was confirmed to be an issue in OFBiz by the OFBiz team, due to two external Java libraries and RMI usage.

Remediation:
Apart when using RMI with 12.04.03 version nothing is needed. But with any version, if you use  JNDI, JMX or Spring and maybe other Java classes, 
please check the references (hint: use notsoserial with your own whitelist)

References:
https://cwiki.apache.org/confluence/display/OFBIZ/The+infamous+Java+serialize+vulnerability

==========================================
