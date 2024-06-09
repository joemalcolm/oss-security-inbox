Received: (qmail 18357 invoked by uid 550); 9 Jun 2024 21:00:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16179 invoked from network); 9 Jun 2024 21:00:19 -0000
Date: Sun, 9 Jun 2024 23:00:19 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20240609210019.GA25286@openwall.com>
References: <730060b6-e92f-437e-aa44-fbb1d47431f3@oracle.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <730060b6-e92f-437e-aa44-fbb1d47431f3@oracle.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] vte 0.76.3 released with fix for CVE-2024-37535

On Sun, Jun 09, 2024 at 11:26:33AM -0700, Alan Coopersmith wrote:
> https://www.cve.org/CVERecord?id=CVE-2024-37535 states:
> 
> >GNOME VTE before 0.76.3 allows an attacker to cause a denial of service 
> >(memory consumption) via a window resize escape sequence, a related issue
> >to CVE-2000-0476.
> 
> https://gitlab.gnome.org/GNOME/vte/-/issues/2786 explains further:
> 
> >The ANSI escape sequence "e[4;;t" can be used to resize the terminal
> >window, where "" is the height and ""is the width. By providing a
> >large number such as 65535 for both values will lead to a local denial
> >of service, where the whole machine can be frozen.
> >
> >This same vulnerability found was in XTerm back in 2000. The CVE for
> >the vulnerability in XTerm is CVE-2000-0476
> >
> >Steps to reproduce:
> >
> >    Open gnome-terminal
> >    Execute printf "e[4;65535;65535t" in the terminal

The above command is missing its backslash.  This triggers a crash:

printf '\e[4;65535;65535t'

and so does this:

printf '\e[8;65535;65535t'

The latter is a different escape sequence that accepts the sizes in
different units.  I hope the fix covers both, but I didn't review nor
test it - I hope someone does and posts in here.

Alexander
