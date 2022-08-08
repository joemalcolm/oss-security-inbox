Received: (qmail 24092 invoked by uid 550); 8 Aug 2022 10:00:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23922 invoked from network); 8 Aug 2022 10:00:48 -0000
Date: Mon, 8 Aug 2022 12:00:42 +0200
From: Solar Designer <solar@openwall.com>
To: David Hildenbrand <david@redhat.com>
Cc: oss-security@lists.openwall.com
Message-ID: <20220808100042.GA17049@openwall.com>
References: <1973d16e-bb3e-c5b2-74e0-cc2faf9db2bd@redhat.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1973d16e-bb3e-c5b2-74e0-cc2faf9db2bd@redhat.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVE-2022-2590: Linux kernel: Modifying shmem/tmpfs files without write permissions

On Mon, Aug 08, 2022 at 09:18:27AM +0200, David Hildenbrand wrote:
> I found a security issue (CVE-2022-2590) in the Linux kernel similar to
> Dirty COW (CVE-2016-5195), however, restricted to shared memory (shmem /
> tmpfs). I notified distributions one week ago and the embargo ended today.
> 
> An unprivileged user can modify file content of a shmem (tmpfs) file,
> even if that user does not have write permissions to the file. The file
> could be an executable.
> 
> The introducing upstream commit ID is:
>   9ae0f87d009c ("mm/shmem: unconditionally set pte dirty in
>   mfill_atomic_install_pte")
> 
> Linux >= v5.16 is affected on x86-64 and aarch64 if the kernel is
> compiled with CONFIG_USERFAULTFD=y. For Linux < v5.19 it's sufficient to
> revert the problematic commit, which is possible with minor contextual
> conflicts. For Linux >= v5.19 I'll send a proposal fix today.

Thanks, David!

Apparently, your proposed fix for Linux >= v5.19 is this, as you posted
to linux-kernel and linux-mm:

[PATCH v1] mm/gup: fix FOLL_FORCE COW security issue and remove FOLL_COW
https://lists.openwall.net/linux-kernel/2022/08/08/418
https://lore.kernel.org/linux-mm/20220808073232.8808-1-david@redhat.com/
(two links to the same message)

> I have a working reproducer that I will post as reply to this mail in
> one week (August 15).

Alexander
