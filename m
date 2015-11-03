X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1693" "Tuesday" "3" "November" "2015" "13:47:36" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20151103134736.49e4edcb@pc1>" "47" "Re: [oss-security] CVE request: libsndfile 1.0.25 heap overflow" nil nil nil "11" "2015110312:47:36" "[oss-security] CVE request: libsndfile 1.0.25 heap overflow" (number mark "        hanno@hboeck Nov  3   47/1693  " thread-indent "\"Re: [oss-security] CVE request: libsndfile 1.0.25 heap overflow\"\n") "<87y4ef9s4i.fsf@redhat.com>" ("<87y4ef9s4i.fsf@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3706 invoked by uid 550); 3 Nov 2015 12:46:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3684 invoked from network); 3 Nov 2015 12:46:53 -0000
Message-ID: <20151103134736.49e4edcb@pc1>
In-Reply-To: <87y4ef9s4i.fsf@redhat.com>
References: <87y4ef9s4i.fsf@redhat.com>
X-Mailer: Claws Mail 3.13.0 (GTK+ 2.24.28; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-23331-1446554801-0001-2"
Date: Tue, 3 Nov 2015 13:47:36 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request: libsndfile 1.0.25 heap overflow
To: oss-security@lists.openwall.com

--=_zucker.schokokeks.org-23331-1446554801-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, 03 Nov 2015 13:36:45 +0100
Martin Prpic <mprpic@redhat.com> wrote:

> I also don't see a patch for this issue (or an upstream bug). Any
> pointers there would be greatly appreciated. Thanks!

Unrelated, but I recently reported an out of bounds triggered by the
test suite of libsndfile and got no reply:
http://permalink.gmane.org/gmane.comp.audio.libsndfile.devel/681

Seems like a dead / unmaintaned upstream project...

--=20
Hanno B=C3=B6ck
http://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-23331-1446554801-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJWOKzoAAoJEKWIAHK7tR5CqNcQAKiE7/1jhOobI3I/+ryddDAV
z4xpHrWhpxEE5J8WPtznTrGQ6yVSy4vPv+yX69AGlANJrdWFF7ped9Li3mE6cRKJ
i/Heugc/nGIp++xIL/P98NLwW1yDIPl0WKx9R3PZIiyzMBd/750cH/lZgdQSnWhG
y33tAsRulaypJxbqVuUrHwW/Hz/viS9KjX/FewcTEZvhr6h8zv/qsCZV2aRzx7Aa
EgbuSBLXicUc77w63h4wjJUcgDTsnFCnF9QvMD+sWwzbB8ttBx+9VYs57ZPIfaB/
k197DGjqrsBrKgnX7iu/sDm8d5i8AbVj77Nb6l4O1D/GAGaSwB2l6mLymOKA4a7E
atEPZAjeG8gvpdO8ijMD8aWzscHngT2ie+9ZC8LYb/UpyKYBYHfQRntXw6Ze2+t+
t7IM1WRqmxO9oCNqed/mvwTvvKvsot5kMWIU+o2PDIbbEQjxqW1Y0W+4xuTFb7tV
M97l/2Et1tOWltQJqPzk3mEMueMnp4VUIZDuDMUV+1Ok6ZcZGdvmH6XdgD/P7onG
hWDfv/uiXYqdpY79+X3TN+1o3MExP0+3QRGnanGHw5lNdGXEb6PK/PzzbFxOVbr6
o9ZPvsFeyd21StmM9spu4o+wn/VuB+cmbPS8KviYZSxJ3kafIdVINK8J+I/uHmyR
CEMIfuwIgV46hvk25XH0
=HA+N
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-23331-1446554801-0001-2--
