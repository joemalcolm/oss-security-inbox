Received: (qmail 29858 invoked by uid 550); 29 Aug 2023 12:06:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1531 invoked from network); 29 Aug 2023 08:46:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
	t=1693298769; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=75hUwRG0pJwOHrkkTuwvJBCJ7Ft5hmgzEuTnmdG0wdg=;
	b=MScyU81oiQWsNJ0F+L7++Y502+P7k+SEE1I14CZ0RLGH6WvgVTbCVhOQPhjKHyzTQH88pP
	+9EqZjSG7sk4OL7DBlm1UnDZPy90UyR344bJt7fwo+WdiVKBVKWd2vrzA9qMncGnmY/M3h
	cipa/GS2e2P7aiRcaiTNTEofnGpb/7k=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
	s=susede2_ed25519; t=1693298769;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=75hUwRG0pJwOHrkkTuwvJBCJ7Ft5hmgzEuTnmdG0wdg=;
	b=cbJWaEHZyfc+QTHUeEaR+eXKRIxrs0Y278qXLXxXHP49EV8TIbn4+sKu6MgTcyCsBJAknl
	fgY+OTfJEMCSwTCg==
Date: Tue, 29 Aug 2023 10:46:09 +0200 (CEST)
From: Miroslav Benes <mbenes@suse.cz>
To: Donald Buczek <buczek@molgen.mpg.de>
cc: Solar Designer <solar@openwall.com>, oss-security@lists.openwall.com, 
    Vegard Nossum <vegard.nossum@oracle.com>, Jiri Kosina <jkosina@suse.cz>, 
    ksummit@lists.linux.dev
In-Reply-To: <12aa367f-9934-7450-1016-fe303c72cc5a@molgen.mpg.de>
Message-ID: <alpine.LSU.2.21.2308291043590.21665@pobox.suse.cz>
References: <nycvar.YFH.7.76.2308150927190.14207@cbobk.fhfr.pm> <658e739b-c164-c360-d6a3-eb4fb15ae02e@oracle.com> <20230816152621.GA8252@openwall.com> <12aa367f-9934-7450-1016-fe303c72cc5a@molgen.mpg.de>
User-Agent: Alpine 2.21 (LSU 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Subject: [oss-security] Re: Re: [MAINTAINERS SUMMIT] Handling of embargoed security issues
 -- security@korg vs. linux-distros@

[ apologies for a slight off topic ]

Hi,

On Fri, 25 Aug 2023, Donald Buczek wrote:

> We go a long way to avoid rebooting. This might be as easy as disabling 
> unused dynamic modules by just removing the .ko files from userspace, 
> but sometimes we even convert an upstream fix into a loadable module 
> which uses ftrace to replace or wrap the buggy functions in the running 
> systems. A "reboot party" would only be a measure of last resort.

the kernel live patching infrastructure might help you with this. See 
Documentation/livepatch/ and samples/livepatch/ in the kernel tree.

Regards,
Miroslav
