Received: (qmail 27702 invoked by uid 550); 18 Oct 2023 22:36:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21971 invoked from network); 18 Oct 2023 22:31:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tnetconsulting.net;
	s=2019; t=1697668268;
	bh=sntesYltJPKbkGGmkxAw8guMVQnG8G75Q14nCrPXvIM=;
	h=Message-ID:Date:MIME-Version:User-Agent:Subject:Content-Language:
	 To:References:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding:Cc:Content-Disposition:Content-Language:
	 Content-Transfer-Encoding:Content-Type:Date:From:In-Reply-To:
	 Message-ID:MIME-Version:References:Reply-To:Resent-Date:
	 Resent-From:Resent-To:Resent-Cc:Sender:Subject:To:User-Agent;
	b=fl1GCFCQl0R8B4OT85Ank7V9fTY/eJJRmOdsEy7/ht9SKXpCmitoE3SeF0AziJd+S
	 EUMuf4Q7oso9r9WApyU7AYONtE6hnaJRFX02Cd2zB7+hJlqsoClFog0xEWxH0LdjoS
	 Ub//NIx+gwXZCWLZ/8aQBFubpGPQyUkE/45LKHhg=
Message-ID: <02db51d7-974a-53cf-d018-8982bed87da3@tnetconsulting.net>
Date: Wed, 18 Oct 2023 17:31:07 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: oss-security@lists.openwall.com
References: <e5dc2cc159fa7e7f287e10482366011e.f0e92af0@rotted.prefixed>
 <bb8d7948-912c-0c96-6a7e-2f05a4cabfd0@tnetconsulting.net>
 <693e917eaca0983293396d084c7cf2f44525a7a5.camel@orlitzky.com>
From: Grant Taylor <gtaylor@tnetconsulting.net>
In-Reply-To: <693e917eaca0983293396d084c7cf2f44525a7a5.camel@orlitzky.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] with firefox on X11, any page can pastejack you
 anytime

On 10/18/23 2:30 PM, Michael Orlitzky wrote:
> That's the crux of it but I don't think it frees Firefox from 
> responsibility.

Please elaborate on what Firefox's responsibility is here?

> Despite the premise being contrary to common sense and fifty years 
> of evidence, Firefox promises to sandbox all of the bad things that 
> untrusted third-party code might do to you.

So perhaps Firefox needs to change their statement / stance.  Much like 
Google Chrome got sued over private browsing mode not preventing web 
servers of pages your visiting retaining logs.

> Are there any other programs that run third-party code by default 
> and are not considered vulnerabilities?

I'm sure there are many things that run third-party code that people are 
not aware are vulnerable.  Email clients like Evolution come to mind.  I 
would be shocked if OpenOffice / LibreOffice probably also qualify as 
programs on *nix systems that have the possibility of unexpectedly 
modifying the clipboard / selection buffers*.

I saw an interesting thread -- I think on the Zsh mailing list -- 
talking about protecting end users from unexpected things that make 
sense in hindsight.  E.g. shell globing expanding `*` into all files in 
the directory, including files with `-` at the start of their name and 
potentially if not likely altering the behavior of the command, probably 
in an undesirable way.

I have to wonder how far programs / their programmers must go to protect 
users from themself.

Where does the program's / programmer's responsibility stop and the 
users responsibility start?

Aside:  The thread in question brought up some interesting idea, 
including altering how things that start with unsafe characters -- 
though I wonder why not all files -- with `./` so the `-bob` file 
becomes `./-bob` when expanded.  --  I wondered about prefixing globing 
with `--` which is the de-facto don't process anything after this as a 
command line flag.

*To those who would complain about my use of the term "buffer" ... I 
agree that the primary and secondary selection $TERM doesn't contain the 
selected data, rather pointer to the program containing the data.  But 
there is $SOMETHING that holds that information about where the 
selection is, a pointer of sorts.  I'm taking the liberty of using the 
term "buffer" to refer to this location holding the pointer to the 
information.  --  The clipboard is different and will retain data after 
the program that is the source of the data terminates, unlike the 
primary / secondary selection.



-- 
Grant. . . .
unix || die

