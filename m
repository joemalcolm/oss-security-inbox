X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1395" "Tuesday" "10" "November" "2015" "08:46:26" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1511100841340.20288@wniryva>" "37" "[oss-security] CVE-2015-8104 kernel: kvm: guest to host DoS by triggering an infinite loop in microcode via #DB exception" "^Date:" nil nil "11" "2015111003:16:26" "[oss-security] CVE-2015-8104 kernel: kvm: guest to host DoS by triggering an infinite loop in microcode via #DB exception" (number mark "        ppandit@redh Nov 10   37/1395  " thread-indent "\"[oss-security] CVE-2015-8104 kernel: kvm: guest to host DoS by triggering an infinite loop in microcode via #DB exception\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27856 invoked by uid 550); 10 Nov 2015 03:16:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27837 invoked from network); 10 Nov 2015 03:16:53 -0000
X-X-Sender: pjp@javelin
Message-ID: <alpine.LFD.2.20.1511100841340.20288@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Date: Tue, 10 Nov 2015 08:46:26 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2015-8104 kernel: kvm: guest to host DoS by triggering an infinite
 loop in microcode via #DB exception
To: oss security list <oss-security@lists.openwall.com>

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

   Hello,

A guest to host DoS issue was found affecting various hypervisors. In that, a 
a guest can DoS the host by triggering an infinite stream of "debug check" 
(#DB) exceptions. This causes the microcode to enter an infinite loop where 
the core never receives another interrupt. The host kernel panics due to this 
effect.

Reference:
- ----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1278496

Thank you.
- --
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJWQWGKAAoJEN0TPTL+WwQfE10P/RZp6169cBa+wBCZc5I9shuW
Hvl3JRDkOGJJnc6Jjg01cFnqBSIbncNWo4acq6PosPrlVanaeSAGXkzWq/oszLcj
uZevt8nQN9caOvNivLUEHMLtWBXNCojLWObABj7BvrLL32JIAgkO0cEceS6cb8Vt
rOCWNpWaj+FaSh36UreC8tTAsUxneXw+BuuN2+uasXWIJYZeJCekK916rjS9WAr2
bEdYmk0P4cnIQ+u+8cdEzmz07He8WSIQ8jrpiyz+7zVCj7Z7BjyR8cEyiySZRJlC
errCzmGKXTXH38M5aYv4s+ZDSHKiE5xngcao0slGIOFXz0nLCNqqk1gUSsuH97Cx
CNH8UujEafM+YC2GBElFZKhDzbMpJEcQodtEIgQ1exCU8GoexCTzsDctrXMtA5Zp
2y2O8IA++fFQ6CeqiC0zuzh6OSRm8C65OVFyzbrmpNMiaZpUNmLe2SdSOQhwBlLJ
fTQymbEe6wWvXooU2rR4RU0+6DkEMmWbCLA2aAZMtyLNny6IqFVHYlnZM3mkpvZT
p33N8ALlJjjgmSTRUPkFzWKcVNbZ8K6kBzGMW3/TIC2l3vb74JNzp1SEisUcpTgt
oKTAfyRrF7GwNPBwi1UxpYfvKOj62RZU+wTYoldvyjrvmqsvMNmdDxh5yw/aKANS
K0CMyjpUBGXe2x2qG8d9
=3ufF
-----END PGP SIGNATURE-----
