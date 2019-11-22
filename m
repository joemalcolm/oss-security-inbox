X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3466" "Friday" "22" "November" "2019" "13:38:01" "+0800" "huangwen" "huangwenabc@gmail.com" "<CADt2dQcbonV8WW_ZUfuzVpTir3nSDCdQ+Tf7LVOeGaQsWE=tGQ@mail.gmail.com>" "73" "[oss-security] Linux kernel: three buffer overflow in the marvell wifi driver" "^Date:" nil nil "11" "2019112205:38:01" "[oss-security] Linux kernel: three buffer overflow in the marvell wifi driver" (number mark "        huangwenabc@ Nov 22   73/3466  " thread-indent "\"[oss-security] Linux kernel: three buffer overflow in the marvell wifi driver\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Linux kernel: three buffer overflow in the marvell wifi driver" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15817 invoked by uid 550); 22 Nov 2019 12:00:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27680 invoked from network); 22 Nov 2019 05:38:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=iLhdEum8qzHdGkDWg7Z5K5SREEk7AbfhVKDqk4KwtSQ=;
        b=JIjlDnTrn4xou8jA7fhUh9uekNIdHt3ToJIP8zj9VPoeFeBJQNA32o5Hjw8IyWwehb
         1bGGJi3yMVo/vkh/D6UKyOv44vkm7By47DZHiUml5N5TQEgVfqQA2XBsII5fTtaTjH5O
         FBZIcBZ4knpIoO/gLR7WK8CNZ4wEmdygZY7K9qyTodkyzA8yLmtA1169WIDWY9eVF75c
         pHA0SXLCKO8Rt8gO+DxpyC9c9YRRt59PqrB755YxmsAWHgffSO8TVBmAEAa+gvev7w3o
         NE3O1fl0i8p5JDdyA920djDXsBKMsJueg4WBMeeGde88wob6qpTCqlIkpjkl8SwKGAiT
         rVyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=iLhdEum8qzHdGkDWg7Z5K5SREEk7AbfhVKDqk4KwtSQ=;
        b=na0qwx3Rj5fFHHdpMZJccxerxpdjzWqXRf6OqfWMVw9NfknfDq9qkfLTmy7OQCPuVK
         +jUB0GSmKevf7+crPPS5oQD4ZxYwYWO6PYN3jle6o+MgnpBFBGXHFr7v+FDZ87yO6ljF
         vkBsaMjMVjhlXm2LHvcdVV/MNGJIdruZIwYJY4Pr/3pfG8FmlnFvx/R/IRplvwYeD/wi
         b/9jayLBXLkjjIGKMirUHwOrMGXeLOFJY1VxdWDtfIfm50hi1f4xjALKv88UaIace8kR
         0mI39ZWpEcMYAyWL6jeX0JhoYxp2JgrHoKQueioGHYSft6XyGqu8JM6+9USkQadzPP4M
         qqeg==
X-Gm-Message-State: APjAAAVvTEymi2uLtAo+/WkuDsNL5RsX0stXyjR5YJPIcJca393Qgr7Y
	e8Z6DKdnQLEmxxac8yoevt553lS3CfCBSdilMezYAOcroqM=
X-Google-Smtp-Source: APXvYqwdEQRiKrB3vlXRCjIFl2wU94jPbHh8EbBQzIAszmHiNimfFiaKxBZfBimWwmLEpuYWwICPbAaOpq5w+lgj/ns=
X-Received: by 2002:a17:906:b856:: with SMTP id ga22mr454202ejb.199.1574401094761;
 Thu, 21 Nov 2019 21:38:14 -0800 (PST)
MIME-Version: 1.0
Message-ID: <CADt2dQcbonV8WW_ZUfuzVpTir3nSDCdQ+Tf7LVOeGaQsWE=tGQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary="000000000000fcc0260597e8d120"
Date: Fri, 22 Nov 2019 13:38:01 +0800
From: huangwen <huangwenabc@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Linux kernel: three buffer overflow in the marvell wifi driver
To: oss-security@lists.openwall.com

--000000000000fcc0260597e8d120
Content-Type: text/plain; charset="UTF-8"

Hi,
There are three buffer overflows in marvell wifi chip driver in Linux
kernel, allow remote users to cause a denial of service(system crash) or
possibly execute arbitrary code.

Description
==========
[1]CVE-2019-14895:Heap Overflow in mwifiex_process_country_ie() function of
Marvell Wifi Driver in Linux kernel
The problem is inside mwifiex_process_country_ie() function in
drivers/net/wireless/marvell/mwifiex/sta_ioctl.c.
When STA connects to AP, mwifiex_process_country_ie function will be called
for STA. The function call link is:
mwifiex_cfg80211_connect()->mwifiex_cfg80211_assoc()->mwifiex_bss_start()->mwifiex_process_country_ie().
mwifiex_process_country_ie() function parse elements of bss descriptor in
beacon packet. When processing WLAN_EID_COUNTRY element, there is no upper
limit check for country_ie_len before calling memcpy,the dst buffer
domain_info->triplet is a array of length MWIFIEX_MAX_TRIPLET_802_11D(83).
The remote attacker can build a fake AP sending malicous beacon packet with
long WLAN_EID_COUNTRY element. When the victim STA connects to fake AP,will
trigger the heap buffer overflow.

[2]CVE-2019-14896: Heap Overflow in add_ie_rates() function of Marvell Wifi
Driver in Linux kernel
The problem is inside add_ie_rates function in
drivers/net/wireless/marvell/libertas/cfg.c.
When STA connects to AP, add_ie_rates function will be called for STA.The
function call link is:
lbs_cfg_connect()->lbs_associate()->lbs_add_common_rates_tlv()->add_ie_rates().
The lbs_associate() function parses the elements of cfg80211_bss in beacon
packet.  The elements in cfg80211_bss  will be copy to cmd->iebuf,
cmd->iebuf is a array of length 512.When processing WLAN_EID_SUPP_RATES or
WLAN_EID_EXT_SUPP_RATES element, add_ie_rates() will be called. In
add_ie_rates() function there is a write statement  in For loop(*tlv++ =
ie[ap];), the loop count ap_max is len of element  WLAN_EID_SUPP_RATES or
WLAN_EID_EXT_SUPP_RATES,but it is not checked before the For loop.
The remote attacker can build a fakeAP sending malicous beacon packet with
long WLAN_EID_SUPP_RATES and WLAN_EID_EXT_SUPP_RATES elements to make:
 sum( len(WLAN_EID_SUPP_RATES element) + len(WLAN_EID_EXT_SUPP_RATES
element) + len(other elements))>512
When the victim STA connects to fakeAP, will trigger the heap buffer
overflow.

[3]CVE-2019-14897 :Stack Overflow in lbs_ibss_join_existing() function of
Marvell Wifi Driver in Linux kernel
The problem is inside add_ie_rates function in
drivers/net/wireless/marvell/libertas/cfg.c.
When some STAs work in IBSS mode, they can connect to each other without
AP. lbs_ibss_join_existing will be called  when STA joins IBSS network. The
lbs_ibss_join_existing() function parses the elements in cfg80211_bss
struct. The function ieee80211_bss_get_ie()  is called to get
WLAN_EID_SUPP_RATES element. There is a write statement  in For
loop(*rates++ = rate;). But loop count rates_max is not checked before the
For loop ,the dst buffer rates is  a array of MAX_RATES(14).
The remote attacker can build a malicous IBSS sending beacon packet with
long WLAN_EID_SUPP_RATES(len>14). when victim STA connect malicous IBSS,
will trigger buffer overflow.


Patch
==========
https://patchwork.kernel.org/patch/11256477/
https://patchwork.kernel.org/patch/11257187/


Credit
==========
This issue was discovered by ADLab of Venustech

--000000000000fcc0260597e8d120--
