X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["697" "Friday" "11" "March" "2022" "12:16:35" "+0100" "=?UTF-8?B?U8O2bmtlIEh1c3Rlcg==?=" "soenke.huster@eknoes.de" nil "18" "[oss-security] CVE-2022-26878: Memory leak in Linux VirtIO Bluetooth driver" nil nil nil "3" nil nil (number mark "U       soenke.huste Mar 11   18/697   " thread-indent "\"[oss-security] CVE-2022-26878: Memory leak in Linux VirtIO Bluetooth driver\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2022-26878: Memory leak in Linux VirtIO Bluetooth driver" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12275 invoked by uid 550); 11 Mar 2022 11:26:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5823 invoked from network); 11 Mar 2022 11:16:48 -0000
Authentication-Results: giacobini.uberspace.de;
	auth=pass (plain)
Message-ID: <de937be5-35ed-af7b-b20a-a1150c700fa1@eknoes.de>
Date: Fri, 11 Mar 2022 12:16:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Content-Language: en-US
To: oss-security@lists.openwall.com
From: =?UTF-8?Q?S=c3=b6nke_Huster?= <soenke.huster@eknoes.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [oss-security] CVE-2022-26878: Memory leak in Linux VirtIO Bluetooth driver

Hi oss-security,

A memory leak in the VirtIO Bluetooth driver for Linux, which is included since v5.13,
allows an attacker with access to the VirtIO counterpart of the driver
to create a DoS by sending invalid frames to the drivers interface.
Therefore, the driver must be in use.

This is fixed in 1d0688421449 [1], which was backported and thus
fixed in v5.16.3 [2] and v5.15.17 [3].

CVE-2022-26878 was assigned by MITRE.

Best,
Sönke

[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=1d0688421449718c6c5f46e458a378c9b530ba18
[2] https://cdn.kernel.org/pub/linux/kernel/v5.x/ChangeLog-5.16.3
[3] https://cdn.kernel.org/pub/linux/kernel/v5.x/ChangeLog-5.15.17
