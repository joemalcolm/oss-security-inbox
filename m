Received: (qmail 30204 invoked by uid 550); 17 Aug 2025 23:14:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3112 invoked from network); 17 Aug 2025 14:09:53 -0000
Date: Sun, 17 Aug 2025 16:09:37 +0200
From: Erik Auerswald <auerswal@unix-ag.uni-kl.de>
To: oss-security@lists.openwall.com
Cc: Vincent Lefevre <vincent@vinc17.net>
Message-ID: <20250817140937.GA16226@unix-ag.uni-kl.de>
References: <20250813203857.GA11693@unix-ag.uni-kl.de>
 <87a53zyugg.fsf@gmail.com>
 <20250817010958.GA607521@qaa.vinc17.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250817010958.GA607521@qaa.vinc17.org>
Author: Erik Auerswald <auerswal@unix-ag.uni-kl.de>
X-Spam-Status: No, hits=-1.9, tests=BAYES_00=-1.9
X-Spam-Score:  (-1.9)
X-Spam-Flag: NO
Subject: Re: [oss-security] xterm terminal crash due to malicious character
 sequences in file name

Hi Vincent,

On Sun, Aug 17, 2025 at 03:09:58AM +0200, Vincent Lefevre wrote:
> On 2025-08-16 11:47:43 -0700, Collin Funk wrote:
> > Erik Auerswald <auerswal@unix-ag.uni-kl.de> said:
> > > On Wed, Aug 13, 2025 at 07:00:58PM +0200, Vincent Lefevre wrote:
> > > > 
> > > > The following makes the xterm terminal crash
> > > > 
> > > >   touch "$(printf "file\e[H\e[c\n\b")"
> > > >   gunzip file*
> > > > 
> > > > due to malicious character sequences in the file name and a bug
> > > > in xterm. Same issue with bunzip2 instead of gunzip.
> > > 
> > > I do not expect this to only happen with gunzip and bzip2.
> > > Does this happen with any program that prints the filename without
> > > any escaping, e.g., "echo file*", and most programs that print
> > > the provided filename
> 
> Note that "echo file*" is under the control of the user, who should
> never use "echo" or "printf" on unsanitized data. Concerning gunzip
> and bzip2, it is the choice of these programs to output the file name
> without filtering first (in particular when the output is done to
> a terminal).
> 
> > > when reporting any associated problem (i.e., all that do not escape
> > > or suppress non-printable filename characters or bytes)?
> > 
> > Yep, any program will print non-printable characters unless it has
> > some logic to not do so.
> > [...]
> > Generally this is an extra program feature.
> 
> I see this more than a feature, at least in the case the output
> is done to a terminal. As a general rule, programs are expected
> to sanitize output data in such as a case.

I'd expect most programs to not change the filename printed in their
output.  POSIX does not even expect "ls" to sanitize its output without
"-q", but it does allow it[0].  Two more example programs that do not
sanitize filenames in their output would be "file", at least version
"5.41", and "dash", at least the version[1] included in Ubuntu GNU/Linux
22.04.5 LTS.  I'd expect that you can find many more examples.  Getting
every program changed to follow your expectation seems like a Sisyphean
task to me.

Please note that I am not opposed to adding that feature to every
existing and future program, it just seems foolish to rely on it, at
least currently.

[0]: https://pubs.opengroup.org/onlinepubs/9799919799/utilities/ls.html
[1]: 0.5.11+git20210903+057cd650a4ed-3build1

> [...]
> Note that arbitrary escape sequences from file names can do things
> unexpected by the user, such as clearing the screen, changing the
> terminal width or other terminal settings, though normally with
> limited loss. A crash is worse as one loses the shell session and
> all information related to it.
> [...]
> I've just seen that lzip and plzip has the same issue.

I am quite sure that there are many more such programs.

Best regards,
Erik
