X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1787" "Tuesday" "1" "August" "2017" "15:22:33" "+0200" "Damien Regad" "dregad@mantisbt.org" "<olpvai$s2$1@blaine.gmane.org>" "62" "[oss-security] Advisory: XSS issues in MantisBT (CVE-2017-12061, CVE-2017-12062)" "^Date:" nil nil "8" "2017080113:22:33" "[oss-security] Advisory: XSS issues in MantisBT (CVE-2017-12061, CVE-2017-12062)" (number mark "U       dregad@manti Aug  1   62/1787  " thread-indent "\"[oss-security] Advisory: XSS issues in MantisBT (CVE-2017-12061, CVE-2017-12062)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32322 invoked by uid 550); 1 Aug 2017 13:24:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30705 invoked from network); 1 Aug 2017 13:22:54 -0000
X-Injected-Via-Gmane: http://gmane.org/
Message-ID: <olpvai$s2$1@blaine.gmane.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Complaints-To: usenet@blaine.gmane.org
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
X-Mozilla-News-Host: news://news.gmane.org:119
Content-Language: en-US
Date: Tue, 1 Aug 2017 15:22:33 +0200
From: Damien Regad <dregad@mantisbt.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Advisory: XSS issues in MantisBT (CVE-2017-12061, CVE-2017-12062)
To: oss-security@lists.openwall.com

Please take note of the following 2 cross-site scripting issues in MantisBT

Best regards
Damien Regad
MantisBT developer


1. CVE-2017-12061: XSS in /admin/install.php script

A cross-site scripting (XSS) vulnerability in the MantisBT
Installation script allows remote attackers to inject arbitrary code
through crafted parameters.

This is only possible if the admin/ folder was not deleted after
installation, as recommended in the MantisBT Admin Guide [1].

Affected versions: 1.3.11 and older, 2.5.1 and older
Fixed in versions: 1.3.12, 2.5.2, 2.6.0 (not yet released*)

Patch:
- 1.3:
https://github.com/mantisbt/mantisbt/commit/17f9b94f031ba93ae2a727bca0e68458ecd08fb0
- 2.x:
https://github.com/mantisbt/mantisbt/commit/c73ae3d3d4dd4681489a9e697e8ade785e27cba5

Credits:
- Reported by aLLy from ONSEC (https://twitter.com/IamSecurity)
- Fixed by Damien Regad (MantisBT Developer)

References:
- MantisBT issue tracker https://mantisbt.org/bugs/view.php?id=23146

[1]
http://mantisbt.org/docs/master/en-US/Admin_Guide/html-desktop/#admin.install.postcommon


2. CVE-2017-12062: XSS in manage_user_page.php

A cross-site scripting (XSS) vulnerability in the MantisBT
Manage User page allows remote attackers to inject arbitrary code (if
CSP settings permit it) through a crafted 'filter' parameter.

Affected versions: 2.1.0 through 2.5.1
Fixed in versions: 2.5.2, 2.6.0 (not yet released*)

Patch:
https://github.com/mantisbt/mantisbt/commit/9b5b71dadbeeeec27efea59f562ac5bd6d2673b7

Credits:
- Reported by Trí Chim Trích (https://twitter.com/trichimtrich)
- Fixed by Roland Becker (MantisBT Developer)

References:
- MantisBT issue tracker http://www.mantisbt.org/bugs/view.php?id=23166


* Releases 1.3.9, 2.1.3, 2.2.3 and 2.3.0 are scheduled for release on
coming week-end




