X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["474" "Tuesday" "27" "April" "2021" "21:00:22" "+0200" "jleroux@apache.org" "jleroux@apache.org" nil "22" "[oss-security] [CVE-2021-30128] Unsafe deserialization in OFBiz" nil nil nil "4" nil nil (number mark "U       jleroux@apac Apr 27   22/474   " thread-indent "\"[oss-security] [CVE-2021-30128] Unsafe deserialization in OFBiz\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2021-30128] Unsafe deserialization in OFBiz" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23949 invoked by uid 550); 27 Apr 2021 19:09:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7529 invoked from network); 27 Apr 2021 19:00:49 -0000
From: "jleroux@apache.org" <jleroux@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <b484727f-90d2-1a27-4bb2-c5e2b1579df6@apache.org>
Date: Tue, 27 Apr 2021 21:00:22 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-GB
Subject: [oss-security] [CVE-2021-30128] Unsafe deserialization in OFBiz

Severity:
High, possible RCE

Vendor:
The Apache Software Foundation

Versions Affected:
OFBiz versions prior to 17.12.07

Description:
Apache OFBiz has unsafe deserialization prior to 17.12.07 version

Mitigation:
Upgrade to at least 17.12.07
or apply patches at https://issues.apache.org/jira/browse/OFBIZ-12212 & OFBIZ-12221

Credit:
Litch1 from the Security Team of Alibaba Cloud <litch1chk@gmail.com>

References:
http://ofbiz.apache.org/download.html#vulnerabilities

