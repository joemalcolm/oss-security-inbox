X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/25/3
Message-ID: <87jyqju0hf.fsf@gmail.com>
Date: Fri, 24 Jul 2026 22:01:00 -0700
From: Collin Funk <collin.funk1@...il.com>
To: oss-security@...ts.openwall.com
Cc: Tristan <TristanInSec@...il.com>, Simon Josefsson <simon@...efsson.org>
Subject: GNU Inetutils talkd buffer overflow with long DNS names.
Content-Type: text/plain; charset=utf-8

# GNU Inetutils Security Advisory: talkd buffer overflow with long DNS names

## History

GNU Inetutils distributes a 'talkd' program, which uses the ntalk
protocol to communicate over the network. Like much of GNU Inetutils,
this implementation was derived from 4.4BSD sources. From what I can
tell, the issue described in this email only applies to GNU Inetutils
and was introduced by a change on 2001-10-25 [1]. The first release with
that change was GNU inetutils-1.4.0, released on 2002-07-31. Regardless,
I reported the issue privately to the distros mailing list on
2026-07-16, so other implementors could check.

## Reproduction Steps

To construct the announcement message, 'talkd' looks up a client's
domain name using its IP address and gethostbyaddr, which is typically a
reverse DNS lookup. The issue occurs when it returns a domain name
longer than around 200 characters. Here is the reproduction I shared
privately on the distros list. Note that the steps vary depending on
operating system, e.g., how 'inetd' starts:

    $ echo 'ntalk	dgram	udp	wait	tty:tty	/bin/talkd talkd' >> /etc/inetd.conf
    $ service inetd start
    $ printf '%s %s\n' <CLIENT-IP> $(yes | head -n 250 | tr -d '\n') >> /etc/hosts

Then, on the machine with <CLIENT-IP> run the following, where <HOST-IP>
is the machine running talkd and <USER> is a user you are logged into:

    $ talk <USER>@<CLIENT-IP>

If 'talkd' is affected, that should be enough to reproduce the
issue. Using a FreeBSD machine with an unpatched GNU Inetutils 2.8 build
with sanitizers disabled here is what I see:

    $ cat /var/log/messages
    [...]
    Jul 16 22:10:55 freebsd inetd[15837]: /home/collin/inetutils/talkd/talkd[16090]: exited, signal 10
    Jul 16 22:10:55 freebsd inetd[16091]: warning: /etc/hosts.allow, line 22: can't verify hostname: getaddrinfo(yyy..., AF_INET) failed
    Jul 16 22:10:55 freebsd inetd[15837]: /home/collin/inetutils/talkd/talkd[16091]: exited, signal 10
    Jul 16 22:10:55 freebsd inetd[16092]: warning: /etc/hosts.allow, line 22: can't verify hostname: getaddrinfo(yyy..., AF_INET) failed
    Jul 16 22:10:55 freebsd inetd[15837]: /home/collin/inetutils/talkd/talkd[16092]: exited, signal 10
    Jul 16 22:10:55 freebsd inetd[16093]: warning: /etc/hosts.allow, line 22: can't verify hostname: getaddrinfo(yyy..., AF_INET) failed
    Jul 16 22:10:55 freebsd inetd[15837]: /home/collin/inetutils/talkd/talkd[16093]: exited, signal 10
    Jul 16 22:10:55 freebsd inetd[15837]: ntalk/udp server failing (looping), service terminated
    Jul 16 22:10:55 freebsd kernel: pid 16023 (talkd), jid 0, uid 4: exited on signal 10 (no core dump - other error)
    Jul 16 22:10:55 freebsd kernel: pid 16024 (talkd), jid 0, uid 4: exited on signal 10 (no core dump - other error)
    Jul 16 22:10:55 freebsd kernel: pid 16025 (talkd), jid 0, uid 4: exited on signal 10 (no core dump - other error)
    Jul 16 22:10:55 freebsd kernel: pid 16026 (talkd), jid 0, uid 4: exited on signal 10 (no core dump - other error)
    Jul 16 22:10:55 freebsd kernel: pid 16027 (talkd), jid 0, uid 4: exited on signal 10 (no core dump - other error)

I.e., 'talkd' crashes with SIGBUS.

## Workarounds

Don't use 'talkd' in 2026. There are much better programs for users to
communicate nowadays. Interestingly, Debian removed the 'mesg' program
from their util-linux package for this reason [2].

Using ACLs, the -a or --acl option, would also protect you [3].
Although, I am curious how often that option actually gets used...

## Detailed Description

Here is a more detailed explanation of the issue, for reference. When
GNU 'talkd' processes a request, it first verifies it against the
configured ACLs. Triggering the issue requires the request not to be
denied by the ACL [4]:

  if (acl_match (msg, sa_in) == ACL_DENY)
    {
      /* Code unnecessary for describing the issue removed...  */
      return 0;
    }

The ACL mechanism [3] is not enabled by default, and likely very few
people use it. Well, very few people use 'talkd' at all, for that
matter.

If the message is an ANNOUNCE request, an announcement is sent to the
terminal of the user that they are trying to contact [5]:

    switch (msg->type)
      {
      case ANNOUNCE:
        do_announce (msg, rp);
      /* ...  */
      }

The announcement is not sent if 'mesg n' is in use:

    $ mesg n; mesg; stat --format=%A `tty`
    is n
    crw-------

That is opposed to 'mesg y', which allows the issue to be triggered:

    $ mesg y; mesg; stat --format=%A `tty`
    is y
    crw--w----

The relevant source code can be seen here [6]:

    sprintf (ttypath, "%s/%s", PATH_TTY_PFX, request->r_tty);
    rc = stat (ttypath, &st);
    free (ttypath);
    if (rc < 0 || (st.st_mode & S_IWGRP) == 0)
      return PERMISSION_DENIED;
    return print_mesg (request->r_tty, request, remote_machine);

This announcement contains the name of the host, as returned by
gethostbyaddr(3) [7]:

    hp = gethostbyaddr ((char *) &os2sin_addr (mp->ctl_addr),
                        sizeof (struct in_addr), AF_INET);

Here is the format of that announcement message [8], where
"your_machine" is hp->h_name, resulting from the above gethostbyaddr
call:

    Message from TalkDaemon@..._machine...
    talk: connection requested by your_name@...r_machine.
    talk: respond with: talk your_name@...r_machine

Each line ends in spaces up to the maximum line length plus two. The
message also starts with an ASCII BEL, CR, LF, followed by a line full
of spaces, and ends with a line full of spaces.

The issue is that the maximum line length is calculated using vsnprintf,
which returns the number of bytes required to store the resulting string
regardless of how many were actually written to the buffer [9]:

    static void
    format_line (LINE *lp, const char *fmt, ...)
    {
      /* Here lp->line[i] contains the line in the announcement string, and
         lp->size[i] contains the length of the line.  */
      lp->size[i] = vsnprintf (lp->line[i], sizeof lp->line[i], fmt, ap);
      /* We later pad each line "i" with spaces from
         lp->size[i] to lp->max_size + 2.  */
      lp->max_size = MAX (lp->max_size, lp->size[i]);
      /* ...  */
    }

These lines are then copied over to a 1283 (5 * 256 + 3) byte buffer
[10] [11]:

    #define N_LINES 5
    #define N_CHARS 256

    typedef struct
    {
      int ind;
      int max_size;
      char line[N_LINES][N_CHARS];
      int size[N_LINES];
      char buf[N_LINES * N_CHARS + 3];
    } LINE;

    /* ...  */

    static char *
    finish_line (LINE *lp)
    {
      int i;
      char *p;

      p = lp->buf;
      *p++ = '\a';
      *p++ = '\r';
      *p++ = '\n';
      for (i = 0; i < lp->ind; i++)
        {
          char *q;
          int j;

          for (q = lp->line[i]; *q; q++)
            *p++ = *q;
          for (j = lp->size[i]; j < lp->max_size + 2; j++)
            *p++ = ' ';
          *p++ = '\r';
          *p++ = '\n';
        }
      *p = 0;
      return lp->buf;
    }

In the above section of code, lp->size[2], lp->size[3], and lp->max_size
can be made large values by a remote user, such that data is written
past lp->buf, if their domain name exceeds ~200 bytes. Here lp->size[2]
and lp->size[3] refer to the following lines and lp->size[2] is equal to
lp->max_size:

    talk: connection requested by your_name@...g_name
    talk: respond with: talk your_name@...g_name

The original reporter said they were able to write approximately 138
bytes past the end of lp->buf. I did not test that myself, but since I
could reproduce the issue with a ~200-byte hostname added to my
/etc/hosts file, and domain names can be ~50 characters longer, that
number sounds about correct to me.

## Patch

The fix for this issue was pushed to the GNU Inetutils repository today.
Here is the associated commit:

https://codeberg.org/inetutils/inetutils/commit/81987d968ab831c08bd7e42a46f4a4823729cf1e

The patch applies cleanly to the latest release, inetutils-2.8. It can
be applied like so:

    $ curl --silent https://codeberg.org/inetutils/inetutils/commit/81987d968ab831c08bd7e42a46f4a4823729cf1e.patch | sed '1,41d' > talkd-fix.patch
    $ for a in sha2 sha3; do cksum -a $a -l 256 talkd-fix.patch; done
    SHA256 (talkd-fix.patch) = 5289d195b427020738953828c5851bf988be533843e015b50d95a49a7c34062c
    SHA3-256 (talkd-fix.patch) = 5ff65824225cb585e5ab6501f4a0550ade1ee8f75851b399b5c899ff41d5cf62
    $ patch -p1 < talkd-fix.patch
    patching file talkd/announce.c
    patching file talkd/intalkd.h
    patching file talkd/talkd.c

## Credits

Many thanks to Tristan Madani <tristan@...encesecurity.com> for the
detailed report and for reviewing the patch.

## Timeline

    2026-07-02: Report sent to inetutils-security@....org
    2026-07-02: I (Collin Funk) acknowledged the report and asked a few
                questions regarding the issue.
    2026-07-04: Tristan answered those questions.
    2026-07-06: I reproduced the issue updated Tristan with a planned
                timeline for the fix and CVE assignment.
    2026-07-08: Tristan agreed to the timeline and offered to review the
                patch.
    2026-07-11: I wrote the patch and sent it to Tristan.
    2026-07-15: Tristan confirmed the patch worked as expected.
    2026-07-16: Private mail to distros mailing list along with the patch.
    2026-07-24: I wrote this report and sent it to oss-security.

Note that I also requested a CVE when emailing distros, but haven't
heard back. I'll probably reach out privately to a CNA in a bit, and
will update here once one is assigned.

Collin

[1] https://codeberg.org/inetutils/inetutils/commit/9974e41e9fd957b0271d4dc0af773a9f998f1eb2
[2] https://sources.debian.org/src/util-linux/2.41-5/debian/NEWS#L1-L9
[3] https://www.gnu.org/software/inetutils/manual/inetutils.html#Access-control-in-talkd
[4] https://codeberg.org/inetutils/inetutils/src/commit/c4b87ff6cd5ebcd5e0b1de748eba348da38a0a15/talkd/process.c#L69-L84
[5] https://codeberg.org/inetutils/inetutils/src/commit/c4b87ff6cd5ebcd5e0b1de748eba348da38a0a15/talkd/process.c#L93-L96
[6] https://codeberg.org/inetutils/inetutils/src/commit/c4b87ff6cd5ebcd5e0b1de748eba348da38a0a15/talkd/announce.c#L140-L145
[7] https://codeberg.org/inetutils/inetutils/src/commit/c4b87ff6cd5ebcd5e0b1de748eba348da38a0a15/talkd/process.c#L162-L163
[8] https://www.gnu.org/software/inetutils/manual/inetutils.html#talk_003a-a-communication-program
[9] https://codeberg.org/inetutils/inetutils/src/commit/c4b87ff6cd5ebcd5e0b1de748eba348da38a0a15/talkd/announce.c#L47-L60
[10] https://codeberg.org/inetutils/inetutils/src/commit/c4b87ff6cd5ebcd5e0b1de748eba348da38a0a15/talkd/announce.c#L25-L39
[11] https://codeberg.org/inetutils/inetutils/src/commit/c4b87ff6cd5ebcd5e0b1de748eba348da38a0a15/talkd/announce.c#L62-L86
