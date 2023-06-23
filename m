Received: (qmail 9337 invoked by uid 550); 23 Jun 2023 12:14:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9313 invoked from network); 23 Jun 2023 12:14:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1687522444; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=XiUa/e9HhvSZjODS5vVerO66V1uDw3R20FIMCZ9/TSo=;
	b=0f36wO8swtcs1P9a+SQq+pa8/jixHAYccNjw4Su7uHJyonX2CNYJhcZVKij7HaaApmYQZY
	8gTC4w1Xm8JF9FLzmBJCzHSUARyxq4JGTHyg85L3M22BzSfm9LMsJ3E8N6xQ+DYGReHfSX
	pjXDeK23w+Pw1XC161XcP0Alz5Nbaz8=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1687522444;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=XiUa/e9HhvSZjODS5vVerO66V1uDw3R20FIMCZ9/TSo=;
	b=7VJdD+kLTjKCDUyuqtJpr5ezILSVVGfZgZyE86E+QZWW8MjzQc435x2tZu6jJLKBLABsX4
	wyJPVYzY93E3uPBw==
Date: Fri, 23 Jun 2023 14:14:02 +0200
From: Marcus Meissner <meissner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20230623121400.GV32338@suse.de>
References: <a37bfa30-f7d2-ae37-5af4-e3674af29a7a@oracle.com>
 <20230623121412.25fbf45a.hanno@hboeck.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230623121412.25fbf45a.hanno@hboeck.de>
Organization: SUSE Software Solutions =?iso-8859-1?Q?Ger?=
 =?iso-8859-1?Q?many_GmbH=2C_Frankenstra=DFe_146=2C_90461_Nuernberg=2C_Ger?=
 =?iso-8859-1?Q?many=2C_GF=3A_Ivo_Totev=2C_Andrew_Myers=2C_Andrew_McDonald?=
 =?iso-8859-1?Q?=2C_Martje_Boudien_Moerman=2C_HRB_36809=2C_AG_N=FCrnberg?=
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [oss-security] CVE-2023-31975: memory leak in yasm

On Fri, Jun 23, 2023 at 12:14:12PM +0200, Hanno Böck wrote:
> On Tue, 20 Jun 2023 15:47:28 -0700
> Alan Coopersmith <alan.coopersmith@oracle.com> wrote:
> 
> > https://nvd.nist.gov/vuln/detail/CVE-2023-31975 is freaking out
> > scanners since it claims this bug has a CVSS of 9.8.
> 
> The problem really is that these scanners are assuming something that
> is not true. They assume that data from vulnerability databases is
> reliable.
> 
> These debates are coming on a regular basis, usually either "should
> this thing get a CVE?" and "is this a reasonable CVSS value /
> criticality rating?"
> 
> It's actually quite simple: There are dozends (maybe hundreds?) of CVEs
> issued every day. If you want them to be properly vetted, you'd need to
> have a massive team of security professionals doing that vetting. No
> such team exists, so the only plausible assumption is that CVE and CVSS
> data is by default unreliable.

The CVE ecosystem hierarchy intends to solve this by having the CNAs do
this in the tree fashion.

> If your scanner sounds an alarm because someone added a high CVSS
> rating to a CVE entry, you should assume that the people creating that
> scanner don't know what they are doing.

FYI if you find incorrect NVD scores, you can contact <nvd at nist.gov>
with an engineering level argumentation why the score is not correct
and they will get back to you.

Of course this does not scale.

I contacted them however on this specific CVE now.


For CNA provided CVSS scores contact the CNA of course ( search in
https://www.cve.org/PartnerInformation/ListofPartners , all have email
links)

Ciao, Marcus
