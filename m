Received: (qmail 3761 invoked by uid 550); 17 Aug 2025 01:21:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22353 invoked from network); 17 Aug 2025 01:10:07 -0000
Date: Sun, 17 Aug 2025 03:09:58 +0200
From: Vincent Lefevre <vincent@vinc17.net>
To: oss-security@lists.openwall.com
Message-ID: <20250817010958.GA607521@qaa.vinc17.org>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20250813203857.GA11693@unix-ag.uni-kl.de>
 <87a53zyugg.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87a53zyugg.fsf@gmail.com>
X-Mailer-Info: https://www.vinc17.net/mutt/
User-Agent: Mutt/2.2.13+86 (bb2064ae) vl-169878 (2025-02-08)
Subject: Re: [oss-security] xterm terminal crash due to malicious character
 sequences in file name

Note: I didn't receive Erik's message. The logs of my mail server
says that 193.110.157.244 was blacklisted by zen.spamhaus.org and
dnsbl.ahbl.org. Rather annoying...

On 2025-08-16 11:47:43 -0700, Collin Funk wrote:
> Hi Erik,
> 
> Erik Auerswald <auerswal@unix-ag.uni-kl.de> said:
> 
> > On Wed, Aug 13, 2025 at 07:00:58PM +0200, Vincent Lefevre wrote:
> > > The following makes the xterm terminal crash
> > > 
> > >   touch "$(printf "file\e[H\e[c\n\b")"
> > >   gunzip file*
> > > 
> > > due to malicious character sequences in the file name and a bug in
> > > xterm. Same issue with bunzip2 instead of gunzip.
> > 
> > I do not expect this to only happen with gunzip and bzip2.  Does this
> > happen with any program that prints the filename without any escaping,
> > e.g., "echo file*", and most programs that print the provided filename

Note that "echo file*" is under the control of the user, who should
never use "echo" or "printf" on unsanitized data. Concerning gunzip
and bzip2, it is the choice of these programs to output the file name
without filtering first (in particular when the output is done to a
terminal).

> > when reporting any associated problem (i.e., all that do not escape or
> > suppress non-printable filename characters or bytes)?
> 
> Yep, any program will print non-printable characters unless it has some
> logic to not do so.
> 
> Many GNU programs (from Coreutils and Findutils, for example) use the
> 'quote' module from Gnulib to print file names in a way that can be
> copy-pasted in a shell shell command [1]. Here is an example using ls
> from Coreutils:
> 
>     $ touch 'first
>     file'
>     $ touch 'second file'
>     $ ls
>     'first'$'\n''file'  'second file'
> 
> Generally this is an extra program feature.

I see this more than a feature, at least in the case the output
is done to a terminal. As a general rule, programs are expected
to sanitize output data in such as a case.

> The real issue here was the xterm crash.

That's a second issue. The combination of both makes then worse.

Note that arbitrary escape sequences from file names can do things
unexpected by the user, such as clearing the screen, changing the
terminal width or other terminal settings, though normally with
limited loss. A crash is worse as one loses the shell session and
all information related to it.

> I guess it would be nice for gzip to quote file names nicely. I'll have
> a look at sending a patch. The only reason tjat it doesn't already do it
> is probably because it is changed less frequently than other GNU
> programs.
> 
> Collin
> 
> [1] https://www.gnu.org/software/gnulib/manual/gnulib.html#Quoting-1

I've just seen that lzip and plzip has the same issue.

-- 
Vincent Lefèvre <vincent@vinc17.net> - Web: <https://www.vinc17.net/>
100% accessible validated (X)HTML - Blog: <https://www.vinc17.net/blog/>
Work: CR INRIA - computer arithmetic / Pascaline project (LIP, ENS-Lyon)
