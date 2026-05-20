Received: (qmail 11507 invoked by uid 550); 20 May 2026 15:07:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15921 invoked from network); 20 May 2026 11:36:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=free.fr;
	s=smtp-20201208; t=1779276954;
	bh=J9Umnrl4IVhey4TkDlybxNWv7l0jra2KxAxtCB73010=;
	h=Date:From:To:Subject:In-Reply-To:References:From;
	b=EY/E2jmniRIXxRPPSVZS+ncU4MWYYy+zEQx0Abq5Pnus4z6HFyOBLBLBjlEzImpjU
	 G4nFFawXbk6l/5v5yK0AL++EgXFwgxVjNLDe5WxK5CWQE/k1Oewf6QI/pu2H4vWdtp
	 7lFNG32whjwcjAdkacRVlTCuh/lRdslsk1sELB626FuYQOJdr2lG8rLwt67yciTy3K
	 4B9frj8TVjowJecGHrwiVxDA2O4gqZn+Q80a8nrOi7c0Di9ogJXU54gHPpZqno2iB4
	 Tmf3/oBfrEDxC2ZHk/wJEoIsKSF50ta1wd8Fy6gC+puJdPyFSybLi92nWHWZHZjZRS
	 1boqQkYN4Fa0g==
MIME-Version: 1.0
Date: Wed, 20 May 2026 13:35:54 +0200
From: gabriel.corona@free.fr
To: oss-security@lists.openwall.com
In-Reply-To: <20260519193042.3feb8374@gmail.com>
References: <20260518220116.170677b2@riseup.net>
 <agw1YBkrV6kcsdYr@definition.pseudorandom.co.uk>
 <20260519193042.3feb8374@gmail.com>
User-Agent: Webmail Free/1.6.14
Message-ID: <d59c163cb176305c312601412b76b765@free.fr>
X-Sender: gabriel.corona@free.fr
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] On the issue of MIME handlers that execute
 arbitrary code (e.g. Wine)

> I wonder if it would be worth proposing a change to whatever system
> component handles opening files (probably something in Glib, or
> xdg-utils, haven't researched that deeply yet), so that handlers cannot
> be registered for certain "dangerous" file types (i.e. ELF/PE/Mach-O
> executables, scripts in various languages, etc.)? The only real
> downside I can see to that is the inability to text editors to
> register themselves as handlers for script MIME types, and in those
> instances, the editor can register itself as the handler for another
> applicable, more generic MIME type (i.e. text/plain), then change its
> behavior based on the more detailed MIME type of the file after it
> opens it.

Applications which actually want to associate file with arbitrary code 
execution
(or other potentially malicious actions), can register a wrapper :

Exec=wine-prompt %F
# Alternatively: Exec=wine --prompt-user %F

This wrapper can warn of the security implications and ask for 
confirmation,
similar to how most file manager now ask for confirmation before 
executing
a native executable or a .desktop file.

The .desktop format could be extended with an additional entry such as:

#  bike-shed name:
Unsafe-Exec=wine %F

A caller not implementing this extension, would ignore this line and 
call the
prompt wrapper.

A caller implementing this extension, could ask for confirmation itself
and then call the unsafe command.

Gabriel
