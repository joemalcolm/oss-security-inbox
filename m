X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2213" "Wednesday" "14" "December" "2016" "07:24:19" "-0700" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty18ABwOUHJs+U6OYjEJocDY9gg4702aZEyd7BZS6ZYpJg@mail.gmail.com>" "76" "Re: [oss-security] why many CVEs are ** RESERVED ** on Mitre" "^Cc:" nil nil "12" "2016121414:24:19" "[oss-security] why many CVEs are ** RESERVED ** on Mitre" (number mark "        kseifried@re Dec 14   76/2213  " thread-indent "\"Re: [oss-security] why many CVEs are ** RESERVED ** on Mitre\"\n") "<4ae03741-1f12-9c3b-6243-35f3aa24e67d@enea.com>" ("<4ae03741-1f12-9c3b-6243-35f3aa24e67d@enea.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29854 invoked by uid 550); 14 Dec 2016 14:24:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29827 invoked from network); 14 Dec 2016 14:24:32 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=+Q5ZIag8kCjjiGL6m7AeIpPtr3MY+um/92ssDi1F9GE=;
        b=mdBcyD9LfNhyJVWVjLESAhvUxpq+puIODsjyT7swXa9NpAhgmmRlq2EZJqwOdrv27/
         wqCUVQkpf94Ch8Kfhm1VPkSlobHEUCd4W1An1EzC3hYx1Rs6jChM6FM1qZbxW4WbNMhZ
         iTD/Va7TuQnrsAfY2afE0N4WhkjoYodEu2UgudmIpG0M7dDQW6SX79dMhDuOWH/FoVAk
         ftDCkkKufuUnYnwHY4gp/SfSt9fYKSC6n9sngKnF1Fw9lrZ0kCqTieTLsYx5sM9xgMaI
         O+jN8w1VLHWBJ+v1RKPRFkZgwDwXFV000zrxPszEn7gSSUTgwhtx1DLN6KxC8560i9Oh
         Bs2A==
X-Gm-Message-State: AKaTC029l/KPF8vzkOjDYU1rjQ2H0NbXcFaMytzM9x+cgl4ziMSTWhI6rk8ymjGACcoL1Xf1qTocZO+JCQ2NoOl8
X-Received: by 10.157.47.106 with SMTP id h97mr55052414otb.12.1481725460322;
 Wed, 14 Dec 2016 06:24:20 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <4ae03741-1f12-9c3b-6243-35f3aa24e67d@enea.com>
References: <4ae03741-1f12-9c3b-6243-35f3aa24e67d@enea.com>
Message-ID: <CANO=Ty18ABwOUHJs+U6OYjEJocDY9gg4702aZEyd7BZS6ZYpJg@mail.gmail.com>
Content-Type: multipart/alternative; boundary=94eb2c032d54b7a98005439f1765
Cc: CVE ID Requests <cve-assign@mitre.org>
Date: Wed, 14 Dec 2016 07:24:19 -0700
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] why many CVEs are ** RESERVED ** on Mitre
To: oss-security <oss-security@lists.openwall.com>

--94eb2c032d54b7a98005439f1765
Content-Type: text/plain; charset=UTF-8

On Wed, Dec 14, 2016 at 1:44 AM, Sona Sarmadi <sona.sarmadi@enea.com> wrote:

> Hi again,
>
> Does anyone know why Mitre lists many CVEs ** RESERVED ** while they are
> public (e.g. curl CVEs below)?
>

As per
https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures#Description

Description[edit]
This is a standardized text description of the issue(s). One common entry
is:

** RESERVED ** This candidate has been reserved by an organization
or individual that will use it when announcing a new security problem.
When the candidate has been publicized, the details for this
candidate will be provided.

This means that the entry number has been reserved by Mitre for an issue or
a CNA has reserved the number. So in the case where a CNA requests a block
of CVE numbers in advance (e.g. Red Hat currently requests CVEs in blocks
of 500), the CVE number will be marked as reserved even though the CVE
itself may not be assigned by the CNA for some time. Until the CVE is
assigned AND Mitre is made aware of it (e.g. the embargo passes and the
issue is made public), AND Mitre has researched the issue and written a
description of it, entries will show up as "** RESERVED **".

The good news is this is changing (MITRE will be able to accept
descriptions/data from other parties at some point). I don't have an exact
time frame though.




>
> https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2016-8615
>
> https://curl.haxx.se/docs/security.html:
>
> CVE-2016-8615
> CVE-2016-8616
> CVE-2016-8617
> CVE-2016-8618
> CVE-2016-8619
> CVE-2016-8620
> CVE-2016-8621
> CVE-2016-8622
> CVE-2016-8623
> CVE-2016-8624
> CVE-2016-8625
>
> Shouldn't Mitre follow a process and update the page after CVEs have
> been made public e.g. by upstream project? Or perhaps there is another
> reason for these CVEs not to be updated?
>
> Best,
> ---------------------------------------
> Sona Sarmadi
> Security Responsible for Enea Linux
>
>


-- 

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--94eb2c032d54b7a98005439f1765--
