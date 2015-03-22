X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2919" "Saturday" "21" "March" "2015" "23:16:01" "-0400" "Daniel Micay" "danielmicay@gmail.com" "<550E33F1.4020007@gmail.com>" "71" "Re: [oss-security] CVE for Kali Linux" nil nil nil "3" "2015032203:16:01" "[oss-security] CVE for Kali Linux" (number mark "        danielmicay@ Mar 21   71/2919  " thread-indent "\"Re: [oss-security] CVE for Kali Linux\"\n") "<550E289C.1060602@redhat.com>" ("<550E21FA.6090704@redhat.com>" "<CAHZU0yRzjyO78Nan5jgf38Mqt3hPQDDhcsirdVmBFPmRZ=6k9g@mail.gmail.com>" "<550E289C.1060602@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12262 invoked by uid 550); 22 Mar 2015 03:16:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12236 invoked from network); 22 Mar 2015 03:16:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type;
        bh=JS8bFcmqyePsfYl0UdJ2Hp4outlagPOGCgYpjjZUufA=;
        b=sNy9KsheyI9GrecjPEQBDCxclw2Soka5llVSuXtrmTOI1f9xdpQAkohVOYnZM6son9
         yjUAuaVN3WOYjBqfkiwvTQ60Z/xHIKsQBNK78ZX06YulDPHe536TZt/Adc1LoIZTcotz
         NtqQxxsY/uJKpyv5gTjOTP457e3pTmKHEXvMj7NjL32wGtvpqaLVaPojGXsh4Pz/SCbw
         DvrcO6beaXNbO2sslly3rOKdRx8n5YMEER5SVun9S+3nm8Ddw/cECNgGHKK7+8KwG2JK
         byiBVC9jQzh00nps1imjjruXUrPptr+CphnKtuhOpZYDDgvwGi1x8MNygb59uon5/07h
         /cew==
X-Received: by 10.50.79.229 with SMTP id m5mr6226434igx.23.1426994162528;
        Sat, 21 Mar 2015 20:16:02 -0700 (PDT)
Message-ID: <550E33F1.4020007@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
References: <550E21FA.6090704@redhat.com> <CAHZU0yRzjyO78Nan5jgf38Mqt3hPQDDhcsirdVmBFPmRZ=6k9g@mail.gmail.com> <550E289C.1060602@redhat.com>
In-Reply-To: <550E289C.1060602@redhat.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="FqfUahHDfG2vsl4C8vI3vVvX0Ca69k6en"
Date: Sat, 21 Mar 2015 23:16:01 -0400
From: Daniel Micay <danielmicay@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE for Kali Linux
To: oss-security@lists.openwall.com

--FqfUahHDfG2vsl4C8vI3vVvX0Ca69k6en
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 21/03/15 10:27 PM, Kurt Seifried wrote:
> On 03/21/2015 08:04 PM, Justin Steven wrote:
>> Kali, like its upstream (Debian), signs packages using gpg.
>>
>> https://wiki.debian.org/SecureApt
>>
>> Kali provides sha1sums over https at their site to verify the .iso
>> download, as well as providing gpg signatures for .iso files
>>
>> --
>> Justin
>=20
> So I guess we enter uncharted territory here. So my thought is this:
>=20
> Vendor has front page that recommends doing something completely insane
> and insecure (http/md5s/etc.). On the back end (good lucking finding
> this) vendor does something sort of secure (gpg signing of packages, no
> clue if key distribution is secure) but this is not really documented wel=
l.
>=20
> Does this win a CVE or not? I personally think yes, yes it does.
>=20
> Mitre as always is the final arbiter of what is cool. I mean what is a CV=
E.

Fedora and Kali both provide their ISO download via HTTP.

Fedora asks the user to validate the download via a signed SHA256 hash
file obtaining via HTTPS. Kali asks the user to validate the download
via a signed SHA1 hash file obtained via HTTPS (that blurb on the front
page is out-of-date, there are no MD5 sums)

I don't think the difference between SHA1 and SHA256 is very important
right now, so the only significant difference is that Fedora has the
HTTPS domain in browser HSTS preload lists.

It would be much better to provide the download via HTTPS from a domain
that's HSTS preloaded and ideally has some level of key pinning. We are
all well aware that few users are going to go through a manual process
on the command-line to verify the download, especially if they're on
Windows as they won't have the commands that are being used.


--FqfUahHDfG2vsl4C8vI3vVvX0Ca69k6en
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJVDjPxAAoJEPnnEuWa9fIqznMP/3zD24oA3Gp5rRNjc0f2rf6+
P9S73nxd2357785QF24JFNMiltRRxBGBe0xnKOFXf1/reoFyGH67bhW5Bcl2bbGt
qhU4qfzmuYO/EH3fCQcOmNTmp/I26PqHaeOCRw3wG+dfYCxQ+mIUAKlGHSNGiyPO
srPDrzGrs80QnBUUG+LmavUMahQBVHBufQKAY0FiOei4SJVocjMl61tui3wDdxDK
4sgUwgJqQ8YyNXuvtzDz4uV+0MJkF/ifhhGZNw6FyNq/hkvIpiez9WpS6ldD0fs+
nPN46z5vNPWMEWEIu4QLmXVbcTXX1F/hajOsAxX0a7ox4gaFLk6F0ru3+eKsm+gu
p4+gjZkNlQmcXRnQeWrEZvqM4KHfjwT0pIinZaTqP0v9WRtMiOwGhAiEKfrqA6zS
xVN6TBv2jtFI/3RNfHy2Sj35uo4xLLB9BPPsBKpZ+wJcgIidvY6JqygPvK8cepH9
peUlFT5+9WMua2mT7pMb0rAt88X5Pjr6WwfiNANwrRgZ0vn4RKR2XZlHHf++zpzQ
1KpNtlrtMJ/5ltNjot67lX8NhszvzNxvFlpV/ozoFAd/aRtQW3Ymonm6bXwNlqwf
MjjqGtNxgQsZtUfqtQERxVvubb57u7VKFkBg2RHQmrZF0UWiZHKv9NbE72iG1Kf4
ZE+y5MorvJ8xem9fEf89
=yymp
-----END PGP SIGNATURE-----

--FqfUahHDfG2vsl4C8vI3vVvX0Ca69k6en--
