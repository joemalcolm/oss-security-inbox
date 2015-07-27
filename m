X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1184" "Monday" "27" "July" "2015" "11:38:38" "+0100" "Luis Henriques" "luis.henriques@canonical.com" "<20150727103838.GA12581@charon.olymp>" "34" "Re: [oss-security] Re: Linux x86_64 NMI security issues" nil nil nil "7" "2015072710:38:38" "[oss-security] Re: Linux x86_64 NMI security issues" (number mark "U       luis.henriqu Jul 27   34/1184  " thread-indent "\"Re: [oss-security] Re: Linux x86_64 NMI security issues\"\n") "<55B328E0.8050701@amacapital.net>" ("<CALCETrXViSiMG79NtqN79NauDN9B2k9nOQN18496h9pJg+78+g@mail.gmail.com>" "<CA+5PVA7MZCryECtCVw1zLacEqvRWrsq3rSnZKPBJjcwC3e0h=g@mail.gmail.com>" "<55B328E0.8050701@amacapital.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9530 invoked by uid 550); 29 Jul 2015 00:57:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13968 invoked from network); 27 Jul 2015 10:38:51 -0000
Date: Mon, 27 Jul 2015 11:38:38 +0100
From: Luis Henriques <luis.henriques@canonical.com>
To: oss-security@lists.openwall.com
Cc: Josh Boyer <jwboyer@fedoraproject.org>
Message-ID: <20150727103838.GA12581@charon.olymp>
References: <CALCETrXViSiMG79NtqN79NauDN9B2k9nOQN18496h9pJg+78+g@mail.gmail.com>
 <CA+5PVA7MZCryECtCVw1zLacEqvRWrsq3rSnZKPBJjcwC3e0h=g@mail.gmail.com>
 <55B328E0.8050701@amacapital.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <55B328E0.8050701@amacapital.net>
Subject: Re: [oss-security] Re: Linux x86_64 NMI security issues

On Fri, Jul 24, 2015 at 11:12:48PM -0700, Andy Lutomirski wrote:
> On 07/24/2015 07:16 AM, Josh Boyer wrote:
> > On Wed, Jul 22, 2015 at 2:12 PM, Andy Lutomirski <luto@amacapital.net> wrote:
> >> Note: Several of these fixes each depend on a few patches immediately
> >> before them.  The NMI stack switching fix also depends on changes made
> >> in 4.2 and will appear to apply but crash on older kernels.  I have a
> >> different variant that's more portable.
> > 
> > Given that none of these are going to apply cleanly on older kernels,
> > do you have backports available for 4.1.y and the longterm stable
> > kernels?
> > 
> 
> There's this:
> 
> https://git.kernel.org/cgit/linux/kernel/git/luto/linux.git/commit/?h=x86/nmi-backport
> 
> which is a combined effort of me and Ben Hutchings.  It's not synced up
> to the fixes in Linus' tree.
>

Thank you all for working on these backports.  I'm planning to use
them (and more specifically the patches in the Debian kernel) for the
3.16 stable kernel.

Cheers,
--
Luís


> Note that even Linus' tree doesn't have the synchronous modify_ldt fix
> yet.  I sent a hopefully final version of that out a few minutes ago.
> 
> --Andy
