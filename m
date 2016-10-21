X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1551" "Friday" "21" "October" "2016" "17:49:20" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty3Su3JaEtEvUs4GO=dg8ufpBZsUALaBCD0COW5j67y8-w@mail.gmail.com>" "43" "Re: [oss-security] Requesting membership to linux-distros" nil nil nil "10" "2016102123:49:20" "[oss-security] Requesting membership to linux-distros" (number mark "U       kseifried@re Oct 21   43/1551  " thread-indent "\"Re: [oss-security] Requesting membership to linux-distros\"\n") "<20161021015524.GB23643@buzz.coreos.systems>" ("<20161021013642.GA23643@buzz.coreos.systems>" "<CANO=Ty0UAEvgon1PMdTTp4+7bj5SvpKdSD4Won=7NQXrS-2y2A@mail.gmail.com>" "<20161021015524.GB23643@buzz.coreos.systems>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17630 invoked by uid 550); 21 Oct 2016 23:49:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17612 invoked from network); 21 Oct 2016 23:49:33 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=F9ZUSu8UaS8wLO9DAKaxun0q2vxLd02ApJky4Jru0QM=;
        b=h3GWG/tT5XmL3x3qhCBxqQu8meBUKue+faZ1YrbuSUHxLIyAmhz67Jng18hzTXle5A
         ID4HS+siEa64ujbzYh5Hqhj7bXMqf/Sr+VIWSXk3qcG0VuN2KYiznVKYcZ1iN5jzMvFm
         5Z3qlef+REqdBhZys4qipnMdBMi5OnkZ5B51g4DUe/f3FZa6HB+kFaXrj4/YiMNg/92E
         fdXavyWJT3YMBzGVOjZ4soxSJEtZ+nMHSj3STfRxTXVfvG8zzJfvpahQj77FPT2XNfqG
         fwv5mnS+2PDxRJKIQfFOPLNNLEabyV2Fj+1bTkR2FAZj1cBAzUyyXBghVKWmVrVHCX2p
         njAA==
X-Gm-Message-State: AA6/9RmSqXl+2fTOLqRCTUESQh7Y9o7kjQRPl8+pgCtK6J/QeLCw9lDTFBWwiaX++1jvfThmYDYzKKKpgNDcBS39
X-Received: by 10.202.54.2 with SMTP id d2mr12688659oia.145.1477093760999;
 Fri, 21 Oct 2016 16:49:20 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20161021015524.GB23643@buzz.coreos.systems>
References: <20161021013642.GA23643@buzz.coreos.systems> <CANO=Ty0UAEvgon1PMdTTp4+7bj5SvpKdSD4Won=7NQXrS-2y2A@mail.gmail.com>
 <20161021015524.GB23643@buzz.coreos.systems>
From: Kurt Seifried <kseifried@redhat.com>
Date: Fri, 21 Oct 2016 17:49:20 -0600
Message-ID: <CANO=Ty3Su3JaEtEvUs4GO=dg8ufpBZsUALaBCD0COW5j67y8-w@mail.gmail.com>
To: oss-security <oss-security@lists.openwall.com>
Content-Type: multipart/alternative; boundary=001a113cd270ecbece053f68b09b
Subject: Re: [oss-security] Requesting membership to linux-distros

--001a113cd270ecbece053f68b09b
Content-Type: text/plain; charset=UTF-8

It looks like CoreOS is shipping Linux and respecting the various licenses
in a volume sufficient to make sense for them being given access to the
Linux distros list, and shipping security updates (I would say they could
benefit from shipping advisories, but they put the CVE's in the ChangeLog
so I really can't complain). Assuming they can handle embargoed issues (do
you have private bug tracking/code repos/CI/whatever else you need to ship
an update?) I would have no objections to them joining the Linux distros
list. Can you confirm you have infrastructure to handle embargoed issues?
If yes I guess it's up to Solar to add you.

On Thu, Oct 20, 2016 at 7:55 PM, Alex Crawford <alex.crawford@coreos.com>
wrote:

> On 10/20, Kurt Seifried wrote:
> > On Thu, Oct 20, 2016 at 7:36 PM, Alex Crawford <alex.crawford@coreos.com
> >
> > wrote:
> > I found a security page: https://coreos.com/security/ but it only
> mentions
> > some upstream security. I can't find any security advisories, the
> closest I
> > can find is a few blog postings. Do you have an advisory page?
>
> Not at the moment (though, it's been on my mind for a while). The
> closest thing we have is the release notes which will call out CVEs.
> e.g. https://coreos.com/releases/#1122.3.0
>
> -Alex
>



-- 

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a113cd270ecbece053f68b09b--
