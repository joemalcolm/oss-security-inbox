X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2761" "Tuesday" "28" "April" "2015" "23:32:55" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<55406D07.4080607@redhat.com>" "73" "[oss-security] Re: Limited DoS in mailman (requires non standard config)" nil nil nil "4" "2015042905:32:55" "[oss-security] Re: Limited DoS in mailman (requires non standard config)" (number mark "        kseifried@re Apr 28   73/2761  " thread-indent "\"[oss-security] Re: Limited DoS in mailman (requires non standard config)\"\n") "<553FC853.3080009@msapiro.net>" ("<553FBD80.4000809@redhat.com>" "<553FC853.3080009@msapiro.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9679 invoked by uid 550); 29 Apr 2015 05:33:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9657 invoked from network); 29 Apr 2015 05:33:10 -0000
Message-ID: <55406D07.4080607@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
References: <553FBD80.4000809@redhat.com> <553FC853.3080009@msapiro.net>
In-Reply-To: <553FC853.3080009@msapiro.net>
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="RdqpbN2OV7uIWqTcOWGKkhMXOiNEtKPLw"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
Date: Tue, 28 Apr 2015 23:32:55 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Limited DoS in mailman (requires non standard config)
To: Mark Sapiro <mark@msapiro.net>, mailman-security@python.org,
        "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

--RdqpbN2OV7uIWqTcOWGKkhMXOiNEtKPLw
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

CentOS 6.6 with mailman-2.1.12-18.el6.x86_64

Which is.. ergh. I did not realize how old this is.

On 04/28/2015 11:50 AM, Mark Sapiro wrote:
> On 04/28/2015 10:04 AM, Kurt Seifried wrote:
>> So I recently ran into a flaw in mailman where I had imported a text
>> list of email addresses of people that wanted to sign up. It turns out
>> one of the addresses was in the form "user@domain.tld/random", not sure
>> how that snuck in but anyways. When sending email to this list it fails
>> due to that address being present:
>=20
>=20
> What Mailman version is this?
>=20
> I don't think any recent version would add that address to a list
> regardless of how it was attempted to be added.
>=20
>=20
>> from mailman posts log:
>>
>> Apr 28 16:46:23 2015 (29704) post to testing from testing-request@XXX,
>> size=3D1786, message-id=3D<mailman.0.1430239582.16535.testing@XXX>, 1 fa=
ilures
>>
>> from smtp-failure log:
>>
>> smtp-failure:Apr 28 16:46:44 2015 (29704) All recipients refused:
>> {'kurt@seifried.org/foo': (501, '5.1.3 Bad recipient address syntax')},
>> msgid: <CAEo5KB7F3LNCv7Q09ppqBRgUZTaGizyRHx1WS81w8K7S8Yhk7A@YYY>
>=20
>=20
> And I think the only address refused was the one kurt@seifried.org/foo
> address. The 'All recipients refused:' refers to all recipients in that
> SMTP transaction, not necessarily every list member.
>=20
> What does your MTA log say about this delivery? And what does Mailman's
> 'smtp' log say?
>=20

--=20
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993


--RdqpbN2OV7uIWqTcOWGKkhMXOiNEtKPLw
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJVQG0HAAoJEBYNRVNeJnmTZZQP/A71dqI/LYnXdfud3NM0OQww
5SqnxuLb9YqClKUwAp5Itc+H6mtpC8ebz8gHI7SCNtiGqcGzEMnhQpsEVlDQUGkb
FvCZl+MWl4piq001oCcxoeieHjas42kqgUpMN8K1wO9Qs+EGk/mBbQTrNgEOnXJ0
JP9v1MEV3jEDyKf028V34o2ufUFjK2IwYLOD/hgovhaZfwj6o5vNNpLh5zBJI9fG
nee2pcMjynEb+ccIHp5sC+sevPu15sJsXWu1lFR5PhYp0z+bnSCp9Phw1ZOaiTu/
YSlFXUraVQGXiAO3aGJhbWMdvZsrMkxERHBcnHO/7ucJOKQmuZTxO8Nc0CDJChN7
9lEax7hjmPpEHJGfA+Xcu00h/OL8aiRWi0FbC6jqMWS2ogRETGl8HDlEMwNqRyJh
1UuysRmJ7K1VowNwb23ohcqFWyJz4O9KIxHren188vQ26XH5Mx037LKuTv8ltxoc
X/2fjkTRJa3W5jiwJhbS7I1paLP9ATB8ZMKqWjxva4tBqqgKJydh42AOvVJht+kT
d5VCgkLLiXpN1OiLJpiBQpkUwf6ZMsI1JyeNDcJIIM+hZnydHb9T5hLNp6B61K5x
N5a5jLAwoLC36nFy+sFYmtKC4t2HsMElfpQkCZhk7so4sfR0hJoj8pwSte8BxO3n
8pA/ldM6aeXJ+0wNU9E8
=9w8L
-----END PGP SIGNATURE-----

--RdqpbN2OV7uIWqTcOWGKkhMXOiNEtKPLw--
