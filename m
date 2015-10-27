X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["936" "Tuesday" "27" "October" "2015" "14:16:44" "+0100" "Sabrina Dubroca" "sd@queasysnail.net" "<20151027131644.GA1699@bistromath.redhat.com>" "36" "[oss-security] CVE Request: Linux kernel: Buffer overflow when copying data from skbuff to userspace" nil nil nil "10" "2015102713:16:44" "[oss-security] CVE Request: Linux kernel: Buffer overflow when copying data from skbuff to userspace" (number mark "U       sd@queasysna Oct 27   36/936   " thread-indent "\"[oss-security] CVE Request: Linux kernel: Buffer overflow when copying data from skbuff to userspace\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7714 invoked by uid 550); 27 Oct 2015 13:17:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7682 invoked from network); 27 Oct 2015 13:16:59 -0000
Message-ID: <20151027131644.GA1699@bistromath.redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
Cc: hannes@stressinduktion.org
Date: Tue, 27 Oct 2015 14:16:44 +0100
From: Sabrina Dubroca <sd@queasysnail.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: Linux kernel: Buffer overflow when copying data from
 skbuff to userspace
To: oss-security@lists.openwall.com

skb_copy_and_csum_datagram_iovec doesn't check the actual length of
the iovec's buffers to which it copies data, then memcpy_toiovec can
copy to an address that was not specified by userspace, but garbage
lying on the kernel stack.

In some cases, this address can be a valid userspace address, to which
memcpy_toiovec will write the buffers.
This can happen when userspace calls write followed by recvmsg.

In that case, memcpy_toiovec will dump the packet contents to the
buffer passed to the write call, and can for example overwrite stack
contents.

Patch has been submitted:
http://patchwork.ozlabs.org/patch/530642/

Versions affected:
stable kernels before v3.19 (3.x.y, x <= 18) that have backported
commit 89c22d8c3b27 ("net: Fix skb csum races when peeking")

v3.18.22
v3.14.54+
v3.12.48, v3.12.49
v3.10.90+
v3.2.72
3.16.7-ckt17, 3.16.7-ckt18
3.13.11-ckt27, 3.13.11-ckt28


Could we get a CVE for this?


Thanks,

-- 
Sabrina
