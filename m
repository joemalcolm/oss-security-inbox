X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1575" "Wednesday" "22" "April" "2015" "12:49:27" "+0200" "Pablo Neira Ayuso" "pablo@netfilter.org" "<20150422104927.GA3547@salvia>" "43" "[oss-security] Re: use-after-free in src/libnetfilter_cthelper.c" nil nil nil "4" "2015042210:49:27" "[oss-security] Re: use-after-free in src/libnetfilter_cthelper.c" (number mark "        pablo@netfil Apr 22   43/1575  " thread-indent "\"[oss-security] Re: use-after-free in src/libnetfilter_cthelper.c\"\n") "<20150421025710.GA24209@hunt>" ("<20150421025710.GA24209@hunt>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17786 invoked by uid 550); 22 Apr 2015 11:00:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 8010 invoked from network); 22 Apr 2015 10:45:14 -0000
X-Qmail-Scanner-Diagnostics: from 127.0.0.1 by antivirus6 (envelope-from <pneira@us.es>, uid 501) with qmail-scanner-2.10 
 (clamdscan: 0.98.6/20359. spamassassin: 3.4.0.  
 Clear:RC:1(127.0.0.1):SA:0(-103.2/7.5):. 
 Processed in 2.102208 secs); 22 Apr 2015 10:45:00 -0000
X-Spam-ASN: AS12715 87.216.0.0/16
X-Envelope-From: pneira@us.es
X-Virus-Status: clean(F-Secure/fsigk_smtp/412/antivirus6)
Message-ID: <20150422104927.GA3547@salvia>
References: <20150421025710.GA24209@hunt>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="cNdxnHkX5QqsyA0e"
Content-Disposition: inline
In-Reply-To: <20150421025710.GA24209@hunt>
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Wed, 22 Apr 2015 12:49:27 +0200
From: Pablo Neira Ayuso <pablo@netfilter.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: use-after-free in src/libnetfilter_cthelper.c
To: oss-security@lists.openwall.com, security@ubuntu.com

--cNdxnHkX5QqsyA0e
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 20, 2015 at 07:57:10PM -0700, Seth Arnold wrote:
> Hello Pablo, all,
>=20
> I noticed a use-after-free in src/libnetfilter_cthelper.c:

Someone else noticed already and this is already fixed in master:

commit d48012fa7718195e3f897b01a36e4ba249aa6dfc
Author: Christopher Horler <cshorler@googlemail.com>
Date:   Mon Dec 8 20:04:31 2014 +0000

    src: fix use after free
=20=20=20=20
    Fixes: https://bugzilla.netfilter.org/show_bug.cgi?id=3D990

--cNdxnHkX5QqsyA0e
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQIcBAEBAgAGBQJVN3y3AAoJENRkgb0u2ZAZvoAQAK/K4N0wyfKuVkDkMoqiE8qM
/7Gc2orOpLAR+guOxPqoBLJ/P62K0ksAVCXzkGpx32ctey01YBQvl3xOo8nmrbka
p0Aem/uvbqzzjQinA/t4X7ZOUNeRY5VvyTDJAwYHstVdmnhK7ML6hVk8o8d8Ain/
9o0HIERAvzmTL3HPvFX8m6lUINIvqbNZNz5EjvS6943zQNmxgttPd/JqNOFFWv6s
azAAN11Ja7uRPCKdch1pabgsv6U7HBjlO8mO5HYF9t4EYZk9IvwZR5u4dovcer0R
bQ2AFMLoP5wE3PerAM6/0FPUYTuQu5L9kmDKu2MyVFzBsGGX913GplV6T4FjmAZ6
QXkOowwL5r7IBDF8M7Mh4iWvOVRCoisYtnHF3hMgAXflmlLEC9vaf3RRs4P8vjoT
UC9G093eva3uII1z6JHXgwGPqOqh/o8bkNh1yviRRmou8u+aabEFlOGI9bhfRd6P
xuG42bO6qKYMdBbGnF0UOrQuJv5Djs8DnfWe9MPjH0euvhjrA09o5OwH10CzStqn
o+e6Kk70S7n0NMlTPvV6CybZWMeGQCzXzp8xN9MXD6IBeD4IXFedtTHB6yqFVkrw
XVysInswi0b6SyFJoj+F+aZpQcn2zUqWgd4OA6z7SfNuLUXQL7NKUUFlPKO1eJv8
CVvOAPw3HjTXFRKn8Kzd
=QoqQ
-----END PGP SIGNATURE-----

--cNdxnHkX5QqsyA0e--
