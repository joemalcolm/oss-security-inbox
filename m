X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1753" "Wednesday" "5" "July" "2017" "14:37:00" "+0300" "Lior Kaplan" "kaplanlior@gmail.com" "<CAEsznC6vAOzM9wmtcZwiLX1-k3uevMEEuxkksXCUMR8=hsq+Kg@mail.gmail.com>" "46" "[oss-security] CVE IDs needed for PHP vulnerabilites (affects 5.6.30 and 7.0.20)" "^Cc:" nil nil "7" "2017070511:37:00" "[oss-security] CVE IDs needed for PHP vulnerabilites (affects 5.6.30 and 7.0.20)" (number mark "U       kaplanlior@g Jul  5   46/1753  " thread-indent "\"[oss-security] CVE IDs needed for PHP vulnerabilites (affects 5.6.30 and 7.0.20)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19605 invoked by uid 550); 5 Jul 2017 11:37:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19575 invoked from network); 5 Jul 2017 11:37:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=WgE1crz9SZWMqqY5oD7ujJxZ/XLV0K+WI3//pQxKqxw=;
        b=cL+iG+evZfXFEGoRzVVU0vF+GuSCfBJMe1HOcJWyzBO89g6V8HM9xfjboHbO421rPO
         zEg6ubs+drHiKEHE7U+yAMbyZpPjKtM68I97a0H8gqXpkP2eqjm1SSmZ5EcBPBobW38O
         SuNfRKiXGfz8164Gn8I1wP5s5qV1NC/Syadd3+2x/oVem6wuGdLpyJmYDVsQKr1Q+9bC
         jyAxjkz1Gr/dFal1PtR6lmHR2+5IoSXRoo1keSSSCdI5dyqgH6dqJlzmuy6oo4u4iSlc
         5RVB4cY93iMeTaX3I/RHogAseu1JJN0PjUaXPtp7cjNQVCViKQxFmyGbTNLm731kUDPm
         DCkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=WgE1crz9SZWMqqY5oD7ujJxZ/XLV0K+WI3//pQxKqxw=;
        b=aj61lCdcshA8ft9Zzsq8kr4O5/pGC2zPZwewl6hCXa+1rt9MglgbJapYns3k+yOONi
         kG2jfpYQDarQ7ZrNGIyZgysgGaoCuEDSttgASYHs6PX37aF/Dvjaf9eOZYqe0p1bnMGb
         qRn7l/zkNPLzZSvXVhHJhiyHlwLBLx0LNOtyxXR3CqLHnLQpRC80URiB3Noj70mW1zoj
         OcKU1wBS76gyzpbDsrKiIFpqfijF+zpPCMYz7MsjCTWk5qPc73zTFqlx9OmPrGskAymg
         euPDNMIzq5JY/erJKUHfqL9ad7/2z5I8oP6Iafwo9V8tOnAcSWKmjO969JolACmP5NOZ
         k1XQ==
X-Gm-Message-State: AKS2vOznkiGQwa164jOjyFgPwA9EkNMFdu/Vw4RSVfHdB8oqWUO4hme9
	g3woO+i8wJEws/7OcNHW/2FvShTK7Q==
X-Received: by 10.159.37.100 with SMTP id 91mr23030772uaz.147.1499254620680;
 Wed, 05 Jul 2017 04:37:00 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAEsznC6vAOzM9wmtcZwiLX1-k3uevMEEuxkksXCUMR8=hsq+Kg@mail.gmail.com>
Content-Type: multipart/alternative; boundary="94eb2c122da417f6750553906b6c"
Cc: "security@php.net" <security@php.net>, oss-security@lists.openwall.com
Date: Wed, 5 Jul 2017 14:37:00 +0300
From: Lior Kaplan <kaplanlior@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE IDs needed for PHP vulnerabilites (affects 5.6.30 and 7.0.20)
To: cve-assign@mitre.org

--94eb2c122da417f6750553906b6c
Content-Type: text/plain; charset="UTF-8"

Hi,

The following issues have been reported and fixed in PHP. At the moment
they are part of PHP 7.0.21 release. The fixes are also included in the 5.6
branch and will be part of 5.6.31 when it will be released.

#73807 Performance problem with processing post request over 2000000 chars
https://bugs.php.net/bug.php?id=73807
http://git.php.net/?p=php-src.git;a=commitdiff;h=0f8cf3b8497dc45c010c44ed9e96518e11e19fc3

#74145 wddx parsing empty boolean tag leads to SIGSEGV
https://bugs.php.net/bug.php?id=74145
http://git.php.net/?p=php-src.git;a=commitdiff;h=2aae60461c2ff7b7fbcdd194c789ac841d0747d7
http://git.php.net/?p=php-src.git;a=commitdiff;h=f269cdcd4f76accbecd03884f327cffb9a7f1ca9

#74651 negative-size-param (-1) in memcpy in zif_openssl_seal()
https://bugs.php.net/bug.php?id=74651
http://git.php.net/?p=php-src.git;a=commitdiff;h=89637c6b41b510c20d262c17483f582f115c66d6

#74819 wddx_deserialize() heap out-of-bound read via php_parse_date()
https://bugs.php.net/bug.php?id=74819
PHP 5.6 -
http://git.php.net/?p=php-src.git;a=commitdiff;h=2aae60461c2ff7b7fbcdd194c789ac841d0747d7
PHP 7.0  -
http://git.php.net/?p=php-src.git;a=commitdiff;h=6b18d956de38ecd8913c3d82ce96eb0368a1f9e5

Also, requests from past releases:

PHP 5.6.28 + 7.0.13
#73192 parse_url return wrong hostname
https://bugs.php.net/bug.php?id=73192
http://git.php.net/?p=php-src.git;a=commitdiff;h=b061fa909de77085d3822a89ab901b934d0362c4

5.6.30 + 7.0.15
#73773 Seg fault when loading hostile phar
https://bugs.php.net/bug.php?id=73773
http://git.php.net/?p=php-src.git;a=commitdiff;h=e5246580a85f031e1a3b8064edbaa55c1643a451

Thanks,
Lior Kaplan
PHP security team

--94eb2c122da417f6750553906b6c--
