Received: (qmail 32006 invoked by uid 550); 18 Aug 2025 01:45:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 31982 invoked from network); 18 Aug 2025 01:45:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=dwheeler.com; s=selector2; h=To:References:Message-Id:
	Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Subject:Mime-Version:
	Content-Type; bh=6Ebp0NSEpurgdZ/ywLh2P/89Dip5gnxY9DP6gr6vjpM=; b=lvinTn0ry0aq
	HYQ3RrTgOjn49il/ZmzLc/FOQ1CH9rPnP92ak2Cql4q+CNBqBWX6ubnzMTZ+5oxnZiFCj1Gfr3Ptb
	xRAcGQeibg0YMsulALsuMm6G/tyiWCgqKe82eJy3IGbhsTjl0IoCEjb7iESDLzG7tS1t6B2Q+oZRR
	Mk0z6NBrfp3ZMeqZQZfQ1EBApL5vCR3N0msMkL3deFBqh/f14vNRnXVq3cTWsok8D3+6p8aGgZXN7
	KC3d48pAbJ/RoxcUUVexJlAdXHz16MTBgFq4+1DrXdPMr402I0Bz798TQxe0CftpbeiT6KVYFoozo
	13qHsAQS+D5GTbRZ1u1INg==;
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.700.6.1.21\))
From: "David A. Wheeler" <dwheeler@dwheeler.com>
In-Reply-To: <20250817140937.GA16226@unix-ag.uni-kl.de>
Date: Sun, 17 Aug 2025 21:44:29 -0400
Cc: Vincent Lefevre <vincent@vinc17.net>
Content-Transfer-Encoding: quoted-printable
Message-Id: <B13F08EE-9A89-4D37-AD66-0772C042781D@dwheeler.com>
References: <20250813203857.GA11693@unix-ag.uni-kl.de>
 <87a53zyugg.fsf@gmail.com> <20250817010958.GA607521@qaa.vinc17.org>
 <20250817140937.GA16226@unix-ag.uni-kl.de>
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3731.700.6.1.21)
Subject: Re: [oss-security] xterm terminal crash due to malicious character
 sequences in file name


>>>> On Wed, Aug 13, 2025 at 07:00:58PM +0200, Vincent Lefevre wrote:
>>>>>=20
>>>>> The following makes the xterm terminal crash
>>>>>=20
>>>>>  touch "$(printf "file\e[H\e[c\n\b")"
>>>>>  gunzip file*
>>>>>=20
>>>>> due to malicious character sequences in the file name and a bug
>>>>> in xterm. Same issue with bunzip2 instead of gunzip.
>>>>=20
>>>> I do not expect this to only happen with gunzip and bzip2.
>>>> Does this happen with any program that prints the filename without
>>>> any escaping, e.g., "echo file*", and most programs that print
>>>> the provided filename
...

On Aug 17, 2025, at 10:09 AM, Erik Auerswald <auerswal@unix-ag.uni-kl.de> w=
rote:
> I'd expect most programs to not change the filename printed in their
> output.  POSIX does not even expect "ls" to sanitize its output without
> "-q", but it does allow it[0].  Two more example programs that do not
> sanitize filenames in their output would be "file", at least version
> "5.41", and "dash", at least the version[1] included in Ubuntu GNU/Linux
> 22.04.5 LTS.  I'd expect that you can find many more examples.  Getting
> every program changed to follow your expectation seems like a Sisyphean
> task to me.
>=20
> Please note that I am not opposed to adding that feature to every
> existing and future program, it just seems foolish to rely on it, at
> least currently.

I agree. It'd be *much* more secure
if the operating simply prevented the creation of filenames
with certain names, e.g,. containing control characters and leading dashes.
I wrote an essay here specifically about this:
https://dwheeler.com/essays/fixing-unix-linux-filenames.html
See section 1.3, "Oh, and don=E2=80=99t display filenames. Filenames could =
contain
control characters that control the terminal (and X-windows), causing nasty=
=20
side-effects on display. Displaying filenames can even cause a security vul=
nerability =E2=80=94
and who expects printing a filename to be a vulnerability?!?"
It's not a new problem, I knew about this in the 1980s and I'm sure others =
did too.

I proposed forbidding such characters to POSIX. They *did* add a few mechan=
isms to POSIX
to make it somewhat easier to handle filenames with control characters
(e.g., find -print0 and xargs -0). However, although they do not *require*
that operating systems allow these filenames, they are not forbidden either.

I have a draft Linux Security Module (LSM) that lets you determine
what kind of filenames are allowed to be created. By default it would requi=
re
non-control-chars, no leading '-', no trailing ' ', and UTF-8 encoding,
but it would let you configure further. I intend to go back to that
to finish it off & propose it. My original proposal merely prevented creati=
on;
it would be possible to hide them entirely, but that comes with its own iss=
ues.

--- David A. Wheeler

