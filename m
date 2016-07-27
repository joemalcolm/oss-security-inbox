X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2302" "Wednesday" "27" "July" "2016" "20:30:01" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1607271946420.18244@wniryva>" "68" "[oss-security] CVE-2016-5403 Qemu: virtio: unbounded memory allocation on host via guest leading to DoS" nil nil nil "7" "2016072715:00:01" "[oss-security] CVE-2016-5403 Qemu: virtio: unbounded memory allocation on host via guest leading to DoS" (number mark "U       ppandit@redh Jul 27   68/2302  " thread-indent "\"[oss-security] CVE-2016-5403 Qemu: virtio: unbounded memory allocation on host via guest leading to DoS\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30128 invoked by uid 550); 27 Jul 2016 15:00:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30104 invoked from network); 27 Jul 2016 15:00:19 -0000
Date: Wed, 27 Jul 2016 20:30:01 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
cc: Stefan Hajnoczi <shajnocz@redhat.com>, sstabellini@kernel.org,
        zhenhaohong@gmail.com
Message-ID: <alpine.LFD.2.20.1607271946420.18244@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.39]); Wed, 27 Jul 2016 15:00:07 +0000 (UTC)
Subject: [oss-security] CVE-2016-5403 Qemu: virtio: unbounded memory allocation on host via
 guest leading to DoS

   Hello,

Quick emulator(Qemu) built with the virtio framework is vulnerable to an 
unbounded memory allocation issue. It was found that a malicious guest user 
could submit more requests than the virtqueue size permits, without waiting 
for their completion. This requires reusing vring descriptors in more than one 
request, which is incorrect but possible. Processing a request allocates a 
'VirtQueueElement' object and therefore causes unbounded memory allocation 
controlled by the guest.

A privileged guest user could use this flaw to potentially crash the guest 
resulting in DoS. Memory exhaustion would also affect other guests and 
services running on the host.

This issue was discovered by Zhenhao Hong of the 360 Marvel Team.

Reference:
----------
   -> https://bugzilla.redhat.com/show_bug.cgi?id=1358359

Given below is a proposed patch to fix this issue:

===
virtio: error out if guest exceeds virtqueue size

A broken or malicious guest can submit more requests than the virtqueue
size permits.

The guest can submit requests without bothering to wait for completion
and is therefore not bound by virtqueue size.  This requires reusing
vring descriptors in more than one request, which is incorrect but
possible.  Processing a request allocates a VirtQueueElement and
therefore causes unbounded memory allocation controlled by the guest.

Exit with an error if the guest provides more requests than the
virtqueue size permits.  This bounds memory allocation and makes the
buggy guest visible to the user.

Signed-off-by: Stefan Hajnoczi <stefanha@redhat.com>
---
  hw/virtio/virtio.c | 5 +++++
  1 file changed, 5 insertions(+)

diff --git a/hw/virtio/virtio.c b/hw/virtio/virtio.c
index 18153d5..398c03f 100644
--- a/hw/virtio/virtio.c
+++ b/hw/virtio/virtio.c
@@ -561,6 +561,11 @@ void *virtqueue_pop(VirtQueue *vq, size_t sz)

      max = vq->vring.num;

+    if (vq->inuse >= max) {
+        error_report("Virtqueue size exceeded");
+        exit(1);
+    }
+
      i = head = virtqueue_get_head(vq, vq->last_avail_idx++);
      if (virtio_vdev_has_feature(vdev, VIRTIO_RING_F_EVENT_IDX)) {
          vring_set_avail_event(vq, vq->last_avail_idx);
-- 
2.7.4
===


Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
