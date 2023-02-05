Received: (qmail 13810 invoked by uid 550); 5 Feb 2023 13:32:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8014 invoked from network); 5 Feb 2023 12:53:12 -0000
Date: Sun, 5 Feb 2023 13:13:50 +0100
From: Helmut Grohne <helmut@subdivi.de>
To: oss-security@lists.openwall.com
Message-ID: <Y9+dfm0bly+DJSJN@alf.mars>
Mail-Followup-To: Helmut Grohne <helmut@subdivi.de>,
	oss-security@lists.openwall.com
References: <Y91yP6mYIZ+UXmgf@alf.mars>
 <20230203231914.Vs2o_%steffen@sdaoden.eu>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="7NC+r1ZZvwXGOyAR"
Content-Disposition: inline
In-Reply-To: <20230203231914.Vs2o_%steffen@sdaoden.eu>
Subject: Re: [oss-security] sox: patches for old vulnerabilities

--7NC+r1ZZvwXGOyAR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Sat, Feb 04, 2023 at 12:19:14AM +0100, Steffen Nurpmeso wrote:
> But i was only wondering a bit, have you checked against the
> [master] branch?  For example

I did a (too) rough survey of the upstream repository and (too quickly)
concluded that it wouldn't help me with fixing these in Debian, so I
worked from Debian's fork. I should have made this more clear.

>   02-fix-resource-leak-hcom.patch

Still needed in git.

>   03-fix-regression-in-CVE-2017-11358.patch

I'll be replacing the Debian-specific, broken fix of CVE-2017-11358 with
the one committed upstream. Thanks.

>   04-fix-hcom-big-endian.patch#

Indeed, I should have revisited the upstream tree. Upstream also fixes a
double free and I'll be replacing my patch with the upstream one.

>   06-CVE-2021-33844.patch

The code is refactored, but I think the issue persists in wav_read_fmt
where wav->bitsPerSample isn't checked.

> and
>   07-CVE-2021-3643.patch

The hunk context changed and channels are now verified, but the size
validation is still missing. During further analysis I also found that
my patch is insufficient still.

If uc becomes 1, we assign it to v->size, later we pass 6 - v->size as
the second parameter to lsx_adpcm_init, which is used as an index into a
static array of 5 elements. We thus have an out-of-bounds read access
here. I don't yet know where exactly the check belongs as v->size == 1
may be valid in some contexts still.

Updated patch attached.

> The rest just apply fine, and 02- was needed here, 03- seemed an
> unrolled dup, 04- in parts (stdint via sox.h, but overflow, sure),
> it is too late to check the rest, 'will do tomorrow.

Thank you.

> (I an maintaining an official contrib now private sox port for
> CRUX Linux based upon 42b3557e13e0fe0 as of 20211029.)

I think it would be good to have a maintained upstream repository of sox
eventually. It seems like multiple distributions are maintaining
diverging patch piles now.

Helmut

--7NC+r1ZZvwXGOyAR
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="CVE-2021-3643.patch"

From: Helmut Grohne <helmut@subdivi.de>
Subject: voc: word width should never be 0 to avoid division by zero
Bug: https://sourceforge.net/p/sox/bugs/351/
Bug-Debian: https://bugs.debian.org/1010374

This patch fixes both CVE-2021-3643 and CVE-2021-23210.

--- a/src/voc.c
+++ b/src/voc.c
@@ -614,6 +614,10 @@
         v->rate = new_rate_32;
         ft->signal.rate = new_rate_32;
         lsx_readb(ft, &uc);
+        if (uc <= 1) {
+          lsx_fail_errno(ft, SOX_EFMT, "2 bits per word required");
+          return (SOX_EOF);
+        }
         v->size = uc;
         lsx_readb(ft, &(v->channels));
         lsx_readw(ft, &(v->format));    /* ANN: added format */

--7NC+r1ZZvwXGOyAR--

