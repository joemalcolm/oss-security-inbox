Received: (qmail 25642 invoked by uid 550); 2 Jun 2025 23:50:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17937 invoked from network); 2 Jun 2025 23:36:10 -0000
Date: Tue, 3 Jun 2025 01:36:01 +0200
From: Vincent Lefevre <vincent@vinc17.net>
To: oss-security@lists.openwall.com
Message-ID: <20250602233601.GC9396@qaa.vinc17.org>
Mail-Followup-To: oss-security@lists.openwall.com
References: <omnnpezilawlern5txh6xnng26fmenimxl7ijy6oykuxlurfbg@yo2pvsq3q6v6>
 <87y0uaeeod.fsf@oldenburg.str.redhat.com>
 <CAHhgV8hQR51pP=ioqw8Q2YFCcTZUOs7JaQv8Wq1gW=r2PyKP-A@mail.gmail.com>
 <87jz5uauhb.fsf@oldenburg.str.redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87jz5uauhb.fsf@oldenburg.str.redhat.com>
X-Mailer-Info: https://www.vinc17.net/mutt/
User-Agent: Mutt/2.2.13+86 (bb2064ae) vl-169878 (2025-02-08)
Subject: Re: [oss-security] Re: CVE-2025-40909: Perl threads have a working
 directory race condition where file operations may target unintended paths

On 2025-06-02 20:06:40 +0200, Florian Weimer wrote:
> * Leon Timmermans:
> 
> > On Mon, Jun 2, 2025 at 10:22 AM Florian Weimer via perl5-porters
> > <perl5-porters@perl.org> wrote:
> >>
> >> * Stig Palmquist:
> >>
> >> > References
> >> > ----------
> >> > https://github.com/Perl/perl5/commit/918bfff86ca8d6d4e4ec5b30994451e0bd74aba9.patch
> >>
> >> Is this fix really correct?
> >>
> >> +    ret = fdopendir(dup(my_dirfd(dp)));
> >>
> >> This does not create a separate open file description, only a second
> >> descriptor that shares the read position of the directory stream with
> >> the original directory stream.  I think you have to use something like
> >> this:
> >>
> >>      ret = fdopendir(openat(my_dirfd(dp), ".", O_DIRECTORY | O_CLOEXEC));
> >
> > Our thread cloning in general is a terribly awkward business, where
> > "what is the correct behavior" isn't always well defined or possible;
> > I can see the arguments for both to be honest.
> >
> > For file descriptors we don't create new file descriptions either (we
> > don't even create new file descriptors, we refcount them), so why
> > should we do so for directory handles? I'm not sure that expectation
> > makes sense in that context.
> 
> That's a fair point.  It's more like fork in this regard, which has
> similar failure cases for DIR * objects (shared file description, but
> unshared buffers and a separate descriptor).
> 
> > And if we did go the openat way, I don't think that seekdir on the new
> > handle with the telldir of the old one is necessarily valid if the
> > directory has been changed (I mean even a rewinddir can invalidate
> > telldir's return value). I don't think we can do a fully correct copy
> > here.
> 
> Ugh, I had not considered that.  Yes, glibc will have to switch to an
> implementation where telldir offsets are specific to a DIR * for certain
> file systems on 32-bit architectures (because telldir returns long, not
> off_t).

Another issue with

  ret = fdopendir(openat(my_dirfd(dp), ".", O_DIRECTORY | O_CLOEXEC));

is that this can fail if the directory permissions have changed:

------------------------------------------------------------------
#include <stdio.h>
#include <errno.h>
#include <unistd.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <dirent.h>

int main (void)
{
  const char *dirname = "tstdir-dir";
  DIR *dir;
  int fd;

  errno = 0;
  if (mkdir (dirname, 0700) && errno != EEXIST)
    return 1;
  if (chmod (dirname, 0700))
    return 2;
  fd = open (dirname, O_DIRECTORY | O_CLOEXEC);
  if (fd == -1)
    return 3;
  dir = fdopendir (fd);
  if (!dir)
    return 4;
  if (chmod (dirname, 0))
    return 5;
  dir = fdopendir (openat (fd, ".", O_DIRECTORY | O_CLOEXEC));
  printf ("dir = %p\n", (void *) dir);
  dir = fdopendir (dup (fd));
  printf ("dir = %p\n", (void *) dir);
  return 0;
}
------------------------------------------------------------------

outputs something like

dir = (nil)
dir = 0x56269b6316f0

-- 
Vincent Lefèvre <vincent@vinc17.net> - Web: <https://www.vinc17.net/>
100% accessible validated (X)HTML - Blog: <https://www.vinc17.net/blog/>
Work: CR INRIA - computer arithmetic / Pascaline project (LIP, ENS-Lyon)
