X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2218" "Tuesday" "24" "January" "2017" "16:52:29" "-0500" "Daniel Micay" "danielmicay@gmail.com" "<1485294749.1902.0.camel@gmail.com>" "56" "Re: [oss-security] Headsup: systemd v228 local root exploit (CVE-2016-10156)" "^Date:" nil nil "1" "2017012421:52:29" "[oss-security] Headsup: systemd v228 local root exploit (CVE-2016-10156)" (number mark "        danielmicay@ Jan 24   56/2218  " thread-indent "\"Re: [oss-security] Headsup: systemd v228 local root exploit (CVE-2016-10156)\"\n") "<CAN_LGv1TvwzDnsOSrEos7zuKbsqEsZHB5ahnONK-63CotmUKkA@mail.gmail.com>" ("<20170124085501.GA9322@suse.de>" "<CAN_LGv1TvwzDnsOSrEos7zuKbsqEsZHB5ahnONK-63CotmUKkA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17639 invoked by uid 550); 24 Jan 2017 21:52:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17617 invoked from network); 24 Jan 2017 21:52:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:date:in-reply-to:references:mime-version;
        bh=WQeZTxxVC5G63Di+nCCMVZNnu4YDNn9G8LD7Wt0mscI=;
        b=WD9FqUwcxoHZ7VeP8fB18fFbIDTyky65NjyJKBpGxEh4GNVpXqwvpLkNq/z264AN9q
         3gw76LfCTaJKQAcCBQoxyDRmk9g4liJmfF5luqXK6QnMxpFOiRv9IMXKesHIsjScBF0K
         3Z6LJEzZ1EzwiMMA6ZnQP0MiG6EcXAdUGI5AFrL0SnbBKREpfQw2DDLGsXLjO8rrnlEz
         E8X4D+rJOiQiGxP5iNjuYSY7c+WqLmxv4Zr6GJZJUMNvNi53ctKNxX3KDYzJ8jU0hUeX
         ObKYy/ENVcBd2aYfs+tjjTMNS/4RjcKvMuiIWtocrrUaZRK+F3Is3t6Gv9HDMBfW3Flz
         DqWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:mime-version;
        bh=WQeZTxxVC5G63Di+nCCMVZNnu4YDNn9G8LD7Wt0mscI=;
        b=VkpJdvtJMEbAEoB8vlQKinf1CrTPgSmZN5N1SqAzQBzh8YDrwQQUhLzEUzrK6hmtve
         siRwtqML3fpjIo/bddCDYaTomXYZJh8RGBPqGA6yjuvc24+fvFYbi6fhn07tt+e+DtST
         o3dc0W8S+im+UzsDiUgeh9td5HRmDad1Huuq3pjMGvTzcKx/pQzIztyBwRoS/wQvIpEB
         Hj8c5Z+FZgufNvuG8oD1l1MBhEY3brer/8hG43YXwuPryOpzAf5BqThu6n8W1sAcw/np
         +2Z9KQu9kKCTC0eB5/mWBKxwjeZjAamS/hq+rKbXMPlxEa3o/d7GvCJjsyV7ElEYcPjl
         Mrfg==
X-Gm-Message-State: AIkVDXK95r3VXkcvbp/H3tApdeSHOEn+FqNdSCKkJkoSeANe+oUh3lPpR8TiqLRxnHBjtw==
X-Received: by 10.36.246.5 with SMTP id u5mr21497987ith.48.1485294762289;
        Tue, 24 Jan 2017 13:52:42 -0800 (PST)
Message-ID: <1485294749.1902.0.camel@gmail.com>
In-Reply-To: <CAN_LGv1TvwzDnsOSrEos7zuKbsqEsZHB5ahnONK-63CotmUKkA@mail.gmail.com>
References: <20170124085501.GA9322@suse.de>
	 <CAN_LGv1TvwzDnsOSrEos7zuKbsqEsZHB5ahnONK-63CotmUKkA@mail.gmail.com>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-9DTs0RTYTj25EIjnYe8o"
X-Mailer: Evolution 3.22.4 
Mime-Version: 1.0
Date: Tue, 24 Jan 2017 16:52:29 -0500
From: Daniel Micay <danielmicay@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Headsup: systemd v228 local root exploit
 (CVE-2016-10156)
To: oss-security@lists.openwall.com

--=-9DTs0RTYTj25EIjnYe8o
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2017-01-25 at 01:20 +0500, Alexander E. Patrakov wrote:
> 2017-01-24 13:55 GMT+05:00 Sebastian Krahmer <krahmer@suse.com>:
> > Hi
> >=20
> > This is a heads up for a trivial systemd local root exploit, that
> > was silently fixed in the upstream git as:
> >=20
> > commit 06eeacb6fe029804f296b065b3ce91e796e1cd0e
> > Author: ....
> > Date:=C2=A0=C2=A0=C2=A0Fri Jan 29 23:36:08 2016 +0200
> >=20
> > =C2=A0=C2=A0=C2=A0=C2=A0basic: fix touch() creating files with 07777 mo=
de
>=20
> That's important for users of Arch Linux and other rolling
> distributions.
>=20
> If the system has booted the vulnerable version of systemd at least
> once, then the files with dangerous permissions will be there. There
> is no code in systemd that fixes permissions on already existing stamp
> files. There is no postinstall script in Arch that does it, either.
> So, you have to fix permissions to 0644 or remove the stamp files
> manually, once, even though the commit appeared in Arch repositories
> long time ago.

/run is a tmpfs=

--=-9DTs0RTYTj25EIjnYe8o
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQJKBAABCAA0FiEEZe7+AiEI4rcIy/z3+ecS5Zr18ioFAliHzJ0WHGRhbmllbG1p
Y2F5QGdtYWlsLmNvbQAKCRD55xLlmvXyKpduD/0Y5BFLa4fBPOSWWXCT7BP6iaiQ
IPPjBGekX8ilzxMn8U2Fsj1nAeGFkfpKmK+E6dAJtdPaCgNG7zpl624mAGcAJ/I/
TL5wpBtLbv1QHjU2seHtFveoOKtTrqs3jxxsbOZRuJY8rZh/Psfft/PbF64NPGvj
cPR9arzDVHtBY361EObQPtUtzsee3UG/4ySdNh3KoDIcP51xdRbRJKv5EouoieAP
P6qnXfVkBJzHvqIzFTBXBZOTgAf1fsatiyqRnzy8gReG5dstxzijFcgYDUSKKD1u
IQiEglsMWOVP3Ti1qcVZ9M9MNcsI7bYABR7I6blw/qTfbXM0tE7OYRkqKYkxiKv/
V8TsnZqbnfDq40W7sLxDpTA4H7X5r1XPq4Tx3CgGQGBM0vrfQdd/LGtX6Hi12KfH
mDvH5OHo7JgawMy2ZrPzGGwXPPrckq6tg8EbIrSIZZrQoQWSabaBRCXNu2wd+Vje
pHBPtKiTA5+GbEEOH6wcqHl0gsr9pX7ThpipG3bzlrmpfEfYOh1y0jucwtK5PKkf
8Wc1dP+4x+OCK8aODGiphSXZBpJL+iMb3ji8YiEMCfjr1PWy97P7+BAFkAwN6LGU
D/tkUxyWy1/ec1oiaFNfJoh3euR1e/ZjNSz37V3TLV5j5Lhd7FL/9Zw2BoixcJ4a
At2aN0hCHTECfXfFwQ==
=O3Jq
-----END PGP SIGNATURE-----

--=-9DTs0RTYTj25EIjnYe8o--

