Received: (qmail 21926 invoked by uid 550); 6 Mar 2025 03:15:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20463 invoked from network); 6 Mar 2025 03:15:19 -0000
Date: Thu, 6 Mar 2025 04:15:13 +0100
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: Andrew Cooper <andrew.cooper3@citrix.com>
Message-ID: <20250306031513.GA4873@openwall.com>
References: <b3afc964-2840-4583-bb39-e05d390d3e55@citrix.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b3afc964-2840-4583-bb39-e05d390d3e55@citrix.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Xen Security Notice 2 (CVE-2024-35347) AMD CPU Microcode Signature Verification Vulnerability

On Wed, Mar 05, 2025 at 07:11:23PM +0000, Andrew Cooper wrote:
> See:
> 
> https://bughunters.google.com/blog/5424842357473280/zen-and-the-art-of-microcode-hacking
> https://www.amd.com/en/resources/product-security/bulletin/amd-sb-7033.html
> 
> Right now there are four known but (reasonably) benign microcodes from a
> non-AMD source.  However, there is a tool to sign arbitrary microcode.
> 
> In Xen, we've provided a stopgap mitigation to perform extra checks on
> microcode load on affected CPU families.  This is a SHA2 digest check
> against hashes with believed-good provenance.  This is staging only for
> now, in case it is overly disruptive.
> 
> This will not protect against an already-compromised platform, but it
> will prevent an uncompromised system becoming compromised via Xen's
> microcode loading capabilities.

Thank you, Andrew!

Maybe you can also clarify what Xen's threat model is here, and how this
mitigation fits into it?

Specifically, what are "Xen's microcode loading capabilities" and are
they in any way more exposed than the host system's root account?  Even
with Xen's mitigation above, host root can still load microcode without
Xen involvement, right?  Unless you block (at least) MSR access and
kernel module loading?

Also, by "uncompromised system", do you specifically mean uncompromised
at microcode level?  If the threat is from a Xen administrator, then
perhaps that's a partial security compromise already, just not yet
extended to microcode.

These things may be obvious to someone more familiar with Xen, but your
message and answers to the above are also interesting to the rest of us.

> On affected systems, the only complete fix is a firmware update.  This
> is a very firmly recommended course of action.
> 
> Sincerely,
> 
> ~Andrew, on behalf of the Xen Security Team.

Alexander
