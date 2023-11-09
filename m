Received: (qmail 18182 invoked by uid 550); 9 Nov 2023 13:35:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17963 invoked from network); 9 Nov 2023 13:35:02 -0000
Date: Thu, 9 Nov 2023 14:34:17 +0100
From: Solar Designer <solar@openwall.com>
To: Hsin-Wei Hung <hsinweih@uci.edu>
Cc: Alexei Starovoitov <alexei.starovoitov@gmail.com>,
	Daniel Borkmann <daniel@iogearbox.net>,
	oss-security@lists.openwall.com,
	Alexei Starovoitov <ast@kernel.org>
Message-ID: <20231109133417.GA12926@openwall.com>
References: <20231105224340.GA25140@openwall.com> <CAADnVQKaqKJA_PPLNggzt=BY6jqsCbgpA4MM9ikkP+qY4f8zSQ@mail.gmail.com> <CABcoxUYuVw4TC8WiiBWmt+22NmVj_TVuskSWP5Fj3NWBkvDrfA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CABcoxUYuVw4TC8WiiBWmt+22NmVj_TVuskSWP5Fj3NWBkvDrfA@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: [oss-security] Re: Linux: BPF: issues with copy_from_user_nofault()

On Wed, Nov 08, 2023 at 08:06:49PM -0800, Hsin-Wei Hung wrote:
> On Wed, Nov 8, 2023 at 10:05???AM Alexei Starovoitov <alexei.starovoitov@gmail.com> wrote:
> > Essentially perf (without any bpf) is broken on arm64 and others.
> > arch_perf_out_copy_user() might deadlock with CONFIG_HARDENED_USERCOPY.
> 
> Hey,
> 
> 
> Sorry to put everyone in a tough situation. I can post it to
> oss-security if Alexei agrees. I can also try to pick up the 2nd part
> of the patch from where it is next week.
> https://lore.kernel.org/bpf/CAADnVQJRd3r84yLcqH1Z-BYU76SRYuDMOCWRcvBfapsXs_w-rg@mail.gmail.com/

Thank you Alexei and Hsin-Wei for the replies.

This very thread is already on oss-security since I brought it here on
Nov 5.  I'm confused as to what was (not) merged to where yet, but my
suggestion is that this be taken care of on the proper Linux lists and
then a summary brought to oss-security again (e.g., saying that the
issue is finally fully fixed, and where exactly).

Thanks again,

Alexander
