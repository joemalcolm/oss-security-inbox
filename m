Received: (qmail 3467 invoked by uid 550); 10 Feb 2026 03:37:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1783 invoked from network); 10 Feb 2026 03:37:31 -0000
Date: Tue, 10 Feb 2026 04:37:24 +0100
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20260210033724.GA31697@openwall.com>
References: <c398efaa-3ff9-4eb7-bdf5-b417753a6a73@oracle.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c398efaa-3ff9-4eb7-bdf5-b417753a6a73@oracle.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] FreeRDP fixes 12 CVEs in 3.22.0 release

On Mon, Feb 09, 2026 at 03:31:46PM -0800, Alan Coopersmith wrote:
> >       - @Keryer reported an issue affecting client and proxy:
> >             CVE-2026-23948
> >       - @ehdgks0627 did some more fuzzying and found quite a number of 
> client
> >         side bugs.
> >             CVE-2026-24682
> >             CVE-2026-24683
> >             CVE-2026-24676
> >             CVE-2026-24677
> >             CVE-2026-24678
> >             CVE-2026-24684
> >             CVE-2026-24679
> >             CVE-2026-24681
> >             CVE-2026-24675
> >             CVE-2026-24491
> >             CVE-2026-24680
> 
> More details on each of these are available at:

> - CVE-2026-24682 Heap-buffer-overflow in audio_formats_free
>   https://github.com/FreeRDP/FreeRDP/security/advisories/GHSA-vcw2-pqgw-mx6g

> - CVE-2026-24677 Heap-buffer-overflow in ecam_encoder_compress_h264
>   https://github.com/FreeRDP/FreeRDP/security/advisories/GHSA-xw37-j744-f8v7

> - CVE-2026-24679 Heap-buffer-overflow in urb_select_interface
>   https://github.com/FreeRDP/FreeRDP/security/advisories/GHSA-2jp4-67x6-gv7x

All 3 of these "Heap-buffer-overflow" issues are actually out of bounds
reads, per ASan.  It's another case of ASan mislabeling this, and people
blindly copying what it says into advisories and CVE titles.

It can't be ruled out (without code review) that if the out of bounds
reads did not terminate processing, some of them could possibly be
followed by out of bounds writes.  However, ASan is currently unable to
find this.

I wonder if besides correcting the string "Heap-buffer-overflow" ASan
could reasonably be enhanced not to terminate the task on out of bounds
reads, so that it would also have a chance to detect subsequent writes.

Alexander
