X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1058" "Wednesday" "14" "December" "2016" "10:31:58" "-0700" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty0ctOG9PkjbY6UTeZ8JAcwodHzuC5bLZfbq6yN99TP86g@mail.gmail.com>" "41" "Re: [oss-security] why many CVEs are ** RESERVED ** on Mitre" "^Date:" nil nil "12" "2016121417:31:58" "[oss-security] why many CVEs are ** RESERVED ** on Mitre" (number mark "U       kseifried@re Dec 14   41/1058  " thread-indent "\"Re: [oss-security] why many CVEs are ** RESERVED ** on Mitre\"\n") "<73d6ef38-3520-6229-5701-abc842cfa97f@geeklan.co.uk>" ("<4ae03741-1f12-9c3b-6243-35f3aa24e67d@enea.com>" "<CANO=Ty18ABwOUHJs+U6OYjEJocDY9gg4702aZEyd7BZS6ZYpJg@mail.gmail.com>" "<bbba28f0-baf1-6eb5-3269-db3dc9c2b8ec@geeklan.co.uk>" "<CANO=Ty1NvpX_xySmi_oie0U-jHmQF0iOOYoAQ25fOqZOuep54Q@mail.gmail.com>" "<73d6ef38-3520-6229-5701-abc842cfa97f@geeklan.co.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23698 invoked by uid 550); 14 Dec 2016 17:32:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23674 invoked from network); 14 Dec 2016 17:32:10 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=7DnrswIWVdbbZ+eX8P0Hm24xStKOLqwpq4tnJfRVAME=;
        b=Qc3/J+ujayhSbim/BKu07oCS5ayAUvTyNnRIv5vbT4ShLLzAKZ1FX6K4GGuBC/UCbS
         ilnO2FbGdQ8/Ki6dd2vJTm4kPhjPl1lKLEmwAngQtAX915TTKGtukFaBfK69qo6ou1q4
         atlOHnrGxYSGuutSY8GVLvQphpkgTTkq2fvbOuPhS+t8YJi8aBmSfmPdb0B21rwgJjwd
         lyKii/xuLlwM9/cfmEzyOXx8EwMyetjjlgTkxJIbZxdiG9X/Vfk5V5LGJcynUbPjzYuE
         ni6iVAGW8HQPFLsO/Q30IgY86RgJZyXRO+ziGNwsv2nNpblugfxd8RvTuPIh5zV691xU
         AqfQ==
X-Gm-Message-State: AKaTC00+3i71PLW1B9KUsm2rutD5hfS3ow9QBYF4P322Qd0ULrSuQdvdnGRbhPQBDocYyEuogPxBAz6Lowy2V7FL
X-Received: by 10.202.51.8 with SMTP id z8mr52840373oiz.79.1481736718492; Wed,
 14 Dec 2016 09:31:58 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <73d6ef38-3520-6229-5701-abc842cfa97f@geeklan.co.uk>
References: <4ae03741-1f12-9c3b-6243-35f3aa24e67d@enea.com>
 <CANO=Ty18ABwOUHJs+U6OYjEJocDY9gg4702aZEyd7BZS6ZYpJg@mail.gmail.com>
 <bbba28f0-baf1-6eb5-3269-db3dc9c2b8ec@geeklan.co.uk> <CANO=Ty1NvpX_xySmi_oie0U-jHmQF0iOOYoAQ25fOqZOuep54Q@mail.gmail.com>
 <73d6ef38-3520-6229-5701-abc842cfa97f@geeklan.co.uk>
Message-ID: <CANO=Ty0ctOG9PkjbY6UTeZ8JAcwodHzuC5bLZfbq6yN99TP86g@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113cd2b2c1bad10543a1b68c
Date: Wed, 14 Dec 2016 10:31:58 -0700
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] why many CVEs are ** RESERVED ** on Mitre
To: oss-security <oss-security@lists.openwall.com>

--001a113cd2b2c1bad10543a1b68c
Content-Type: text/plain; charset=UTF-8

On Wed, Dec 14, 2016 at 8:17 AM, Sevan Janiyan <venture37@geeklan.co.uk>
wrote:

>
>
> On 14/12/2016 15:09, Kurt Seifried wrote:
> > I would suggest you consider getting involved in helping create CVEs if
> it
> > is such an important resource, rather then just being a somewhat classic
> > "Free rider"
> >
> > https://en.wikipedia.org/wiki/Free_rider_problem
>
> Would creating CVEs help with the reservations of already disclosed CVEs?
>
>
What would help is getting involved in CVE, something I'm working on, keep
an eye on #cvementor and https://cvementor.org (just a collection form
currently). Also if you want to create CVEs you need to request them
through a CVE Numbering Authority (CNA), for Open Source you can ask here,
or via https://iwantacve.org/


>
>
> Sevan
>



-- 

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a113cd2b2c1bad10543a1b68c--
