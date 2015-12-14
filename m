X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1619" "Monday" "14" "December" "2015" "20:40:29" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1512142033580.2864@wniryva>" "42" "[oss-security] CVE request Qemu: usb: infinite loop in ehci_advance_state results in DoS" nil nil nil "12" "2015121415:10:29" "[oss-security] CVE request Qemu: usb: infinite loop in ehci_advance_state results in DoS" (number mark "U       ppandit@redh Dec 14   42/1619  " thread-indent "\"[oss-security] CVE request Qemu: usb: infinite loop in ehci_advance_state results in DoS\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13834 invoked by uid 550); 14 Dec 2015 15:10:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13810 invoked from network); 14 Dec 2015 15:10:53 -0000
Date: Mon, 14 Dec 2015 20:40:29 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Qinghao Tang <luodalongde@gmail.com>, Gerd Hoffmann <kraxel@redhat.com>
Message-ID: <alpine.LFD.2.20.1512142033580.2864@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
Subject: [oss-security] CVE request Qemu: usb: infinite loop in ehci_advance_state results
 in DoS

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

   Hello,

Qemu emulator built with the USB EHCI emulation support is vulnerable to an 
infinite loop issue. It occurs during communication between host controller 
interface(EHCI) and a respective device driver. These two communicate via a 
isochronous transfer descriptor list(iTD) and an infinite loop unfolds if 
there is a closed loop in this list.

A privileges user inside guest could use this flaw to consume excessive CPU 
cycles & resources on the host.

Upstream fix:
- -------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2015-12/msg02124.html

This issue was discovered by Qinghao Tang of QIHU 360 Marvel Team.

Thank you.
- --
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJWbtvmAAoJEN0TPTL+WwQf3MIQAJDWcJuiUFDPuHWQU1iVoUT3
Cp0PUxY37ldRTq3TYGw/7UEIJscULwDiVqtmkso+f67v70BRh8cQf/HiIDM93Zq8
fb9q4l3JSZZu6pSGiJKe2C7iwoIT5SA0JqzYhQQFlZvt/osFIxFtcAg+ribl092b
QMtNksA2/mUL7L+LP4mHgzAy0tTDNMp/fPE189bZID6iLvul1sQxE1HdBsRhYVDU
4Q0FWSO62If21/GyI5Rqrh11tpeXeWdqIYfJVETxdSzLzgqHlT6GyH5iZfnoTMxI
3H8yrqsFGFZhJP7caFd51cK+CbBAN/PP4z6SRfKJsPjX9eJp8YX1+u3WrvU/sMTA
f8dPDRnD0VZgW9dku0ETxXGuV4rXN17CgNm6i7Qft1JHZA5OGlxewMX2pgAcp/cM
9eVaBWPUKAjei1GUNfhxX3DLeSDt5cC83ICEedNhozY5k9UuwUGTl/p5I5UQVuqY
Z4xiDzuUE3O0IVpEQvyF3eiYd5dRFrq3qo6NG/KEd+A7dCmVprJLWGzMjbp/Onmz
LQFyw8eI+Q2znFqpSKNnYDjZemw2cTEkuHBXnWKOgtPb7iisWE3ke9WLVhgcc3O7
nT9raTZXn3feowabwDpBu+BOmejiN1TXkNR3e/CpBLqvZlatGdc1KCPm58zxTMWs
SZm4zSvaSyky/pMJonCU
=SYEW
-----END PGP SIGNATURE-----
