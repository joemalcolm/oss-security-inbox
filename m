Received: (qmail 9415 invoked by uid 550); 7 May 2024 15:10:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27747 invoked from network); 7 May 2024 14:17:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tecnocode.co.uk;
	 h=cc:content-type:content-type:date:date:from:from:in-reply-to
	:message-id:mime-version:reply-to:reply-to:subject:subject:to
	:to; s=fm1; t=1715091428; x=1715177828; bh=uZ4rzhUR+Ug2V1GDqPRyz
	xvGOSytB8fTxGmy8VIiJjA=; b=iwHvYYhfAkaescsThiWe6jJ07BQHhxuvTfu/a
	WlaKYN3TgjA1GzdoY9+I6SVO6pHqNlXacxODQHhLxJUjy2H2scbvtGtNegexxe0O
	msqI7Rg1rKGUen2dyvwmLuMtkMlVU8F47Q7XH9RuoC1OM7EhV+LOGQ0sOqeKGU6c
	4QtPuQvKDe7n5dMJ0ryCrIG1+FfJwku4Jioe8sCFqAcEqv4xEpx8shOrmGiNJrTn
	Kn9ZiVVOyjAvzpu3rdHG1S+f/p5G8PecOKoA9PcmIledk300eO5Qn0TU7nVXX9lB
	7en3I3BGEVkKOI0ULlobf45LHfbCkrwwhdb+SiYv603QQdHdQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:message-id
	:mime-version:reply-to:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
	1715091428; x=1715177828; bh=uZ4rzhUR+Ug2V1GDqPRyzxvGOSytB8fTxGm
	y8VIiJjA=; b=EOTdLfbpeAEKL0RylHLbVrH/eOAqt1QTz6R7nW1QiCul5ANuvZQ
	dJIJd2BcwxbZpeBOmaaH3RidWpNwXtCuo5Dd2faMe8+2i+a4Vez/LO3JM9h0AV3U
	p4mqpZe62K1hedZEKl93iZ4/Ai1BZTzjTcj2d+TaUNJk1obVJWMIvKDdXy6ZBeVr
	VLMG6F7DOifm98oDC32ONQN/vdiD+Ev05At9wXnevtZWXhW2V2YBbMaSwBwVphqm
	UoMK7/gCn3z04P4hMZ9ejgBo0YQLEakfwcg+iKFTxLqr+lhHJT4shEZ0d1gGhrhs
	DKhZRm6miDD69u4ugWwO59wd6lY3l8AVquQ==
X-ME-Sender: <xms:4zc6ZohYPoYH-0XEVJbYe95iUU4-VqnPn5VDlZ12iRuHYgE26DmJ_w>
    <xme:4zc6ZhD-awEf23tkPeibn_R52yNH5U7jAfrgB4doyCWi312xqD5AdlYBjiJQe2CLg
    AyugvkNzF-Q0PCEaA>
X-ME-Received: <xmr:4zc6ZgHlXa9-WxUHtMKAdVldw4bQSbEtXCQQ5mCwasRV_OC3y3_eA_5gBr8phwo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvddvkedgjedvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefkuffhrhfvffgtfgggsehgtderre
    dtreejnecuhfhrohhmpefrhhhilhhiphcuhghithhhnhgrlhhluceophhhihhlihhpseht
    vggtnhhotghouggvrdgtohdruhhkqeenucggtffrrghtthgvrhhnpeehtdehiedthfefve
    eiffeuvdejtdfgheefgeeijedvgeehvddvieejhfetheelffenucffohhmrghinhepghhn
    ohhmvgdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpehphhhilhhiphesthgvtghnohgtohguvgdrtghordhukh
X-ME-Proxy: <xmx:5Dc6ZpTTiEYddC4yijc1sSUgGBU8c7nyFDQQPaTQW9KB9f2RNaTWnA>
    <xmx:5Dc6ZlzSDJcFi0t-8m69nbzy7rRXCfPCaUE_VCvzPf5DHw29XeU06g>
    <xmx:5Dc6Zn7VKgtavJFHl4QzdsAcztXKc5D0opE3xByMlSh4xss5qP6cZw>
    <xmx:5Dc6Ziys0cP0fhKtoamr_nytVoXDlK8rCd3ssL00VoutfVtFw5pCVg>
    <xmx:5Dc6Zmo9x66yIwcb2hoA9Fndrr5ciXPO_TulfPue7BzSFvfcrLUAC_8d>
Feedback-ID: i683145e5:Fastmail
Message-ID: <218de88c60d76aafebed0f50fa7d695132025836.camel@tecnocode.co.uk>
From: Philip Withnall <philip@tecnocode.co.uk>
To: oss-security@lists.openwall.com
Date: Tue, 07 May 2024 15:16:56 +0100
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-fPkkjTcm2uYI67WtZRRE"
User-Agent: Evolution 3.50.4 (3.50.4-1.fc39) 
MIME-Version: 1.0
Subject: [oss-security] GLib (2.26.0+): GDBus signal subscriptions for well-known names are
 vulnerable to unicast spoofing

--=-fPkkjTcm2uYI67WtZRRE
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

A series of related security fixes for how signal subscriptions are
handled in GDBus have just landed in GLib. They have been assigned CVE-
2024-34397:

 *=C2=A0https://gitlab.gnome.org/GNOME/glib/-/merge_requests/4038 (changes
on main)
 *=C2=A0https://gitlab.gnome.org/GNOME/glib/-/merge_requests/4039 (trivial
backport to glib-2-80)
 *=C2=A0https://gitlab.gnome.org/GNOME/glib/-/merge_requests/4040 (non-
trivial backport to glib-2-78)

There is a related fix in gnome-shell which distributions should
cherry-pick at the same time, to avoid a regression in screen recording
support in gnome-shell 3.38 and newer:

 *=C2=A0https://gitlab.gnome.org/GNOME/gnome-shell/-/merge_requests/3303
(changes on main)
 * Backports to older versions of gnome-shell are not available yet

When a GDBus-based client subscribes to signals from a trusted system
service such as NetworkManager or logind on a shared computer, other
users of the same computer can send spoofed D-Bus signals that the
GDBus-based client will wrongly interpret as having been sent by the
trusted system service. This could lead to the GDBus-based client
behaving incorrectly, with an application-dependent impact.
Distributors are advised to cherry-pick these changes into their GLib
packages ASAP.

This issue has likely existed since GDBus was first introduced in GLib
2.26, although this lower bound has not been verified. The issue has
been verified to exist in at least GLib 2.66, 2.74, 2.78 (<2.78.5) and
2.80 (<2.80.1).

Per GLib=E2=80=99s support policy, the fixes have not been backported to gl=
ib-
2-76 or earlier.

Philip

--=-fPkkjTcm2uYI67WtZRRE
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEKgytxEoDTEz3qX0k3N9YhbHz7XMFAmY6N9gACgkQ3N9YhbHz
7XMF9hAAhyAMutZyauexqZc1Xl1EznSflIeFfHxnvCml24gOmhllhTRQ61j1RWSx
tlzgM8F33hoSmW2s9ajKcvVmcmPI4X8OrfqpoeAvl+k4XAxW0Ew1XUlYkByRTCbS
2qKeSPSMSHFvamUNHCRr5rjMETVrCtA7MC0INITWXbGP6Rxyb4lU2/mTrpP9N4oe
j8Jayp8lYOtHlzoq4G2idAfPqpMcFBWL6HxRBj1CCqkO1y0asFYA1ENSRUMrGoFq
nr/aUY7CZhzgPBn6k8IuHnStij+i9DDweS9ye/g75eK6ovebKOdn5P3dTXEYkYqy
K752xAqnaxHvYLUA5Wgnhkmt3gyUyAdJk6j3prJ657buqthJ6AqdUWIj+pHXJP7l
2A90Sga7bcMfCD8w5EKVWlDujX0WpqtqCKC0ota7ddj24zNS5Nln2ly/24LRoPg4
fOL/84V8yPJib9+EAUeJfbdWHXqYjqfTs9bcfz5YlMzqBukXJI+tGDPxgO4ONaG6
GqAuPyyoa+hqFgIEVEIQzq1TkXkIEKrGdmfD4si7CHFOezU5ovHs+cLspHOQKyjB
vBaRZQqFy5Z2FLS9rv2JFA/MMGPVoy2oVTFLagyQdvwORWK83i2vOZHsVRRkKqba
GUszFjmLuM48iD2Y6j5BuoZSGzaA3e4J+RFgG6U0QvvvNWyj6mo=
=2fqa
-----END PGP SIGNATURE-----

--=-fPkkjTcm2uYI67WtZRRE--
