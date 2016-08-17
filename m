X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1120" "Wednesday" "17" "August" "2016" "14:16:21" "+0200" "Greg KH" "greg@kroah.com" "<20160817121621.GA7146@kroah.com>" "26" "Re: [oss-security] CVE-2016-5696: linux kernel - challange ack information leak." "^Date:" nil nil "8" "2016081712:16:21" "[oss-security] CVE-2016-5696: linux kernel - challange ack information leak." (number mark "        greg@kroah.c Aug 17   26/1120  " thread-indent "\"Re: [oss-security] CVE-2016-5696: linux kernel - challange ack information leak.\"\n") "<3230301C09DEF9499B442BBE162C5E48ABE280AE@SESTOEX04.enea.se>" ("<CALJHwhTAvhAB0DPe2m7h1X_uoz9R5adTOpr-YVXUd6pX3WVNyg@mail.gmail.com>" "<b84b5a3f-9e85-e3f2-fbbd-95dac3a76518@enea.com>" "<20160814195158.GA19228@kroah.com>" "<3230301C09DEF9499B442BBE162C5E48ABE26AE4@SESTOEX04.enea.se>" "<20160815075301.GD6359@kroah.com>" "<8e047f04-5c48-aaa8-0e71-e06a44cb8a2c@enea.com>" "<20160816201908.GB10132@kroah.com>" "<3230301C09DEF9499B442BBE162C5E48ABE280AE@SESTOEX04.enea.se>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5717 invoked by uid 550); 17 Aug 2016 12:16:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5699 invoked from network); 17 Aug 2016 12:16:24 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-sasl-enc
	:x-sasl-enc; s=smtpout; bh=KxSnS6mzggIpZI7gefE8GkQOMPI=; b=Dsibs
	yKQNsfVwLIZgRSyGXzw1FzCmRWh1SGfF41DfM0uw4gTMj0yVxqcvkwIBbdUbDu2C
	izsxC+q53OD6jtPNY3jtctjoJsl56W8D/2xjra5poqSyENOvdQS/+bREy8qm1qun
	LHVMBKOTlM5ygXR29GkZMd5FeLcCEY40D5hASg=
X-Sasl-enc: JRB1X4wxkpQLFjxhjBA6hrWTbEE5NIw8GgCOucWI72EW 1471436170
Message-ID: <20160817121621.GA7146@kroah.com>
References: <CALJHwhTAvhAB0DPe2m7h1X_uoz9R5adTOpr-YVXUd6pX3WVNyg@mail.gmail.com>
 <b84b5a3f-9e85-e3f2-fbbd-95dac3a76518@enea.com>
 <20160814195158.GA19228@kroah.com>
 <3230301C09DEF9499B442BBE162C5E48ABE26AE4@SESTOEX04.enea.se>
 <20160815075301.GD6359@kroah.com>
 <8e047f04-5c48-aaa8-0e71-e06a44cb8a2c@enea.com>
 <20160816201908.GB10132@kroah.com>
 <3230301C09DEF9499B442BBE162C5E48ABE280AE@SESTOEX04.enea.se>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3230301C09DEF9499B442BBE162C5E48ABE280AE@SESTOEX04.enea.se>
User-Agent: Mutt/1.6.2 (2016-07-01)
Date: Wed, 17 Aug 2016 14:16:21 +0200
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2016-5696: linux kernel - challange ack
 information leak.
To: oss-security@lists.openwall.com

On Wed, Aug 17, 2016 at 11:54:56AM +0000, Sona Sarmadi wrote:
> 
> > > > You can _always_ just apply the patch to your local tree, there's
> > > > never a need to wait for me to get a kernel out.  That's the
> > > > advantage of having the source for your systems :)
> > > Yes, we can do that but sometimes the patches for newer kernels don't
> > > apply cleanly on older versions.
> > > There is always a risk that our home grown patches have undesired side
> > > effects. We prefer your sign of approval on patches for older kernels
> > > :)
> > 
> > Heh, fair enough.  This fix is now in the kernels that were released today
> > (4.7.1, 4.6.7, 4.4.18, and 3.14.76), hope that helps.
> > 
> > greg k-h
> 
> Thanks a lot Greg, yes this helps :) I could apply  patch from linux-3.14.y branch 
> to linux-3.12.y as well (the code looks similar). 

Note, I got the patch a bit wrong, it's not as fast as it could be,
here's an update to put on top of the one you took from 3.14.y:
	https://git.kernel.org/cgit/linux/kernel/git/stable/stable-queue.git/commit/?id=e09bea58ec0552dbbf71fb22bf7a46da9a288fc8

thanks,

greg k-h
