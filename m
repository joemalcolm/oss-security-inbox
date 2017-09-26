X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4001" "Tuesday" "26" "September" "2017" "14:08:51" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty0sexAh7diVoJgCi2XH=GqpnRF4jDff=trZ0sDDyiU0yg@mail.gmail.com>" "99" "Re: [oss-security] Linux kernel CVEs not mentioned on oss-security" "^Date:" nil nil "9" "2017092620:08:51" "[oss-security] Linux kernel CVEs not mentioned on oss-security" (number mark "        kseifried@re Sep 26   99/4001  " thread-indent "\"Re: [oss-security] Linux kernel CVEs not mentioned on oss-security\"\n") "<alpine.GSO.2.20.1709261422390.12755@scrappy.simplesystems.org>" ("<EB502BBD-AA97-4FC5-A0E7-D148B0E33FF7@lanl.gov>" "<1978278.8CZP0B31Sj@wanheda>" "<alpine.GSO.2.20.1709261217310.12755@scrappy.simplesystems.org>" "<CANO=Ty21NECXP_c4SiJ0ajbvi7wQFyA1RnyWeS0qu9e=sPQuYQ@mail.gmail.com>" "<alpine.GSO.2.20.1709261422390.12755@scrappy.simplesystems.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19771 invoked by uid 550); 26 Sep 2017 20:09:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19745 invoked from network); 26 Sep 2017 20:09:03 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=6mBIw1x6hDhWhqsYKe2s0lryXymcZny8zIjjmul7Hec=;
        b=HksRkyYa5B7pm5pT+GTC3C8tDKqy/K/KDvh1o2rIHsb/lQyphdQevQYJexFiCb1rjx
         um4jLyUe6UlZSzvFBVwFtcJFCE366emPxFXHIt2uWzRQhPDQ8a3ez9E3KRv5OIw74jqm
         NcGji1V1gF3yhsbr0U+kt/bAplkzH0XcBZ4LqSFsm/bfjBtXAx60Cx0Dqd/EcBIc3JdS
         E5RFSz1EoCssbL/QewdbNQglItwH+/CdnUuuU0jCf8CS05WXJdbxvpkskZ/dlIGgROHm
         Wm5VPGNNxLSzfGkC9Hsu4Qw4Nw4wmOkHozmWUcdvzXZDJtDdo54uzFH2tqPdk7xxHPgj
         w2Sw==
X-Gm-Message-State: AHPjjUj2XReQkO+18Sam0os9wBJY23e1RVvlwQfdlgSsbaZ9KnwTVs9e
	xOuJmbVKsIfYc1ol2ZmyGpPEFezCHqrgp3a45S4LUJOYaOE=
X-Google-Smtp-Source: AOwi7QBpHO+OBfqcKS2tTj1RJLyXlYjQu499sO5Z3nDUckF1oLwu914OzHquzmquxWFmh682DDHRrEyVNjuDzvUbat0=
X-Received: by 10.157.81.132 with SMTP id y4mr3071529otg.9.1506456531650; Tue,
 26 Sep 2017 13:08:51 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <alpine.GSO.2.20.1709261422390.12755@scrappy.simplesystems.org>
References: <EB502BBD-AA97-4FC5-A0E7-D148B0E33FF7@lanl.gov>
 <1978278.8CZP0B31Sj@wanheda> <alpine.GSO.2.20.1709261217310.12755@scrappy.simplesystems.org>
 <CANO=Ty21NECXP_c4SiJ0ajbvi7wQFyA1RnyWeS0qu9e=sPQuYQ@mail.gmail.com> <alpine.GSO.2.20.1709261422390.12755@scrappy.simplesystems.org>
Message-ID: <CANO=Ty0sexAh7diVoJgCi2XH=GqpnRF4jDff=trZ0sDDyiU0yg@mail.gmail.com>
Content-Type: multipart/alternative; boundary="f403043d7ba8705558055a1d3e0a"
Date: Tue, 26 Sep 2017 14:08:51 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel CVEs not mentioned on oss-security
To: oss-security <oss-security@lists.openwall.com>

--f403043d7ba8705558055a1d3e0a
Content-Type: text/plain; charset="UTF-8"

On Tue, Sep 26, 2017 at 1:40 PM, Bob Friesenhahn <
bfriesen@simple.dallas.tx.us> wrote:

> On Tue, 26 Sep 2017, Kurt Seifried wrote:
>
> On Tue, Sep 26, 2017 at 11:31 AM, Bob Friesenhahn <
>>
>>>
>>> It is incredibly difficult for most non-commercial upstreams to do this
>>> since they have limited manpower, they are not informed of all the
>>> applicable CVEs, and the CVE information received is essentially hearsay,
>>> received from unknown/unverifiable sources.  I am thinking that it is
>>> best
>>> for most non-commercial upstreams to not mention CVEs at all.
>>>
>>>
>> Uhm. Where to begin. Ok, well for one thing just because we can't have
>> 100%
>> perfect coverage doesn't mean we should simply give up. Also CVE's aren't
>> "hearsay", they are claims based, with evidence being needed (the stronger
>> the claim, the more likely you are to get a CVE), especially in the open
>> source world where I typically require a link to either the vuln code, or
>> the code patch in order to give a CVE to something (if you can't tell me
>> what code is vuln, in open source, then chances are you need to understand
>> the vuln more before we CVE it up, exceptions of course can be made, e.g.
>> when someone has a reproducer that works reliably).
>>
>
> I did not mean that the CVE itself is "hearsay".  What I meant is the way
> an upstream maintainer is informed about a CVE is often no better than
> "hearsay".  In some cases the information comes from someone who is already
> known and trusted while in other cases it is impossible to even tell who is
> providing the information since the person providing the information has
> intentionally obfusticated their identity.
>
> If an upstream maintainer reports that a release resolves a particular
> CVE, then he could easily have provided wrong information given that the
> upstream maintainer does not have access to the technical details of the
> report and analysis which initiated the CVE and may confuse one issue with
> another.
>
> It may be that the upstream maintainer fixes a problem and some weeks
> later the CVE is created related to the problem which was fixed.


One aspect of CVE is "did you tell the upstream", we really want people to
not just get CVEs, but to also work with upstream (assuming they're
reasonable people) and coordinate the fixes/etc (CVEs are nice, CVEs with
patches are even nicer). If the researchers are getting CVEs and not
telling the upstreams, or worse they are and getting no response, then at
least the stuff will show up in the CVE database and non upstream people
can deal with it.


>
>
> You can check the CVE Database? There is the official MITRE one:
>> cve.mitre.org and the DWF for Open Source (and yes, I lag in submissions
>> to
>> MITRE) at https://github.com/distributedweaknessfiling/DWF-CVE-Database/
>> in
>> both cases the CVEs will have reference link(s) that ideally point to the
>> upstream making it easy to match up.
>>
>
> The database entries do not contain enough information for an upstream
> maintainer to identify one issue from another similar issue.  They only
> contain sanitized information.


That should not be happening, you may want to read
https://cve.mitre.org/cve/editorial_policies/counting_rules.html but TL;DR:
each CVE should have enough info to be specifically identifiable. If you
have example to the contrary please let me know. Some of the initial DWF
ones are a bit messy I'll grant (it's an experiment/work in progress), but
I've worked on ensuring that new ones are cleaner going forwards.


>
>
> Bob
> --
> Bob Friesenhahn
> bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
> GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
>



-- 

Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--f403043d7ba8705558055a1d3e0a--
