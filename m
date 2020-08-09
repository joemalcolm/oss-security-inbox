X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["928" "Sunday" "9" "August" "2020" "10:26:44" "+0200" "Richard Hartmann" "richih.mailinglist@gmail.com" "<CAD77+gST6rs=eL5BehV_ffVHo0d6FezKM2Wx61Qy+G4Bg6eE2g@mail.gmail.com>" "34" "Re: [oss-security] Voiding CVE-2020-16248" "^Cc:" nil nil "8" "2020080908:26:44" "[oss-security] Voiding CVE-2020-16248" (number mark "        richih.maili Aug  9   34/928   " thread-indent "\"Re: [oss-security] Voiding CVE-2020-16248\"\n") "<2173625e-ade0-c8ce-173e-a50464faa12b@beuc.net>" ("<CAD77+gR7G5zBc4pwQ86H-UuMk6QOgPcuK8R-hmmHqv8+8_+dbw@mail.gmail.com>" "<2173625e-ade0-c8ce-173e-a50464faa12b@beuc.net>") nil nil nil nil nil nil nil "Re: [oss-security] Voiding CVE-2020-16248" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27969 invoked by uid 550); 9 Aug 2020 11:06:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1439 invoked from network); 9 Aug 2020 08:27:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9ww+dE0fkFCDEtx4GkZUOrzSTvlqioyJkyB7pEZnflk=;
        b=HMbFoGoUifUTBBypic+s7ftHMgsMmjR+Rr3u6A31jihsglTnm0+ySMhAeWFQu1EuOP
         7S1iXVaW19Iy6+V3VIUQE8Xdk3Fu8mH02d8OqF6Au3zZ9itTfM7Xes5VDjocpeiq+mPR
         VdhJbD2X+gYvMGx9LBItKZiap/8X0ehRA8YaK29KgMzkLEsC23KEVXnSOzNPbTvB0lXv
         BuR6+Dbhi99VBg4shZhVLALnBQanGTXJO3Y16QxzLcSyji8RNvxDxWAwwYyg7zKYV/vD
         GT1IVExXH6gyqr3CLtkzgTRWPDZVE5ce9SF3Sv8WAyB3HU9iU9gzXPa4YnYLPAj4kYY6
         9jAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9ww+dE0fkFCDEtx4GkZUOrzSTvlqioyJkyB7pEZnflk=;
        b=JsKvD6NCdYwf2fFw5rY4pKr/jU+CoOyztNVofUO5Bn68h33nb0GZBwPv52l8lZxsp5
         4tVhFYNj8d3FCxaq4p+uBfaDy69SkP1JKyGYogpj8ABMzL7x6hVS/R6kUCFAHqlxDsYK
         uFJwdxg/vKsr9SyAabzsPt1ITgVMfiyzHg5vYgxHcrfXoEFsfL7/yGS0qa/evUDvB+6j
         EH5wBy2nn6Mbhfgd7NRTVO3ltIud2Tn5twYU5jK1x5WMmprh0P5loSCT5HVHrsxO89g8
         mU1RkCqjhkLZto5d9lL4S7n6wSj8cT39SFGXmFictdqN2i32z5pzq98gHurGw+KRqL/+
         ieIA==
X-Gm-Message-State: AOAM533bbBHhcHDEWn6eDF7X860I5laBp9HkXkRdOAnix0OXKCdDc+jA
	pWjOvWNcfGaflMl6Vm3qU3vXntq2zFNjRDGYCWI=
X-Google-Smtp-Source: ABdhPJzjSw7tlmwIOh1PVWNUcsY5saoQNdBAhCWh5svyC9rIDvUbLP76NanqqQ99mNHpOe5wcbP7i0Ns9AJ1QYQO1eo=
X-Received: by 2002:a17:907:2067:: with SMTP id qp7mr16438071ejb.378.1596961616024;
 Sun, 09 Aug 2020 01:26:56 -0700 (PDT)
MIME-Version: 1.0
References: <CAD77+gR7G5zBc4pwQ86H-UuMk6QOgPcuK8R-hmmHqv8+8_+dbw@mail.gmail.com>
 <2173625e-ade0-c8ce-173e-a50464faa12b@beuc.net>
In-Reply-To: <2173625e-ade0-c8ce-173e-a50464faa12b@beuc.net>
Message-ID: <CAD77+gST6rs=eL5BehV_ffVHo0d6FezKM2Wx61Qy+G4Bg6eE2g@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: oss-security@lists.openwall.com, prometheus-team@googlegroups.com, 
	Prometheus Developers <prometheus-developers@googlegroups.com>
Date: Sun, 9 Aug 2020 10:26:44 +0200
From: Richard Hartmann <richih.mailinglist@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Voiding CVE-2020-16248
To: Sylvain Beucler <beuc@beuc.net>

Thanks, Sylvain & Florian.

I wasn't aware that MITRE offered this option. I didn't want to send
email to them as I could no be certain if they own the CVE and as
putting random support burden on a closed list is worse than putting
it onto an open list IMO.

Will do.

On Sat, Aug 8, 2020 at 12:41 PM Sylvain Beucler <beuc@beuc.net> wrote:
>
> Hi,
>
> On 08/08/2020 10:49, Richard Hartmann wrote:
> > I could not find out which organization has
> > reserved CVE-2020-16248 so I decided to send email to this list to
> > inform the organization, enabling them to update their records.
>
> I would suggest reaching MITRE:
> https://cve.mitre.org/cve/update_cve_entries.html
> - "Request an update to an exiting CVE entry"
> - Type: "Rejection"
>
> They'll either do the update or point you to the assigning CNA.
>
> Most likely they'll mark the issue as "DISPUTED" within a few business days.
>
> Cheers!
> Sylvain



-- 
Richard
