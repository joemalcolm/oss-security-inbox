X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1579" "Friday" "29" "January" "2016" "14:40:33" "-0500" "Daniel Micay" "danielmicay@gmail.com" "<1454096433.25967.0.camel@gmail.com>" "38" "Re: [oss-security] shodan.io actively infiltrating ntp.org IPv6 pools for scanning purposes" "^Date:" nil nil "1" "2016012919:40:33" "[oss-security] shodan.io actively infiltrating ntp.org IPv6 pools for scanning purposes" (number mark "        danielmicay@ Jan 29   38/1579  " thread-indent "\"Re: [oss-security] shodan.io actively infiltrating ntp.org IPv6 pools for scanning purposes\"\n") "<CAEmCSgmmuLYpNLdz_vg3-NH_f8Psfj7PxgN7b5S9UCLbKzvO9A@mail.gmail.com>" ("<2413003.GtkKFizscD@chimera>" "<CANO=Ty1ZFtpeUespB+nn0gZ8oC7PAkkr7+eTR1U+RyLtGKHKtA@mail.gmail.com>" "<CAJMyd9Yje0QY+Th_QUYuO6JspRvysKqkkxtXq-xgANBASM_Nrw@mail.gmail.com>" "<1528e110c5f.11ff2dddc43704.3865822946264713459@fsck.pl>" "<CAEmCSgmmuLYpNLdz_vg3-NH_f8Psfj7PxgN7b5S9UCLbKzvO9A@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31910 invoked by uid 550); 29 Jan 2016 19:40:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31892 invoked from network); 29 Jan 2016 19:40:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:subject:from:to:date:in-reply-to:references:content-type
         :mime-version;
        bh=Jf0wl9WenCVHW6LGUV/lIYZQ8CYsnuXr29Z+qWKNBB8=;
        b=iBvmBVyMRiBNztkIiY1W9fVn9jKZMSa/LmgxMCgdoOuP6NwqpKVP/4OfERqa6LFUzg
         eR+vxmTY9+YFS1n6kW3tgXI/+kBOYb1gLIZuRlZ1fZT06WeS/5g075C0QjFaH2WaWRc2
         7nLQk8uicenqS8oYKfwsHVUWE7Nx5GIUYMkoI/xncLlr/RQ6rOjslZPWFneqIwThx4uC
         RfkTsd/hA0YbIr5FwASsid+4vVmnZgYstyt/6Lsyu8kPPBRMOvq/DP9Jb+2ey+HaeNUv
         tOmkAb1Fc3jdVCM82R8364zAVFftDzprXpmrP8853Q7rjddoCf/yKsixRYjg5Es3uj6a
         omGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:content-type:mime-version;
        bh=Jf0wl9WenCVHW6LGUV/lIYZQ8CYsnuXr29Z+qWKNBB8=;
        b=THbce1v8wW5P/QmuebEAqb34v+93r9Mhejj/6nI04/ElNzioaC0WZrRSY5KsQ2lwzA
         QsHfnZCyfciyIUM8ka/eK+UWDk4wrXb+7INdo4JdkXmfFf3rIjeyQo238b3tDSbtu3+n
         gMipklY/33h5Z2Y0L2j3Vz3uNYc/6IUgTx8/Ca7ygJTmG2Go6w520Nq6Sf0+nyhjlRSn
         l67f+9vwedqdqD6lm4JmXynflN+PG0sIB9G0aE91vzRUVItCx5Pec+S1zQ8134PZ4Zqe
         UaEWjaI0gs1x2/NyZGZhhRyamK/7h1t06YIOywN+pRde4ALx5NvLMJuG2ZXQA6CGv4Om
         DAKA==
X-Gm-Message-State: AG10YOSxUtXcWU8b4vKKuPMUJ61ypEHwhPOL9BuXyMbYBXQxEKLDqCp+1YdYjy8rHVIf3g==
X-Received: by 10.140.151.4 with SMTP id 4mr13337186qhx.16.1454096435681;
        Fri, 29 Jan 2016 11:40:35 -0800 (PST)
Message-ID: <1454096433.25967.0.camel@gmail.com>
In-Reply-To: <CAEmCSgmmuLYpNLdz_vg3-NH_f8Psfj7PxgN7b5S9UCLbKzvO9A@mail.gmail.com>
References: <2413003.GtkKFizscD@chimera>
	 <CANO=Ty1ZFtpeUespB+nn0gZ8oC7PAkkr7+eTR1U+RyLtGKHKtA@mail.gmail.com>
	 <CAJMyd9Yje0QY+Th_QUYuO6JspRvysKqkkxtXq-xgANBASM_Nrw@mail.gmail.com>
	 <1528e110c5f.11ff2dddc43704.3865822946264713459@fsck.pl>
	 <CAEmCSgmmuLYpNLdz_vg3-NH_f8Psfj7PxgN7b5S9UCLbKzvO9A@mail.gmail.com>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-UZUNo13u+eCy2ArDJGin"
X-Mailer: Evolution 3.18.4 
Mime-Version: 1.0
Date: Fri, 29 Jan 2016 14:40:33 -0500
From: Daniel Micay <danielmicay@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] shodan.io actively infiltrating ntp.org IPv6
 pools for scanning purposes
To: oss-security@lists.openwall.com

--=-UZUNo13u+eCy2ArDJGin
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2016-01-29 at 17:45 +0000, Scott Herbert wrote:
> That would be nice sure, but given that IoT vendors are rushing so
> fast to market that their doing things like sending login credentials
> via http, I think we're a long way from having them secure their
> products from scanning let alone anything else.

Many of them are going to be using the Android-based Brillo so there's a
central point to make changes like this (AOSP).=

--=-UZUNo13u+eCy2ArDJGin
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCAAGBQJWq8AxAAoJEPnnEuWa9fIqKbAP/1YMi6H7c1v3aKJSfqdif3Hr
UOCa1twyxLFoJE4oEB+yBBFv0SEEJsx/QrS+Ksd2ANVIMdMrk24VSnG3dgESBygm
RPFcX80x3sGp/XT/v/gsbAAy23qd3Y2nil6H/S7TOC6KBPdMyOGRiI9pdlJxGIm3
zV5RGgTHxOU79OMrnW+cq13wj8R/pE3R2m8SyeTsyBxB87eS9aKp7pcLLxUcrUxo
YWl6ph1nBgA+uurVyfpzKyOs87x0UKKAngCEbRkrenJqBsFioS4UsYFGEVHuDn+V
bKOtzdJiA0AqfQT7juH1uDuwOm4w39lGGMpUKJ10PdN1N2mysxo30dODRuBORk5J
+JwpTZy7e/2hyzRzEDSAGcC+tBVxz9gFZYWwJdxkRb/CdwtWFu0qYbPkNgiBNXXs
EitrNsBIPU1EhfgwRG4EhhW4WvAtDfLjML37usZtBP4DKmg6YU5DPv/EFgKoNxLf
q/tHxfCwADsxg8GOanBnMnLej8IvUfSIXoSvGc2oGpMla5EtdJ8gTljXXOmxBYY1
Q5lpgjOpzDN4o/MO1ywFxsCMFgWDsd7Z4i3X9gsLEHP7AGiPp5jq2DPni6dXIohs
7eJU+CRoKJ2spwMqheVxwIjuDyZAH6J/xt9raITPz8ta/rHJfn47jAjYD6miv+F1
GIU5+8JQCYJqcS1db83W
=g5VR
-----END PGP SIGNATURE-----

--=-UZUNo13u+eCy2ArDJGin--

