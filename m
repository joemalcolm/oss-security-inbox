X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["935" "Monday" "27" "April" "2015" "21:34:28" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20150427193428.GA14638@eldamar.local>" "28" "Re: [oss-security] WordPress 4.2.1 security  update - CVE please" nil nil nil "4" "2015042719:34:28" "[oss-security] WordPress 4.2.1 security update - CVE please" (number mark "        carnil@debia Apr 27   28/935   " thread-indent "\"Re: [oss-security] WordPress 4.2.1 security  update - CVE please\"\n") "<20150427192901.GA20909@kronk.local>" ("<553E845E.4070503@redhat.com>" "<20150427190844.GA10378@eldamar.local>" "<20150427192901.GA20909@kronk.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3539 invoked by uid 550); 27 Apr 2015 19:34:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3515 invoked from network); 27 Apr 2015 19:34:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=qD/gH0lroVkdQMBN+Rkzz0Po7nP5fjcf3mD05OEwDIs=;
        b=qgCImYFtJavF36lli0FQ6wFcoxt9n4LIkvpl86aoLaARYrDMtyXNCXpSip4s0BLxC7
         U1/1q6H6xpd0YQozfTLwfvsSOtQ5Gq5B9bzqVMQYMJVdDjd2IqVifq7yPT+uzp96qrAa
         520GVmmoQ41dc5XmnzbctUiXC0KizQV0DMrMHW1m+gX6zDkWKDLKTiJE84KMbrndEo4N
         5C5CQwI1UcjHZkxnyzpqPNEdg1Pi3xlulv5qPsrHChBYU6OhVu4C3r6NGpQ+j0CYyWp0
         CR6V4mGACdPbHIC3XaC3OTLM2dq85huLycwZHk07bkAQHAKJuVCOgv/fpALy3EHZb5GA
         /oqw==
X-Received: by 10.180.74.208 with SMTP id w16mr23450706wiv.31.1430163270009;
        Mon, 27 Apr 2015 12:34:30 -0700 (PDT)
Message-ID: <20150427193428.GA14638@eldamar.local>
References: <553E845E.4070503@redhat.com>
 <20150427190844.GA10378@eldamar.local>
 <20150427192901.GA20909@kronk.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150427192901.GA20909@kronk.local>
User-Agent: Mutt/1.5.23 (2014-03-12)
Date: Mon, 27 Apr 2015 21:34:28 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: Re: [oss-security] WordPress 4.2.1 security  update - CVE please
To: oss-security@lists.openwall.com, nacin@wordpress.org,
	Assign a CVE Identifier <cve-assign@mitre.org>

Hi,

On Mon, Apr 27, 2015 at 09:29:01PM +0200, Alessandro Ghedini wrote:
> On Mon, Apr 27, 2015 at 09:08:44PM +0200, Salvatore Bonaccorso wrote:
> > Hi Kurt,
> > 
> > On Mon, Apr 27, 2015 at 12:47:58PM -0600, Kurt Seifried wrote:
> > > http://codex.wordpress.org/Version_4.2.1
> > > 
> > > Version 4.2.1 addressed a security issue.	For more information, see the
> > > release notes.
> > > 
> > > From the announcement post, WordPress 4.2.1 fixes a critical cross-site
> > > scripting (XSS) vulnerability, which could enable commenters to
> > > compromise a site.
> > 
> > Had requested CVEs for this in
> > http://www.openwall.com/lists/oss-security/2015/04/26/2 .
> 
> Note that this and your request are about two different wordpress releases (at
> first I got confused too by the version numbers, 4.1.2 != 4.2.1).

Yes you right, sorry for the confusion (I mixed up 4.1.2 and 4.2.1).

Thanks for the correction.

Regards,
Salvatore
