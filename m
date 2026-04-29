Received: (qmail 9573 invoked by uid 550); 29 Apr 2026 00:57:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3433 invoked from network); 29 Apr 2026 00:23:19 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed;
	d=umbrellix.net; s=umbrellix.net; x=1778026989; h=Date:From:To:
	Cc:Subject:Message-ID:In-Reply-To:References:Organization:
	X-Mailer:MIME-Version:Content-Type:Content-Transfer-Encoding;
	bh=2rw74ptd+sLv1kBuTymDdpMw7YU=; b=l1VDKLW+QJ9WC9yDLJBLDmcCHvFhQ
	GNhADYcwXXl6y2DB6bP5v2ncRemjD7nJLGF2HnbBvaGcRh/ZTVn0aeaMAVHVS78y
	gDrnteYgS97mi6r+7kAG4HVrRbMWcGxCKasxoYQhloNagiUhPQ1yLgW3IRlwO1yh
	QpvqRqTwAxQxO4=
Date: Wed, 29 Apr 2026 00:23:05 +0000
From: Ellenor Bjornsdottir <ellenor/securesoftware@umbrellix.net>
To: MOHAMED AZIZ RAHMOUNI <mohamedaziz.rahmouni@insat.ucar.tn>
Cc: oss-security@lists.openwall.com
Message-ID: <20260429002305.68ba7d1b@stansted.bc.ca.umbrellix.net>
In-Reply-To: <CAJBym6AuYxQE1pvsUj6zhRpJd1UqY-iNXD4HhhALJjB-9N=Y+Q@mail.gmail.com>
References: <CAJBym6AuYxQE1pvsUj6zhRpJd1UqY-iNXD4HhhALJjB-9N=Y+Q@mail.gmail.com>
Organization: Umbrellix
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.50; x86_64-unknown-linux-musl)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] [SECURITY] Out-of-Bounds Read in MPLS Extension
 Parsing =?UTF-8?B?4oCU?= traceroute 2.1.2

FYI:

As Alan Coopersmith just said, oss-security is a public mailing list.
You would need to have emailed only individual persons and private
mailing lists (like secalert@redhat.com and Mr Butskoy) related to the
development and distribution of the program in question for this to
have been coordinated disclosure. The public message to
oss-security@lists.openwall.com would then need to be posted in July,
not this month.

Remember that for the next vulnerability you try to do coordinated
disclosure for.

On Tue, 28 Apr 2026 23:03:58 +0100
MOHAMED AZIZ RAHMOUNI <mohamedaziz.rahmouni@insat.ucar.tn> wrote:

> Hello,
> 
> I am reporting a security vulnerability I discovered in traceroute
> 2.1.2 during manual code review and dynamic fuzzing.
> 
> Summary:
> An out-of-bounds read exists in traceroute/traceroute.c. After
> recvmsg() returns, bufp is advanced past the IPv4 header (bufp +=
> hlen) but n is not decremented accordingly. The subsequent call:
> 
>     handle_extensions(pb, bufp + offs, n - offs, step);
> 
> passes a len value that is hlen bytes (20 for IPv4, 40 for IPv6)
> larger than the actual data available from bufp + offs. This causes
> the MPLS extension parser to read past the received packet boundary
> into uninitialized stack memory within buf[1280].
> 
> The vulnerability is remotely triggerable by any on-path network
> device that can send a crafted ICMP Time Exceeded response with MPLS
> extensions to a traceroute -e invocation. I have confirmed the issue
> with a working proof of concept.
> 
> Proposed fix (single line addition after line 1427):
> 
>     bufp += hlen;
>     n -= hlen;   // add this line
> 
> I have attached a full technical report including root cause analysis,
> proof of concept code, memory layout analysis, and impact assessment.
> 
> Please confirm receipt of this report.
> 
> Regards,
> Security researcher Zyyz
> 
> Mohamed Aziz Rahmouni



-- 
Ellenor et al Bjornsdottir, sysadmin umbrellix.net.

This is my laptop, and as such I might be on the go; by the time you
get this message I could already be back on my bike.

Please consider the environment before you ask an AI to summarize this
email or write me a response. 
