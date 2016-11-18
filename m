X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1110" "Friday" "18" "November" "2016" "14:58:26" "+0000" "Jason Cooper" "osssecurity@lakedaemon.net" "<20161118145826.GA2799@io.lakedaemon.net>" "27" "[oss-security] Linux encrypted boot security, was: CVE-2016-4484: - Cryptsetup Initrd root Shell" nil nil nil "11" "2016111814:58:26" "[oss-security] Linux encrypted boot security, was: CVE-2016-4484: - Cryptsetup Initrd root Shell" (number mark "U       osssecurity@ Nov 18   27/1110  " thread-indent "\"[oss-security] Linux encrypted boot security, was: CVE-2016-4484: - Cryptsetup Initrd root Shell\"\n") "<cf096ccb-33de-6288-f5fc-cd62afcfeeac@gmail.com>" ("<88958a9e-25c1-97ce-1800-bc4bff93d9a9@hmarco.org>" "<20161116155529.GJ5329@io.lakedaemon.net>" "<c3d2c492-8f94-f84e-1042-ca3e7663567e@oracle.com>" "<20161117163922.GL5329@io.lakedaemon.net>" "<6bb2134c-5df5-7728-bec7-6d6a80e71476@oracle.com>" "<20161117175017.GM5329@io.lakedaemon.net>" "<8acc06b7-9312-adab-17eb-edd95ff98f72@oracle.com>" "<cf096ccb-33de-6288-f5fc-cd62afcfeeac@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15366 invoked by uid 550); 18 Nov 2016 14:59:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13520 invoked from network); 18 Nov 2016 14:58:42 -0000
X-MHO-User: 7929688f-ad9f-11e6-94b7-cbe6054a74b1
X-Report-Abuse-To: https://support.duocircle.com/support/solutions/articles/5000540958-duocircle-standard-smtp-abuse-information
X-Originating-IP: 173.50.81.193
X-Mail-Handler: DuoCircle Outbound SMTP
X-DKIM: OpenDKIM Filter v2.6.8 io A76EE8005C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lakedaemon.net;
	s=mail; t=1479481106;
	bh=wt7myZ4jFj9HYCFVhxJBLTpxqo/yoN2ywAhycOkggg0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=BKph/Oe2pGRRDM9Mm2z0OYPEz41xnRkqNXLneI6rnVmqqCDTBwZJNB59CvzkANzNk
	 dwvCpk2RDueDerOEEOCV9L+/K9hN1o/ZZ2hq099ITopmiaXK8BN8sIP3PiahoZfJDz
	 oNVSO/k5OO/6oT9cmYfBuDadX0DAr3G/HQejweOTRMoHv4zvbPqhuv39E24PvI/9sC
	 qT7lzp/TwH7bNjNwWe2vZRBmHDWT9YuxDhhBjz7zw72riqLARgVdaabKV/YAarNrU8
	 EshitC5wiCci892+ZuEAqGKDLdCArg/lOir++kDXXov/C1RIuJrvuN/AfntHjIqSAA
	 giTYEiEDe6qpQ==
Date: Fri, 18 Nov 2016 14:58:26 +0000
From: Jason Cooper <osssecurity@lakedaemon.net>
To: oss-security@lists.openwall.com
Cc: john.haxby@oracle.com
Message-ID: <20161118145826.GA2799@io.lakedaemon.net>
References: <88958a9e-25c1-97ce-1800-bc4bff93d9a9@hmarco.org>
 <20161116155529.GJ5329@io.lakedaemon.net>
 <c3d2c492-8f94-f84e-1042-ca3e7663567e@oracle.com>
 <20161117163922.GL5329@io.lakedaemon.net>
 <6bb2134c-5df5-7728-bec7-6d6a80e71476@oracle.com>
 <20161117175017.GM5329@io.lakedaemon.net>
 <8acc06b7-9312-adab-17eb-edd95ff98f72@oracle.com>
 <cf096ccb-33de-6288-f5fc-cd62afcfeeac@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cf096ccb-33de-6288-f5fc-cd62afcfeeac@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: [oss-security] Linux encrypted boot security, was: CVE-2016-4484: - Cryptsetup
 Initrd root Shell

Hi Jacobo,

On Thu, Nov 17, 2016 at 07:54:20PM -0500, Jacobo Avariento wrote:
> Actually when using full disk encryption, to lock the BIOS and GRUB must
> be mandatory, otherwise you are protecting your confidentiality but not
> your integrity. Even with a password in GRUB with an unprotected BIOS
> you can also boot from a USB device and access encrypted partitions,
> delete them, etc.

As long as the user in conscious of the threat model and makes the
deliberate decision, this is fine.  But please always advise folks,
"Physical access trumps everything.  Period."

I can't count the number of hard drives I've pulled and cmos' I've
reset.  That why I always advise moving all of the unencrypted boot
material (bootloader, /boot, LUKS header) to a separate thumbdrive and
to boot via USB.

Maintaining physical custody of the boot material keeps it more secure
and is easier for the user because there are fewer passwords involved.
And, with UEFI, you can update/configure it from within the OS, which
means the password for that can be kept in a password manager on the
encrypted volume.

thx,

Jason.
