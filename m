X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2029" "Monday" "1" "February" "2016" "16:35:02" "+0100" "Gerhard Rieger" "gerhard@dest-unreach.org" "<56AF7B26.9010700@dest-unreach.org>" "63" "[oss-security] Socat security advisory 8 - Stack overflow in parser" "^Date:" nil nil "2" "2016020115:35:02" "[oss-security] Socat security advisory 8 - Stack overflow in parser" (number mark "        gerhard@dest Feb  1   63/2029  " thread-indent "\"[oss-security] Socat security advisory 8 - Stack overflow in parser\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5485 invoked by uid 550); 1 Feb 2016 15:35:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5433 invoked from network); 1 Feb 2016 15:35:16 -0000
X-Virus-Scanned: Debian amavisd-new at clausfischer.com
Message-ID: <56AF7B26.9010700@dest-unreach.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.5.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="f0Q5TT52Jh2bgiDuUA6CwaQufiNvwt2Fv"
Date: Mon, 1 Feb 2016 16:35:02 +0100
From: Gerhard Rieger <gerhard@dest-unreach.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Socat security advisory 8 - Stack overflow in parser
To: oss-security@lists.openwall.com

--f0Q5TT52Jh2bgiDuUA6CwaQufiNvwt2Fv
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Socat security advisory 8 - Stack overflow in parser

Overview
  A stack overflow vulnerability was found that can be triggered when
  command line arguments (complete address specifications, host names,
  file names) are longer than 512 bytes.
  Successful exploitation might allow an attacker to execute arbitrary code
  with the privileges of the socat process.
  This vulnerability can only be exploited when an attacker is able to
  inject data into socat's command line.
  A vulnerable scenario would be a CGI script that reads data from
  clients and uses (parts of) this data as hostname for a Socat
  invocation.

Vulnerability Ids
    Socat security issue 8

Severity: Low

Affected versions
  1.5.0.0 - 1.7.3.0
  2.0.0-b1 - 2.0.0-b8

Not affected or corrected versions
  1.0.0.0 - 1.4.3.1
  1.7.3.1 and later
  2.0.0-b9 and later

Workaround
  Do not pass unfiltered data from untrusted sources to socat's command line

Download
  The updated sources can be downloaded from:

    http://www.dest-unreach.org/socat/download/socat-1.7.3.1.tar.gz
    http://www.dest-unreach.org/socat/download/socat-2.0.0-b9.tar gz

Acknowledgement
    Takume Akiyma found and reported this issue.


--f0Q5TT52Jh2bgiDuUA6CwaQufiNvwt2Fv
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJWr3smAAoJEBszgb37UeYgpR0IAKMDTecTVVugTmjouW3jJ7Z4
HCf8auGEL8zskf2l+IPG3wZfZVOMLvF9kXEuxxwV2LzD8wADYAPYJSoQ9Wc3Dwh2
Z7hSAWNjDTQUKj0TTU/xaK5H7aLgvy7H14lPyKQJckuPHeLpO6R6ZfWvJ/UJwRWC
zhu0PV2kjlKq6lN7DVOGYUyOUNucchrsJQqlRXDgowzfdGwMcXQ/SR9vhy0XrRTo
JyWol5bYWwierm82I6KyFCvfV7KFsXQSLIYHYroVITteBt9CjVkxChZsN3rtG3RN
W5sS9DW/zXTEzPEaoM0X1WRmtKEzq7jubRuvnvm+3rTnQYaqBfuObSG9U82m/fo=
=FkPF
-----END PGP SIGNATURE-----

--f0Q5TT52Jh2bgiDuUA6CwaQufiNvwt2Fv--
