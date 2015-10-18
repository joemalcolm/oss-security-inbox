X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["552" "Sunday" "18" "October" "2015" "21:42:53" "+0200" "Florian Weimer" "fw@deneb.enyo.de" "<87zizgc69u.fsf@mid.deneb.enyo.de>" "16" "Re: [oss-security] CVE request: lldpd crash in lldp_decode due large management address" nil nil nil "10" "2015101819:42:53" "[oss-security] CVE request: lldpd crash in lldp_decode due large management address" (number mark "        fw@deneb.eny Oct 18   16/552   " thread-indent "\"Re: [oss-security] CVE request: lldpd crash in lldp_decode due large management address\"\n") "<871tcvuz3u.fsf@mid.deneb.enyo.de>" ("<871tcvuz3u.fsf@mid.deneb.enyo.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19504 invoked by uid 550); 18 Oct 2015 19:43:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19483 invoked from network); 18 Oct 2015 19:43:05 -0000
References: <871tcvuz3u.fsf@mid.deneb.enyo.de>
In-Reply-To: <871tcvuz3u.fsf@mid.deneb.enyo.de> (Florian Weimer's message of
	"Fri, 16 Oct 2015 08:05:57 +0200")
Message-ID: <87zizgc69u.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Type: text/plain
Date: Sun, 18 Oct 2015 21:42:53 +0200
From: Florian Weimer <fw@deneb.enyo.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request: lldpd crash in lldp_decode due large management address
To: oss-security@lists.openwall.com

* Florian Weimer:

> Upstream commit:
>
> <https://github.com/vincentbernat/lldpd/commit/dd4f16e7e816f2165fba76e3d162cd8d2978dcb2>
>
> If compiled with effective source fortification, the vulnerability is
> just a crash and not exploitable for anything else, as a result of the
> compiler-emitted length check for memcpy inside the PEEK_BYTES macro.

There is also another fix, an improper assert leading to a daemon
crash:

https://github.com/vincentbernat/lldpd/commit/793526f8884455f43daecd0a2c46772388417a00

This probably needs a separate CVE ID.
