X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1593" "Thursday" "30" "July" "2015" "11:58:57" "-0400" "Scott Arciszewski" "scott@paragonie.com" "<CAKws9z2H-fUR8Yw071Lxo4F3VRKKetQNd4g7+dM73SgVRWJi=g@mail.gmail.com>" "38" "Re: [oss-security] A new class of security vulns?" nil nil nil "7" "2015073015:58:57" "[oss-security] A new class of security vulns?" (number mark "        scott@parago Jul 30   38/1593  " thread-indent "\"Re: [oss-security] A new class of security vulns?\"\n") "<55BA43E4.7040506@redhat.com>" ("<55BA43E4.7040506@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20172 invoked by uid 550); 30 Jul 2015 15:59:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20148 invoked from network); 30 Jul 2015 15:59:08 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=bGsLqVIn5FHGYlQLUPfI1ceD3T8TblYLC3qPDP6SxAc=;
        b=XVxdThS0EPy09er/N1wL3l6t7L5qndEE7f+/uHGyzn3m/mdVGMaXKRgmD9k/UlwTM4
         IzfXHbQf4cM9/fUNTrmGRd7sjuIwvbS3A7jILXocdC+QCFoJr7O/oazJ2gGKuZ2dfc25
         3UjVo7sh2EVfkvO49N5Ywid9Q/jmQcAzWWVPTZ26dCSBERMq67qtvuTqC6roQAk8bT96
         sSIfaPGin8UPwptLcwGvw6YeTWN2ll3sSDgUIw9hQ/t2waOpZiV5fUjJq5NFYGZFbNSy
         3gC2PL5deQ/2yqarieqijUtKxwDglZTq3oI1tygc78Ma53wmlR1Ihdvxz2Uann2ShwVK
         lEEw==
X-Gm-Message-State: ALoCoQkORqvYyS6q+KuBxPAvngwyYocD12kNnfkm4xc3JzqawFfTtiKeyxvPtmfN53ju5MTuoLUi
MIME-Version: 1.0
X-Received: by 10.55.31.83 with SMTP id f80mr69902169qkf.2.1438271937083; Thu,
 30 Jul 2015 08:58:57 -0700 (PDT)
In-Reply-To: <55BA43E4.7040506@redhat.com>
References: <55BA43E4.7040506@redhat.com>
Message-ID: <CAKws9z2H-fUR8Yw071Lxo4F3VRKKetQNd4g7+dM73SgVRWJi=g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: Assign a CVE Identifier <cve-assign@mitre.org>
Date: Thu, 30 Jul 2015 11:58:57 -0400
From: Scott Arciszewski <scott@paragonie.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] A new class of security vulns?
To: oss-security@lists.openwall.com

On Thu, Jul 30, 2015 at 11:33 AM, Kurt Seifried <kseifried@redhat.com> wrote:
> So in past we have had vulns around injection of terminal control
> characters into log files:
>
> http://cve.mitre.org/cgi-bin/cvekey.cgi?keyword=terminal+escape
>
> However now I'm seeing flaws around printing/display of user data, e.g.
> systems where a user can set their own name, but fills it with backspace
> characters, so when an admin looks at the text record it is
> mangled/shows something the attacker wants them to see and not the
> "True" data.
>
> An example of this is:
>
> https://fedorahosted.org/freeipa/ticket/5153
>
> assuming there are no actual terminal escape sequences allowed, but just
> backspace characters/etc, is this worthy of a CVE? Right now it
> definitely allows manipulation of displayed data, and if an admin cuts
> and pastes it would potentially be just the modified data, so I'm
> thinking there is an integrity impact (not a very big one mind you), but
> it's quite limited (at least as I understand the issue right now).
>
> --
> Kurt Seifried -- Red Hat -- Product Security -- Cloud
> PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
> Red Hat Product Security contact: secalert@redhat.com

How would you exploit it? By adding a special command to someone's
terminal inputs (i.e. a backdoored version of fixubuntu.org that adds
a public key to /root/.ssh/authorized_keys) and then hiding it
afterwards?

It's worth exploring, but I'm not sold on the practicality.

Scott Arciszewski
Chief Development Officer
Paragon Initiative Enterprises <https://paragonie.com>
