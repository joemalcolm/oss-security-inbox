X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["805" "Thursday" "2" "July" "2015" "17:16:38" "+0200" "Responsive Disclosure | HSASec" "disclosure@hsasec.de" "<559555D6.50606@hsasec.de>" "40" "[oss-security] CVE- Request for Wordpress Plugin Simple Ads Manager: DoS without authentication" nil nil nil "7" "2015070215:16:38" "[oss-security] CVE- Request for Wordpress Plugin Simple Ads Manager: DoS without authentication" (number mark "        disclosure@h Jul  2   40/805   " thread-indent "\"[oss-security] CVE- Request for Wordpress Plugin Simple Ads Manager: DoS without authentication\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30434 invoked by uid 550); 2 Jul 2015 15:19:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28597 invoked from network); 2 Jul 2015 15:16:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1435850199; l=783;
	s=domk; d=hsasec.de;
	h=Content-Transfer-Encoding:Content-Type:Subject:To:MIME-Version:From:
	Date;
	bh=nJ2LwJXdHOzEIgxT54xQu26c2F87USWRTD3gAgx+xMI=;
	b=RTLmFuWIG3ThkNWUkCSffxfbDRStAM4ctTwsOIg2FcK3tSpkQQh/39OdV6mqfc7wyv+
	/pn15sKvkfzBkXt3F5/+bOP21dgx4QiO8JfR5mkTiAynt/LPnNSm9UZ7AyGhd/F2fiMx5
	hgcLh/H9kXDmnkeqnYsqtE6gdyeYemp+vW8=
X-RZG-AUTH: :KGUXdkynaOpIuw2sU0sXjKTpmRzvZPMbX+JtqaXWxFlXyUDoN0AUj/1RJ35FiJ09
X-RZG-CLASS-ID: mo00
Message-ID: <559555D6.50606@hsasec.de>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Date: Thu, 02 Jul 2015 17:16:38 +0200
From: Responsive Disclosure | HSASec <disclosure@hsasec.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE- Request for Wordpress Plugin Simple Ads Manager: DoS without
 authentication
To: cve-assign@mitre.org, 
 "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

Greetings,

we discovered a vulnerability in the following component and want to
request a CVE for it:

Product-Type:     
Wordpress Plugin

Product:         
Simple Ads Manager (https://wordpress.org/plugins/simple-ads-manager/)

Version:         
up to 2.9.3.114

Vendor:         
minimus (minimus@simplelib.com)

Fixed:             
2015-07-02
(reportet: 2015-06-29)

Changelog:         
https://wordpress.org/plugins/simple-ads-manager/changelog/

PoC available:     
yes (internal)

Description:
An input validation flow allows an attacker to perform simple file
system operations which can result in a denial of service of the current
instance. No authentication is required.

Researchers:
* Michael Kapfer (Michael.Kapfer@hs-augsburg.de)


Best regards,
 the HSASec-Team
 (https://www.hsasec.de)
 
