X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1877" "Thursday" "13" "October" "2016" "03:03:08" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161013070308.6FFD713A870@smtpvmsrv1.mitre.org>" "47" "[oss-security] Re: CVE Request -- Broadcom Wifi Driver Brcmfmac brcmf_cfg80211_start_ap Buffer Overflow" nil nil nil "10" "2016101307:03:08" "[oss-security] Re: CVE Request -- Broadcom Wifi Driver Brcmfmac brcmf_cfg80211_start_ap Buffer Overflow" (number mark "U       cve-assign@m Oct 13   47/1877  " thread-indent "\"[oss-security] Re: CVE Request -- Broadcom Wifi Driver Brcmfmac brcmf_cfg80211_start_ap Buffer Overflow\"\n") "<CABNVnE1qt5aoJUOqb-d0vxs83Dfirn7CYxYQsS3TAxuTbX=LLQ@mail.gmail.com>" ("<CABNVnE1qt5aoJUOqb-d0vxs83Dfirn7CYxYQsS3TAxuTbX=LLQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24177 invoked by uid 550); 13 Oct 2016 07:03:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24062 invoked from network); 13 Oct 2016 07:03:22 -0000
From: cve-assign@mitre.org
To: freener.gdx@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CABNVnE1qt5aoJUOqb-d0vxs83Dfirn7CYxYQsS3TAxuTbX=LLQ@mail.gmail.com>
Message-Id: <20161013070308.6FFD713A870@smtpvmsrv1.mitre.org>
Date: Thu, 13 Oct 2016 03:03:08 -0400 (EDT)
Subject: [oss-security] Re: CVE Request -- Broadcom Wifi Driver Brcmfmac brcmf_cfg80211_start_ap Buffer Overflow

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://git.kernel.org/cgit/linux/kernel/git/davem/net.git/commit/?id=ded89912156b1a47d940a0c954c43afbabd0c42c

> I found a stack buffer overflow vulnerability in Broadcom wifi driver
> brcmfmac, this issue has been fixed,

> To trigger the bug the exploit should send a NL80211_CMD_START_AP or
> NL80211_CMD_NEW_BEACON command to nl80211 socket in kernel.

> NL80211_ATTR_SSID is optional, user can send a netlink packet which
> does not contain information about NL80211_ATTR_SSID, so params.ssid
> and params.ssid_len will be 0. It's the key point in the exploit.

> It does not
> check the length of data before calling memcpy to copy the data to
> stack buffer.

>> brcmfmac: avoid potential stack overflow in brcmf_cfg80211_start_ap()

>> drivers/net/wireless/broadcom/brcm80211/brcmfmac/cfg80211.c

Use CVE-2016-8658.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX/zAMAAoJEHb/MwWLVhi25+oQAKs2qjaGbVngpPWsnbCsPONI
6NjXoz9otsl0g1RrLuKHYB7S7fIY2D5JqKh+dNFuFwUkcTIo7nojVgcZSTp1FEnH
V/LHG3uPo2rmul/65vo1a3H90C6ZSJlHsOE1DaUbLIDNUr6fReAWWinP2Mv7IPft
2BSXXriH544MBkwL5GEMVtfKEcLvzWrOK/poxN1dFyCUGCtD7vNFs0CEhT/eqhZZ
YZVcV1wvIHnbPbpBc0riuzZcej4ofcfcyIoLFqHWuV4R4VnPzXjWVB2Zm9O+DJkh
y1/xHDGo4Yasfx3V3hX03ylHe4BrJaA6rz6ptBLuBQUU976r8Hu7UAZ1deR0beSe
WkEbKaXPl/kIBpyjCM4XHhc4L6CXM9W6QUy03j1ueWIRj7C4ImNUIR6ti87uDVG1
WqMcOtdsG0N7mXd7y2e4T2slW9BYa/+FdT/rcdVtSVPis7FWH+N3DiG76/0BTcCj
iuUBZHF81CnrkJQZo/pLmAPy2GC7iaaqTT8J6P0f52+CnbFPHBPaYYOaAb3zy3Vk
F7SJM1sbPEan2Wyb6CW0wJVDGKXjvFgNj4QYm0etoVMsQiz0puhBWC1GXVbzhsCS
DxXRW58QtkN5ODLSXYGMO3H4kQwuUv6P0nKYrrpv7nCIkS4uXZWydpQcN3+zVvuP
5l5c5X60MnOYzYVMOH4P
=kCpv
-----END PGP SIGNATURE-----
