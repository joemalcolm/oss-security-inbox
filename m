X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1460" "Monday" "20" "June" "2016" "18:41:50" "+0200" "Lukas Reschke" "lukas@nextcloud.com" "<16A71325-B291-4AE5-8689-54374BA32C8F@nextcloud.com>" "33" "[oss-security] CVE request for PHP bug #68978: \"XSS in header() with Internet Explorer\" (2015)" nil nil nil "6" "2016062016:41:50" "[oss-security] CVE request for PHP bug #68978: \"XSS in header() with Internet Explorer\" (2015)" (number mark "U       lukas@nextcl Jun 20   33/1460  " thread-indent "\"[oss-security] CVE request for PHP bug #68978: \"XSS in header() with Internet Explorer\" (2015)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3639 invoked by uid 550); 20 Jun 2016 16:48:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32440 invoked from network); 20 Jun 2016 16:42:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nextcloud.com;
	s=mail; t=1466440911;
	bh=2/iglnuBbQ5C4E8uJZHe27CVmq+U8qW+3PJT0GH8iPw=;
	h=From:Subject:Date:Cc:To:From;
	b=DkTG4uW7aRQfyud5Luv2aaXT1qHuyFVA5sI9RIBAQvlICkEamIyxH7DBwgIZ3beDh
	 ALc23JqIhxfCFFUNEGhgPKLtO2M2X9AsVsM7rTseyaxs31cD6VvyJ7HPGKbKd5XPrk
	 7EJH6trprx2RCgJNS2Lg1QqRCryTxNVGjelCk8hc=
From: Lukas Reschke <lukas@nextcloud.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 20 Jun 2016 18:41:50 +0200
Message-Id: <16A71325-B291-4AE5-8689-54374BA32C8F@nextcloud.com>
Cc: cve-assign@mitre.org
To: oss-security@lists.openwall.com
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
Subject: [oss-security] CVE request for PHP bug #68978: "XSS in header() with Internet Explorer" (2015)

Hi,

Considering CVE-2011-1398 (https://cve.mitre.org/cgi-bin/cvename.cgi?name=
=3DCVE-2011-1398) we believe PHP security bug #68978 (https://bugs.php.net/=
bug.php?id=3D68978) also warrants a CVE identifier:

> The filtering in header() function is not sufficient and this can lead to=
 header injection and content injection (XSS) when the client is Internet E=
xplorer (in every tested version).
> IE accepts %0A%20 or %0D%0A%20 as separator in HTTP while other browser t=
reat the new line beginning with space as the continuation of the previous =
header. This can lead to header injection or content injection (basically, =
XSS) in IE.

PHP=E2=80=99s documentation (http://php.net/manual/en/function.header.php) =
explicitly states that since version 5.2.1 PHP natively prevents header inj=
ections:

> This function now prevents more than one header to be sent at once as a p=
rotection against header injection attacks.

My understanding is t hat the corresponding upstream commit can be found at=
 https://github.com/php/php-src/commit/996faf964bba1aec06b153b370a7f20d3dd2=
bb8b=20

This has been patched in PHP 5.6.6, 5.5.22 and 5.4.38, since some distribut=
ions ship older versions and have not backported this we=E2=80=99re therefo=
re kindly requesting a CVE identifier and making OSS Security aware of this=
. An issue directly to Ubuntu has been filed at https://bugs.launchpad.net/=
ubuntu/+source/php5/+bug/1594041 for 14.04.

Thanks,
Lukas=
