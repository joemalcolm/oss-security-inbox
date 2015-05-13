X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2550" "Wednesday" "13" "May" "2015" "20:58:16" "+0200" "Jason A. Donenfeld" "Jason@zx2c4.com" "<1431543500-4847-1-git-send-email-Jason@zx2c4.com>" "57" "[oss-security] [PATCH 0/4] ozwpan: Four remote packet-of-death vulnerabilities" nil nil nil "5" "2015051318:58:16" "[oss-security] [PATCH 0/4] ozwpan: Four remote packet-of-death vulnerabilities" (number mark "        Jason@zx2c4. May 13   57/2550  " thread-indent "\"[oss-security] [PATCH 0/4] ozwpan: Four remote packet-of-death vulnerabilities\"\n") "<20150513185322.GA4029@kroah.com>" ("<20150513185322.GA4029@kroah.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18148 invoked by uid 550); 13 May 2015 18:59:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17970 invoked from network); 13 May 2015 18:58:49 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=from:to:cc
	:subject:date:message-id:in-reply-to:references; s=mail; bh=tQMf
	aRbcY2s9tCo1IcAcYNLNhbo=; b=pmVFMnuG2CUGnXQAfTYpVcJNujAuZvjNhPIa
	saOos4FbP2EK2bYV67RMDv9fu+MOxGuK4t5tUBC6nBSVUaBZ8hztJ3VgAVCpdtc7
	kuEGF7zk4/JQhSquJTICNcx9bp7tY0QFh07eFOIcQg01InRZrAYVLLfvst4EBJcr
	mf+ff+SGXi9Ycf8765A80XRXQDtttwkk0HaRoMghIDzBJURIB/5OG3qyr4zXsTA/
	x28U0PvEVOixL4aJfiXkUoZIcFSmCj7k5hxD3qCw15wz4CP1PA8GmAu9F3dTMW5Y
	T2eBnL97f7i45Ye+kZwoj1nnmN1FeUw5+s8e5ornyQ05bdGxIQ==
Message-Id: <1431543500-4847-1-git-send-email-Jason@zx2c4.com>
X-Mailer: git-send-email 2.3.6
In-Reply-To: <20150513185322.GA4029@kroah.com>
References: <20150513185322.GA4029@kroah.com>
Cc: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Wed, 13 May 2015 20:58:16 +0200
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [PATCH 0/4] ozwpan: Four remote packet-of-death vulnerabilities
To: oss-security <oss-security@lists.openwall.com>,
	linux-kernel@vger.kernel.org,
	Shigekatsu Tateno <shigekatsu.tateno@atmel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org

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
 drivers/staging/ozwpan/ozusbsvc1.c | 11 +++++++++--
 3 files changed, 15 insertions(+), 8 deletions(-)

-- 
2.3.6

