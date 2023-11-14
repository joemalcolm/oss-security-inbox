Received: (qmail 21886 invoked by uid 550); 14 Nov 2023 19:24:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19718 invoked from network); 14 Nov 2023 19:24:03 -0000
Date: Tue, 14 Nov 2023 20:24:02 +0100
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: Antonio Gomez Iglesias <antonio.gomez.iglesias@intel.com>,
	Tavis Ormandy <taviso@gmail.com>
Message-ID: <20231114192402.GA12417@openwall.com>
References: <ae728a21-91d5-463d-9f54-44186a01253d@intel.com> <ZVPDUJndrHVBadOt@itl-email>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZVPDUJndrHVBadOt@itl-email>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVE-2023-23583: Intel - Denial of Service - Privilege Escalation (Reptar)

On Tue, Nov 14, 2023 at 01:58:21PM -0500, Demi Marie Obenour wrote:
> Does this also allow privilege escalation from a VM guest to the host?

Per Tavis' writeup, this at least allows a VM guest to trigger machine
check exceptions and halt the host.  So it's at least a DoS.  My reading
is this can cause wrong control flow at least in SMT sibling threads, so
is a privilege escalation risk from VMs at least when SMT is enabled.
Without SMT, it's still at least a DoS.

> What are the limited scenarios?

I would like to know this, too.  I doubt it's been fully researched.

Alexander
