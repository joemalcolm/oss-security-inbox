X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1633" "Saturday" "22" "August" "2015" "01:45:07" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1508220141170.14543@wniryva>" "45" "[oss-security] CVE-2015-5225 Qemu: ui: vnc: heap memory corruption issue" nil nil nil "8" "2015082120:15:07" "[oss-security] CVE-2015-5225 Qemu: ui: vnc: heap memory corruption issue" (number mark "U       ppandit@redh Aug 22   45/1633  " thread-indent "\"[oss-security] CVE-2015-5225 Qemu: ui: vnc: heap memory corruption issue\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23890 invoked by uid 550); 21 Aug 2015 20:15:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23852 invoked from network); 21 Aug 2015 20:15:36 -0000
X-X-Sender: pjp@javelin
Message-ID: <alpine.LFD.2.20.1508220141170.14543@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
Date: Sat, 22 Aug 2015 01:45:07 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2015-5225 Qemu: ui: vnc: heap memory corruption issue
To: oss security list <oss-security@lists.openwall.com>

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

    Hello,

Qemu emulator built with the VNC display driver support is vulnerable to a 
buffer overflow flaw leading to a heap memory corruption issue. It could occur 
while refreshing the server display surface via routine 
vnc_refresh_server_surface().

A privileged guest user could use this flaw to corrupt the heap memory and 
crash the Qemu process instance OR potentially use it to execute arbitrary 
code on the host.

Upstream fix:
- -------------
   -> https://lists.gnu.org/archive/html/qemu-devel/2015-08/msg02495.html

Issue introduced by:
- --------------------
   -> http://git.qemu.org/?p=qemu.git;a=commit;h=bea60dd7679364493a0d7f5b


Thank you.
- --
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJV14bLAAoJEN0TPTL+WwQfRZsP/iEpjrdXOKwwf3PUmJafvLBj
yg7SxSHhrg0CFbD8zpNCD8u5/umTSH+VyCZaU0B+gVbctCqRe5zl3WOI/Q4zFOv9
desKe49REGgEY140F/V7aJxVkb4jf9F819H5tlyO/bH49Mexp/5VrggQ7mSMFUbS
F1CcXZcOguIDMyrP7a98QCJKTZfzuy8UCHLDjc9WupjsNKnJ8Wux/cN+eZiE3c08
PwVQOg49PJH6z/c5pJovv7j5A6ic4FacaHYdUloszRmTR4zZCdCcmNNguCHphlo9
rsJzvVgdF2+lzPvgxwDK41qswg2SngUQKb/OeCxZqjBusplD4Ke67C+WDaYVAMip
AkPBmm/ut9Ki06zMl53FbirShDxFySJG5FXLDMWoSMEBfv9MuNkbc98jRNMjNwYW
ARYFwVuLTWourvr4Zk69BmTbitLe+DvY2j5k6593X+I1T7ZTqBl52mp7AslU6zBt
JQ4Oknhelg7Qlr8CAiHoYR3vql5NABenBne7PY2VTdS9fAkKObIJN8dKIqZgZQNY
N1pMeOoROn7GqDNJq7yJF9jcut5DwC5eiVjcxqS6Efm2X1Q5XmW7l37u7rodEg8y
PzJxXZeFKH+1VYTc6t/BU9qUQyWbVhRpXqSUFSsWCTx4Mnkfe2SioNSwUwgHQvK+
cD0hqfRIoZmFIjA90/G6
=wD0r
-----END PGP SIGNATURE-----
