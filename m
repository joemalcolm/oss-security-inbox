X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4323" "Friday" "19" "March" "2021" "18:00:02" "-0400" "Sasha Levin" "sashal@kernel.org" nil "98" "Re: [oss-security] Re: CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS" nil nil nil "3" nil nil (number mark "U       sashal@kerne Mar 19   98/4323  " thread-indent "\"Re: [oss-security] Re: CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Re: CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10168 invoked by uid 550); 19 Mar 2021 22:00:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10143 invoked from network); 19 Mar 2021 22:00:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1616191203;
	bh=WgP+mgXgQPfIONN+Ungar6y7xrWqfKQBKw97sZcjjPE=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=biroFJMrkKRPBpfy7V98XYLWEp4LRswGVBAYqLmttSup1QEVV5KsTKDP29sLC4AqV
	 dxZz9yXv2QHeQal8hBSA4Hk+8lk//8hpb6UVEa/cb8TAqcoLoJADBNFFkTCtvmR6ad
	 OcC+8+O5KnSWkZrwJWly6yums2g01JQwzx1J6PwJZG8O4YEMMPezupPzsDu+eRe1v3
	 468Y0fMHWu8oKY96MLPUYrjb9ZqCM6HewMD4etxWJy3tGFjt7l9C7kFiKmCZT7coYv
	 juB2Eie/O+5B2wskkUmy01LhgRhxy6bpFbxW9zVfF8s+zzZYOfwfUPWdp5LZ1II5JX
	 jVR/6xSFJd4gQ==
Date: Fri, 19 Mar 2021 18:00:02 -0400
From: Sasha Levin <sashal@kernel.org>
To: oss-security@lists.openwall.com
Message-ID: <YFUe4hco+OuepKah@sashalap>
References: <YFNCtWmsYrtYQeEJ@kroah.com>
 <YFOLo/QrlgIrFotJ@wopr>
 <YFOc8bhUAKOgjfVS@sashalap>
 <20210318192136.GA6178@openwall.com>
 <YFSyTOoNtyrQvrH3@sashalap>
 <20210319144311.GA22152@grsecurity.net>
 <YFTlezXaxyIRxcKN@sashalap>
 <20210319195825.GA28654@grsecurity.net>
 <YFULl+8RMJkYL67G@sashalap>
 <20210319210008.GA646@grsecurity.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210319210008.GA646@grsecurity.net>
Subject: Re: [oss-security] Re: CVE-2021-20219 Linux kernel: improper
 synchronization in flush_to_ldisc() can lead to DoS

On Fri, Mar 19, 2021 at 05:00:08PM -0400, Brad Spengler wrote:
>Hi Sasha,
>
>> So this CVE link above is exactly what I referred to: how do you go from
>> CVE-2021-3428 to the commit in question?
>
>For that particular one, the original email was:
>https://seclists.org/oss-sec/2021/q1/212
>to which I had already replied here:
>https://seclists.org/oss-sec/2021/q1/220
>
>The investigation for that email took only a few minutes.  It didn't have to
>be done via the CVE link, as https://bugzilla.suse.com/show_bug.cgi?id=1173485
>was provided in the email.  At that link was the report from Wolfgang Frisch.
>A simple git log --grep "Wolfgang Frisch" -- fs/ext4 immediately gets you:
>
>commit ce9f24cccdc019229b70a5c15e2b09ad9c0ab5d1
>Author: Jan Kara <jack@suse.cz>
>Date:   Tue Jul 28 15:04:34 2020 +0200
>
>    ext4: check journal inode extents more carefully
>
>    Currently, system zones just track ranges of block, that are "important"
>    fs metadata (bitmaps, group descriptors, journal blocks, etc.). This
>    however complicates how extent tree (or indirect blocks) can be checked
>    for inodes that actually track such metadata - currently the journal
>    inode but arguably we should be treating quota files or resize inode
>    similarly. We cannot run __ext4_ext_check() on such metadata inodes when
>    loading their extents as that would immediately trigger the validity
>    checks and so we just hack around that and special-case the journal
>    inode. This however leads to a situation that a journal inode which has
>    extent tree of depth at least one can have invalid extent tree that gets
>    unnoticed until ext4_cache_extents() crashes.
>
>    To overcome this limitation, track inode number each system zone belongs
>    to (0 is used for zones not belonging to any inode). We can then verify
>    inode number matches the expected one when verifying extent tree and
>    thus avoid the false errors. With this there's no need to to
>    special-case journal inode during extent tree checking anymore so remove
>    it.
>
>    Fixes: 0a944e8a6c66 ("ext4: don't perform block validity checks on the journal inode")
>    Reported-by: Wolfgang Frisch <wolfgang.frisch@suse.com>
>
>Or you could look at the comment from the bugzilla:
>https://bugzilla.suse.com/show_bug.cgi?id=1173485#c6
>
>which provided commit titles to grep for, including the one above.
>
>For https://seclists.org/oss-sec/2021/q1/228, it was already familiar to me,
>but visiting: https://bugzilla.redhat.com/show_bug.cgi?id=CVE-2020-35519
>an (upstream) patch is included to net/x25/af_x25.c.  Even something very
>basic like:
>git log --grep "x25_bind" -- net/x25/af_x25.c gets you the same patch posted:
>
>commit 07632721dc2d4d2e30ec3010edfbd2f251884912
>Author: Dan Carpenter <dan.carpenter@oracle.com>
>Date:   Tue Dec 1 18:15:12 2020 +0300
>
>    net/x25: prevent a couple of overflows
>
>    The .x25_addr[] address comes from the user and is not necessarily
>    NUL terminated.  This leads to a couple problems.  The first problem is
>    that the strlen() in x25_bind() can read beyond the end of the buffer.
>
>    The second problem is more subtle and could result in memory corruption.
>    The call tree is:
>      x25_connect()
>      --> x25_write_internal()
>          --> x25_addr_aton()
>
>    The .x25_addr[] buffers are copied to the "addresses" buffer from
>    x25_write_internal() so it will lead to stack corruption.
>
>    Verify that the strings are NUL terminated and return -EINVAL if they
>    are not.
>
>    Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
>    Fixes: a9288525d2ae ("X25: Dont let x25_bind use addresses containing characters")
>    Reported-by: "kiyin(尹亮)" <kiyin@tencent.com>
>    Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
>    Acked-by: Martin Schiller <ms@dev.tdt.de>
>    Link: https://lore.kernel.org/r/X8ZeAKm8FnFpN//B@mwanda
>    Signed-off-by: Jakub Kicinski <kuba@kernel.org>
>
>I would expect stable maintainers to be capable of this same basic analysis with similar
>speed :)

And this is exactly my point: you are advocating for tens of people to
do detective work instead of just linking basic things like the commit
id in the announcement mail.

Specially when the commits in question have been upstream for
months/years.

-- 
Thanks,
Sasha
