Received: (qmail 5629 invoked by uid 550); 24 Sep 2025 02:39:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5207 invoked from network); 24 Sep 2025 02:39:09 -0000
Date: Wed, 24 Sep 2025 04:37:39 +0200
From: Solar Designer <solar@openwall.com>
To: VMware PSIRT <vmware.psirt@broadcom.com>
Cc: oss-security@lists.openwall.com, John Wolfe <john.wolfe@broadcom.com>
Message-ID: <20250924023739.GA21012@openwall.com>
References: <CADOAh9cRx64wR8a7X7918ma_nkYDXzQ8uK6Jsp0q4oe-ECr3Eg@mail.gmail.com> <20250513015957.GA29601@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250513015957.GA29601@openwall.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVE-2025-22247 - Insecure file handling vulnerability in open-vm-tools

Hi,

I'm sorry I just let this stay without a follow-up at the time.  I am
CC'ing John Wolfe now, who authored the patch commit.

I do think the fix was incomplete.  As someone wrote to me off-list at
the time (didn't want to post publicly, so I post without attribution):

> I let the oher person respond publicly, but the open-vm-tools runs in the VM as
> a service and communicates with VMware. So it is both risk to the VM itself and
> to the VMware ESXi (or vCenter).

To me, this means that the risk of race conditions applies.

Alexander

On Tue, May 13, 2025 at 03:59:57AM +0200, Solar Designer wrote:
> Hi,
> 
> Thank you very much VMware PSIRT for fixing and disclosing this issue.
> 
> I'm sorry I'm not familiar with open-vm-tools, but I thought we could
> clarify the below for everyone in here:
> 
> On Mon, May 12, 2025 at 06:57:46PM +0530, VMware PSIRT wrote:
> > A malicious actor with non-administrative privileges on a guest VM may
> > tamper the local files to trigger insecure file operations within that VM.
> 
> > https://github.com/vmware/open-vm-tools/tree/CVE-2025-22247.patch
> 
> The commit message says:
> 
> > Prevent usage of illegal characters in user names and file paths.
> > Also, disallow unexpected symlinks in file paths.
> 
> Skimming the code changes, I see that the second part - "disallow
> unexpected symlinks in file paths" - is implemented by calling
> realpath() (or a Windows function on that platform) and seeing whether
> that changed the pathname or (almost) not.  However, this will not
> disallow a symlink that appears after the realpath() call but before
> subsequent use of the pathname.
> 
> Is a race condition like this relevant, or is it irrelevant given the
> way these tools are normally used?  In other words, is the filesystem
> static when this code runs, or is it a live VM where "a malicious actor
> with non-administrative privileges" may operate concurrently with this
> code running?
> 
> Can you please clarify?
> 
> Thanks again,
> 
> Alexander
