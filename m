X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1597" "Friday" "20" "January" "2017" "09:24:38" "+0100" "Greg KH" "greg@kroah.com" "<20170120082438.GA28326@kroah.com>" "46" "Re: [oss-security] CVE Request - Samsung Exynos GPU driver OOB read" nil nil nil "1" "2017012008:24:38" "[oss-security] CVE Request - Samsung Exynos GPU driver OOB read" (number mark "U       greg@kroah.c Jan 20   46/1597  " thread-indent "\"Re: [oss-security] CVE Request - Samsung Exynos GPU driver OOB read\"\n") "<0b4f01d2726f$d3b693e0$7b23bba0$@gmail.com>" ("<CACCOJE3M1+PbtZgpvLXQjxMkKFirwu0=506OdZZuBUrTK5VqpA@mail.gmail.com>" "<CACCOJE3K5aEk_frgRr7_pt3T635=9OgnVagn+jOj-v1YetE74A@mail.gmail.com>" "<20170119143700.GA5132@kroah.com>" "<0b4f01d2726f$d3b693e0$7b23bba0$@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22318 invoked by uid 550); 20 Jan 2017 08:24:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22300 invoked from network); 20 Jan 2017 08:24:57 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc:x-sasl-enc; s=smtpout; bh=+/HklmEn9+Xnzj
	2DoQY+PFuZnpY=; b=Q23CPEA8xlOSE4xNRMq5EjC+ONrfQ3+fCkjcz0XPZEdSGW
	nyPWp13G6lDCtEfFKbupZqN6GspMvqhc7mtvMlYe0mPyQ53VF5tx4qFTW4CaCI/P
	L0FcozYXcEgJX5nGqnYBosj6CLRRNDyekkWCLwF784EcTIOHt4bnhgfS082bQ=
X-ME-Sender: <xms:TsmBWElbkNMoqSZQPfWm39nj1rmo5_7EA8Z9bYyZHhq9tY4LDuGjTA>
X-Sasl-enc: qOVeYQ/JHUMAN8xM644knXCrE5WOgJJhP+4In7M8vhEQ 1484900685
Date: Fri, 20 Jan 2017 09:24:38 +0100
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Cc: 'Anarcheuz Fritz' <anarcheuz@gmail.com>, cve-assign@mitre.org
Message-ID: <20170120082438.GA28326@kroah.com>
References: <CACCOJE3M1+PbtZgpvLXQjxMkKFirwu0=506OdZZuBUrTK5VqpA@mail.gmail.com>
 <CACCOJE3K5aEk_frgRr7_pt3T635=9OgnVagn+jOj-v1YetE74A@mail.gmail.com>
 <20170119143700.GA5132@kroah.com>
 <0b4f01d2726f$d3b693e0$7b23bba0$@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0b4f01d2726f$d3b693e0$7b23bba0$@gmail.com>
User-Agent: Mutt/1.7.2 (2016-11-26)
Subject: Re: [oss-security] CVE Request - Samsung Exynos GPU driver OOB read

On Fri, Jan 20, 2017 at 12:19:34AM +0800, idl3r wrote:
> Unfortunately, there is no official git for tracking from Samsung, so I
> can't give a pointer to the particular commit.
> 
> The bug itself resides in
> <root>/drivers/gpu/arm/t7xx/r5p0/mali_kbase_core_linux.c of the src tree, in
> function kbase_dispatch which is the main ioctl dispatcher of the driver:

Ah, so this isn't upstream in the main kernel tree, thanks for letting
me know, that's what I was most concerned about.

Hopefully Samsung figures a way to push this change out to all of their
users... :)

> static mali_error kbase_dispatch(struct kbase_context *kctx, void * const
> args, u32 args_size)
> {
> ...
>     /* setup complete, perform normal operation */
> 
>     switch (id) {
> ...
> 	case KBASE_FUNC_TMU_SKIP:
> 		{
> /* MALI_SEC_INTEGRATION */
> #ifdef CONFIG_SENSORS_SEC_THERMISTOR
> #ifdef CONFIG_USE_VSYNC_SKIP
> 			struct kbase_uk_tmu_skip *tskip = args;
> 			int thermistor = sec_therm_get_ap_temperature();
> 			u32 i, t_index = tskip->num_ratiometer;
> 
> 			for (i = 0; i < tskip->num_ratiometer; i++)
> <== missing of boundary check
> 				if (thermistor >= tskip->temperature[i])
> 					t_index = i;
> 
> tskip->temperature is a uint32 array of static size(10 elements) and
> tskip->num_ratiometer a uint32 which is user controlled. Since the boundary
> check is missing, OOB read may happen leading to possible memory corruption.

It's "user controlled" through the drm interface?  Or something else?

Anyway, no need for more details, this was great, thank you very much
for the quick response.

gre k-h
