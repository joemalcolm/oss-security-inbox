X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4605" "Monday" "24" "April" "2017" "20:17:56" "+0200" "Solar Designer" "solar@openwall.com" "<20170424181756.GA2236@openwall.com>" "113" "Re: [oss-security] CVE request: remote heap overflow in linux networking stack" "^Cc:" nil nil "4" "2017042418:17:56" "[oss-security] CVE request: remote heap overflow in linux networking stack" (number mark "        solar@openwa Apr 24  113/4605  " thread-indent "\"Re: [oss-security] CVE request: remote heap overflow in linux networking stack\"\n") "<CAHmME9r_F44PvenZbTK4LyqTucMpV+o75t3FH8CcWF8TyQuhgQ@mail.gmail.com>" ("<CAHmME9r_F44PvenZbTK4LyqTucMpV+o75t3FH8CcWF8TyQuhgQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25688 invoked by uid 550); 24 Apr 2017 18:18:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24556 invoked from network); 24 Apr 2017 18:18:14 -0000
Message-ID: <20170424181756.GA2236@openwall.com>
References: <CAHmME9r_F44PvenZbTK4LyqTucMpV+o75t3FH8CcWF8TyQuhgQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="LQksG6bCIzRHxTLp"
Content-Disposition: inline
In-Reply-To: <CAHmME9r_F44PvenZbTK4LyqTucMpV+o75t3FH8CcWF8TyQuhgQ@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Cc: oss-security <oss-security@lists.openwall.com>
Date: Mon, 24 Apr 2017 20:17:56 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request: remote heap overflow in linux networking stack
To: "Jason A. Donenfeld" <Jason@zx2c4.com>

--LQksG6bCIzRHxTLp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Jason,

On Mon, Apr 24, 2017 at 08:00:10PM +0200, Jason A. Donenfeld wrote:
> Requesting a CVE for [1], a heap overflow I found in Linux.

> [1] https://git.kernel.org/pub/scm/linux/kernel/git/davem/net.git/commit/?id=4d6fa57b4dab0d77f4d8e9d9c73d1e63f6fe8fee

Thank you for bringing this in here.

I've attached the above URL's content in text/plain form, as required by
oss-security content guidelines (actual content must be on the list, not
only included by reference).

The bug is in drivers/net/macsec.c implementing IEEE 802.1AE (MACsec).
I hope it is rarely used and thus rarely exposed, and Linux kernel
support for it is rather new, right?

oss-security is no longer a place to request CVE IDs.  You may request a
CVE ID directly from MITRE:

https://cveform.mitre.org

Once you have the CVE ID, please post it to this same thread in here.

(For non-public issues, it is also still possible to request CVE IDs
along with notification to the (linux-)distros lists, as long as the
primary purpose of giving advance notice to the distros is providing
them with actionable information.  A few of the distros are CNAs, so
they'd assign CVE IDs from their pools.)

Alexander

--LQksG6bCIzRHxTLp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="linux-drivers-net-macsec.txt"

author	Jason A. Donenfeld <Jason@zx2c4.com>	2017-04-21 23:14:48 +0200
committer	David S. Miller <davem@davemloft.net>	2017-04-24 13:46:58 -0400
commit	4d6fa57b4dab0d77f4d8e9d9c73d1e63f6fe8fee (patch)
tree	c5516c47d1680f2b0d4a959242a51035d4d2a744
parent	b7c8487cb3d99509220092fe77a2464dff43f015 (diff)

macsec: avoid heap overflow in skb_to_sgvec

While this may appear as a humdrum one line change, it's actually quite
important. An sk_buff stores data in three places:

1. A linear chunk of allocated memory in skb->data. This is the easiest
   one to work with, but it precludes using scatterdata since the memory
   must be linear.
2. The array skb_shinfo(skb)->frags, which is of maximum length
   MAX_SKB_FRAGS. This is nice for scattergather, since these fragments
   can point to different pages.
3. skb_shinfo(skb)->frag_list, which is a pointer to another sk_buff,
   which in turn can have data in either (1) or (2).

The first two are rather easy to deal with, since they're of a fixed
maximum length, while the third one is not, since there can be
potentially limitless chains of fragments. Fortunately dealing with
frag_list is opt-in for drivers, so drivers don't actually have to deal
with this mess. For whatever reason, macsec decided it wanted pain, and
so it explicitly specified NETIF_F_FRAGLIST.

Because dealing with (1), (2), and (3) is insane, most users of sk_buff
doing any sort of crypto or paging operation calls a convenient function
called skb_to_sgvec (which happens to be recursive if (3) is in use!).
This takes a sk_buff as input, and writes into its output pointer an
array of scattergather list items. Sometimes people like to declare a
fixed size scattergather list on the stack; othertimes people like to
allocate a fixed size scattergather list on the heap. However, if you're
doing it in a fixed-size fashion, you really shouldn't be using
NETIF_F_FRAGLIST too (unless you're also ensuring the sk_buff and its
frag_list children arent't shared and then you check the number of
fragments in total required.)

Macsec specifically does this:

        size += sizeof(struct scatterlist) * (MAX_SKB_FRAGS + 1);
        tmp = kmalloc(size, GFP_ATOMIC);
        *sg = (struct scatterlist *)(tmp + sg_offset);
	...
        sg_init_table(sg, MAX_SKB_FRAGS + 1);
        skb_to_sgvec(skb, sg, 0, skb->len);

Specifying MAX_SKB_FRAGS + 1 is the right answer usually, but not if you're
using NETIF_F_FRAGLIST, in which case the call to skb_to_sgvec will
overflow the heap, and disaster ensues.

Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
Cc: stable@vger.kernel.org
Cc: security@kernel.org
Signed-off-by: David S. Miller <davem@davemloft.net>

1 files changed, 1 insertions, 1 deletions
diff --git a/drivers/net/macsec.c b/drivers/net/macsec.c
index ff0a5ed..dbab05a 100644
--- a/drivers/net/macsec.c
+++ b/drivers/net/macsec.c
@@ -2716,7 +2716,7 @@ static netdev_tx_t macsec_start_xmit(struct sk_buff *skb,
 }
 
 #define MACSEC_FEATURES \
-	(NETIF_F_SG | NETIF_F_HIGHDMA | NETIF_F_FRAGLIST)
+	(NETIF_F_SG | NETIF_F_HIGHDMA)
 static struct lock_class_key macsec_netdev_addr_lock_key;
 
 static int macsec_dev_init(struct net_device *dev)

--LQksG6bCIzRHxTLp--
