X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["319" "Friday" "16" "October" "2015" "08:05:57" "+0200" "Florian Weimer" "fw@deneb.enyo.de" "<871tcvuz3u.fsf@mid.deneb.enyo.de>" "7" "[oss-security] CVE request: lldpd crash in lldp_decode due large management address" nil nil nil "10" "2015101606:05:57" "[oss-security] CVE request: lldpd crash in lldp_decode due large management address" (number mark "        fw@deneb.eny Oct 16    7/319   " thread-indent "\"[oss-security] CVE request: lldpd crash in lldp_decode due large management address\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5969 invoked by uid 550); 16 Oct 2015 06:06:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5949 invoked from network); 16 Oct 2015 06:06:09 -0000
Message-ID: <871tcvuz3u.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Type: text/plain
Date: Fri, 16 Oct 2015 08:05:57 +0200
From: Florian Weimer <fw@deneb.enyo.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: lldpd crash in lldp_decode due large management address
To: oss-security@lists.openwall.com

Upstream commit:

<https://github.com/vincentbernat/lldpd/commit/dd4f16e7e816f2165fba76e3d162cd8d2978dcb2>

If compiled with effective source fortification, the vulnerability is
just a crash and not exploitable for anything else, as a result of the
compiler-emitted length check for memcpy inside the PEEK_BYTES macro.
