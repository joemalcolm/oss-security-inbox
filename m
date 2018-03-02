X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1198" "Friday" "2" "March" "2018" "12:44:28" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20180302124428.440b9c3b@pc1>" "36" "[oss-security] memcached UDP amplification attacks" "^Date:" nil nil "3" "2018030211:44:28" "[oss-security] memcached UDP amplification attacks" (number mark "        hanno@hboeck Mar  2   36/1198  " thread-indent "\"[oss-security] memcached UDP amplification attacks\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27755 invoked by uid 550); 2 Mar 2018 11:44:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27712 invoked from network); 2 Mar 2018 11:44:41 -0000
Message-ID: <20180302124428.440b9c3b@pc1>
X-Mailer: Claws Mail 3.16.0 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 2 Mar 2018 12:44:28 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] memcached UDP amplification attacks
To: oss-security@lists.openwall.com

Hi,

In the past days there have been reports about some DDoS attacks
abusing the memcached UDP protocol:
https://blog.cloudflare.com/memcrashed-major-amplification-attacks-from-por=
t-11211/
https://www.wired.com/story/github-ddos-memcached/


The issue: memcached has an UDP protocol that allows getting a much
larger reply than the query sent, thus allowing amplification attacks
with forged sender IPs.


Upstream memcached reacted by disabling the UDP-based protocol by
default:
https://github.com/memcached/memcached/wiki/ReleaseNotes156
This is good, however one could argue that they should also default to
localhost only.


Most distros I checked right now default to enabling UDP, but
restricting connections to 127.0.0.1. While this is not directly
vulnerable it's only a minor change away from being so. The memcached
announcement sounds like the UDP protocol is rarely used and should be
considered deprecated and replaced by the TCP-based one.

I recommend all distributions consider changing their defaults to
disabling the UDP-based memcached protocol by default.

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
