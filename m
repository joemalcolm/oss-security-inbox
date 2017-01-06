X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["590" "Friday" "6" "January" "2017" "11:11:53" "+0100" "Marcus Meissner" "meissner@suse.de" "<20170106101153.GB9517@suse.de>" "20" "Re: [oss-security] Re: Firejail local root exploit" "^Cc:" nil nil "1" "2017010610:11:53" "[oss-security] Re: Firejail local root exploit" (number mark "        meissner@sus Jan  6   20/590   " thread-indent "\"Re: [oss-security] Re: Firejail local root exploit\"\n") "<a607fa163dc245808d66c3f1b4af06ba@imshyb02.MITRE.ORG>" ("<20170104131248.GA28596@suse.de>" "<a607fa163dc245808d66c3f1b4af06ba@imshyb02.MITRE.ORG>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12090 invoked by uid 550); 6 Jan 2017 10:12:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12069 invoked from network); 6 Jan 2017 10:12:05 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20170106101153.GB9517@suse.de>
References: <20170104131248.GA28596@suse.de>
 <a607fa163dc245808d66c3f1b4af06ba@imshyb02.MITRE.ORG>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a607fa163dc245808d66c3f1b4af06ba@imshyb02.MITRE.ORG>
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: cve-assign@mitre.org
Date: Fri, 6 Jan 2017 11:11:53 +0100
From: Marcus Meissner <meissner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Firejail local root exploit
To: oss-security@lists.openwall.com

Hi Mitre,

On Wed, Jan 04, 2017 at 12:16:49PM -0500, cve-assign@mitre.org wrote:
> >  * Firejail has too broad attack surface that allows users
> >  * to specify a lot of options, where one of them eventually
> >  * broke by accessing user-files while running with euid 0.
> 
> > const char *const ldso = "/etc/ld.so.preload";
> > ...
> > snprintf(path, sizeof(path) - 1, "%s/.firenail/.Xauthority", home);
> > ...
> > symlink(ldso, path)
> 
> Use CVE-2017-5180.

Is this correct? It starts quite far into the 2017 namespace?

Or have other CNAs allocated the previous 5000 ?

Ciao, Marcus
