X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["711" "Monday" "15" "August" "2016" "09:53:01" "+0200" "Greg KH" "greg@kroah.com" "<20160815075301.GD6359@kroah.com>" "22" "Re: [oss-security] CVE-2016-5696: linux kernel - challange ack information leak." "^Date:" nil nil "8" "2016081507:53:01" "[oss-security] CVE-2016-5696: linux kernel - challange ack information leak." (number mark "        greg@kroah.c Aug 15   22/711   " thread-indent "\"Re: [oss-security] CVE-2016-5696: linux kernel - challange ack information leak.\"\n") "<3230301C09DEF9499B442BBE162C5E48ABE26AE4@SESTOEX04.enea.se>" ("<CALJHwhTAvhAB0DPe2m7h1X_uoz9R5adTOpr-YVXUd6pX3WVNyg@mail.gmail.com>" "<b84b5a3f-9e85-e3f2-fbbd-95dac3a76518@enea.com>" "<20160814195158.GA19228@kroah.com>" "<3230301C09DEF9499B442BBE162C5E48ABE26AE4@SESTOEX04.enea.se>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26581 invoked by uid 550); 15 Aug 2016 07:53:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26560 invoked from network); 15 Aug 2016 07:53:00 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-sasl-enc
	:x-sasl-enc; s=smtpout; bh=7H+Vz8JjVjlDtE8kj2662rqAURQ=; b=I5g3S
	5opHZSOl/VQClIXMroN4xWyPVLRv7pztftEFzePE+2oRgQ2dIc79hocQQMNDiQQm
	uehiUn/cIXh1a+FvjHhHKVnnsmO3uTfirrHANilti9WnhnuIlNxgVvpN57F6AozG
	NSrXO0V1RsyJDGXtPyxoziPB1fFL6/krMd1SMU=
X-Sasl-enc: FJ9VnMNV0W46EAkiWpk1U24dC+7PtyM6SqprGqWn0NVx 1471247568
Message-ID: <20160815075301.GD6359@kroah.com>
References: <CALJHwhTAvhAB0DPe2m7h1X_uoz9R5adTOpr-YVXUd6pX3WVNyg@mail.gmail.com>
 <b84b5a3f-9e85-e3f2-fbbd-95dac3a76518@enea.com>
 <20160814195158.GA19228@kroah.com>
 <3230301C09DEF9499B442BBE162C5E48ABE26AE4@SESTOEX04.enea.se>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3230301C09DEF9499B442BBE162C5E48ABE26AE4@SESTOEX04.enea.se>
User-Agent: Mutt/1.6.2 (2016-07-01)
Date: Mon, 15 Aug 2016 09:53:01 +0200
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2016-5696: linux kernel - challange ack
 information leak.
To: oss-security@lists.openwall.com

On Mon, Aug 15, 2016 at 06:23:04AM +0000, Sona Sarmadi wrote:
> > > This vulnerability is currently only fixed in mainline kernels (4.7 &
> > > 4.8). Does anyone know if there is any work ongoing to backport this
> > > fix to the  older versions?
> > 
> > I just added the fix for this issue to the stable kernel queues and it will
> > show up in the next stable releases, in about 2 days after it passes all of
> > the needed review.
> > 
> > Hope this helps,
> > 
> > greg k-h
> 
> Great, thanks, this helps :)

You can _always_ just apply the patch to your local tree, there's never
a need to wait for me to get a kernel out.  That's the advantage of
having the source for your systems :)

thanks,

greg k-h
