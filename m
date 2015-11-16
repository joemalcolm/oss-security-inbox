X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1727" "Monday" "16" "November" "2015" "11:16:15" "-0200" "Fabio Olive Leite" "fleite@redhat.com" "<1896756.C6sJcrWjWa@freyja>" "44" "Re: [oss-security] CVE request-HUAWEI P8 GRA-UL00" "^Date:" nil nil "11" "2015111613:16:15" "[oss-security] CVE request-HUAWEI P8 GRA-UL00" (number mark "        fleite@redha Nov 16   44/1727  " thread-indent "\"Re: [oss-security] CVE request-HUAWEI P8 GRA-UL00\"\n") "<20151116125652.GA18548@openwall.com>" ("<2166DED8C457614D95A6AAC18B144F082B48AE@EX02.corp.qihoo.net>" "<20151116125652.GA18548@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23600 invoked by uid 550); 16 Nov 2015 13:16:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23579 invoked from network); 16 Nov 2015 13:16:33 -0000
Message-ID: <1896756.C6sJcrWjWa@freyja>
Organization: Red Hat
User-Agent: KMail/4.14.9 (Linux/4.2.5-201.fc22.x86_64; KDE/4.14.13; x86_64; ; )
In-Reply-To: <20151116125652.GA18548@openwall.com>
References: <2166DED8C457614D95A6AAC18B144F082B48AE@EX02.corp.qihoo.net> <20151116125652.GA18548@openwall.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart3384317.HFvAbvyWT3"; micalg="pgp-sha256"; protocol="application/pgp-signature"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
Date: Mon, 16 Nov 2015 11:16:15 -0200
From: Fabio Olive Leite <fleite@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request-HUAWEI P8 GRA-UL00
To: oss-security@lists.openwall.com

--nextPart3384317.HFvAbvyWT3
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On Monday 16 November 2015 15:56:52 Solar Designer wrote:
> It is unclear whether this makes the vulnerability detail ...

Is it really a vulnerability?  All the code does is read 4 bytes from a=20
proc file, and reads that into address 0 in the process, which will very=20
likely kill it unless that page is mapped somehow, which the code does=20
not make any attempt to.  Is the OP mistaking a crashed userlevel=20
process with a system-wide crash?

Cheers,

--=20
F=C3=A1bio Oliv=C3=A9 Leite, Red Hat Product Security
F1C1 1876 3922 1906 6631  0C31 92A5 9276 250D 8380

--nextPart3384317.HFvAbvyWT3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCAAGBQJWSdcfAAoJEFy9Kpz+DTz8AlMQAJgxW6NAep+iDafzFp9D6iuD
pHzopwf2VGN+iQaxzrrZ6f6HElQGGCF2WeuvVZ4H2qpFVKSOdeecCuZo7KfPYW8X
CK0ccQxN1aTici/X8E3H6n9SF/gjtK6hWB0LL8Nbg/SODtDtxsE2aKtXsc8r/G65
m/BqlkVwrLzFJUQiTy8RQyYEY6J2bQ1QaYvOkIVN8EYHIAykFSAt8vKhghsAskOk
9esX8/NTBgpm4sSLPIPaBic0YebJ9RBBoP6OO/TAB3W3N0Rp/bnjKpYotH5wZUN9
YvrvaHwiYo2F2oIdUeFK5DhlnOaElnYi7MHkUyO7tLggNyeRqQK4taPa9ZKaHoNz
N12QIXN9ttiPz2nNPnXwRqCkhMDWczyB17FciDFM93JfnPy2csW3aLqaYpFJ0lJ1
dpGRKZIIk8YTwy6piO8EPpGVvxEZvZakb2LSXllzP2dzhBncK1+j4DvBcbNr2G8N
d2X1akRpR9TZ3XVw74C7YykDSYOmTvfibWtEkbuypy924Yf7lO66J2LID0/NUNsY
IskGQMS/Q0j0jq0fRQl0HCPRUzpX82EuLm4gd17j6JwXgMHqZI5DL5+/uaybPaVT
TmEtGjBEUiTFzMWdHZl+jaHbKJzc+T46V4nrlHpI0QRJ47RcNy4Wfud3tbULym1z
L+KL622z8rdlDuXCyIrg
=Ta0i
-----END PGP SIGNATURE-----

--nextPart3384317.HFvAbvyWT3--

