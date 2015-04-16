X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1197" "Friday" "17" "April" "2015" "03:11:27" "+0800" "Emmanuel Law" "emmanuel.law@gmail.com" "<CA+KTh2zmMqVO7g6W9Fkiy9q6ruyeD5+Bgt-mSehz0TTsxwiimw@mail.gmail.com>" "39" "[oss-security] [CVE Request] Multiple vulnerabilities in PHP's Phar handling" nil nil nil "4" "2015041619:11:27" "[oss-security] [CVE Request] Multiple vulnerabilities in PHP's Phar handling" (number mark "        emmanuel.law Apr 17   39/1197  " thread-indent "\"[oss-security] [CVE Request] Multiple vulnerabilities in PHP's Phar handling\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13438 invoked by uid 550); 16 Apr 2015 19:11:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13411 invoked from network); 16 Apr 2015 19:11:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:cc:content-type;
        bh=SvZHS8hcnANTKSt9agJG1k3I2fU8ySNBSsCqZKQLss4=;
        b=FjG8YFEDzP/8LDQHed8onsO5y0iNa9SJch+yxiBcOBveexm6oUWK4eMEtPzi1qzORu
         LZwKi/uAHy6xAKTIgPos+ylPGFS3p+5BleA2ZrHnffioIxQovARGABwtA36/5p+D5IC+
         ZyyDeybAI9NZ1vDMwToEcpjIQiEyr3f8SSHrrZ56rFxGiVV/Lv1qM/IupWMJMbWIrcBP
         1ycR7f+f9kmB/Y1Futyp8Hi94C/bqFQ9CQaq+Jao48tP5uCqPTzHdRVOLsIBa02plbIJ
         NAFHwYksEJpTZbpsQPmTZZCBhrY+PLFzpl/zRAJY0bdJXAmuWt1kUkuW+wHj28A6qYeO
         9VnQ==
MIME-Version: 1.0
X-Received: by 10.107.12.158 with SMTP id 30mr43719159iom.61.1429211487449;
 Thu, 16 Apr 2015 12:11:27 -0700 (PDT)
Message-ID: <CA+KTh2zmMqVO7g6W9Fkiy9q6ruyeD5+Bgt-mSehz0TTsxwiimw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113dc81804baee0513dc3be7
Cc: security@php.net
Date: Fri, 17 Apr 2015 03:11:27 +0800
From: Emmanuel Law <emmanuel.law@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [CVE Request] Multiple vulnerabilities in PHP's Phar handling
To: oss-security@lists.openwall.com, cve-assign@mitre.org

--001a113dc81804baee0513dc3be7
Content-Type: text/plain; charset=UTF-8

This serves as a cve request + advisory.

--------Background---------
PHP has the built-in Phar & PharData functionality since 5.3.0. It allows
developers to use them to manipulate the following archive types: tar, zip,
phar. Serveral vulnerabilities were found in the Phar extenion.





[1: CVE Request]
There is a stack based buffer overflow when opening tar, zip or phar
archives through the Phar extension. An attacker and exploit this to run
arbitrary code.
Affected versions: PHP < 5.6.8RC1
Bug Report: https://bugs.php.net/bug.php?id=69441
Patch:
http://git.php.net/?p=php-src.git;a=commit;h=f59b67ae50064560d7bfcdb0d6a8ab284179053c

Please assign a CVE for this.


[2: Advisory for CVE-2015-2783]
When processing a specially crafted phar file, it is possible to trigger a
buffer over-read in PHP's unserialize function. An attacker can exploit
this to dump memory info leak on the system.
Affected versions: PHP < 5.6.8RC1
Bug Report: https://bugs.php.net/bug.php?id=69324
Patch:
http://git.php.net/?p=php-src.git;a=commit;h=17cbd0b5b78a7500f185b3781a2149881bfff8ae

rgds,
Emmanuel

--001a113dc81804baee0513dc3be7--
