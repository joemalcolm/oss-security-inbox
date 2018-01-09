X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2058" "Tuesday" "9" "January" "2018" "08:37:08" "-0700" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty070FkdfSVcz35pYXsa+BBbgoN7zWheAO-XudbD34n1Kw@mail.gmail.com>" "55" "Re: [oss-security] Own on install. How grave it is?" "^Date:" nil nil "1" "2018010915:37:08" "[oss-security] Own on install. How grave it is?" (number mark "        kseifried@re Jan  9   55/2058  " thread-indent "\"Re: [oss-security] Own on install. How grave it is?\"\n") "<20180109134207.GI869@sivokote.iziade.m$>" ("<20180109134207.GI869@sivokote.iziade.m$>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15735 invoked by uid 550); 9 Jan 2018 15:37:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15699 invoked from network); 9 Jan 2018 15:37:21 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=7RoUpiRXqjWXvndokLI7svAyywbCN28a4/qivhXw3WI=;
        b=EDz9zB2HRrThym53J/yUKL3L8rBacxA9msDtU6DJbKM+owrNVcwmSRMyrCQfscsE3N
         HuMqqkk86RDE/1cCSzrmK67QoLH3E9Wczn80S26Bt4P6oDqUCg1iaYtCjScga6PN9+CW
         f4yzePktxzh8W5GBrxxf8U4pEojpUCkliua4HZ6q+d/zjrTZNJ2TfOp8rXug5kM/FYaU
         vF2vP8xU0XwTEG7sQOPYzKfCXjdqlGm0cR4sItXQ24zfGJrLCJPqClJ8rC1OXSAn4ig5
         caU4ib4BqjB/qQtXKFS+x8SPv+oqKAtZTT/zW/a2wrr6rLqwkFoyll0Q4hSvG5jze5tQ
         UZSw==
X-Gm-Message-State: AKGB3mK3cJEy7nrebLJ5icys3LIsnb9Zqf3aHEs0UJIhytMjCEVSA9Z+
	hE09/tRyX+J+W9mhg2SL5ZY4cdrm6vd9FWqPciU4Lg/gsKY=
X-Google-Smtp-Source: ACJfBotyru/7Q0bVsUiAzuutkUiZSwg/DJqB4uILDDMmv2whnN/jgGVr6DMWqio9uKMhKy3EC3Ohlgmu2eTVMnlBneU=
X-Received: by 10.202.57.87 with SMTP id g84mr7431644oia.201.1515512229238;
 Tue, 09 Jan 2018 07:37:09 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20180109134207.GI869@sivokote.iziade.m$>
References: <20180109134207.GI869@sivokote.iziade.m$>
Message-ID: <CANO=Ty070FkdfSVcz35pYXsa+BBbgoN7zWheAO-XudbD34n1Kw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Tue, 9 Jan 2018 08:37:08 -0700
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Own on install. How grave it is?
To: oss-security <oss-security@lists.openwall.com>

Many OS installs/etc take a password during install, either manually
(e.g. prompting you at the command line), or the OS is installed using
tools that allow a password to be set (e.g. Red Hat kickstarter,
Satellite, CloudForms).

In general if an OS install does NOT give you any way to set a
password during install and forces you to install the product, boot it
and then login with blank credentials and set a password you end up
with a CVE since a network based attacker can easily win that race, a
good example being FreeNAS CVE-2014-5334. If the installer can prompt
for a password or take a password through other means (e.g.
kickstarter) than there's a safe option so no CVE is needed typically.

On Tue, Jan 9, 2018 at 6:42 AM, Georgi Guninski <guninski@guninski.com> wrote:
> [don't know if this is ontopic. Not on the list so CC me].
>
> This is well known, haven't seen it discussed.
>
> In short doing clean install (factory defaults) has a window of
> opportunity when the device is vulnerable to a known network attack.
>
> It used to be common sense to reinstall after compromise (probably
> doesn't apply to the windows world where the antivirus takes care).
>
> All versions of windoze are affected by the SMB bug to my knowledge.
> Debian jessie (old stable) is vulnerable to malicious mirror attack.
>
> More of interest to me are devices where the installation media is
> fixed and can't be changed.
>
> This includes smartphones and wireless routers.
>
> Some smartphones might be vulnerable to wifi RCE (found by google?).
> Some wireless routers might be vulnerable to wifi RCE or
> default admin password attack over wifi.
>
> Internet of Things will make things worse (some NAS devices are
> affected).
>
> Shielding the device might not be solution since updates must be
> applied.
>
> Are the above concerns real?
>
> Have this been studied systematically?
>
>



-- 

Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com
