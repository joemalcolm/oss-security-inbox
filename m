X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["667" "Saturday" "12" "February" "2022" "02:04:11" "-0500" "Wenqing Liu" "liu@cs.fsu.edu" nil "12" "[oss-security] CVE-2021-44879: kernel:NULL pointer dereference in fs/f2fs/gc.c:move_data_page" nil nil nil "2" nil nil (number mark "U       liu@cs.fsu.e Feb 12   12/667   " thread-indent "\"[oss-security] CVE-2021-44879: kernel:NULL pointer dereference in fs/f2fs/gc.c:move_data_page\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-44879: kernel:NULL pointer dereference in fs/f2fs/gc.c:move_data_page" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23904 invoked by uid 550); 12 Feb 2022 07:22:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9484 invoked from network); 12 Feb 2022 07:04:28 -0000
DKIM-Filter: OpenDKIM Filter v2.11.0 smtpin2.cs.fsu.edu ADB6212006E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=cs.fsu.edu; s=201902;
	t=1644649452; bh=0wszEwaIQwV9Oal81jaGRn7r6Tlmmpm0A95t8QXmG/8=;
	h=Date:From:To:Subject:From;
	b=ZsdnMZ6VHGVG7O7tPkBuCV4AcNEhQj5ypqd0gEnzBqqcUvIrUeR2tJqklM7TpRqs3
	 /vYALdfQGckApcl/UeIRKXq9+SeYgfpgPR8xNNgm6Mg+on9gUtlm38VyvDtsEG0wBI
	 M3SyB+HL7RjzTl+uSiRoL2jxe9B6zqbOiq5/qU+BamNAV/ICzpXwifJkcM3KQbuV/d
	 qYy6zk+50udCB82CCoDQdyKvpKKBLxbqu+PUXuUEeETCp9Ys5O/fcBdPOY8Qs5S5+k
	 En/EDAbnx++CtqeF/0MeW4RQRCgNmlsYywlvewXVIBmVwqUbfj8KvxIjH7Q2w97/9t
	 kvseGIorZpQ4wurc1PfQMZpQW/mievUnQFgkxxC3JcER+RZmKvN8aQViZPF4yrWCVm
	 NrPPoKuoJalhsjqqnqc20MpV+3k2OdT52F3UvApyzS5cnWeViHAacoLi3AdRSYVIn0
	 v2IgdNWhl1OH8A5eHFJowVuJrHvnNG5gowM7qdZP0F+Fs7Dcauudo1mLB+Jh1gw6BF
	 Kyb0IohArnIWeMledlqUYpIp70T9dLmDI97oFCI4HuKjEysYAP8Q617Wij/JBMlKrB
	 0jIm73Po5y8mfLSRGpu560VHukU4yWFYHaiNKi0TGpJcYU+mPQvj8Rrrf61tmIRNk1
	 OPphsMG77sJDr9XMoWqC9B04=
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date: Sat, 12 Feb 2022 02:04:11 -0500
From: Wenqing Liu <liu@cs.fsu.edu>
To: oss-security@lists.openwall.com
Message-ID: <fe41809854d203124f41164b8374456a@cs.fsu.edu>
X-Sender: liu@cs.fsu.edu
User-Agent: Roundcube Webmail/1.1.4
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2 (smtpin2.cs.fsu.edu [127.0.0.1]); Sat, 12 Feb 2022 02:04:11 -0500 (EST)
X-Greylist: inspected by milter-greylist-4.6.2 (smtpin2.cs.fsu.edu [127.0.0.1]); Sat, 12 Feb 2022 02:04:11 -0500 (EST) for IP:'128.186.120.63' DOMAIN:'mail2.cs.fsu.edu' HELO:'mail2.cs.fsu.edu' FROM:'liu@cs.fsu.edu' RCPT:''
X-FSUCS-MailScanner-Information: Please contact the ISP for more information
X-FSUCS-MailScanner-ID: ADB6212006E.A8429
X-FSUCS-MailScanner: Found to be clean
X-FSUCS-MailScanner-From: liu@cs.fsu.edu
X-FSUCS-MailScanner-Watermark: 1645254253.33686@xKn88uVR4ZZ0ofLNH3bJpA
Subject: [oss-security] CVE-2021-44879: kernel:NULL pointer dereference in
 fs/f2fs/gc.c:move_data_page

Description:
In move_data_page in fs/f2fs/gc.c in the Linux kernel 5.15.1-5.15.16, 
there is an NULL pointer dereference when f2fs tries to migrate a block 
that belong to special file, and the file doesn't have assigned address 
space operations pointer array for mapping->a_ops field but called 
a_ops->set_dirty_page(). Could cause denial of service when mounting and 
operate on the crafted image.

References:
https://bugzilla.kernel.org/show_bug.cgi?id=215231
https://lore.kernel.org/linux-f2fs-devel/20211206144421.3735-3-chao@kernel.org/T/
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=9056d6489f5a41cfbb67f719d2c0ce61ead72d9f
