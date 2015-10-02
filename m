X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["445" "Friday" "2" "October" "2015" "16:19:15" "+0200" "Gilles Chehade" "gilles@poolp.org" "<20151002141915.GB15335@poolp.org>" "15" "Re: [oss-security] CVE requests: Critical vulnerabilities in OpenSMTPD" nil nil nil "10" "2015100214:19:15" "[oss-security] CVE requests: Critical vulnerabilities in OpenSMTPD" (number mark "        gilles@poolp Oct  2   15/445   " thread-indent "\"Re: [oss-security] CVE requests: Critical vulnerabilities in OpenSMTPD\"\n") "<CAHmME9parQruG9aJroLU82J4sX0yodYcPPRks+5XWF4tD2nWpg@mail.gmail.com>" ("<CAHmME9o2B_FcO57rhDSKg7x-6aiVscP-XHgz3SXnf1GYwUvp7g@mail.gmail.com>" "<A43D5151-BE22-4D14-9336-73F9DE2785C3@alchemistowl.org>" "<CAHmME9parQruG9aJroLU82J4sX0yodYcPPRks+5XWF4tD2nWpg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18427 invoked by uid 550); 2 Oct 2015 14:19:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18403 invoked from network); 2 Oct 2015 14:19:26 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=poolp.org; h=date:from:to
	:cc:subject:message-id:references:mime-version:content-type
	:in-reply-to; s=opensmtpd; bh=vXMSzSXHQzkgfhrOECWtZVCFe2A=; b=I2
	kLUe7gjOOcctwbfKx9FB6Is5Jc5xcP6+YfPg4KvwjNhBeIb0qWObvgncH+5THe4x
	xugDwmP8VaWQwHiFIqfHRUsEFOkt6giZQwuD6AoZpXNI8ASjekzCi362pL/JHBWx
	J89tpPzldiI580JFyNMlggnjhVqFONR6SXsQKdO8E=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=poolp.org; h=date:from:to:cc
	:subject:message-id:references:mime-version:content-type
	:in-reply-to; q=dns; s=opensmtpd; b=DC62rTh3JVK7wX4keIEJmUHLA1M2
	HEW2lBvImwqjdDJfaM5hNH7ZCPfsftK701hrVFqOGvmpS0ZTyZ+HPICuq/B5EVGV
	HdRyApuKpsL47Nb+2h1Qa57iBWv9nd0EgsGsnzNTZKayB3lXdEipJ6HzZEhlWvN4
	JxZPog8Jhr8x3aE=
Message-ID: <20151002141915.GB15335@poolp.org>
References: <CAHmME9o2B_FcO57rhDSKg7x-6aiVscP-XHgz3SXnf1GYwUvp7g@mail.gmail.com>
 <A43D5151-BE22-4D14-9336-73F9DE2785C3@alchemistowl.org>
 <CAHmME9parQruG9aJroLU82J4sX0yodYcPPRks+5XWF4tD2nWpg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAHmME9parQruG9aJroLU82J4sX0yodYcPPRks+5XWF4tD2nWpg@mail.gmail.com>
X-Operating-System: OpenBSD poolp.org 5.7 GENERIC.MP
X-Flattr: poolp
X-Twitter: poolpOrg
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: oss-security <oss-security@lists.openwall.com>,
	misc <misc@opensmtpd.org>
Date: Fri, 2 Oct 2015 16:19:15 +0200
From: Gilles Chehade <gilles@poolp.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE requests: Critical vulnerabilities in
 OpenSMTPD
To: "Jason A. Donenfeld" <Jason@zx2c4.com>

On Fri, Oct 02, 2015 at 03:29:31PM +0200, Jason A. Donenfeld wrote:
> I haven't looked at these commits yet but:
> 
> If a local user sends a message to a remote address, does this
> outgoing connection open up this remote vulnerability vector?
> 

It would still require a local user to do it and it would still only
affect an unprivileged process.


-- 
Gilles Chehade

https://www.poolp.org                                          @poolpOrg
