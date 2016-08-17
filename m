X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1584" "Thursday" "18" "August" "2016" "00:36:25" "+0200" "Damien Regad" "dregad@mantisbt.org" "<np2ot9$gpa$1@blaine.gmane.org>" "60" "[oss-security] MantisBT: XSS in view_all_bug_page.php" nil nil nil "8" "2016081722:36:25" "[oss-security] MantisBT: XSS in view_all_bug_page.php" (number mark "U       dregad@manti Aug 18   60/1584  " thread-indent "\"[oss-security] MantisBT: XSS in view_all_bug_page.php\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7531 invoked by uid 550); 17 Aug 2016 23:51:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15366 invoked from network); 17 Aug 2016 22:36:47 -0000
X-Injected-Via-Gmane: http://gmane.org/
To: oss-security@lists.openwall.com
From: Damien Regad <dregad@mantisbt.org>
Date: Thu, 18 Aug 2016 00:36:25 +0200
Message-ID: <np2ot9$gpa$1@blaine.gmane.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Complaints-To: usenet@blaine.gmane.org
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
X-Mozilla-News-Host: news://news.gmane.org:119
Subject: [oss-security] MantisBT: XSS in view_all_bug_page.php

Greetings,

Please assign a CVE ID for the following issue.

Description
-----------
An XSS vulnerability was discovered in MantisBT's Filter API, affecting 
the View Issues page. It is caused by unescaped output of the 
'view_type' GPC parameter, and can be exploited as follows:

http://example.com/mantis/view_all_bug_page.php?view_type="><script>alert('XSS');</script>

To resolve the issue, the parameter's value is sanitized prior to being 
stored in the filter, ensuring only authorized values 'simple' and 
'advanced' are saved, and subsequently printed on the hidden form field.

Affected versions
-----------------
- >= 1.2.0 (possibly older releases as well - not tested)
- >= 1.3.0-beta.1
- >= 2.0.0-beta.1

Fixed in versions:
------------------
- 1.3.1
- 2.0.0-beta.2

As of this writing, these have not been released yet, but both should be 
available in the coming days. Until then, installations should be 
patched manually.

Please note that MantisBT 1.2.20 was the last release in the legacy 
1.2.x series, which is no longer supported; this vulnerability will 
therefore NOT be patched in 1.2. All installations are strongly advised 
to upgrade to MantisBT 1.3.

Patch
-----
See Github [1]

Credits
-------
The issue was discovered by Will Dollman of Netcraft Ltd, and fixed by 
Damien Regad (MantisBT Developer).

References
----------
Further details available in our issue tracker [2]


Best regards,
D. Regad
MantisBT Developer
http://www.mantisbt.org


[1] https://github.com/mantisbt/mantisbt/commit/7086c2d8
[2] https://mantisbt.org/bugs/view.php?id=21611


