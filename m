X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1414" "Thursday" "23" "July" "2015" "16:20:36" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1507231618390.9639@wniryva>" "38" "[oss-security] CVE-2015-5158 Qemu: scsi stack buffer overflow" nil nil nil "7" "2015072310:50:36" "[oss-security] CVE-2015-5158 Qemu: scsi stack buffer overflow" (number mark "U       ppandit@redh Jul 23   38/1414  " thread-indent "\"[oss-security] CVE-2015-5158 Qemu: scsi stack buffer overflow\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11983 invoked by uid 550); 23 Jul 2015 10:51:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11957 invoked from network); 23 Jul 2015 10:51:01 -0000
Date: Thu, 23 Jul 2015 16:20:36 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
Message-ID: <alpine.LFD.2.20.1507231618390.9639@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
Subject: [oss-security] CVE-2015-5158 Qemu: scsi stack buffer overflow

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

   Hello,

Qemu emulator built with the SCSI device emulation support is vulnerable to a 
stack buffer overflow issue. It could occur while parsing SCSI command 
descriptor block with an invalid operation code.

A privileged(CAP_SYS_RAWIO) user inside guest could use this flaw to crash the 
Qemu instance resulting in DoS.

Upstream fix:
- -------------
   -> https://lists.nongnu.org/archive/html/qemu-devel/2015-07/msg04558.html

Thank you.
- --
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJVsMb8AAoJEN0TPTL+WwQfqZMQAKJ3KxyJXTGkh8zUjqOklHn/
F25jyVZfar02oNsgc8CSBAk/ySsPUH6LWnOrTPD8ToeZtuYuDgLi6qjO6Zpa6sl/
SEdnZcJJMre79Ib1w/LLqPwd7nKeSaeXEVnX8zDR/cF4ktFrH0mmrF5B6AOSVw23
riktn/LOfMnBhyIM51Xiij5Y+yzizP0pihosjaX7s5QBfUFK4TDYPYwN5kmXizzh
JGjGT9EwZgEVTe1jXNAFyuF8njz0CzU9QylyHMbRgpn3HoGBMoIIrAGw1B30TzFc
cVySGLpFzy7qbho+SRqjV4+mgFyy0ueE4sspt83Cutcnv0MkXgXRlRWHM3XhT4XU
GqUprZKnSMszjyh+s1GkQO64ATcouW9t1fxUkn15StOqb0xOcO5dTduZo8Pd0t9i
vzKBw8zJMACHYLn5GttuW9RNTtEfzbFjF/fbl7d0rT/ET8L3tJE/F296/Enl3Uak
etNbbU1eLFX5y4JfQojUzmcC2dPYnkO7jGykd2wm4NsjMT2H5havy8w7SJrJOYTz
NnpudF+vuGoo6PszvFLkNj3g75TbroWNEHsNmYfZ5EsKmLAls7DFqIMFrIepUyY9
dKGhZjGwck97uKh8wFnprBczH+G9zWAVLJVGIbZuD2DjZy9Vl3ZZ9J+f/7UQSBYP
5CPYh59L4D1+GCI5ZmAX
=/KWH
-----END PGP SIGNATURE-----
