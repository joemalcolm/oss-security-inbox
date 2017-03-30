X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3208" "Friday" "31" "March" "2017" "01:17:16" "+0200" "Damien Regad" "dregad@mantisbt.org" "<obk3lm$s92$1@blaine.gmane.org>" "102" "[oss-security] Advisory: XSS issues in MantisBT (CVE-2017-6973, CVE-2017-7241, CVE-2017-7309)" nil nil nil "3" "2017033023:17:16" "[oss-security] Advisory: XSS issues in MantisBT (CVE-2017-6973, CVE-2017-7241, CVE-2017-7309)" (number mark "U       dregad@manti Mar 31  102/3208  " thread-indent "\"[oss-security] Advisory: XSS issues in MantisBT (CVE-2017-6973, CVE-2017-7241, CVE-2017-7309)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11326 invoked by uid 550); 30 Mar 2017 23:21:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9890 invoked from network); 30 Mar 2017 23:17:46 -0000
X-Injected-Via-Gmane: http://gmane.org/
To: oss-security@lists.openwall.com
From: Damien Regad <dregad@mantisbt.org>
Date: Fri, 31 Mar 2017 01:17:16 +0200
Message-ID: <obk3lm$s92$1@blaine.gmane.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Complaints-To: usenet@blaine.gmane.org
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
X-Mozilla-News-Host: news://news.gmane.org:119
Subject: [oss-security] Advisory: XSS issues in MantisBT (CVE-2017-6973, CVE-2017-7241,
 CVE-2017-7309)

Please take note of the following 3 cross-site scripting issues in MantisBT

Best regards
Damien Regad
MantisBT developer


1. CVE-2017-6973: XSS in adm_config_report.php

A cross-site scripting (XSS) vulnerability in the MantisBT
Configuration Report page (adm_config_report.php) allows remote
attackers to inject arbitrary code through a crafted 'action'
parameter.

Affected versions: 1.3.0-rc.2 through 2.2.1
Fixed in versions: 1.3.8, 2.1.2, 2.2.2 (released 2017-03-22), 2.3.0 (not
yet released*)

Patch:
- 1.3:
http://github.com/mantisbt/mantisbt/commit/034cd07b47af37366fc7b726cb4a4f971d3d3fb9
- 2.x:
http://github.com/mantisbt/mantisbt/commit/da74c5aa02bcf21cfaab1180f892c22415e5fea6

Credits:
- Reported by Yelin and Zhangdongsheng from VenusTech
http://www.venustech.com.cn/
- Fixed by Damien Regad (MantisBT Developer)

References:
- MantisBT issue tracker https://mantisbt.org/bugs/view.php?id=22537



2. CVE-2017-7309: XSS in adm_config_report.php

A cross-site scripting (XSS) vulnerability in the MantisBT
Configuration Report page (adm_config_report.php) allows remote
attackers to inject arbitrary code (if CSP settings permit it) through
a crafted 'config_option' parameter.

This is related to CVE-2017-6973 (see above) introduced by the same
change, affects same component, and same root cause of not escaping
parameter before output.

Affected versions: 1.3.0-rc.2 through 2.2.2
Fixed in versions: 1.3.9, 2.1.3, 2.2.3, 2.3.0 (not yet released*)

Patch:
- 1.3:
http://github.com/mantisbt/mantisbt/commit/c9e5b1d0404503022605459552faeaf610bf15ae
- 2.x:
http://github.com/mantisbt/mantisbt/commit/e881dd79df422033bbea88914fc0a717fae40358

Credits:
- Reported by Yelin and Zhangdongsheng from VenusTech
http://www.venustech.com.cn/
- Fixed by Damien Regad (MantisBT Developer)

References:
- MantisBT issue tracker http://www.mantisbt.org/bugs/view.php?id=22579


3. CVE-2017-7241: XSS in move_attachments_page.php

A cross-site scripting (XSS) vulnerability in the MantisBT Move
Attachements page (move_attachments_page.php, part of admin tools)
allows remote attackers to inject arbitrary code through a crafted
'type' parameter, if Content Security Protection (CSP) settings allows
it.

Note that this vulnerability is not exploitable if the admin tools
directory is removed, as recommended in the Admin Guide [1]. A
reminder to do so is also displayed on the login page.

Affected versions: 1.2.16 and later
Fixed in versions: 1.3.9, 2.1.3, 2.2.3, 2.3.0 (not yet released*)
Note that 1.2 branch is no longer supported, so no patch is provided for
that; please upgrade to a later version.

Patch:
- 1.3:
http://github.com/mantisbt/mantisbt/commit/d31841c806a3c8379fcf6c9d9559451270b0f1cb
- 2.x:
http://github.com/mantisbt/mantisbt/commit/ecef0e9b523a460709e8feedfce72f05bb30b992


Credits:
- Reported by Yelin and Zhangdongsheng from VenusTech
http://www.venustech.com.cn/
- Fixed by Damien Regad (MantisBT Developer)

References:
- MantisBT issue tracker http://www.mantisbt.org/bugs/view.php?id=22568
- [1]
http://mantisbt.org/docs/master/en-US/Admin_Guide/html-desktop/#admin.install.postcommon


* Releases 1.3.9, 2.1.3, 2.2.3 and 2.3.0 are scheduled for release on
coming week-end


