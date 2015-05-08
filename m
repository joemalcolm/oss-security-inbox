X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1713" "Friday" "8" "May" "2015" "08:49:54" "+0300" "Henri Salo" "henri@nerv.fi" "<20150508054954.GA6824@lakka.kapsi.fi>" "47" "[oss-security] CVE-2015-3429: DOM XSS Vulnerability in Twenty Fifteen WordPress Theme" nil nil nil "5" "2015050805:49:54" "[oss-security] CVE-2015-3429: DOM XSS Vulnerability in Twenty Fifteen WordPress Theme" (number mark "        henri@nerv.f May  8   47/1713  " thread-indent "\"[oss-security] CVE-2015-3429: DOM XSS Vulnerability in Twenty Fifteen WordPress Theme\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32158 invoked by uid 550); 8 May 2015 05:50:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32112 invoked from network); 8 May 2015 05:50:06 -0000
Message-ID: <20150508054954.GA6824@lakka.kapsi.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
User-Agent: Mutt/1.5.21 (2010-09-15)
X-SA-Exim-Connect-IP: 2001:1bc8:1004::1
X-SA-Exim-Mail-From: fgeek@kapsi.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
Date: Fri, 8 May 2015 08:49:54 +0300
From: Henri Salo <henri@nerv.fi>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2015-3429: DOM XSS Vulnerability in Twenty Fifteen WordPress
 Theme
To: oss-security@lists.openwall.com

https://www.netsparker.com/cve-2015-3429-dom-xss-vulnerability-in-twenty-fifteen-wordpress-theme/

Information
--------------------
Advisory by Netsparker.
Name: DOM XSS Vulnerability in Twenty Fifteen WordPress Theme
Affected Software : WordPress
Affected Versions: 4.2.1 and probably below
Vendor Homepage : https://wordpress.org/ and
https://wordpress.org/themes/twentyfifteen/
Vulnerability Type : DOM based Cross-site Scripting
Severity : Important
CVE-ID: CVE-2015-3429
Netsparker Advisory Reference : NS-15-007

Description
--------------------
By exploiting a Cross-site scripting vulnerability the attacker can
hijack a logged in user’s session. This means that the malicious
hacker can change the logged in user’s password and invalidate the
session of the victim while the hacker maintains access. As seen from
the XSS example in this article, if a web application is vulnerable to
cross-site scripting and the administrator’s session is hijacked, the
malicious hacker exploiting the vulnerability will have full admin
privileges on that web application.

Technical Details
--------------------
Proof of Concept URL for DOM XSS in WordPress:

http://example.com/wordpress/wp-content/themes/twentyfifteen/genericons/example.html#<img/src/onerror=alert(123)>

Advisory Timeline
--------------------
22/04/2015 - First Contact
07/05/2015 - Vulnerability fixed
07/05/2014 - Advisory released

Solution
--------------------
Download WordPress version 4.2.2 which includes fix for this vulnerability.

Credits & Authors
--------------------
These issues have been discovered by Omar Kurt while testing
Netsparker Web Application Security Scanner -
https://www.netsparker.com/web-vulnerability-scanner/
