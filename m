X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["989" "Monday" "19" "March" "2018" "12:47:45" "+0100" "=?UTF-8?B?RnJhbmNlc2NvIENoaWNjaGlyaWNjw7I=?=" "ilgrosso@apache.org" "<bf269dd1-c9df-54dd-209a-7a32d03705c7@apache.org>" "42" "[oss-security] [SECURITY] CVE-2018-1321: Remote code execution by administrators with report and template entitlements" nil nil nil "3" "2018031911:47:45" "[oss-security] [SECURITY] CVE-2018-1321: Remote code execution by administrators with report and template entitlements" (number mark "U       ilgrosso@apa Mar 19   42/989   " thread-indent "\"[oss-security] [SECURITY] CVE-2018-1321: Remote code execution by administrators with report and template entitlements\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14245 invoked by uid 550); 19 Mar 2018 12:10:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19640 invoked from network); 19 Mar 2018 11:48:02 -0000
To: "user@syncope.apache.org" <user@syncope.apache.org>,
 dev@syncope.apache.org, "security@apache.org" <security@apache.org>,
 oss-security@lists.openwall.com
From: =?UTF-8?Q?Francesco_Chicchiricc=c3=b2?= <ilgrosso@apache.org>
Message-ID: <bf269dd1-c9df-54dd-209a-7a32d03705c7@apache.org>
Date: Mon, 19 Mar 2018 12:47:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
Subject: [oss-security] [SECURITY] CVE-2018-1321: Remote code execution by administrators
 with report and template entitlements

CVE-2018-1321: Remote code execution by administrators with report and 
template entitlements

Severity: Medium

Vendor:
The Apache Software Foundation

Versions Affected:
* Releases prior to 1.2.11
* Releases prior to 2.0.8

The unsupported Releases 1.0.x, 1.1.x may be also affected.

Description:
An administrator with report and template entitlements can use XSL 
Transformations (XSLT) to perform malicious operations, including but 
not limited to file read, file write, and code execution.

Solution:
Syncope 1.2.x users upgrade to 1.2.11.
Syncope 2.0.x users upgrade to 2.0.8.

Mitigation:
Do not assign report and template entitlements to any administrator.

Credit:
This issue was discovered by ﻿Che-Chun Kuo.

References:
[1] http://syncope.apache.org/security.html

-- 
Francesco Chicchiriccò

Tirasa - Open Source Excellence
http://www.tirasa.net/

Member at The Apache Software Foundation
Syncope, Cocoon, Olingo, CXF, OpenJPA, PonyMail
http://home.apache.org/~ilgrosso/

