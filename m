X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1218" "Tuesday" "16" "August" "2016" "22:19:08" "+0200" "Greg KH" "greg@kroah.com" "<20160816201908.GB10132@kroah.com>" "28" "Re: [oss-security] CVE-2016-5696: linux kernel - challange ack information leak." "^Date:" nil nil "8" "2016081620:19:08" "[oss-security] CVE-2016-5696: linux kernel - challange ack information leak." (number mark "        greg@kroah.c Aug 16   28/1218  " thread-indent "\"Re: [oss-security] CVE-2016-5696: linux kernel - challange ack information leak.\"\n") "<8e047f04-5c48-aaa8-0e71-e06a44cb8a2c@enea.com>" ("<CALJHwhTAvhAB0DPe2m7h1X_uoz9R5adTOpr-YVXUd6pX3WVNyg@mail.gmail.com>" "<b84b5a3f-9e85-e3f2-fbbd-95dac3a76518@enea.com>" "<20160814195158.GA19228@kroah.com>" "<3230301C09DEF9499B442BBE162C5E48ABE26AE4@SESTOEX04.enea.se>" "<20160815075301.GD6359@kroah.com>" "<8e047f04-5c48-aaa8-0e71-e06a44cb8a2c@enea.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30595 invoked by uid 550); 16 Aug 2016 20:19:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30573 invoked from network); 16 Aug 2016 20:19:10 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-sasl-enc
	:x-sasl-enc; s=smtpout; bh=b4CpaaycNta3PEUVOFO+Tm5dNeE=; b=BOOS3
	rjbxcgLFbx51aGVKHF7IGfkjotb+27Srv4xKGOU79X7JrlBmheRS974o1tYAsHIl
	pO80kXpCvTD1gGSf8mz8iXXA45+qMjtyjsRI+lPXxY0t4LYftNbCxh/jMqtF6hld
	2JIuJ6b+Ga0MQgnv6Xa+WWxaqot3wjJppw50IA=
X-Sasl-enc: 2wWGtzt2Kq0RKC3SjCRmTyKzQo8eaC96Pvqi1H732qut 1471378737
Message-ID: <20160816201908.GB10132@kroah.com>
References: <CALJHwhTAvhAB0DPe2m7h1X_uoz9R5adTOpr-YVXUd6pX3WVNyg@mail.gmail.com>
 <b84b5a3f-9e85-e3f2-fbbd-95dac3a76518@enea.com>
 <20160814195158.GA19228@kroah.com>
 <3230301C09DEF9499B442BBE162C5E48ABE26AE4@SESTOEX04.enea.se>
 <20160815075301.GD6359@kroah.com>
 <8e047f04-5c48-aaa8-0e71-e06a44cb8a2c@enea.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8e047f04-5c48-aaa8-0e71-e06a44cb8a2c@enea.com>
User-Agent: Mutt/1.6.2 (2016-07-01)
Date: Tue, 16 Aug 2016 22:19:08 +0200
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2016-5696: linux kernel - challange ack
 information leak.
To: oss-security@lists.openwall.com

On Tue, Aug 16, 2016 at 08:15:49PM +0200, Sona Sarmadi wrote:
> 
> 
> On 2016-08-15 09:53, Greg KH wrote:
> > On Mon, Aug 15, 2016 at 06:23:04AM +0000, Sona Sarmadi wrote:
> >>>> This vulnerability is currently only fixed in mainline kernels (4.7 &
> >>>> 4.8). Does anyone know if there is any work ongoing to backport this
> >>>> fix to the  older versions?
> >>> I just added the fix for this issue to the stable kernel queues and it will
> >>> show up in the next stable releases, in about 2 days after it passes all of
> >>> the needed review.
> >>>
> >>> Hope this helps,
> >>>
> >>> greg k-h
> >> Great, thanks, this helps :)
> > You can _always_ just apply the patch to your local tree, there's never
> > a need to wait for me to get a kernel out.  That's the advantage of
> > having the source for your systems :)
> Yes, we can do that but sometimes the patches for newer kernels don't
> apply cleanly on older versions.
> There is always a risk that our home grown patches have undesired side
> effects. We prefer your sign of approval on patches for older kernels :)

Heh, fair enough.  This fix is now in the kernels that were released
today (4.7.1, 4.6.7, 4.4.18, and 3.14.76), hope that helps.

greg k-h
