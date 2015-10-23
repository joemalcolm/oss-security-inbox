X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1850" "Friday" "23" "October" "2015" "10:39:50" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty1DejyNjY5SHGSpbADx+Ece9B6+N837HqTkzecJaABKvQ@mail.gmail.com>" "53" "Re: [oss-security] Re: Duplicate CVE: CVE-2015-7703 in NTP" nil nil nil "10" "2015102316:39:50" "[oss-security] Re: Duplicate CVE: CVE-2015-7703 in NTP" (number mark "        kseifried@re Oct 23   53/1850  " thread-indent "\"Re: [oss-security] Re: Duplicate CVE: CVE-2015-7703 in NTP\"\n") "<20151023160608.06B6D52E093@smtpvbsrv1.mitre.org>" ("<874mhidqhp.fsf@redhat.com>" "<20151023160608.06B6D52E093@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15763 invoked by uid 550); 23 Oct 2015 16:40:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15730 invoked from network); 23 Oct 2015 16:40:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat_com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=MBuo7IHPnBFZ+hxiHKnmFR8tawBQu6kUIsyfc2QzaJE=;
        b=eQsokMeG/7kA3UYbmfwMdtis3rTianWhP97I4h4gIhIAFQc1w+5dE4dCXuc3T9Wpz0
         Ue1obqWcSvLwuGZEkQeQJS6nWPjV8pP5bctu0UYx3GWsFCDaULAL7XjVXmwWiJHpyiFl
         KD9lWOCP5aE63v4Lk5cBv2KCaLhwMby5T3BeIKwVBYgr9VwfQaZ7EcubzwuPtfnQv44m
         L7rSAwNxuh71HPLPyIgdO+IuDKH2/g4bj0w+K5/rL8RB/n1oyrxNTEfFN03MWB3yBFSQ
         lC33uRu1rsPUzASOTCH39quAAJgtCfbKqK5xMlOtQqJy4CmaApczsUK54dqU4nS283t/
         rWSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=MBuo7IHPnBFZ+hxiHKnmFR8tawBQu6kUIsyfc2QzaJE=;
        b=gIKMzxPcUziIFYZyuW3iCHc+1RvORIgbO1GRd/P+SM4AsvVRWYimz+rzeHIzyAKF0+
         vIZMihOdk5Ei/ujURJHSaBG+MXB8PLiTXBEEdEmv95sfFoIoCVZDPOT90NCx03/tN/TO
         IdjD6nYft+67Srvz00anxLj27xTFKWgB06QiAY48ko40N6WhHYxcugVOEK7GDEewfebN
         QxAZX/KTArfjBv+yx/dIZDewFjvSq6yEISYxC7azzAYtmF8bbw7omsbdA2LvhSA8uFr8
         B4JlEGltjW5Q9kVla2db2Dm1AolZ/Z/H5kGscYsnET9k7hMqxCXRCQU2jzkatA8KjpHt
         Yz/g==
X-Gm-Message-State: ALoCoQn/i1NE96JSBT/+f2UTuM3J+GZFBmlRgz2miGNtj42I4RD9KI9GOzftntvQzFkoU1AOXJVT
MIME-Version: 1.0
X-Received: by 10.13.206.7 with SMTP id q7mr17943464ywd.47.1445618390798; Fri,
 23 Oct 2015 09:39:50 -0700 (PDT)
In-Reply-To: <20151023160608.06B6D52E093@smtpvbsrv1.mitre.org>
References: <874mhidqhp.fsf@redhat.com>
	<20151023160608.06B6D52E093@smtpvbsrv1.mitre.org>
Message-ID: <CANO=Ty1DejyNjY5SHGSpbADx+Ece9B6+N837HqTkzecJaABKvQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a114da68aaa50610522c84238
Cc: Martin Prpic <mprpic@redhat.com>, CVE ID Requests <cve-assign@mitre.org>
Date: Fri, 23 Oct 2015 10:39:50 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Duplicate CVE: CVE-2015-7703 in NTP
To: oss-security <oss-security@lists.openwall.com>

--001a114da68aaa50610522c84238
Content-Type: text/plain; charset=UTF-8

On Fri, Oct 23, 2015 at 10:06 AM, <cve-assign@mitre.org> wrote:

> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>
> > It seems that NTP upstream has also requested a CVE (and had one
> > assigned) for this issue:
> >
> > Bug 2902 : CVE-2015-7703 configuration directives "pidfile" and
> "driftfile" should only be allowed locally. (RedHat)
> > [
> http://support.ntp.org/bin/view/Main/SecurityNotice#October_2015_NTP_Security_Vulner
> ]
> >
> > However, Red Hat assigned CVE-2015-5196 to this issue when it was first
> > discovered:
> >
> > https://bugzilla.redhat.com/show_bug.cgi?id=CVE-2015-5196
> >
> > Can CVE-2015-7703 please be rejected?
>
> Actually, we have rejected CVE-2015-5196 and are keeping CVE-2015-7703.
>
> This is a case where we have a long-standing published policy (see the
> http://cve.mitre.org/cve/editorial_policies/duplicates.html page) and
> our implementation of step 1 chose CVE-2015-7703.
>
> We will update our internal documentation for CVE assignments to
> further emphasize the possibility that a CVE ID may have already been
> assigned outside of MITRE, to try to avoid this type of unfortunate
> situation in the future.
>
>
> I'm going to also ensure we communicate our CVE's to upstreams, I could
swear we did in this case but I can't find a specific artifact (e.g. sent
email) of doing so from myself (but quite often I just assign the CVE and
other people are handling the issue so that wouldn't be to abnormal) so I'm
going to go on the assumption we failed to do so properly and update our
process as well to ensure we do.



-- 

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a114da68aaa50610522c84238--
