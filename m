X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2068" "Sunday" "22" "March" "2015" "00:24:58" "-0400" "Daniel Micay" "danielmicay@gmail.com" "<550E441A.5040007@gmail.com>" "51" "Re: [oss-security] CVE for Kali Linux" nil nil nil "3" "2015032204:24:58" "[oss-security] CVE for Kali Linux" (number mark "        danielmicay@ Mar 22   51/2068  " thread-indent "\"Re: [oss-security] CVE for Kali Linux\"\n") "<550E4125.3070303@gmail.com>" ("<550E21FA.6090704@redhat.com>" "<CAHZU0yRzjyO78Nan5jgf38Mqt3hPQDDhcsirdVmBFPmRZ=6k9g@mail.gmail.com>" "<550E289C.1060602@redhat.com>" "<550E33F1.4020007@gmail.com>" "<87fv8xd7zy.fsf@hope.eyrie.org>" "<550E4125.3070303@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5556 invoked by uid 550); 22 Mar 2015 04:25:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5526 invoked from network); 22 Mar 2015 04:25:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type;
        bh=LuBSB65/M4snQHdDTaws21CjHpBADvxzy6j+LBO8k0Y=;
        b=Mgn1FQ7zxCQ5eTzoLmwCdjnoYzqTume9C/MjnMzMvSJ7arpVXlfiFvIYnDvf5lq9Jr
         tsVm/XI1qNeFigLTBEH/LXfeJxuLzUC7zojxlhdMaspl19vR1CuVTmEO54dbLMMlncSJ
         vjLSPixDYvUDhZ91I0c1Xuu8DQR7D5SLD0x24mQq6emFp48GH6mAFixQJ8qPcJooghxo
         MyXCxc8+sg8VleapV13Rv4NCQo/qWWqfpIFB5ld5KY+ZBTMMc9Qf3U1dLCLW6wPR7GxF
         mV1Hd4DaN1wDmQNCVrg8GI9BwRUzLRPPQu3EX/Z4HyXCt22MbWdEA9IP/v3NxDiSFIjU
         zM4w==
X-Received: by 10.42.199.193 with SMTP id et1mr12425623icb.75.1426998302213;
        Sat, 21 Mar 2015 21:25:02 -0700 (PDT)
Message-ID: <550E441A.5040007@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
References: <550E21FA.6090704@redhat.com>	<CAHZU0yRzjyO78Nan5jgf38Mqt3hPQDDhcsirdVmBFPmRZ=6k9g@mail.gmail.com>	<550E289C.1060602@redhat.com> <550E33F1.4020007@gmail.com> <87fv8xd7zy.fsf@hope.eyrie.org> <550E4125.3070303@gmail.com>
In-Reply-To: <550E4125.3070303@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="WG5biBiWA88mM9HT7wJT5H20w7ARjMT2S"
Date: Sun, 22 Mar 2015 00:24:58 -0400
From: Daniel Micay <danielmicay@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE for Kali Linux
To: oss-security@lists.openwall.com

--WG5biBiWA88mM9HT7wJT5H20w7ARjMT2S
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

> Windows users are also left out without this: they don't have GPG, and
> they don't have a secure way to obtain GPG.

http://www.gpg4win.org/
http://sourceforge.net/projects/msys2/

Not even HTTPS *without* HSTS + HPKP. Gpg4win did get part of the way
there but didn't grab a free certificate from GlobalSign or StartSSL.

The official gnupg site uses ftp with... GPG signatures. I guess you're
supposed to validate that the GPG installer you've downloaded is valid
by running the GPG installer? :P

https://www.gnupg.org/download/

Is there actually a way for a Windows user to obtain it securely?

GPG simply doesn't work here, even if you assume that users are going to
take extra steps to verify the download. You have to rely on HTTPS (or
HKPS) to obtain the GPG key anyway, so I don't see the point in pushing
for it here. It's fantastic for package signing, sure :).


--WG5biBiWA88mM9HT7wJT5H20w7ARjMT2S
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJVDkQaAAoJEPnnEuWa9fIq90oP/3r5KHF+viZ6KZ3TtY12iILa
IlVt9vYazAjGUwqYsnZlDo8D31U4gKTaigZNUuBVSBIShaF49Kr1fZgFfCeoKbY6
6EBa14AV/E86akcTScuyc8taet4GiQNEPP2UKy8XTlYgAcQhkAUOWQzYE0zXlEJD
Qb3U4FTl39pORR/gkiKbWRMZTiODCzI/RL9I3gSSnhnHydXzT+CJAgPXL6l8+wgm
Mcyltt/PPfNQ8KCgFJ4OU4C+b86ezQcTy6vVs+iyvwG0FOn6dfpMmywtTPS3ievk
rEdq3/jqjW4doXp40NuTcmDVgQUCNhNMi8bWzplFjPUtvd840gWBJwM39uCjvnxP
FiS2tVlorM2Id0csoSkfQYE5SZsAZYB636fXyrjGX5wdx7TsKd176M+vH8z6uBfC
WAvxdBt0Sinj3xAqHYhAEFNPcUpmZNJm5vlDxR9vEYk0D/XmA3Qy9LVADCWSroVR
j4mQ6gE6XWuppWPtjKK4QUPzYR3cX4OfW66uv9BxgDlhSJybO0wsZydDPo45j4YA
vXVyC0Zh+6H/1X3zaeX1atNuTFb6IsFvR4vkloArWGs+GkInc9ElG6TVC1rkVO7H
3lLzyQMcgbDKRslNR8gPLF/Z7APnfIBaKy4t3GLd44A8jlS9c1wjEUzYP9R+DgXe
e26qIn+rwqWX7qbv5+t6
=sL18
-----END PGP SIGNATURE-----

--WG5biBiWA88mM9HT7wJT5H20w7ARjMT2S--
