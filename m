X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1213" "Friday" "3" "February" "2017" "09:07:26" "-0700" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty0VtEX2Csom+EvprzU4wBS8d2=Yu1Y85+pPWqdbnhCVow@mail.gmail.com>" "43" "Re: [oss-security] curiosity for CVE-2016-10000" nil nil nil "2" "2017020316:07:26" "[oss-security] curiosity for CVE-2016-10000" (number mark "U       kseifried@re Feb  3   43/1213  " thread-indent "\"Re: [oss-security] curiosity for CVE-2016-10000\"\n") "<20170203082635.7htlwilcixrd4l3p@diablo>" ("<834080593.18312469.1486030496674.JavaMail.zimbra@redhat.com>" "<1403781878.18312805.1486030686130.JavaMail.zimbra@redhat.com>" "<20170203071134.GB5666@suse.de>" "<20170203082635.7htlwilcixrd4l3p@diablo>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23742 invoked by uid 550); 3 Feb 2017 16:07:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23721 invoked from network); 3 Feb 2017 16:07:39 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=X7tUrP8MaeEsJNNo2xpHqARWEGME56Ssugs3+Lp9NhY=;
        b=pLN4LfgkcqeNZOdhRzxeqR1qg97+lYdGOUcniQwTwTSMtC2JhRsBzQjAhaFkCjMO9a
         ks2EHFStkHy6IR1bxW8FR8OaCcEoduFocvh4+60WDoZaREa8aMHzto41eB1sJxI3XwCy
         Ydy0EMusdFnOLmZObPujiTl8Tu0q2PUhlpyFMj9/kV7hYY3laKto/oImsm4wbpfBkWkS
         T6SBX5+9KdqePdM8hrnusMHVEgjJ2AFzppH42M07RJ8njSjSjxl9uCHvReU8LFcK88Uq
         G2Ixjz8PvlisklNGbCG5eIz22oKKDYPaWsHTq/yrwp7p2YY6Aj0QPc0cjeBAdY1ZEnic
         SkmA==
X-Gm-Message-State: AMke39mFv3xshvmDhbknkLus4tLQRNTl8BgHakfwrDpUpPaMXQEtU9w+DXGj2P8aV6IrQ3ydSXBtr0cNDee4SyxV
X-Received: by 10.157.41.200 with SMTP id g8mr6583923otd.247.1486138047072;
 Fri, 03 Feb 2017 08:07:27 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20170203082635.7htlwilcixrd4l3p@diablo>
References: <834080593.18312469.1486030496674.JavaMail.zimbra@redhat.com>
 <1403781878.18312805.1486030686130.JavaMail.zimbra@redhat.com>
 <20170203071134.GB5666@suse.de> <20170203082635.7htlwilcixrd4l3p@diablo>
From: Kurt Seifried <kseifried@redhat.com>
Date: Fri, 3 Feb 2017 09:07:26 -0700
Message-ID: <CANO=Ty0VtEX2Csom+EvprzU4wBS8d2=Yu1Y85+pPWqdbnhCVow@mail.gmail.com>
To: oss-security <oss-security@lists.openwall.com>
Content-Type: multipart/alternative; boundary=001a113e28ae621b760547a27a38
Subject: Re: [oss-security] curiosity for CVE-2016-10000

--001a113e28ae621b760547a27a38
Content-Type: text/plain; charset=UTF-8

On Fri, Feb 3, 2017 at 1:26 AM, Justin Steven <justin@justinsteven.com>
wrote:

> As I understand, it is indeed DWF which I believe is a bona fide CNA.
>

Indeed it is

https://cve.mitre.org/cve/cna.html


>
> See
> <https://github.com/distributedweaknessfiling/DWF-
> Database/blob/master/DWF-Database-2016.csv>
>
> Do these allcoations (as well as the 2015 and 2017 allocations) need to be
> pushed upstream and synced with Mitre's dataset?
>
> --
> Justin
>

Yes, but we're in the process of creating a JSON data format and finalizing
it (already on v.4, rapid iteration for the win), once that is done
(hopefully another month or so to nail it down) the DWF will start to
publish data in that format so MITRE can consume it and as time goes on the
DWF will ramp up (there's a lot to do if you want to build a system that
will assign a few hundred thousand CVEs efficiently =). We'll be making
some announcements at RSA in 2 weeks.


-- 

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a113e28ae621b760547a27a38--
