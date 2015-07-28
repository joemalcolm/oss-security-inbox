X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1573" "Tuesday" "28" "July" "2015" "16:58:01" "+0200" "Vasyl Kaigorodov" "vkaigoro@redhat.com" "<20150728145801.GE26980@mail.corp.redhat.com>" "54" "[oss-security] CVE request: mktexlsr/texlive: insecure use of /tmp" nil nil nil "7" "2015072814:58:01" "[oss-security] CVE request: mktexlsr/texlive: insecure use of /tmp" (number mark "U       vkaigoro@red Jul 28   54/1573  " thread-indent "\"[oss-security] CVE request: mktexlsr/texlive: insecure use of /tmp\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32597 invoked by uid 550); 28 Jul 2015 14:58:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32575 invoked from network); 28 Jul 2015 14:58:00 -0000
Date: Tue, 28 Jul 2015 16:58:01 +0200
From: Vasyl Kaigorodov <vkaigoro@redhat.com>
To: oss-security@lists.openwall.com, cve-assign@mitre.org
Cc: 775139@bugs.debian.org
Message-ID: <20150728145801.GE26980@mail.corp.redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="zjcmjzIkjQU2rmur"
Content-Disposition: inline
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
Subject: [oss-security] CVE request: mktexlsr/texlive: insecure use of /tmp

--zjcmjzIkjQU2rmur
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

Can I please have a CVE assigned for the following issue:

mktexlsr is creating /tmp files in an insecure way:

    treefile=3D"${TMPDIR-/tmp}/mktexlsrtrees$$.tmp"
    # ...
    while test $# -gt 0; do
       # ...
       (umask 077
       if echo "$1" >>"$treefile"; then :; else
         echo "$progname: $treefile: could not append to arg file, goodbye.=
" >&2
         exit 1
       fi
       # ...
    done

This is insecure because the filename is predictable and, more=20
importantly, the program doesn't fail atomically if the file already=20
exists.

References:
https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D775139
https://bugzilla.redhat.com/show_bug.cgi?id=3D1181167

Thanks.
--=20
Vasyl Kaigorodov | Red Hat Product Security
PGP:  0xABB6E828 A7E0 87FF 5AB5 48EB 47D0 2868 217B F9FC ABB6 E828
Free/Busy status: https://url.corp.redhat.com/vk-free-busy-status

--zjcmjzIkjQU2rmur
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJVt5h5AAoJECF7+fyrtugoryMH/1C7d3DH+dU0/pvNIpocLBk2
M1G/WadlA34NvXKp0j8XJ60/PNP/mBDexV8dhV4KfWQeprxCggbYKriHL7ZS5fI3
HkJ0MHIvpRBCJ/3SUaQdr7BaCHW0WsKtJnKZRhVN2UpA860TopM12NBU+D2luiiM
FMxG3XQu6oUsf8l5GFH5kERRNHxalUGzPUIpKMi8yNayVOuuzY6O30qOaYKPnYGo
Q7mYaXeyAgwIBEhA/weYdSlq6NoUtlpQ0XhhWj1CH6eqPyER6wTVYLQDs/ky8Jgw
JWWWjhvS6UO4G2q1ZY0pN40jZ2hXDjVfa4cZdRWfD6DM1+phq3p7akOm3yDh7tQ=
=xgpV
-----END PGP SIGNATURE-----

--zjcmjzIkjQU2rmur--
