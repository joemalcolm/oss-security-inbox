X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3528" "Tuesday" "23" "October" "2018" "16:46:41" "+1300" "Philip Withnall" "philip@tecnocode.co.uk" "<1540266401.7250.22.camel@tecnocode.co.uk>" "80" "[oss-security] GLib (2.20.0+): GVariant, GDBus and GMarkup out of bounds reads, DoS and unbounded recursion" nil nil nil "10" "2018102303:46:41" "[oss-security] GLib (2.20.0+): GVariant, GDBus and GMarkup out of bounds reads, DoS and unbounded recursion" (number mark "U       philip@tecno Oct 23   80/3528  " thread-indent "\"[oss-security] GLib (2.20.0+): GVariant, GDBus and GMarkup out of bounds reads, DoS and unbounded recursion\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30660 invoked by uid 550); 23 Oct 2018 10:22:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11405 invoked from network); 23 Oct 2018 03:47:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tecnocode.co.uk;
	 h=message-id:subject:from:reply-to:to:date:content-type
	:mime-version; s=fm3; bh=84jRLF6MJ1Iza9l0m2dVMKuprF4crX2Ys00Mtwc
	kaNM=; b=ANA00Jn4wTx+dpL8DnSF/Ikv1NTy+BSJvE1K9O1bcobo1DyqEANtVyu
	VYEq0/JHMBPnX9FXZL+wBZUxnNWaCPEXVC1X5jzdsGWY0HsDdcVt5NU/myiGC4KK
	kFXM9ILhZp6rs5wYz3N3alE2jkYXeWoPG5AeIQTpgskmTP3rgoKP/U8sTctY1XdI
	uKVKv6uWNM499ymbN3TY2tV4nFg4hQcAsw+MVbwQWoLHVKyI2AQavr4fMWllBhQP
	qW1luMkKGc421+rLoZhtf2M2/Y52gTrTOxa1xgn2Xs6wm2qIV3Y1MGZCTT+WvxWd
	7ErwBDANZsamObt+Cb/EOkCgV+lf6Uw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:message-id
	:mime-version:reply-to:subject:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=84jRLF6MJ1Iza9l0m
	2dVMKuprF4crX2Ys00MtwckaNM=; b=d5RTf96E37/uKXy3FkuXD/Lm7wEFwS14b
	HULaMLIea3FDpxcDjYorq02YAwAGD3vGRuQ2I7Sd36iNQ3HM5B3Lu46I91zFbKW3
	IOIBMZT0s7aCLfQZ1oImn3eZbXOBJlwlrEZPTT9eFoyYUM5crJJ81ebCqBlHs8Z1
	FzYNm1+3RSoW02KLSdEY5coePCulY3rnw3WmYy8THAS4vcfR2HeeJhahcEUOjDo2
	pFXDj7wmhlJrIvgOySHigOr1hGmvFwEii/UTCBl6QhFSlGPPXHzFvPzEyUS+X6HQ
	3Z38zlzPoTCRkNH+5jAudJEvqK5oIaPjiGPYVraYZAGAoOMTIWQ2g==
X-ME-Sender: <xms:rZnOW244OTukxIssIO7mU55osm5ytk3lzSzB4jBbTFNslbgmtzGU1g>
X-ME-Proxy: <xmx:rZnOW4STwXBND0oE8Ma9BYMSZqxvZFrwcoDxs9h062opDVXkDKDryA>
    <xmx:rZnOW-gCzf9zkEiGJGy-KgFm_qCthrrLudBkgLlDtK0gXVtMAW0y7w>
    <xmx:rZnOW0jMZUO9wqB4PI9_Y_hjKPDvAtHYKYA_2qAU-Pu4B5dVz5-OUA>
    <xmx:rZnOW-ZBW0w0mTjUfRhTCQ75dzxEdrXEUw1TThdsE9YKaWdgg_ccqA>
    <xmx:rZnOW1Vyzk8a-lp5XrDD2xH9Iu_IehGAPB3g_4DvzWePxoz4lDKyKg>
    <xmx:rZnOW7uObS-WJjJJjGo9BaOxGkRH2qsYjbGSxZGIx5AhHRlsHflTCA>
Message-ID: <1540266401.7250.22.camel@tecnocode.co.uk>
From: Philip Withnall <philip@tecnocode.co.uk>
To: oss-security@lists.openwall.com
Date: Tue, 23 Oct 2018 16:46:41 +1300
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-/oajDtbbzJW+la8HfG41"
X-Mailer: Evolution 3.26.6 (3.26.6-1.fc27) 
Mime-Version: 1.0
Subject: [oss-security] GLib (2.20.0+): GVariant, GDBus and GMarkup out of bounds reads,
 DoS and unbounded recursion

--=-/oajDtbbzJW+la8HfG41
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

Various fixes to GVariant, GDBus and GMarkup have just been pushed to
GLib, to deal with several problems kindly found in them by the oss-
fuzz project.

The fixes are here, with an explanation of each problem in the commit
messages:

https://gitlab.gnome.org/GNOME/glib/merge_requests/411

We are looking at doing backports to the glib-2-58 and glib-2-56
branches. They will be linked from the above merge request when
available, but will differ due to not being able to introduce new APIs.

We do not plan to make new tarball releases purely to include these
fixes. If you need to package the fixes, please pick them from the
merge request above.

It=E2=80=99s likely that the GVariant and GDBus implementations shipped in =
all
prior versions of GLib are affected. GVariant first shipped in GLib
2.20.0; GDBus in GLib 2.26.0. It=E2=80=99s also likely that the GMarkup code
has always been vulnerable. We have not verified the minimum bound of
the vulnerable versions, though.

In brief, the problems fixed are:
 =E2=80=A2 Arithmetic underflow when calculating GVariant tuple element ends
resulting from missing validation of the offset table. This can result
in an out of bound read. Fixed by adding validation.
 =E2=80=A2 Unbounded call recursion when handling highly recursive GVariant
types. This can result in a call stack overflow. Fixed by limiting
GVariant type recursion with static and dynamic types in untrusted
GVariant instances.
 =E2=80=A2 Infinite loop when getting a child from a serialised variable ar=
ray,
due to missing validation that the child offset does not point into the
offset table itself. Fixed by adding validation.
 =E2=80=A2 Similarly for serialised tuples.
 =E2=80=A2 nul bytes could pass through UTF-8 validation for long GVariant
strings due to a signed/unsigned mismatch. Fix: add a new validation
function which operates on an unsigned string length.
 =E2=80=A2 Critical warning when parsing a D-Bus message with the wrong type
for its signature field in its message header. Fix: validate the type
before unwrapping that field.
 =E2=80=A2 Critical warning when parsing a D-Bus message with a header field
containing a variant with an empty type signature, due to a mismatch
between validation of D-Bus type signatures and validation of GVariant
type strings. Fix: validate that the field is a valid type string too.

Philip=

--=-/oajDtbbzJW+la8HfG41
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE+GmSZq7WqgcC/S8XOOgst84G7YUFAlvOmaIACgkQOOgst84G
7YUn0A/+NphjF2tifVK5e6Si62BugoFDqfEhhtsxnyVngdpBIo7YR7D3YETWGEcN
oHBo1kzOujAB7o57h7sG8TZlpYXpoUTl2r6UY0WLIc3Yq/w37THFBa7+KVBly1R5
Ci1OGKwna7FOUx9U8vXHQRaQw6L5V2PsaBdxELf/gbzr05vNbVkxm4wTlQtjRDUr
gjX98SbqJ9J8TKIu3o+xCPUW7paMPxGCEMUSS/msdfbDyiXaGcaraE/gESlAGBSH
P3xW4e0ilapQy4xPZ9LPid9XGzaNqQ1AfdqtmXZqqGbgWGOCXKSH/Lu8o5Y29hlO
W62hWq7h+e3eOj/PCphu677iIVBjunQatuljiHVsSY0BW/7P3Lvm8eSrK0H65Ksj
ayKFZdvAz6561EMZG2oU2eqc+PtSxLvxYayaDVSaUjZA/rev+IQcwFPGstkCcr8w
fUkuEP+qOgoQbjaU0xO3FwkcLVI96nG7HYdnFnEuPY7l3/p/DZORWtdzF7yZK8nP
HKYzySPkPuH4uDt+oHYqKMspRRMLTRDsTifWdkfRdAsGefwOUXh9ynoZyxIca5JY
dWRXr6yJvNPjwBC+9ZN+vgelQ1ydB81qW283GVtz4Q0zmVycjEQ8CwhQxuWBpYM9
R2iarI9as3byHBgJuB0jrNRD852T5LjZ/LW/g79tj5Kc+4SiQSc=
=EtrS
-----END PGP SIGNATURE-----

--=-/oajDtbbzJW+la8HfG41--

