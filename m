X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1457" "Monday" "20" "July" "2020" "18:33:03" "+0200" "Marcus Meissner" "meissner@suse.de" "<20200720163302.GB3712@suse.de>" "40" "Re: [oss-security] Re: lockdown bypass on mainline kernel for loading unsigned modules" "^Cc:" nil nil "7" "2020072016:33:03" "[oss-security] Re: lockdown bypass on mainline kernel for loading unsigned modules" (number mark "        meissner@sus Jul 20   40/1457  " thread-indent "\"Re: [oss-security] Re: lockdown bypass on mainline kernel for loading unsigned modules\"\n") "<CAHmME9o3YX12Ek0L1GgSXj9QfnNmeO8zKDdnvk2b86c2ZW9cLw@mail.gmail.com>" ("<CAHmME9rmAznrAmEQTOaLeMM82iMFTfCNfpxDGXw4CJjuVEF_gQ@mail.gmail.com>" "<CAHmME9o3YX12Ek0L1GgSXj9QfnNmeO8zKDdnvk2b86c2ZW9cLw@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Re: lockdown bypass on mainline kernel for loading unsigned modules" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17721 invoked by uid 550); 20 Jul 2020 16:33:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17660 invoked from network); 20 Jul 2020 16:33:14 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20200720163302.GB3712@suse.de>
References: <CAHmME9rmAznrAmEQTOaLeMM82iMFTfCNfpxDGXw4CJjuVEF_gQ@mail.gmail.com>
 <CAHmME9o3YX12Ek0L1GgSXj9QfnNmeO8zKDdnvk2b86c2ZW9cLw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAHmME9o3YX12Ek0L1GgSXj9QfnNmeO8zKDdnvk2b86c2ZW9cLw@mail.gmail.com>
Organization: SUSE Software Solutions =?iso-8859-1?Q?Ger?=
 =?iso-8859-1?Q?many_GmbH=2C_Maxfeldstr=2E_5=2C_90409_Nuernberg=2C_Germany?=
 =?iso-8859-1?Q?=2C_GF=3A_Felix_Imend=F6rffer=2C_HRB_36809=2C_AG_N=FCrnber?=
 =?iso-8859-1?Q?g?=
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: cve-assign@mitre.org
Date: Mon, 20 Jul 2020 18:33:03 +0200
From: Marcus Meissner <meissner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: lockdown bypass on mainline kernel for
 loading unsigned modules
To: oss-security@lists.openwall.com

Hi,

CVE-2020-15780 was assigned to this.

Ciao, Marcus.
On Mon, Jun 15, 2020 at 05:03:12PM -0600, Jason A. Donenfeld wrote:
> Hi Mitre,
> 
> People are requesting a CVE to track this and are poking me to poke
> you to assign one. Note that this would be for a *different* CVE than
> the one I requested for the Ubuntu vulnerability a minute ago. This
> vulnerability here affects a different set of kernels and uses a
> different vector.
> 
> Jason
> 
> On Mon, Jun 15, 2020 at 4:26 AM Jason A. Donenfeld <Jason@zx2c4.com> wrote:
> >
> > Hi everyone,
> >
> > Yesterday, I found a lockdown bypass in Ubuntu 18.04's kernel using
> > ACPI table tricks via the efi ssdt variable [1]. Today I found another
> > one that's a bit easier to exploit and appears to be unpatched on
> > mainline, using acpi_configfs to inject an ACPI table. The tricks are
> > basically the same as the first one, but this one appears to be
> > unpatched, at least on my test machine. Explanation is in the header
> > of the PoC:
> >
> > https://git.zx2c4.com/american-unsigned-language/tree/american-unsigned-language-2.sh
> >
> > I need to get some sleep, but if nobody posts a patch in the
> > meanwhile, I'll try to post a fix tomorrow.
> >
> > Jason
> >
> > [1] https://www.openwall.com/lists/oss-security/2020/06/14/1
> 

-- 
Marcus Meissner,SUSE LINUX GmbH; Maxfeldstrasse 5; D-90409 Nuernberg; Zi. 3.1-33,+49-911-740 53-432,,serv=loki,mail=wotan,type=real <meissner@suse.de>
