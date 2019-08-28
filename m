X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2299" "Wednesday" "28" "August" "2019" "13:50:53" "+0800" "huangwen" "huangwenabc@gmail.com" nil "86" nil nil nil nil "8" nil nil (number mark "U       huangwenabc@ Aug 28   86/2299  " thread-indent "\"[oss-security] Linux kernel: three heap overflow in the marvell wifi driver\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Linux kernel: three heap overflow in the marvell wifi driver" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3243 invoked by uid 550); 28 Aug 2019 09:34:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21598 invoked from network); 28 Aug 2019 05:51:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=zQchW2JpetavlZFGgp09UpMC6s/M8toCYKJcelKcNUU=;
        b=ex1Nka6/S9CWcJsNBfFZILzcBbnX1V/hljxpOgz+WmDPrzQYjbv4cyvwcb5z5RDCL0
         +w/bUFEai68y+CEU4AwZ+bUDrGbX7D4JML/0JksSnZYyPhVzZipSSplgXThV31gTRdSF
         gxsZ+xCoqHk5jnsG3tOZlg2vhwQkMywCfbHdm91PzTG+R9yngjVAk/LzqW+WK22wggvY
         SUr8RIOjK2UeKrwfItpLgB6utcSO1RqyR7Ia48uYetLniPQLdTIqpUQNQLdRU8TU2tZy
         K3vD1s85SMZmOFf0caKjERDXDgdBhPfnxOKd8QkkVw2AXbYyYKVAf4Y18DLRVcfJlEMo
         h5XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=zQchW2JpetavlZFGgp09UpMC6s/M8toCYKJcelKcNUU=;
        b=ZUEiGg0IPnVOB6xY4QY9C1jMbxpZqcKPizw57jjd4pSDoawa3SrIPHOu8vVQPjV/LR
         vRTFyyQHSBtMlrR+UVsgU7CWOTUhQKsMOWeYM13emAagLfsPrLtLQYDwGoWovVcyCnia
         ec2vJ+ihJozb6ftBYCEbiX31rzMowsWgX10kZ/xBpCMaSbHmYdK0c68BQ+3tytCjPOeB
         0/W7Qme8bFZtZblynp/qDkAjvGbQrvcIn88bMzKXzk1wYEREn8KW+e2AKHOiNb3PggEY
         J2hQVr+OBbOwP7syUVFMQQAD2HvzQ/IzbjxeLXmvCzl98OG024cVuDlr0bjpFs+7bgnC
         m2wg==
X-Gm-Message-State: APjAAAXXJDiXWGuNPxZreQyQC6W0wLp02mYcnanKRFWFHpYVW8vtdNHF
	7+nzxFbwjdojDdjTdIQ+jv3AkoXoZc9jEoN53HqCpFPp2AE=
X-Google-Smtp-Source: APXvYqwqxhHONSVZAHZN3mQzW/bvX2tWztDJr9oHlhlzPA3mPWp04ScDomMOKcm5d8mY5qBGW5l2IzOWM3zCN8n9o5E=
X-Received: by 2002:aa7:cccd:: with SMTP id y13mr2166867edt.301.1566971476232;
 Tue, 27 Aug 2019 22:51:16 -0700 (PDT)
MIME-Version: 1.0
From: huangwen <huangwenabc@gmail.com>
Date: Wed, 28 Aug 2019 13:50:53 +0800
Message-ID: <CADt2dQe-nHwQSFHtbMzcB2C+XjcRMgkHqikf1tX+QtTEA-j5mQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000036ccb7059126fad9"
Subject: [oss-security] Linux kernel: three heap overflow in the marvell wifi driver

--00000000000036ccb7059126fad9
Content-Type: text/plain; charset="UTF-8"

Hi,

There are three heap-based buffer overflows in marvell wifi chip driver in
Linux kernel, allow local users to cause a denial

of service(system crash) or possibly execute arbitrary code.The bugs can be
triggered by sending crafted  packet via netlink.


Description

==========

[1]CVE-2019-14814:Heap Overflow in mwifiex_set_uap_rates() function of
Marvell Wifi Driver in Linux kernel


The problem is inside mwifiex_set_uap_rates() in
drivers/net/wireless/marvell/mwifiex/uap_cmd.c.
There are two memcpy calls in this function to copy WLAN_EID_SUPP_RATES
element and WLAN_EID_EXT_SUPP_RATES element

without checking length. The dst buffer bss_cfg->rates is a array of length
MWIFIEX_SUPPORTED_RATES(14). The two elements in

cfg80211_ap_settings are from user space.



[2]CVE-2019-14815: Heap Overflow in mwifiex_set_wmm_params() function of
Marvell Wifi Driver in Linux kernel


The problem is inside mwifiex_set_wmm_params() in
drivers/net/wireless/marvell/mwifiex/uap_cmd.c.
mwifiex_set_wmm_params() calls memcpy to copy WLAN_OUI_MICROSOFT element to
bss_cfg->wmm_info without checking  length.

bss_cfg->wmm_info is struct mwifiex_types_wmm_info type with fixed len 24.



[3]CVE-2019-14816:Heap Overflow in mwifiex_update_vs_ie() function of
Marvell Wifi Driver in Linux kernel



The problem is inside mwifiex_update_vs_ie() in
drivers/net/wireless/marvell/mwifiex/ie.c.

mwifiex_set_mgmt_beacon_data_ies()  parses beacon IEs, probe response IEs,
association response IEs from cfg80211_ap_settings->beacon,

will call mwifiex_update_vs_ie() twice for each IEs if there exists IEs.
For beacon_ies as example, on the first call, mwifiex_update_vs_ie() alloc

memory ie and then copy WLAN_OUI_MICROSOFT element to ie->ie_buffer,
ie->ie_buffer
is a array of length IEEE_MAX_IE_SIZE(256); on the

Second call, mwifiex_update_vs_ie() copy WLAN_OUI_WFA elment to
previous allocated
ie->ie_buffer. If sum of  length of the two elements is

greater than IEEE_MAX_IE_SIZE, will cause buffer overflow.



Patch

=====

https://lore.kernel.org/linux-wireless/20190828020751.13625-1-huangwenabc@gmail.com/



Credit

==========

This issue was discovered by huangwen of ADLab of Venustech

--00000000000036ccb7059126fad9--
