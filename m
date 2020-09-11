X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["978" "Friday" "11" "September" "2020" "11:58:42" "+0200" "=?UTF-8?B?Q8OpZHJpYyBEYW1pb2xp?=" "cdamioli@apache.org" "<6d2be9b1-ab9a-bc1b-b0e3-f2cdddbee90b@apache.org>" "42" "[oss-security] [CVE-2020-11991] Apache Cocoon security vulnerability" nil nil nil "9" "2020091109:58:42" "[oss-security] [CVE-2020-11991] Apache Cocoon security vulnerability" (number mark "U       cdamioli@apa Sep 11   42/978   " thread-indent "\"[oss-security] [CVE-2020-11991] Apache Cocoon security vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-11991] Apache Cocoon security vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5422 invoked by uid 550); 11 Sep 2020 10:06:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1280 invoked from network); 11 Sep 2020 09:58:58 -0000
X-Virus-Scanned: Debian amavisd-new at lanfeust.anyware.corp
From: =?UTF-8?Q?C=c3=a9dric_Damioli?= <cdamioli@apache.org>
To: oss-security@lists.openwall.com
Organization: Apache Software Foundation
Message-ID: <6d2be9b1-ab9a-bc1b-b0e3-f2cdddbee90b@apache.org>
Date: Fri, 11 Sep 2020 11:58:42 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary="------------8D982875BB190FB2BE105472"
Content-Language: fr
Subject: [oss-security] [CVE-2020-11991] Apache Cocoon security vulnerability

--------------8D982875BB190FB2BE105472
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

[CVE-2020-11991] Apache Cocoon security vulnerability

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected: Apache Cocoon up to 2.1.12

Description: When using the StreamGenerator, the code parse a 
user-provided XML.

A specially crafted XML, including external system entities, could be 
used to access any file on the server system.

Mitigation:

The StreamGenerator now ignores external entities. 2.1.x users should 
upgrade to 2.1.13

Example:

With the following input :

<!--?xml version="1.0" ?--> <!DOCTYPE replace [<!ENTITY ent SYSTEM 
"file:///etc/shadow"> ]> <userInfo> <firstName>John</firstName> 
<lastName>&ent;</lastName> </userInfo> an attacker got the content of 
/etc/shadow

Credit: This issue was discovered by ﻿Nassim Asrir.


Regards,

-- 
Cédric Damioli


--------------8D982875BB190FB2BE105472--
