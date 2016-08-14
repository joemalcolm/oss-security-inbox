X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["448" "Sunday" "14" "August" "2016" "21:51:58" "+0200" "Greg KH" "greg@kroah.com" "<20160814195158.GA19228@kroah.com>" "14" "Re: [oss-security] CVE-2016-5696: linux kernel - challange ack information leak." "^Date:" nil nil "8" "2016081419:51:58" "[oss-security] CVE-2016-5696: linux kernel - challange ack information leak." (number mark "        greg@kroah.c Aug 14   14/448   " thread-indent "\"Re: [oss-security] CVE-2016-5696: linux kernel - challange ack information leak.\"\n") "<b84b5a3f-9e85-e3f2-fbbd-95dac3a76518@enea.com>" ("<CALJHwhTAvhAB0DPe2m7h1X_uoz9R5adTOpr-YVXUd6pX3WVNyg@mail.gmail.com>" "<b84b5a3f-9e85-e3f2-fbbd-95dac3a76518@enea.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13836 invoked by uid 550); 14 Aug 2016 19:51:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13818 invoked from network); 14 Aug 2016 19:51:58 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-sasl-enc
	:x-sasl-enc; s=smtpout; bh=J57/LWjdCRKk+1gGSxL6DrYU/m4=; b=qiUpB
	nZtOo2Al0zjFXh1QEdASAwmAY4CKD2PNdXGmE+fq8bUdNpi8cPqCzWNkP+uQcyTJ
	7smpb3LtB9biNEGDx/X7j3e1JYMLQTGxMjadFJ8rvyzIpg26BVr6faSZZMJoki3U
	a/xZft0pBNfozOKZqvQ2eb75Y6rA6Y0YZqY/6s=
X-Sasl-enc: XgldCxD8clJu0gfe89NekCw+eSVZLCtOi3KtsUzQSeDN 1471204306
Message-ID: <20160814195158.GA19228@kroah.com>
References: <CALJHwhTAvhAB0DPe2m7h1X_uoz9R5adTOpr-YVXUd6pX3WVNyg@mail.gmail.com>
 <b84b5a3f-9e85-e3f2-fbbd-95dac3a76518@enea.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b84b5a3f-9e85-e3f2-fbbd-95dac3a76518@enea.com>
User-Agent: Mutt/1.6.2 (2016-07-01)
Date: Sun, 14 Aug 2016 21:51:58 +0200
From: Greg KH <greg@kroah.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2016-5696: linux kernel - challange ack
 information leak.
To: oss-security@lists.openwall.com

On Sun, Aug 14, 2016 at 09:36:39PM +0200, Sona Sarmadi wrote:
> Hi all,
> 
> This vulnerability is currently only fixed in mainline kernels (4.7 &
> 4.8). Does anyone know if there is any work ongoing to backport this fix
> to the  older versions?

I just added the fix for this issue to the stable kernel queues and it
will show up in the next stable releases, in about 2 days after it
passes all of the needed review.

Hope this helps,

greg k-h
