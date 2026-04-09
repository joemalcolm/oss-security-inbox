Received: (qmail 1889 invoked by uid 550); 9 Apr 2026 03:50:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1743 invoked from network); 9 Apr 2026 03:50:53 -0000
Date: Thu, 9 Apr 2026 05:50:50 +0200
From: Solar Designer <solar@openwall.com>
To: "Andrew G. Morgan" <morgan@kernel.org>
Cc: oss-security@lists.openwall.com, Ali Raza <elirazamumtaz@gmail.com>
Message-ID: <20260409035050.GA14884@openwall.com>
References: <CACmP8U+CbkozUQ1OqxsXMxLgMYvQS85QsWaGtVGBD8BFox34=w@mail.gmail.com> <fa4662c4-ce58-48ec-85a4-b0272ca9931a@seltendoof.de> <20260409013620.GA13098@openwall.com> <CACmP8UKMsyDGzMSbuu_tORKR9p2EUhCE_qY6YcFf_w19ZcZaqw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CACmP8UKMsyDGzMSbuu_tORKR9p2EUhCE_qY6YcFf_w19ZcZaqw@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] libcap-2.77 (since libcap-2.04) has TOCTOU privilege escalation issue

On Wed, Apr 08, 2026 at 07:19:31PM -0700, Andrew G. Morgan wrote:
> On Wed, Apr 8, 2026 at 6:53 PM Solar Designer <solar@openwall.com> wrote:
> > On Tue, Apr 07, 2026 at 10:14:42PM +0200, Christian Göttsche wrote:
> > > Apr 7, 2026 18:54:22 Andrew G. Morgan <morgan@kernel.org>:
> > > > The fix for pretty much that whole range of libcap releases is this commit:
> > > >
> > > > https://git.kernel.org/pub/scm/libs/libcap/libcap.git/commit/?id=286ace1259992bd0c5d9016715833f2e148ac596
> > >
> > > Hi,
> > >
> > > the new code suppports changing the file capabilities of all kinds of files (not just regular)(given that the caller has read permissions).
> > > Is that intended?
> >
> > Andrew, please comment on this.  I do also see it in the patch that the
> > S_ISREG check is now below the added fast path code for readable files.
> > It doesn't matter that the S_ISLNK check is also below (in fact, it's
> > now redundant anyway) due to O_NOFOLLOW,

Correcting myself: not redundant due to O_NOFOLLOW because
O_PATH|O_NOFOLLOW can actually open a symlink as such, but still
redundant with "|| !S_ISREG".  Anyway, fine to keep it.

I don't get why you wanted to use O_PATH instead of just letting the
open() fail on symlinks with plain O_NOFOLLOW.  Just to set a different
errno and debug message maybe.  Anyway, that's also fine.

> > but bypass of the S_ISREG check
> > appears to be a functional change.
> 
> Not sure I follow. This check is in the cap_set_fd() function itself.

Oh, indeed.  I didn't look beyond patch context, maybe Christian did not
either.  I think this addresses the concern.

int cap_set_fd(int fildes, cap_t cap_d)
{
    struct vfs_ns_cap_data rawvfscap;
    int sizeofcaps;
    struct stat buf;

    if (fstat(fildes, &buf) != 0) {
	_cap_debug("unable to stat file descriptor %d", fildes);
	return -1;
    }
    if (S_ISLNK(buf.st_mode) || !S_ISREG(buf.st_mode)) {
	_cap_debug("file descriptor %d for non-regular file", fildes);
	errno = EINVAL;
	return -1;
    }

> Just to be clear, and credit where it is due, the text of this was
> authored by Ali Raza.
> 
> The markdown source is as follows:

Thank you both.

I would still like to know if there's a way I could extract Markdown
source from third-party GitHub advisories, if anyone knows.

Alexander
