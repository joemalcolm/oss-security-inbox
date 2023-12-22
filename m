Received: (qmail 31756 invoked by uid 550); 22 Dec 2023 22:33:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30413 invoked from network); 22 Dec 2023 18:43:08 -0000
Authentication-Results: mail.gathman.org; iprev=pass policy.iprev="2001:470:8:809::1010" (mail.gathman.org); auth=pass (CRAM-MD5 sslbits=256) smtp.auth=stuart
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gathman.org; 
 i=@gathman.org; q=dns/txt; s=default; t=1703270580; 
 h=date : from : to : subject : in-reply-to : message-id : 
 references : mime-version : content-type : date : from : 
 subject; bh=ReP1aSWk20XysLeGfrDQzu1GC9TPnO9TASe7dS9TLj8=; 
 b=HWf6D+4oQ6GDEZMAAn3zhUradXH2s+islc6vil9A+WpLK8OZJUcQdtLp
 unLiLn+BWK8nraLt+8f4wFl+tYraypbOx80ZZU5Tsl9c0hWAr6WcXnPYU3
 qZJAq740b1hVplnWqQgSRvAO1uxv6QYvZzkZqOmTwuxzUoEC9tl0/KGq4=
Date: Fri, 22 Dec 2023 13:42:49 -0500 (EST)
From: Stuart D Gathman <stuart@gathman.org>
To: oss-security@lists.openwall.com
In-Reply-To: <CAN_LGv2BhL40uhEk0TdYaYmd9zodSS-UJjWH5xSdLZWSoDFUMw@mail.gmail.com>
Message-ID: <72b7513c-c471-1c8f-cbdb-574536d18ec4@gathman.org>
References: <20231221143630.GD14101@suse.de> <20231221144656.GA40693@veps.esmtp.org> <20231222104647.GH14101@suse.de> <ZYVufT0sq16Z-M43@symphytum.spacehopper.org> <20231222121134.GI14101@suse.de> <20231222150438.GA13989@unix-ag.uni-kl.de>
 <CAHjsZGbiZYGug2L04iZ+VEmMg-pdfKyKOGdcSeCLnsZYd0Vm2Q@mail.gmail.com> <CAN_LGv2BhL40uhEk0TdYaYmd9zodSS-UJjWH5xSdLZWSoDFUMw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
Subject: Re: [oss-security] Re: New SMTP smuggling attack

On Sat, 23 Dec 2023, Alexander E. Patrakov wrote:

>> I'm trying to make sense of it - where's the compromise of the
>> Confidentiality, Integrity or Availability of the affected mail
>> servers?
>>
>
> The integrity of the sender's identity, as a minimum, is compromised
> here. Normally, when relaying mail, servers add a "Received:" header
> that specifies where they received the connection from. This allows
> tracking down the true origin of the message. The smuggled message
> does not have such a header and thus misrepresents the vulnerable
> relay as the ultimate sender. Additionally, if the relay has
> destination-based deny lists that deny some but not all addresses on
> the destination domain, they are sidestepped.

This is certainly a bug, but the currently reality is that
authentication involves SPF, DKIM, and other schemes - and does not
solely rely on headers.  So can this "delete some headers" attack
compromise these authentication schemes?

I don't have a PoC, but I think so.  If the original sender can indeed
convince the victim to relay their message, the victim will sign it
using their DKIM key - missing header fields and all.  Relays will
typically alter the MAIL FROM so that SPF authentication passes.

But, that first "If" is the kicker.  Any mail admin these days is very
careful about who can relay through their server.  If they are relaying
at all, it is for a customer, partner, or buddy.
