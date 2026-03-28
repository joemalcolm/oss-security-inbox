Received: (qmail 19553 invoked by uid 550); 28 Mar 2026 02:38:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18284 invoked from network); 28 Mar 2026 02:38:35 -0000
Date: Sat, 28 Mar 2026 03:38:34 +0100
From: Solar Designer <solar@openwall.com>
To: Amos Jeffries <squid3@treenet.co.nz>
Cc: oss-security@lists.openwall.com
Message-ID: <20260328023834.GA15295@openwall.com>
References: <9791e9d9-a77e-44c2-9e43-5ede3fb8c40c@treenet.co.nz>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9791e9d9-a77e-44c2-9e43-5ede3fb8c40c@treenet.co.nz>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] [ADVISORY] SQUID-2026:1 Denial of Service in ICP Request handling (CVE-2026-33526)

Hi Amos,

Thank you for bringing these 3 issues/advisories to oss-security.

On Wed, Mar 25, 2026 at 05:20:11PM +1300, Amos Jeffries wrote:
>  Due to a heap Use-After-Free bug Squid is vulnerable to Denial
>  of Service when handling ICP traffic.

Since use-after-free bugs commonly allow for impact not limited to DoS,
but often also code execution and/or information leak, it would help if
you provide justification why you claim this is just a DoS - or add
wording that it may be more than just a DoS.  Ditto for SQUID-2026:2
(CVE-2026-32748).

Thanks,

Alexander
