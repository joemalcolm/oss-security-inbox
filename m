X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2551" "Friday" "22" "November" "2019" "20:51:31" "+0800" "qize wang" "wangqize888888888@gmail.com" "<7FA714F2-4FFA-4781-A2B8-8F18A7EC8015@gmail.com>" "79" "[oss-security] Linux kernel: heap overflow in the marvell wifi driver" "^Cc:" nil nil "11" "2019112212:51:31" "[oss-security] Linux kernel: heap overflow in the marvell wifi driver" (number mark "        wangqize8888 Nov 22   79/2551  " thread-indent "\"[oss-security] Linux kernel: heap overflow in the marvell wifi driver\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Linux kernel: heap overflow in the marvell wifi driver" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5376 invoked by uid 550); 22 Nov 2019 14:11:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12015 invoked from network); 22 Nov 2019 12:51:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:content-transfer-encoding:mime-version:subject:message-id:date
         :cc:to;
        bh=3IJvLezvEBwFJV0LFDGnzp+RR3wzFcF96UenOaSkEyo=;
        b=GhhMSJdqJWJa8JnRf1BrJOKU6OtZ1FbeAlKADRGE2nRgvb+U5jQtq21QKW/l/CoC3J
         dxuVDzR1rn8HUQSkLQIVA5Sb3l8h7amhztcoeeombb1caIxg8Hss6OHA3jdbE4YMABDA
         Pkh7B/jmHPxPWAki6tMpa0y+WmKxaM+DFRWTlNF86tNS8zidqwyi2Wxs2t/3X0M+2qov
         OC3fPCb0O/+p2j8V0NfefXqVXDcKwXlDth2EoXdsYO6JXpe4rZxhE2XDXaaBhDpHk937
         Tp6LqNzBAYkjwTbzh3NBbTXKlgDjyNmLcQ7P2Mw+nFttHi+b1a/KXxm/+jDvAofZ2eHg
         AEDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version
         :subject:message-id:date:cc:to;
        bh=3IJvLezvEBwFJV0LFDGnzp+RR3wzFcF96UenOaSkEyo=;
        b=EoE6rx/PIbYz9n2KZZEXvHfmi4IMUVChr8J6a/1EZxsNz3j+DJwzARKUB0+JdHpHS1
         TBN4AKX8o9bTyy0RvoA8oLstRa2HwkptndTft40vo9L3g0HIR7TrmMC1hH41Ek7tZs5/
         QYTX70tmK24SaPHGXn7QlZws0R2p6T0lOrkQQWmf9JSVGq5vcVZd2tRjCP3TnkkyVcqY
         SsER9DnqQwWPORqT8Pz8rWnMUSBUpIap4UuKI3quOW43JXtkbSZbdzYZP7xSbl9ozRFM
         yhPacZzQQa6ypVe7bPrRQwVF+3KC29+RQlEJQQHc2tMRohwXWn79xk9rsfVEokJL1smZ
         sAQw==
X-Gm-Message-State: APjAAAXqpatM5jJCT8rr6asejKZ3GJ04DhAGC/3KzGILpAP070RoJEAj
	NcroSThGJQglGM3DX4MxX99Da5ld8BtBsg==
X-Google-Smtp-Source: APXvYqwpZmZcgbgMPoOviuLHXX3W5CbsYSdkIRLOZAmuimt7QqBY27NBDY81FbP0lkyJr/miUd9Uzg==
X-Received: by 2002:a63:1624:: with SMTP id w36mr14682335pgl.404.1574427096504;
        Fri, 22 Nov 2019 04:51:36 -0800 (PST)
Content-Type: text/plain;
	charset=gb2312
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 11.3 \(3445.6.18\))
Message-Id: <7FA714F2-4FFA-4781-A2B8-8F18A7EC8015@gmail.com>
X-Mailer: Apple Mail (2.3445.6.18)
Cc: =?gb2312?B?bGludXgtZGlzdHJvcyChog==?= <linux-distros@vs.openwall.org>,
 =?gb2312?B?YW1pdGthcndhciChog==?= <amitkarwar@gmail.com>,
 =?gb2312?B?bmlzaGFudHMgoaI=?= <nishants@marvell.com>,
 =?gb2312?B?Z2JoYXQgoaI=?= <gbhat@marvell.com>,
 =?gb2312?B?aHV4aW5taW5nODIwIKGi?= <huxinming820@gmail.com>,
 =?gb2312?B?a3ZhbG8goaI=?= <kvalo@codeaurora.org>,
 =?gb2312?B?Z3JlZyChog==?= <greg@kroah.com>,
 =?gb2312?B?c2VjdXJpdHkgoaI=?= <security@kernel.org>,
 "dan.carpenter" <dan.carpenter@oracle.com>,
 Solar Designer <solar@openwall.com>
Date: Fri, 22 Nov 2019 20:51:31 +0800
From: qize wang <wangqize888888888@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Linux kernel: heap overflow in the marvell wifi driver
To: oss-security@lists.openwall.com

Hi,
There are some heap overflows in marvell wifi chip driver in Linux
kernel, allow remote users to cause a denial of service(system crash) or
possibly execute arbitrary code.

Description
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

some flaws were found in the Linux kernel's Marvell wifi chip driver.=20
multi heap overflow in mwifiex_process_tdls_action_frame function in=20
marvell/mwifiex/tdls.c which allows remote attackers to cause a denial=20
of service(system crash) or execute arbitrary code.

the station receive a tdls setup request or respone frame which IE 's=20
length is larger than the heap buffer assigned (for example : the=20
EID_SUPP_RATES IE's length > 255) will cause heap overflow=A1=A3


struct mwifiex_tdls_capab {
	__le16 capab;
	u8 rates[32];
	u8 rates_len;
	u8 qos_info;
	u8 coex_2040;
	u16 aid;
	struct ieee80211_ht_cap ht_capb;
	struct ieee80211_ht_operation ht_oper;
	struct ieee_types_extcap extcap;
	struct ieee_types_generic rsn_ie;
	struct ieee80211_vht_cap vhtcap;
	struct ieee80211_vht_operation vhtoper;
};

int mwifiex_process_rx_packet -> mwifiex_process_tdls_action_frame
(struct mwifiex_private *priv,
				       u8 *buf, int len)
{
....=20
case WLAN_EID_SUPP_RATES:
			sta_ptr->tdls_cap.rates_len =3D pos[1];   ;attacker can control=20
			                                        ;EID_SUPP_RATES IE 's length
			for (i =3D 0; i < pos[1]; i++)
				sta_ptr->tdls_cap.rates[i] =3D pos[i + 2];
			break;
=A1=AD
case WLAN_EID_EXT_SUPP_RATES:
			basic =3D sta_ptr->tdls_cap.rates_len;
			for (i =3D 0; i < pos[1]; i++)						;attacker can control=20
													;EID_SUPP_RATES IE 's length
				sta_ptr->tdls_cap.rates[basic + i] =3D pos[i + 2];=20=20=20=20
			sta_ptr->tdls_cap.rates_len +=3D pos[1];=20=20
			break;
=A1=AD
case WLAN_EID_EXT_CAPABILITY:
			memcpy((u8 *)&sta_ptr->tdls_cap.extcap, pos,
			       sizeof(struct ieee_types_header) +
			       min_t(u8, pos[1], 8));       ;extcap is tlv struct,=20
			       						;memcpy will cause a fata=20
			       						;len(p[1]) into extcap
			break;
case WLAN_EID_RSN:
			memcpy((u8 *)&sta_ptr->tdls_cap.rsn_ie, pos,
			       sizeof(struct ieee_types_header) +
			       min_t(u8, pos[1], IEEE_MAX_IE_SIZE -
				     sizeof(struct ieee_types_header)); rsn_ie is tlv struct ,
											  ;memcpy will cause a fata=20
											  ;len(p[1]) into rsn_ie

}

Patch
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
https://patchwork.kernel.org/patch/11257535/

Credit
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
This issue was discovered by wangqize(ADLab of VenusTech),huawen(ADLab of V=
enusTech)

