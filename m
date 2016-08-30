X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["714" "Tuesday" "30" "August" "2016" "23:55:22" "+0530" "P J P" "ppandit@redhat.com" "<alpine.LFD.2.20.1608302353500.6066@wniryva>" "21" "[oss-security] Re: CVE request: Qemu: 9p: directory traversal flaw in 9p virtio backend" "^cc:" nil nil "8" "2016083018:25:22" "[oss-security] Re: CVE request: Qemu: 9p: directory traversal flaw in 9p virtio backend" (number mark "        ppandit@redh Aug 30   21/714   " thread-indent "\"[oss-security] Re: CVE request: Qemu: 9p: directory traversal flaw in 9p virtio backend\"\n") "<alpine.LFD.2.20.1608301244260.2278@wniryva>" ("<alpine.LFD.2.20.1608301244260.2278@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27942 invoked by uid 550); 30 Aug 2016 18:25:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27916 invoked from network); 30 Aug 2016 18:25:40 -0000
X-X-Sender: pjp@javelin
In-Reply-To: <alpine.LFD.2.20.1608301244260.2278@wniryva>
Message-ID: <alpine.LFD.2.20.1608302353500.6066@wniryva>
References: <alpine.LFD.2.20.1608301244260.2278@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.31]); Tue, 30 Aug 2016 18:25:28 +0000 (UTC)
cc: Felix Wilhelm <fwilhelm@ernw.de>
Date: Tue, 30 Aug 2016 23:55:22 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: Qemu: 9p: directory traversal flaw in 9p virtio
 backend
To: oss security list <oss-security@lists.openwall.com>

+-- On Tue, 30 Aug 2016, P J P wrote --+
|   Hello,
| 
| Quick Emulator(Qemu) built with the VirtFS, host directory sharing via Plan 9
| File System(9pfs) support, is vulnerable to a directory/path traversal issue.
| It could occur while creating or accessing files on a shared host directory.
| 
| A privileged user inside guest could use this flaw to access undue files on
| the host.
| 
| Upstream patches:
| -----------------
|   -> https://lists.gnu.org/archive/html/qemu-devel/2016-08/msg03917.html

Few revised patches:
   -> https://lists.gnu.org/archive/html/qemu-devel/2016-08/msg04231.html

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
