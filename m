X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2209" "Sunday" "22" "March" "2015" "08:05:27" "-0400" "Daniel Micay" "danielmicay@gmail.com" "<550EB007.1030701@gmail.com>" "52" "Re: [oss-security] CVE for Kali Linux" nil nil nil "3" "2015032212:05:27" "[oss-security] CVE for Kali Linux" (number mark "        danielmicay@ Mar 22   52/2209  " thread-indent "\"Re: [oss-security] CVE for Kali Linux\"\n") "<87384xcmum.fsf@mid.deneb.enyo.de>" ("<550E21FA.6090704@redhat.com>" "<CAHZU0yRzjyO78Nan5jgf38Mqt3hPQDDhcsirdVmBFPmRZ=6k9g@mail.gmail.com>" "<550E289C.1060602@redhat.com>" "<550E33F1.4020007@gmail.com>" "<87fv8xd7zy.fsf@hope.eyrie.org>" "<550E4125.3070303@gmail.com>" "<550E441A.5040007@gmail.com>" "<87384xcmum.fsf@mid.deneb.enyo.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21776 invoked by uid 550); 22 Mar 2015 12:05:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21758 invoked from network); 22 Mar 2015 12:05:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type;
        bh=J0wJTC9Xq1rwvirGWNNksMiDqIfs2xsC5UUKRN/BAEY=;
        b=y1JpZP4a0Y+gb5HEQxCIdNQuqUfn9sVcnyMUmCXWZpqeQ6Gb8LFY8p4v1myv8w+9Yh
         cTox4fRrMC8P5hm5bhG/Fh9lmmYdABBddUShTSLg7W/fjEdQEjcNTtt+JHPvFRhUWxAJ
         KWR5YZIOXKmIBKehGRpjGt+zXUWRrm4UsmUM+5jJHlPUXPCB/jG3zf+dX0XFjUcma1QY
         OGQ9g/GFPpbYtMvgoWkF3nvPKsjLVagmacfgEUlimDtR78Znwt70DtUJfqXf69MpDD0d
         Y+DNzsKVCz79RPNaA4JnZ/t+p5ch4h7Rri9j8Qwk21xBE/w3sAshpQvVR8z+N4g89S5m
         ThXw==
X-Received: by 10.42.184.199 with SMTP id cl7mr13971078icb.39.1427025934344;
        Sun, 22 Mar 2015 05:05:34 -0700 (PDT)
Message-ID: <550EB007.1030701@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
References: <550E21FA.6090704@redhat.com>	<CAHZU0yRzjyO78Nan5jgf38Mqt3hPQDDhcsirdVmBFPmRZ=6k9g@mail.gmail.com>	<550E289C.1060602@redhat.com> <550E33F1.4020007@gmail.com>	<87fv8xd7zy.fsf@hope.eyrie.org> <550E4125.3070303@gmail.com>	<550E441A.5040007@gmail.com> <87384xcmum.fsf@mid.deneb.enyo.de>
In-Reply-To: <87384xcmum.fsf@mid.deneb.enyo.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="fDu4e4FntveWDrwp7dHVbVhLMKuo6D6E0"
Date: Sun, 22 Mar 2015 08:05:27 -0400
From: Daniel Micay <danielmicay@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE for Kali Linux
To: oss-security@lists.openwall.com

--fDu4e4FntveWDrwp7dHVbVhLMKuo6D6E0
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On 22/03/15 07:06 AM, Florian Weimer wrote:
> * Daniel Micay:
>=20
>> Is there actually a way for a Windows user to obtain it securely?
>=20
> I believe there are ideological objections to using an Authenticode
> signature (same as with Tor).

Tor provides their download via HTTPS from the same domain and has both
HSTS preloading and HPKP. They provide a link to a GPG signature for the
tarball too, but that doesn't help most users unless their distro is
using it in package sources. AFAICT they plan on doing Authenticode
signing, but they're doing a good job without it.

The problem with these Linux distro downloads is that it's consistently
done via http. That's fine for packages because package signing takes
care of it. It's fine if the download is done in a way that results in
verification like a torrent, but otherwise the user needs to manually
verify a hash or signature and that's rarely going to happen.

It's 2015 and Debian shouldn't have an HTTP download link for the ISO on
their front page :P.


--fDu4e4FntveWDrwp7dHVbVhLMKuo6D6E0
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJVDrAHAAoJEPnnEuWa9fIqfRgP/3pFNgdxUWNC8kicHlK+yjp7
vfFlcd4NHrlpf5/5PUCkZqwSfqDqrgYX7BhvSbeMjEVxGwODEp6Rd9t4lBv3Ya/p
QIljd1RnYdGsUC18jPsokXtQWrt6LWSK7CRz3Q2emZw23E1z44IbsGmVJY1yfWGj
HnYxTaGeKDabR8wZu+HL9BsanVzMdub/JJIYOgpyf7ewGl8lHHL6qGpWKRPfANWW
zXnmYzDfOwUdS5P3yvuV4rf09tkOJu8BdFNx3APz7+FwhHfeCcOD+rZKJLhBnB3q
Oe2lz/FBhPv8NmZZ1TTscS1l0WXDB4TGXEzkSK8RnQLEVDm/DO8B5TJavJEVNL0o
lBUYFGpaI7EjGnhx77wx99KN7ISRAlQFHU/1v7npNfasS9AQ5wfFjxQL+0ayg6+u
iiJUANWi0A0gbE4D/iETnlqJ5dNvpCliHBCHgduKunCRmTGB92cL7YRMqN5L/T5T
QZWHJOLGItzpg6OYYo6+jdQjleIzMRGsHoVIFebRS6JNxXdIM+y1CZ7wR796FrCT
VEmqo236Cu+JYxCJ1IyDcj81CwPkQWRQk8c6pR5l8UXgiVCGKHGVQsK76ov//pJP
P0OgeKqRqzEpdZeuxQ/LS1XoNp1N2ZA62HiLzCJ85qnbkihsWcGW7PFrSv0kzDrU
9uLEi10YrxOhzuGwJ9Pm
=T6Mt
-----END PGP SIGNATURE-----

--fDu4e4FntveWDrwp7dHVbVhLMKuo6D6E0--
