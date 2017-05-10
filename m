X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["720" "Wednesday" "10" "May" "2017" "07:32:46" "-0400" "Insu Yun" "wuninsu@gmail.com" "<CAGoFzNdT-DJpZNs8TOpC-e8viGTrDNE4uQs8rR7v0YrhEQTAvQ@mail.gmail.com>" "22" "Re: [oss-security] CVE Request: Denial of Service in Dropbox lepton" nil nil nil "5" "2017051011:32:46" "[oss-security] CVE Request: Denial of Service in Dropbox lepton" (number mark "U       wuninsu@gmai May 10   22/720   " thread-indent "\"Re: [oss-security] CVE Request: Denial of Service in Dropbox lepton\"\n") "<CAGoFzNfv6-Ubx7-6t7rOdA_sU06hE=8UhxpCJG8w5xSocgH9rg@mail.gmail.com>" ("<CAGoFzNekm3g7bFwOAktu0i+BAif6ej=StbHh5M9ZOwswNQNqZw@mail.gmail.com>" "<20170510061953.GA3445@hunt>" "<CAGoFzNfv6-Ubx7-6t7rOdA_sU06hE=8UhxpCJG8w5xSocgH9rg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10042 invoked by uid 550); 10 May 2017 11:32:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10011 invoked from network); 10 May 2017 11:32:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=OXL+P9ZbxT5DpyU4ODduArRAH0SuPymp+0JunanPX8o=;
        b=K603yCgznjcolf/rb0vrCNuCISE1LQA6PnsWjrGk2ceQLd7fkuUb5WgsnqCeojh33E
         VvNBMlfetCAfvcgszG0rjHRy67bnEAtVJVDbI5sSUPUg+Q5aMclIwQI6Xopt+K+nDQ4h
         oSytzDrHml+UNu7RTiyYNw0dE/HgeZ7hYM/Ax8yXplh26abLgvcoSXA2Se8jxh/P/G0I
         qSEfQdUT8KNHBRIIPFi9WMLNQUUvACQaZlR7+OzZ9mDCiCbLCAT2GgLAazhV91FwMM4n
         RKiUjgWajZU2WSbyaf1GJe+UfqSseipkVdWzIcdprLAvxUOYy3cXp6E+xYpoYpJ2m2Q9
         TtmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=OXL+P9ZbxT5DpyU4ODduArRAH0SuPymp+0JunanPX8o=;
        b=QG+gCt2kBWblHywVe8q5/boft4BK89rjqQJLnhiPTTwvxSGACgg8++CE8RddbS79aF
         +0YXj7MEbKHLRmIUGaS0uVUtrS9OVCNOzq02CVx/ZSagIXo00UP/Mp63/zaydS4g0U4Y
         rz0sY8OJMwOfOX43VzZm93AjI4SDregGmHDis4xhzj2xZEbqrCpi8R0qRQMJA+rGIiMg
         QGs+6/bsj5ZkN2xRKxuZq5POtJidvcmGg5FJyUg5AlAW+SHWulLWbri4CYcp1EpJE7d2
         IAIAOaDuf+EOXOSbBt0VUJVe8visYXBoGvEoBKGusL/XDMdGpgcJVnLeiVxRoLoZqBtG
         UYtA==
X-Gm-Message-State: AODbwcAanoiS6P4EINmORqCx5G3M6uWG8wH5BW/uBTKWhqrgh0hI4WOK
	a1BQZA6+Cnjol7nIaPD/wlbliWEMnA==
X-Received: by 10.159.48.151 with SMTP id j23mr2480809uab.12.1494415967238;
 Wed, 10 May 2017 04:32:47 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAGoFzNfv6-Ubx7-6t7rOdA_sU06hE=8UhxpCJG8w5xSocgH9rg@mail.gmail.com>
References: <CAGoFzNekm3g7bFwOAktu0i+BAif6ej=StbHh5M9ZOwswNQNqZw@mail.gmail.com>
 <20170510061953.GA3445@hunt> <CAGoFzNfv6-Ubx7-6t7rOdA_sU06hE=8UhxpCJG8w5xSocgH9rg@mail.gmail.com>
From: Insu Yun <wuninsu@gmail.com>
Date: Wed, 10 May 2017 07:32:46 -0400
Message-ID: <CAGoFzNdT-DJpZNs8TOpC-e8viGTrDNE4uQs8rR7v0YrhEQTAvQ@mail.gmail.com>
To: oss-security@lists.openwall.com, Yeongjin Jang <Yeongjin.jang@gatech.edu>
Content-Type: multipart/alternative; boundary=f403045dadaadfc366054f29d471
Subject: Re: [oss-security] CVE Request: Denial of Service in Dropbox lepton

--f403045dadaadfc366054f29d471
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Oh, thank you, Seth!

Sent from a mobile. Excuse my typo.

2017. 5. 10. =EC=98=A4=EC=A0=84 2:19=EC=97=90 "Seth Arnold" <seth.arnold@ca=
nonical.com>=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=B1:

On Tue, May 09, 2017 at 11:55:10PM -0400, Insu Yun wrote:
> Please help assign a CVE to this vulnerability.

Hello Insu, CVE assignment is now handled via the web form at
https://cveform.mitre.org/ -- fill out the details that you can, and
when you get a response from the MITRE team (often within a dozen hours)
please forward details about open source tools to this list.

Thanks

--f403045dadaadfc366054f29d471--
