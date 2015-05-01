X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3274" "Friday" "1" "May" "2015" "14:10:29" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<5543DDB5.7030900@redhat.com>" "80" "Re: [oss-security] On sanctioned MITMs" nil nil nil "5" "2015050120:10:29" "[oss-security] On sanctioned MITMs" (number mark "        kseifried@re May  1   80/3274  " thread-indent "\"Re: [oss-security] On sanctioned MITMs\"\n") "<20150501191522.GA18039@zoho.com>" ("<20150501191522.GA18039@zoho.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18204 invoked by uid 550); 1 May 2015 20:10:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18186 invoked from network); 1 May 2015 20:10:45 -0000
Message-ID: <5543DDB5.7030900@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
References: <20150501191522.GA18039@zoho.com>
In-Reply-To: <20150501191522.GA18039@zoho.com>
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="uuteJ3dJXI3CFCMKgSeOpCeRCfOs8EWEp"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Date: Fri, 01 May 2015 14:10:29 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] On sanctioned MITMs
To: oss-security@lists.openwall.com

--uuteJ3dJXI3CFCMKgSeOpCeRCfOs8EWEp
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On 05/01/2015 01:15 PM, mancha wrote:
> Though Hushmail email credentials, for example, can't be sniffed in the
> segment connecting the client to CloudFlare, they are available to
> CloudFlare's infrastucture. Moreoever, there is no way for the client to
> verify that the segment connecting CloudFlare to the destination server
> is similarly encrypted (i.e. it might be in the clear as would be the
> case when using CloudFlare's "Flexible SSL" product).=20=20
>=20
> Hushmail's CloudFlare usage serves as an example that brings me to my
> general point.
>=20
> How should the security community view this growing use of sanctioned
> MITM in light of the ever-increasing amount of sensitive content sent
> over SSL/TLS encrypted channels (e.g. email, electronic banking, medical
> records, etc.)?

This is me speaking personally:

This is nothing new. Front end load balancers that handle SSL/TLS and
then do HTTP on the backend have been around for decades. This is simply
outsourcing it to a trusted (hopefully, because I use them!) party
rather than doing it in house.

We have had outsourcing of far more sensitive things for literally
centuries, e.g. legal and accounting firms, my lawyer and accountant
both have literally all my personal info and could easily destroy me
financially if they wanted to. But they don't because we have contracts,
and more importantly contract enforcement in the form of a civil legal
system (as does most of the world). The same applies for CloudFlare,
Google (my email), and so on.

So in my opinion this is really nothing new, like any outsourced
activity pick your partners carefully.

This is me speaking on behalf of the Cloud Security Alliance:

Make your partners/vendors/etc. fill out at least the self attestation
level of STARS, which is free:

https://cloudsecurityalliance.org/star/self-assessment/

If they refuse to do so that might be a good hint as to how secure they
really are.

> --mancha


--=20
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993


--uuteJ3dJXI3CFCMKgSeOpCeRCfOs8EWEp
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJVQ923AAoJEBYNRVNeJnmT+2QP/3yg00Xuo9jquPAWlUKH1yD0
OjTM8VNNxY578i7Z0kv6+I8WxiRXIkvkoZt/xMQ3g2ijbYqIfJZLecUaXE6tz5ql
rVTZjpLhBDXvZCc3TXPFQXa2jlX+WFSxMLPbR2U+VJx3UOJkCHS8q8bqhzNI8H4e
rG+4hpX/jkJ/PJ1kaKMCegIXhFI8tjrgFpN+YI7c5QBo8fL0coTNJXGbSLDQhzWo
YwFEs+0h7qPZY/c6VHpqgtBdBAm2FjBQjbJCUD/SQl83loEeAWYGtI7Z7icjW3GG
qGTlyVt/vAqWee9PHWlOYwhDpyKCP+KxAji0KzlcF+U5WOND97p6hfs5Jzo0rKZ0
rWWxezrHRSfcLO6yXGppNu7Q/x1Bk97cmPps/Swvagal1eh8NaMnVMqDgFZcMSHr
l27Sa3gK6iE3h8mUzDtZdtqXJ+W+DFRE4ZsJHIGAtiSUKHUfaFzyR1lFcW/o2EZm
Es8wCBArZm9Hb+AE4QLyie0mkbTlVmOZqUnWf0ioTCwNwATFyPq8vRCLLEjwtY6f
v7Eeq89fx77eV3Qb7p+G39h8o5RHXiUBzw9RXMM98xqve4N4MKxF1oUYZpH1nmhC
JVlqaa8HkBEnNDU/73jMhGmEP8XeN3tgucwUuKvgs+mVztzguy4+Q+J4/fC6j8ic
f5O7cEc/zeH7JItSiqPn
=I6z5
-----END PGP SIGNATURE-----

--uuteJ3dJXI3CFCMKgSeOpCeRCfOs8EWEp--
