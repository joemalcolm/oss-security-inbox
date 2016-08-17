X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["696" "Wednesday" "17" "August" "2016" "17:17:10" "+0200" "Greg KH" "greg@kroah.com" "<20160817151710.GB5876@kroah.com>" "19" "Re: [oss-security] CVE-2016-5696: linux kernel - challange ack information leak." "^Date:" nil nil "8" "2016081715:17:10" "[oss-security] CVE-2016-5696: linux kernel - challange ack information leak." (number mark "        greg@kroah.c Aug 17   19/696   " thread-indent "\"Re: [oss-security] CVE-2016-5696: linux kernel - challange ack information leak.\"\n") "<CAOTQaXEMKvWRH4Aexf3bXzsdx0488TkWmVq2-7+v4Ak7dar7jw@mail.gmail.com>" ("<CALJHwhTAvhAB0DPe2m7h1X_uoz9R5adTOpr-YVXUd6pX3WVNyg@mail.gmail.com>" "<b84b5a3f-9e85-e3f2-fbbd-95dac3a76518@enea.com>" "<20160814195158.GA19228@kroah.com>" "<3230301C09DEF9499B442BBE162C5E48ABE26AE4@SESTOEX04.enea.se>" "<20160815075301.GD6359@kroah.com>" "<8e047f04-5c48-aaa8-0e71-e06a44cb8a2c@enea.com>" "<20160816201908.GB10132@kroah.com>" "<3230301C09DEF9499B442BBE162C5E48ABE280AE@SESTOEX04.enea.se>" "<20160817121621.GA7146@kroah.com>" "<CAOTQaXEMKvWRH4Aexf3bXzsdx0488TkWmVq2-7+v4Ak7dar7jw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3881 invoked by uid 550); 17 Aug 2016 15:17:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3863 invoked from network); 17 Aug 2016 15:17:11 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-sasl-enc
	:x-sasl-enc; s=smtpout; bh=GA6cjLtrLJuGZQJGFxoICZM8c4A=; b=B4zLv
	j0pViULmHw2gB9rwzDeaEb1JquqUwMy5Dn/HTQgrfT7vXyyjuVoqJ7L/hZ78zdK9
	dfNZVhunwla3UFLZUpcTGH6C6iKbqBxF8i/6uZVI1WA7fSoNr9r5pSFnCnY6sMXa
	H/HRmB/nXQSm1a4u+8ODXFASJ1ty2tyxICZ2p4=
X-Sasl-enc: A1EQgNoQXhC5n4XuPcYSaf0ERQStQeksDp7+VeGSFpbM 1471447019
Message-ID: <20160817151710.GB5876@kroah.com>
References: <CALJHwhTAvhAB0DPe2m7h1X_uoz9R5adTOpr-YVXUd6pX3WVNyg@mail.gmail.com>
 <b84b5a3f-9e85-e3f2-fbbd-95dac3a76518@enea.com>
 <20160814195158.GA19228@kroah.com>
 <3230301C09DEF9499B442BBE162C5E48ABE26AE4@SESTOEX04.enea.se>
 <20160815075301.GD6359@kroah.com>
 <8e047f04-5c48-aaa8-0e71-e06a44cb8a2c@enea.com>
 <20160816201908.GB10132@kroah.com>
 <3230301C09DEF9499B442BBE162C5E48ABE280AE@SESTOEX04.enea.se>
 <20160817121621.GA7146@kroah.com>
 <CAOTQaXEMKvWRH4Aexf3bXzsdx0488TkWmVq2-7+v4Ak7dar7jw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOTQaXEMKvWRH4Aexf3bXzsdx0488TkWmVq2-7+v4Ak7dar7jw@mail.gmail.com>
User-Agent: Mutt/1.6.2 (2016-07-01)
Date: Wed, 17 Aug 2016 17:17:10 +0200
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2016-5696: linux kernel - challange ack
 information leak.
To: oss-security@lists.openwall.com

On Wed, Aug 17, 2016 at 05:01:45PM +0200, Gsunde Orangen wrote:
> > > Heh, fair enough.  This fix is now in the kernels that were released
> today
> > > (4.7.1, 4.6.7, 4.4.18, and 3.14.76), hope that helps.
> It seems that Greg keeps on being bothered with questions ;-)
> Here's one more: the relevant Upstream commit
> 75ff39ccc1bd5d3c455b6822ab09e533c551f758
> is referenced in all change logs of yesterday's kernel releases...
> ... Except for: 4.7.1 (https://cdn.kernel.org/pub/
> linux/kernel/v4.x/ChangeLog-4.7.1)
> Did 4.7.1 miss the fix?

No, it was already in 4.7 when it was released:
	$ git describe --contains 75ff39ccc1bd5d3c455b6822ab09e533c551f758
	v4.7~2^2~27

thanks,

greg k-h
