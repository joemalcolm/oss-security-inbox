X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["686" "Tuesday" "1" "September" "2015" "07:20:56" "+0200" "Florian Weimer" "fw@deneb.enyo.de" "<87vbbusojr.fsf@mid.deneb.enyo.de>" "25" "[oss-security] CVE request: screen stack overflow (deep recursion)" nil nil nil "9" "2015090105:20:56" "[oss-security] CVE request: screen stack overflow (deep recursion)" (number mark "        fw@deneb.eny Sep  1   25/686   " thread-indent "\"[oss-security] CVE request: screen stack overflow (deep recursion)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15621 invoked by uid 550); 1 Sep 2015 05:21:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15600 invoked from network); 1 Sep 2015 05:21:09 -0000
Message-ID: <87vbbusojr.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Cc: oss-security@lists.openwall.com
Date: Tue, 01 Sep 2015 07:20:56 +0200
From: Florian Weimer <fw@deneb.enyo.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: screen stack overflow (deep recursion)
To: cve-assign@mitre.org

Upstream bug report by Kuang-che Wu:

=E2=80=9C
How to reproduce:
Run this command inside screen
$ printf '\x1b[10000000T'

screen will recursively call MScrollV to depth n/256. This is time consumin=
g and will overflow stack if n is huge.
=E2=80=9D

<https://savannah.gnu.org/bugs/?45713>

Upstream fix:

http://git.savannah.gnu.org/cgit/screen.git/commit/?id=3Db7484c224738247b51=
0ed0d268cd577076958f1b

Debian bug:

https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D797624

MScrollV creates a very large stack frame, so it could theoreticall
jump over the guard page at the top of the stack, and it might be
feasible to exploit this for something else besides denial-of-service.
