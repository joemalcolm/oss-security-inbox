X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["430" "Friday" "27" "January" "2017" "10:51:09" "+0300" "Luc Lynx" "luc.lynx@yandex.ru" "<60bcff1f-fa22-502f-8b1e-95a662a52f0d@yandex.ru>" "18" "[oss-security] SSRF issue in the svgsalamander library" nil nil nil "1" "2017012707:51:09" "[oss-security] SSRF issue in the svgsalamander library" (number mark "U       luc.lynx@yan Jan 27   18/430   " thread-indent "\"[oss-security] SSRF issue in the svgsalamander library\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30636 invoked by uid 550); 27 Jan 2017 07:54:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28389 invoked from network); 27 Jan 2017 07:51:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail; t=1485503470;
	bh=0vbUaS6VkefvCV5zD0/yGxqobe5lTp9dqpefyqlaeVg=;
	h=To:From:Subject:Message-ID:Date;
	b=sa7rPdLkzkUxFBcdne3wgyAk3HZ6OlbzthV2mIj2GUQDP/4GHfeY3UmJ4JVu9yinR
	 VSG/USu+e3nXelmkwoXdiST15pvsGQR8u49aDSqZRAUpWO9MHBpFs+34m4yFw/mPRZ
	 qZR7kMyAANdFvk5X47jVeSWNjm/w7/AUDBamjjYQ=
Authentication-Results: smtp2o.mail.yandex.net; dkim=pass header.i=@yandex.ru
X-Yandex-Suid-Status: 1 0
To: oss-security@lists.openwall.com
From: Luc Lynx <luc.lynx@yandex.ru>
Message-ID: <60bcff1f-fa22-502f-8b1e-95a662a52f0d@yandex.ru>
Date: Fri, 27 Jan 2017 10:51:09 +0300
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0)
 Gecko/20100101 Thunderbird/45.6.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] SSRF issue in the svgsalamander library

Hello,

There is a java library for processing svg files called svgSalamander:

https://github.com/blackears/svgSalamander

It can also be found in maven:

http://search.maven.org/#search%7Cga%7C1%7Csvg-salamander

If the library is used in a web application, SSRF isssue is possible. I
created a ticket on github:
https://github.com/blackears/svgSalamander/issues/11

The issue seems to be in all versions of the library.

--
LL
