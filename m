X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1877" "Monday" "30" "March" "2015" "12:35:43" "+0100" "Simon Waters" "simon.waters@surevine.com" "<5A4D0468-0D68-487A-86B8-B28B04464F7A@surevine.com>" "56" "[oss-security] Re: Insecure file upload in Berta CMS" nil nil nil "3" "2015033011:35:43" "[oss-security] Re: Insecure file upload in Berta CMS" (number mark "        simon.waters Mar 30   56/1877  " thread-indent "\"[oss-security] Re: Insecure file upload in Berta CMS\"\n") "<20150328054703.17CEE72E218@smtpvbsrv1.mitre.org>" ("<20150328054703.17CEE72E218@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29828 invoked by uid 550); 30 Mar 2015 12:32:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29850 invoked from network); 30 Mar 2015 11:35:59 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:subject:mime-version:content-type:from
         :in-reply-to:date:cc:message-id:references:to;
        bh=LTfSAom2FpCUqXbXJ+7gUrVEvEag5dGznsOE0L1FfEQ=;
        b=VRb8vUojeyFamAeMwh8um+bxKqpo7ibEqTi9wH8dYLIiG0XQgdIdRwklmHglHfQUw3
         NqdLryguJxOUzUMjS4IMe3fikWUG1ZmkcGFFDuOioD5DCY/ZjcV1x/7cdo+mNoke6tgS
         1ySz0fReDsI4QEj/zG2OFpzlo2sLet09WgmeyXOcJHeY+TLHfD9+4XW0mgsGV6LPqHwo
         Fq8Rb0+GlZDytC1BTtmI2fmldVs3HmijrGowZ2OJb7YK16O7KZCCQCGv10sGOXQcTsYU
         JBvktQ8gfuw50tPXjvVB70RBfTRzY++BA9xxma+w1akHHBEIP7SRg6UOehWVLvjtDu7j
         18oQ==
X-Gm-Message-State: ALoCoQnkSzES2i0jEOQnPq6ixpsyiJ7zbrrOVXa2tqipmaWlk+t9lfEn4ZW34LNs2JHPcK55iCTt
X-Received: by 10.180.218.162 with SMTP id ph2mr21352215wic.22.1427715347581;
        Mon, 30 Mar 2015 04:35:47 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2070.6\))
Content-Type: multipart/signed; boundary="Apple-Mail=_7CA65B92-AEA9-4C39-8451-BD185A6AA5C2"; protocol="application/pgp-signature"; micalg=pgp-sha512
X-Pgp-Agent: GPGMail 2.5b6 (da95e30+)
In-Reply-To: <20150328054703.17CEE72E218@smtpvbsrv1.mitre.org>
Message-Id: <5A4D0468-0D68-487A-86B8-B28B04464F7A@surevine.com>
References: <20150328054703.17CEE72E218@smtpvbsrv1.mitre.org>
X-Mailer: Apple Mail (2.2070.6)
Cc: oss-security@lists.openwall.com
Date: Mon, 30 Mar 2015 12:35:43 +0100
From: Simon Waters <simon.waters@surevine.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Insecure file upload in Berta CMS
To: cve-assign@mitre.org

--Apple-Mail=_7CA65B92-AEA9-4C39-8451-BD185A6AA5C2
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On 28 Mar 2015, at 05:47, cve-assign@mitre.org wrote:
>=20
> Signed PGP part
> > http://seclists.org/fulldisclosure/2015/Mar/155
>=20
> > We found that the file upload didn't require authentication.
> ...
>=20
> Use CVE-2015-2780 for this "didn't require authentication" issue.


Thanks


> The ability to bypass image validation by using certain .php files
> that begin with a "GIF89" substring might be considered a bug, but is
> perhaps not a security bug.

Your analysis is similar to mine, and private correspondence with the devel=
oper.

I've added a comment to PHP docs for getimagesize to remind folks it doesn'=
t validate images, I don't think this is a bug.

It might be a useful feature for PHP to have a simple file upload validatio=
n (Image magick has one), but there is no guarantee that valid files won't =
be misinterpreted as malicious if you can get them interpreted in an inappr=
opriate context.

--Apple-Mail=_7CA65B92-AEA9-4C39-8451-BD185A6AA5C2
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - http://gpgtools.org

iQEcBAEBCgAGBQJVGTUQAAoJEHT1d47Kem8YO5MIANokfHlOWCWOqJnJbDLgDv72
1EeRPIRnVIfriiIdeeboI/tJAibVIVtbBfonUNIoRqaTNZzOzBoXtJNF6x4S3oTW
Ac008LqmzbEv+HJjXi6QgJa0wvCW9sHDngurjbvD0WWtiyZiBf7QKQPDOzoPD3cn
gj+DnupgSl07s1u3drKwwv6PQrkpotoUrQztwftxxIL+uYIFoJZgXpeVSS6W9gpX
JKepBFO89AjvLtc6vpI/fkYbjUjdDKwxQLCPg1AGTJ6hfOQ4maS2sOA+ydvRudV5
x0CqpKmc4r5DNnVeLRVSdXP9hVhnSLo9z8wl6EUSZUivclYkNroLjGXMic2QcAY=
=hNA9
-----END PGP SIGNATURE-----

--Apple-Mail=_7CA65B92-AEA9-4C39-8451-BD185A6AA5C2--
