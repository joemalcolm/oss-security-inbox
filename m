X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4653" "Tuesday" "6" "December" "2016" "11:50:57" "+0900" "Philip Pettersson" "philip.pettersson@gmail.com" "<CAHQ_-nTXwwmno6iu2fFRsH+JJwZ4rRT93kf7_eRFtoi00kJK2g@mail.gmail.com>" "119" "[oss-security] CVE-2016-8655 Linux af_packet.c race condition (local root)" nil nil nil "12" "2016120602:50:57" "[oss-security] CVE-2016-8655 Linux af_packet.c race condition (local root)" (number mark "U       philip.pette Dec  6  119/4653  " thread-indent "\"[oss-security] CVE-2016-8655 Linux af_packet.c race condition (local root)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22152 invoked by uid 550); 6 Dec 2016 03:01:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16302 invoked from network); 6 Dec 2016 02:51:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=BpkgYaHSv/v8ZE5UXOvoHzNMyqz8Yk450WXXZG8Belk=;
        b=K4Wm+nvCLVAflJcm833OjB8bscT7f3cYZytY28oxfhuFQ3unLKPt8jk75k33bQ37Km
         OwKjXHQ+znPY8QNyF7w0JAXcGrzhDCdjPWwR8CbEIDFp5TlyFIklVnlboyk5ePSGmvEt
         KJm9pbX+RzQM+5jmMdyWAu/WlBLPlObBxaxRhqC9jJ5NOXdjTmblBQ38jAJqOloTSVDf
         yr3LrRIP+vSacC8z1GIlxEYVgwlwonVhz7e0KaVJS/7osGdAm4kqHA6y/gy1CC5Zdd1n
         7glbAY2EuuEpLtAiJ1pMYx4LSSNIGFuON35d6TyENII4JICeG+FIWBplYaEndDs379Wh
         REiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=BpkgYaHSv/v8ZE5UXOvoHzNMyqz8Yk450WXXZG8Belk=;
        b=e0Pj9Jr2i6I4IMtUEUZF9OH4bPfNXd/sC8qFsgqusMx+RIezcFskltHvKNaROlWg1I
         hUTnaVvXW/1JFkjxaKRsV6ZneOd5YQEi+5h+yobN+voB0HbTt0JrD48xhDB+bRFshCq6
         9f2OOahNSRpIBg8MZoiT1hxgk8HhKVIDGkGgKNaK1iSx79HiX9+GHGKZHUIRatBZF3vB
         enCFoE+yr5JVyVEvgzhGZNzcDK0wTR6K/H3Cf9vwuBbspUT8F57WjhySisiOcfYQthbz
         0aRDtN8gwmA6A8pY1JwNMRITypyhxU726acV1CSiGV7MCBj2pXJ1cW/dLZ8gTPh/GjN7
         7TDg==
X-Gm-Message-State: AKaTC00eQA/EfvdMHELjSjBZ74onZwFbcZojM6SiRGTXdUMRoFYSaOH8fyuj5OV6lVwEctJoSgzA7Js05HZ0zQ==
X-Received: by 10.13.251.193 with SMTP id l184mr55817234ywf.17.1480992657912;
 Mon, 05 Dec 2016 18:50:57 -0800 (PST)
MIME-Version: 1.0
From: Philip Pettersson <philip.pettersson@gmail.com>
Date: Tue, 6 Dec 2016 11:50:57 +0900
Message-ID: <CAHQ_-nTXwwmno6iu2fFRsH+JJwZ4rRT93kf7_eRFtoi00kJK2g@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] CVE-2016-8655 Linux af_packet.c race condition (local root)

Hello,

This is an announcement about CVE-2016-8655 which is a race-condition
I found in Linux (net/packet/af_packet.c). It can be exploited to gain
kernel code execution from unprivileged processes.

The bug was introduced on Aug 19, 2011:
https://github.com/torvalds/linux/commit/f6fb8f100b807378fda19e83e5ac6828b638603a

Fixed on Nov 30, 2016:
https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=84ac7260236a49c79eede91617700174c2c19b0c

=*=*=*=*=*=*=*=*=   BUG DETAILS  =*=*=*=*=*=*=*=*=

To create AF_PACKET sockets you need CAP_NET_RAW in your network
namespace, which can be acquired by unprivileged processes on
systems where unprivileged namespaces are enabled (Ubuntu, Fedora, etc).
It can be triggered from within containers to compromise the host kernel.
On Android, processes with gid=3004/AID_NET_RAW are able to create
AF_PACKET sockets (mediaserver) and can trigger the bug.

I found the bug by reading code paths that have been opened up by the
emergence of unprivileged namespaces, something I think should be
off by default in all Linux distributions given its history of
security vulnerabilities.

The problem is inside packet_set_ring() and packet_setsockopt().
We can reach packet_set_ring() by calling setsockopt() on the socket
using the PACKET_RX_RING option.

If the version of the packet socket is TPACKET_V3, a timer_list
object will be initialized by packet_set_ring() when it calls
init_prb_bdqc().

...
                switch (po->tp_version) {
                case TPACKET_V3:
                /* Transmit path is not supported. We checked
                 * it above but just being paranoid
                 */
                        if (!tx_ring)
                                init_prb_bdqc(po, rb, pg_vec, req_u);
                        break;
                default:
                        break;
                }
...

The function flow to set up the timer is:
packet_set_ring()->init_prb_bdqc()->prb_setup_retire_blk_timer()->
prb_init_blk_timer()->prb_init_blk_timer()->init_timer()

When the socket is closed, packet_set_ring() is called again
to free the ring buffer and delete the previously initialized
timer if the packet version is > TPACKET_V2:

...
        if (closing && (po->tp_version > TPACKET_V2)) {
                /* Because we don't support block-based V3 on tx-ring */
                if (!tx_ring)
                        prb_shutdown_retire_blk_timer(po, rb_queue);
        }
...

The issue is that we can change the packet version to TPACKET_V1
with packet_setsockopt() after init_prb_bdqc() has been executed
and before packet_set_ring() has returned.

There is an attempt to deny changing socket versions after a ring
buffer has been initialized, but it is insufficient:

...
        case PACKET_VERSION:
        {
...
                if (po->rx_ring.pg_vec || po->tx_ring.pg_vec)
                        return -EBUSY;
...

There's plenty of room to race this code path between the calls to
init_prb_bdqc() and swap(rb->pg_vec, pg_vec) in packet_set_ring().

When the socket is closed, packet_set_ring() will not delete the
timer since the socket version is now TPACKET_V1. The struct
timer_list that describes the timer object is located inside the
struct packet_sock for the socket itself however and will be
freed with a call to kfree().

We then have a use-after-free on a timer object that can be
exploited by various poisoning attacks on the SLAB allocator (I find
add_key() to be the most reliable). This will ultimately lead to the
kernel jumping to a manipulated function pointer when the timer expires.

The bug is fixed by taking lock_sock(sk) in packet_setsockopt() when
changing the packet version while also taking the lock at the start
of packet_set_ring().

My exploit defeats SMEP/SMAP and will give a rootshell on Ubuntu 16.04,
I will hold off a day on publishing it so people have some time to update.

New Ubuntu kernels are out so please update as soon as possible.

=*=*=*=*=*=*=*=*=    TIMELINE    =*=*=*=*=*=*=*=*=

2016-11-28: Bug reported to security@kernel.org
2016-11-30: Patch submitted to netdev, notification sent to linux-distros
2016-12-02: Patch committed to mainline kernel
2016-12-06: Public announcement

=*=*=*=*=*=*=*=*=     LINKS      =*=*=*=*=*=*=*=*=

https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2016-8655
https://github.com/torvalds/linux/commit/f6fb8f100b807378fda19e83e5ac6828b638603a
https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=84ac7260236a49c79eede91617700174c2c19b0c
https://www.ubuntu.com/usn/usn-3151-1/

=*=*=*=*=*=*=*=*=     CREDIT     =*=*=*=*=*=*=*=*=

Philip Pettersson
