X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1115" "Monday" "11" "February" "2019" "12:05:50" "+0100" "Carlton Gibson" "carlton.gibson@gmail.com" "<B20E8928-1375-490B-B6B9-97FBE4A19B51@gmail.com>" "26" "[oss-security] CVE-2019-6975 -- Django fixed memory exhaustion in utils.numberformat.format()." "^Date:" nil nil "2" "2019021111:05:50" "[oss-security] CVE-2019-6975 -- Django fixed memory exhaustion in utils.numberformat.format()." (number mark "U       carlton.gibs Feb 11   26/1115  " thread-indent "\"[oss-security] CVE-2019-6975 -- Django fixed memory exhaustion in utils.numberformat.format().\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13844 invoked by uid 550); 11 Feb 2019 11:23:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30304 invoked from network); 11 Feb 2019 11:06:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:mime-version:subject:message-id:date:to;
        bh=0WFLEAIyYJlnMHiBunM/KFOJxZmDXUQE53uUX3gfVAE=;
        b=WZdYM9lE2hA8CVJDq4gXaVd3PDADqQicKXmVgQSxUPzzRfC/FxqZl7+UDhAq7Uxfah
         kSunAmQjIjQ5RIU62WLDAPSWpOkqky9qV06rO4g32XHrHgsk4KTgH9dpSvN3hWIzXACo
         quq3Ei2O2UYynRQRNyTP3y1qxWOcOjZ94n5bUkwXcfUgp6lw6xInBiCytT2u9y5MZnPE
         C0/n4tsQLJDtLAki0swI/7m6bE1qZAbNeGVQLhvw+hzKrXmSSEftjvDQE1zW7hVrtaWt
         0j+jXdFK6e76BEn6YUvxbtEKXIaT2BlKslH0ppTyoZUF/HzKX9+I/ndngMYTMUYyZp/u
         yJ/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:mime-version:subject:message-id:date:to;
        bh=0WFLEAIyYJlnMHiBunM/KFOJxZmDXUQE53uUX3gfVAE=;
        b=A9FXXouRqHLzaL9kn7FJ20ZJoAF/WKOiALdI5a892dlyXWjUbombU35flKhzAL5H3h
         Qck1HtN2rAXWN+TPFd3fytTuAEeOKRN8rmELowEv3lrfBrMKA4kfLK7F0tmKTcNMtFKt
         ouo7TuRt2BFEiX8XRQsZ4JuVGd/EVpNprQMbfJDalzBjNnZC9/W/C8pCGJyhENWib1+0
         cbQZQbGQu5hA6TyEn0EePmpFbB2roVarZ9AvN0QKIMIBVvT39ez3VvLASG83dGAQT0h7
         O4TPmO3Bkg02Nx33TyQrDntqqZMi7zgp+CP6SKB967MO5IIEEVMQu+S1LEGGbWd7u13y
         tI9g==
X-Gm-Message-State: AHQUAuZHmN1VHHo/D6a8PTHIgw8+sfyGHYYeBTz5hC5SPrwFKX7YXxQx
	zDbmu9yImCLahHkmKgt54xrOPdc7
X-Google-Smtp-Source: AHgI3IZyyd3G6qfv1AXYPqfslNZlaevKQtFV6vwaVscjbpAlsUYXWObyBoRo2u40k9LX3RR6+Bbm1A==
X-Received: by 2002:a05:600c:2184:: with SMTP id e4mr8379944wme.129.1549883151745;
        Mon, 11 Feb 2019 03:05:51 -0800 (PST)
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_8AB52161-7913-4C7C-938E-D2C375969523"
Mime-Version: 1.0 (Mac OS X Mail 12.2 \(3445.102.3\))
Message-Id: <B20E8928-1375-490B-B6B9-97FBE4A19B51@gmail.com>
X-Mailer: Apple Mail (2.3445.102.3)
Date: Mon, 11 Feb 2019 12:05:50 +0100
From: Carlton Gibson <carlton.gibson@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2019-6975 -- Django fixed memory exhaustion in
 utils.numberformat.format().
To: oss-security@lists.openwall.com

--Apple-Mail=_8AB52161-7913-4C7C-938E-D2C375969523
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

In accordance with our security release policy, the Django team is issuing =
Django 1.11.19, Django 2.1.6, and Django 2.0.11. These releases addresses t=
he security issue detailed below. We encourage all users of Django to upgra=
de as soon as possible.

CVE-2019-6975: Memory exhaustion in django.utils.numberformat.format()

If django.utils.numberformat.format() -- used by contrib.admin as well as t=
he the floatformat, filesizeformat, and intcomma templates filters -- recei=
ved a Decimal with a large number of digits or a large exponent, it could l=
ead to significant memory usage due to a call to '{:f}'.format().

To avoid this, decimals with more than 200 digits are now formatted using s=
cientific notation.

See Django blog for more details and download links:=20
https://www.djangoproject.com/weblog/2019/feb/11/security-releases/ <https:=
//www.djangoproject.com/weblog/2019/feb/11/security-releases/>


--Apple-Mail=_8AB52161-7913-4C7C-938E-D2C375969523--
