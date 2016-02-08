X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["409" "Monday" "8" "February" "2016" "16:45:17" "+0000" "John Haxby" "john.haxby@oracle.com" "<56B8C61D.6060006@oracle.com>" "11" "[oss-security] CVE-2016-0617: linux kernel: hugetlbfs: fix bugs in hugetlb_vmtruncate_list()" nil nil nil "2" "2016020816:45:17" "[oss-security] CVE-2016-0617: linux kernel: hugetlbfs: fix bugs in hugetlb_vmtruncate_list()" (number mark "U       john.haxby@o Feb  8   11/409   " thread-indent "\"[oss-security] CVE-2016-0617: linux kernel: hugetlbfs: fix bugs in hugetlb_vmtruncate_list()\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32436 invoked by uid 550); 8 Feb 2016 16:45:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32415 invoked from network); 8 Feb 2016 16:45:32 -0000
To: oss-security@lists.openwall.com
From: John Haxby <john.haxby@oracle.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <56B8C61D.6060006@oracle.com>
Date: Mon, 8 Feb 2016 16:45:17 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.5.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Source-IP: userv0022.oracle.com [156.151.31.74]
Subject: [oss-security] CVE-2016-0617: linux kernel: hugetlbfs: fix bugs in
 hugetlb_vmtruncate_list()

Hello All,

There was a bug in the linux kernel's hugetlbfs handling of punching
holes in huegtlbfs files with either truncate or fallocate.  The problem
was introduced in 1bfad99ab (" hugetlbfs: hugetlb_vmtruncate_list()
needs to take a range", 4.3-rc1) and, I think, fixed in 9aacdd354d19
("fs/hugetlbfs/inode.c: fix bugs in hugetlb_vmtruncate_list(), 4.5-rc1).

This issue was assigned CVE-2016-0617.

jch
