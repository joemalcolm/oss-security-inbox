X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1627" "Monday" "6" "November" "2017" "15:09:20" "-0800" "Seth Arnold" "seth.arnold@canonical.com" "<20171106230920.GB13910@hunt>" "50" "Re: [oss-security] Fw: Security risk of vim swap files" "^Date:" nil nil "11" "2017110623:09:20" "[oss-security] Fw: Security risk of vim swap files" (number mark "        seth.arnold@ Nov  6   50/1627  " thread-indent "\"Re: [oss-security] Fw: Security risk of vim swap files\"\n") "<CANO=Ty2nVrHiLcEmOX-cSsEi5PLaPbZgMe47zprq9JoB0132Cg@mail.gmail.com>" ("<20171102212916.GC23769@256bit.org>" "<20171103163936.cevlb7ghcwkln6x2@jwilk.net>" "<20171105171704.GA9438@256bit.org>" "<20171105175959.GA13011@openwall.com>" "<a49425b0-4404-d570-a94d-fe92b59864b6@Z5T1.com>" "<CANO=Ty2nVrHiLcEmOX-cSsEi5PLaPbZgMe47zprq9JoB0132Cg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9282 invoked by uid 550); 6 Nov 2017 23:09:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9261 invoked from network); 6 Nov 2017 23:09:34 -0000
Message-ID: <20171106230920.GB13910@hunt>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20171102212916.GC23769@256bit.org>
 <20171103163936.cevlb7ghcwkln6x2@jwilk.net>
 <20171105171704.GA9438@256bit.org>
 <20171105175959.GA13011@openwall.com>
 <a49425b0-4404-d570-a94d-fe92b59864b6@Z5T1.com>
 <CANO=Ty2nVrHiLcEmOX-cSsEi5PLaPbZgMe47zprq9JoB0132Cg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="TRYliJ5NKNqkz5bu"
Content-Disposition: inline
In-Reply-To: <CANO=Ty2nVrHiLcEmOX-cSsEi5PLaPbZgMe47zprq9JoB0132Cg@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Date: Mon, 6 Nov 2017 15:09:20 -0800
From: Seth Arnold <seth.arnold@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Fw: Security risk of vim swap files
To: oss-security@lists.openwall.com

--TRYliJ5NKNqkz5bu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Nov 05, 2017 at 07:03:07PM -0700, Kurt Seifried wrote:
> Also you're all still ignoring umask =(. Please, when you create a new
> file, check the umask and subtract it to make sure you're abiding by the
> user's wishes.

Is it not the kernel's responsibility to enforce umask(2) is properly
applied?

My umask(3p) includes:

       The file mode creation mask of the process is used to turn
       off permission bits in the mode argument supplied during
       calls to the following functions:

        *  open(), openat(), creat(), mkdir(), mkdirat(), mkfifo(),
           and mkfifoat()

        *  mknod(), mknodat()

        *  mq_open()

        *  sem_open()

Obviously there's good case to be made that manual chmod(2) calls could
or should be modified by umask(2) values by hand, but probably all those
chmod(2) calls ought to be re-written to set the modes correctly at file
creation time (or mkdir, etc) to avoid race conditions.

Thanks

--TRYliJ5NKNqkz5bu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBCgAGBQJaAOugAAoJEPMhclmdjS6X4WsH/RtWUr1UFhNq96G4xRd6tQ7u
woL+qEqGx72pG4dLO8VrJxJ0WaSdYSQp10s/DnGt+McZvjYhj7R4Ew4c8je9Zm+z
/+i0geS0nLGmA2ZI/g4xeNCkzXfgkcf3J7W/0d6NBb0QQvABEbH0BpUuxvCPi1AF
8VBSOtd/rlSHWbvmKYO6+VjLw6uC/10iDwQ/XbQGMra95PeaK/U1Ki3z8txAiYML
vpUkiMtjzx00c+lBWfvOGwelfidrF4Nh3EbwhJha8a+L6++Bi/wyOwjpxPraW5d8
8VEOF1Xg3XjwEvXRtxqlxNcGlfrWdg+1XjycPS/q3JK3LoD8x9LhZ6Who0iaL4Y=
=jd8N
-----END PGP SIGNATURE-----

--TRYliJ5NKNqkz5bu--
