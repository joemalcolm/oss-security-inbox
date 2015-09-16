X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2244" "Wednesday" "16" "September" "2015" "18:35:52" "+0200" "Dirk Wetter" "dirk@testssl.sh" "<55F99A68.1080909@testssl.sh>" "51" "[oss-security] New release (2.6.) of testssl.sh" nil nil nil "9" "2015091616:35:52" "[oss-security] New release (2.6.) of testssl.sh" (number mark "        dirk@testssl Sep 16   51/2244  " thread-indent "\"[oss-security] New release (2.6.) of testssl.sh\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13562 invoked by uid 550); 16 Sep 2015 16:39:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11527 invoked from network); 16 Sep 2015 16:36:07 -0000
Message-ID: <55F99A68.1080909@testssl.sh>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.0.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Df-Sender: NDM2MjM5
Date: Wed, 16 Sep 2015 18:35:52 +0200
From: Dirk Wetter <dirk@testssl.sh>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] New release (2.6.) of testssl.sh
To: oss-security@lists.openwall.com


Hi,

version 2.6 of the SSL/TLS checker "testssl.sh" is out!

testssl.sh is a free command line tool which checks a server's service
on any port for the support of TLS/SSL ciphers, protocols as well as
recent cryptographic flaws and it does more.

It is written in (pure) bash, makes only use of standard Unix utilities,
openssl and last but not least bash sockets.

Version 2.6 includes major improvements (ids from github):

* LOGJAM: check of DHE_EXPORT ciphers, displays DH(/ECDH) bits in wide mode
  on negotiated ciphers
* (HTTP) proxy support! Via sockets and openssl -- Thx @jnewbigin
* TLS_FALLBACK_SCSV check -- Thx @JonnyHightower
* TLS 1.0-1.1 as socket checks per default in production
* TLS time and HTTP time stamps for architecture fiingerprinting
* support of sockets also for STARTTLS protocol checks
* TLS time displayed also for STARTTLS
* binary directory provides out of the box better suited binaries (with up to
  195 ciphers), besides Linux static binaries:
  * OS X binaries (new builds from @jpluimers)
  * FreeBSD binary
  * ARM binary (@f-s)
* Extended validation certificate detection
* "wide mode" option for checks like RC4, BEAST. PFS: Displays hexcode, kx,
  strength, DH bits, RFC cipher name
* will test multiple IP adresses in one shot, --ip= restricts it accordingly
* runs in default mode through all ciphers at the end of a default run
* new mass testing file option --file option where testssl.sh commands are being
  read from, see https://twitter.com/drwetter/status/627619848344989696
* displays matching host key (HPKP)
* further detection of security relevant headers (reverse proxy, IPv4 addresses) as
  well as proprietary banners (OWA, Liferay etc.)
* can scan STARTTLS+XMPP by also supplying the XMPP domain (to-option in XML
  streams).
* quite some fixes when using LibreSSL, still not recommended to use though
  (see https://testssl.sh/)
* lots of fixes, code improvements, even more robust

Get it while it's hot @ https://testssl.sh or @ github where all development
action takes place: https://github.com/drwetter/testssl.sh/tree/2.6 .

Some of the planned feaures for the next release see
https://github.com/drwetter/testssl.sh/milestones/2.7dev%20%282.8%29


Cheers, Dirk (@drwetter)
