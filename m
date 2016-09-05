X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1688" "Monday" "5" "September" "2016" "16:06:10" "-0700" "=?UTF-8?B?RGlvZ28gTcOzbmljYQ==?=" "diogo.monica@docker.com" "<CA+q1=fSNAzwjywo9qnkRyO0S7refmUZFFciMyKcKE6oNoQjRLQ@mail.gmail.com>" "42" "Re: [oss-security] Re: cve request: docker swarmkit Dos occurs by repeatly joining and quitting swam cluster as a node" nil nil nil "9" "2016090523:06:10" "[oss-security] Re: cve request: docker swarmkit Dos occurs by repeatly joining and quitting swam cluster as a node" (number mark "U       diogo.monica Sep  5   42/1688  " thread-indent "\"Re: [oss-security] Re: cve request: docker swarmkit Dos occurs by repeatly joining and quitting swam cluster as a node\"\n") "<CANO=Ty1MwPO8yXAiOyvgrynYrf1=on6wNd5sE6AzPYffyD=-dQ@mail.gmail.com>" ("<CA+q1=fSKUpSWOGusA99-_KkBZOxqjUzVZFSOQECgjAP+QMzuig@mail.gmail.com>" "<CANO=Ty2n6Nus2uJkaJ3OTWrt0wgeOU1zydjAZtABdmp_itpP0g@mail.gmail.com>" "<5309095AF4F10E2D.C7403B94-0E12-4BBF-9F83-04F9E21584CD@mail.outlook.com>" "<CANO=Ty167nS9wG4_wkMDPT_kc4GFo7LLMZHqqhVv3JJNsX-uug@mail.gmail.com>" "<CA+q1=fQRZYp6w5EA1=y+nHULCLpUNZTGGExpYg+n2SD-0sDR8g@mail.gmail.com>" "<CANO=Ty1MwPO8yXAiOyvgrynYrf1=on6wNd5sE6AzPYffyD=-dQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1430 invoked by uid 550); 5 Sep 2016 23:06:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1411 invoked from network); 5 Sep 2016 23:06:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=docker.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=0qX/ykigdb/xj2/HFc3BdajXT1WVUC5B9aISsR8xc+s=;
        b=ef0xj7ILYbjibeCCi+o5JmeHuCRyynHafpt7RpiAjbYF4nVPStJ7WB0wEsSWE572cI
         rues6F+XKCD0YBtFk1TqnQXJU01rfAeQqFqsdXOOEHmAylTUUVhzljfiI6wJSdNSnjOb
         n0ozAD6QGqSFDgQ6u7V37HQcRB9Q5BoXTB6KM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=0qX/ykigdb/xj2/HFc3BdajXT1WVUC5B9aISsR8xc+s=;
        b=fMJcYt0CAFOYa3SGnqc27IvUsf2wTVdZ6/yEcyeCl3OG1J+ywxuQ81+LWvginVqyr7
         zVrvQe+I25XJtg0Zgfel0Ac0xHx6BaIhwuCCA7KQnsj3DA+MABy8jMKnvD0LZMdVGY/a
         mL4xlB0Tjqw3oKiq0kjyH8j6p0BNDtttVN+cwWYjjrVxlax3Cv3uGIBMPauKDYPkD/Hh
         XnFnLsSXkUNj3zxmN9t5qTtC8qpHOrdk/2F07bhJiqhZ7duc33blCGlqbpI2vv0GSjzC
         Fpe1Qhwj09SJkcU5fsOI2VTCKQnHnxHsHNAHN0rLso08tgA6ACcogp8GKSTAB18+1XUe
         M9jw==
X-Gm-Message-State: AE9vXwPDJRXhp7wp/IzE5q4XYYoA7R2GCj7a/VD6WH5XHwzxjNyyNoZn0CVkhaErnqYZnWNFWIfUl8rRIpqkKElh
X-Received: by 10.28.32.207 with SMTP id g198mr7406427wmg.45.1473116791505;
 Mon, 05 Sep 2016 16:06:31 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CANO=Ty1MwPO8yXAiOyvgrynYrf1=on6wNd5sE6AzPYffyD=-dQ@mail.gmail.com>
References: <CA+q1=fSKUpSWOGusA99-_KkBZOxqjUzVZFSOQECgjAP+QMzuig@mail.gmail.com>
 <CANO=Ty2n6Nus2uJkaJ3OTWrt0wgeOU1zydjAZtABdmp_itpP0g@mail.gmail.com>
 <5309095AF4F10E2D.C7403B94-0E12-4BBF-9F83-04F9E21584CD@mail.outlook.com>
 <CANO=Ty167nS9wG4_wkMDPT_kc4GFo7LLMZHqqhVv3JJNsX-uug@mail.gmail.com>
 <CA+q1=fQRZYp6w5EA1=y+nHULCLpUNZTGGExpYg+n2SD-0sDR8g@mail.gmail.com> <CANO=Ty1MwPO8yXAiOyvgrynYrf1=on6wNd5sE6AzPYffyD=-dQ@mail.gmail.com>
From: =?UTF-8?Q?Diogo_M=C3=B3nica?= <diogo.monica@docker.com>
Date: Mon, 5 Sep 2016 16:06:10 -0700
Message-ID: <CA+q1=fSNAzwjywo9qnkRyO0S7refmUZFFciMyKcKE6oNoQjRLQ@mail.gmail.com>
To: oss-security <oss-security@lists.openwall.com>
Content-Type: multipart/alternative; boundary=001a113d66be1221ab053bcabbb5
Subject: Re: [oss-security] Re: cve request: docker swarmkit Dos occurs by
 repeatly joining and quitting swam cluster as a node

--001a113d66be1221ab053bcabbb5
Content-Type: text/plain; charset=UTF-8

>
> DoS is often a gray area. Obviously if I send 10 gigabits of request
> traffic and swarm gets slow/non responsive the CVE response would be "Well
> yeah... that's probably what happens if you saturate the network with
> requests. No CVE for you" but if a single node behaves in an odd way and
> prevents the whole system from working in an expected manner, that may be a
> problem that is worth a CVE, especially if it can be triggered by an
> attacker/less trusted user (classic trust boundary violation to quote
> @sushidude).
>

Again, there is no trust boundary violation. You have a token that allows
you to join an unlimited number of workers. The system supports N workers,
you join N + 1, the system starts rejecting new workers.

No malicious attacker can ever join any workers unless they have the token,
and if you are paranoid, you can always rotate the secret token after each
worker join.


> Regardless of whether this is CVE worthy is there any plan to add rate
> limiting or other protective measures to prevent a single badly
> behaved/malicious node from making the swarm unable to operate normally? I
> don't see any issues in https://github.com/docker/swarm/issues for this.
> Thanks!
>

I don't believe this is the right thread to discuss other topics. I'm here
to get this CVE rescinded, since there is no reason for its existence in
the first place.

If you'd like to discuss any other matters related to docker or swarm, feel
free to do so by either open an issue on our GH repository, or our forums:
https://forums.docker.com.

Thank you,
Diogo Monica

--001a113d66be1221ab053bcabbb5--
