X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2130" "Thursday" "14" "December" "2017" "07:28:58" "+0000" "halfdog" "me@halfdog.net" "<5878-1513236538.042311@SkZ3.Z1q1.vQCb>" "51" "Re: [oss-security] Recommendations GnuPG-2 replacement" "^Date:" nil nil "12" "2017121407:28:58" "[oss-security] Recommendations GnuPG-2 replacement" (number mark "        me@halfdog.n Dec 14   51/2130  " thread-indent "\"Re: [oss-security] Recommendations GnuPG-2 replacement\"\n") "<20171207151506.GB13067@yuggoth.org>" ("<20171207151506.GB13067@yuggoth.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16036 invoked by uid 550); 15 Dec 2017 19:06:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16015 invoked from network); 15 Dec 2017 19:06:09 -0000
In-reply-to: <20171207151506.GB13067@yuggoth.org>
References: <20171207151506.GB13067@yuggoth.org>
Comments: In-reply-to Jeremy Stanley <fungi@yuggoth.org>
   message dated "Thu, 07 Dec 2017 15:15:06 +0000."
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Message-ID: <5878-1513236538.042311@SkZ3.Z1q1.vQCb>
Date: Thu, 14 Dec 2017 07:28:58 +0000
From: halfdog <me@halfdog.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Recommendations GnuPG-2 replacement
To: oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

Jeremy Stanley writes:
> On 2017-12-07 06:32:11 +0000 (+0000), halfdog wrote:
> [...]
> > For all steps regarding system startup, I switched to LUKS only,
> > using detached headers for special features. For release signing,
> > mail sign/encrypt, a good light-weight solution is still needed.
> [...]
> 
> I continue to use gpg2 in a release signing context, but strip
> symmetrical encryption from the private signing subkey with a custom
> keyring due to it being used by a headless/automated CI system which
> runs on virtual machines that get deleted as soon as the signature
> is generated thus leaving keys in memory isn't a concern there (and
> the master private key _is_ encrypted but only ever used to create
> signing subkeys and never goes anywhere near the CI system).

That's an interesting setup. For special signing purposes, where
I do not want to transfer the key, nor give the gpg-agent unrestricted
remote access to the key material via forwarding, I use the dirty
workaround from [0]. But you specific solution sounds much more
advanced.
 
> ...
> For E-mail I'll confess I still use mutt's (well, neomutt's at
> least) GnuPG integration, which has been working okay for me with
> gpg2 on Debian. I haven't seen a lot of good OpenPGP implementations
> besides GnuPG with at least equal levels of PGP/MIME integration
> there. The obvious alternative is switching to S/MIME but you've
> likely already considered that and the never-ending TTP vs WoT
> debate, not to mention Debian as a community is fairly invested in
> OpenPGP keys as a means of identifying and authenticating its
> developers/maintainers.

Yes, the TTP/WoT is another topic. The mailing usecase is similar,
only for signing - if I care to do so - I use [0] together with
some tools from the "nmh" (new mail handler) community.

hd

[0] http://www.halfdog.net/Projects/CryptoTools/RemoteGnupg/
-----BEGIN PGP SIGNATURE-----

iF0EAREKAB0WIQQVaq6YuR8BFP6IK9jEWZOG/u2r7gUCWjInmQAKCRDEWZOG/u2r
7ktSAJ9FU9OX22RS4QquHxLQBvV3lDkBNwCeIhfdypPjz83Q8LjWjqT3Ao7DPts=
=37pc
-----END PGP SIGNATURE-----


