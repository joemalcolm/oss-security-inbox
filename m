X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1956" "Thursday" "18" "January" "2018" "17:06:04" "+0000" "Gynvael Coldwind" "gynvael@coldwind.pl" "<CAAnPYQ4Ck7uzf7FFOJX-H1GDOtnHDbXyZ_mzYztSK8O6DF4y7Q@mail.gmail.com>" "50" "Re: [oss-security] How to deal with reporters who don't want their bugs fixed?" "^Date:" nil nil "1" "2018011817:06:04" "[oss-security] How to deal with reporters who don't want their bugs fixed?" (number mark "        gynvael@cold Jan 18   50/1956  " thread-indent "\"Re: [oss-security] How to deal with reporters who don't want their bugs fixed?\"\n") "<07f40446-1917-893c-2a87-b0d7990579b2@redhat.com>" ("<07f40446-1917-893c-2a87-b0d7990579b2@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20077 invoked by uid 550); 18 Jan 2018 17:08:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14117 invoked from network); 18 Jan 2018 17:06:28 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=Ez5NxM7iev//EBMSTgr3VIQ4yHA6tlX5Oj8NxNKFx9E=;
        b=Yu+LFEENFaGz1I92mqvqT9aWmVgHX9+gF7tYQnk/m/EOPadUnxsAsQnBMy/Wyoq/G9
         +o+5y+Al9tqaHwXKObUYKWFLGq50FK0gXv2MgFnGOzxpiPWePzw17+4wm0iDj4+MfOuu
         GMAZ0YrACGNlEU76Gf/lhnYWDkMNbUKgROovI6Kt9sK4Z+a8bKgUna1+/hSAfk4nPm/7
         UkFZaoo9rX2npKKQP5R0dr78UxuVydf9DDRpQN3Lfd8qZPRSwyxh5lGwHxj7BFQf0AQT
         8zB3ZZCc8xkwUs23eUzmEjg6xQvPJ7AQ9mOr8vrSNxusIYervrIpS+p5TVWVjEr8LwyO
         Y+3w==
X-Gm-Message-State: AKwxytfkINIxmE6wFsQ5N6cW452JMVGUaWf4SJHTkcQ6AjdFKGvVWOgV
	A8PVOq3XRTArCFB1q4I3nQ6koRFc8+V855EFAS1vCw==
X-Google-Smtp-Source: ACJfBov1H1KmdKHt/VtWpjL4DTP+Sgej6GuGDvyNXLLxv8ZYaUWZro9BkbZ8ZFabt0U+bt2kyItLeEx5F5z+o7C7BHM=
X-Received: by 10.223.138.205 with SMTP id z13mr6577846wrz.230.1516295176598;
 Thu, 18 Jan 2018 09:06:16 -0800 (PST)
MIME-Version: 1.0
References: <07f40446-1917-893c-2a87-b0d7990579b2@redhat.com>
In-Reply-To: <07f40446-1917-893c-2a87-b0d7990579b2@redhat.com>
Message-ID: <CAAnPYQ4Ck7uzf7FFOJX-H1GDOtnHDbXyZ_mzYztSK8O6DF4y7Q@mail.gmail.com>
Content-Type: multipart/alternative; boundary="001a11401158603c2c05630ffb1e"
Date: Thu, 18 Jan 2018 17:06:04 +0000
From: Gynvael Coldwind <gynvael@coldwind.pl>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] How to deal with reporters who don't want their
 bugs fixed?
To: oss-security@lists.openwall.com

--001a11401158603c2c05630ffb1e
Content-Type: text/plain; charset="UTF-8"

Hi there,

Speaking for myself from a security researcher's perspective, I would say
it depends on the reason for embargo, and what ends up protecting users
better.

There might be valid reasons for embargoes - one example (but not the only
one) is when a given bug affects multiple similar products, and a
disclosure on the side of one product would 0-day users using other
products. It sounds logical to wait until fixes are available before
disclosure (keeping in mind at the same time that a certain sane deadline
must be met too).

On the other hand there are reasons for embargoes which I don't find valid,
where the examples you've given ("paper/conference presentation/patent
submission") fall into this category.
They don't sound as something that would benefit users' security (please
correct me if I'm wrong) and I'm not a big fan of sitting on already
discovered unpatched security bugs (in the end bug discovery might be a
function of time for all we know).

In this case I would consider explaining this to the researcher and
proceeding with patching.
In the end if this causes a given person to report a known-to-them bug just
before a conference/etc it changes little vs. actually waiting for the
proposed just-before-conference/etc deadline anyway (if accepting the
embargo agreement that is).

Cheers,
Gynvael

On Thu, Jan 18, 2018 at 5:11 PM Florian Weimer <fweimer@redhat.com> wrote:

> Subject says it all: What do you do if you receive a vulnerability
> report, and the reporter requests an embargo at some time in the future
> because that's when their paper/conference presentation/patent
> submission is scheduled?
>
> The obvious approach is to find a prior public report of essentially the
> same bug and fix that (which will work surprisingly often), but let's
> assume that this isn't the case.
>
> Thanks,
> Florian
>

--001a11401158603c2c05630ffb1e--
