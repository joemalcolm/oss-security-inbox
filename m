Received: (qmail 11998 invoked by uid 550); 7 May 2026 17:48:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9609 invoked from network); 7 May 2026 17:48:10 -0000
Date: Thu, 7 May 2026 19:48:11 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: Mohamed salem Eddah <medsalemeddah@gmail.com>, security@kernel.org,
	"axboe@kernel.dk" <axboe@kernel.dk>
Message-ID: <20260507174811.GA4838@openwall.com>
References: <CAMrV8J7FfiB0ptMZFU+EKdRt1NPgtTe_YJWPFw7AQdB-vAQ75w@mail.gmail.com> <2b8f2e56-15be-4732-baf5-7a3df4f8a1fe@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2b8f2e56-15be-4732-baf5-7a3df4f8a1fe@gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVE request: io_uring zcrx freelist OOB write

On Mon, May 04, 2026 at 07:02:30AM +0100, Pavel Begunkov wrote:
> On 5/3/26 12:00, Mohamed salem Eddah wrote:
> >I am reporting a security issue in the Linux kernel involving an
> >out-of-bounds heap write in io_uring/zcrx.c.
> >
> >This issue appears to have been addressed in commit 770594e
> >(“io_uring/zcrx: warn on freelist violations”, April 21, 2026), 
> >however it
> >was not assigned a CVE and does not appear to have been included in a
> >formal security advisory. As a result, multiple stable and downstream
> >distribution kernels are still affected.
> >------------------------------
> >Vulnerability Summary
> >
> >*File:* io_uring/zcrx.c
> >*Function:* io_zcrx_return_niov_freelist()
> >*Introduced:* Linux 6.12 (initial ZCRX merge)
> 
> FWIW, it was added IIRC in 6.15, but not 6.12
> 
> >*Fixed upstream:* 770594e (Apr 21, 2026)
> >*Status:* Fix not yet present in stable releases
> Did you trigger the problem or the warning in a new kernel
> without the attached modules? Which kernel version / hash
> was it? There was a fix for the scrub case, but otherwise
> don't immediately see how that can happen. I'll take a look.

I only skimmed, but as far as I can tell Mohamed isn't the original
finder of this issue and the report and PoCs are AI-generated, which
could be why Mohamed is not communicating further.  It's becoming a
trend - someone sends AI-generated report and doesn't communicate.
Which doesn't mean the report is useless, but it does complicate its
handling.

Meanwhile, it looks like there's a blog post (by someone else? I am
confused) on exploitation of this issue, with exploit files attached:

https://ze3tar.github.io/post-zcrx.html

Alexander
