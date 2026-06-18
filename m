X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/18/1
Message-ID: <CALFbBidcDAReEdmiDoG4-ORaoag-ENh1oDLnT=Ebq53bbN8oEw@mail.gmail.com>
Date: Thu, 18 Jun 2026 11:28:51 +0530
From: Pavitra Jha <jhapavitra98@...il.com>
To: oss-security@...ts.openwall.com
Subject: [CVE-2026-43495] Linux kernel: slab out-of-bounds read in MediaTek t7xx WWAN driver
Content-Type: text/plain; charset=utf-8

Hi,

I'm reporting a slab out-of-bounds read in the MediaTek t7xx WWAN driver,
assigned CVE-2026-43495 (CVSS 8.8 HIGH).

## Affected Code

drivers/net/wwan/t7xx/t7xx_port_ctrl_msg.c
t7xx_port_enum_msg_handler()

Affected range: v5.18-rc1 through current mainline (April 2026)
Config: CONFIG_MTK_T7XX + CONFIG_WWAN

## Bug Description

The driver parses a modem-supplied CTL_ID_PORT_ENUM control message by
casting skb->data directly to struct port_msg* and extracting port_count
from the info field:

    port_count = FIELD_GET(PORT_MSG_PRT_CNT, le32_to_cpu(port_msg->info));
    // PORT_MSG_PRT_CNT = GENMASK(15, 0) -> max value 65535

    for (i = 0; i < port_count; i++) {
        u32 port_info = le32_to_cpu(port_msg->data[i]); /* OOB read */
        ...
    }

struct port_msg has a 12-byte fixed base followed by a flexible array
member data[]. No validation is performed to ensure the actual buffer
length covers the space implied by port_count. A malformed payload with
port_count=65535 over a 12-byte allocation causes the loop to read up to
~262 KB past the allocation boundary.

The existing integrity checks (version, head_pattern, tail_pattern) are
entirely bypassable because all three values are attacker-controlled fields
in the DMA payload.

Additionally, the out-of-bounds u32 read from data[i] is passed as ch_id
into t7xx_port_proxy_chl_enable_disable(), routing arbitrary slab memory
contents into driver control flow.

## Attack Vector

Requires control of the baseband modem processor (e.g., via OTA base
station exploit or hardware attack). The t7xx family is used in Intel 5G
Solution 5000 series cellular modules found in corporate laptops, making
this a relevant cross-boundary pivot primitive.

## KASAN Output

    BUG: KASAN: slab-out-of-bounds in t7xx_port_enum_msg_handler+0x1ae/0x1c0
    Read of size 4 at addr ffff888008654d8c by task insmod/59

    The buggy address is located 0 bytes to the right of
    allocated 12-byte region [ffff888008654d80, ffff888008654d8c)

## Fix

Pass msg_len through to t7xx_port_enum_msg_handler() and validate using
struct_size():

    if (msg_len < struct_size(port_msg, data, port_count))
        return -EINVAL;

Patches merged across stable branches. Full patch history:
https://lore.kernel.org/all/?q=Pavitra+Jha

## Writeup

https://pavitrajha.github.io/blog/t7xx-oob-writeup.html

## References

https://www.cve.org/CVERecord?id=CVE-2026-43495

Regards,
Pavitra Jha
jhapavitra98@...il.com
pavitrajha.github.io

