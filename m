X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2658" "Wednesday" "27" "January" "2016" "07:59:36" "-0800" "Adam Jacobs" "AJacobs@mocana.com" "<50DADDE6B33B1B47904E685AAFDC182448CF2B4300@yugi.mocana.local>" "73" "[oss-security] RE: [Pool] shodan.io actively infiltrating ntp.org IPv6 pools for scanning purposes" "^CC:" nil nil "1" "2016012715:59:36" "[oss-security] RE: [Pool] shodan.io actively infiltrating ntp.org IPv6 pools for scanning purposes" (number mark "        AJacobs@moca Jan 27   73/2658  " thread-indent "\"[oss-security] RE: [Pool] shodan.io actively infiltrating ntp.org IPv6 pools for scanning purposes\"\n") "<2413003.GtkKFizscD@chimera>" ("<2413003.GtkKFizscD@chimera>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28489 invoked by uid 550); 27 Jan 2016 16:01:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28188 invoked from network); 27 Jan 2016 16:00:04 -0000
X-ASG-Debug-ID: 1453910392-088e3111f3789b10001-Ebmqpw
X-Barracuda-Envelope-From: AJacobs@mocana.com
Thread-Topic: [Pool] shodan.io actively infiltrating ntp.org IPv6 pools for
	scanning purposes
X-ASG-Orig-Subj: RE: [Pool] shodan.io actively infiltrating ntp.org IPv6 pools for
	scanning purposes
Thread-Index: AdFZG0hvU9GoMf+0S8S5RZECn2p0FwAAHAns
Message-ID: <50DADDE6B33B1B47904E685AAFDC182448CF2B4300@yugi.mocana.local>
References: <2413003.GtkKFizscD@chimera>
In-Reply-To: <2413003.GtkKFizscD@chimera>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
acceptlanguage: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Barracuda-Connect: UNKNOWN[10.200.16.9]
X-Barracuda-Start-Time: 1453910392
X-Barracuda-Encrypted: RC4-MD5
X-Barracuda-URL: https://10.200.40.6:443/cgi-mod/mark.cgi
X-Barracuda-Scan-Msg-Size: 2684
X-Virus-Scanned: by bsmtpd at mocana.com
X-Barracuda-BRTS-Status: 1
X-Barracuda-Spam-Score: 0.50
X-Barracuda-Spam-Status: No, SCORE=0.50 using global scores of TAG_LEVEL=1000.0 QUARANTINE_LEVEL=1000.0 KILL_LEVEL=9.0 tests=BSF_RULE7568M
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.26500
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------------------------
	0.50 BSF_RULE7568M          Custom Rule 7568M
CC: "team@security.debian.org" <team@security.debian.org>,
	"secalert@redhat.com" <secalert@redhat.com>
Date: Wed, 27 Jan 2016 07:59:36 -0800
From: Adam Jacobs <AJacobs@mocana.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] RE: [Pool] shodan.io actively infiltrating ntp.org IPv6 pools for
	scanning purposes
To: Luca BRUNO <lucab@debian.org>, "pool@lists.ntp.org" <pool@lists.ntp.org>,
	"oss-security@lists.openwall.com" <oss-security@lists.openwall.com>,
	"linuxbrad@gmail.com" <linuxbrad@gmail.com>

Infuriating!

________________________________________
From: pool [pool-bounces+ajacobs=3Dmocana.com@lists.ntp.org] On Behalf Of L=
uca BRUNO [lucab@debian.org]
Sent: Wednesday, January 27, 2016 03:24
To: pool@lists.ntp.org; oss-security@lists.openwall.com; linuxbrad@gmail.com
Cc: team@security.debian.org; secalert@redhat.com
Subject: [Pool] shodan.io actively infiltrating ntp.org IPv6 pools for  sca=
nning purposes

[cross-posted to pool-ntp and oss-sec]

Hi,
while reviewing network logs this morning I spotted some anomalies related
to scan probes, ntp.org pools and IPv6.

It looks like Brad already observed and blogged about this some days ago,
but I haven't seen this discussed in the usual ntp-pools, Debian and
oss-sec ML, so I'm reposting this here:
http://netpatterns.blogspot.de/2016/01/the-rising-sophistication-of-network=
.html

In summary, some machines (which seem related to the shodan.io scanning pro=
ject)
are actively participating in pool.ntp.org as IPv6 endpoints.
However, clients connecting to them for NTP timesync, are subsequently scan=
ned
by probes originating from *.scan6.shodan.io hosts.

Confirming original report from Brad, I can add that those scanners seem to
implement some kind of rate-limiting: they will timeout NTP and won't re-sc=
an
recent clients when doing multiple/subsequent NTP requests.
Moreover, this is not targeted/restricted to the Debian pool only, but plag=
ue
the whole IPv6 pool, as seen on a sample query to the RedHat pool:

```
$ dig +short -t AAAA 2.rhel.pool.ntp.org | grep -E ':[[:xdigit:]]00[[:xdigi=
t:]]$'
2a03:b0c0:3:d0::18:b001
$ dig +short -x 2a03:b0c0:3:d0::18:b001
analog.data.shodan.io.
```
(Upon querying this server for NTP, the machine immediately got IPv6-scanned
by rock.scan6.shodan.io)

pool.ntp.org services are the default NTP servers in many default configura=
tions
(at least most of Linux distro) and I guess that this kind of behavior is d=
angerously
increasing the exposure level of way too many systems.

For ntp.org admins: can those rogue server be expunged from the pools, and =
the whole
shodan.io situation clarified? (Brad's post has a comprehensive endpoints l=
ist and
helper tools for detection)

For oss-sec crowd: is there anything we can do to improve the situation and=
 avoid
similar cases in the future? Should crowd-sourced and fundamental services =
like this
be encouraged to move to a stronger WoT?

Ciao, Luca

--
 .''`.  ** Debian GNU/Linux **  | Luca Bruno (kaeso)
: :'  :   The Universal O.S.    | lucab (AT) debian.org
`. `'`                          | GPG: 0xBB1A3A854F3BBEBF
  `-     http://www.debian.org  | Debian GNU/Linux Developer=
