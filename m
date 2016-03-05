X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3019" "Saturday" "5" "March" "2016" "15:25:49" "-0500" "Adam Caudill" "adam@adamcaudill.com" "<CAFJuDmMn+tNjYrcJXQoLokV-sPJphBRE-1OGWn_WYjtRoDfCoA@mail.gmail.com>" "70" "Re: [oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies" "^Cc:" nil nil "3" "2016030520:25:49" "[oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies" (number mark "        adam@adamcau Mar  5   70/3019  " thread-indent "\"Re: [oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies\"\n") "<20160305172039.GA20796@openwall.com>" ("<CANO=Ty3u964Yax4jMPkwDEiWj=S5TBQdGKarKyicVAk2Ec+Hxw@mail.gmail.com>" "<56D9DD1F.1030302@cert.org>" "<20160305172039.GA20796@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26355 invoked by uid 550); 5 Mar 2016 20:26:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26337 invoked from network); 5 Mar 2016 20:26:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=adamcaudill.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=9KQ89dVb1XYf91TUBpk0A4rjzAMKAWuAyIAqRGdpUoU=;
        b=I/Ad5fVi+QTMsibwCPwU4jrRIb6rpfICW5dHQSZjwXokS6fHBAGRS2/cRPRHACwIfR
         tM1Z4VNIaEuPi16Eg/81RoNRAofJbWbCxWD0/n3NnLPc6oUUf15wrFuU5NWPA52+2BKr
         3jWvpGAE2DdL4BFifxl2Yn1iHwOzXl62uplPI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=9KQ89dVb1XYf91TUBpk0A4rjzAMKAWuAyIAqRGdpUoU=;
        b=Fi7oQOB0JC3m5Gta8tn8jMC2nDlEsUy9AbEANVs5FE9sT0S68CCfKplCtfKi+wT/29
         J8sK3RBktFLGOAnN6sstUmdxLVUqL0t3X7J7aN1JakwJ1pt9ieUS5yPtzSBeNX3c9sKn
         m/j+ku9xo6hpCJMXozz1PQL9f7oOkWu1wAmldMbu7U4muccxNY3ZEUPpGk8CP8b8qbHL
         416o67uI1A4AMp+VOwKh8OOeNJGRhWpM0grrY3LbhfkMEFmO/DHIe8cUqpszQSeYCKxi
         dAkkzWaTzDQPo1B5wjEIRjLZWvu78mbEWcMM02pseEiczxU7pEF4Kbxma8Oao7mSIpnU
         MZtQ==
X-Gm-Message-State: AD7BkJLSCfW/9WqtJRZvTl+Irh/ur3KSgHllAkX/GejGwOoacGr2uRKtyOc2YJCY0ar1d6Gune9emzQ9HqCBgQ==
X-Received: by 10.112.173.71 with SMTP id bi7mr5190351lbc.93.1457209569587;
 Sat, 05 Mar 2016 12:26:09 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20160305172039.GA20796@openwall.com>
References: <CANO=Ty3u964Yax4jMPkwDEiWj=S5TBQdGKarKyicVAk2Ec+Hxw@mail.gmail.com>
 <56D9DD1F.1030302@cert.org> <20160305172039.GA20796@openwall.com>
Message-ID: <CAFJuDmMn+tNjYrcJXQoLokV-sPJphBRE-1OGWn_WYjtRoDfCoA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: cve-editorial-board-list <cve-editorial-board-list@lists.mitre.org>
Date: Sat, 5 Mar 2016 15:25:49 -0500
From: Adam Caudill <adam@adamcaudill.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Concerns about CVE coverage shrinking - direct
 impact to researchers/companies
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

I very much like the idea of being able to get an ID instantly - it
greatly simplifies an otherwise time consuming process. That said, I
can see some issues with OVE:

* No Lookup - For a customer, going from OVE to what it represents
could be complicated. It depends entirely on the researcher or vendor
publishing a reference for that ID.

* Invalid Entries - As noted, there's no way to see if a given ID is
considered valid, and while there is value to just having an ID, this
model makes later curation more difficult. With no information behind
the ID, there's no opportunity to later expand into a more complete
solution.

Here is what I would like to see:

* Simple ID Request - Data required should be minimal, though I think
a few basic items are needed. Perhaps vendor, product, version(s),
title, and contact information. Optionally, the requestor should be
able to provide their GPG public key, a detailed description,
reference URL(s), etc. The ID should then be instantly issued, and
given a status of assigned.

* Simple Updates - The requestor should be able to easily add / update
information as research, vendor coordination, etc. proceeds. Vendors
should have a similar mechanism to provide additional information.
Prior to publishing, a few additional items should be required, such
as the detailed description, if not included in the original request.

* Curation & Publishing - At the point that the requestor is ready to
publish the issue (may be at the time of the initial request, such as
the requests that we normally see on this list, or at a later time
after working with the vendor), they can request publication, and this
is where curation comes into play. This is the first point where
someone other than the requestor and vendor have a role to play. This
could be handled in a number of different ways - most likely review
the information listed and if there is confirmation of the issue (the
code that is vulnerable, a change log, or other vendor confirmation),
then it is published and all the information is then made public.

There are various points here where additional services could be added
as time goes on, vendors could register their contact information
which could allow them to be automatically notified when a new entry
is added for one of their products. Could offer assistance in
contacting unresponsive vendors, etc. - it is important though to
focus on automated functionality. I suspect that excessive manual work
is one of the main reasons that CVE has failed to meet the needs of
the community.


--Adam Caudill
http://adamcaudill.com


On Sat, Mar 5, 2016 at 12:20 PM, Solar Designer <solar@openwall.com> wrote:
> On Fri, Mar 04, 2016 at 02:08:15PM -0500, Art Manion wrote:
>> I think it's been said on this list previously -- these are two separate
>> activities:
>>
>> 1. Assigning IDs
>
> Problem solved:
>
> http://www.openwall.com/ove
>
>> 2. Analysis, deconfliction, write-up
>
> Having IDs is of some use even without or before all of that.
>
> Alexander
