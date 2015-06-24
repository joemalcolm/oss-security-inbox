X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["806" "Wednesday" "24" "June" "2015" "17:15:26" "+0200" "Responsive Disclosure | HSASec" "disclosure@hsasec.de" "<558AC98E.4070709@hsasec.de>" "39" "[oss-security] CVE Request for Wordpress-Plugin Broken Link Checker v1.10.8: Persistent XSS in admin panel enabled by modified headers" nil nil nil "6" "2015062415:15:26" "[oss-security] CVE Request for Wordpress-Plugin Broken Link Checker v1.10.8: Persistent XSS in admin panel enabled by modified headers" (number mark "U       disclosure@h Jun 24   39/806   " thread-indent "\"[oss-security] CVE Request for Wordpress-Plugin Broken Link Checker v1.10.8: Persistent XSS in admin panel enabled by modified headers\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12167 invoked by uid 550); 24 Jun 2015 20:39:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24238 invoked from network); 24 Jun 2015 15:15:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1435158926; l=786;
	s=domk; d=hsasec.de;
	h=Content-Transfer-Encoding:Content-Type:Subject:To:MIME-Version:From:
	Date;
	bh=kqYgwHNk40/8OR7ZzxC3DzO3fduu2m0AMXPpxB2elfU=;
	b=rV08GJJADdBEyYch39pFIYnPTKPOwxR4V3l+VjxWNrxaDonxnnuWPlGvUQb+RSPASV3
	zRz2ZPxqHRANh9BKbE2qHTNiF9cfKCqlRlT8neWp8W4navUUxxdPrJcLeAyJQW1qGLPHr
	TaiH7qaG80/lqaOUXtIR3KzORcX+kd7o9GU=
X-RZG-AUTH: :KGUXdkynaOpIuw2sU0sXjKTpmRzvZPMbX+JtqaXWxFlXyUDoN0AUj/1RJ35EiJxWMQ==
X-RZG-CLASS-ID: mo00
Message-ID: <558AC98E.4070709@hsasec.de>
Date: Wed, 24 Jun 2015 17:15:26 +0200
From: Responsive Disclosure | HSASec <disclosure@hsasec.de>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>, 
 cve-assign@mitre.org
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE Request for Wordpress-Plugin Broken Link Checker v1.10.8: Persistent
 XSS in admin panel enabled by modified headers

Greetings,

we discovered a vulnerability in the following component and want to
request a CVE for it:

Product-Type:     
Wordpress Plugin

Product:         
Broken Link Checker (https://wordpress.org/plugins/broken-link-checker/)

Version:         
up to 1.10.8

Vendor:         
Janis Elsts (http://w-shadow.com/)

Fixed:             
reported: 2015-04-05
fixed in version 1.10.9, 2015-06-19

Changelog:         
https://wordpress.org/plugins/broken-link-checker/changelog/

PoC available:     
yes (internal)

Description:
Persistent XSS in wordpress-admin-panel enabled by not proper sanitized
HTTP-Headers.
There are no special priviliges required to exploit this vulnerability.

Researchers:
* Michael Kapfer (Michael.Kapfer@hs-augsburg.de)


Best regards,
 the HSASec-Team
 (https://www.hsasec.de)
