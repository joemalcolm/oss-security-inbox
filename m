X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2131" "Monday" "22" "May" "2017" "20:57:21" "+0200" "Marcus Meissner" "meissner@suse.de" "<20170522185720.GA13059@suse.de>" "46" "Re: [oss-security] How to request a CVE for open source projects" "^Date:" nil nil "5" "2017052218:57:21" "[oss-security] How to request a CVE for open source projects" (number mark "        meissner@sus May 22   46/2131  " thread-indent "\"Re: [oss-security] How to request a CVE for open source projects\"\n") "<1495476334.15944.2@mail.igalia.com>" ("<1495476334.15944.2@mail.igalia.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24487 invoked by uid 550); 22 May 2017 18:57:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24466 invoked from network); 22 May 2017 18:57:32 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20170522185720.GA13059@suse.de>
References: <1495476334.15944.2@mail.igalia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1495476334.15944.2@mail.igalia.com>
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.24 (2015-08-30)
Date: Mon, 22 May 2017 20:57:21 +0200
From: Marcus Meissner <meissner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] How to request a CVE for open source projects
To: oss-security@lists.openwall.com

Hi,

You can request CVEs for opensource projects via the Mitre webform.

For e.g. the Linux Kernel I just used "Linux" as vendor, for Xen "Xen" and similar.

(and in general:)
Please everyone do the distributors a favour and link to GIT commits with fixes for
the requested CVE or at least explicit single reproducers, as we have increasing trouble
of associating CVEs with the correct place in code.

Ciao, Marcus
On Mon, May 22, 2017 at 01:05:34PM -0500, Michael Catanzaro wrote:
> Hi,
> 
> I'm aware that the CVE form [1] can now be used to request CVEs. However, it
> does not seem to be designed for requesting CVEs in open source products.
> The field "Vendor of the product(s)" says "Please ensure vendors are on the
> products and sources list," indicating the intent of MITRE to restrict usage
> of the form to specific products. This list [2] says "For open source
> software products not listed below, request a CVE ID through the Distributed
> Weakness Filing Project CNA." So, clearly we are supposed to request a CVE
> through the DWF project. (Or perhaps via Red Hat, since it seems like it's
> willing to allocate CVEs for miscellaneous Linux-related issues.)
> 
> Anyway, I attempted to request a CVE using the DWF project's request form
> [3] several months ago, but have not yet received any response [4]. So I am
> hesitant to request further CVEs from the DWF project, for fear that I won't
> receive a response and will wind up needing to make a duplicate CVE request
> somewhere else.
> 
> How are other people getting open source CVEs right now? Has anybody else
> had luck getting a CVE via DWF? Should I be trying to do this through Red
> Hat instead? Or just by filling out MITRE's CVE form even though we're not
> really supposed to be using it?
> 
> Michael
> 
> [1] https://cveform.mitre.org/
> [2] http://cve.mitre.org/cve/request_id.html#cna_coverage
> [3] http://iwantacve.org/
> [4] https://bugzilla.gnome.org/show_bug.cgi?id=752738#c15
> 

-- 
Marcus Meissner,SUSE LINUX GmbH; Maxfeldstrasse 5; D-90409 Nuernberg; Zi. 3.1-33,+49-911-740 53-432,,serv=loki,mail=wotan,type=real <meissner@suse.de>
