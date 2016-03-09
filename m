X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["998" "Wednesday" "9" "March" "2016" "11:07:19" "-0800" "Reed Loden" "reed@reedloden.com" "<CALPTtNWU0mG2XOphpRXQGUeLsvGe1N-etNFtVBdDWONAoT7RtA@mail.gmail.com>" "30" "Re: [oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies" "^Cc:" nil nil "3" "2016030919:07:19" "[oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies" (number mark "        reed@reedlod Mar  9   30/998   " thread-indent "\"Re: [oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies\"\n") "<E1adjOu-0005MK-Kx@rmm6prod02.runbox.com>" ("<CANO=Ty3pi9EBe-yARnJamWb1hW9p0Bztmj_Gr9SyWyXDqfCLDQ@mail.gmail.com>" "<E1adjOu-0005MK-Kx@rmm6prod02.runbox.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18130 invoked by uid 550); 9 Mar 2016 19:07:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18109 invoked from network); 9 Mar 2016 19:07:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=reedloden.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=4EixnvPA2BQO4j9x17PSRMyYylwEg6OA1iGoRMgvUX0=;
        b=arTohR/cM5OsfZQjkj0bDk0wRmNARw8roMGtFsuiLYPylErFdKJcAUe8AQxIVw7rG+
         B1PBTXVv+7g14mdofTN18CK4sNlbVxkfNPgsHrv8juRV5/twfBvSccLa9nzoM8EnR6Iv
         4iJXiqjBhDooJ4Jj936VN88kmFeoHYzSsQoVU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=4EixnvPA2BQO4j9x17PSRMyYylwEg6OA1iGoRMgvUX0=;
        b=jlYAqCRCqSUrX1bqX15xZLMIWt8kt/ZwxVf+q3wvbHaVjTc1XzULtrFHUAPhwr1d6f
         ip4rOM7V/hL5D8skNPPivSzpbdztZcJ9AElxzy1PVxUH7lwAP0XnCHGXMo1G08FyVlSX
         V0g0bImp6OlvyAWEGXpGz+WT6ruIWbJHRS5KXJINTaFFQawVMWGBlS47jU7jly38JE4p
         DdZPdxMmd01Iz1HxOUu3ZUGPavKsGSHxpYsTC4OBdR9s4rqpL+eRZRkWqP7/qID/bi3e
         1o2zaaYCSpaXn0JQbsVDWl5pU7JeGFgTCiv8XYStwwebl2PNNUVdwxlc23cnf5bDa1JD
         tc4w==
X-Gm-Message-State: AD7BkJLlmHEWk5IMKxY9/8H+ITOrJdkFNPxLTrZcWchUZjvM685Zcv0IvHYfhjprpEPgURLb+IfbYPzQNT6yJs1z
X-Received: by 10.202.201.72 with SMTP id z69mr11662630oif.98.1457550458680;
 Wed, 09 Mar 2016 11:07:38 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <E1adjOu-0005MK-Kx@rmm6prod02.runbox.com>
References: <CANO=Ty3pi9EBe-yARnJamWb1hW9p0Bztmj_Gr9SyWyXDqfCLDQ@mail.gmail.com>
 <E1adjOu-0005MK-Kx@rmm6prod02.runbox.com>
Message-ID: <CALPTtNWU0mG2XOphpRXQGUeLsvGe1N-etNFtVBdDWONAoT7RtA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1134f2b655147e052da269cb
Cc: kseifried <kseifried@redhat.com>
Date: Wed, 9 Mar 2016 11:07:19 -0800
From: Reed Loden <reed@reedloden.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Concerns about CVE coverage shrinking - direct
 impact to researchers/companies
To: oss-security@lists.openwall.com

--001a1134f2b655147e052da269cb
Content-Type: text/plain; charset=UTF-8

Issued to some people, perhaps, but there are plenty of examples of MITRE
not issuing CVEs even after multiple months and pokes. Understand MITRE is
resource constrained, but they are blocking new CNAs as well, which doesn't
help.

Just check out the board list archives (
https://cve.mitre.org/data/board/archives/). MITRE isn't responding at all
to people's concerns.

~reed

On Wed, Mar 9, 2016 at 11:04 AM, David A. Wheeler <dwheeler@dwheeler.com>
wrote:

> All - I've chatted with some of the people who fund the CVE work at MITRE.
> I've learned that CVEs *are* being issued, but obviously that is happening
> too slowly.
>
> They're having a meeting tomorrow (March 10) to try to figure out what
> the problems are and how to fix it.  I don't know what they'll do.
> However, I'm hopeful that  this will mean that the CVE work will get
> back on track soon.
>
> --- David A. Wheeler
>

--001a1134f2b655147e052da269cb--
