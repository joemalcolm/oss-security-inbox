X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["546" "Tuesday" "26" "April" "2016" "23:26:13" "-0500" "Jodie Cunningham" "jodie.cunningham@gmail.com" "<CABfY0L3+qV-Q_L2awb-PSXzy=fPWyQFMkZwfbjHSXyxCkfrEbA@mail.gmail.com>" "20" "Re: [oss-security] 3 bugs refer to buffer overflow in in libtiff 4.0.6" "^Date:" nil nil "4" "2016042704:26:13" "[oss-security] 3 bugs refer to buffer overflow in in libtiff 4.0.6" (number mark "        jodie.cunnin Apr 26   20/546   " thread-indent "\"Re: [oss-security] 3 bugs refer to buffer overflow in in libtiff 4.0.6\"\n") "<tencent_62222EFF74B667984E9F8E5B@qq.com>" ("<tencent_62222EFF74B667984E9F8E5B@qq.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19496 invoked by uid 550); 27 Apr 2016 04:26:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19471 invoked from network); 27 Apr 2016 04:26:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-transfer-encoding;
        bh=vFtCMi0gdM9J12Rnx7UX8Jzwg5GiXRZuLhgPoNG7QnA=;
        b=ZUF/6XgRGQwzZCSiBsdQKdcpMFXcn3atAsy/vlubMbtg0q2VhmyffLQ47WBeItlMnY
         fO+SdmU5P/jrFuLdulZOjieUzfViwumMWV+jKC9EF3yvm3fDSuwDjECe4PTsCyc80jPh
         Uo5AnoQI1OAdoPQDtlkTYho1ISgvR+c/J2pF882EDzo2ZCh4I9U1xdUX4lZtsvZ+cHdi
         oW/arRzsHGMzDoh6XL7/QAwcjrxhtxA+BZkUWdQMAW8/I92QA7Vx+upmeHsw8k91qbkn
         1rVMonn4CHp/HlR0VYss8fyK+izgFlDw9S5ZWE+usZ1h/nm3WIuS3yN4Y+l4XYea7Qx8
         xryg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:content-transfer-encoding;
        bh=vFtCMi0gdM9J12Rnx7UX8Jzwg5GiXRZuLhgPoNG7QnA=;
        b=MYtm6vhHy39Mtik6tAhmB3kjyIc785koxRb8SAM3iybKvqVJZhixvW9m9XRrrUPh00
         NCveOMLlsvneqVdT0CshIVVK90wTSsXCIKRirQvaUgB0BFnKlyN5B2U1XLtuYWZuua99
         b2TwggNuc4RfX7aznIgVvhAfqTXAf6I0Or1jui6LhmN82+VQIXmDLGE581m0Xbb5YHcs
         YrgNmNDoEsg1a0lqxfvJIHZ1uUPTKUrrARJyYcAOABRE8nF4V1tw7JbiXkT6kwLG0DEx
         X+aqMFcDPVc13caU3wXc+/A4nJGHYWP5V4aRez7x2SEXTaLkj75BceBONlwkxY/7z9TN
         8Mdw==
X-Gm-Message-State: AOPr4FUvUrHuZdgi2m4uhxDG1nirgokXstQ2ildHL8oyMN42wnGKfonF3//Cm2IO6wSOID8rrSlUpGvze/048g==
MIME-Version: 1.0
X-Received: by 10.159.37.208 with SMTP id 74mr3346306uaf.148.1461731173813;
 Tue, 26 Apr 2016 21:26:13 -0700 (PDT)
In-Reply-To: <tencent_62222EFF74B667984E9F8E5B@qq.com>
References: <tencent_62222EFF74B667984E9F8E5B@qq.com>
Message-ID: <CABfY0L3+qV-Q_L2awb-PSXzy=fPWyQFMkZwfbjHSXyxCkfrEbA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 26 Apr 2016 23:26:13 -0500
From: Jodie Cunningham <jodie.cunningham@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] 3 bugs refer to buffer overflow in in libtiff 4.0.6
To: oss-security@lists.openwall.com

On Tue, Apr 26, 2016 at 10:36 PM, PXO=E7=82=B3=E6=9E=97 <271193918@qq.com> =
wrote:
>
> Hello oss-security,
>
> I did some test and found three bugs refer to buffer overflow: one stack
> buffer overflow in thumbnail and two buffer overflows in bmp2tiff.
>
> Please let me know whether CVE Identifier number could be assigned.
>
> Overview:
>
> Running each poc file crashes thumbnail and bmp2tiff made with
> AddressSanitizer in tiff-4.0.6. I have attached poc and log files .
> ------------------
> From Debug_Orz
>


Is there a patch upstream?
