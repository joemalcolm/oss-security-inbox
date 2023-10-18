Received: (qmail 21906 invoked by uid 550); 18 Oct 2023 18:27:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11837 invoked from network); 18 Oct 2023 18:25:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tnetconsulting.net;
	s=2019; t=1697653522;
	bh=GztLf5TVeEMjLipslc64DEwHdVI5iH+HWMu6LWClG08=;
	h=Message-ID:Date:MIME-Version:User-Agent:Subject:Content-Language:
	 To:References:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding:Cc:Content-Disposition:Content-Language:
	 Content-Transfer-Encoding:Content-Type:Date:From:In-Reply-To:
	 Message-ID:MIME-Version:References:Reply-To:Resent-Date:
	 Resent-From:Resent-To:Resent-Cc:Sender:Subject:To:User-Agent;
	b=LLoel+FMQRE6t1gyDCPbJLBR6UbfRJpq6+sUEXsR6VXHz64oLdOklrt1jXVA26tEg
	 AddQMCl55DNVfx0eu2dTKTbBX0wjysl0wNABPg+ycbjwkdiUeGkvNPdq1ppuSCPiZe
	 TWtUYV3Xmzy64iy5TQEqZ9dmnUNomuPI6meJ7vXQ=
Message-ID: <bb8d7948-912c-0c96-6a7e-2f05a4cabfd0@tnetconsulting.net>
Date: Wed, 18 Oct 2023 13:25:21 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: oss-security@lists.openwall.com
References: <e5dc2cc159fa7e7f287e10482366011e.f0e92af0@rotted.prefixed>
From: Grant Taylor <gtaylor@tnetconsulting.net>
In-Reply-To: <e5dc2cc159fa7e7f287e10482366011e.f0e92af0@rotted.prefixed>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] with firefox on X11, any page can pastejack you
 anytime

I have some misgivings about this.

On 10/16/23 7:17 PM, turistu wrote:
> In firefox running on X11, any script from any page can freely write 
> to the primary selection,

I'm largely inclined to say "so what is the problem here?" but I'm 
trying to keep an open mind and understand ~> maybe learn something.

The *primary* /selection/ /buffer/ is updated by simply selecting text 
on the screen.

About the only thing that I can see being a problem is if something 
updates the chosen selection buffer without my knowledge while I'm in 
the middle of doing something using the selection buffer.

*Selection* /buffer/ being a buffer referencing something that is selected.

Remember, the selection buffers; primary and / or secondary, are 
completely independent of the clipboard.

> and that can be easily exploited to run arbitrary code on the user's 
> machine.

I'm not convinced of that.

1st, simply updating the selection buffer doesn't mean that what's in it 
will be used for anything,
2nd, the updated selection buffer must be used in a way that tries to 
execute a command or maliciously alters contents, e.g. swapping 
something of value for something else malicious, say an address to send 
something.

> No user interaction is necessary -- any page able to run javascript 
> can do it ....

The ability to update the selection buffer doesn't extend into the 
ability to cause what's in the selection buffer to be executed.

> This applies to all the versions of mozilla/firefox and their 
> derivatives (seamonkey, etc) ....

It probably applies to a lot more than that.  I suspect that anything 
that can run 3rd party code can do the same thing.

> Sooner or later, when trying to paste something in the terminal with 
> shift-Insert or middle click, you will end up running the command 
> `writeXPrimary()` has injected just between your copy and paste.

I can do the same thing with most shells that you're claiming is a 
Mozilla / Firefox bug:

    while sleep 1; do echo "yes LOL" | xsel -ip; done

Change your sleep duration, what goes into the primary selection buffer, 
tool used to modify the selection buffer, which selection buffer / 
clipboard you monkey with, etc.

I think that this is more a problem with X11 security than it is a 
problem specific to Mozilla / Firefox.

This X11 security issue is well known and has been well known for 
decades.  Anybody / anything that can read / write to your DISPLAY can 
do this.

Maybe the fact that malicious JavaScript can do this is a surprise.  But 
I don't see this as a new issue.

As I said earlier, I'm unconvinced that this is a Mozilla / Firefox 
specific bug, but I'm trying to keep an open mind and understand ~> 
maybe learn something.

As for patching Firefox, that's sort of like closing one vector out of 
the undetermined / infinite number that exist on the system.

Yes, what you're talking about is a problem.  It's also a known problem. 
  What's more is I believe the root of the problem is outside of where 
you have targeted your scrutiny.



-- 
Grant. . . .
unix || die

