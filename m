Received: (qmail 3864 invoked by uid 550); 11 Aug 2022 08:36:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3846 invoked from network); 11 Aug 2022 08:36:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc;
        bh=lO3ic69hI9EN2cWYiZvuLayzmBiMmRPPKaOYTyM4HD0=;
        b=NhQFtaWv5kIK2OVxZd41gsgPT97eoxL4y6qq7eJLHxVnaqG9SFLW7SY7SOTxwA3Rwd
         rppndCYd0nCPlsDRgd2P69p0j/238+87xlUpYz04Onxm4eRdFrXB5YcAq2urK+OeW8b+
         Op8YbPUyv9HTYRb6gGSPm7OayYdSDEeWXA8TZDr1G6jZkAdbRUZq8f3ltTJYDXELM5Lp
         taRgHHg2oscmcQI1HY89s79pE52p5cM7wkqdm2PJ37G3M1QUd0CVYUQM2zLXrbLLN1Ro
         OeJ97rWWcPm98eo1QwuIzqRTli6TnEKsAms6VIGbbXBdSSMIITOLTN+VoLFd86o3EZ+5
         CjeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc;
        bh=lO3ic69hI9EN2cWYiZvuLayzmBiMmRPPKaOYTyM4HD0=;
        b=tznLKEiVb4ecd+5za8h2HMJWEBJnl9UwKefTcNYNxsJZsPEuICqRk+dXIqVXVZ+uh3
         4P6chPDo+eWkTwovImFRyFWhSg+JFsbPxr2uy+PQSk3WQQhQoP6kw/zI97blR1v0pzDn
         4MmQdz/PdfDd72whIkAi0eATtPioTNgVmTPaDXMwSJ8ia9PybOUdgBsLTV+TdT4PER2t
         ecG26AsH4zc7xSbK/krJIoT1C5AN93eAMuh7sLFiRPu4Y/frkDk8oXf4Pap1VYDg528f
         DqelyGVPZ7iOyJfj7HTiiZVxeQhI1M+G3MrqboXNA0Q5s3yKPB3BqXI/Q+MdavyXaS/m
         b46Q==
X-Gm-Message-State: ACgBeo2if73Jj8yfgOL+N1W3ThutJ4jxwXbarYU+oCN9qYckR3NBZ0+4
	k5JIoRN3CqbkEmuWq4aomLo=
X-Google-Smtp-Source: AA6agR7eIH7aeHDa4LaDpiUenq+F15xiYNOkuJTFaUJppazpIA2b0Ybz68rlYT9gM/AGLP8W7ivsJw==
X-Received: by 2002:a17:907:10d1:b0:730:7c7d:3869 with SMTP id rv17-20020a17090710d100b007307c7d3869mr22531055ejb.356.1660206962219;
        Thu, 11 Aug 2022 01:36:02 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Thu, 11 Aug 2022 10:36:00 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: Neil Williams <codehelp@debian.org>
Cc: oss-security@lists.openwall.com, team@security.debian.org
Message-ID: <YvS/cMgjyTqrRbh8@eldamar.lan>
References: <20220811090132.66cb95e2@felix.codehelp>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220811090132.66cb95e2@felix.codehelp>
Subject: [oss-security] Re: CVE-2022-20359 is not mentioned in linked bulletin

Hi Neil,

On Thu, Aug 11, 2022 at 09:01:32AM +0100, Neil Williams wrote:
> https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2022-20359
> 
> URL: https://source.android.com/security/bulletin/2022-08-01
> 
> CVE-2022-20359 is not mentioned in that particular bulletin. Lots of
> others, either side, but not that one.
> 
> Does anyone know of the correct URL for more information?

As the CVE is assigned by Android, I would ask at
https://www.cve.org/PartnerInformation/ListofPartners/partner/google_android
.

Regards,
Salvatore
