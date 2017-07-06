X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3014" "Thursday" "6" "July" "2017" "10:40:51" "+0200" "Marcus Meissner" "meissner@suse.de" "<20170706084051.GC5923@suse.de>" "84" "Re: [oss-security] CVE IDs needed for PHP vulnerabilites (affects 5.6.30 and 7.0.20)" nil nil nil "7" "2017070608:40:51" "[oss-security] CVE IDs needed for PHP vulnerabilites (affects 5.6.30 and 7.0.20)" (number mark "U       meissner@sus Jul  6   84/3014  " thread-indent "\"Re: [oss-security] CVE IDs needed for PHP vulnerabilites (affects 5.6.30 and 7.0.20)\"\n") "<CAEsznC4xw6b9TOBJk0q1WFMpnd5EoYeSbka+hqYTaZbuz9k9FA@mail.gmail.com>" ("<CAEsznC6vAOzM9wmtcZwiLX1-k3uevMEEuxkksXCUMR8=hsq+Kg@mail.gmail.com>" "<20170705123427.mky43jbckj4quua2@lorien.valinor.li>" "<CAEsznC4xw6b9TOBJk0q1WFMpnd5EoYeSbka+hqYTaZbuz9k9FA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3638 invoked by uid 550); 6 Jul 2017 08:41:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3616 invoked from network); 6 Jul 2017 08:41:03 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Thu, 6 Jul 2017 10:40:51 +0200
From: Marcus Meissner <meissner@suse.de>
To: oss-security@lists.openwall.com
Cc: Salvatore Bonaccorso <carnil@debian.org>,
	"security@php.net" <security@php.net>
Message-ID: <20170706084051.GC5923@suse.de>
References: <CAEsznC6vAOzM9wmtcZwiLX1-k3uevMEEuxkksXCUMR8=hsq+Kg@mail.gmail.com>
 <20170705123427.mky43jbckj4quua2@lorien.valinor.li>
 <CAEsznC4xw6b9TOBJk0q1WFMpnd5EoYeSbka+hqYTaZbuz9k9FA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAEsznC4xw6b9TOBJk0q1WFMpnd5EoYeSbka+hqYTaZbuz9k9FA@mail.gmail.com>
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [oss-security] CVE IDs needed for PHP vulnerabilites (affects
 5.6.30 and 7.0.20)

Hi Lior,

Do you want to request CVEs via the webform? If not, I could do it.

Ciao, Marcus
On Wed, Jul 05, 2017 at 03:50:58PM +0300, Lior Kaplan wrote:
> AFAIK, when the issue is already public the list is just fine.
> 
> From the cve-assign auto reply:
> 
> "In the special case of communications involving a publicly known
> vulnerability on the oss-security mailing list, please do not use
> the https://cveform.mitre.org web site at this time, and instead
> send new or followup messages directly to that mailing list."
> 
> Kaplan
> 
> On Wed, Jul 5, 2017 at 3:34 PM, Salvatore Bonaccorso <carnil@debian.org>
> wrote:
> 
> > Hi
> >
> > On Wed, Jul 05, 2017 at 02:37:00PM +0300, Lior Kaplan wrote:
> > > Hi,
> > >
> > > The following issues have been reported and fixed in PHP. At the moment
> > > they are part of PHP 7.0.21 release. The fixes are also included in the
> > 5.6
> > > branch and will be part of 5.6.31 when it will be released.
> > >
> > > #73807 Performance problem with processing post request over 2000000
> > chars
> > > https://bugs.php.net/bug.php?id=73807
> > > http://git.php.net/?p=php-src.git;a=commitdiff;h=
> > 0f8cf3b8497dc45c010c44ed9e96518e11e19fc3
> > >
> > > #74145 wddx parsing empty boolean tag leads to SIGSEGV
> > > https://bugs.php.net/bug.php?id=74145
> > > http://git.php.net/?p=php-src.git;a=commitdiff;h=
> > 2aae60461c2ff7b7fbcdd194c789ac841d0747d7
> > > http://git.php.net/?p=php-src.git;a=commitdiff;h=
> > f269cdcd4f76accbecd03884f327cffb9a7f1ca9
> > >
> > > #74651 negative-size-param (-1) in memcpy in zif_openssl_seal()
> > > https://bugs.php.net/bug.php?id=74651
> > > http://git.php.net/?p=php-src.git;a=commitdiff;h=
> > 89637c6b41b510c20d262c17483f582f115c66d6
> > >
> > > #74819 wddx_deserialize() heap out-of-bound read via php_parse_date()
> > > https://bugs.php.net/bug.php?id=74819
> > > PHP 5.6 -
> > > http://git.php.net/?p=php-src.git;a=commitdiff;h=
> > 2aae60461c2ff7b7fbcdd194c789ac841d0747d7
> > > PHP 7.0  -
> > > http://git.php.net/?p=php-src.git;a=commitdiff;h=
> > 6b18d956de38ecd8913c3d82ce96eb0368a1f9e5
> > >
> > > Also, requests from past releases:
> > >
> > > PHP 5.6.28 + 7.0.13
> > > #73192 parse_url return wrong hostname
> > > https://bugs.php.net/bug.php?id=73192
> > > http://git.php.net/?p=php-src.git;a=commitdiff;h=
> > b061fa909de77085d3822a89ab901b934d0362c4
> > >
> > > 5.6.30 + 7.0.15
> > > #73773 Seg fault when loading hostile phar
> > > https://bugs.php.net/bug.php?id=73773
> > > http://git.php.net/?p=php-src.git;a=commitdiff;h=
> > e5246580a85f031e1a3b8064edbaa55c1643a451
> >
> > CVE assignement requests are not handled anymore directly via the
> > oss-security list, but need to be filled/requested at
> > https://cveform.mitre.org/
> >
> > Once CVE are assigned, can you repost them here for benefit of other
> > reader?
> >
> > Regards,
> > Salvatore
> >

-- 
Marcus Meissner,SUSE LINUX GmbH; Maxfeldstrasse 5; D-90409 Nuernberg; Zi. 3.1-33,+49-911-740 53-432,,serv=loki,mail=wotan,type=real <meissner@suse.de>
