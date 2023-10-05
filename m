Received: (qmail 1617 invoked by uid 550); 5 Oct 2023 06:00:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1596 invoked from network); 5 Oct 2023 06:00:09 -0000
Date: Thu, 5 Oct 2023 07:59:57 +0200
From: Willy Tarreau <w@1wt.eu>
To: oss-security@lists.openwall.com
Message-ID: <20231005055957.GB12482@1wt.eu>
References: <20231001191303.GA8910@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231001191303.GA8910@openwall.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [oss-security] "Linux Kernel security demistified"

Hi Alexander,

On Sun, Oct 01, 2023 at 09:13:03PM +0200, Solar Designer wrote:
> I wonder whether the kernel documentation could, however, be encouraging
> rather than discouraging (as it currently is) about issue reporters
> themselves contacting linux-distros after a fix is ready.  I wonder if a
> patch like that would be accepted?

Just as a quick heads up on this, I discussed with Greg there and proposed
to send a patch proposal to rework that part to take into account your now
relaxed rules. My goal is to let the reporter decide on their own, and let
them decide what they want to do after checking the linux-distros rules.
There could be a good motivation for some reporters to go there because a
number of them are first-timers who are seeking a Curriculum Vitae Enhancer
(CVE) ID that s@k.o doesn't deal with. But I also want to remind (I know I
may sound like a scratched record) that it's not because some may report
there that distros will magically be aware of all security issues, given
that those arriving on s@k.o are really a tiny portion and many more bugs
are fixed without anyone having a security look on them.

I'm just too short of time for now, having to catch up with what I left
for the 3 days of KR2023, but it's on my todo list to propose a patch to
Greg. I'm having reasonable hopes that we can end up with something
smoother in the near future.

Cheers,
Willy
