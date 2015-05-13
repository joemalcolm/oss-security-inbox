X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2594" "Wednesday" "13" "May" "2015" "19:18:23" "+0300" "Solar Designer" "solar@openwall.com" "<20150513161823.GA17176@openwall.com>" "45" "Re: [oss-security] VENOM - CVE-2015-3456" nil nil nil "5" "2015051316:18:23" "[oss-security] VENOM - CVE-2015-3456" (number mark "        solar@openwa May 13   45/2594  " thread-indent "\"Re: [oss-security] VENOM - CVE-2015-3456\"\n") "<ba24ac6088a34b9d97fd721591f1e922@casmbox01.crowdstrike.sys>" ("<ba24ac6088a34b9d97fd721591f1e922@casmbox01.crowdstrike.sys>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11630 invoked by uid 550); 13 May 2015 16:18:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11578 invoked from network); 13 May 2015 16:18:38 -0000
Message-ID: <20150513161823.GA17176@openwall.com>
References: <ba24ac6088a34b9d97fd721591f1e922@casmbox01.crowdstrike.sys>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ba24ac6088a34b9d97fd721591f1e922@casmbox01.crowdstrike.sys>
User-Agent: Mutt/1.4.2.3i
Cc: oss-security@lists.openwall.com
Date: Wed, 13 May 2015 19:18:23 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] VENOM - CVE-2015-3456
To: Jason Geffner <jason@crowdstrike.com>

All -

JFYI, Jason first brought this issue to the distros list on April 30.

Jason -

Thank you for making this mandatory oss-security posting, but ...

On Wed, May 13, 2015 at 12:22:19PM +0000, Jason Geffner wrote:
> VENOM, CVE-2015-3456, is a security vulnerability in the virtual floppy drive code used by many computer virtualization platforms. This vulnerability may allow an attacker to escape from the confines of an affected virtual machine (VM) guest and potentially obtain code-execution access to the host. Absent mitigation, this VM escape could open access to the host system and all other VMs running on that host, potentially giving adversaries significant elevated access to the host's local network and adjacent systems.

This is way too little technical detail.  Your distros list posting
included a 4-page PDF file that actually contained some technical
detail.  Ideally, you'd post a text-only advisory with at least similar
level of detail in here.  Can you do that, please?

> Exploitation of the VENOM vulnerability can expose access to corporate intellectual property (IP), in addition to sensitive and personally identifiable information (PII), potentially impacting the thousands of organizations and millions of end users that rely on affected VMs for the allocation of shared computing resources, as well as connectivity, storage, security, and privacy.

This paragraph is purely PR.  Not appropriate content for oss-security.

> Please see http://venom.crowdstrike.com/ for further details.

While links to external resources are acceptable, ideally you'd include
the technical detail right in your oss-security posting as well.

Anyway, going to that URL I see only a FAQ that is lacking on technical
detail, and download links for the graphics.  There isn't even a
download link for the pretty PDF you had ready 2 weeks ago, or did I
miss it?  Maybe add it now?  Once again, ideally the content should be
right here and in text form rather than only on CrowdStrike website and
"in graphics" or in PDF, but making that PDF available for download is a
step in the right direction.

I am sorry for the criticism.  I actually appreciate your discovery and
handling of this vulnerability.  But you can clearly do better in the
ways I mentioned above, and clearly people are now wondering whether the
vulnerability is actually exploitable or just hype.  For example,
questions and concerns and sarcasm of this sort have appeared multiple
times on my Twitter timeline today.

I'd appreciate it if you release more information to the general public.

Thanks,

Alexander
