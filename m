X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["578" "Tuesday" "27" "April" "2021" "21:00:03" "+0200" "jleroux@apache.org" "jleroux@apache.org" nil "25" "[oss-security] [CVE-2021-29200] RCE vulnerability in latest Apache OFBiz due to Java serialisation using RMI" nil nil nil "4" nil nil (number mark "U       jleroux@apac Apr 27   25/578   " thread-indent "\"[oss-security] [CVE-2021-29200] RCE vulnerability in latest Apache OFBiz due to Java serialisation using RMI\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2021-29200] RCE vulnerability in latest Apache OFBiz due to Java serialisation using RMI" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9365 invoked by uid 550); 27 Apr 2021 19:05:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7389 invoked from network); 27 Apr 2021 19:00:17 -0000
From: "jleroux@apache.org" <jleroux@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <4f613530-d896-24c0-c500-19ce517dbd3a@apache.org>
Date: Tue, 27 Apr 2021 21:00:03 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-GB
Subject: [oss-security] [CVE-2021-29200] RCE vulnerability in latest Apache OFBiz due to Java
 serialisation using RMI

Severity:
High, possible RCE

Vendor:
The Apache Software Foundation

Versions Affected:
OFBiz versions prior to 17.12.07

Description:
Apache OFBiz has unsafe deserialization prior to 17.12.07 version
An unauthenticated user can perform a RCE attack

Mitigation:
Upgrade to at least 17.12.07
or apply one of the patches at https://issues.apache.org/jira/browse/OFBIZ-12216

Credit:
r00t4dm at Cloud-Penetrating Arrow Lab <r00t4dm@gmail.com>
asd of MoyunSec V-Lab <root@thiscode.cc>
赖涵 <1044309102@qq.com>

References:
http://ofbiz.apache.org/download.html#vulnerabilities

