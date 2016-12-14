X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1960" "Wednesday" "14" "December" "2016" "08:09:09" "-0700" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty1NvpX_xySmi_oie0U-jHmQF0iOOYoAQ25fOqZOuep54Q@mail.gmail.com>" "62" "Re: [oss-security] why many CVEs are ** RESERVED ** on Mitre" "^Date:" nil nil "12" "2016121415:09:09" "[oss-security] why many CVEs are ** RESERVED ** on Mitre" (number mark "        kseifried@re Dec 14   62/1960  " thread-indent "\"Re: [oss-security] why many CVEs are ** RESERVED ** on Mitre\"\n") "<bbba28f0-baf1-6eb5-3269-db3dc9c2b8ec@geeklan.co.uk>" ("<4ae03741-1f12-9c3b-6243-35f3aa24e67d@enea.com>" "<CANO=Ty18ABwOUHJs+U6OYjEJocDY9gg4702aZEyd7BZS6ZYpJg@mail.gmail.com>" "<bbba28f0-baf1-6eb5-3269-db3dc9c2b8ec@geeklan.co.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32164 invoked by uid 550); 14 Dec 2016 15:09:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32146 invoked from network); 14 Dec 2016 15:09:23 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=86zB/2d8cHjqNYTgbzIljpDxAgHaalmuH3ZYhF0OLoo=;
        b=gjUQ9QIBiJCdjyND/+PIQ2nx/vawN0O6ssw0VaZu+C2nHvbu89sgrDPDQY8GYd2/CT
         IkruP7zCTwwhMs3ikX9OUVmYesm77zya/UWCkSV0atCbJNDRYSDkxuvuNiiiGpSQ6eu4
         OotTmRcdLqRTHkOp4u1sQC3dMbGzB3UcUOyrH1taOeUSzWgarcyWWfOBpNc7Hg4KfWdp
         n0P4fVWX7+Ei0EgZVCGbDfVtdUQgDXznN9GhKKfUb9bH4c31f05iigs1XLeZ3IgNI5U4
         FhXaiTVLgTNQDX0XXV3xDj4J2wsp8KY5DP2xsniJeaQkomef9j5ujfkP6fqJQzpA0//C
         tE7A==
X-Gm-Message-State: AKaTC0298eFjSRvwSASRFoSQnnWW+5iFPKOEjT5fB91EC4Wuhr9ZcwRQ8D3+TnHs42KRFiNmkcmhZ8lvlLm2wxnB
X-Received: by 10.157.24.109 with SMTP id t42mr61529079ott.166.1481728151086;
 Wed, 14 Dec 2016 07:09:11 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <bbba28f0-baf1-6eb5-3269-db3dc9c2b8ec@geeklan.co.uk>
References: <4ae03741-1f12-9c3b-6243-35f3aa24e67d@enea.com>
 <CANO=Ty18ABwOUHJs+U6OYjEJocDY9gg4702aZEyd7BZS6ZYpJg@mail.gmail.com> <bbba28f0-baf1-6eb5-3269-db3dc9c2b8ec@geeklan.co.uk>
Message-ID: <CANO=Ty1NvpX_xySmi_oie0U-jHmQF0iOOYoAQ25fOqZOuep54Q@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1142ebfe19803605439fb874
Date: Wed, 14 Dec 2016 08:09:09 -0700
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] why many CVEs are ** RESERVED ** on Mitre
To: oss-security <oss-security@lists.openwall.com>

--001a1142ebfe19803605439fb874
Content-Type: text/plain; charset=UTF-8

On Wed, Dec 14, 2016 at 7:36 AM, Sevan Janiyan <venture37@geeklan.co.uk>
wrote:

> Hello,
>
> On 14/12/2016 14:24, Kurt Seifried wrote:
> > ** RESERVED ** This candidate has been reserved by an organization
> > or individual that will use it when announcing a new security problem.
> > When the candidate has been publicized, the details for this
> > candidate will be provided.
> >
> > This means that the entry number has been reserved by Mitre for an issue
> or
> > a CNA has reserved the number. So in the case where a CNA requests a
> block
> > of CVE numbers in advance (e.g. Red Hat currently requests CVEs in blocks
> > of 500), the CVE number will be marked as reserved even though the CVE
> > itself may not be assigned by the CNA for some time. Until the CVE is
> > assigned AND Mitre is made aware of it (e.g. the embargo passes and the
> > issue is made public), AND Mitre has researched the issue and written a
> > description of it, entries will show up as "** RESERVED **".
>
> This creates a situation where the Mitre site dose not provide any
> information despite, marking the CVE as reserved despite an official
> advisory for effected software referencing the CVE.
>

So? Also this isn't really the appropriate place for this discussion and
this will be my last reply to this thread.


>
> Somewhat frustrating when performing vulnerability management as the
> mitre URL is self documenting but useless to reference as a source.
>

I would suggest you consider getting involved in helping create CVEs if it
is such an important resource, rather then just being a somewhat classic
"Free rider"

https://en.wikipedia.org/wiki/Free_rider_problem



>
>
> Sevan
>



-- 

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a1142ebfe19803605439fb874--
