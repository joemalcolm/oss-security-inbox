X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1988" "Monday" "26" "February" "2018" "10:47:49" "+0530" "Sahil Dhar" "sdhar@securityinnovation.com" "<CA+=eHdR-Ym0O0kpxbjSPpNYqMhp3nCKUBHQh8GtjV4AKbJavUg@mail.gmail.com>" "85" "[oss-security] Re: [ANNOUNCE] CVE-2018-1286 - Apache OpenMeetings - Insufficient Access Controls" nil nil nil "2" "2018022605:17:49" "[oss-security] Re: [ANNOUNCE] CVE-2018-1286 - Apache OpenMeetings - Insufficient Access Controls" (number mark "U       sdhar@securi Feb 26   85/1988  " thread-indent "\"[oss-security] Re: [ANNOUNCE] CVE-2018-1286 - Apache OpenMeetings - Insufficient Access Controls\"\n") "<CAJmbs8iN5uwxxs3wWvJGkBsbe026yiyeGup1w=UrmtxnV-Orfg@mail.gmail.com>" ("<CAJmbs8i241-OvnTKwC=Z-GmaNaV5BB9PwmXw668BKsamLiwntQ@mail.gmail.com>" "<CA+=eHdTkJv3e+=M_oUEhiQk8tXxrNJohHMytNTskvkcbG9tieA@mail.gmail.com>" "<CAJmbs8iN5uwxxs3wWvJGkBsbe026yiyeGup1w=UrmtxnV-Orfg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23574 invoked by uid 550); 26 Feb 2018 12:41:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28201 invoked from network); 26 Feb 2018 05:18:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=securityinnovation.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=VIX5UzXG2B10ri2agOzIL3CxaHyjR4t+TSTUxgL9pNs=;
        b=Dyasqr5QBtdP1SssNDej4mjRvdjafzADww8LB7bOOLwhBPUUQnL1m3buwkfaTFG0I3
         7VZHrJIvCGyKb5wQDCjIMtCgIQit9q+03T9LnJVoEv2t8uV4LPBnyNzCkl6L7TLOcePe
         XLZh6yslwmUj67VWQQiCRsL+26sCP2x3RcCTY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=VIX5UzXG2B10ri2agOzIL3CxaHyjR4t+TSTUxgL9pNs=;
        b=omGL/9jyq6E6gHnNbiYiKA+PgL2LP/OaEqpvamQF1OH2D6Zi1xzosyupLTwKo7Wib3
         xdI0LrQ5yRfIqEVhZxdOAmvmJ+BE/s/soa39/zeEooVneK7R8Q4cmnYWYAXOZxWUYjHd
         +o8Kx9wTVlVXP6lGPNr4PmWPqjX7kSSIoVIfa8zmyWcHRNue9783wTPSXvCozGvFtkpv
         gTCpoA9toHbTdScl4O/xuyDCgh3r/ocuybb5eanhITEVwzpd+/JRx0KFSAKvZOGxoIzP
         dRM2Oq8w1UuDt8pM2fqfXJo3ScWxi0FvESdO4T4MUJBz6fIdrVK3ZBBxnSrL4Xmywoqa
         8nCA==
X-Gm-Message-State: APf1xPCgPnk8RGXzZhF10Zk1A/23Ux609cL8v5mjQOTXPWKBU3x+POp1
	4OY0HjMtrb4zvMPUqjM623kCTN/v7ceu4pB2em0iDA==
X-Google-Smtp-Source: AG47ELsWSqHHZMwpud69qIWfJmEbLF8/io+OklC9jRtfovJIzJ6ofrKwzp5OPEclZGNtC2HgABJvpEGDPTdAqSyLkiY=
X-Received: by 10.31.238.195 with SMTP id m186mr6861088vkh.92.1519622270033;
 Sun, 25 Feb 2018 21:17:50 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CAJmbs8iN5uwxxs3wWvJGkBsbe026yiyeGup1w=UrmtxnV-Orfg@mail.gmail.com>
References: <CAJmbs8i241-OvnTKwC=Z-GmaNaV5BB9PwmXw668BKsamLiwntQ@mail.gmail.com>
 <CA+=eHdTkJv3e+=M_oUEhiQk8tXxrNJohHMytNTskvkcbG9tieA@mail.gmail.com> <CAJmbs8iN5uwxxs3wWvJGkBsbe026yiyeGup1w=UrmtxnV-Orfg@mail.gmail.com>
From: Sahil Dhar <sdhar@securityinnovation.com>
Date: Mon, 26 Feb 2018 10:47:49 +0530
Message-ID: <CA+=eHdR-Ym0O0kpxbjSPpNYqMhp3nCKUBHQh8GtjV4AKbJavUg@mail.gmail.com>
To: Maxim Solodovnik <solomax666@gmail.com>
Cc: security@openmeetings.apache.org, 
	Openmeetings user-list <user@openmeetings.apache.org>, dev <dev@openmeetings.apache.org>, 
	user-russian@openmeetings.apache.org, oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="94eb2c14c252992f38056616a1da"
Subject: [oss-security] Re: [ANNOUNCE] CVE-2018-1286 - Apache OpenMeetings - Insufficient
 Access Controls

--94eb2c14c252992f38056616a1da
Content-Type: text/plain; charset="UTF-8"

Hi Maxim,

I got your point, however, the description seems to be stating that only
version *3.0.0* is affected instead of *<=4.0.1*.


CVE-2018-1286 - Apache OpenMeetings - Insufficient Access Controls
Severity: Medium

Vendor: The Apache Software Foundation

*Versions Affected: Apache OpenMeetings 3.0.0*

* Versions Affected: <= 4.0.1  (Corrected)*

Description: CRUD operations on privileged users are not password protected
allowing an authenticated attacker to deny service for privileged users.
CVE-2018-1286

The issue was fixed in 4.0.2
All users are recommended to upgrade to Apache OpenMeetings 4.0.2


Thanks,
~ Sahil

On Mon, Feb 26, 2018 at 10:43 AM, Maxim Solodovnik <solomax666@gmail.com>
wrote:

> I have analyzed the code
> Wysiwyg editor was introduced in 3.0.0
> and it was vulnerable from the very beginning
> So all versions are affected :(
>
> On Mon, Feb 26, 2018 at 12:10 PM, Sahil Dhar
> <sdhar@securityinnovation.com> wrote:
> > Hi Maxim,
> >
> >
> > I just noticed that there is a typo in the CVE-2018-1286 description, as
> it
> > states that the affected version is 3.0.0. However, the vulnerability was
> > reported for 4.0.1 release. Can you please update it?
> >
> > Thanks,
> > ~ Sahil
> >
> >
> >
> >
> >
> >
> > On Sun, Feb 25, 2018 at 5:20 PM, Maxim Solodovnik <solomax@apache.org>
> > wrote:
> >>
> >> Severity: Medium
> >>
> >> Vendor: The Apache Software Foundation
> >>
> >> Versions Affected: Apache OpenMeetings 3.0.0
> >>
> >> Description: CRUD operations on privileged users are not password
> >> protected allowing an authenticated attacker to deny service for
> >> privileged users.
> >>
> >>
> >> The issue was fixed in 4.0.2
> >> All users are recommended to upgrade to Apache OpenMeetings 4.0.2
> >>
> >> Credit: This issue was identified by Sahil Dhar of Security Innovation
> Inc
> >
> >
>
>
>
> --
> WBR
> Maxim aka solomax
>

--94eb2c14c252992f38056616a1da--
