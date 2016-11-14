X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1921" "Monday" "14" "November" "2016" "04:42:34" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<035e3ddda98d4ac9aea967809fd37fd9@imshyb02.MITRE.ORG>" "61" "[oss-security] Re: CVE needed? / gnuchess 6.2.4 fixed user input buffer overflow" nil nil nil "11" "2016111409:42:34" "[oss-security] Re: CVE needed? / gnuchess 6.2.4 fixed user input buffer overflow" (number mark "U       cve-assign@m Nov 14   61/1921  " thread-indent "\"[oss-security] Re: CVE needed? / gnuchess 6.2.4 fixed user input buffer overflow\"\n") "<22143afd-005a-6fff-2c75-f5e74c2b92fe@pipping.org>" ("<22143afd-005a-6fff-2c75-f5e74c2b92fe@pipping.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24362 invoked by uid 550); 14 Nov 2016 09:42:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24338 invoked from network); 14 Nov 2016 09:42:46 -0000
From: <cve-assign@mitre.org>
To: <sebastian@pipping.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<aceballos@gmail.com>
In-Reply-To: <22143afd-005a-6fff-2c75-f5e74c2b92fe@pipping.org>
Message-ID: <035e3ddda98d4ac9aea967809fd37fd9@imshyb02.MITRE.ORG>
Date: Mon, 14 Nov 2016 04:42:34 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE needed? / gnuchess 6.2.4 fixed user input buffer overflow

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

The reference for this bug is:

  http://svn.savannah.gnu.org/viewvc?view=rev&root=chess&revision=134

> may need some other application in front (e.g. a website
> using gnuchess for a backend or some mobile/desktop application
> forwarding evil input to gnuchess with improper validation) to attack.

Is it vulnerable without such an application if launched as
"gnuchess -u" (UCI mode)? For example, is it taking untrusted input of
4096 characters and sending it to the ValidateMove function that is
expecting 128?


  #define BUF_SIZE 4096

  #define MAXSTR 128


  if ( flags & UCI )
  ...
  NextEngineCmd();
  ...
  ReadFromEngine();


  static char engineinputbuf[BUF_SIZE]="";


  nread = read( pipefd_a2f[0], engineinputaux, BUF_SIZE );
  strcat( engineinputbuf, engineinputaux );


  char enginemovestr[BUF_SIZE]="";
  enginemove = ValidateMove( enginemovestr );

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYKYadAAoJEHb/MwWLVhi2mH4P/joQRzioJrkPSlThGwhDOT7u
+vA3ceM8z+7u8Kf25lQNVgq4o+5YWARUJZBXHSRcC1rqCPuuWqw/aHUf8ijd9ryT
QyzZ21wceInfp1EtjqjmtzBh++i00QqoKoLeNAeRilC7DL6T+OsxPEAt0ehtzRNJ
ZgM7r1i25CcAxsnhQWNIzv5zRTo6v9DXaSabhiHT+OkP9m2C/oJQJYO3nRt3kAaC
mt8sXppmdMj7YNZ9uxKWVVwA0vIVP6+Ds3ZonKM/O80zLFXfu1hxKLG/lJ77qzLc
pdG5ntFpHZ0TrvR1yPezwyn3Wi8Up+3PY0vkTP1npvlrcmhB9HnpUUzvPMyEK2KF
ctiMpAtg5PxoETjPGy6YKs9NxSjIiduJBJiQaYbQwfKHWITVB3Rt1gEBS7WgxJ8P
P7z8SX7kcsV3cMJJoaInHpnI3f51hp8+mr6HcWksDIspl6B4msU0nbq6kXrUmEWW
N7hfON3zWZrl+5iulvWKU7XRstG9jfKBKrgjCVNZWU1bA82dSRJou5L/EbGUCIhX
poJP5l+htbCdy8nmJ0abdcq0e8YdWNxpGZRgvh84WBHV5O4FATlpD7anrO9Vcdzw
NWnLqtMyKgx++AKV0YQSmoHZSUIvelcdmoL5tpe6XANZn25LBIiAI5YUdfTmOHFi
QGhs9frDuvyfcE38oKMQ
=9OQP
-----END PGP SIGNATURE-----
