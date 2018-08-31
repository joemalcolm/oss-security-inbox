X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2589" "Friday" "31" "August" "2018" "11:52:16" "-0400" "Daniel Kahn Gillmor" "dkg@fifthhorseman.net" "<87d0ty355b.fsf@fifthhorseman.net>" "60" "Re: [oss-security] Travis CI MITM RCE" nil nil nil "8" "2018083115:52:16" "[oss-security] Travis CI MITM RCE" (number mark "U       dkg@fifthhor Aug 31   60/2589  " thread-indent "\"Re: [oss-security] Travis CI MITM RCE\"\n") "<3e3fad60-244f-e11d-f3c9-4757be6e6f93@johannes-bauer.com>" ("<20180825214923.ppes3ivrw73mbmrm@jwilk.net>" "<20180826005658.GA5795@osmium.pennocktech.home.arpa>" "<87sh2y5tnf.fsf@fifthhorseman.net>" "<3e3fad60-244f-e11d-f3c9-4757be6e6f93@johannes-bauer.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13986 invoked by uid 550); 31 Aug 2018 15:52:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13965 invoked from network); 31 Aug 2018 15:52:35 -0000
From: Daniel Kahn Gillmor <dkg@fifthhorseman.net>
To: zugtprgfwprz@spornkuller.de, oss-security@lists.openwall.com
In-Reply-To: <3e3fad60-244f-e11d-f3c9-4757be6e6f93@johannes-bauer.com>
References: <20180825214923.ppes3ivrw73mbmrm@jwilk.net> <20180826005658.GA5795@osmium.pennocktech.home.arpa> <87sh2y5tnf.fsf@fifthhorseman.net> <3e3fad60-244f-e11d-f3c9-4757be6e6f93@johannes-bauer.com>
Date: Fri, 31 Aug 2018 11:52:16 -0400
Message-ID: <87d0ty355b.fsf@fifthhorseman.net>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: Re: [oss-security] Travis CI MITM RCE

--=-=-=
Content-Type: text/plain

On Thu 2018-08-30 18:13:34 +0200, zugtprgfwprz@spornkuller.de wrote:
> I agree about the "key ID" part, but not about the "fingerprint" part.
> Pinning a cryptographic hash over a public key isn't a security
> antipattern by any strech of the imagination. Sure, you could argue that
> the SHA-1 used by GPG isn't state-of-the-art anymore, but we're not
> talking about collision attacks, but second preimage attacks. Far worse
> for the attacker.
>
> The way you phrased it, however, all applications of fingerprints/hashes
> would be broken (SSH fingerprints, HPKP, etc.), regardless of the hash
> function they use.

sorry, i think i wasn't clear enough about my complaint.  I'm not
claiming that fingerprints are broken, or that second preimage attacks
against sha-1 are possible today.  I'm saying that they're ill-suited to
many of the specific use cases where they show up.

If all i send you is a fingerprint, you *still* need to get the public
key somewhere.  This is a point of potential failure.

In nearly every case where we're talking about automated signature
checking, the cost of shipping the public key instead of (or in addition
to) the fingerprint is negligible.  and shipping just the fingerprint
introduces robustness and reliability problems for the signature
verification.

This is not to say that these sorts of things shouldn't consider looking
for updates to the keys that they have -- revocation checks, new
subkeys, etc all might be useful in some contexts.  But there's no good
reason to ship a sophisticated, signature-verifying package with just a
fingerprint in it, when you could ship the whole key instead.

so, where are fingerprints useful?  they're useful in *extremely
bandwidth-limited* cases, such as situations dealing with human
attention spans (e.g. fingerprint verification) or technically or
socially constrained channels like twitter, visible e-mail .signatures,
or SMS.  They're also useful internally in programs that deal with many
keys, as concise references to known keys, or placeholders for unknown
keys.

Fingerprints are even arguably too long for most human attention spans,
so we need additional user research to look into better ways to do
verification that involves humans.

     --dkg

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQTTaP514aqS9uSbmdJsHx7ezFD6UwUCW4lkMQAKCRBsHx7ezFD6
Uys+AQDsCUQQT0cbMCEPNQ+1ZX9/x8VrJEvH9PUgMVE24j+RyQD7BtLV94ZDTMcg
kd8dwnWOSf6ot2pe/yb5U1sQY0PA8Aw=
=WLEE
-----END PGP SIGNATURE-----
--=-=-=--
