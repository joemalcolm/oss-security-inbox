X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2956" "Sunday" "22" "March" "2015" "23:58:06" "-0400" "Daniel Micay" "danielmicay@gmail.com" "<550F8F4E.6040705@gmail.com>" "65" "Re: [oss-security] CVE for Kali Linux" nil nil nil "3" "2015032303:58:06" "[oss-security] CVE for Kali Linux" (number mark "        danielmicay@ Mar 22   65/2956  " thread-indent "\"Re: [oss-security] CVE for Kali Linux\"\n") "<20150322202332.5bfd0e4a@heffalump.sk2.org>" ("<550EE478.70005@redhat.com>" "<E1YZj9N-0003Th-Gn@rmm6prod02.runbox.com>" "<20150322172300.GA21110@openwall.com>" "<550F0ADD.5020800@gmail.com>" "<20150322202332.5bfd0e4a@heffalump.sk2.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7693 invoked by uid 550); 23 Mar 2015 03:58:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7667 invoked from network); 23 Mar 2015 03:58:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type;
        bh=+1h1UH+SGwiptdEVkz9xouLlZQWm0GwTdNSyXIJQzjs=;
        b=fsA91V6KKeESI7fWUbMdSjZReGmDC5OU2MhiFz35siER/f2aH3ePnwwYrrVc81Yym5
         ubQy+P4ArDtd0k74fC8sydA/TRWXVrstdDDN0SoFWAgmf3MSpoVBQswK1oLoS7bvWQOw
         oRXY8O6653wTmyqUpHxsypPhMJ8dHgfntgMzrinAUsGnO3wS8JxMh8JUO6raG8rVrXML
         /nybEdwlEiLF/AOQsxTBheV3bhRMsJ4B5dSov6WAN4CMTmpnW+WXaTGECZwN71CEJLRn
         xeW8CDiiZTpWxgZqOkNeiwwgoUonojwP9O6VLupQnS8KNAiqMswXBAKkgvhn01H3e+z0
         Iftg==
X-Received: by 10.43.39.208 with SMTP id tn16mr16930386icb.97.1427083092842;
        Sun, 22 Mar 2015 20:58:12 -0700 (PDT)
Message-ID: <550F8F4E.6040705@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
References: <550EE478.70005@redhat.com>	<E1YZj9N-0003Th-Gn@rmm6prod02.runbox.com>	<20150322172300.GA21110@openwall.com>	<550F0ADD.5020800@gmail.com> <20150322202332.5bfd0e4a@heffalump.sk2.org>
In-Reply-To: <20150322202332.5bfd0e4a@heffalump.sk2.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="Q6u2tIamu5mRNt4G9DAUrlLgGUvHE3lNj"
Date: Sun, 22 Mar 2015 23:58:06 -0400
From: Daniel Micay <danielmicay@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE for Kali Linux
To: oss-security@lists.openwall.com

--Q6u2tIamu5mRNt4G9DAUrlLgGUvHE3lNj
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On 22/03/15 03:23 PM, Stephen Kitt wrote:
> On Sun, 22 Mar 2015 14:33:01 -0400, Daniel Micay <danielmicay@gmail.com>
> wrote:
> [...]
>> At best, GPG offered *zero value* compared to checking a hash provided
>> via HTTPS, grabbing a torrent file via HTTPS or downloading directly via
>> HTTPS. However, I think it's pretty clear that few users would have gone
>> through with this and all it did was maintain the same security offered
>> by the HTTPS PKI.
> [...]
>=20
> I don't have any objection to the rest of your argumentation, which seems
> sensible to me; at the very least it's clear that all this needs to be ma=
de
> much easier, and (proper) HTTPS use should be encouraged.
>=20
> But I do believe that *at best*, GPG offers something that HTTPS doesn't:
> signature validation with peer-to-peer trust via the web of trust. This is
> "at best" because most users don't have a key in the strong set; but at l=
east
> for Debian, the archive keys are in the strong set, so any one else with a
> key in the strong set has at least one trust path to the archive key.
>=20
> Of course that doesn't really help with the MITM scenario, since end users
> would need to know that the archive key is supposed to be signed, and by
> whom...

An attacker only needs control over a few keys in the strong set to add
any number of keys they want, which can then sign other keys. There's
value in the GPG WoT but it's non-trivial to extract it. You could
specifically find Debian devs and obtain their fingerprints securely
from various other places. I think the numbers of users who are going to
do this can probably be counted on a single hand. If there were actually
instructions on this in the installation guide, it could be argued that
a secure option is there.


--Q6u2tIamu5mRNt4G9DAUrlLgGUvHE3lNj
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJVD49TAAoJEPnnEuWa9fIqinAP/ipjjyS8nssGq+NCSgZE2Ej8
WdSgeqj9eim7ZHZCjvX/vVV2M8BNpgcr+CXEo251SZWp2Qh1pVhaLUaRbAdWJpzH
wEyQE1xFc4vbtteDJ5x5FQzX/92DCkrZRm1wR4qyH+GD1wGoqgujDKAz9mfK+oOv
X3JxDIoGHAI5YUVkizoks2tY1Th3XgkBQp2l5KllXPalDVdcRbk47JXM8dUPSOFD
VRkaTIj/GjhZ4bfZ6oIb5Ntsi4ayLNGnQKBu3Re5r3TcKAi6inBL/eCIcwkR3ard
IaTuK0AgxvZ7/5amvi02P5lHqft9bDjRabRgoxCXU4HIAGn3QB44orbbVAgWWRaZ
SiiwsJstdUgiHQliRIMjGTNWTnVuo3OR5zVmbDVkaKpdDDs+QRuBV4ZpJUiTe1im
uRtqGKTpH182YFWQ1TNx4LmJrofxLEegnhxqJKwwJ0jS+knNWP9B35XmChTOoc/n
VbY/lWJ2AJq8Q+gbkWhMuqlOgeq0pu/70yne5AOymP2OYmH/Fv32TpW0YkXo8DHz
9HTNXQuujeINQF0R6Izq0WO6IerOD6hqSQ9pze0qBMqKY32cjl3hdQ95CqzCNQ8V
ZQXSQO0PjgXksy43bS+POQ80u7iaoy1qsefs03Oj0Wp/a8L9HlSOUK/6sJmqQ/1j
BY6l3gH3GaTdMNZbHBLo
=DSKv
-----END PGP SIGNATURE-----

--Q6u2tIamu5mRNt4G9DAUrlLgGUvHE3lNj--
