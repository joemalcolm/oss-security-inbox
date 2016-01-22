X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2142" "Thursday" "21" "January" "2016" "20:57:17" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160122015717.0586842E03A@smtpvbsrv1.mitre.org>" "50" "[oss-security] Re: CVE request Qemu: net: e1000 infinite loop in start_xmit and e1000_receive_iov routines" nil nil nil "1" "2016012201:57:17" "[oss-security] Re: CVE request Qemu: net: e1000 infinite loop in start_xmit and e1000_receive_iov routines" (number mark "U       cve-assign@m Jan 21   50/2142  " thread-indent "\"[oss-security] Re: CVE request Qemu: net: e1000 infinite loop in start_xmit and e1000_receive_iov routines\"\n") "<alpine.LFD.2.20.1601192253240.22604@wniryva>" ("<alpine.LFD.2.20.1601192253240.22604@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10130 invoked by uid 550); 22 Jan 2016 01:57:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10112 invoked from network); 22 Jan 2016 01:57:29 -0000
From: cve-assign@mitre.org
To: ppandit@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, lersek@redhat.com
In-Reply-To: <alpine.LFD.2.20.1601192253240.22604@wniryva>
Message-Id: <20160122015717.0586842E03A@smtpvbsrv1.mitre.org>
Date: Thu, 21 Jan 2016 20:57:17 -0500 (EST)
Subject: [oss-security] Re: CVE request Qemu: net: e1000 infinite loop in start_xmit and e1000_receive_iov routines

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Qemu emulator built with the e1000 NIC emulation support is vulnerable to an
> infinite loop issue. It could occur while processing data via transmit or
> receive descriptors, provided the initial receive/transmit descriptor
> head(TDH/RDH) is set outside the allocated descriptor buffer.
> 
> A privileged user inside guest could use this flaw to crash the Qemu instance
> resulting in DoS.
> 
> https://bugzilla.redhat.com/show_bug.cgi?id=1298570
> https://lists.gnu.org/archive/html/qemu-devel/2016-01/msg03454.html

>> What both directions miss is that the guest could program TDLEN and RDLEN
>> so low, and the initial TDH and RDH so high, that these registers will
>> immediately be truncated to zero, and then never reassume their initial
>> values in the loop -- a full wraparound will never occur.

>> i.e., TDH or RDH start out after the last whole rx or tx descriptor that
>> fits into the TDLEN or RDLEN sized area.

Use CVE-2016-1981.

This is not yet available at
http://git.qemu.org/?p=qemu.git;a=history;f=hw/net/e1000.c but
that may be an expected place for a later update.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJWoYr+AAoJEL54rhJi8gl5nWkP/RME1UtFdyDgcAJIQm1H06jB
XaPffjyISNyiTDLOFBO+5be6yON1SLrZCHcatbSoGO0acCU0a9A1L3xwUFVKIokE
yoU/oAF939VC+bE/aFsd6psR3Jy9IskODQn6wWE5kL0gz71xWrJWdna7mm5ysqZQ
aM9I2tYaUtZs9C7QWglvojrMVMUTjmS5Ta2vvUCzSoyZHtMjZ1s2nkBeVk/OLUmi
jE9h2TtEujSkROHKCqFrMHOzrZcUZax8nXC2OoJ+U92/uWLnVwUPnAKnLVuepjfO
hpqFlW/ohFtDa5ymEavZDGbxQf0aR/AeHbJeNvLEI05hktt1/0y+IgoilfDPx9HD
mhQE+L/rW3GVA1soCPv6FABHD4Gb6W50IFfssE9HHjqoLNHNynVUfgSXod20WNyd
4hoaYcHvHKqKJ3eVKItmMwHtJHxLvtBPoQHObQaHdp0QQ23KloXbc9q4zrnQ+IfV
ueK+pSahmfChammbzkQIIv9UVgtVhWeTp5u6VByO8QUo82osTudMUmkEjFgeBjjq
65dE+RUhdxpRTKXBRYNLDBS5t3Tnb5Y8d3M9TpX0saZhFyhe0HvrW25w17MK0TtI
dQ1T6A0B/GrDArTVzyucn4hUeyuTEBK0EtHADe3Y7DfRhYgL8kh3nlWBVxmGxnYp
ArvGC+n7c3hDqtkK9ZQs
=pZgV
-----END PGP SIGNATURE-----
