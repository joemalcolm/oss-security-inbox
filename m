X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1892" "Monday" "24" "October" "2016" "11:16:12" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161024151612.199576C560A@smtpvmsrv1.mitre.org>" "46" "[oss-security] Re: CVE request Qemu: net: rtl8139: infinite loop while transmit in C+ mode" nil nil nil "10" "2016102415:16:12" "[oss-security] Re: CVE request Qemu: net: rtl8139: infinite loop while transmit in C+ mode" (number mark "U       cve-assign@m Oct 24   46/1892  " thread-indent "\"[oss-security] Re: CVE request Qemu: net: rtl8139: infinite loop while transmit in C+ mode\"\n") "<alpine.LFD.2.20.1610241606440.6422@wniryva>" ("<alpine.LFD.2.20.1610241606440.6422@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11583 invoked by uid 550); 24 Oct 2016 15:16:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11508 invoked from network); 24 Oct 2016 15:16:23 -0000
From: cve-assign@mitre.org
To: ppandit@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, hendersa@icculus.org
In-Reply-To: <alpine.LFD.2.20.1610241606440.6422@wniryva>
Message-Id: <20161024151612.199576C560A@smtpvmsrv1.mitre.org>
Date: Mon, 24 Oct 2016 11:16:12 -0400 (EDT)
Subject: [oss-security] Re: CVE request Qemu: net: rtl8139: infinite loop while transmit in C+ mode

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick Emulator(Qemu) built with the RTL8139 ethernet controller emulation
> support is vulnerable to an infinite loop issue. It could occur while
> transmitting packets in C+ mode of operation.
> 
> A privileged user inside guest could use this flaw to consume excessive CPU
> cycles on the host, resulting in DoS situation.

> https://lists.gnu.org/archive/html/qemu-devel/2016-10/msg05495.html

>> RTL8139 ethernet controller in C+ mode supports multiple
>> descriptor rings, each with maximum of 64 descriptors. While
>> processing transmit descriptor ring in 'rtl8139_cplus_transmit',
>> it does not limit the descriptor count and runs forever. Add
>> check to avoid it.

Use CVE-2016-8910.

This is not yet available at
http://git.qemu.org/?p=qemu.git;a=history;f=hw/net/rtl8139.c but
that may be an expected place for a later update.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYDiS8AAoJEHb/MwWLVhi2MT0P/i1qqts1Nb1wttHz7EX/EAtm
qiNtxE7/IMAfHoLZ7UKJWk08RPY6O3wz55lbcPdZFtzJav2Ch2tnG2r25+Lr3OFD
yXD/zZrA7uxpZ+wyQoWa7m1oQkmaPMUdWDjAnFwOy2eMY6yv+YP9UbU5C1opAqhu
BVYZOXn+4rBa0LyXmw2DyUvNb2a6ePzyXgrJ42LMIdzKHL4ksyOkQ0frYkB1Vns4
LVDOE3OV7/LWMPOccwIOlUVHEc4cclMnsTQvVB67dNoiJanQV86+AmzdLsRwJqxr
cy2O6tKG+Gjc7H90uVLOHwEwUMgjswpj2hD1oFZcqPnbsV9cpnFDgTDK/65mpkab
oflQM68pdnPuWb05VgR+SAQ3jLTmRePaw73GEWi/vHXLNfLWkxmvqGevzV3swBDi
VG8TnAyWF939pxWbULRSB/3q5aU69iHUM0WIDWZH/WuQ0jEaPrxJg7R8kiVcdt4J
E+6mM7GQiGndSHXRyQjbf2SIVR80hNuWtctX3nkaZxWsIJTfFYCc8/Ae/M/HDdkf
bZHhNK5y7rchWd9DYiRi9Knf4axoNe/KvGy4jVhQnwrN8IKaHVKDqbl6cNKDEpUP
hPhKk+0JEjBFn0auboRZUUqAV90rwEl/VkMvz73WJU6IALhYNBoUkpDG5XewdA5W
yfHvedUqbQn9vcV6cnf9
=OGtv
-----END PGP SIGNATURE-----
