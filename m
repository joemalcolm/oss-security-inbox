X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1474" "Friday" "3" "June" "2016" "11:11:58" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160603151158.0CB287BC0B2@smtpvmsrv1.mitre.org>" "36" "[oss-security] Re: CVE Request: rds: fix an infoleak in rds_inc_info_copy" nil nil nil "6" "2016060315:11:58" "[oss-security] Re: CVE Request: rds: fix an infoleak in rds_inc_info_copy" (number mark "U       cve-assign@m Jun  3   36/1474  " thread-indent "\"[oss-security] Re: CVE Request: rds: fix an infoleak in rds_inc_info_copy\"\n") "<CABEk9YwUfe0s1iWLqyfVOv6=NA-PBnaSGMhL-DnVX9LbV5DENA@mail.gmail.com>" ("<CABEk9YwUfe0s1iWLqyfVOv6=NA-PBnaSGMhL-DnVX9LbV5DENA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 2036 invoked by uid 550); 3 Jun 2016 15:12:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 2018 invoked from network); 3 Jun 2016 15:12:40 -0000
From: cve-assign@mitre.org
To: kangjielu@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, taesoo@gatech.edu, csong84@gatech.edu
In-Reply-To: <CABEk9YwUfe0s1iWLqyfVOv6=NA-PBnaSGMhL-DnVX9LbV5DENA@mail.gmail.com>
Message-Id: <20160603151158.0CB287BC0B2@smtpvmsrv1.mitre.org>
Date: Fri,  3 Jun 2016 11:11:58 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: rds: fix an infoleak in rds_inc_info_copy

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> There was an infoleak vulnerability in function
> rds_inc_info_copy of file net/rds/recv.c.
> The last field "flags" of object "minfo" is not initialized.
> Copying this object out may leak kernel stack data.
> Assign 0 to it to avoid leak.
> 
> https://patchwork.ozlabs.org/patch/629110/
> https://git.kernel.org/cgit/linux/kernel/git/davem/net.git/commit/?id=4116def2337991b39919f3b448326e21c40e0dbb

Use CVE-2016-5244.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXUZw/AAoJEHb/MwWLVhi2aiUP/07OBwM0MtVy/t1KcZL8v7DD
vIAzXg1kSR91f+gtrWhJCblBVwd86MnuLFxEersj7sVhNi+Cxt+LS952cCdXvjqu
ELT1u3iZyOfW2h5kUrZIQKJgPggdbEikR6dRl+rsd/qAIzFvdqE0PFxXU1EIfkHi
lKYdwS8X/Tnw3mo2D5pMXa3K1dIbq5XZZNIvvlYD/owgzu6z9k9eRmwDe+HRZOIW
euBGQ/Wx1gD3/DfNot0rXguVP9C43079FVCrr8LIcQh2ogszb4coYIU2+KYObbbk
+ZrOXkHY+n6B2sy2kirqoN01G8YThfc7Hcl9qsYB2ZuaHJdCMRAgP/nhY8kgytDF
ivIqbx01dJQ+ce+T/J9hjkWNE8FN5QvcLAypZcVRsHC/fuue1GUD0jQpGLbSJUBY
GoQ1pPiz7aojimx41dh0hGO2N0WQyzujo5OLCiHi2IQ+Mv/9Qtduh+2wfRxGMjWU
ydLveWg4kj2Ao2eqn/j6XOpSu6vE1fB1qX8+VBRO+o44g2p8Y7nM0MskYhZ3ayAY
sy/nuBTBO4W0Q+xwjh1bIJkC1KraLYXPoHdhmviWIAd95xO5+5Uqy6jtwTjiATQx
wCFEB0e+zqHF+XJJfYk9oBb4H/jzpZvJdl5xMtHT+nLuDYz3kmL5InTGBufRD6p2
eyF4kMXone5kZVbr/kTB
=O3Ht
-----END PGP SIGNATURE-----
