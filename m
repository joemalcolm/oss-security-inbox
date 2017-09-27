X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["368" "Wednesday" "27" "September" "2017" "22:26:38" "+0200" "Emilio Pozuelo Monfort" "pochu27@gmail.com" "<ba4bf74e-858d-f75b-81ea-f9ec2bcf1e69@gmail.com>" "11" "Re: [oss-security] CVE-2017-9772: OCaml release 4.04.2" nil nil nil "9" "2017092720:26:38" "[oss-security] CVE-2017-9772: OCaml release 4.04.2" (number mark "U       pochu27@gmai Sep 27   11/368   " thread-indent "\"Re: [oss-security] CVE-2017-9772: OCaml release 4.04.2\"\n") "<6D989FE0-69C8-4AE0-B897-B440B8F92C69@recoil.org>" ("<21771A83-D685-4776-9CE7-883775F05977@inria.fr>" "<6D989FE0-69C8-4AE0-B897-B440B8F92C69@recoil.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28147 invoked by uid 550); 27 Sep 2017 21:14:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23953 invoked from network); 27 Sep 2017 20:26:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=9zuKvSVLlsD6WmtdSb7X0yW3MYoITBGHZvYcoUB3e8g=;
        b=QFqSTSQ9j7cSpCgeRq121v89NXnmDtKRlqy0Czesr/tikZWsNJNoE4d84+QS0dtTAZ
         yP5flYEmx3V33RCi/gYgAJDOrPdBTWiH5dainMZzeQ8EzdG3fFjE1cBiv5Xe2WT7fgJV
         YG3Wuax/Amof+PHDEWKBi9VGlN+6n3v7y16cKDhRHu0Sw0IZwY8nVzY5y5jQ5ZLpu+j5
         8pDMI5NtxOtNVdiDIOM5a7oYEw063Fhvu63lxwfrAbIiq8KFTuxFC3O4KR192/fHhSfA
         mWO64CKrsMWstXZpzUN1m3GfqXnEwkHYYqipAqAX0ph66nFPmHHUPC7sLGT61JiyNa4D
         f1qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=9zuKvSVLlsD6WmtdSb7X0yW3MYoITBGHZvYcoUB3e8g=;
        b=BEn83V3MYUTOP3pNutuL2I5J1Dmvxh6rzrD7EsStAH1p7Kz7pvylibdADUa1hea6ka
         Gi7yD4HSgUhq9ht/HuEdjhj+OAmTfbb+tdXFmjhrExcRzZII4uKzQY7HhciAGBwb93LB
         HcHr5pFdTfPqc8jUTi2li9gqqaQk2YPGrZobAFoelirS924zOQY0s+CcOK5D1HVL/J4q
         TpR98mLXG6hbHOy7GTG5Whn1DcI6T8dzpA63Jp/0yHZNms9IszaaYctX6eZMVPVJiOTn
         lMWUakMPvtJyTB+BJMY6vpWZ1fMm1xSi/0hUHrfM+ZJb48ninixYySSpKi5PARuAysBQ
         GTLQ==
X-Gm-Message-State: AHPjjUjIpieUnxF2iIAQmD2XxOVfFeXYnhodDgQ+uiUemzFZdfSn0VYi
	zD3R4Y2nUZ0CX5WpQ5K1Hvdixg==
X-Google-Smtp-Source: AOwi7QBx/i4zoss344Ca8lC9sxffdyKbkigu3t5FUybk/FPihOrQNYx9XsXsb+95/E89dDqjbC7Eww==
X-Received: by 10.223.196.161 with SMTP id m30mr2395647wrf.187.1506544000252;
        Wed, 27 Sep 2017 13:26:40 -0700 (PDT)
To: oss-security@lists.openwall.com, Anil Madhavapeddy <anil@recoil.org>
Cc: Damien Doligez <damien.doligez@inria.fr>
References: <21771A83-D685-4776-9CE7-883775F05977@inria.fr>
 <6D989FE0-69C8-4AE0-B897-B440B8F92C69@recoil.org>
From: Emilio Pozuelo Monfort <pochu27@gmail.com>
Message-ID: <ba4bf74e-858d-f75b-81ea-f9ec2bcf1e69@gmail.com>
Date: Wed, 27 Sep 2017 22:26:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <6D989FE0-69C8-4AE0-B897-B440B8F92C69@recoil.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] CVE-2017-9772: OCaml release 4.04.2

Hi,

On 23/06/17 17:28, Anil Madhavapeddy wrote:
>> References: see CVE-2017-9779 for a lesser vulnerability in older versions.

Is there any information on CVE-2017-9779? Everything out there seems to link to
the CVE-2017-9772 announcement and bug report, and I can't find anything more,
such as a bug report, affected versions, how lesser is this...

Thanks,
Emilio
