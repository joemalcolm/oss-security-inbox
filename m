X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1933" "Tuesday" "28" "April" "2015" "10:50:11" "-0700" "Mark Sapiro" "mark@msapiro.net" "<553FC853.3080009@msapiro.net>" "57" "[oss-security] Re: Limited DoS in mailman (requires non standard config)" nil nil nil "4" "2015042817:50:11" "[oss-security] Re: Limited DoS in mailman (requires non standard config)" (number mark "        mark@msapiro Apr 28   57/1933  " thread-indent "\"[oss-security] Re: Limited DoS in mailman (requires non standard config)\"\n") "<553FBD80.4000809@redhat.com>" ("<553FBD80.4000809@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3759 invoked by uid 550); 28 Apr 2015 18:52:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13764 invoked from network); 28 Apr 2015 17:50:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=msapiro.net;
	s=default; t=1430243411;
	bh=c3YoFo+eVQrCV04KuZ3WD/Pk+/shFzHj305Epu061Oo=;
	h=Date:From:To:Subject:References:In-Reply-To;
	b=KVkUf9lU6HtCKUXWuEE7IxEslhqQz+NmP34nevM9/Es7nbz6lRKVk8gXE7+xt/Uwp
	 ezXHqcQG30pQslGwAXJhbDDqmSovVw9Y4SqP7jsAb+scY8ubqxpCaNZCc6xLZRcQ8V
	 khPV1s/aE6Z54JhJQhRFlUu+O0MhJE41p4abj5vk=
Message-ID: <553FC853.3080009@msapiro.net>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
References: <553FBD80.4000809@redhat.com>
In-Reply-To: <553FBD80.4000809@redhat.com>
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="RdhQXExsh5LJqR32efvK3GIfMC42hKcKu"
X-GPC-MailScanner-ID: 622696900B9.A3780
X-GPC-MailScanner: Found to be clean
X-GPC-MailScanner-SpamCheck: not spam, SpamAssassin (not cached, score=-1.87,
	required 5, autolearn=not spam, ALL_TRUSTED -1.00, BAYES_00 -0.75,
	DKIM_SIGNED 0.10, DKIM_VALID -0.10, DKIM_VALID_AU -0.10,
	T_RP_MATCHES_RCVD -0.01, X_GPC_SASL -0.01)
X-GPC-MailScanner-From: mark@msapiro.net
Date: Tue, 28 Apr 2015 10:50:11 -0700
From: Mark Sapiro <mark@msapiro.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Limited DoS in mailman (requires non standard config)
To: Kurt Seifried <kseifried@redhat.com>, mailman-security@python.org, 
 "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

--RdhQXExsh5LJqR32efvK3GIfMC42hKcKu
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 04/28/2015 10:04 AM, Kurt Seifried wrote:
> So I recently ran into a flaw in mailman where I had imported a text
> list of email addresses of people that wanted to sign up. It turns out
> one of the addresses was in the form "user@domain.tld/random", not sure
> how that snuck in but anyways. When sending email to this list it fails
> due to that address being present:


What Mailman version is this?

I don't think any recent version would add that address to a list
regardless of how it was attempted to be added.


> from mailman posts log:
>=20
> Apr 28 16:46:23 2015 (29704) post to testing from testing-request@XXX,
> size=3D1786, message-id=3D<mailman.0.1430239582.16535.testing@XXX>, 1 fai=
lures
>=20
> from smtp-failure log:
>=20
> smtp-failure:Apr 28 16:46:44 2015 (29704) All recipients refused:
> {'kurt@seifried.org/foo': (501, '5.1.3 Bad recipient address syntax')},
> msgid: <CAEo5KB7F3LNCv7Q09ppqBRgUZTaGizyRHx1WS81w8K7S8Yhk7A@YYY>


And I think the only address refused was the one kurt@seifried.org/foo
address. The 'All recipients refused:' refers to all recipients in that
SMTP transaction, not necessarily every list member.

What does your MTA log say about this delivery? And what does Mailman's
'smtp' log say?

--=20
Mark Sapiro <mark@msapiro.net>        The highway is for gamblers,
San Francisco Bay Area, California    better use your sense - B. Dylan


--RdhQXExsh5LJqR32efvK3GIfMC42hKcKu
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlU/yFMACgkQVVuXXpU7hpPUqACg0JQ4syRpIQ84zDBslYNlTraY
IvcAnA2X/paUQfCjbDknZleKZBCVI8Ts
=GQ6S
-----END PGP SIGNATURE-----

--RdhQXExsh5LJqR32efvK3GIfMC42hKcKu--
