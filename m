X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2049" "Wednesday" "11" "May" "2016" "10:26:55" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160511142655.B3EC6332010@smtpvbsrv1.mitre.org>" "47" "[oss-security] Re: CVE Request: alsa: kernel information leak vulnerability in Linux sound/core/timer" nil nil nil "5" "2016051114:26:55" "[oss-security] Re: CVE Request: alsa: kernel information leak vulnerability in Linux sound/core/timer" (number mark "U       cve-assign@m May 11   47/2049  " thread-indent "\"[oss-security] Re: CVE Request: alsa: kernel information leak vulnerability in Linux sound/core/timer\"\n") "<s5hshxp9jdr.wl-tiwai@suse.de>" ("<s5hshxp9jdr.wl-tiwai@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10186 invoked by uid 550); 11 May 2016 14:27:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10166 invoked from network); 11 May 2016 14:27:07 -0000
From: cve-assign@mitre.org
To: tiwai@suse.de, kangjielu@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, csong84@gatech.edu, insu@gatech.edu, taesoo@gatech.edu
In-Reply-To: <s5hshxp9jdr.wl-tiwai@suse.de>
Message-Id: <20160511142655.B3EC6332010@smtpvbsrv1.mitre.org>
Date: Wed, 11 May 2016 10:26:55 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: alsa: kernel information leak vulnerability in Linux sound/core/timer

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://git.kernel.org/cgit/linux/kernel/git/tiwai/sound.git/commit/?h=for-next&id=cec8f96e49d9be372fdb0c3836dcf31ec71e457e
>   ALSA: timer: Fix leak in SNDRV_TIMER_IOCTL_PARAMS
> 
> https://git.kernel.org/cgit/linux/kernel/git/tiwai/sound.git/commit/?h=for-next&id=9a47e9cff994f37f7f0dbd9ae23740d0f64f9fe6
>   ALSA: timer: Fix leak in events via snd_timer_user_ccallback
> 
> https://git.kernel.org/cgit/linux/kernel/git/tiwai/sound.git/commit/?h=for-next&id=e4ec8cc8039a7063e24204299b462bd1383184a5
>   ALSA: timer: Fix leak in events via snd_timer_user_tinterrupt


> Maybe we can fold

That is not what we are going to do. Because the meaning of
CVE-2016-4569 was already established to be the
http://comments.gmane.org/gmane.linux.kernel/2214250 issue with the
"tread" object, which is only
cec8f96e49d9be372fdb0c3836dcf31ec71e457e, we are keeping that
ID assignment the same.

Use CVE-2016-4578 for both 9a47e9cff994f37f7f0dbd9ae23740d0f64f9fe6
and e4ec8cc8039a7063e24204299b462bd1383184a5.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXM0CDAAoJEHb/MwWLVhi2YdAQAKibrD8XeEWMfNOhVt1JJZyK
7tjA7BnVA96YCv/wl5Ry4hbNCA7TmFIYjq4M9Fahbr/dlJxkol4xXGCmX2sOTA8l
vAKVt30oYpgmESleRz8vJ5JVSYEXmem4v4y4xX37w3WNf6fXhB83zm1nniWddwio
GLV7UGxZTfs+jCeZo0ou+Db02YpqgR5E0oOOIvPNuX6xLkNQy0JFNzRTKfP0Eo2W
wLoKx7R6l74pe1FPoOqkGEs8oQ7fs1M9nQfUydsUqwTz8fGtwxVScOthze3FguaK
UFJOr5pfM7aV5pZbxhvh/umd5hnl8LmkT91VqhpA8r5M2l9rqV0vRzr1PfbXeQfe
UOpsS24GKgQ0wvGPBvxU8GCJcY3NPs2mF6fxrR46fwf1R5sZfwRV/nrS76E2CSuZ
9VQ1v90VkH1uRZd8g7iluwlTa+V5EWiqUcTxuQPv1SjZGNDUqV+wOW8ttazCszwe
DdjJRvmBnyyb835BJo24afw0u/QZkQCwdtub4ZQqBkuGudYIK+8AZsMG3vZ+Jlt7
ZL4VFrSRsDW1c8pfBEkdH9/YJIEeEHckLOWcD2DoqokzcjVcr4DDw3bVuBTK2hwn
OwMX7iXXuPEuJFeotCiv4VkK94DfdtVwJ4p55ErIDHHpkXBMB8BLuBdgvbNXw/FO
DU8UQO+pwaNTDNx55N9Z
=M8WL
-----END PGP SIGNATURE-----
