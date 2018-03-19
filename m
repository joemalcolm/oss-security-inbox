X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["882" "Monday" "19" "March" "2018" "12:49:36" "+0100" "=?UTF-8?B?RnJhbmNlc2NvIENoaWNjaGlyaWNjw7I=?=" "ilgrosso@apache.org" "<47a2120e-2b3d-4e39-4e6f-1914d57c5c7c@apache.org>" "40" "[oss-security] [SECURITY] CVE-2018-1322: Information disclosure via FIQL and ORDER BY sorting" nil nil nil "3" "2018031911:49:36" "[oss-security] [SECURITY] CVE-2018-1322: Information disclosure via FIQL and ORDER BY sorting" (number mark "U       ilgrosso@apa Mar 19   40/882   " thread-indent "\"[oss-security] [SECURITY] CVE-2018-1322: Information disclosure via FIQL and ORDER BY sorting\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15577 invoked by uid 550); 19 Mar 2018 12:10:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21664 invoked from network); 19 Mar 2018 11:49:52 -0000
From: =?UTF-8?Q?Francesco_Chicchiricc=c3=b2?= <ilgrosso@apache.org>
To: "user@syncope.apache.org" <user@syncope.apache.org>,
 dev@syncope.apache.org, "security@apache.org" <security@apache.org>,
 oss-security@lists.openwall.com
Message-ID: <47a2120e-2b3d-4e39-4e6f-1914d57c5c7c@apache.org>
Date: Mon, 19 Mar 2018 12:49:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: [oss-security] [SECURITY] CVE-2018-1322: Information disclosure via FIQL and ORDER
 BY sorting

CVE-2018-1322: Information disclosure via FIQL and ORDER BY sorting

Severity: Medium

Vendor:
The Apache Software Foundation

Versions Affected:
* Releases prior to 1.2.11
* Releases prior to 2.0.8

The unsupported Releases 1.0.x, 1.1.x may be also affected.

Description:
An administrator with user search entitlements can recover sensitive
security values using the fiql and orderby parameters.

Solution:
Syncope 1.2.x users upgrade to 1.2.11.
Syncope 2.0.x users upgrade to 2.0.8.

Mitigation:
Do not assign user search entitlements to any administrator.

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

