Received: (qmail 28001 invoked by uid 550); 23 Dec 2022 14:20:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27980 invoked from network); 23 Dec 2022 14:20:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm2; t=1671805221; x=1671891621; bh=fSJ4tvuZik
	7aASf6KMMoGUGYBfx+YHqV4Fc74zKpkjY=; b=wrp/40fEtlRHsLFpG+IQVPPNxD
	10cqjeGYlQBC74JvSOGfdg/Q4LUoIdI0WGynOlkRkc17HNLIOF1gUDnWueef4D/k
	Mr2cTiYu0rzjkkM1XbfS9yfawJuTHzXsfGHGmXUQ6JbvwLb0Le7TVUjqJTj/mhqu
	4s0iPEV1i16rv2zMHM5P+/tWDcy3jV2wYz8ZZ64Z9fPNEKkSzZkj8U091esQ8IBp
	fLog8p4jL6G7xsUsIz/1U4EwTtD5uIkGenS9y8Ly1RNYF6Ne9CNRS4t7FkD7PMGn
	UeUJ0cFyWEjKCr00DZOXHoGpJfXsuAStLd3vYg4aImeJWDT/v/LjQ3eFzPpg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1671805221; x=1671891621; bh=fSJ4tvuZik7aASf6KMMoGUGYBfx+
	YHqV4Fc74zKpkjY=; b=eeGtKTjPL4jxp3p27TXrLrqui/JOycEoiRzb7xe+UmNf
	vEkcdl433bgoj3MzXV/M94gSWf48JpIHYfxEN+oHJfqtNkLMDOB1xQecUHyHujZM
	AmI2hl2UboosCJQPe+0nnugaSbnekUywhxP2QpD4aMPUiy337ovE2NDbHftENh5J
	jl3dH+T+D4jwPmnmRi27xjPzl09mwabAf1D2PM4g5GQsykDAo2PtpEj0HxcRpXcB
	PMvAwd3NpOC27tTejnziH8T+qcDYWAHS8nrJa5pzM9ceQxWd52i5+XPu4vVzLmZD
	qwUF6eMdUYizi27091PP8K9k/RQizU1ZZ5vNb+XlXg==
X-ME-Sender: <xms:JbmlY_xlNVHlDcnlFKrFAXGrzqLcpAZJjXue71uaL-OD_YIRxxBPHg>
    <xme:JbmlY3TwomEfWNYObF1GU9QDcJqaVj7KrrK3-3QchQa24lAu0UlOBwsgSjHUJhiTU
    aznYQ0JRkITCw>
X-ME-Received: <xmr:JbmlY5XxuDDYgvvlsXzoxuKlR3UHdwkHQy0bMp1weKG7uDi-vVNwP0I6cF1D_rp2H35srg5sPlMH590OnForMPxFw82fcE9n>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrhedvgdeifecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehttdertd
    dttddvnecuhfhrohhmpefirhgvghcumffjuceoghhrvghgsehkrhhorghhrdgtohhmqeen
    ucggtffrrghtthgvrhhnpeevueehjefgfffgiedvudekvdektdelleelgefhleejieeuge
    egveeuuddukedvteenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
    fhhrohhmpehgrhgvgheskhhrohgrhhdrtghomh
X-ME-Proxy: <xmx:JbmlY5gmChgA0GMfa1JZyhbmV6Sk9GsBV-XTvT3tObTaQamSWWUfeQ>
    <xmx:JbmlYxDDYvuR4KQv7wW7rJyjYWawCZhTd0mpFK8e787RmRrtZmuvog>
    <xmx:JbmlYyIK9Pc1rt5hrkosfuul8t8v080JT4zmRc_hafq979QKKpgJaQ>
    <xmx:JbmlY0rMuMMMLu71iRupB9Eay8lkh2Q_s4i_yZSGffpp7RdSvUXgMA>
Feedback-ID: i787e41f1:Fastmail
Date: Fri, 23 Dec 2022 15:20:17 +0100
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <Y6W5IcAzIUb5rD1F@kroah.com>
References: <CAKoP-y-rbU=xEowJGp6my0khWMSbE05+ncDiE3wtXTOWwvyScA@mail.gmail.com>
 <Y6TQ0HyCJOMkKSDn@netmeister.org>
 <Y6VTdO608VUE38Ke@kroah.com>
 <20221223081727.GB2404@suse.de>
 <Y6W1aSG2z5mBJDu8@sashalap>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y6W1aSG2z5mBJDu8@sashalap>
Subject: Re: [oss-security] Details on this supposed Linux Kernel ksmbd RCE

On Fri, Dec 23, 2022 at 09:04:25AM -0500, Sasha Levin wrote:
> On Fri, Dec 23, 2022 at 09:17:28AM +0100, Marcus Meissner wrote:
> > Not sure why they do not like you, but to be very clear anyone else can
> > requests CVEs for the kernel, (except the blacklisted drivers/staging/ area).
> 
> For CVEs assigned (earlier this month) to issues in drivers/staging,
> what would be the process to remove the assignment or mark them as
> invalid?

And who is doing this "blacklisting" of staging drivers from CVEs?  Why
are they special when many distros do enable and rely on them?

In my talks with MITRE, they have said they don't want to make public
statments about the CVE issues and Linux, which is sad, but they never
mentioned anything about "we will ignore this portion of the kernel
source tree".  Is that in a public statement anywhere that I can point
to when people ask the kernel security team for CVEs?

thanks,

greg k-h
