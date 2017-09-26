X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1614" "Tuesday" "26" "September" "2017" "14:03:30" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty1M0XZw6DT39Lg7oa3sewknn3_WGWoFO3swMQf1UF3CvQ@mail.gmail.com>" "50" "Re: [oss-security] Linux kernel CVEs not mentioned on oss-security" "^Cc:" nil nil "9" "2017092620:03:30" "[oss-security] Linux kernel CVEs not mentioned on oss-security" (number mark "        kseifried@re Sep 26   50/1614  " thread-indent "\"Re: [oss-security] Linux kernel CVEs not mentioned on oss-security\"\n") "<4174873.rEhhimjYuO@wanheda>" ("<EB502BBD-AA97-4FC5-A0E7-D148B0E33FF7@lanl.gov>" "<alpine.GSO.2.20.1709261217310.12755@scrappy.simplesystems.org>" "<CANO=Ty21NECXP_c4SiJ0ajbvi7wQFyA1RnyWeS0qu9e=sPQuYQ@mail.gmail.com>" "<4174873.rEhhimjYuO@wanheda>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5831 invoked by uid 550); 26 Sep 2017 20:04:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5809 invoked from network); 26 Sep 2017 20:04:41 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=9dmEVx7XCTVZM3alUIvOtbwAJY7Pp/+JMMUGuUPcuUQ=;
        b=YwhcLDjhWOZP4y0AAMfCF/a1NhZHXqC/nmh5aQjHVG0pkr0sMJfCf9IO7SuSsidkVn
         4xpwrxp2/L4v3qIUzNxq0r0vZvn1wmV5mUOuG+gMa/LM/X78NScAdxXPzhcLbOA8HkxZ
         xcq+HXDz+xNA63hhgPkPRDRGd/ARrA8fw+BDWZsT2kRTW0sYq69fyDchwzaQ8nN6yIAv
         a2ctRG+MZpNiCWDHu3kxgTXrNq+Kp+kfEyYsTVZlAaQoWom/nPDLIW4oDPw8L7OVG8aH
         i5V5V1p0dLy9IiRUm8TABeBgEr4pxyPGGY5OqE3l3cV4Z9qIp6eRPA+AJrzH/c3y7TZd
         ikBg==
X-Gm-Message-State: AHPjjUjxSo4fJiTCXJkTNBKnIIhVjtxZJsWz5CQ+BDRMPZ4nw5QRaTlJ
	1n1mwP83Q3cO15sgo5vj7nvOKgxn8CKnTn3DpPnhTfx4O6Q=
X-Google-Smtp-Source: AOwi7QAmpCXwj/z4kAleTQ08J7NEPZ8dr3Il23A5h2rvy6qFoU4uxT4418T3GspwSd+JrQ39amtOg+wH37bUvLWBZAU=
X-Received: by 10.157.81.132 with SMTP id y4mr3064805otg.9.1506456269988; Tue,
 26 Sep 2017 13:04:29 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <4174873.rEhhimjYuO@wanheda>
References: <EB502BBD-AA97-4FC5-A0E7-D148B0E33FF7@lanl.gov>
 <alpine.GSO.2.20.1709261217310.12755@scrappy.simplesystems.org>
 <CANO=Ty21NECXP_c4SiJ0ajbvi7wQFyA1RnyWeS0qu9e=sPQuYQ@mail.gmail.com> <4174873.rEhhimjYuO@wanheda>
Message-ID: <CANO=Ty1M0XZw6DT39Lg7oa3sewknn3_WGWoFO3swMQf1UF3CvQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary="f403043d7ba8d7c064055a1d2e6d"
Cc: oss-security <oss-security@lists.openwall.com>
Date: Tue, 26 Sep 2017 14:03:30 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel CVEs not mentioned on oss-security
To: Agostino Sarubbo <ago@gentoo.org>

--f403043d7ba8d7c064055a1d2e6d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

If you see this: PLEASE SUBMIT THE URL AS AN UPDATE TO THE CVE USING THE
CVE FORM (yes, I am shouting).

https://cveform.mitre.org

Choose "Request an update to an existing CVE entry" and then for "Type of
update requested" choose "Update References" and then eneter the CVE #, the
ifo and URL and hit "Submit Request"

TL;DR: Everyone wants the cat to wear a bell, and in past I'll admit we
(the CVE community) didn't make it easy to contribute. Well now we have
made it easy to contribute, so please do.


On Tue, Sep 26, 2017 at 1:07 PM, Agostino Sarubbo <ago@gentoo.org> wrote:

> On marted=C3=AC 26 settembre 2017 20:18:38 CEST Kurt Seifried wrote:
> > You can check the CVE Database? There is the official MITRE one:
> > cve.mitre.org and the DWF for Open Source (and yes, I lag in
> submissions to
> > MITRE) at https://github.com/distributedweaknessfiling/DWF-CVE-Database/
> in
> > both cases the CVEs will have reference link(s) that ideally point to t=
he
> > upstream making it easy to match up.
>
> As pointed out in the past (maybe spender?) the real issue is when there
> is a
> silent fix of a vulnerability where the commit message does not clearly
> state
> about the security implication. Afaik it happens frequently.
>
> --
> Agostino Sarubbo
> Gentoo Linux Developer
>



--=20

Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--f403043d7ba8d7c064055a1d2e6d--
