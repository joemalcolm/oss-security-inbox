X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1825" "Monday" "18" "January" "2016" "10:17:27" "+0100" "Bart van Tuil" "bvantuil@mivargroup.nl" "<569CADA7.8070701@mivargroup.nl>" "46" "[oss-security] Re: [FD] It essentially wins crypto vulnerability bingo! gilfether/phpcrypt" "^Date:" nil nil "1" "2016011809:17:27" "[oss-security] Re: [FD] It essentially wins crypto vulnerability bingo! gilfether/phpcrypt" (number mark "        bvantuil@miv Jan 18   46/1825  " thread-indent "\"[oss-security] Re: [FD] It essentially wins crypto vulnerability bingo! gilfether/phpcrypt\"\n") "<CAKws9z2psDS2P25SOykpaR0QUiMZd1Pe1q4Q3ia_YyXXh-ptGQ@mail.gmail.com>" ("<CAKws9z2psDS2P25SOykpaR0QUiMZd1Pe1q4Q3ia_YyXXh-ptGQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1808 invoked by uid 550); 18 Jan 2016 11:24:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3650 invoked from network); 18 Jan 2016 09:17:38 -0000
References: <CAKws9z2psDS2P25SOykpaR0QUiMZd1Pe1q4Q3ia_YyXXh-ptGQ@mail.gmail.com>
Openpgp: id=DDDE74F8FD6EF317F37B8FFB49D423649143CD7C
X-Enigmail-Draft-Status: N1110
Message-ID: <569CADA7.8070701@mivargroup.nl>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0 SeaMonkey/2.39
MIME-Version: 1.0
In-Reply-To: <CAKws9z2psDS2P25SOykpaR0QUiMZd1Pe1q4Q3ia_YyXXh-ptGQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 18 Jan 2016 09:19:28.0921 (UTC) FILETIME=[5528D890:01D151D1]
Disclaimer: SID=0105000000000005150000004450a3b370a7a894ab6cbca401020000
Date: Mon, 18 Jan 2016 10:17:27 +0100
From: Bart van Tuil <bvantuil@mivargroup.nl>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: [FD] It essentially wins crypto vulnerability bingo! gilfether/phpcrypt
To: Scott Arciszewski <scott@paragonie.com>, "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>,
	 "fulldisclosure@seclists.org" <fulldisclosure@seclists.org>

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

I don't get something:

> 4. https://github.com/paragonie/EasyRSA (reluctantly included for
> people that really believe they need RSA)

...What's, in your opinion ofcourse, the wrong thing about
implementing RSA in a decent web application? PHP is used for much,
much more than building simple frontpages without a backend (where
this might be a senseless complication). RSA is still the way to go
about implementing accessible asymmetrical crypography...

I do agree, wholeheartedly, that building your own cryptographic
primitives is just an expensive way of ultimately fooling yourself.

Just wondering...


All the best,


Bart


<rant>
PS:
All this bashing on PHP really tires me - it's getting old and
redundant. And no - im not a PHP developer.
</rant>
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (MingW32)

iQEcBAEBAgAGBQJWnK2nAAoJEEnUI2SRQ818biYH/1uKMFgwvkj2iBax/0NJlNTH
2Tfd6HLjesvaHUUpQGnvlOILszBoULOlzSsbIXkeLAob/nRyMll7MNI1UExzxub2
3tJzmzXenMCT+3en9vCr1eBkEZBCGKWudTLYoEYSanzK1aKr2N4aZEFxYzKWq+fX
v3hZQuqbISnUvk5UzSdpKW8ZHEMdjhdqt9h7q2BH7m/z5o72jHDBkOFpflCRzIu3
xlH0ctxFT1F0C071Dk+I5zdAOnERqM/68wDvJ0fHYmobtKPfMDgu8nSqYyB5LpUK
U1R4zAe/Jpuxkx9DWZb2f0BK7SrZwX9jDs+BPkDZ1tpN6rV2z3toaXtrWjMbwWM=
=o7rc
-----END PGP SIGNATURE-----


This email and any attached files are confidential and intended solely for the intended recipient(s). If you are not the named recipient you should not read, distribute, copy or alter this email. Any views or opinions expressed in this email are those of the author and do not represent those of the   company. Warning: Although precautions have been taken to make sure no viruses are present in this email, the company cannot accept responsibility for any loss or damage that arise from the use of this email or attachments.

