X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2461" "Friday" "20" "January" "2017" "00:19:34" "+0800" "idl3r" "idler1984@gmail.com" "<0b4f01d2726f$d3b693e0$7b23bba0$@gmail.com>" "73" "RE: [oss-security] CVE Request - Samsung Exynos GPU driver OOB read" nil nil nil "1" "2017011916:19:34" "[oss-security] CVE Request - Samsung Exynos GPU driver OOB read" (number mark "U       idler1984@gm Jan 20   73/2461  " thread-indent "\"RE: [oss-security] CVE Request - Samsung Exynos GPU driver OOB read\"\n") "<20170119143700.GA5132@kroah.com>" ("<CACCOJE3M1+PbtZgpvLXQjxMkKFirwu0=506OdZZuBUrTK5VqpA@mail.gmail.com>" "<CACCOJE3K5aEk_frgRr7_pt3T635=9OgnVagn+jOj-v1YetE74A@mail.gmail.com>" "<20170119143700.GA5132@kroah.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10167 invoked by uid 550); 20 Jan 2017 04:12:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21712 invoked from network); 19 Jan 2017 16:19:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:references:in-reply-to:subject:date:message-id
         :mime-version:content-transfer-encoding:thread-index
         :content-language;
        bh=lfSBOyJAD9WRDhywladrJldZR32iNA4/8Yj34uhMUDs=;
        b=Lj4q/0Nth/u33u7W6RrcjtTPWE2BT2dXiCt4L995iinFieC9uDnWD3YeRV9Z8/q0x8
         Gdee7megy4s2oL6G7u+GYfeHkexbdR6iC4P5r90Yek1TLDXw2cvUH7s6vJEGaVWxRoi+
         8P/lY2o2TzsEe9HldsFowWsNtsV230hbuXQGNRgVmidUgOPIsH5epvWXu/EHuAQTe8cj
         wHIijNgycmMinhpK0E3Ua8UBzJiahoSU3QX3esnHleOPr78pDtavSpA01zfV7G4xYsbD
         p86XRjFA2QRF47G8z1QPsLRdhUxkpCVICPgbOdcXwQG9D+OyFuAx33n/Z6teubbcAIIz
         QxxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:references:in-reply-to:subject:date
         :message-id:mime-version:content-transfer-encoding:thread-index
         :content-language;
        bh=lfSBOyJAD9WRDhywladrJldZR32iNA4/8Yj34uhMUDs=;
        b=lsX+ql/6zWenNx9mCYGXGTtY6s+JwKU/VcCDYzdlPfI+YJL2tGQv8ELd0c73Fy/vml
         VVEUdHkIIW4WtPcTg7Jr9nM8l5JVclBFqwJBGAypv1wlHew5OS/Lpo0k1Swqbdg0JAhw
         a8zmPLV7KodgxUuAc5yYoVko8LOioYj3cnfIgfohsvecUXhdl9LQpWaxcQ+7GnbyEQkr
         M+b+v3DkdjEexqhKE3WtdqiB5lU4bKgn6d0HeOXi83TRjUM6//NeOjc79r5LVjq9Ev/p
         8i89hdceoc/y7lbUsOq3PK2HOrv1N8BOuI3R8IMC6Erew8ddA9yNZ0G4adNlUZmUyOuO
         UNxA==
X-Gm-Message-State: AIkVDXLkauLxldr4TTJeeGp+aw6cs5vtZjoJuCenN5CMuHJ0sg6TRjVpsljs1W63yO9rOQ==
X-Received: by 10.98.36.16 with SMTP id r16mr10884107pfj.56.1484842782474;
        Thu, 19 Jan 2017 08:19:42 -0800 (PST)
From: "idl3r" <idler1984@gmail.com>
To: <oss-security@lists.openwall.com>
Cc: "'Anarcheuz Fritz'" <anarcheuz@gmail.com>,
	<cve-assign@mitre.org>
References: <CACCOJE3M1+PbtZgpvLXQjxMkKFirwu0=506OdZZuBUrTK5VqpA@mail.gmail.com> <CACCOJE3K5aEk_frgRr7_pt3T635=9OgnVagn+jOj-v1YetE74A@mail.gmail.com> <20170119143700.GA5132@kroah.com>
In-Reply-To: <20170119143700.GA5132@kroah.com>
Date: Fri, 20 Jan 2017 00:19:34 +0800
Message-ID: <0b4f01d2726f$d3b693e0$7b23bba0$@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQIp6CLm9uCR12d1apbojhB5sppgTwHmPVGhAjfDo4GgcB7BgA==
Content-Language: en-us
Subject: RE: [oss-security] CVE Request - Samsung Exynos GPU driver OOB read

Unfortunately, there is no official git for tracking from Samsung, so I
can't give a pointer to the particular commit.

The bug itself resides in
<root>/drivers/gpu/arm/t7xx/r5p0/mali_kbase_core_linux.c of the src tree, in
function kbase_dispatch which is the main ioctl dispatcher of the driver:

static mali_error kbase_dispatch(struct kbase_context *kctx, void * const
args, u32 args_size)
{
...
    /* setup complete, perform normal operation */

    switch (id) {
...
	case KBASE_FUNC_TMU_SKIP:
		{
/* MALI_SEC_INTEGRATION */
#ifdef CONFIG_SENSORS_SEC_THERMISTOR
#ifdef CONFIG_USE_VSYNC_SKIP
			struct kbase_uk_tmu_skip *tskip = args;
			int thermistor = sec_therm_get_ap_temperature();
			u32 i, t_index = tskip->num_ratiometer;

			for (i = 0; i < tskip->num_ratiometer; i++)
<== missing of boundary check
				if (thermistor >= tskip->temperature[i])
					t_index = i;

tskip->temperature is a uint32 array of static size(10 elements) and
tskip->num_ratiometer a uint32 which is user controlled. Since the boundary
check is missing, OOB read may happen leading to possible memory corruption.

-----Original Message-----
From: Greg KH [mailto:greg@kroah.com] 
Sent: Thursday, January 19, 2017 10:37 PM
To: oss-security@lists.openwall.com
Cc: Anarcheuz Fritz <anarcheuz@gmail.com>; cve-assign@mitre.org
Subject: Re: [oss-security] CVE Request - Samsung Exynos GPU driver OOB read

On Thu, Jan 19, 2017 at 02:38:31PM +0800, Idler wrote:
> Hello,
> 
> I'd like to request CVE for the following security issue:
> 
> Security bulletin: 
> http://security.samsungmobile.com/smrupdate.html#SMR-JAN-2017
> 
> SVE-2016-6362: out of bound read in gpu driver
> 
> Severity: Low
> Affected versions: M(6.0), N(7.0) devices with Exynos AP chipsets 
> Reported on: May 31, 2016 Disclosure status: Privately disclosed.
> Vulnerability in gpu driver does not properly check the boundary of 
> buffers leading to a possible memory corruption.
> The applied patch avoids an illegal access to memory by checking the
boundary.
> 
> Source code:
> Source code of the affected GPU drivers (as part of the Linux kernel
> source) can be downloaded from Samsung Opensource Resource center:
> http://opensource.samsung.com/
> 
> The particular model of phone we used to reproduce this issue is:
> http://opensource.samsung.com/reception/receptionSub.do?method=sub&sub
> =F&searchValue=SM-G9200

Any pointer to the commit(s) that happened to resolve this issue?

thanks,

greg k-h

