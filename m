X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1035" "Friday" "11" "September" "2015" "04:44:06" "+0900" "sfjro@users.sourceforge.net" "sfjro@users.sourceforge.net" "<32354.1441914246@jrobl>" "28" "[oss-security] Re: CVE request: Use-after-free in Linux kernel with aufs mmap patch" nil nil nil "9" "2015091019:44:06" "[oss-security] Re: CVE request: Use-after-free in Linux kernel with aufs mmap patch" (number mark "        sfjro@users. Sep 11   28/1035  " thread-indent "\"[oss-security] Re: CVE request: Use-after-free in Linux kernel with aufs mmap patch\"\n") "<1441913190.17007.15.camel@decadent.org.uk>" ("<1441913190.17007.15.camel@decadent.org.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20411 invoked by uid 550); 10 Sep 2015 20:25:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9833 invoked from network); 10 Sep 2015 19:44:20 -0000
In-Reply-To: <1441913190.17007.15.camel@decadent.org.uk>
References: <1441913190.17007.15.camel@decadent.org.uk>
Message-ID: <32354.1441914246@jrobl>
Cc: oss-security <oss-security@lists.openwall.com>
Date: Fri, 11 Sep 2015 04:44:06 +0900
From: sfjro@users.sourceforge.net
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: Use-after-free in Linux kernel with aufs mmap patch
To: Ben Hutchings <ben@decadent.org.uk>


Ben Hutchings:
> The aufs (Advanced Union Filesystem) project provides an optional patch
> for the Linux kernel, called either aufs3-mmap.patch or
	:::
> I posted a patch here that works for me:
> http://sourceforge.net/p/aufs/mailman/message/34449209/
>
> Please assign a CVE ID to this.

I know this is a bug but I don't have time to fix it or test your patch.
I am afraid your patch may introduce another problem because you don't
handle vm_prfile. I still think get/put(vm_prfile) is necessary. Its
lifetime should be equivalent to vm_file's essentially. How about the
test case for the race condition between these?
- groupA: msync or madvise
- groupB: mmap and munmap

As you might know, aufs mmap/munmap handle vm_file and vm_prfile. When
aufs munmap calls fput(vm_prfile) and your patch doesn't
fget(vm_prfile), then vm_prfile will be broken. And I am afraid it will
cause a problem like use-after-free.

I have no objection to assign a CVE ID, but I don't think it is fixed or
at least I didn't confirmt yet.


J. R. Okajima
