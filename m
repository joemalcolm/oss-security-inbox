X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1252" "Monday" "25" "July" "2016" "10:39:30" "+0200" "Sebastian Krahmer" "krahmer@suse.com" "<20160725083930.GA31840@suse.de>" "37" "Re: [oss-security] Re: [Pkg-shadow-devel] subuid security patches for shadow package" nil nil nil "7" "2016072508:39:30" "[oss-security] Re: [Pkg-shadow-devel] subuid security patches for shadow package" (number mark "U       krahmer@suse Jul 25   37/1252  " thread-indent "\"Re: [oss-security] Re: [Pkg-shadow-devel] subuid security patches for shadow package\"\n") "<20160725080331.GB24232@suse.de>" ("<20160719093915.GA29047@suse.de>" "<20160719125119.GA7146@suse.de>" "<871t2pycqx.fsf_-_@x220.int.ebiederm.org>" "<20160720214852.GA23823@nekral.nekral.homelinux.net>" "<20160725080331.GB24232@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3636 invoked by uid 550); 25 Jul 2016 08:39:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3610 invoked from network); 25 Jul 2016 08:39:42 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Mon, 25 Jul 2016 10:39:30 +0200
From: Sebastian Krahmer <krahmer@suse.com>
To: "Eric W. Biederman" <ebiederm@xmission.com>,
	oss-security@lists.openwall.com,
	pkg-shadow-devel@lists.alioth.debian.org
Message-ID: <20160725083930.GA31840@suse.de>
References: <20160719093915.GA29047@suse.de>
 <20160719125119.GA7146@suse.de>
 <871t2pycqx.fsf_-_@x220.int.ebiederm.org>
 <20160720214852.GA23823@nekral.nekral.homelinux.net>
 <20160725080331.GB24232@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20160725080331.GB24232@suse.de>
Organization: SUSE Linux GmbH, GF: Felix =?utf-8?Q?Imend?=
 =?utf-8?Q?=F6rffer?= =?utf-8?Q?=2C?= Jane Smithard, Graham Norton, HRB 21284
 (AG Nuernberg)
User-Agent: Outlook
Subject: Re: [oss-security] Re: [Pkg-shadow-devel] subuid security patches
 for shadow package

On Mon, Jul 25, 2016 at 10:03:31AM +0200, Sebastian Krahmer wrote:
> On Wed, Jul 20, 2016 at 11:48:52PM +0200, Nicolas François wrote:
> > Hi,
> > 
> > The first point looks like a non issue to me.
> > 
> > getlogin() is used to differentiate users with the same UID.
> > The result of getlogin() is checked: if it returns a username that do not
> > have the UID returned by getuid(), it will be ignored.
> > 
> > 
> > Best Regards,
> > -- 
> > Nekral
> 
> I agree that its not a severe issue. But its dubious code at best.
> I couldnt even imagine someone would have usernames with different UID's?
> Maybe such configs should not be encouraged and potential issues with
> that discussed.
> 
> My understanding of secure coding is that getlogin() should not
> be trusted. Having same username with multiple UIDs is also to be avoided
> IMHO, since its asking for trouble (I dont know if thats some requirement
> of LSB or POSIX or so?)

Err, sorry. Shared UID, different name (the other way around, thanks Alex).
But then you are open to GID hopping attacks (as also previously
pointed out) since you actually _do_ rely on getlogin() trust.

Sebastian

-- 

~ perl self.pl
~ $_='print"\$_=\47$_\47;eval"';eval
~ krahmer@suse.com - SuSE Security Team

