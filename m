X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1646" "Wednesday" "21" "June" "2017" "07:35:34" "-0500" "Josh Bressers" "josh@bress.net" "<CAKoP-y-NnHqx=87K+m_6UibGG3jzFcGNzU=3Y5o52FVLJ75m-g@mail.gmail.com>" "41" "Re: [oss-security] Qualys Security Advisory - The Stack Clash" "^Date:" nil nil "6" "2017062112:35:34" "[oss-security] Qualys Security Advisory - The Stack Clash" (number mark "        josh@bress.n Jun 21   41/1646  " thread-indent "\"Re: [oss-security] Qualys Security Advisory - The Stack Clash\"\n") "<20170619203933.GA910@openwall.com>" ("<20170619152843.GC7769@localhost.localdomain>" "<2a53a138-8f6b-133d-72b2-6dfd5355241a@redhat.com>" "<20170619203933.GA910@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5454 invoked by uid 550); 21 Jun 2017 12:35:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5430 invoked from network); 21 Jun 2017 12:35:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bress-net.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=ZVfASHMad9EPD3huPbMtn5DAnKY3AV3WYCoL+wGQ65s=;
        b=GGBDTmPwQLuJ7CTN8Z9plhbP3qfLS2dGHJSUDWkqN9nvhM7GjFFUen7WbpG/rAW8Xz
         zmxIuPcBURpqoFYihIdUqiAnKSmHkSxKMzNHCSRaye6iJXFwrfE/RwmTgEIqZtWsC/do
         j0+bqGFBQL3xx3KqY9L3ysHyrX3zMnlwolmOfHpNrwKqknfUd3vS5jwA10tF9jdmywK4
         rqYm+EK6+mFncnCPowTyZyM0ftqOXKPpxhzad+6c7LTyojfkIkEr1w/2TT3TWyfLsmFj
         esNkmiBErQmGpq2lnn1SLaCtOoVXq9ZVGF/P6p9Z53WB0YwqOW1jlxvn7tgDaLAke8Yq
         cy5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=ZVfASHMad9EPD3huPbMtn5DAnKY3AV3WYCoL+wGQ65s=;
        b=Dstr9Aj2F6kvVAEqYkDdmMd+8AYcCh1ComUVlxKRl6vgY8vw7mSygTqfu5FCl/CN5Y
         iDTZzK6y426rbN+M0EvDjk0v+9ml+uetSe64bEfukqj6Qi8kisFNC2y5uXxgsaPOHPln
         HDX0tmInLK3bbPMCS0N2570txFEV+LpgUuMAXdPtJls9ybNyBRJlmJn+XJL0eGoGMAKO
         4n823mPMG83biVLkUYv3bX6K6yZ9GXSB2xJHmrfstRwATMZ0wjTY4qrxHduUMX9BJbpp
         fV+bipf/Euxclxx4KssodHAOjNpBf0HsfyHbP/usTO0DSqL3gnFtX6GonJxi+d8eL0lp
         TkEg==
X-Gm-Message-State: AKS2vOzdTGDX/xuZ42QOLeAaS6iXdPIcUlWbbdXnvknzChHNIhVbPqUq
	6N2/oWGghJsbwGFFeZhWZpD5OYtRn2WnQ2w=
X-Received: by 10.80.177.209 with SMTP id n17mr24564156edd.177.1498048535190;
 Wed, 21 Jun 2017 05:35:35 -0700 (PDT)
MIME-Version: 1.0
X-Originating-IP: [174.103.198.38]
In-Reply-To: <20170619203933.GA910@openwall.com>
References: <20170619152843.GC7769@localhost.localdomain> <2a53a138-8f6b-133d-72b2-6dfd5355241a@redhat.com>
 <20170619203933.GA910@openwall.com>
Message-ID: <CAKoP-y-NnHqx=87K+m_6UibGG3jzFcGNzU=3Y5o52FVLJ75m-g@mail.gmail.com>
Content-Type: multipart/alternative; boundary="f403045c0ae6cbf1740552779aac"
Date: Wed, 21 Jun 2017 07:35:34 -0500
From: Josh Bressers <josh@bress.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Qualys Security Advisory - The Stack Clash
To: oss-security@lists.openwall.com

--f403045c0ae6cbf1740552779aac
Content-Type: text/plain; charset="UTF-8"

On Mon, Jun 19, 2017 at 3:39 PM, Solar Designer <solar@openwall.com> wrote:
>
>
> That said, we owe apologies to the community for violating the published
> distros list policy regarding the maximum embargo duration.  Personally
> and as distros list admin, I do apologize for letting this happen.
>
> I think we shouldn't have let it happen.
>
>
I suspect the extended embargo was exactly correct in this instance. Having
a policy you follow no matter what isn't ideal either (in fact it's
probably dangerous).

We've all been through a lot of embargoes, two weeks is more than
acceptable for most of them, it's a very good thing to have a forcing
function when needed. This one was special, nobody can deny that. It was
big, complex, and amazing. It ticked all the boxes. It affected a
substantial portion of the Internet. Had a name. Is a very old bug. Was
very serious. Had a great advisory and organization behind it.

Yet nobody flipped out. It was unexciting.

I suspect it was all so smooth because on Monday because everyone was
ready, everyone knew what was going on. There was no rushing, nothing was
on fire. There was time to develop patches properly. Everyone had their
story straight. It's quite likely if you force a release in two weeks
because that's the rule, someone not ready would create a story where one
shouldn't exist.

I applaud everyone involved. I'm sure there were issues, but I doubt such a
large effort could have gone better. Rules such as this exist to guide us,
don't let them constrain us.

-- 
    JB

--f403045c0ae6cbf1740552779aac--
