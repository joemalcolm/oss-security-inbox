X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1617" "Thursday" "6" "April" "2017" "10:39:28" "+0200" "Marcus Meissner" "meissner@suse.de" "<20170406083928.GE32355@suse.de>" "53" "Re: [oss-security] libxslt math.random issue" nil nil nil "4" "2017040608:39:28" "[oss-security] libxslt math.random issue" (number mark "U       meissner@sus Apr  6   53/1617  " thread-indent "\"Re: [oss-security] libxslt math.random issue\"\n") "<20170406103245.67949bfc@pc1>" ("<20170406054400.GC32355@suse.de>" "<20170406103245.67949bfc@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28165 invoked by uid 550); 6 Apr 2017 08:39:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28138 invoked from network); 6 Apr 2017 08:39:40 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Thu, 6 Apr 2017 10:39:28 +0200
From: Marcus Meissner <meissner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20170406083928.GE32355@suse.de>
References: <20170406054400.GC32355@suse.de>
 <20170406103245.67949bfc@pc1>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20170406103245.67949bfc@pc1>
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [oss-security] libxslt math.random issue

On Thu, Apr 06, 2017 at 10:32:45AM +0200, Hanno Böck wrote:
> Hi,
> 
> On Thu, 6 Apr 2017 07:44:00 +0200
> Marcus Meissner <meissner@suse.de> wrote:
> 
> > CVE-2015-9019 has been assigned to use of libexslt (in libxslt) usage
> > of "math.random" without initializing the randomseed.
> > 
> > https://bugzilla.gnome.org/show_bug.cgi?id=758400
> > https://bugzilla.suse.com/show_bug.cgi?id=934119
> 
> I have some questions and comments:
> 
> 1. What's the use of the random number and what's the security impact
> if it's not random? That's not explained
> In case of the bugreport.
> In case a cryptographically secure random number is required then using
> rand()/srand() is a bad idea anyway.
> (Unfortunately there's no secure random in the standard libc, but at
> least glibc now has getrandom.).


It is a bit tricky to find out. I googled some use-cases.

- UUID generation was looked for by 1 stackoverflow user
- some harmless randomness in XSLT conversion for selection random pictures

> 2. This part of the patch looks a bit strange:
> 
> +	seed = time(NULL); /* just in case /dev/urandom is not there */
> +	if (fd == -1) {
> +		read (fd, &seed, sizeof(seed));
> +		close (fd);
> +	}
> 
> You're calling time() unconditionally, although it's kinda just a
> fallback. Why not
> +	if (fd == -1) {
> +		read (fd, &seed, sizeof(seed));
> +		close (fd);
> +	} else {
> +		seed = time(NULL);
> +	}
> ?
> 
> (obviously using time is not a secure way to do random numbers, if
> secure numbers are required cross-plattform you need to do this
> otherwise anyway)

it should be fd != -1 , my bad :/

Ciaop, Marcus
