Received: (qmail 16261 invoked by uid 550); 11 Mar 2025 21:25:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 16240 invoked from network); 11 Mar 2025 21:25:56 -0000
Date: Tue, 11 Mar 2025 21:25:47 +0000
From: Moritz =?iso-8859-1?Q?M=FChlenhoff?= <jmm@inutil.org>
To: oss-security@lists.openwall.com
Message-ID: <Z9CqW_9Axy5qvymi@inutil.org>
References: <ovqbvdsvupbr2dse76qem7ukiyidoqdynmm4rn7ah5kqiagugg@xbgvxewonj4p>
 <30c9d060-2a43-48e9-b0c5-31e4a7d05349@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <30c9d060-2a43-48e9-b0c5-31e4a7d05349@gmail.com>
Subject: Re: [oss-security] CVE-2025-1937+more: Numerous memory-safety issues
 in Firefox & Thunderbird

On Mon, Mar 10, 2025 at 06:06:55PM -0500, Jacob Bachmeyer wrote:
> On 3/10/25 08:30, Valtteri Vuorikoski wrote:
> > [...] However the only issue ranked
> > critical only affects Android, looks like desktop versions top out at high.
> 
> My understanding is that the issue was *reported* by the Android project,
> but it affects *ALL* builds, including desktop.

The timeline basically looks like this:
- CVE-2024-43768, CVE-2024-43767 and CVE-2024-43097 were fixed in the December
  Android update and are in Skia, a 2G graphics library which is also bundled
  by Firefox/Thunderbird
- These CVEs appeared in the CVE feed on 2025-01-02 and when triaging incoming
  security issues for Debian, I noticed that while Firefox was fixed via some
  rebase to a newer version of Skia, these fixes were missing in Firefox ESR
  128, which hadn't seen the respective Skia rebase (since these fixes were
  not identified as security-relevant)
- I reported these to the Mozilla security team on 2025-01-09
- On 2025-02-03 they confirmed that CVE-2024-43768 and CVE-2024-43767 are
  in code which isn't exercised in Firefox
- On 2025-03-04 the Firefox/Thunderbird 128.8 releases were published which
  include a fix for CVE-2024-43097

Cheers,
        Moritz

