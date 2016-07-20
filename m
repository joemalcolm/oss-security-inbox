X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2983" "Wednesday" "20" "July" "2016" "23:48:52" "+0200" "Nicolas =?iso-8859-1?Q?Fran=E7ois?=" "nicolas.francois@centraliens.net" "<20160720214852.GA23823@nekral.nekral.homelinux.net>" "77" "[oss-security] Re: [Pkg-shadow-devel] subuid security patches for shadow package" nil nil nil "7" "2016072021:48:52" "[oss-security] Re: [Pkg-shadow-devel] subuid security patches for shadow package" (number mark "U       nicolas.fran Jul 20   77/2983  " thread-indent "\"[oss-security] Re: [Pkg-shadow-devel] subuid security patches for shadow package\"\n") "<871t2pycqx.fsf_-_@x220.int.ebiederm.org>" ("<20160719093915.GA29047@suse.de>" "<20160719125119.GA7146@suse.de>" "<871t2pycqx.fsf_-_@x220.int.ebiederm.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16134 invoked by uid 550); 20 Jul 2016 21:55:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13854 invoked from network); 20 Jul 2016 21:50:00 -0000
Date: Wed, 20 Jul 2016 23:48:52 +0200
From: Nicolas =?iso-8859-1?Q?Fran=E7ois?= <nicolas.francois@centraliens.net>
To: "Eric W. Biederman" <ebiederm@xmission.com>
Cc: Sebastian Krahmer <krahmer@suse.com>, oss-security@lists.openwall.com,
	pkg-shadow-devel@lists.alioth.debian.org
Message-ID: <20160720214852.GA23823@nekral.nekral.homelinux.net>
Mail-Followup-To: "Eric W. Biederman" <ebiederm@xmission.com>,
	Sebastian Krahmer <krahmer@suse.com>,
	oss-security@lists.openwall.com,
	pkg-shadow-devel@lists.alioth.debian.org
References: <20160719093915.GA29047@suse.de>
 <20160719125119.GA7146@suse.de>
 <871t2pycqx.fsf_-_@x220.int.ebiederm.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <871t2pycqx.fsf_-_@x220.int.ebiederm.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: [oss-security] Re: [Pkg-shadow-devel] subuid security patches for shadow package

Hi,

The first point looks like a non issue to me.

getlogin() is used to differentiate users with the same UID.
The result of getlogin() is checked: if it returns a username that do not
have the UID returned by getuid(), it will be ignored.


Best Regards,
-- 
Nekral



On Tue, Jul 19, 2016 at 08:32:38AM -0500, Eric W. Biederman wrote:
> 
> Adding the shadow-development list, so there is a chance other people
> familiar with the code can comment as well.
> 
> Sebastian Krahmer <krahmer@suse.com> writes:
> 
> > On Tue, Jul 19, 2016 at 11:39:15AM +0200, Sebastian Krahmer wrote:
> >> Hi
> >> 
> >> The shadow package contains newuidmap and newgidmap suid
> >> binaries in order to allow users to take advantage of the
> >> userns feature of uid-mappings.
> >> 
> >> I added patches here:
> >> 
> >> https://bugzilla.suse.com/show_bug.cgi?id=979282
> >> 
> >> they consist of:
> >> 
> >> 1) Removing getlogin() to find out about users.
> >>    It relies on utmp, which is not a trusted base of info (group writable).
> >> 
> >> 2) Cleaning up UID retrieval and computation. The 'long long' code was
> >>    totally unclear to me, as the numbers are converted to ulong right
> >>    afterwards anyway. Additionally there was a *int overflow*, which can be
> >>    tested via 'newuidmap $$ 0 10000 -1' (given that 10000 is listed as allowed)
> >>    which produces no error but tries to write large "count" values to the uid_map
> >>    file. Kernel may check for overflows itself, but it should not be allowed
> >>    by a suid binary to be written in the first place.
> >
> > After checking some kernels, it looks like this int wrap is exploitable as a LPE,
> > as kernel is using 32bit uid's that are truncated from unsigned longs (64bit on x64)
> > as returned by simple_strtoul() [map_write()]. So newuidmap and kernel have an entire
> > different view on the upper and lower bounds, making newuidmap overflow (and pass)
> > and still being in bounds inside the kernel.
> >
> > Maybe it would be wise to align integer widths of kernel and the userspace
> > tools.
> >
> > So everyone shipping newuidmap as mode 04755 should fix it. :)
> 
> Thank you for the review and looking at this.  I agree that the integer
> size issues should all be locked down and handled more clearly.
> 
> I think it should be code in have_sub_uids and have_sub_gids that should
> be catching overflows and the like.  Limiting things to what is actually
> allowed by the subuid file.
> 
> I also agree that the kernel is permitting more than it needs to which
> in case like this is not helpful.
> 
> The issues with the library functions get_my_pwent and getulong I will
> have to come up to speed on before I comment knowledgably, but they
> definitely appear to be worth looking at.
> 
> Eric
> 
> _______________________________________________
> Pkg-shadow-devel mailing list
> Pkg-shadow-devel@lists.alioth.debian.org
> http://lists.alioth.debian.org/cgi-bin/mailman/listinfo/pkg-shadow-devel
