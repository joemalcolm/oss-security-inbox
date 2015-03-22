X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2261" "Sunday" "22" "March" "2015" "20:23:32" "+0100" "Stephen Kitt" "steve@sk2.org" "<20150322202332.5bfd0e4a@heffalump.sk2.org>" "56" "Re: [oss-security] CVE for Kali Linux" nil nil nil "3" "2015032219:23:32" "[oss-security] CVE for Kali Linux" (number mark "        steve@sk2.or Mar 22   56/2261  " thread-indent "\"Re: [oss-security] CVE for Kali Linux\"\n") "<550F0ADD.5020800@gmail.com>" ("<550EE478.70005@redhat.com>" "<E1YZj9N-0003Th-Gn@rmm6prod02.runbox.com>" "<20150322172300.GA21110@openwall.com>" "<550F0ADD.5020800@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25875 invoked by uid 550); 22 Mar 2015 19:26:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23944 invoked from network); 22 Mar 2015 19:23:51 -0000
Message-ID: <20150322202332.5bfd0e4a@heffalump.sk2.org>
In-Reply-To: <550F0ADD.5020800@gmail.com>
References: <550EE478.70005@redhat.com>
	<E1YZj9N-0003Th-Gn@rmm6prod02.runbox.com>
	<20150322172300.GA21110@openwall.com>
	<550F0ADD.5020800@gmail.com>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.25; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 boundary="Sig_/LCZDI53/9Z6Ae9EAvA=plzw"; protocol="application/pgp-signature"
X-Ovh-Tracer-Id: 1637621414552620455
X-Ovh-Remote: 88.186.243.14 (gw.sk2.org)
X-Ovh-Local: 213.186.33.20 (ns0.ovh.net)
X-OVH-SPAMSTATE: OK
X-OVH-SPAMSCORE: 0
X-OVH-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeejledrkeekucetufdoteggodetrfcurfhrohhfihhlvgemucfqggfjnecuuegrihhlohhuthemuceftddtnecu
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeejledrkeekucetufdoteggodetrfcurfhrohhfihhlvgemucfqggfjnecuuegrihhlohhuthemuceftddtnecu
Date: Sun, 22 Mar 2015 20:23:32 +0100
From: Stephen Kitt <steve@sk2.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE for Kali Linux
To: oss-security@lists.openwall.com

--Sig_/LCZDI53/9Z6Ae9EAvA=plzw
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Sun, 22 Mar 2015 14:33:01 -0400, Daniel Micay <danielmicay@gmail.com>
wrote:
[...]
> At best, GPG offered *zero value* compared to checking a hash provided
> via HTTPS, grabbing a torrent file via HTTPS or downloading directly via
> HTTPS. However, I think it's pretty clear that few users would have gone
> through with this and all it did was maintain the same security offered
> by the HTTPS PKI.
[...]

I don't have any objection to the rest of your argumentation, which seems
sensible to me; at the very least it's clear that all this needs to be made
much easier, and (proper) HTTPS use should be encouraged.

But I do believe that *at best*, GPG offers something that HTTPS doesn't:
signature validation with peer-to-peer trust via the web of trust. This is
"at best" because most users don't have a key in the strong set; but at lea=
st
for Debian, the archive keys are in the strong set, so any one else with a
key in the strong set has at least one trust path to the archive key.

Of course that doesn't really help with the MITM scenario, since end users
would need to know that the archive key is supposed to be signed, and by
whom...

Regards,

Stephen

--Sig_/LCZDI53/9Z6Ae9EAvA=plzw
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJVDxa5AAoJEIDTAvWIbYOcSjwP/2Bn3J4/PjIALdWj25gzsQ5+
+BerOS7AKdJQs2A+vhrdvyFOqyEBgHGoovo3WZott4GUEmUvQov81abawfJBXATt
Scyd9sEw0m/JItMDXQsfrK38Bukjsu/V26bEXzhAz2uspiW3enurHvxZ1RfFHO7g
my9ODzJMMBxV7WpSwMOi7PhskZXw7iV4jb5rixpAoEYlFk57MMT12xBC9vDi4npG
JSIKEI4CKxPL0Q+cPVCKJbRB6jUnd4BHU1u+u0w9fnLnU97f/YPHB0J0TRvAU+eW
qvrpeAM/U6AthVxqfGf/Q/2cpQ5SkV4/cATR8MLMSJkK7NRy/LVUcXoalc5OCLdp
DGXHA/ecteRcyLOJM+9p4BIrVK+80CH4n6YqERHDGfZcVWpzGduSdg8/tnVZQJT1
iZ+yxHV8BVSgeeC/eq1d/6bSx87oe4vcPEafC95eaWK7Q8PREjSR2s/b6KZ/bQPM
S0rfXJyDlVU55pRFcqG2KC0fs7WUXYCSbMDsWLgaxNkSRQ+70lZ37x07DgdN39LN
INSze5JnfbiVvyzcCt9QeydUVggJ7krHa45iRKO+az64vn38cARpOgRzzNRjf0zd
iK9EFFZtYxqCbqdC/XLVVVTIX4KEUz6La8FiA0S2KIcC2qf4J+aTW2da3gCXKsE5
ZymylGreV4qx3Tl2b9gY
=Slz/
-----END PGP SIGNATURE-----

--Sig_/LCZDI53/9Z6Ae9EAvA=plzw--
