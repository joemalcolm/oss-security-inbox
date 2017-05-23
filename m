X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2289" "Tuesday" "23" "May" "2017" "08:43:25" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<e1edcfd7-0547-c5c5-004e-fd6ade086b2e@redhat.com>" "50" "Re: [oss-security] How to request a CVE for open source projects" "^Cc:" nil nil "5" "2017052314:43:25" "[oss-security] How to request a CVE for open source projects" (number mark "        kseifried@re May 23   50/2289  " thread-indent "\"Re: [oss-security] How to request a CVE for open source projects\"\n") "<20170522222804.2bc86921@jabberwock.cb.piermont.com>" ("<1495476334.15944.2@mail.igalia.com>" "<20170522185720.GA13059@suse.de>" "<20170522194526.GC63527@wopr>" "<0D4054EB-CA8D-4E33-9DFE-A83E253AA96B@redhat.com>" "<20170522234408.GA7465@wopr>" "<6c663f3b-985d-083e-8b00-d428e34b2e29@redhat.com>" "<20170523011349.GA10335@wopr>" "<66f867c6-a0da-52da-657b-b7ca4a8ee07d@redhat.com>" "<20170522222804.2bc86921@jabberwock.cb.piermont.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11822 invoked by uid 550); 23 May 2017 14:43:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11798 invoked from network); 23 May 2017 14:43:39 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:reply-to:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language;
        bh=75heVYk+S52DYqz33zNw6rjyc1zB0OjwqaVLnQ7bBpU=;
        b=SlzyG1K04+1AKCopab5A9+HBpPSaNiaSYolNv/HaMfmruJoVMB36LcEvqMDWX5xsb7
         5xLqRsj37x3sy5BLcoM/dDOf+lRT/Mn0cPoov+iG1pZycrl0jUR7NmBPXN5MjiTvB0cj
         7lwJLeLOIdUcRI4lqDzDVNnVimLJP3lsadiiA4bHUtT50p4fd9ebjE5/tCs4cygscQMu
         muliwV3sqxW5ygIypdslkk1iKE1sMNtvg1Z0Ne14CO+gSA1A5afgcag9kU0IaJjv+Akc
         YA80syeYs4FnwfB8TLynVwlmkJwrVzJZKPg/yre4UNsodhuGAjqfo2kBCwwYn4bsI8YS
         ZPFg==
X-Gm-Message-State: AODbwcBO1F61VbkZdsGF9XwTuE01g71MsHaIGE6fBRxrj5AGhHhnPC3k
	YOs76w8qQgL/tR9262jeWQ==
X-Received: by 10.36.87.84 with SMTP id u81mr3355655ita.35.1495550607374;
        Tue, 23 May 2017 07:43:27 -0700 (PDT)
References: <1495476334.15944.2@mail.igalia.com>
 <20170522185720.GA13059@suse.de> <20170522194526.GC63527@wopr>
 <0D4054EB-CA8D-4E33-9DFE-A83E253AA96B@redhat.com>
 <20170522234408.GA7465@wopr>
 <6c663f3b-985d-083e-8b00-d428e34b2e29@redhat.com>
 <20170523011349.GA10335@wopr>
 <66f867c6-a0da-52da-657b-b7ca4a8ee07d@redhat.com>
 <20170522222804.2bc86921@jabberwock.cb.piermont.com>
Message-ID: <e1edcfd7-0547-c5c5-004e-fd6ade086b2e@redhat.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
 Gecko/20100101 Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <20170522222804.2bc86921@jabberwock.cb.piermont.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-GB
Cc: oss-security@lists.openwall.com
Date: Tue, 23 May 2017 08:43:25 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] How to request a CVE for open source projects
To: "Perry E. Metzger" <perry@piermont.com>



On 2017-05-22 8:28 PM, Perry E. Metzger wrote:
> On Mon, 22 May 2017 20:04:41 -0600 Kurt Seifried
> <kseifried@redhat.com> wrote:
>>> Primarily, freeform discussion of the sort that occurred on this
>>> list as a natural outcropping of the CVE request process led to
>>> people linking to verification code, temporary mitigations,
>>> highlighting of incomplete fixes, and the sort of information
>>> that was requested earlier in this thread.  This ability to
>>> easily chip in to ongoing situations wasn't just useful for mitre
>>> staff doing CVE work, it was also useful for the "community of
>>> practice" looking for the latest information regarding
>>> self-defense.  I've prevented more than one attack thanks to a
>>> one-off reply from someone in response to a CVE request.=20=20=20=20
>> You can still do this. oss-security is a list run by Solar Designer
>> (openwall.com). I happen to be a long time poster/moderator, but I
>> have no official control/etc (I don't even block posts, that's up
>> to solar, I just allow stuff or ignore it when it's up for
>> moderation).
> Maybe after CVEs are assigned the forms could be emailed to the list
> as a replacement for the old request emails, to kick off
> discussion and alert people to their existence?
>
> Perry
The primary goals of the DWF are:

1) Creating CVE Mentors that can do CVE assignments, train other CVE
Mentors, and help create CNAs
2) Creating CNAs for OpenSource so CVE assignments happen as close to
the vulnerability as possible
3) "retail" CVE assignments (e.g. people using iwantacve.org)
4) Publishing that data to MITRE quickly as per the CNA guidelines, and
the community in general (so at a minimum you can just monitor github,
there may be more options moving forwards)

And that's basically it. If people want to monitor the CVEs the DWF
assigns and run a git to email gateway essentially they are welcome to
assuming they get Solar's approval (it's his list so his rules), but
it's out of scope for the DWF at this point.

If people want the cat to have a nice bell they may have to step up and
actually put a bell on the cat.

--=20
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com


