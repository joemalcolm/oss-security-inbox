X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1725" "Monday" "11" "January" "2016" "22:15:59" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1601112211500.22978@wniryva>" "47" "[oss-security] CVE request Qemu: nvram: OOB r/w access in processing firmware configurations" nil nil nil "1" "2016011116:45:59" "[oss-security] CVE request Qemu: nvram: OOB r/w access in processing firmware configurations" (number mark "U       ppandit@redh Jan 11   47/1725  " thread-indent "\"[oss-security] CVE request Qemu: nvram: OOB r/w access in processing firmware configurations\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28113 invoked by uid 550); 11 Jan 2016 16:46:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28093 invoked from network); 11 Jan 2016 16:46:25 -0000
Date: Mon, 11 Jan 2016 22:15:59 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Donghai Zdh <donghai.zdh@alibaba-inc.com>
Message-ID: <alpine.LFD.2.20.1601112211500.22978@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Subject: [oss-security] CVE request Qemu: nvram: OOB r/w access in processing firmware
 configurations

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

   Hello,

Qemu emulator built with the Firmware Configuration device emulation support 
is vulnerable to an OOB r/w access issue. It could occur while processing 
firmware configurations, if the current configuration entry value was set to 
be invalid(FW_CFG_INVALID=0xffff).

A privileged(CAP_SYS_RAWIO) user/process inside guest could use this flaw to 
crash the Qemu process instance resulting in DoS OR potentially execute 
arbitrary code with privileges of the Qemu process on the host.

Upstream fix:
- -------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-01/msg00428.html

Reference:
- ----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1296060


This issue was discovered by Mr Donghai Zhu of Alibaba Inc.

Thank you.
- --
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJWk9xHAAoJEN0TPTL+WwQfUuEP/1N9SRnLgrZknpztdvU83XJ0
oWoPuJX2HsNZO1v9DCnwkMkUE4ljsmTyocQ61ACUNv7fP3BxBBWoAeVZPsMC2UED
EGddY/Q5kne6KqVGJ2JaEOJ9Qlh8uxCoezk12x3oXIoAuj8z9oqpkMXTTgPZIQGU
M9+MI0FnMm8tIiPuQSpalZrQKp9SZDRvMnQVVNsjM/VdjYJzyT5yrZIDVHGXCqKt
A4g3u9M6oI+hFhKLwgtfuHbxuARKR/dbtHG6cDXqjrYESb6maRNtmk4ZGxGkVPYL
IXX+epKa5+ZNCV+3CbIO8foiISVvxUZyhyw2jWKIWryzGJvYk1ZKhMPqJKXPjWBI
Rn/6WqIcRPZ3qRI9gzwxJ0kVedkwmHwF67Qfgygl+HtMMP3bf6vFHrbqVW/PBh/o
fbGjOZm84/BNRsIesvOAHxwRz+MF/vs5q2eFkNHMHJRGiDrpyz8HTvRoTJWwbP2+
Ovi1OTbZu8dhHM6Vbk7OWyUWf0og8XCxkpzI2zxZ6+9UdFPXzUl9ApgHomi/Yrkq
Je/Q+rsEXK3pDHToeQGS4/Jzm1jEW1Dk75IS89lFdgq/EoL1OjRHT00kBIfVTTu8
IgY6DlBl4PiUA/GUIC6diUtVfytX7K9LdqnGS9FeyfhJtU4uMLDd5GYDmQ0XC1K6
rhAqUKOXNseX5rSf3urE
=XkHE
-----END PGP SIGNATURE-----
