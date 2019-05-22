X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2001" "Wednesday" "22" "May" "2019" "18:31:25" "+0200" "Greg KH" "greg@kroah.com" nil "45" nil nil nil nil "5" nil nil (number mark "U       greg@kroah.c May 22   45/2001  " thread-indent "\"Re: [oss-security] CVE-2019-10142 linux kernel: integer overflow in ioctl handling of fsl hypervisor\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2019-10142 linux kernel: integer overflow in ioctl handling of fsl hypervisor" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32007 invoked by uid 550); 22 May 2019 16:34:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29722 invoked from network); 22 May 2019 16:31:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm3; bh=t0jtFqrAoifeXcEK4GLCRNqfni8
	Jc+uPRN62h+M3oLU=; b=rndXvFIypP3HYRFdjKtYwOycgcOz3QaJi7/uUe0EJZV
	z2z1/OTzFsDvlqBabKT7hI7a6hE+sXXuGJSo4OY1PUTriVtrqSTbFwo9qmHTiZVq
	06ntXl+PJfDlp1mfyHZrt9HaIOOAsF4lf+ttBT5FCzG/ETQ9J+aTGX74po+SXANU
	G86iNdpUjQuPXjUFKP/h5kEYvuByzpI8GxOtFpvfidevQwJZrmHDAciv4IEJe7Cp
	WkbJUEHSvqBqAT23nlXGsZXvFzZYHAnRZFSgevn2x2C6tNSd/MaZMZjrFM03JIte
	8+NMj7MvzKx+hfJd2kO8lDjoa+RYBlzu8pAPPVE4AXA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=t0jtFq
	rAoifeXcEK4GLCRNqfni8Jc+uPRN62h+M3oLU=; b=WRA3EmN8/SueO6FjMcOfMV
	x16Ds8afRBlLqgsv2l4xqT523NSRzbteDcFpgYG7rrZX434JLYE9EXMUGIk4326S
	hJQUfC80Etkl/9/5nHNBLKmk/hlirr5oeL9m+r0QoUOxyz65SEc1eTlCuWtYfkyr
	ctocw6KWqJuIUQwduJmqUmlog6qZF+7nXH70OHXA2vZTWrYdGZvk5KvGKJRqqWMl
	uyCt7vPQjV1vTGVpk1G0B/Vo2UokNFpURtKp5jE4g1H/IVdptaeZaEcczBrR/N76
	uDRlXZW5vrE4rAaQb8Xeh3N5mCH0RxD383tyi7K7GWdooOXV5/2K3c0gMExHHBNg
	==
X-ME-Sender: <xms:X3nlXMB1fja4sXlguqUQ3ykj0msWOIKvXUe-LOIU0LjsOJa2w-RUXw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduuddrudduvddguddtfecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjfgesth
    dtredttdervdenucfhrhhomhepifhrvghgucfmjfcuoehgrhgvgheskhhrohgrhhdrtgho
    mheqnecuffhomhgrihhnpehrvgguhhgrthdrtghomhdpkhgvrhhnvghlrdhorhhgnecukf
    hppeekfedrkeeirdekledruddtjeenucfrrghrrghmpehmrghilhhfrhhomhepghhrvghg
    sehkrhhorghhrdgtohhmnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:X3nlXMaod1dbueobky_v-Ci3NQrwgGyvI5a_wpezVIC_KNlro_ft3w>
    <xmx:X3nlXIo08rXZPogt5srbxZF5Rs_I2pIvgZq4R-x0L0iANTlFz7GBng>
    <xmx:X3nlXEC4nskUFcLvBj25vPKTrk7K2LBQLWXSdk2FKTviHbH7jQJToQ>
    <xmx:YHnlXH60yPfRTpvVr_OICcsM7BPFZ7Oxr4pI2TD3ArwCIc50pLdspg>
Date: Wed, 22 May 2019 18:31:25 +0200
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <20190522163125.GA32400@kroah.com>
References: <CALJHwhTO3R81kFF4sMdWakQ23E9MfR_JS_dAjXbMLtE1AKZbPg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALJHwhTO3R81kFF4sMdWakQ23E9MfR_JS_dAjXbMLtE1AKZbPg@mail.gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
Subject: Re: [oss-security] CVE-2019-10142 linux kernel: integer overflow in
 ioctl handling of fsl hypervisor

On Thu, May 23, 2019 at 12:52:17AM +1000, Wade Mealing wrote:
> Gday,
> 
> >From the upstream git commit:
> 
> "The "param.count" value is a u64 that comes from the user. The code later
> in the function assumes that param.count is at least one and if it's not
> then it leads to an Oops when we dereference the ZERO_SIZE_PTR. Also the
> addition can have an integer overflow which would lead us to allocate a
> smaller "pages" array than required. I can't immediately tell what the
> possible run times implications are, but it's safest to prevent the
> overflow."
> 
> At this time Red Hat products are not affected this code is not built as
> the CONFIG_FSL_HV_MANAGER build option is not enabled by default.    Device
> (/dev/fsl-hv) ownership and permissions which prevent unprivileged users
> from being able to exploit this without some elevated permissions (I think
> this will default to user: root group:root with 0660 mask) however some
> Linux distributions may use udev to set this to non root ownership or
> another group.   In the default configuration, a user who is sufficiently
> privileged to exploit this is likely able to attack the system without it.
> 
> I open the discussion and note the CVE listed above for discussions that
> may reference this patch and perhaps save someone some time in
> investigation.
> 
> Red Hat bugzilla:
> https://bugzilla.redhat.com/show_bug.cgi?id=CVE-2019-10142
> 
> Upstream fix:
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=6a024330650e24556b8a18cc654ad00cfecf6c6c

Note, this fix is in the following released stable kernels at this point
in time:
	3.18.140 4.4.180 4.9.177 4.14.120 4.19.44 5.0.17 5.1.3

Also, to let oss-security know, the 3.18.y kernel tree is now really
end-of-life on kernel.org, but if people care about it still, they can
follow the android-common 3.18 branch as it will continue to get
security updates for at least the rest of this year, if not maybe a bit
longer.

thanks,

greg k-h
