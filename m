X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1664" "Wednesday" "20" "April" "2016" "11:18:32" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20160420091832.GA580@lorien.valinor.li>" "52" "[oss-security] CVE Request: perl: denial-of-service / Regexp-matching \"hangs\" indefinitely on illegal input using binmode :utf8 using 100%CPU" nil nil nil "4" "2016042009:18:32" "[oss-security] CVE Request: perl: denial-of-service / Regexp-matching \"hangs\" indefinitely on illegal input using binmode :utf8 using 100%CPU" (number mark "U       carnil@debia Apr 20   52/1664  " thread-indent "\"[oss-security] CVE Request: perl: denial-of-service / Regexp-matching \"hangs\" indefinitely on illegal input using binmode :utf8 using 100%CPU\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3780 invoked by uid 550); 20 Apr 2016 09:18:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3760 invoked from network); 20 Apr 2016 09:18:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=TPupL36KyQLuX7t7VeT6uGjEW4ULTCMiVLhbbJoc/4Y=;
        b=bDeOUwPuShxx8AjugvL6jZ++bOpI55xCsRjNxfOBEHxJ26fOaeVwnnsoLtjVtYLLzc
         moBSt7DAwPodhUX0Z3T2NxMgqroHV5DaKnQLXcnX9sGqsjNL7cqV6qQ1KHURkDDCXXFn
         M8nHBBenAFl67wjgh8mBfxvoDhjXt/7hA8Bw0sxuCAJguwnIjIgQ9BC7TyVpdibrAgjm
         4hdpsRN+JSgmH1SvK0K28eo7ipCQ6saE4XAK2KF9MdFJPU7z2+4I4fORCpkXG6UXxCCI
         F/VL82Au0Qmm6iW+BJqasymiVlvpv0kkHYH+jktpTKw3kgCkMIdg6YWVAH36QIdh66u/
         WxOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=TPupL36KyQLuX7t7VeT6uGjEW4ULTCMiVLhbbJoc/4Y=;
        b=WcsWvSbccnmb6h3IB/lWTaTMZ4a+j6SvZrGqjVTUH7znZKQ0uqIq6kQSac3fJXew/X
         iLAr0ePRjG1YVtn3DGsR6Y1d9jiYrcPi9p4gpGCQQMgnytYsyhG291vJ4tmjwwjleWU9
         T5huhUYJ42OjSkLbqZhKyTYH7j2Q6x9pR8EtFAaNjXZK37Wx2lcskz/fWMV69CkOG8GV
         Zg8EVer4zpFHAWuOae+aOdeYRs9F3X1i/jpGRSeprtUsf9aXwdJyXGHyGifjpieUKTVu
         vLiSLODnxWAjMllQAQq096qwbZe92nOOP16MpBIbg8F9Yl5KYZ633uXPoxA5DblA8482
         MTKg==
X-Gm-Message-State: AOPr4FUAR40vaWguT2jPR65Qm7ews3bTnNgJp+xte7DpNH4L6YaTZ8SLcbkZa6yEoWbMbA==
X-Received: by 10.194.144.10 with SMTP id si10mr7373394wjb.180.1461143914365;
        Wed, 20 Apr 2016 02:18:34 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Wed, 20 Apr 2016 11:18:32 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Cc: CVE Assignments MITRE <cve-assign@mitre.org>
Message-ID: <20160420091832.GA580@lorien.valinor.li>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qDbXVdCdHGoSgWSk"
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [oss-security] CVE Request: perl: denial-of-service / Regexp-matching "hangs"
 indefinitely on illegal input using binmode :utf8 using 100%CPU

--qDbXVdCdHGoSgWSk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi

A bug in perl can cause regular expressions an malformed UTF8 inputs
to go into a forever loop and consume 100% CPU. The issue was found to
drive a realworld web application into an infinite loop"

The Upstream bugreport about this issue:

https://rt.perl.org/Public/Bug/Display.html?id=123562

Upstream commit:

http://perl5.git.perl.org/perl.git/commitdiff/22b433eff9a1ffa2454e18405a56650f07b385b5
(which e.g. has been as well cherry-picked back to the maint-5.22
branch).

It as well was reported in Debian as:

https://bugs.debian.org/821848

Could you assign a CVE for this issue?

Regards,
Salvatore

--qDbXVdCdHGoSgWSk
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJXF0loAAoJEAVMuPMTQ89E8BQP/2ZDAT0JrxwPbEYFa3zwsmuN
Kz4EDeYaneKDF1ZPdY/ELeZH7cikv9Vo/3csRvR53C9qiCjop/O3tX9T5wuRFU/C
e/t/1guMbPxSKZ0CE+DVKDP+YtKnqtNIsU/3ZHoAklzw/yBR/ersW1PFLkzfwdvp
fhUul4GdUzjVzshV1S3FjrgVXleetTKxXgleLNl/+il3j/0LjH8d+kEAk+E+FW6F
NK2HNJ2tH2iFTT/qvqVtcyHLd64c0FbYb/A6RCI9vIvI0eaRlEWASHCTHgD1NzZb
qKBO/0tbBYP4ixsPqPrsh9ItzlPgRSSvjWMl0vwXL5GyyzQGd4g3ufoUHlg3ZzQY
jShlQytQSF6aTF5x0W39lG+97v1mUSCgPmxEyl6DSuVJy/vohZlcyaePoDQ7/LIL
FJp84MOQEcxoHBkYoBwDKOusvq92m41LfMn5XmNoqjnYBx56QeVogElxLHilSxbY
d9wvu6t3sZs83nxHY6A5ILRYwH0Q9xotROHY1dLlzJQ5dX4v2KfgQbcVEsxhkJ/u
GalJwaYouAasxjIj0yrUA0mme0h5yRuU2tsUhDX/LP+RAkMN0JEQOOPNMN86NZ/j
Y7iLR52eVsSi3MrSkoF0k32URthp/R/UqWF8AXYqINFR9AHUcel0i/iH9mtuEFK1
BNnDurEuSyBv4PCkOXoz
=FIul
-----END PGP SIGNATURE-----

--qDbXVdCdHGoSgWSk--
