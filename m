X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2374" "Monday" "1" "August" "2016" "19:49:02" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160801234902.577386C4E23@smtpvmsrv1.mitre.org>" "50" "[oss-security] Re: CVE Request: Linux >= 4.5 double fetch leading to heap overflow" nil nil nil "8" "2016080123:49:02" "[oss-security] Re: CVE Request: Linux >= 4.5 double fetch leading to heap overflow" (number mark "U       cve-assign@m Aug  1   50/2374  " thread-indent "\"[oss-security] Re: CVE Request: Linux >= 4.5 double fetch leading to heap overflow\"\n") "<579E6CC0.2020509@plzdonthack.me>" ("<579E6CC0.2020509@plzdonthack.me>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1816 invoked by uid 550); 1 Aug 2016 23:49:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1792 invoked from network); 1 Aug 2016 23:49:14 -0000
From: cve-assign@mitre.org
To: sbauer@plzdonthack.me
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <579E6CC0.2020509@plzdonthack.me>
Message-Id: <20160801234902.577386C4E23@smtpvmsrv1.mitre.org>
Date: Mon,  1 Aug 2016 19:49:02 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: Linux >= 4.5 double fetch leading to heap overflow

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Some code was moved from btrfs to the generic vfs ioctl:
> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/fs/ioctl.c?h=v4.5&id=54dbc15172375641ef03399e8f911d7165eb90fb
> 
> During the port a double fetch with userland was introduced which can lead to an undersized allocation and subsequent heap overflow
> with potentially controlled data. It has been patched in upstream here:
> 
> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=10eec60ce79187686e052092e5383c99b4420a20

>> vfs: ioctl: prevent double-fetch in dedupe ioctl
>> 
>> This prevents a double-fetch from user space that can lead to to an
>> undersized allocation and heap overflow.

> I attempted to write an exploit for this but that's not really my forte. I feel like this bug
> has the potential for a workable user->root exploit but I couldn't do it.
> 
> 1: You can control which cache the overflow happens on. I picked the same cache as the File struct.
> 2: the code writes 2 different width zeros past the allocation, one 32 bit and the other 64 bit.
> 3: I attempted to overflow and write the 32 bit 0 to the top half of a pointer so it would point to userland,
> but I couldn't find a suitable structure to overflow into.

> pthread_create(&race_car, NULL, size_change, range);

Use CVE-2016-6516.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXn97QAAoJEHb/MwWLVhi2cCAP/2C+AHkxRISZ5YCq50+Vvj5d
iLeqbqdcrdI8yfdPNL6k9QpH8VL1SOtiofxXaySHU7Fde1eh2IRTtLq2jbYpPhhP
YOqkc2kaZvkboRrVVacm4nUko1WfMlzfGUsd48GALKvlzHRPxlxhAIx3we/2+YwD
gZWUDITE5zQiN4ShbsUGdTMVkQYUzIYEhYD7w0o4kFmVKwTuq1w0GZQsvq56df3x
IL2rhmEq7YtK3uCMQrFFZKlvUcDWke5ri9pu9D7YoDkOVM2aMLivA/FMN1y2Blbt
FdDUaqerMVZFgJl0PB1YIsnpdFpUliptCDsXcbRGOC2xsXAPSbNoAsoRlyZ7WrNJ
wAX2F7e+WIj7MdArNaNeIUt5ltXh5KPVwpgjzV2Z+UwU6ySt/iRAy1eyONrqvJz0
hVxIYw2uGUu6hvHp/VslmLx9jeASZogESxlZYytUrgNFUnbRJFVeJHOPMf9kKcEk
8vg2mmwlOdC47AWsh3vWqTs5ap/lRYuK9urR1OvtJxY9sUbm1Fwv31O4BuySjQHy
N0ScMNUXGvXkU2+v6CYOGq1eKojAXUN8pQRRpwmJvk/PmLZ0SNKaW/EdStDxTu4d
Jd/Dqk8z6HpqbbdCQpPGBSPfMiAmGYMSPQbxyoYTgTZbC40u+4C+hJXJvC3iVvZ8
rXIC5MKykZB1QuBz5ecG
=UAFW
-----END PGP SIGNATURE-----
