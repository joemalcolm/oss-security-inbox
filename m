X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["632" "Wednesday" "29" "June" "2016" "09:13:12" "+0200" "Lucian Cojocar" "lucian@cojocar.com" "<3f71b0bd-71dd-723e-eed8-925bf2e2c8f7@cojocar.com>" "19" "[oss-security] CVE Request: uclibc-ng (and uclibc): ARM arch: code execution" nil nil nil "6" "2016062907:13:12" "[oss-security] CVE Request: uclibc-ng (and uclibc): ARM arch: code execution" (number mark "U       lucian@cojoc Jun 29   19/632   " thread-indent "\"[oss-security] CVE Request: uclibc-ng (and uclibc): ARM arch: code execution\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15883 invoked by uid 550); 29 Jun 2016 07:23:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10112 invoked from network); 29 Jun 2016 07:13:34 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=simple; d=cojocar.com; h=from:subject
	:to:message-id:date:mime-version:content-type
	:content-transfer-encoding; s=mail; bh=+MiDRlNGE0ystTQmtmOnVzgid
	4M=; b=pFS9G+weq7CsVa8Ydu2oT99/NBwWqoHBJL0PeviY6NsT7VY+D+2oveJLX
	Ck3eNzIhWWpnfZx0hvJRvzV5mfklICKcKv4XkljjWNzTt8e+Q5FcuSrjSlXQadjb
	B8vWyNPuvCNvsnuVsI7a264UyRoO0HyQte6hAZfROwWEsac0a4=
DomainKey-Signature: a=rsa-sha1; c=simple; d=cojocar.com; h=from:subject
	:to:message-id:date:mime-version:content-type
	:content-transfer-encoding; q=dns; s=mail; b=1wkry0aTA0QV0CPV4nD
	FBaQers80N/LV6u7/WV1NVxrafnIcQ8t0/KHfCDtAihXxETQSA3rtWc5ctBDV+UA
	Nk0gIqtm6AamXS5sySRJ7YB3zEtgZygIeFayimVFR6IlOzED73oYCYN+7CblUH52
	wgCK7B9ZbDPaqo0Ze4WKJP8A=
From: Lucian Cojocar <lucian@cojocar.com>
To: oss-security@lists.openwall.com
Message-ID: <3f71b0bd-71dd-723e-eed8-925bf2e2c8f7@cojocar.com>
Date: Wed, 29 Jun 2016 09:13:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Icedove/45.1.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE Request: uclibc-ng (and uclibc): ARM arch: code execution

Hi all,

u-clibc and uclibc-ng is used in several projects[4, 5].

As described here[3], an attacker that controls the length parameter of
the `memset' can also control the value of the PC register. The issue is
similar to CVE-2011-2702. A patch has been proposed for uclibc-ng[1]. A
denial of service proof of concept is available[2].

Thanks,
Lucian

[1]http://repo.or.cz/uclibc-ng.git/commit/e3848e3dd64a8d6437531488fe341354bc02eaed
[2]http://article.gmane.org/gmane.comp.lib.uclibc-ng/27
[3]http://mailman.uclibc-ng.org/pipermail/devel/2016-May/000890.html
[4]https://www.uclibc.org/products.html
[5]http://www.uclibc-ng.org/


