X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2183" "Saturday" "20" "October" "2018" "02:47:01" "+0100" "Ken Moffat" "zarniwhoop@ntlworld.com" "<20181020014701.GB3366@milliways.localdomain>" "52" "[oss-security] Attempting to patch ghostscript-9.25" "^Date:" nil nil "10" "2018102001:47:01" "[oss-security] Attempting to patch ghostscript-9.25" (number mark "        zarniwhoop@n Oct 20   52/2183  " thread-indent "\"[oss-security] Attempting to patch ghostscript-9.25\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3913 invoked by uid 550); 20 Oct 2018 11:02:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19637 invoked from network); 20 Oct 2018 01:47:12 -0000
Message-ID: <20181020014701.GB3366@milliways.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
X-Clacks-Overhead: GNU Terry Pratchett
Content-Transfer-Encoding: 8bit
User-Agent: Mutt/1.10.1 (2018-07-13)
Date: Sat, 20 Oct 2018 02:47:01 +0100
From: Ken Moffat <zarniwhoop@ntlworld.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Attempting to patch ghostscript-9.25
To: oss-security@lists.openwall.com

Hi,

I hope people can read this - I know that google marks my mails as
spam (so no point Cc'ing Tavis) and also that Suse discard my mails.
Probably many other places also do that.  Anyway:

When the first set of vulnerabilities in 9.25 came out there was a
nice 'mostly harmless' example, and I patched BLFS for that (needed
one extra commit beyond the two Tavis specified, so that I could
make sense of where to apply part of it).

For the later vulnerabilities, working out what to apply has been
much harder.  Either everyone else thinks that other mitigations
against untrusted ps files will suffice, or else it's on everybody's
ToDo lists.

So, here is a first attempt to fix all this month's vulnerabilities.
For the latest exploit(s) I do not have an example, so I don't know
whether or not this works.  But it prevents the earlier
vulnerability, and usage of real ps (and eps - I only have the gs
examples, and only gs seems able to use them) seems to work
correctly.  Unlike my first attempt to fix this, which turned out
to fail to display any ps, eps files.

The patch is a bit big, so I've uploaded it to
http://www.linuxfromscratch.org/~ken/provisional/ as
ghostscript-9.25-security_fixes-2.patch

'provisional' until I find out if it protects adequately.  If there
turn out ot be problems, I suppose I'll need to renumber later
versions.

Built in BLFS using the same instructions as for the earlier -1
patch [ http://www.linuxfromscratch.org/blfs/view/svn/pst/gs.html ]
but that doesn't mean it will work for everyone else's ways of
building.  Note tht I _do_ build the shared library.

The patch lists which upstream commits I pulled in.  I was mostly
concentrating on changes to gs_init which would maybe help me apply
the needed patches.  As I've noted in the patch's introduction,
several commits had negative offsets (I guess hunks of code were
removed in some of the unrelated commits that I ignored).

Comments welcome.

One final thought - apart from 9.25, upstream seem to have an
approximately 6-monthly release schedule, so probably the only thing
likely to speed up 9.26 is everybody patching ;)

ĸen
-- 
                        Is it about a bicycle ?
