X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["330" "Monday" "31" "August" "2015" "22:50:11" "-0700" "Michal Zalewski" "lcamtuf@coredump.cx" "<CALx_OUC8jZN6ebpF18M890KmP8u7A=VE5HCoNxbuB3YhVq1mXA@mail.gmail.com>" "12" "Re: [oss-security] Terminal escape sequences - the new XSS for admins?" nil nil nil "8" "2015090105:50:11" "[oss-security] Terminal escape sequences - the new XSS for admins?" (number mark "        lcamtuf@core Aug 31   12/330   " thread-indent "\"Re: [oss-security] Terminal escape sequences - the new XSS for admins?\"\n") "<CALx_OUCRbOcpFHyU=kju+WTZju-orChnU50wOP2Tw=8V3mpUtA@mail.gmail.com>" ("<CANO=Ty1ku4Hs-eFzCWK_K0=QXEZbtDFR4c--gBnoHPQi7Ko+XQ@mail.gmail.com>" "<CALx_OUDJbSmjcgOAe27h9k4h5dq6cHUXOTgbO9YTkCanopGzUA@mail.gmail.com>" "<20150817202748.GA3032@openwall.com>" "<CALx_OUCRbOcpFHyU=kju+WTZju-orChnU50wOP2Tw=8V3mpUtA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21592 invoked by uid 550); 1 Sep 2015 05:50:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21571 invoked from network); 1 Sep 2015 05:50:42 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-type;
        bh=k1hpcicgLRiiM41g2Lnu0RydW9mPN8rZ+yXAzbGv3dE=;
        b=VeWOiVdw2+FqTVljnBYYkU7gmGCcKtwAFgWhSkF91074N2leHwc7A+u7+wyUtV68nJ
         MbviglhllzLZiY2vFlsBmEMnjwSshhfRBzk/4vFR+ipK7KTNIpir4Bzc35RUfnISlYP5
         BrOw3TA/KHJ3rr0sZYJ+ZT8EtFYuifC7V36RJ8Mnu7qSus7bz9uShG8c46YiddwL4155
         SYOV5ZW84JXHFbk7YXO2c1EHc+W+8t1EnxgZFdFTIk0k0EAsHLDLZPGEvwGpbcDdAb/X
         NSrj4RZKCVA9kVmJeqYfbyBk64oKB9YF3FBE7joDf1nP9ty7DLyMEnbqr7RiaPhT6n3P
         GBDQ==
X-Gm-Message-State: ALoCoQmzwjoutSpOSJcx8BYWWbLsHQiy8j+sDo+Fn/MO3c8zmA4Yyw2cDCPR+t1dwhrJXciMEV6Q
X-Received: by 10.107.17.33 with SMTP id z33mr26213072ioi.130.1441086630583;
 Mon, 31 Aug 2015 22:50:30 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CALx_OUCRbOcpFHyU=kju+WTZju-orChnU50wOP2Tw=8V3mpUtA@mail.gmail.com>
References: <CANO=Ty1ku4Hs-eFzCWK_K0=QXEZbtDFR4c--gBnoHPQi7Ko+XQ@mail.gmail.com>
 <CALx_OUDJbSmjcgOAe27h9k4h5dq6cHUXOTgbO9YTkCanopGzUA@mail.gmail.com>
 <20150817202748.GA3032@openwall.com> <CALx_OUCRbOcpFHyU=kju+WTZju-orChnU50wOP2Tw=8V3mpUtA@mail.gmail.com>
Message-ID: <CALx_OUC8jZN6ebpF18M890KmP8u7A=VE5HCoNxbuB3YhVq1mXA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Mon, 31 Aug 2015 22:50:11 -0700
From: Michal Zalewski <lcamtuf@coredump.cx>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Terminal escape sequences - the new XSS for admins?
To: oss-security <oss-security@lists.openwall.com>, =?UTF-8?Q?Hanno_B=C3=B6ck?= <hanno@hboeck.de>

> I definitely think it deserves a closer look. Here are three recent
> finds that kcwu reported after apparently testing GNU screen with
> afl-fuzz:
>
> https://savannah.gnu.org/bugs/?45713
> https://savannah.gnu.org/bugs/?45715
> https://savannah.gnu.org/bugs/?45714

Ditto for tmux:
https://github.com/tmux/tmux/issues/92

/mz
