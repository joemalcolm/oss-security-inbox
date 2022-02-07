X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1301" "Monday" "7" "February" "2022" "22:04:17" "+0100" "Gabriel Corona" "gabriel.corona@enst-bretagne.fr" nil "42" "[oss-security] Browser-mediated attacks on WebDriver servers" nil nil nil "2" nil nil (number mark "U       gabriel.coro Feb  7   42/1301  " thread-indent "\"[oss-security] Browser-mediated attacks on WebDriver servers\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Browser-mediated attacks on WebDriver servers" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 6113 invoked by uid 550); 7 Feb 2022 21:18:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28404 invoked from network); 7 Feb 2022 21:04:29 -0000
Message-ID: <9e4aa379-70ce-3bf9-1480-c36a1b9fa4e0@enst-bretagne.fr>
Date: Mon, 7 Feb 2022 22:04:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Gabriel Corona <gabriel.corona@enst-bretagne.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Browser-mediated attacks on WebDriver servers

Several browser-mediated attacks on WebDriver servers:

* GeckoDriver CSRF vulnerability (CVE-2020-15660);
* GeckoDriver DNS-rebinding vulnerability (CVE-2021-4138);
* Chromedriver localhost-bound same-site/cross-origin request forgery 
vulnerability;
* Selenium server/Grid CSRF vulnerability;
* Selenium server/Grid DNS-rebinding vulnerability.

In all cases this could be used to trigger arbitrary code execution.

GeckoDriver CSRF vulnerability
==============================

This is CVE-2020-15660. Fixed in GeckoDriver v0.27.0.

GeckoDriver DNS-rebinding vulnerability
=======================================

This is CVE-2021-4138. Fixed in GeckoDriver v0.30.0.

Chromedriver localhost-bound same-site/cross-origin request forgery
===================================================================

A XSS on another localhost-bound service could be exploited to trigger
arbitrary code execution.

Reference: https://bugs.chromium.org/p/chromium/issues/detail?id=1100097

Selenium server/Grid CSRF vulnerability
=======================================

A CVE-ID has been requested from MITRE.

This is fixed in SeleniumServer 4.

Selenium server/Grid DNS-rebinding vulnerability
====================================

A CVE-ID has been requested from MITRE.

This is fixed in SeleniumServer 4.
