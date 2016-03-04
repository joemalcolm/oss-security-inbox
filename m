X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["686" "Friday" "4" "March" "2016" "15:34:36" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1603041532360.19054@wniryva>" "22" "[oss-security] CVE request Qemu: rng-random: arbitrary stack based allocation leading to corruption" "^Date:" nil nil "3" "2016030410:04:36" "[oss-security] CVE request Qemu: rng-random: arbitrary stack based allocation leading to corruption" (number mark "        ppandit@redh Mar  4   22/686   " thread-indent "\"[oss-security] CVE request Qemu: rng-random: arbitrary stack based allocation leading to corruption\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9801 invoked by uid 550); 4 Mar 2016 10:04:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9780 invoked from network); 4 Mar 2016 10:04:52 -0000
X-X-Sender: pjp@javelin
Message-ID: <alpine.LFD.2.20.1603041532360.19054@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]); Fri, 04 Mar 2016 10:04:40 +0000 (UTC)
Date: Fri, 4 Mar 2016 15:34:36 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request Qemu: rng-random: arbitrary stack based allocation
 leading to corruption
To: oss security list <oss-security@lists.openwall.com>

   Hello,

Qemu emulator built with the Pseudo Random Number Generator(PRNG) back-end 
support is vulnerable to an arbitrary stack based allocation and memory 
corruption via random bytes issue. It could occur when a guest requests for 
entropy for random number generation.

A user/process inside guest could use this flaw to crash the Qemu process 
resulting in DoS.

Upstream patch:
---------------
   -> http://git.qemu.org/?p=qemu.git;a=commit;h=60253ed1e6ec6d8e5ef2efe7bf755f475dce9956

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1314676

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
