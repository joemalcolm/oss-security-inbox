X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1250" "Tuesday" "3" "October" "2017" "09:00:38" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty0NXSozVQfV9hkPkLH2Yc1h1WzGGovG8OpYdvTSX1+Gtw@mail.gmail.com>" "46" "Re: [oss-security] Linux kernel CVEs not mentioned on oss-security" "^Date:" nil nil "10" "2017100315:00:38" "[oss-security] Linux kernel CVEs not mentioned on oss-security" (number mark "        kseifried@re Oct  3   46/1250  " thread-indent "\"Re: [oss-security] Linux kernel CVEs not mentioned on oss-security\"\n") "<20171003112709.GA30134@kroah.com>" ("<1978278.8CZP0B31Sj@wanheda>" "<20170926073214.GA8108@kroah.com>" "<4188502.8b3PN4uBSd@wanheda>" "<20170926150446.GA11530@kroah.com>" "<CAADPF4OszZShcGb+x79UZQzBT3XONwNH6E970MVwrUdXyJDmiw@mail.gmail.com>" "<20170927125149.GA2500@openwall.com>" "<20170927130424.GA19695@kroah.com>" "<20170928073533.mlntvkfnzl6sann7@eldamar.local>" "<20170928143420.GB6123@kroah.com>" "<20170928213721.GA5119@grsecurity.net>" "<20171003112709.GA30134@kroah.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1544 invoked by uid 550); 3 Oct 2017 15:00:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1513 invoked from network); 3 Oct 2017 15:00:51 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=4Qh3Yy+6HMPW1jIbFS7TDLOeHySyj77iC3Djxwe6xAw=;
        b=LHX1gR578BKD1Q902Rdj0kOC2YYVGEJAz1pzEdhLfF5AQXw9oSvmvKo15MSTH+buAY
         8e6k5eNwizh2InKz5LpeH6JTZomkFJDEp14qPuSwJ1FPrJDzfYNYwO9malJSnt786Atm
         EI7GURTD4X2rMQlAAbTMPLw3qOVybJMVvlJnJVgOygGBros8+T1c5Yy4aLh1wvBh/tgr
         ViWHeEGZ2A2kKGtpKOENEoiq0BFarJ++wKY6vNqYrgdq5FCFt5B7rsdAOwNKcTGoc6Cj
         xyafBJGqf3q2DuQW1l8C6WuqUjTYX0QBYJqLpLJmWgtm+1xQZuqqcvy96lY+E/g3G+Yo
         BzCQ==
X-Gm-Message-State: AMCzsaVwAOGziYicHUrGZLJEZUwAFJ/bomOgp1BWxwYdaE/myPfXPX4O
	fAnbjSzmCs6afTATH7SYShWYtm9PqWS52FQme4fGNuSVctM=
X-Google-Smtp-Source: AOwi7QAuVQoI7tFmLGlsDg6VKitLDkdT1fdB4fkSLQXSblMp4WPPhjGOU0qnwTVvqVTf7PR+KY72BBss5+nF53zGAO0=
X-Received: by 10.157.18.211 with SMTP id g77mr2905631otg.375.1507042839462;
 Tue, 03 Oct 2017 08:00:39 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20171003112709.GA30134@kroah.com>
References: <1978278.8CZP0B31Sj@wanheda> <20170926073214.GA8108@kroah.com>
 <4188502.8b3PN4uBSd@wanheda> <20170926150446.GA11530@kroah.com>
 <CAADPF4OszZShcGb+x79UZQzBT3XONwNH6E970MVwrUdXyJDmiw@mail.gmail.com>
 <20170927125149.GA2500@openwall.com> <20170927130424.GA19695@kroah.com>
 <20170928073533.mlntvkfnzl6sann7@eldamar.local> <20170928143420.GB6123@kroah.com>
 <20170928213721.GA5119@grsecurity.net> <20171003112709.GA30134@kroah.com>
Message-ID: <CANO=Ty0NXSozVQfV9hkPkLH2Yc1h1WzGGovG8OpYdvTSX1+Gtw@mail.gmail.com>
Content-Type: multipart/alternative; boundary="94eb2c0c0afe1b9da9055aa5c16b"
Date: Tue, 3 Oct 2017 09:00:38 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel CVEs not mentioned on oss-security
To: oss-security <oss-security@lists.openwall.com>

--94eb2c0c0afe1b9da9055aa5c16b
Content-Type: text/plain; charset="UTF-8"

On Tue, Oct 3, 2017 at 5:27 AM, Greg KH <greg@kroah.com> wrote:

>
>
> Yeah, this one keeps trying to get re-introduced as a "fix", when it
> really isn't (see the archives of the stable@vger mailing list for
> details.
>
> I don't know how you can "reject" a CVE, is there a proceedure
> somewhere?  There's lots of CVEs out there that people create against
> the kernel that just aren't issues at all, but I've been ignoring them
> as it makes people happy to assign and track them for no reason.


> Is there some way a project can get them rejected?
>

As mentioned before, there is the cveform page at https://cveform.mitre.org/
which can be used to update CVEs, including asking for REJECT. Simply chose
"Request an update to an existing CVE entry" then in "Type of update
requested" please choose "Rejection".

AN EASY WAY TO INTERACT WITH CVE TO UPDATE/REJECT/ETC PLEASE IS TO USE THE
CVEFORM.

CVEFORM URL: https://cveform.mitre.org/


>
> thanks,
>
> greg k-h
>



-- 

Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--94eb2c0c0afe1b9da9055aa5c16b--
