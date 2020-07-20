X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1213" "Monday" "20" "July" "2020" "18:32:34" "+0200" "Marcus Meissner" "meissner@suse.de" "<20200720163233.GA3712@suse.de>" "41" "Re: [oss-security] Re: lockdown bypass on ubuntu 18.04's 4.15 kernel for loading unsigned modules" nil nil nil "7" "2020072016:32:34" "[oss-security] Re: lockdown bypass on ubuntu 18.04's 4.15 kernel for loading unsigned modules" (number mark "U       meissner@sus Jul 20   41/1213  " thread-indent "\"Re: [oss-security] Re: lockdown bypass on ubuntu 18.04's 4.15 kernel for loading unsigned modules\"\n") "<CALPTtNU++hGZ4KO85Sz0qjmofe-BTspsh+rJvbMeiWHeVhTNpg@mail.gmail.com>" ("<CAHmME9qSmHj6qjj2jvjNTwRoB3KUtf-3kPgh2fk9aDeAHJo8Ng@mail.gmail.com>" "<CAHmME9q76P+sjuNXhGXQwLThJ=k2O04BC=P0Vsz+9XGvbeB4Rg@mail.gmail.com>" "<CALPTtNU++hGZ4KO85Sz0qjmofe-BTspsh+rJvbMeiWHeVhTNpg@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Re: lockdown bypass on ubuntu 18.04's 4.15 kernel for loading unsigned modules" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13643 invoked by uid 550); 20 Jul 2020 16:32:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13619 invoked from network); 20 Jul 2020 16:32:46 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Mon, 20 Jul 2020 18:32:34 +0200
From: Marcus Meissner <meissner@suse.de>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Message-ID: <20200720163233.GA3712@suse.de>
References: <CAHmME9qSmHj6qjj2jvjNTwRoB3KUtf-3kPgh2fk9aDeAHJo8Ng@mail.gmail.com>
 <CAHmME9q76P+sjuNXhGXQwLThJ=k2O04BC=P0Vsz+9XGvbeB4Rg@mail.gmail.com>
 <CALPTtNU++hGZ4KO85Sz0qjmofe-BTspsh+rJvbMeiWHeVhTNpg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CALPTtNU++hGZ4KO85Sz0qjmofe-BTspsh+rJvbMeiWHeVhTNpg@mail.gmail.com>
Organization: SUSE Software Solutions =?iso-8859-1?Q?Ger?=
 =?iso-8859-1?Q?many_GmbH=2C_Maxfeldstr=2E_5=2C_90409_Nuernberg=2C_Germany?=
 =?iso-8859-1?Q?=2C_GF=3A_Felix_Imend=F6rffer=2C_HRB_36809=2C_AG_N=FCrnber?=
 =?iso-8859-1?Q?g?=
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [oss-security] Re: lockdown bypass on ubuntu 18.04's 4.15 kernel
 for loading unsigned modules

Hi,

This has gotten assigned CVE-2019-20908.

Ciao, Marcus

On Mon, Jun 15, 2020 at 05:09:51PM -0700, Reed Loden wrote:
> Please use
> https://cveform.mitre.org/ to request a CVE directly from MITRE. That’s
> your quickest and best way. :-)
> 
> ~reed
> 
> On Mon, Jun 15, 2020 at 4:02 PM Jason A. Donenfeld <Jason@zx2c4.com> wrote:
> 
> > Hi Mitre,
> >
> > People are requesting a CVE to track this and are poking me to poke
> > you to assign one.
> >
> > Jason
> >
> > On Sun, Jun 14, 2020 at 12:30 AM Jason A. Donenfeld <Jason@zx2c4.com>
> > wrote:
> > >
> > > Hey folks,
> > >
> > > I noticed that Ubuntu 18.04's 4.15 kernels forgot to protect
> > > efivar_ssdt with lockdown, making that a vector for disabling lockdown
> > > on an efi secure boot machine. I wrote a little PoC exploit to
> > > demonstrate these types of ACPI shenanigans:
> > >
> > >
> > https://git.zx2c4.com/american-unsigned-language/tree/american-unsigned-language.sh
> > >
> > > The comment on the top has description of exploit strategy and such. I
> > > haven't yet looked into other kernels and distros that might be
> > > affected, though afaict, Canonical's kernel seems to deviate a lot
> > > from upstream.
> > >
> > > Jason
