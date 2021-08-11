X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["434" "Wednesday" "11" "August" "2021" "18:07:27" "+0200" "jleroux@apache.org" "jleroux@apache.org" nil "22" "[oss-security] [CVE-2021-37608] Arbitrary file upload vulnerability in OFBiz" nil nil nil "8" nil nil (number mark "U       jleroux@apac Aug 11   22/434   " thread-indent "\"[oss-security] [CVE-2021-37608] Arbitrary file upload vulnerability in OFBiz\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2021-37608] Arbitrary file upload vulnerability in OFBiz" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22128 invoked by uid 550); 11 Aug 2021 20:06:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3481 invoked from network); 11 Aug 2021 16:07:24 -0000
From: "jleroux@apache.org" <jleroux@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <cf809005-8196-8fa2-7a3e-fef076488bca@apache.org>
Date: Wed, 11 Aug 2021 18:07:27 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-GB
Subject: [oss-security] [CVE-2021-37608] Arbitrary file upload vulnerability in OFBiz

Severity:
High, possible RCE

Vendor:
The Apache Software Foundation

Versions Affected:
OFBiz versions prior to 17.12.08

Description:
Apache OFBiz has unsafe deserialization prior to 17.12.08 version

Mitigation:
Upgrade to at least 17.12.08
or apply patches at https://issues.apache.org/jira/browse/OFBIZ-12297

Credit:
Zhujie from galaxylab <galaxylab@sina.com>

References:
http://ofbiz.apache.org/download.html#vulnerabilities

