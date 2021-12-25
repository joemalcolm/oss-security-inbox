X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["457" "Friday" "24" "December" "2021" "22:20:14" "-0500" "Wenqing Liu" "liu@cs.fsu.edu" nil "9" "[oss-security] CVE-2021-45469: Linux kernel: an out-of-bounds memory access in fs/f2fs/xattr.c __f2fs_setxattr" nil nil nil "12" nil nil (number mark "U       liu@cs.fsu.e Dec 24    9/457   " thread-indent "\"[oss-security] CVE-2021-45469: Linux kernel: an out-of-bounds memory access in fs/f2fs/xattr.c __f2fs_setxattr\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-45469: Linux kernel: an out-of-bounds memory access in fs/f2fs/xattr.c __f2fs_setxattr" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1821 invoked by uid 550); 25 Dec 2021 03:41:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27811 invoked from network); 25 Dec 2021 03:20:32 -0000
DKIM-Filter: OpenDKIM Filter v2.11.0 smtpin2.cs.fsu.edu 3E033120075
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=cs.fsu.edu; s=201902;
	t=1640402415; bh=VEVr0kCEb8urjCWagOiR5rA2L80OWS/e1d6+4ZRKj3o=;
	h=Date:From:To:Subject:From;
	b=KItl6kvNMNhSNfbpt9NOvrpTHrgBmp7+PbI6u7BQCuymBP03d8/HkZkVxMDFriwWt
	 Jtw7/0+2VhFNBHZfClnQfXgarfS6P3OxrBmIjj0KJF5cghJ6eAghfvCir7iENDuhwK
	 iRRqF68YYkeqhR7zFtGH18WzYoyRl/50PxpFH8vFF48gbt05Ajk21kuw6ePz//ELxN
	 7PjeelCQnWhLljL81O0NFPXgX990p+rERSBU8MG0sPt0Vebs1Ww3hQsVimyQiSg3b/
	 N5hfwQafAhuIZreCTc5EgdAdkdu2lmyT2ikFfnqazgTn/1A1a2RemJLQDuWy1JFKUH
	 ma+E2XkQDqZe7cIBoJb7tBAwKv3ZHN3PiLWR9INVmN7Lujn3hl/kZWWa13EtQeFeKA
	 jPzGXWdzaPwE3r9F+k2kS0BcrbwcS6xBVVz05+qdXHe0zx31yFEgxAL6YuvlA4C+XV
	 sPxUq/kVA45kGSWfLGkvTcfrji62+Gbngg9WLe3WyKLjxWp+zo3aKm0Q7VN1VzNnhg
	 O65ZGC/0B569UJ74aJwZWbO+wu6V30t+y6JhcER88dwU8GhS+bE3Tv48XpoScuhJHM
	 eK/vGVNakKTsOOQDZFiIQOwVzXhhsP7rvm3AVfPk0ROE0xtLYbsgixjYoI3fxKwWyZ
	 sx01kMaKycArEEW+SG7/L6hM=
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date: Fri, 24 Dec 2021 22:20:14 -0500
From: Wenqing Liu <liu@cs.fsu.edu>
To: oss-security@lists.openwall.com
Message-ID: <2f0de58430174b1c22dd671ec3c23a04@cs.fsu.edu>
X-Sender: liu@cs.fsu.edu
User-Agent: Roundcube Webmail/1.1.4
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2 (smtpin2.cs.fsu.edu [127.0.0.1]); Fri, 24 Dec 2021 22:20:14 -0500 (EST)
X-Greylist: inspected by milter-greylist-4.6.2 (smtpin2.cs.fsu.edu [127.0.0.1]); Fri, 24 Dec 2021 22:20:14 -0500 (EST) for IP:'128.186.120.63' DOMAIN:'mail2.cs.fsu.edu' HELO:'mail2.cs.fsu.edu' FROM:'liu@cs.fsu.edu' RCPT:''
X-FSUCS-MailScanner-Information: Please contact the ISP for more information
X-FSUCS-MailScanner-ID: 3E033120075.A3012
X-FSUCS-MailScanner: Found to be clean
X-FSUCS-MailScanner-From: liu@cs.fsu.edu
X-FSUCS-MailScanner-Watermark: 1641007217.36607@1B6CEuNo4NWBnZdJkcys7w
Subject: [oss-security] CVE-2021-45469: Linux kernel: an out-of-bounds memory access in
 fs/f2fs/xattr.c __f2fs_setxattr

Description:
In __f2fs_setxattr in fs/f2fs/xattr.c in the Linux kernel through 
5.15.11, there is an out-of-bounds memory access when an inode has an 
invalid last xattr entry. Could cause denial of service or other issues 
when mounting and operate on the crafted image.

References:
https://bugzilla.kernel.org/show_bug.cgi?id=215235
https://git.kernel.org/pub/scm/linux/kernel/git/chao/linux.git/commit/?h=dev&id=5598b24efaf4892741c798b425d543e4bed357a1
