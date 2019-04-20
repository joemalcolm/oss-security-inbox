X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["601" "Saturday" "20" "April" "2019" "11:30:39" "-0500" "Daniel Gruno" "humbedooh@apache.org" "<8d924921-8e31-838a-4957-970b176e42c5@apache.org>" "26" "[oss-security] [CVE-2019-0218] Apache Pony Mail (incubating) Reflected XSS" nil nil nil "4" "2019042016:30:39" "[oss-security] [CVE-2019-0218] Apache Pony Mail (incubating) Reflected XSS" (number mark "U       humbedooh@ap Apr 20   26/601   " thread-indent "\"[oss-security] [CVE-2019-0218] Apache Pony Mail (incubating) Reflected XSS\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2019-0218] Apache Pony Mail (incubating) Reflected XSS" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13702 invoked by uid 550); 20 Apr 2019 17:51:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14109 invoked from network); 20 Apr 2019 16:30:56 -0000
To: dev@ponymail.incubator.apache.org, users@ponymail.incubator.apache.org,
 oss-security@lists.openwall.com
From: Daniel Gruno <humbedooh@apache.org>
Message-ID: <8d924921-8e31-838a-4957-970b176e42c5@apache.org>
Date: Sat, 20 Apr 2019 11:30:39 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: [oss-security] [CVE-2019-0218] Apache Pony Mail (incubating) Reflected XSS

CVE-2019-0218: Apache Pony Mail (incubating) Reflected XSS

Severity: Moderate

Vendor:
The Apache Software Foundation

Versions Affected:
Apache Pony Mail (incubating) versions 0.8 through 0.10

Description:
A vulnerability was discovered wherein a specially crafted URL could
enable reflected XSS via JavaScript in the pony mail interface.

Mitigation:
All users should upgrade to Pony Mail (incubating) v/0.11

Credit:
- This issue was initially discovered by ﻿Francesco Soncina - ABN AMRO
   Red Team.

References:
http://ponymail.incubator.apache.org/support.html
https://s.apache.org/pony11


