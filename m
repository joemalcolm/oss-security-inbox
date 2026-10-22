X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/22/30
Message-ID: <20261022205603.cm4E8k3s@steffen%sdaoden.eu>
Date: Thu, 22 Oct 2026 22:56:03 +0200
From: Steffen Nurpmeso <steffen@...oden.eu>
To: oss-security@...ts.openwall.com
Subject: Re: Comodo AAA Services Root and S/MIME
Content-Type: text/plain; charset=utf-8

Hanno Böck wrote in
 <20261022131502.1fd3dc3d@...eck.de>:
 ...
 |My interest in S/MIME is limited, I'm probably not gonna investigate
 |this much further. If anyone wants to look into this, the following
 |questions may be a good starting point:
 |
 |* Are there other e-mail applications that source the NSS/Thunderbird
 |  cert store as their trust anchor for S/MIME?
 |
 |* Do they properly check X.509 paths and validate everything, or are
 |  there ones that would accept a web/TLS intermediate to sign an S/MIME
 |  cert?

There are definitely code bases which do not do explicit
X509_check_purpose() for neither X509_PURPOSE_SMIME_SIGN nor
X509_PURPOSE_SMIME_ENCRYPT; the MUA i maintain, for example.

It here then is up to OpenSSL (NNS support was dropped, nothing
new yet added) to verify certificate purposes.  PKCS7_verify()
documents to verify the "smimesign purpose".  PKCS7_sign() (and
PKCS7_encrypt()) document nothing.  (I will not take a walk in
that jungle myself now.)

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
