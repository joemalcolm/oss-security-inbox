X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3246" "Thursday" "24" "February" "2022" "12:52:00" "-0800" "Eric Biggers" "ebiggers@kernel.org" nil "66" "Re: [oss-security] fscrypt: Multiple File System Related Security Issues (CVE-2022-25326, CVE-2022-25327, CVE-2022-25328)" nil nil nil "2" nil nil (number mark "U       ebiggers@ker Feb 24   66/3246  " thread-indent "\"Re: [oss-security] fscrypt: Multiple File System Related Security Issues (CVE-2022-25326, CVE-2022-25327, CVE-2022-25328)\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] fscrypt: Multiple File System Related Security Issues (CVE-2022-25326, CVE-2022-25327, CVE-2022-25328)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1295 invoked by uid 550); 24 Feb 2022 20:54:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29772 invoked from network); 24 Feb 2022 20:52:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1645735922;
	bh=eNe2Uytz1MH/yeG8QLDN1rNyVFxrLOOoDyIVT76lGOw=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=ErJzNT+x7FgS2yt1VmoeTUszrX/wP8Ir1GCsgMtWOpqJfc7gtuREH8muHtdumrWtI
	 IsizNt+PAHv8uSVoVOirzWk+gtEfv3ybStsdrllRyH+U3giGVTxPgxNvI6QCJGij7r
	 iuUggKI+FqSAfhgwlqRN3w+iKQgsRc+fSLspMgmEewrCp62eW6W2rfokDDbRIn/dZ2
	 7datNJ6IxGkwl8ytwSqWpx8fG+q6RjJUDp3blVnJm1tLhFOXb80wTKssRJmzTkqnWY
	 u6bMuxGt75I52lbh7xUmszyzXg3nTX0rg5cQPxu2pi1aHGFB37+shZyK58kXRr6apg
	 cF5Exci6sHYlg==
Date: Thu, 24 Feb 2022 12:52:00 -0800
From: Eric Biggers <ebiggers@kernel.org>
To: oss-security@lists.openwall.com
Message-ID: <Yhfv8GPdgFbbiGXk@sol.localdomain>
References: <Yhds/v3yH6YV/gKQ@f195.suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Yhds/v3yH6YV/gKQ@f195.suse.de>
Subject: Re: [oss-security] fscrypt: Multiple File System Related Security
 Issues (CVE-2022-25326, CVE-2022-25327, CVE-2022-25328)

On Thu, Feb 24, 2022 at 12:33:18PM +0100, Matthias Gerstner wrote:
> Hello list,
> 
> in the context of a request to include Fscrypt [1] into openSUSE Tumbleweed
> a routine review of the package was required, as it contains a PAM module.
> In the course of the review I discovered a number of file system management
> related security issues.
> 
> I have been reviewing Fscrypt version 0.3.1. Shortly later 0.3.2 got
> released, with minor changes in the PAM module but some more changes in
> other areas. All issues and source code locations mentioned in this report
> relate to the upstream version tag v0.3.1. Most of the findings are also
> valid for 0.3.2, however.
> 
> All acknowledged issues mentioned in this report have been addressed in the
> new Fscrypt upstream release version v0.3.3.

Thanks for doing a security review and reporting all of these!

To provide some extra context for readers: "fscrypt" here refers to the
userspace tool https://github.com/google/fscrypt, not to the kernel side of
Linux native filesystem encryption which is also sometimes called fscrypt
(https://www.kernel.org/doc/html/latest/filesystems/fscrypt.html).  These
vulnerabilities only affected the userspace tool.  Also, these are not
cryptographic vulnerabilities.

One correction below:

> 5.i) Another User can Cause a Foreign Key to be Applied to its own File System
> ------------------------------------------------------------------------------
> 
> Let's consider a malicious local user that has control over the root directory
> of some mounted file system e.g. let's consider its own home directory is a
> separate mount. Then this malicious user can do this:
> 
>     $ ln -s /.fscrypt /home/$USER/.fscrypt
> 
> Actually a copy of all the files should also suffice. That Fscrypt is
> following symlinks is an extra degree of freedom that is exploited here. The
> `filesystem/CheckSetup()` function does only check the mode bits of the
> involved directories, but not the actual *owners*, therefore a plain copy of
> the directories and files would also be working.
> 
> Now when another user unlocks its Protector via the PAM module, the module
> will also look into other file systems and since a matching policy will be
> found for /home/$USER, the following (strace) happens (with $USER = attacker):
> 
>     openat(AT_FDCWD, "/home/attacker", O_RDONLY|O_CLOEXEC) = 4
>     ioctl(4, FS_IOC_ADD_ENCRYPTION_KEY, 0x7f2738d29000) = 0
> 
> So the encryption key is added to a completely unrelated file system. The
> attacking user does not seem to have the ability to take advantage of this,
> because the key cannot be retrieved back and the ciphertext of the
> originally encrypted data can also not easily be duplicated on the other file
> system to have the kernel decrypt it.
> 
> Upstream acknowledges this issue but doesn't see an attack vector in it,
> because the attacker cannot take any advantage of it.

I believe this one did get addressed by
https://github.com/google/fscrypt/commit/85a747493ff368a72f511619ecd391016ecb933c
("Extend ownership validation to entire directory structure").  With that, by
default pam_fscrypt will only consider filesystems whose root directory is owned
by root or by the user logging in.

- Eric
