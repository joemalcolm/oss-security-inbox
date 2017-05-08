X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2103" "Monday" "8" "May" "2017" "04:03:24" "+0200" "Shiz" "hi@shiz.me" "<06FEF7A9-73A6-43C5-A8FA-36FA1349E5A4@shiz.me>" "57" "Re: [oss-security] terminal emulators' processing of escape sequences" nil nil nil "5" "2017050802:03:24" "[oss-security] terminal emulators' processing of escape sequences" (number mark "U       hi@shiz.me   May  8   57/2103  " thread-indent "\"Re: [oss-security] terminal emulators' processing of escape sequences\"\n") "<20170501164428.GA12322@openwall.com>" ("<20170501164428.GA12322@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30035 invoked by uid 550); 8 May 2017 09:48:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11830 invoked from network); 8 May 2017 02:04:02 -0000
From: Shiz <hi@shiz.me>
Content-Type: multipart/signed;
 boundary="Apple-Mail=_624BF067-490B-4BE4-B5FD-EE9F4EE89DFF";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 10.1 \(3251\))
Date: Mon, 8 May 2017 04:03:24 +0200
References: <20170501164428.GA12322@openwall.com>
To: oss-security@lists.openwall.com
In-Reply-To: <20170501164428.GA12322@openwall.com>
Message-Id: <06FEF7A9-73A6-43C5-A8FA-36FA1349E5A4@shiz.me>
X-Mailer: Apple Mail (2.3251)
Subject: Re: [oss-security] terminal emulators' processing of escape sequences

--Apple-Mail=_624BF067-490B-4BE4-B5FD-EE9F4EE89DFF
Content-Transfer-Encoding: 7bit
Content-Type: text/plain;
	charset=us-ascii

> On 1 May 2017, at 18:44, Solar Designer <solar@openwall.com> wrote:
> 
> Unfortunately, I did not record which terminal emulators did not crash
> for me.  However, Jason recorded both kinds of results for him, coming
> up with:
> 
> Konsole: no crash
> Xterm: no crash
> rxvt: crash
> Yakuake: no crash
> Mosh (which is a terminal emulator, after all): no crash
> Screen: 100% CPU usage --> DoS
> rxvt-unicode: no crash
> Qterminal: no crash
> putty: no crash
> 
> This adds "screen" to terminal emulators with problematic processing of
> terminal escapes.  Due to minor known impact, we did not handle this
> under embargo - it should be investigated and fixed now, in public.

Despite not being open source and thus unfit for the list, I can confirm this
also causes high CPU usage for macOS Terminal.app, version 2.7.1 (387),
as shipped on macOS 10.12.1.

- Shiz

--Apple-Mail=_624BF067-490B-4BE4-B5FD-EE9F4EE89DFF
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJZD9HvAAoJEI8YjKeZk+kHawMQAKWYkSiRv8yjmE//j2yh0+sR
mXvutrqR8+3LyCzJJ897Newv5oiEUratIPSYEQpsHdTulnk5uggdoKGgkMxTh249
3/7g0HvaImdYgUkNfqZrYuyBjitHpLPvop3RZC+GKnKF6pJZdtTmjHFmbhZClOJ4
FJqXfwpaEAD6tYTLgtFei6XwQfoO+N3VRwnl1a9Pq1BQu7iei0g+NWq9y83S0CNc
uL7v5lz2mqpQakhw/Havd7daM6ii+leywgDSod/OhxGKpWQGVO58OxoFLT4SqWMu
hnAFvhVrv/acjxDDfOmxIg1xFSmLrobJ+81XsX1kK1oMPHT/HqOdjl9wgo+8Wdaw
TxhVEQ0SPZ1sDr3N/5louN4kLTNBZ7w2jPifPVffJZqtEnvQ0awhU6DY47kgOAWl
vInR604vLV43uRph9rhu/tuNLCJZ3weuISxFlyvQlbIg3ekl928zzboF3hUI0jor
ZR13m+WE67CjXioi29TluvcGOQqZZK54frNsV0frB2tad5T3P5LfFh/wwxR1w16v
nVQXOJV5b90wTx6TM5ynWvAOxgL0gYHhf2O23h+3dDiXysePcJL3hZSLCmbcmJg8
c7rozkSoQE9sfmDf81+Dt/YNtDbUuM7MgcWmCp/dSoPKo5RwPeCPf4/6llwIcrnN
sui/hp9+VyBwX77IA7KU
=Fgsd
-----END PGP SIGNATURE-----

--Apple-Mail=_624BF067-490B-4BE4-B5FD-EE9F4EE89DFF--
