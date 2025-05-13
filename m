Received: (qmail 13717 invoked by uid 550); 13 May 2025 02:00:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13414 invoked from network); 13 May 2025 02:00:03 -0000
Date: Tue, 13 May 2025 03:59:57 +0200
From: Solar Designer <solar@openwall.com>
To: VMware PSIRT <vmware.psirt@broadcom.com>
Cc: oss-security@lists.openwall.com
Message-ID: <20250513015957.GA29601@openwall.com>
References: <CADOAh9cRx64wR8a7X7918ma_nkYDXzQ8uK6Jsp0q4oe-ECr3Eg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CADOAh9cRx64wR8a7X7918ma_nkYDXzQ8uK6Jsp0q4oe-ECr3Eg@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVE-2025-22247 - Insecure file handling vulnerability in open-vm-tools

Hi,

Thank you very much VMware PSIRT for fixing and disclosing this issue.

I'm sorry I'm not familiar with open-vm-tools, but I thought we could
clarify the below for everyone in here:

On Mon, May 12, 2025 at 06:57:46PM +0530, VMware PSIRT wrote:
> A malicious actor with non-administrative privileges on a guest VM may
> tamper the local files to trigger insecure file operations within that VM.

> https://github.com/vmware/open-vm-tools/tree/CVE-2025-22247.patch

The commit message says:

> Prevent usage of illegal characters in user names and file paths.
> Also, disallow unexpected symlinks in file paths.

Skimming the code changes, I see that the second part - "disallow
unexpected symlinks in file paths" - is implemented by calling
realpath() (or a Windows function on that platform) and seeing whether
that changed the pathname or (almost) not.  However, this will not
disallow a symlink that appears after the realpath() call but before
subsequent use of the pathname.

Is a race condition like this relevant, or is it irrelevant given the
way these tools are normally used?  In other words, is the filesystem
static when this code runs, or is it a live VM where "a malicious actor
with non-administrative privileges" may operate concurrently with this
code running?

Can you please clarify?

Thanks again,

Alexander
