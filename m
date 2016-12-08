X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1215" "Friday" "9" "December" "2016" "00:14:15" "+0100" "Marcus Meissner" "meissner@suse.de" "<20161208231415.GA4588@suse.de>" "33" "[oss-security] Linux Kernel use-after-free in SCSI generic device interface" nil nil nil "12" "2016120823:14:15" "[oss-security] Linux Kernel use-after-free in SCSI generic device interface" (number mark "U       meissner@sus Dec  9   33/1215  " thread-indent "\"[oss-security] Linux Kernel use-after-free in SCSI generic device interface\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9276 invoked by uid 550); 8 Dec 2016 23:14:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9245 invoked from network); 8 Dec 2016 23:14:27 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Fri, 9 Dec 2016 00:14:15 +0100
From: Marcus Meissner <meissner@suse.de>
To: OSS Security List <oss-security@lists.openwall.com>
Message-ID: <20161208231415.GA4588@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: [oss-security] Linux Kernel use-after-free in SCSI generic device interface

Hi folks,

This is CVE-2016-9576.

This original post from  Dmitry Vyukov <dvyukov @ google . com> has a kasan/syzkaller report:
https://marc.info/?l=linux-scsi&m=148010092224801&w=2

https://gist.githubusercontent.com/dvyukov/80cd94b4e4c288f16ee4c787d404118b/raw/10536069562444da51b758bb39655b514ff93b45/gistfile1.txt

which in turn turned out to be a kernel memory read or
potentially even a kernel memory write, in using the scatter gather
write mode of the /dev/sg* scsi generic devices.

The affected code is in Linux down to 2.6.something (problem might require splice() to be exploitable).

Linus has committed a fix for this to mainline:

commit a0ac402cfcdc904f9772e1762b3fda112dcc56a0
Author: Linus Torvalds <torvalds@linux-foundation.org>
Date:   Tue Dec 6 16:18:14 2016 -0800

    Don't feed anything but regular iovec's to blk_rq_map_user_iov

    In theory we could map other things, but there's a reason that function
    is called "user_iov".  Using anything else (like splice can do) just
    confuses it.

    Reported-and-tested-by: Johannes Thumshirn <jthumshirn@suse.de>
    Cc: Al Viro <viro@ZenIV.linux.org.uk>
    Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>


Ciao, Marcus
