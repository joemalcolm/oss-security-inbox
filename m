X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["345" "Tuesday" "12" "June" "2018" "09:47:10" "-0600" "Todd C. Miller" "Todd.Miller@sudo.ws" "<40b16e14fcb3e3bf@sudo.ws>" "11" "Re: [oss-security] Are `su user' and/or `sudo -u user sh' considered dangerous?" "^Date:" nil nil "6" "2018061215:47:10" "[oss-security] Are `su user' and/or `sudo -u user sh' considered dangerous?" (number mark "        Todd.Miller@ Jun 12   11/345   " thread-indent "\"Re: [oss-security] Are `su user' and/or `sudo -u user sh' considered dangerous?\"\n") "<KBGc1jApJZIJ7ISv_bB8MS1GLVaDWKb2J89dL8hnV0DlCJyVQ2f0VYI0-JpMbF4B9o5uHNn6ZTLlYLpseEup2hOfJ17rofaARO-joZhPOl4=@protonmail.ch>" ("<20180612095613.GC1073@sivokote.iziade.m$>" "<20180612113836.6flipg4zlq4fw4ue@jwilk.net>" "<KBGc1jApJZIJ7ISv_bB8MS1GLVaDWKb2J89dL8hnV0DlCJyVQ2f0VYI0-JpMbF4B9o5uHNn6ZTLlYLpseEup2hOfJ17rofaARO-joZhPOl4=@protonmail.ch>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9523 invoked by uid 550); 12 Jun 2018 15:48:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7751 invoked from network); 12 Jun 2018 15:47:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=sudo.ws; h=from:to
	:subject:in-reply-to:references:mime-version:content-type
	:content-id:date:message-id; s=selector1; bh=/ygw/lfKlwYMnHMvGkg
	pWSgSsNT4LN01ipHH+kDc6TQ=; b=hEe6XRL+25J2FFvsGgM+pNXmdT9WBaj5TAV
	SvRFeT8/PyhT4CSxqxJkHa/rzgIZaKhDBOU6H/+13G4K+vu1xaslIzjP8MOarv6h
	cXE35Tw0FxVC9hjV5WyBuVq6J8O+NGsyuuMEt0jkHT59iHHn53Np1ROymiaU+JT9
	S2FbIenQ=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=sudo.ws; h=from:to:subject
	:in-reply-to:references:mime-version:content-type:content-id
	:date:message-id; q=dns; s=selector1; b=IrgWimCHGxbWeEDdyhDG5txP
	UejLPadZGRQwDz/NRIjcGWeZAS6jnbuW2f628hgWWmiDSEWZUFFiuxv+2Jo757WX
	YGZJQwKGMJAyaEb0e8xTMqb9XRj1KbKgccEOoPRI2F+D3SsdyafaNVORK/g7yI4O
	Fhe9DybNUSB2IX82hjs=
In-reply-to: Your message of "Tue, 12 Jun 2018 11:25:45 -0400."
             <KBGc1jApJZIJ7ISv_bB8MS1GLVaDWKb2J89dL8hnV0DlCJyVQ2f0VYI0-JpMbF4B9o5uHNn6ZTLlYLpseEup2hOfJ17rofaARO-joZhPOl4=@protonmail.ch>
References: <20180612095613.GC1073@sivokote.iziade.m$> <20180612113836.6flipg4zlq4fw4ue@jwilk.net> <KBGc1jApJZIJ7ISv_bB8MS1GLVaDWKb2J89dL8hnV0DlCJyVQ2f0VYI0-JpMbF4B9o5uHNn6ZTLlYLpseEup2hOfJ17rofaARO-joZhPOl4=@protonmail.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <2651.1528818430.1@xerxes.sudo.ws>
Message-Id: <40b16e14fcb3e3bf@sudo.ws>
Date: Tue, 12 Jun 2018 09:47:10 -0600
From: "Todd C. Miller" <Todd.Miller@sudo.ws>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Are `su user' and/or `sudo -u user sh' considered dangerous?
To: oss-security@lists.openwall.com

On Tue, 12 Jun 2018 11:25:45 -0400, Jordan Glover wrote:

> > For sudo, there's the "use_pty" flag. (It's not enabled by default.)
>
> Why this isn't default? Where's the catch?

Up until recently there were issues with background processes being
killed when the pty went away.  Using a pty will become the default
in a future release.

 - todd
