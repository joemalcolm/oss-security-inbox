X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2604" "Wednesday" "16" "November" "2016" "15:55:29" "+0000" "Jason Cooper" "osssecurity@lakedaemon.net" "<20161116155529.GJ5329@io.lakedaemon.net>" "70" "Re: [oss-security] CVE-2016-4484: - Cryptsetup Initrd root Shell" "^Cc:" nil nil "11" "2016111615:55:29" "[oss-security] CVE-2016-4484: - Cryptsetup Initrd root Shell" (number mark "        osssecurity@ Nov 16   70/2604  " thread-indent "\"Re: [oss-security] CVE-2016-4484: - Cryptsetup Initrd root Shell\"\n") "<88958a9e-25c1-97ce-1800-bc4bff93d9a9@hmarco.org>" ("<88958a9e-25c1-97ce-1800-bc4bff93d9a9@hmarco.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1844 invoked by uid 550); 16 Nov 2016 16:00:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30392 invoked from network); 16 Nov 2016 15:55:45 -0000
X-MHO-User: 153b4e25-ac15-11e6-a7af-b587c64a4c62
X-Report-Abuse-To: https://support.duocircle.com/support/solutions/articles/5000540958-duocircle-standard-smtp-abuse-information
X-Originating-IP: 173.50.81.193
X-Mail-Handler: DuoCircle Outbound SMTP
X-DKIM: OpenDKIM Filter v2.6.8 io AEB7C80035
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lakedaemon.net;
	s=mail; t=1479311729;
	bh=8Qvd2piCAiFG/Ehz2NeTT+eVvGPvo/MiVkVq4Ly1GJY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=HiSDlHrNzGaZGK9DIkc6rzJAubZxPPX2ES5azoiRuvaxHY1nEnEzWqEV+1veWV12O
	 qY0o7Uk4K3uYSFfg2Z7FYFcASxuxfEAT3Z3iDBLnbmqPZcMqz+YNMyQsYYE0n1Ya6k
	 Rk9/t7ZsD5NyoX9gsxxQ8VAfkUJrMNnZ3STPmYMJm1WY57ULRfhSA2JxrVqhOcgeFW
	 H8cSTjr2ym/e4mUr0KHjL7N2Vc26HOfzwGhyoQEA/+QOJeY9sLevH4uapP34VNVyPk
	 iLIHfr3exAZDumMl5+5IDQcFO0b7Zbn/BQDJQSBdq+SB6PVEWMTNjjD11TNvMMmK51
	 7iMCAsU9aixyA==
Message-ID: <20161116155529.GJ5329@io.lakedaemon.net>
References: <88958a9e-25c1-97ce-1800-bc4bff93d9a9@hmarco.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <88958a9e-25c1-97ce-1800-bc4bff93d9a9@hmarco.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: fulldisclosure@seclists.org, bugtraq@securityfocus.com
Date: Wed, 16 Nov 2016 15:55:29 +0000
From: Jason Cooper <osssecurity@lakedaemon.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2016-4484: - Cryptsetup Initrd root Shell
To: oss-security@lists.openwall.com

Hi Hector,

On Mon, Nov 14, 2016 at 08:45:51PM +0000, Hector Marco wrote:
> Affected package
> ----------------
> Cryptsetup <= 2:1
> 
> 
> CVE-ID
> ------
> CVE-2016-4484
> 
> 
> Description
> -----------
> A vulnerability in Cryptsetup, concretely in the scripts that unlock the
> system partition when the partition is ciphered using LUKS (Linux
> Unified Key Setup).

This wording appears to have caused a lot of misunderstanding.  afaict,
the binary executable 'cryptsetup' has nothing to do with this bug.
Rather, it is completely in the initrd's script for decrypting a
partition containing the rootfs.

On Debian based systems, the initrd script is in the cryptsetup package,
but if one looks at the upstream repository for cryptsetup:

  https://gitlab.com/cryptsetup/cryptsetup.git

There are no initrd scripts provided.  So, this is in distro-provided
scripting.  *Not* in cryptsetup [0].

We could argue that those scripts should be in a 'cryptsetup-initramfs'
package by itself, but Debian has their way of doing things, and I'm not
volunteering, so... :-P

> This vulnerability allows to obtain a root initramfs shell on affected
> systems. The vulnerability is very reliable because it doesn't depend on
> specific systems or configurations. Attackers can copy, modify or
> destroy the hard disc as well as set up the network to exflitrate data.

How does this differ from an attacker setting 'init=/bin/sh' on the
kernel command line?  Or, booting from attacker provided media?  Or, in
OS X, booting in single user mode?

Your Discussion section at the end mentions facilities (GRUB passwords,
BIOS passwords, etc) for preventing this "Developer friendliness".  How
do you envision the installer enabling these while providing a failsafe
that an attacker can't exploit?

> In cloud environments it is also possible to remotely exploit this
> vulnerability without having "physical access."

This is straining to add 'cloud' and 'remotely exploit' into this
summary.  I presume all cloud providers who also provide console access
to VM bootup also protect that access behind user credentials or ssh
keys...

On a side note, I recommend encrypting the *entire* internal hard disk,
and configuring the BIOS/UEFI to boot from USB.  Then, put grub, /boot,
and the LUKS header on the USB drive.  Which you keep on your physical
keychain.  After boot is complete, you should be able to remove the USB
drive.  Just make sure to plug it back in during system updates. ;-)

thx,

Jason.

[0] note: the authors of cryptsetup have since updated their readme to
clarify the situation around this CVE.
