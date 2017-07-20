X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1390" "Wednesday" "19" "July" "2017" "20:37:08" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty049uuDeiUBxUpjvuGwotmHe80W5Qh+fU9drN3w5fat7A@mail.gmail.com>" "43" "Re: [oss-security] Re: ATutor CVE-2017-1000002, CVE-2017-1000003, CVE-2017-1000004" "^Cc:" nil nil "7" "2017072002:37:08" "[oss-security] Re: ATutor CVE-2017-1000002, CVE-2017-1000003, CVE-2017-1000004" (number mark "        kseifried@re Jul 19   43/1390  " thread-indent "\"Re: [oss-security] Re: ATutor CVE-2017-1000002, CVE-2017-1000003, CVE-2017-1000004\"\n") "<20170719125900.igfqq3i2bt3qwqep@tunkki>" ("<20170716120139.ivmlgyaqwxrp2mhl@tunkki>" "<CAD3CancmhjKRJd1oXmxpFXp3vUB7Q_rFNAyduavPUtKE_9gycg@mail.gmail.com>" "<20170719125900.igfqq3i2bt3qwqep@tunkki>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32013 invoked by uid 550); 20 Jul 2017 02:37:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31991 invoked from network); 20 Jul 2017 02:37:21 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=eHRCNefq1w/5Lh6k4xiNezeG45MU+Sv8gyTh9hUcVQ0=;
        b=st9YE3CyGm2JOLYACj9SmV1xTeG/lC+7vNdM/gA2R7PzFlEs30fTO9as3CWXjrXGa2
         T8eZLvhKlWpnaz79qiDZ3y8pmF8rDqd4x4AqcRJvV/CkRWm5ae89cqutYSUcu8MJBsEl
         /LiQd40lcuxkUW5SvQzEzVt6YLxNveiNVghW8oK8QLgpufwaY8O7z4LIHmsEcdwxN6vm
         vAccRrTMvTUVfldhRJXDjisc9nHCiLxKD/s4t2LG3mYSPhnYCk4TKp8XNrQXT9/ufbLr
         /CTKLMWpMSsg3aQ91qTq4k3cwbr0+qtsLlsJ3LDDJXD9bJ7O4pEzx25C+CRDjafKt2nc
         imEQ==
X-Gm-Message-State: AIVw113NzMktrl/3z43kZF4KlpNwl0JAXXCUXkACCnEDHhaSNUneM8JY
	BcFRG2cxClji+aSjHjOJ3/Ws/47q3eXD5v9yMg==
X-Received: by 10.200.37.146 with SMTP id e18mr2829438qte.251.1500518229432;
 Wed, 19 Jul 2017 19:37:09 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170719125900.igfqq3i2bt3qwqep@tunkki>
References: <20170716120139.ivmlgyaqwxrp2mhl@tunkki> <CAD3CancmhjKRJd1oXmxpFXp3vUB7Q_rFNAyduavPUtKE_9gycg@mail.gmail.com>
 <20170719125900.igfqq3i2bt3qwqep@tunkki>
Message-ID: <CANO=Ty049uuDeiUBxUpjvuGwotmHe80W5Qh+fU9drN3w5fat7A@mail.gmail.com>
Content-Type: multipart/alternative; boundary="001a11c0ef180b73570554b6a004"
Cc: Matthew Daley <mattd@bugfuzz.com>, Kurt Seifried <kurt@seifried.org>
Date: Wed, 19 Jul 2017 20:37:08 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: ATutor CVE-2017-1000002, CVE-2017-1000003, CVE-2017-1000004
To: oss-security <oss-security@lists.openwall.com>

--001a11c0ef180b73570554b6a004
Content-Type: text/plain; charset="UTF-8"

Feel free to modify it and submit a pull request!

https://github.com/distributedweaknessfiling/DWF-CVE-Database/tree/master/2017/1000xxx

also I submit the dwf data to mitre but we're having some teething problems.

On Wed, Jul 19, 2017 at 6:59 AM, Henri Salo <henri@nerv.fi> wrote:

> On Wed, Jul 19, 2017 at 11:37:28PM +1200, Matthew Daley wrote:
> > On 17 July 2017 at 00:01, Henri Salo <henri@nerv.fi> wrote:
> > > Is this assigment somehow related to this oss-security post?
> > > http://www.openwall.com/lists/oss-security/2016/07/01/3
> >
> > Yes.
>
> Thanks for your reply and clearing this up. One of the points in my email
> was
> that this is not documented in the DWF item well enough. There is
> description_data with value, but no referer to oss-security, which should
> also
> use those issue numbers. Should the assigner or requester post this
> information
> to oss-security aswell or is the point that DWF is followed via GitHub with
> custom scripts? If someone makes a pull request to the item is the
> information
> populated to MITRE and NVD databases and how often?
>
> --
> Henri Salo
>



-- 

Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a11c0ef180b73570554b6a004--
