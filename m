X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["775" "Monday" "14" "December" "2015" "13:44:43" "+0300" "Lucid Lynx" "luc.lynx@yandex.ru" "<566E9D9B.40302@yandex.ru>" "17" "[oss-security] CVE Request: two issues in bee2 crypto library" nil nil nil "12" "2015121410:44:43" "[oss-security] CVE Request: two issues in bee2 crypto library" (number mark "U       luc.lynx@yan Dec 14   17/775   " thread-indent "\"[oss-security] CVE Request: two issues in bee2 crypto library\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7917 invoked by uid 550); 14 Dec 2015 14:29:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13680 invoked from network); 14 Dec 2015 10:45:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail; t=1450089898;
	bh=VXcyo3ozOEb6MngDCaNoRjCupodelJbVTgKl8a3PS6I=;
	h=To:From:Subject:Message-ID:Date:User-Agent:MIME-Version:
	 Content-Type:Content-Transfer-Encoding;
	b=EVu9BgGRXWsBxBSGu3B1mKdv3fPkTBMsOmKVx4DGhiPuBgjvtNkpDe+W4hbm8d1bq
	 BmnZBWjPKg61Yoytb02Q2cht4k60waYVFAORZMh1a/2ZaJHds9NukKO0C6Cv8RUhxs
	 IIDQUuWTwPOlOljfQIAc7koZnfL9XMh4ivPk7dEY=
Authentication-Results: smtp4o.mail.yandex.net; dkim=pass header.i=@yandex.ru
To: oss-security@lists.openwall.com
From: Lucid Lynx <luc.lynx@yandex.ru>
Message-ID: <566E9D9B.40302@yandex.ru>
Date: Mon, 14 Dec 2015 13:44:43 +0300
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:38.0)
 Gecko/20100101 Thunderbird/38.4.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE Request: two issues in bee2 crypto library

Hello!
I found two issues in the 2015.10.29 version of bee2 crypto library that 
can be found at https://github.com/agievich/bee2. The library implements 
cryptographic algorithms standardized in Belarus and it is maintained by 
Belarussian State University.
The first iisue is possible leakage of sensitive data, the report can be 
found at https://github.com/agievich/bee2/issues/5

Another one is memory leak that can lead to DoS, the report can be found 
at https://github.com/agievich/bee2/issues/6
The both vulnerabilities were reported to maintainers and were fixed 
several days ago.
Please assign CVE IDs for these bugs if you think they are worth it in 
this case (right now the library is'n very popular though it can be used 
in some proprietary software).
--
LL
