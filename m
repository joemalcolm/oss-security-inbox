X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1643" "Thursday" "20" "April" "2017" "10:01:00" "+0200" "Fabian =?iso-8859-1?Q?Gr=FCnbichler?=" "f.gruenbichler@proxmox.com" "<20170420080100.3pwt7tgz46xya4ym@nora.maurer-it.com>" "36" "[oss-security] CVE-2017-7979: Linux kernel: local DoS via packet action API" nil nil nil "4" "2017042008:01:00" "[oss-security] CVE-2017-7979: Linux kernel: local DoS via packet action API" (number mark "U       f.gruenbichl Apr 20   36/1643  " thread-indent "\"[oss-security] CVE-2017-7979: Linux kernel: local DoS via packet action API\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10231 invoked by uid 550); 20 Apr 2017 08:17:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1437 invoked from network); 20 Apr 2017 08:01:25 -0000
Date: Thu, 20 Apr 2017 10:01:00 +0200
From: Fabian =?iso-8859-1?Q?Gr=FCnbichler?= <f.gruenbichler@proxmox.com>
To: oss-security@lists.openwall.com
Cc: Wolfgang Bumiller <w.bumiller@proxmox.com>
Message-ID: <20170420080100.3pwt7tgz46xya4ym@nora.maurer-it.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: [oss-security] CVE-2017-7979: Linux kernel: local DoS via packet action API

CVE-2017-7979 [1] was assigned to the following issue:

The cookie feature in the packet action API implementation in
net/sched/act_api.c in the Linux kernel 4.11.x through 4.11-rc7
mishandles the tb nlattr array, which allows local users to cause a
denial of service (uninitialized memory access and refcount underflow,
and system hang or crash) or possibly have unspecified other impact via
"tc filter add" commands in certain contexts.

The fix has been sent upstream [2], whether all related issues are fixed by
the two proposed patches (see whole thread at [3]) is still under
discussion.

Not affected:
- Upstream: stable kernels from kernel.org, such as 4.10.x

Affected:
- Upstream: all current 4.11 RCs (rc1-rc7) are affected.
- Ubuntu 17.04: commit 1045ba77a ("net sched actions: Add support for
  user cookies") which introduced the problematic code was backported to
  Ubuntu 17.04's "Ubuntu-4.10.0-15.17" kernel, which is affected[4].
- Proxmox VE 5.0 Beta: the Proxmox VE kernel 4.10.5-1 which was based on
  Ubuntu-4.10.0-15.17 was affected[5], the subsequently released PVE
  kernel 4.10.8-1 contains the fix from [2]. The current PVE stable
  release 4.4 is not affected.

Thanks to Wolfang Bumiller for analysis and proposed fixes.
Thanks to "Ivensiya" <ivensiya@gmail.com> for the initial bug report[5]
that lead to the discovery.

1: https://www.cve.mitre.org/cgi-bin/cvename.cgi?name=2017-7979
2: https://marc.info/?l=linux-netdev&m=149200746116365
3: https://marc.info/?l=linux-netdev&m=149251041420195
4: https://bugs.launchpad.net/ubuntu/+source/linux/+bug/1682368
5: https://bugzilla.proxmox.com/show_bug.cgi?id=1351

