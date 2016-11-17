X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1848" "Thursday" "17" "November" "2016" "16:39:22" "+0000" "Jason Cooper" "osssecurity@lakedaemon.net" "<20161117163922.GL5329@io.lakedaemon.net>" "42" "Re: [oss-security] CVE-2016-4484: - Cryptsetup Initrd root Shell" "^Date:" nil nil "11" "2016111716:39:22" "[oss-security] CVE-2016-4484: - Cryptsetup Initrd root Shell" (number mark "        osssecurity@ Nov 17   42/1848  " thread-indent "\"Re: [oss-security] CVE-2016-4484: - Cryptsetup Initrd root Shell\"\n") "<c3d2c492-8f94-f84e-1042-ca3e7663567e@oracle.com>" ("<88958a9e-25c1-97ce-1800-bc4bff93d9a9@hmarco.org>" "<20161116155529.GJ5329@io.lakedaemon.net>" "<c3d2c492-8f94-f84e-1042-ca3e7663567e@oracle.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17887 invoked by uid 550); 17 Nov 2016 16:43:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15640 invoked from network); 17 Nov 2016 16:39:38 -0000
X-MHO-User: 60492452-ace4-11e6-a7af-b587c64a4c62
X-Report-Abuse-To: https://support.duocircle.com/support/solutions/articles/5000540958-duocircle-standard-smtp-abuse-information
X-Originating-IP: 173.50.81.193
X-Mail-Handler: DuoCircle Outbound SMTP
X-DKIM: OpenDKIM Filter v2.6.8 io 845498012F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lakedaemon.net;
	s=mail; t=1479400762;
	bh=Zji03YvrZtOWgs41Mk9rpLxRDaQ8o1+iJmW4M8cPwZ0=;
	h=Date:From:To:Subject:References:In-Reply-To;
	b=yH6W1p5Nf46Yl+GJVowjgriOHHUouAFj9wGXBPoabFHZzYi6h7juxgfbdq3lG/0W8
	 tefgvyObq5CvUVJ/iY3Ntk5tIA/ykQpulTmjXp9b+OXrN1nnm8/63ssErCei7/z77v
	 zVUBI/c7QPfo1/OvanHUWDFAYgKjtRkNDh4HrNOvIApJJ13MYtgeBfHkNWPKWRNzy5
	 F0//nN6wgo5kLq8gS4iPjABjVk6SOdhVp1oXB4KuI2ts+nvSL4jdwb9RfcFa9AD2Ih
	 RVqgz/U1OSWvRbY4OdnkQym+SFn9OYaeiIH3o0joJqBiqs632ah7DcJdMkhbnRB/QF
	 POpeufaYiK1pg==
Message-ID: <20161117163922.GL5329@io.lakedaemon.net>
References: <88958a9e-25c1-97ce-1800-bc4bff93d9a9@hmarco.org>
 <20161116155529.GJ5329@io.lakedaemon.net>
 <c3d2c492-8f94-f84e-1042-ca3e7663567e@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c3d2c492-8f94-f84e-1042-ca3e7663567e@oracle.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Thu, 17 Nov 2016 16:39:22 +0000
From: Jason Cooper <osssecurity@lakedaemon.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2016-4484: - Cryptsetup Initrd root Shell
To: oss-security@lists.openwall.com

Hi John,

On Wed, Nov 16, 2016 at 04:11:57PM +0000, John Haxby wrote:
> On 16/11/16 15:55, Jason Cooper wrote:
> > How does this differ from an attacker setting 'init=/bin/sh' on the
> > kernel command line?  Or, booting from attacker provided media?  Or, in
> > OS X, booting in single user mode?
> > 
> > Your Discussion section at the end mentions facilities (GRUB passwords,
> > BIOS passwords, etc) for preventing this "Developer friendliness".  How
> > do you envision the installer enabling these while providing a failsafe
> > that an attacker can't exploit?
> 
> If you set a grub password then the attacker cannot set init=/bin/sh on
> the kernel command line without knowing the grub password.   However,
> when the boot process prompts you for the encrypted volume password you
> can just hit enter until you eventually get a shell prompt.  Of course,
> the attacker needs to be able to see the console where the password is
> typed in ...

First, I'll clarify that I agree there is a bug in the initrd scripts
for decrypting a system volume.  Anything that doesn't fail in a
deterministic fashion is asking for trouble.

As for your scenario, as usual, it comes down to threat models.  If you
don't want fellow students getting in to your laptop while you're gone
for the weekend, the above is fine.

If you're a journalist in a foreign country who needs to leave her
laptop in her hotel room while meeting a source, that's not sufficient.
My recommendation from my original reply would be more fitting.  It
should work with Secure Boot as well.

However, the golden rule still applies.  Physical access trumps all
defensive measures.  The absolute best you can do is detect that
physical access occurred.  From there, you're hoping there are no
hardware implants or other devices outside the scope of software
security.

thx,

Jason.
