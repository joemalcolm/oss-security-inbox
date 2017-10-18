X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2276" "Wednesday" "18" "October" "2017" "16:55:07" "-0400" "Robert Watson" "robertcwatson1@gmail.com" "<CAOfWR+GW8oR8+uSKeETF3+mzhhzH5-GiRuJr2sGOnhodefHRaQ@mail.gmail.com>" "64" "Re: [oss-security] CVE-2017-8805: Unsafe symlinks not filtered in Debian mirror script ftpsync" "^Date:" nil nil "10" "2017101820:55:07" "[oss-security] CVE-2017-8805: Unsafe symlinks not filtered in Debian mirror script ftpsync" (number mark "        robertcwatso Oct 18   64/2276  " thread-indent "\"Re: [oss-security] CVE-2017-8805: Unsafe symlinks not filtered in Debian mirror script ftpsync\"\n") "<CABMkiz5UkRvC7FRFQ_9nAfG=+gqGXTb-67faWu=s4n=mXghZtA@mail.gmail.com>" ("<20171017162507.e7lx6fbnleugoxxa@waldi.eu.org>" "<CAOfWR+EHYftu3Hqbu0qGvk_kk3au-Gkj_WEH95syC3n-QuNnxg@mail.gmail.com>" "<CABMkiz5UkRvC7FRFQ_9nAfG=+gqGXTb-67faWu=s4n=mXghZtA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11792 invoked by uid 550); 19 Oct 2017 09:31:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27940 invoked from network); 18 Oct 2017 20:56:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=kSshIgWmPPDLqgsjYSRLjqr2gY1pwsb9qCRZuIXuXQ0=;
        b=aR3QpOPJr1DW/zqwQikDJzavERkUpoO/3NLNNQe6ikBq14mO+59KM5Yh4QDZIFmOYe
         d5AMyhfpeBy9/MylyLCxP5T+wLOV/Ke6N/S86vKP+NxuuYZaNyMbecVADvMs1hdOIeLE
         rPQEHZF3LPFgRzFzIDePw+tq+zFOIQNm3ULdVczBXpEsgGIlU3yYOajIPKjuaOd4BQv2
         sOnVSYPMwduIitzJIQf8whaOZ+4D13T+SIkxAQYITM2JRXpIleN3XIL0huW5wsP9qWXw
         iLyECJRbefW/Veq5WzP7ijoganV6hjp5UrJiGeHdApd8N0/UefDPfxQCqdbYQmky6t8O
         rwzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=kSshIgWmPPDLqgsjYSRLjqr2gY1pwsb9qCRZuIXuXQ0=;
        b=XYsofQfEwbhusFLQ8Q8iNdh9+2duwzUtybeYnOPJCu+fXfI4AvDsvsgMHEnQukQWIX
         FYRgJg1w6iUvjjf0Iogafi42IrKW880ZxP5sJpq6Q1zPODqfL6DQWeDPtBTEIS6GYhqZ
         4zTUQRMEeqMji9i/wr0L2toOS8AHvMP6ViLNM6Gj0qNprFeFpiYIEPLzikoF23TyzdRv
         3JIDjQ7xCGAExqZXW9ahexMYBwFiK3RUfsKQTc2m+yBWQ2lvfDbPCp0LqVGNHcsYc193
         asCKheBfeRpbxEo0vtSdtaSZHZLSszd/1QEyyuIRnMrt865WYMIJfSOEWc8OjVuJ9e0v
         OAMA==
X-Gm-Message-State: AMCzsaWbyb8DhsnNlCdIbrdhfSFn4hcjxd/+n1B6u/BAEVCRlpJecdb4
	YJIXAeRNhpdqlztL+UNdSlV0X6YlJJExuxxu7Hs=
X-Google-Smtp-Source: ABhQp+RxV6jUdVtAUZFZhdiJ9Jb0IhPsi8CFy4dWloYlURMQ62+j8+BkJN84XcU51BUx1SOV4uVhLOyolumNZuywX9Y=
X-Received: by 10.28.8.145 with SMTP id 139mr7910610wmi.115.1508360148119;
 Wed, 18 Oct 2017 13:55:48 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CABMkiz5UkRvC7FRFQ_9nAfG=+gqGXTb-67faWu=s4n=mXghZtA@mail.gmail.com>
References: <20171017162507.e7lx6fbnleugoxxa@waldi.eu.org> <CAOfWR+EHYftu3Hqbu0qGvk_kk3au-Gkj_WEH95syC3n-QuNnxg@mail.gmail.com>
 <CABMkiz5UkRvC7FRFQ_9nAfG=+gqGXTb-67faWu=s4n=mXghZtA@mail.gmail.com>
Message-ID: <CAOfWR+GW8oR8+uSKeETF3+mzhhzH5-GiRuJr2sGOnhodefHRaQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary="001a1144497ed2752c055bd87696"
Date: Wed, 18 Oct 2017 16:55:07 -0400
From: Robert Watson <robertcwatson1@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2017-8805: Unsafe symlinks not filtered in
 Debian mirror script ftpsync
To: oss-security@lists.openwall.com

--001a1144497ed2752c055bd87696
Content-Type: text/plain; charset="UTF-8"

May be that this convo should be migrated somewhere else, but I'd really
like to understand how this has anything to do with symlinks. Been
programming Unix/Linux for 30 years but now need to be a real SysAdmin so
need to correct my misconceptions.

Removing the ability for rsync to copy symlinks pointing to targets outside
the mirror tree would greatly cripple it. I need to understand how the
danger is worth the loss of this functionality.

Can you or anyone help me with this?





*Trust in truth keeps hope aliverobertcwatson1@gmail.com
<robertcwatson1@gmail.com>webmaster@civicchorale.org
<webmaster@civicchorale.org>alpha.docsalvager.info
<http://alpha.docsalvager.info>www.CivicChorale.org
<http://www.CivicChorale.org>*

On Wed, Oct 18, 2017 at 9:30 AM, Ben Tasker <ben@bentasker.co.uk> wrote:

> On Wed, Oct 18, 2017 at 1:55 PM, Robert Watson <robertcwatson1@gmail.com>
> wrote:
>
> > Since security is determined by file and directory permissions and
> > ownership, not by symlinks, wouldn't the fact that a malicious user did
> not
> > have permissions to access the symlink's target file/directory prevent
> any
> > harm?
> >
>
> If I'm reading the original correctly, then the user that will access the
> target will be the user your HTTP daemon runs as (so, for sake of example,
> nginx).
>
> There's stuff that will be protected by permissions (for example, you
> shouldn't be able to pull down /etc/shadow - so long as nginx/apache isn't
> running as root), but there are other files that you might consider
> sensitive(ish). Pulling down /etc/passwd would give you a list of known
> good usernames to better target brute-force attempts (for example). Or
> perhaps using it to grab the config file of some dynamic site on the same
> server etc.
>
> So there is potential scope for abuse there, and others probably have
> better imaginations than I do.
>
> The "nice" thing about it is: if an attacker gets access to the upstream
> mirror they still may not be able to mess with the packages themselves (as
> they're signed), but with this they can still potentially be hostile to
> downstream.
>
>
> --
> Ben Tasker
> https://www.bentasker.co.uk
>

--001a1144497ed2752c055bd87696--
