X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1100" "Tuesday" "30" "June" "2015" "21:05:42" "+0200" "Responsive Disclosure | HSASec" "disclosure@hsasec.de" "<5592E886.5090208@hsasec.de>" "48" "[oss-security] CVE request: persistent XSS in Wordpress Plugin NewStatPress v.1.0.3" nil nil nil "6" "2015063019:05:42" "[oss-security] CVE request: persistent XSS in Wordpress Plugin NewStatPress v.1.0.3" (number mark "U       disclosure@h Jun 30   48/1100  " thread-indent "\"[oss-security] CVE request: persistent XSS in Wordpress Plugin NewStatPress v.1.0.3\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22283 invoked by uid 550); 1 Jul 2015 07:54:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19688 invoked from network); 30 Jun 2015 19:05:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1435691145; l=1111;
	s=domk; d=hsasec.de;
	h=Content-Transfer-Encoding:Content-Type:Subject:To:MIME-Version:From:
	Date;
	bh=QjgHjetOhhzJTEBZ2hFq6ceO98vH3LaJM5j55t4l/3w=;
	b=RrrJFgpCgOlw06TzanYcHY1hv9r8QRIC/o8AsTLHBPcF3sxRVx7V5EfuPEUl9pOg9Aa
	pRZop8t3S2O1BkBKwMlnQI65kvZR/sLl3emx68g6CZK+QWyq4at0ODvJ+MouCbu90EWfk
	1cGKmn9n0R5J0qHSkOsJe9emi59EiF4l8Ew=
X-RZG-AUTH: :KGUXdkynaOpIuw2sU0sXjKTpmRzvZPMbX+JtqaXWxFlXyUDoN0AUj/1RJ39BiJtRg5o=
X-RZG-CLASS-ID: mo00
Message-ID: <5592E886.5090208@hsasec.de>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Date: Tue, 30 Jun 2015 21:05:42 +0200
From: Responsive Disclosure | HSASec <disclosure@hsasec.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: persistent XSS in Wordpress Plugin NewStatPress v.1.0.3
To: cve-assign@mitre.org, 
 "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

OpenWallInfo
============
Created Tuesday 30 June 2015

Dear Sir or Mam,

we want to inform you about a security vulnerability in one of the
plugins provided by you or one member of your company.
Please regard the information below.

Plugin:
NewStatPress (https://wordpress.org/plugins/newstatpress/)

Product-Type:
Wordpress-Plugin

Version:
1.0.3

Vendor:         
ice00 (http://newstatpress.altervista.org/?page_id=2)

Fixed:             
reported: 2015-06-30
fixed in version 1.04, 2015-06-30

Changelog:         
https://wordpress.org/plugins/newstatpress/changelog/


Type of vulnerability:
persistent XSS via HTTP-Header (Referer) (no authentication required)

Description:  
An unsifficent user input validation (of HTTP-Header: Referer) results
in a persistent XSS in the wordpress admin-panel. So an attacker may be
able to access any cookies, session tokens or other sensitive
information retained by the browser and used with that site.  

Proof of Concept:
yes (internal)

Researchers:
* Michael Kapfer (Michael.Kapfer@hs-augsburg.de)

Best regards,
HSASec-Team (https://www.HSASec.de)

