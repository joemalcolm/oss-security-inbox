X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["616" "Monday" "27" "November" "2017" "21:19:20" "+0100" "Marcus Meissner" "meissner@suse.de" "<20171127201920.GZ21404@suse.de>" "12" "[oss-security] Information Leak in mincore() in the Linux Kernel CVE-2017-16994" nil nil nil "11" "2017112720:19:20" "[oss-security] Information Leak in mincore() in the Linux Kernel CVE-2017-16994" (number mark "U       meissner@sus Nov 27   12/616   " thread-indent "\"[oss-security] Information Leak in mincore() in the Linux Kernel CVE-2017-16994\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23818 invoked by uid 550); 27 Nov 2017 20:19:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23797 invoked from network); 27 Nov 2017 20:19:32 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Mon, 27 Nov 2017 21:19:20 +0100
From: Marcus Meissner <meissner@suse.de>
To: OSS Security List <oss-security@lists.openwall.com>
Message-ID: <20171127201920.GZ21404@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: [oss-security] Information Leak in mincore() in the Linux Kernel CVE-2017-16994

Hi,

Mitre has allocated CVE-2017-16994 for this bug found by Google P0 team member jannh.

The walk_hugetlb_range function in mm/pagewalk.c in the Linux kernel before 4.14.2 mishandles holes in hugetlb ranges, which allows local users to obtain sensitive information from uninitialized kernel memory via crafted use of the mincore() system call.

References:
http://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2017-16994
http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=373c4557d2aa362702c4c2d41288fb1e54990b7c 
https://bugs.chromium.org/p/project-zero/issues/detail?id=1431

Ciao, Marcus
