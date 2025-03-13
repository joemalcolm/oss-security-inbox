Received: (qmail 1443 invoked by uid 550); 13 Mar 2025 04:14:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28390 invoked from network); 13 Mar 2025 03:55:49 -0000
Date: Thu, 13 Mar 2025 04:55:36 +0100
From: Solar Designer <solar@openwall.com>
To: Andrew Cooper <andrew.cooper3@citrix.com>
Cc: oss-security@lists.openwall.com
Message-ID: <20250313035536.GA20899@openwall.com>
References: <b3afc964-2840-4583-bb39-e05d390d3e55@citrix.com> <20250306031513.GA4873@openwall.com> <b21e9116-4108-4d52-b3b0-8c1e96486888@citrix.com> <20250306044856.GA6417@openwall.com> <bfaecb7c-25a9-406a-a4ca-a55a32c3ae43@citrix.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bfaecb7c-25a9-406a-a4ca-a55a32c3ae43@citrix.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Xen Security Notice 2 (CVE-2024-35347) AMD CPU Microcode Signature Verification Vulnerability

On Sat, Mar 08, 2025 at 01:28:07AM +0000, Andrew Cooper wrote:
> On 06/03/2025 4:48 am, Solar Designer wrote:
> > On Thu, Mar 06, 2025 at 04:11:25AM +0000, Andrew Cooper wrote:
> >> This issue wins points for spite, because the highest risk users are the
> >> ones who were taking proactive steps to try and improve their security,
> >> betting that AMD's patchloader crypto was sound.
> > OK, so this is to protect legitimate sysadmins from loading malicious
> > microcode inadvertently or via a supply chain attack.  Makes sense.
> 
> Sorry for the delay, I knew there was a distro formally doing this, but
> I'd lost track of the links.
> 
> https://github.com/divestedcg/real-ucode which is packaged for Arch as
> https://aur.archlinux.org/packages/amd-real-ucode-git (and an equivalent
> Intel package).

Thank you for these followup postings, Andrew!  They're very helpful.

I have one late nitpick to add - as jericho @attritionorg pointed out on
Twitter, the Subject line here gives an incorrect CVE number.  The
correct one is CVE-2024-36347.

Alexander
