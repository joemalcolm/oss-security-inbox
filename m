X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2620" "Tuesday" "26" "May" "2015" "14:17:45" "+0200" "Jason A. Donenfeld" "Jason@zx2c4.com" "<1432642669-7289-1-git-send-email-Jason@zx2c4.com>" "59" "[oss-security] [PATCH v2 0/4] ozwpan: Four remote packet-of-death vulnerabilities" nil nil nil "5" "2015052612:17:45" "[oss-security] [PATCH v2 0/4] ozwpan: Four remote packet-of-death vulnerabilities" (number mark "U       Jason@zx2c4. May 26   59/2620  " thread-indent "\"[oss-security] [PATCH v2 0/4] ozwpan: Four remote packet-of-death vulnerabilities\"\n") "<1431543500-4847-1-git-send-email-Jason@zx2c4.com>" ("<1431543500-4847-1-git-send-email-Jason@zx2c4.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19533 invoked by uid 550); 26 May 2015 12:18:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18421 invoked from network); 26 May 2015 12:18:26 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=from:to:cc
	:subject:date:message-id:in-reply-to:references; s=mail; bh=OkU7
	voX6GsRBEtZjZD0CkznR4EY=; b=HBQEXTcSy3aHNgdksgWdhOhUc5bgrdVyeKLl
	AXJiT3gBS1Vp0nlAR+/V48bdUw63XhaJ/yAWqx9ih2Qe5tQ05keCxSrXozKo/Xj+
	ReYCv6TexiE7VetOZqKCuV14TWlnO3tpOAdPanGiowdF8Iis2X0G4pJDJR6rQaY/
	kwPNDmdgNlNhNDC2MESSrAcXks1OEVwlMMh2ihzTbgXadSM6cU7YACsC1AZRfAwz
	u+A2nQkMsMwrPaJDODGhVtBD5qBZvBPwPwO+soq4XEaIimgjW6AdO1y05Zx8/+ud
	ma6b3uFGrimeWqF8cVWOSuhVJNjOuri3c23f5Nt73kjuoZkIBA==
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: oss-security <oss-security@lists.openwall.com>,
	linux-kernel@vger.kernel.org,
	Shigekatsu Tateno <shigekatsu.tateno@atmel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org
Cc: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Tue, 26 May 2015 14:17:45 +0200
Message-Id: <1432642669-7289-1-git-send-email-Jason@zx2c4.com>
X-Mailer: git-send-email 2.4.1
In-Reply-To: <1431543500-4847-1-git-send-email-Jason@zx2c4.com>
References: <1431543500-4847-1-git-send-email-Jason@zx2c4.com>
Subject: [oss-security] [PATCH v2 0/4] ozwpan: Four remote packet-of-death vulnerabilities

This is v2 for this patch series, fixing a compiler warning.

The ozwpan driver accepts network packets, parses them, and converts
them into various USB functionality. There are numerous security
vulnerabilities in the handling of these packets. Two of them result in
a memcpy(kernel_buffer, network_packet, -length), one of them is a
divide-by-zero, and one of them is a loop that decrements -1 until it's
zero.

I've written a very simple proof-of-concept for each one of these
vulnerabilities to aid with detecting and fixing them. The general
operation of each proof-of-concept code is:

  - Load the module with:
    # insmod ozwpan.ko g_net_dev=eth0
  - Compile the PoC with ozprotocol.h from the kernel tree:
    $ cp /path/to/linux/drivers/staging/ozwpan/ozprotocol.h ./
    $ gcc ./poc.c -o ./poc
  - Run the PoC:
    # ./poc eth0 [mac-address]

These PoCs should also be useful to the maintainers for testing out
constructing and sending various other types of malformed packets against
which this driver should be hardened.

Please assign CVEs for these vulnerabilities. I believe the first two
patches of this set can receive one CVE for both, and the remaining two
can receive one CVE each.


On a slightly related note, there are several other vulnerabilities in
this driver that are worth looking into. When ozwpan receives a packet,
it casts the packet into a variety of different structs, based on the
value of type and length parameters inside the packet. When making these
casts, and when reading bytes based on this length parameter, the actual
length of the packet in the socket buffer is never actually consulted. As
such, it's very likely that a packet could be sent that results in the
kernel reading memory in adjacent buffers, resulting in an information
leak, or from unpaged addresses, resulting in a crash. In the former case,
it may be possible with certain message types to actually send these
leaked adjacent bytes back to the sender of the packet. So, I'd highly
recommend the maintainers of this driver go branch-by-branch from the
initial rx function, adding checks to ensure all reads and casts are
within the bounds of the socket buffer.

Jason A. Donenfeld (4):
  ozwpan: Use proper check to prevent heap overflow
  ozwpan: Use unsigned ints to prevent heap overflow
  ozwpan: divide-by-zero leading to panic
  ozwpan: unchecked signed subtraction leads to DoS

 drivers/staging/ozwpan/ozhcd.c     |  8 ++++----
 drivers/staging/ozwpan/ozusbif.h   |  4 ++--
 drivers/staging/ozwpan/ozusbsvc1.c | 18 ++++++++++++++----
 3 files changed, 20 insertions(+), 10 deletions(-)

-- 
2.4.1

