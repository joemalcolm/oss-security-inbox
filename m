X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1052" "Tuesday" "9" "January" "2018" "15:42:07" "+0200" "Georgi Guninski" "guninski@guninski.com" "<20180109134207.GI869@sivokote.iziade.m$>" "33" "[oss-security] Own on install. How grave it is?" "^Date:" nil nil "1" "2018010913:42:07" "[oss-security] Own on install. How grave it is?" (number mark "        guninski@gun Jan  9   33/1052  " thread-indent "\"[oss-security] Own on install. How grave it is?\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24060 invoked by uid 550); 9 Jan 2018 15:30:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15669 invoked from network); 9 Jan 2018 13:42:31 -0000
Message-ID: <20180109134207.GI869@sivokote.iziade.m$>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
header: best read with a sniffer
Date: Tue, 9 Jan 2018 15:42:07 +0200
From: Georgi Guninski <guninski@guninski.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Own on install. How grave it is?
To: oss-security@lists.openwall.com

[don't know if this is ontopic. Not on the list so CC me].

This is well known, haven't seen it discussed.

In short doing clean install (factory defaults) has a window of
opportunity when the device is vulnerable to a known network attack.

It used to be common sense to reinstall after compromise (probably
doesn't apply to the windows world where the antivirus takes care).

All versions of windoze are affected by the SMB bug to my knowledge.
Debian jessie (old stable) is vulnerable to malicious mirror attack.

More of interest to me are devices where the installation media is
fixed and can't be changed.

This includes smartphones and wireless routers.

Some smartphones might be vulnerable to wifi RCE (found by google?).
Some wireless routers might be vulnerable to wifi RCE or
default admin password attack over wifi.

Internet of Things will make things worse (some NAS devices are
affected).

Shielding the device might not be solution since updates must be
applied.

Are the above concerns real?

Have this been studied systematically?


