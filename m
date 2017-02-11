X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2002" "Friday" "10" "February" "2017" "22:44:48" "-0500" "Adam Caudill" "adam@adamcaudill.com" "<CAFJuDmNbvyh=qy__VTjOP9PuL158E8ENeRN+Fx7ciSCwTCoc4w@mail.gmail.com>" "37" "Re: [oss-security] MITRE is adding data intake to its CVE ID process" "^Date:" nil nil "2" "2017021103:44:48" "[oss-security] MITRE is adding data intake to its CVE ID process" (number mark "        adam@adamcau Feb 10   37/2002  " thread-indent "\"Re: [oss-security] MITRE is adding data intake to its CVE ID process\"\n") "<20170211001023.cfe5enzugromqdm6@sentinelchicken.org>" ("<e159bb7e5d3a4352be4cc9c401b0e081@imshyb02.MITRE.ORG>" "<616FD56C-60C1-48B6-983B-08FBD515343D@lanl.gov>" "<20170210205916.GB28439@hunt>" "<D999895D83BF47489B7647E60E228B4702FE7609@EX10MBOX05.pnnl.gov>" "<20170210224910.neeqi3e5265dgnxh@sentinelchicken.org>" "<MWHPR01MB2237C510B601793B63595572F1440@MWHPR01MB2237.prod.exchangelabs.com>" "<20170211001023.cfe5enzugromqdm6@sentinelchicken.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26523 invoked by uid 550); 11 Feb 2017 04:23:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30518 invoked from network); 11 Feb 2017 03:45:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=adamcaudill.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=GPPJKWhkemEo9IG9+PBUhQOm0DQIQihRhpMdF2x7czg=;
        b=n6zUnlO9it4kpkIA3ui9GGl75PQn2/eJFamIJucW046kJ6HWeBhH9f4q72Df2Tk9eb
         ishz66DLRaIlIDFnbX7tm/blSpPkAnMpgzhTP77LJ8Tc3ltstxjOdcEWzsF3A1dsmOeo
         nBWd3ILApezz27Ox0G9EhAj56ly3Nge/EVx2k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=GPPJKWhkemEo9IG9+PBUhQOm0DQIQihRhpMdF2x7czg=;
        b=IfdlrrcbxR9QN086P+O8mdmUw+z20k1lfY9pX+5NRdTjJ3zOWxLswhXTM6CGJLl6km
         ngRv3IjzISNPURfrNPwA+yNT7UdNobYqqdbKaftkHwF8gdmTQ7Dl5tqmMUe1yKr2kNkn
         USLsumWCu5txRWaOLoFrz8aEXe22l7pCwCHzrUTzQPUEOD8TC/Uc15z8PRfvgp46I9Ff
         +4HCXp3DoiGHlmdGjbkPBFjLhu67wbzBYTXw2hn3Y6tiY+YA0fX0WpEfrlm/0TQE8iaV
         h2l8cPpgbtaWXkrkzZ8l23wvtCFcfoSrAwnEir+y2o6ax0kiRqag2Wkj41IoznNBzHzH
         8l3Q==
X-Gm-Message-State: AMke39lLHkJoWzRFF0NqJDF3Hu4k0cFnSeMaljbY5ISZhFfrm4pVrTXyzEHRMdDKWOCrQNToq+UDb/3OOlor5Q==
X-Received: by 10.36.127.73 with SMTP id r70mr12105842itc.11.1486784708947;
 Fri, 10 Feb 2017 19:45:08 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20170211001023.cfe5enzugromqdm6@sentinelchicken.org>
References: <e159bb7e5d3a4352be4cc9c401b0e081@imshyb02.MITRE.ORG>
 <616FD56C-60C1-48B6-983B-08FBD515343D@lanl.gov> <20170210205916.GB28439@hunt>
 <D999895D83BF47489B7647E60E228B4702FE7609@EX10MBOX05.pnnl.gov>
 <20170210224910.neeqi3e5265dgnxh@sentinelchicken.org> <MWHPR01MB2237C510B601793B63595572F1440@MWHPR01MB2237.prod.exchangelabs.com>
 <20170211001023.cfe5enzugromqdm6@sentinelchicken.org>
Message-ID: <CAFJuDmNbvyh=qy__VTjOP9PuL158E8ENeRN+Fx7ciSCwTCoc4w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Fri, 10 Feb 2017 22:44:48 -0500
From: Adam Caudill <adam@adamcaudill.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] MITRE is adding data intake to its CVE ID process
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

On Fri, Feb 10, 2017 at 7:10 PM, Tim <tim-security@sentinelchicken.org> wrote:
> - The fact that so many lesser known researchers couldn't get an ID
>   for so long when they asked for one.
>
> - As already discussed, the web form's "Please ensure vendor or
>   product exists in the Products and Sources list".  For an open
>   source project, they give up and outsource the process, which then
>   can't be used for obtaining an ID before release.

Once it's completely up and running, DWF should address these issues.
Researchers and organizations can easily become CNAs under DWF, with
assigned CVE blocks. For OSS, the process of getting a CVE (including
pre-publication) should be much simpler than it has been, especially
in recent years. It's not quite there yet, but Kurt and team have put
a lot of effort into laying the groundwork for a much better solution
than the ad-hoc "send an email and hope" process that we've become
accustomed to.

The old system was far from perfect, as is the interim MITRE web form
- hopefully with the help of the community, DWF will be able to
provide a better process for all involved. For OSS, DWF is the
solution we need to be focused on, and helping it to evolve to suit
the needs of everyone.

> - The most telling though is the entire CNA program, particularly when
>   it allowed only commercial vendors.  If a vendor decides something
>   isn't a problem, they can block or slow CVE assignment.  It's a
>   corruption of service that ought to be for the public benefit.  (And
>   yes, this does happen.)

While I believe that DWF represents a substantial step forward for
OSS, and getting CVEs to those that need them, when they need them; my
feelings on CVEs for commercial software remain rather negative. I've
stopped requesting CVEs for commercial software due to all of the
issues - if I discover something where I believe a CVE is especially
important, I direct the request through CERT/CC or another
origination. But, this is getting off-topic.
