Received: (qmail 11692 invoked by uid 550); 31 Oct 2025 21:47:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32497 invoked from network); 31 Oct 2025 17:20:56 -0000
Date: Fri, 31 Oct 2025 10:20:45 -0700
From: nightmare.yeah27@aceecat.org
To: oss-security@lists.openwall.com
Message-ID: <hjcvYS5JbRM3pUNh@aceecat.org>
Mail-Followup-To: oss-security@lists.openwall.com
References: <b3afc964-2840-4583-bb39-e05d390d3e55@citrix.com>
 <20250306031513.GA4873@openwall.com>
 <b21e9116-4108-4d52-b3b0-8c1e96486888@citrix.com>
 <20250306044856.GA6417@openwall.com>
 <bfaecb7c-25a9-406a-a4ca-a55a32c3ae43@citrix.com>
 <20250313035536.GA20899@openwall.com>
 <b66f24d0-6f20-459c-a7ab-c5c6267791a1@citrix.com>
 <eb6ac191-18a8-45a2-99bf-2bee42b02fca@ehuk.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <eb6ac191-18a8-45a2-99bf-2bee42b02fca@ehuk.net>
Subject: Re: [oss-security] Xen Security Notice 2 (CVE-2024-35347) AMD CPU Microcode
 Signature Verification Vulnerability

On Thu, Oct 30, 2025 at 04:25:29PM +0000, Eddie Chapman wrote:

> Even just for 1 AMD machine, a BIOS updates is harder than it should
> be, since almost none of the major motherboard manufacturers have
> managed to implement the ability to somehow save a set of BIOS
> settings that can then be reloaded after updating (or at least one
> that works reliably). Meaning each machine's BIOS needs to be
> completely reconfigured each time, very time consuming and
> problematic for some deployments.

This is ancient, pre EFI and etc etc ... but it may be a start for someone.

https://savannah.nongnu.org/projects/biosconfig/

-- 
Ian
