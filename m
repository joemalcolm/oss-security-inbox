Received: (qmail 25919 invoked by uid 550); 28 Sep 2025 00:12:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 21869 invoked from network); 27 Sep 2025 23:57:27 -0000
Authentication-Results: apache.org; auth=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=apache.org; s=mail;
	t=1759017436; bh=wBw00dGxWScqSpUAY8+yi7WfCNB2fgxxJyl3PXBVnJo=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=oUru4pRVtp8iejld/exIPukmV8LXsaGzJNysLLWlO0d2evOltFZcOG/7Qdf+KCGQB
	 cz/mPh8o4XArjjn7QXc/2TkrcnWpqprI0hV8eiJwKtnO0kF7G7N1D34SLkLuoh2Zpc
	 lJ1Plqe4+vMoBn4ozeTM9NFDxb2NYuV3kUPAhcQY66mL2NgPySE/gtJq1BWsWJyYlC
	 j8pjYJxjaLFhrkXr3I0rsL1Y6qWYQcSd9nDGkI6yIrVGJP4udDyA9Tv+JPw+c1GXep
	 XLDTOt6ZM6V4EfxFllS6NBuqx3wfhNfQDk7qr8cLbwFALEHe6s7IKlobaP7jU3OO+T
	 Adr6cGPVJbB6w==
Message-ID: <544cce0b-2734-47cd-9037-dc29a6ed0f73@apache.org>
Date: Sat, 27 Sep 2025 16:57:15 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <CAFf+5ziKPTBLFmDAffWTH+MCnOp5NHhZNM803PsemVLRuQoCaQ@mail.gmail.com>
Content-Language: en-US
From: Michael Jumper <mjumper@apache.org>
In-Reply-To: <CAFf+5ziKPTBLFmDAffWTH+MCnOp5NHhZNM803PsemVLRuQoCaQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] How to do secure coding and create secure software

On 9/27/25 1:30 AM, Amit wrote:
> -----------------------------------------------------------------------
> How to do secure coding and create secure software
> -----------------------------------------------------------------------
> 
> I can do secure coding and no one can hack my code unless the language/OS have
> some issues. You can challenge me on this.
> 
> Ultimately, all software boil down to functions/methods. If functions/methods
> are secure then the whole software is secure.
>
Unfortunately, this is simply a faulty premise. You need to consider the 
security of what you've built separately from the security of your 
building materials.

Security of software isn't inherited from the isolated security of each 
of its functions, and it is generally not valid logic to assume that a 
particular quality of the components of a whole will extend to the 
entire whole:

https://en.wikipedia.org/wiki/Fallacy_of_composition

Consider individual CPU instructions as an easy counter example. Every 
function is made up of such low-level instructions, and these 
instructions are functions in their own right. The original core premise 
would imply that no software vulnerabilities can exist except where 
individual CPU instructions are vulnerable, which is clearly not the case.

When you build something out of lower-level components, focusing purely 
on the security of those components ignores the *arrangement* of those 
components. From arrangement ("I'm made up of atoms"), higher levels of 
behavior emerge ("I'm writing this email"), and you're left with 
something that has its own security model that must be freshly considered.

- Mike
