X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2465" "Sunday" "22" "March" "2015" "15:05:18" "-0400" "Daniel Micay" "danielmicay@gmail.com" "<550F126E.3040300@gmail.com>" "55" "Re: [oss-security] CVE for Kali Linux" nil nil nil "3" "2015032219:05:18" "[oss-security] CVE for Kali Linux" (number mark "        danielmicay@ Mar 22   55/2465  " thread-indent "\"Re: [oss-security] CVE for Kali Linux\"\n") "<550F01FF.1010208@redhat.com>" ("<550EE478.70005@redhat.com>" "<E1YZj9N-0003Th-Gn@rmm6prod02.runbox.com>" "<20150322172300.GA21110@openwall.com>" "<550F01FF.1010208@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22228 invoked by uid 550); 22 Mar 2015 19:05:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22208 invoked from network); 22 Mar 2015 19:05:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type;
        bh=sP9axVeSwqsHRfh1ZcJAFkmq8qANNrGMfegJO90SzRk=;
        b=CEM+N2MnST8+0SWcwPNtef0nlEPk23z14eT3Ds2WuZgNHkiJOnehhRB85TTAhR+5mF
         dxBrO4UV2YW4EbRatRBYkWJBJCm17+WkbUkS9OdyXKAIa7haoyctGUK/rdsxvapvroCO
         i64ixbi4vpYfMQfD9m1FHqS+I1w47oYeN3hP16rx+UNqAFyZHue2RQAE5vwDGYBNNQxK
         9t+W4lK2w7Vq88SrHOZWASl81QhAGwfqC7axURQddLWpNWbAHEL78mjcbBTecPOJFFQc
         Gb4OTM8teiB0/bT+5hcnJeUNzu7g48QGW641bRDxJVQszVXa6BRUwYo/aoDmjDFlZR9w
         uTQA==
X-Received: by 10.107.165.68 with SMTP id o65mr143203567ioe.56.1427051135200;
        Sun, 22 Mar 2015 12:05:35 -0700 (PDT)
Message-ID: <550F126E.3040300@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
References: <550EE478.70005@redhat.com> <E1YZj9N-0003Th-Gn@rmm6prod02.runbox.com> <20150322172300.GA21110@openwall.com> <550F01FF.1010208@redhat.com>
In-Reply-To: <550F01FF.1010208@redhat.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="RvvShNm0GkpsGmTMflU5hnRU92cHMOsD0"
Date: Sun, 22 Mar 2015 15:05:18 -0400
From: Daniel Micay <danielmicay@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE for Kali Linux
To: oss-security@lists.openwall.com

--RvvShNm0GkpsGmTMflU5hnRU92cHMOsD0
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On 22/03/15 01:55 PM, Kurt Seifried wrote:
>=20
> So in the case of an ISO download that is GPG signed how do I verify the
> key is correct? If this is all done over HTTP it is pretty trivial for
> an attacker to run a Man in the Middle proxy that string replaces they
> key/signature as needed. HTTPS significantly raises this bar, it goes
> from "run off the shelf Squid/etc" to "convince a CA to give you a wonky
> certificate".

It's not this bad for a notable FOSS project if they're willing to put
in some work. CryptoCat and the Tor project have their keys pinned here
and they're probably in Firefox too (don't feel like checking):

https://code.google.com/p/chromium/codesearch#chromium/src/net/http/transpo=
rt_security_state_static.json

If major Linux distributions wanted to put in this effort, they'd have
it too. It does mean staying on top of managing certificates, as the pin
needs to be dealt with a few months in advance of switching.

This can't scale which is the main problem with it, but I doubt that
Google or Mozilla would turn away a Linux distribution with a
significant userspace if they wanted to do this. There's little doubt
that they'd pin a key for Debian or Fedora... and it would allow a sane
bootstrap for the distributions GPG keyring.


--RvvShNm0GkpsGmTMflU5hnRU92cHMOsD0
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJVDxJuAAoJEPnnEuWa9fIq0zMP/0w9K/Z/Wb4g6dQvHNvsR+PO
OWAItYLQNXQYkEJDgYe6MoDcrA24Z8lZXYdyprCMr5ectrCA4uThHiQ98VtjNKmi
mLKK0MvUTbdMGVQANLPNj/dcfYU2liSphJeUsnNKprMQLzdNYNqEAjFTL34m+hq9
UCTVfMQis6i7SEh+lIQgrB1tbwIPxvAY/XhHVgfKR3JyAWdSZJcRwmiRWeXCnP1R
J+xtDUid7kvgKYK+/qju/urRqOYBko7vbGFkEsDWTtpNIk/+Rs8mtcpuWXGqAZkY
lqwOh20vaEp7PnuuuToCOxMa4PSKNQQmpzX/WwuZJ1wEcIlJLw2kEd6Ti2xyqpOY
l7dzz1w8KUMGcGoGk1O0et8NFHoyne1co3NPq232HvK6tzx08lqHZJv7fynIwp21
3+5kqU5uIuk2pzP9zZUtHKwO+rWCG944Wb2VKTu8tXcjd2XLiPU8r7eYKfNwpi++
8mP/YdGk49FM30o5oNCO0GQwWb5oEbxbVe/q0uHAuRd8LCG90tn7Ll6R8Nw2umY3
sC3Gd+eLr7VU2VJE27ElOTHbfpyb5fTjNEcrJzaWUIsYzJhpP+vonl7kHqNttIWx
OdmwiZsTWajZJ/9NIWXruttX5WdiukGeo2a8IXJuJao6YfTD6yNrdiFt+A1GmV1X
vaVchpGqWMo4BWgjjS/x
=ebFA
-----END PGP SIGNATURE-----

--RvvShNm0GkpsGmTMflU5hnRU92cHMOsD0--
