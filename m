X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1621" "Saturday" "14" "November" "2020" "12:58:50" "+0100" "Marcus Meissner" "meissner@suse.de" "<20201114115850.GB5193@suse.de>" "37" "Re: [oss-security] Buffer Overflow in raptor widely unfixed in Linux distros" nil nil nil "11" "2020111411:58:50" "[oss-security] Buffer Overflow in raptor widely unfixed in Linux distros" (number mark "U       meissner@sus Nov 14   37/1621  " thread-indent "\"Re: [oss-security] Buffer Overflow in raptor widely unfixed in Linux distros\"\n") "<20201113133331.48185f9f@computer>" ("<20201113133331.48185f9f@computer>") nil nil nil nil nil nil nil "Re: [oss-security] Buffer Overflow in raptor widely unfixed in Linux distros" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21936 invoked by uid 550); 14 Nov 2020 11:59:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21917 invoked from network); 14 Nov 2020 11:58:59 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Sat, 14 Nov 2020 12:58:50 +0100
From: Marcus Meissner <meissner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20201114115850.GB5193@suse.de>
References: <20201113133331.48185f9f@computer>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20201113133331.48185f9f@computer>
Organization: SUSE Software Solutions =?iso-8859-1?Q?Ger?=
 =?iso-8859-1?Q?many_GmbH=2C_Maxfeldstr=2E_5=2C_90409_Nuernberg=2C_Germany?=
 =?iso-8859-1?Q?=2C_GF=3A_Felix_Imend=F6rffer=2C_HRB_36809=2C_AG_N=FCrnber?=
 =?iso-8859-1?Q?g?=
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [oss-security] Buffer Overflow in raptor widely unfixed in Linux
 distros

Hi,

On Fri, Nov 13, 2020 at 01:33:31PM +0100, Hanno Böck wrote:
> 3 years ago I reported a heap overflow vulnerability in raptor, an RDF
> parsing library:
> https://www.openwall.com/lists/oss-security/2017/06/07/1
> 
> raptor has not created a new release since 2014.
> 
> The most prominent user seems to be libreoffice. This is triggerable
> from within an ODT file. Back then I reported this to libreoffice as
> well and they patched it in their builds. However on linux systems
> libreoffice package usually use the system-provided libraptor, so if
> that's not patched it is vulnerable.
> 
> This was unpatched for a long time in many linux distros, in some it
> still is. Debian+Ubuntu have released updates in the past few days.
> 
> It may be interesting to discuss how this happened. From my side I feel
> I did what I should do - I reported it to the project and later
> disclosed it publicly on oss-security. Apparently it seems there is no
> reliable process to make sure publicly reported vulns eventually get
> patched in distros if there is no active upstream.
> Maybe noteworthy is that this didn't get a CVE in 2017. It seems many
> distros rely on CVEs to get a process of backporting fixes rolling.
> Given the fluctuating reliability of CVE assignments not sure this is
> wise. I have now requested a CVE (CVE-2017-18926).

I think the only thing you can do additional is to request a CVE.

All tracking by everyone is using CVEs, this is the core identifier
of the software security world.

We distributors fill in as CVE requesters, but as you noticed, we 
occasionaly miss entries.

Ciao, Marcus
