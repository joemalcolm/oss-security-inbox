X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1812" "Thursday" "22" "June" "2017" "14:56:38" "+0200" "Alexander Bergmann" "abergmann@suse.com" "<20170622125636.GC3350@intrepid>" "58" "Re: [oss-security] CVE Request: unrar: VMSF_DELTA filter allows arbitrary memory write" nil nil nil "6" "2017062212:56:38" "[oss-security] CVE Request: unrar: VMSF_DELTA filter allows arbitrary memory write" (number mark "U       abergmann@su Jun 22   58/1812  " thread-indent "\"Re: [oss-security] CVE Request: unrar: VMSF_DELTA filter allows arbitrary memory write\"\n") "<20170621122001.GA3350@intrepid>" ("<20170621122001.GA3350@intrepid>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15722 invoked by uid 550); 22 Jun 2017 13:06:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9423 invoked from network); 22 Jun 2017 12:56:52 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20170622125636.GC3350@intrepid>
References: <20170621122001.GA3350@intrepid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="yVhtmJPUSI46BTXb"
Content-Disposition: inline
In-Reply-To: <20170621122001.GA3350@intrepid>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: thomasdullien@google.com
Date: Thu, 22 Jun 2017 14:56:38 +0200
From: Alexander Bergmann <abergmann@suse.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: unrar: VMSF_DELTA filter allows
 arbitrary memory write
To: oss-security@lists.openwall.com

--yVhtmJPUSI46BTXb
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 21, 2017 at 02:20:01PM +0200, Alexander Bergmann wrote:
> Hi,
>=20
> It was reported that unrar fixed a VMSF_DELTA memory corruption issue in
> there latest version unrarsrc-5.5.5.tar.gz. This problem was reported to
> Sophos AV in 2012 but never reach upstream rar.
>=20
> https://bugs.chromium.org/p/project-zero/issues/detail?id=3D1286&desc=3D6=
#maincol
>=20
> Reproducer:
>=20
> Base64-encoded RAR file to trigger the VMSF_DELTA issue:
>=20
> UmFyIRoHAPlOcwAADgAAAAAAAAAAMAh0AAAmAI4AAAAAAAAAAhBBUiEAAAAAHQAGAAAAACBzd=
GRv
> dXQgIVUMzRDNmBGByDAda+AXaSv4KvQr1K/oejL05mXmXmww5tEk8gA9k8nmieyeyeswuOR6c=
x69
> a2Hd6zQwu3aoMDDwMEswADAAMD4P938w+dydoRFwAmwAAAAAvv////+/////+9W3QFgAAQAGA=
AAA
> Ooimhd12AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
>=20
> As far as I can tell no CVE was assigned to this issue so far.

Mitre.org assigned CVE-2012-6706 to this issue.


Regards,
Alex~


--=20
Alexander Bergmann <abergmann@suse.com>, Security Engineer, GPG:9FFA4886
SUSE Linux GmbH, GF: Felix Imend=F6rffer, Jane Smithard, Graham Norton
HRB 21284 (AG N=FCrnberg)

--yVhtmJPUSI46BTXb
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBAgAGBQJZS76EAAoJEN5U6HWf+kiGlI8IAIyJVvz2WNXSx10eRdjzeW1v
oPhAKEIMbH7GwtJVWcB0zcJJbxJxe4orqUbBrJLT3BKh/K3U0aEc9xfz5B0R0r+r
puPt6m8oD51ajfRW3Sex6FDUTuHqW5C4lNU2FBJdX+3NPDHd/DsUHJpxILu522Z9
4D6MWSm6Q7s1l9P3Eia6X89DteCp17MsfBbD+Pkmzl6PMTIbfzJ0yf1fnrcDGfXC
gA+UIIuYb7vIcF4nht2Fiha3YoDGXr0Dq8cR7t8mNao4MHjhkY1RGCFERh7ph8UK
sj+FcNz6vANyzevWiQihoGlF3MocuJMb2k3A8EY/0P2CwFQvLt0GxODZ+b9fI1Q=
=NFcU
-----END PGP SIGNATURE-----

--yVhtmJPUSI46BTXb--
