X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["855" "Wednesday" "16" "November" "2016" "16:11:57" "+0000" "John Haxby" "john.haxby@oracle.com" "<c3d2c492-8f94-f84e-1042-ca3e7663567e@oracle.com>" "18" "Re: [oss-security] CVE-2016-4484: - Cryptsetup Initrd root Shell" "^Date:" nil nil "11" "2016111616:11:57" "[oss-security] CVE-2016-4484: - Cryptsetup Initrd root Shell" (number mark "        john.haxby@o Nov 16   18/855   " thread-indent "\"Re: [oss-security] CVE-2016-4484: - Cryptsetup Initrd root Shell\"\n") "<20161116155529.GJ5329@io.lakedaemon.net>" ("<88958a9e-25c1-97ce-1800-bc4bff93d9a9@hmarco.org>" "<20161116155529.GJ5329@io.lakedaemon.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20158 invoked by uid 550); 16 Nov 2016 16:12:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20137 invoked from network); 16 Nov 2016 16:12:11 -0000
References: <88958a9e-25c1-97ce-1800-bc4bff93d9a9@hmarco.org>
 <20161116155529.GJ5329@io.lakedaemon.net>
Message-ID: <c3d2c492-8f94-f84e-1042-ca3e7663567e@oracle.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <20161116155529.GJ5329@io.lakedaemon.net>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
X-Source-IP: userv0022.oracle.com [156.151.31.74]
Date: Wed, 16 Nov 2016 16:11:57 +0000
From: John Haxby <john.haxby@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2016-4484: - Cryptsetup Initrd root Shell
To: oss-security@lists.openwall.com

On 16/11/16 15:55, Jason Cooper wrote:
> How does this differ from an attacker setting 'init=/bin/sh' on the
> kernel command line?  Or, booting from attacker provided media?  Or, in
> OS X, booting in single user mode?
> 
> Your Discussion section at the end mentions facilities (GRUB passwords,
> BIOS passwords, etc) for preventing this "Developer friendliness".  How
> do you envision the installer enabling these while providing a failsafe
> that an attacker can't exploit?

If you set a grub password then the attacker cannot set init=/bin/sh on
the kernel command line without knowing the grub password.   However,
when the boot process prompts you for the encrypted volume password you
can just hit enter until you eventually get a shell prompt.  Of course,
the attacker needs to be able to see the console where the password is
typed in ...

jch
