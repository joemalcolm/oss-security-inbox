X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1362" "Thursday" "29" "August" "2019" "15:18:47" "-0400" "Santiago Torres" "torresariass@gmail.com" nil "37" nil "^Date:" nil nil "8" nil nil (number mark "U       torresariass Aug 29   37/1362  " thread-indent "\"Re: [oss-security] Irssi 1.2.2:CVE-2019-15717\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Irssi 1.2.2:CVE-2019-15717" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29919 invoked by uid 550); 29 Aug 2019 19:25:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27690 invoked from network); 29 Aug 2019 19:19:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=W4akzsEN/RHQjvip+/A5uuvIHMNSt5Bo1c+BGCs3fCA=;
        b=PMHZk/1BOd6BvTvd5h6ALdMZQsl/v9OI+DuVogBtoTa5YOapIVObNmOGc6jGH/Y0CZ
         cqlOFY7vKpGQ3LapBAAUIhavPcoWPwZDOTe+A+gipd54BPbTJp5+T5AWdTNt2Ox4kDNW
         hIYPzQAgb3tKi88qPIrS8hcjyoeWfC2IWWFcRgBrg3jUhDZl00hXK8ioWXvdfGOcO/rK
         y9blXwktsM/x6nx8WpnmnByJYMZOa0G7IgrUaXjwygrcVdHeOmglOJ5O/e51fG35Jhq6
         JaJocXaGfhuK3OggaBirVrllk9kQUzS4IuNSqF9N/uJtGfCOPyXbj9K+lfDRc/Sg5mma
         yZSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=W4akzsEN/RHQjvip+/A5uuvIHMNSt5Bo1c+BGCs3fCA=;
        b=s3U2ZHKJD5g8s8z2MajwMFOGwcpMgBDgDA+IMogYj32lAW805pvzLtm5700RPZKsTW
         AEU6pS+KF02vkp6lK9mvlW7ViG5zwwqRYpuWzWsCxwldufcSbdTmB76hIJKpTZIfGR0u
         PrX8RikYstqNcSHlORf5psB8wXW8r6ziL6IaaF/C7hXDLbky4YAbOryjCbZ2Bn0YEXrv
         LJkodiXdFkpCx3YQpig7Q2UzL9YKT9oqX3OzXiAKbN5yCvhrs9Anbhfyb8SOZdW5EFlp
         37/WVZJwtWIRb2+Hr3YQTZkO2S/Ld24TttYhnalsaBOyoHUyhrxyTqdkT7xPMROTbMRq
         jiQA==
X-Gm-Message-State: APjAAAXoXBrvxNIQMGcrxwqn3EMPcT4KYsSDHtwLtyvHgTEHCpY7s/cs
	Kn2kKonOlodUa64f/mRJ/29F/2yp
X-Google-Smtp-Source: APXvYqy9FSF7bUZg1YBUh08N/vp6cdLnaefGANHegsDRsquDXslUS/h8VlpVD71tN8gfR8wsIkPHDw==
X-Received: by 2002:ac8:4315:: with SMTP id z21mr11650653qtm.157.1567106328629;
        Thu, 29 Aug 2019 12:18:48 -0700 (PDT)
Message-ID: <20190829191847.g4rzva7jqdtmc2lv@LykOS.localdomain>
References: <fccdd50d1a8afe0fa1b3d9d45a92aa245ad05121.camel@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="egibiu6aiahtxkcs"
Content-Disposition: inline
In-Reply-To: <fccdd50d1a8afe0fa1b3d9d45a92aa245ad05121.camel@gmail.com>
Date: Thu, 29 Aug 2019 15:18:47 -0400
From: Santiago Torres <torresariass@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Irssi 1.2.2:CVE-2019-15717
To: oss-security@lists.openwall.com

--egibiu6aiahtxkcs
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Aug 29, 2019 at 05:59:34PM +0200, Ailin Nemui wrote:
> IRSSI-SA-2019-08 Irssi Security Advisory [1]
> ============================================
> CVE-2019-15717
Hi,

is there any other information about this UAF? namely, it says it would
affect the stability, yet I wonder if impact could lead to ACE.

Thanks!
-Santiago.

--egibiu6aiahtxkcs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEkDurc2QOttZVM+/zRo8SLOgWIpUFAl1oJRYACgkQRo8SLOgW
IpUQtxAAm9lCPA6c4MzErJelSBSxcNgfJos1A1yT+w31l9RqgvZQ0o+fUSncveVO
PhhVc5KEd/kZdCipsX7q+V+CfBUP+L6yv5yyUgpRhuZxrUn7a4BPlUHCkTZIfjA4
XjaHHuFGswcpCb6Rvp1nDLcTK4weLYD7lUaWoozWElXI6IrAygIClgJKDN0VsQ9u
VjA1jYOxKg+QeHa/GmhhfHHj1V7MvgCWEA9rRFZM2BTNqojZZtA9Eo/kppZO6ZU7
BsQDedQM+NXi4JlscF+Tbqd+vuEWCj/MkGxvPTXwfryVIHZbKXNxNel7A4II602b
Z3++eJ+8KavRMXXekYKolNAkDlY2Y2EZD9SJsI7n4nVqsK24I7q7jl8X43WC6z4L
1uvCFKQ417LWY2iXmhnIhYSyFACft0T/88OwmhYa9e4HgorBGRTTBkPOeGephoE9
FqIAaKUR6G1todTPhcz5dAL7DMTTgPcJue9f6mP3DgCf8wAfJPJaN41KfGYIQmqu
KRN/znIw+coMEWvi660dGaD/3iStdXnk1QZm2LtUzxQ2ufGJZBt3cbRRwnK+wDen
SRBvgo0D4vSHkzRkXfiwfmdHdqLCm35C+iZHsgleol+wmB4TFf8gcT4zuJiAtvfW
4b2zB/ZF/WMANfqB7TDytDZ7DtetVXOnq9w4j9Z6YXspfUmktyA=
=rsir
-----END PGP SIGNATURE-----

--egibiu6aiahtxkcs--
