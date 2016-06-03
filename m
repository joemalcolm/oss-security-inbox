X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1481" "Friday" "3" "June" "2016" "11:10:04" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160603151004.0FD7A6C0400@smtpvmsrv1.mitre.org>" "35" "[oss-security] Re: CVE Request: tipc: an infoleak in tipc_nl_compat_link_dump" nil nil nil "6" "2016060315:10:04" "[oss-security] Re: CVE Request: tipc: an infoleak in tipc_nl_compat_link_dump" (number mark "U       cve-assign@m Jun  3   35/1481  " thread-indent "\"[oss-security] Re: CVE Request: tipc: an infoleak in tipc_nl_compat_link_dump\"\n") "<CABEk9YwpYud4vgFLWJQTV6PFPdGQ2ejd6ueJMimsgKw94KgnYQ@mail.gmail.com>" ("<CABEk9YwpYud4vgFLWJQTV6PFPdGQ2ejd6ueJMimsgKw94KgnYQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24318 invoked by uid 550); 3 Jun 2016 15:10:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24300 invoked from network); 3 Jun 2016 15:10:15 -0000
From: cve-assign@mitre.org
To: kangjielu@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, taesoo@gatech.edu, csong84@gatech.edu
In-Reply-To: <CABEk9YwpYud4vgFLWJQTV6PFPdGQ2ejd6ueJMimsgKw94KgnYQ@mail.gmail.com>
Message-Id: <20160603151004.0FD7A6C0400@smtpvmsrv1.mitre.org>
Date: Fri,  3 Jun 2016 11:10:04 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: tipc: an infoleak in tipc_nl_compat_link_dump

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> In function tipc_nl_compat_link_dump of file net/tipc/netlink_compat.c,
> link_info.str is a char array of size 60. Memory after the NULL
> byte is not initialized. Sending the whole object out can cause
> a leak of sensitive info in kernel stack.
> 
> https://patchwork.ozlabs.org/patch/629100/
> https://git.kernel.org/cgit/linux/kernel/git/davem/net.git/commit/?id=5d2be1422e02ccd697ccfcd45c85b4a26e6178e2

Use CVE-2016-5243.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXUZw5AAoJEHb/MwWLVhi2+IoP/22pu8mdKyqH4/UuIFtGLmfl
ymJ+oHCNz6O/3cy9YbBSkkmNMDvwng1UW6+Gtyn4GjaJqFdhYDNCRZuwdXg+u/eP
WoF2maZ8jo882luNajmzoaQAkjxjlsB/OqJZP47yKpoGwbgqvjdr5xfg0qvP6RIV
vw0qZYfqZZan4rtr9dE3MolpIHP0AEXPTuNHZeCrtuyfTagJjCOD+dr1UuRKIXll
zfvbSH1074IHgGExx4USTVx5/oAkfATy5wxqWtq/fRxvJno/5+I154bOknRI5mj5
GmhY0BIpWACUiOaoyN1aM34usXMNvtWuYqJo0s+mZgOkTn5c0W6O7bSswyJcLpjE
F0b8xkWs3PlpajNMZBbpzw00NTadviVhBroF/Ef4oDV5IaCab83A368MESS3RJHF
W0WFDhlnTMpUqZeiWN55seh25vwEp0zff98a0cpaToj8b+OOwHD0qGhRQ9LPNydw
18CndQnJk+upioqEgmWvwRT9UPfoN4MCVyW6zeMP0IO4nCJjlZ8QW980u1zz2Wx4
2raWb9cMh2ipURwb+k5OfTAVM97TMarppWIBb+WIMrzKDGpv/OUGU/Hn8ZpxZsGF
vesvNFDSl3ydlZdBuL0lkvXC4HiW/Bc121bovocuUYecpo8ZRn1/fViCHfir/d4S
ZL3a1PZlbuY02U3vHp3o
=uadr
-----END PGP SIGNATURE-----
