X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["916" "Friday" "14" "February" "2020" "11:15:02" "+0100" "Francis Perron" "francisp@google.com" nil "24" nil "^Date:" nil nil "2" nil nil (number mark "        francisp@goo Feb 14   24/916   " thread-indent "\"Re: [oss-security] CVE for program distributing vulnerable components ?\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE for program distributing vulnerable components ?" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16317 invoked by uid 550); 14 Feb 2020 11:12:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16209 invoked from network); 14 Feb 2020 10:15:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=HKm71vBKNWEfegMElIyIlc0gvErW7wYRUW3qVVoGpio=;
        b=l9byeP2eVKCuC8Me+ooMxTugq8yzc2E0kY7ZcN3+wxHfSt2/0SxqdBM/xsgS4tXe+K
         GaBrwc/mXFREvp7MBQwg4i1fZOMb2ymQcisqOmbIsAzdqMt4qGAZ71r+tqFdunXGDZem
         vQAhcjfD98wh7fdK5e4GAuUaa0GD2bkin2+NzPdlPeO6YjutwLTywloBgBALjXuTiyew
         tzbDYngKajSqkLB+g33uDSSY2AcLRr/9JiCKTyk7wshyquodDJ+Fb24+6FAC9g9pjuNn
         1evMIqyVH/hSVPsR3hMRchHMQwqLgWFveOvlnvXF9Hiormu80pC4RDTk/WZuIpmtnadb
         B05Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=HKm71vBKNWEfegMElIyIlc0gvErW7wYRUW3qVVoGpio=;
        b=Izj0bGZSpXOCJ2dgmY/WyrDjAaqLLbLuUajnyvHAeEtBFzIUNDZJ7RDmRNEImU3I/p
         GCoajoHx6aiw9k3WO/wNhH5dgNFPwR6bHcoJno4NawmrIAELBuD00Qr93xqlRdGfROYe
         2vOd0AX3bec9KhFmjey+Vrm3M2UhXr+cQ4T0XGuqF3uhCJ2/P7CGzPfIX/vmlwAHhlRk
         sVKgHRrjOvxZbSXW2GYsSbzZx1s5kY18CRVSnCqrlwdfJHpWgtklu0+V188ipDRQ1g3z
         hoYI2kuDsWrnFwWbZOyetC3jOC938zLjwqDOSaXQ7DPH+4LLFiPOkXLvUX2cHiJfCmZs
         IAMA==
X-Gm-Message-State: APjAAAWikZekEugClNNDO8oiZ44S7KXELObBxeZdGL0X3HSavzxYPpb2
	GqHr+VUvTYkRiTi00bmFxDJQyAo8MpAz169Vqs9H1ZbBEtE=
X-Google-Smtp-Source: APXvYqz/iTCiP87LxYKPNEuHA47y+6EDXk2KAj2zZfhHFmjHSvZnTulVSZ7sWBCdvqA8yRIirf1kEsiV46pHoUHHStE=
X-Received: by 2002:a50:eb95:: with SMTP id y21mr2060618edr.212.1581675338852;
 Fri, 14 Feb 2020 02:15:38 -0800 (PST)
MIME-Version: 1.0
References: <CAKLkiYfrmPFHgMgO7g1Ez770=AYpyO4xucMVz7svw7mzqhpK3w@mail.gmail.com>
 <20200214095455.GA579322@espresso.pseudorandom.co.uk>
In-Reply-To: <20200214095455.GA579322@espresso.pseudorandom.co.uk>
Message-ID: <CAKgU3W9T6XHWjWHjQ4Yz6KiiVpVuxJKDF6e_n83oAPLZqn=Vnw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Fri, 14 Feb 2020 11:15:02 +0100
From: Francis Perron <francisp@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE for program distributing vulnerable components ?
To: oss-security@lists.openwall.com

On Fri, Feb 14, 2020 at 10:55 AM Simon McVittie <smcv@debian.org> wrote:
>
> On Fri, 14 Feb 2020 at 00:11:00 +0100, security minded wrote:
> > I've identified a program whose installer contains components with known
> > CVEs. Should one or several CVE be asked for the installer itself ?
>
> The CVE IDs for the individual vulnerable components are enough to
> describe the vulnerability. You don't need new CVE IDs to describe the
> fact that the installer installs vulnerable components.

To echo Simon's points:

Usually, if the code owner (here, the installer's) can fix it in their
own code to avoid the vulnerability, then you can reach out to ask for
a CVE. That being said, CVE issuing is a subjective science, and the
CNA you end up dealing with may decide not to issue one if it is
already dealt with in the underlying libraries.


Good luck!

-- 
Francis Perron
  Vulnerability Coordination @ Google inc.
