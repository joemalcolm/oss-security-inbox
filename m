X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1885" "Monday" "24" "April" "2017" "19:51:24" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty0v=dPC3Gndgg8W17frEti12AzY6DoPcRmG3cgbJ5mq5w@mail.gmail.com>" "69" "Re: [oss-security] SquirrelMail <= 1.4.23 Remote Code Execution (CVE-2017-7692)" "^Date:" nil nil "4" "2017042501:51:24" "[oss-security] SquirrelMail <= 1.4.23 Remote Code Execution (CVE-2017-7692)" (number mark "        kseifried@re Apr 24   69/1885  " thread-indent "\"Re: [oss-security] SquirrelMail <= 1.4.23 Remote Code Execution (CVE-2017-7692)\"\n") "<CADSYzsugzEnV-7WjgVetwCHLmhaX3bY9DPgR-Gvo-UodR0R1xA@mail.gmail.com>" ("<CADSYzsugzEnV-7WjgVetwCHLmhaX3bY9DPgR-Gvo-UodR0R1xA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13670 invoked by uid 550); 25 Apr 2017 01:51:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13651 invoked from network); 25 Apr 2017 01:51:36 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=RFMpSZdJtb7EZTFjcXfwhZVseIvv92qgyOpbTX8fwOY=;
        b=ijvznUKfAoCWLzXmHD7fw/4v726t+mI5Prytjaskowk6hHD/4C2qDBPzvKik0hjdtN
         gWbRSHv3lGC5KBH9dvlFX86DXG0U9an5J3w2M7wnjxRn2HckMr3Vr+TnRvp8vWR5eoEY
         S6JwZPALTResj476kk8+Fmp27yrCeH8TdXcYwDyPRY6plTkI7N2MhIf9mf64wkSWJ8XQ
         tVVn+7VQILOUM9t1n8DYRGm7O5CnrIsRtYg17aaUbr9GWQ6V7FC5aW4/Hw31PZ1BgpJD
         Vv47IBVaSBadkIBamXYcQd0Y0oiOEyG1hpSiY81N+nGONAYnRYg3CJ/DaXo4z09wBm26
         3t+w==
X-Gm-Message-State: AN3rC/47P1emv8mbPfwnyRBWNWUUXeElSRC57I0RFKIPIKyuUW9+GchN
	yJjMyxiypZaXTrygdtusiek5rzthU+J0eWpQsQ==
X-Received: by 10.157.24.88 with SMTP id t24mr17151265ott.131.1493085084992;
 Mon, 24 Apr 2017 18:51:24 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CADSYzsugzEnV-7WjgVetwCHLmhaX3bY9DPgR-Gvo-UodR0R1xA@mail.gmail.com>
References: <CADSYzsugzEnV-7WjgVetwCHLmhaX3bY9DPgR-Gvo-UodR0R1xA@mail.gmail.com>
Message-ID: <CANO=Ty0v=dPC3Gndgg8W17frEti12AzY6DoPcRmG3cgbJ5mq5w@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11450b981c5da1054df3f651
Date: Mon, 24 Apr 2017 19:51:24 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] SquirrelMail <= 1.4.23 Remote Code Execution (CVE-2017-7692)
To: oss-security <oss-security@lists.openwall.com>

--001a11450b981c5da1054df3f651
Content-Type: text/plain; charset=UTF-8

On Mon, Apr 24, 2017 at 3:14 PM, Dawid Golunski <dawid@legalhackers.com>
wrote:

> SquirrelMail <= 1.4.23 Remote Code Execution (CVE-2017-7692)
>
> Desc.:
> SquirrelMail is affected by a critical Remote Code Execution vulnerability
> which stems from insufficient escaping of user-supplied data when
> SquirrelMail has been configured with Sendmail as the main transport.
> An authenticated attacker may be able to exploit the vulnerability
> to execute arbitrary commands on the target and compromise the remote
> system.
>
> Discovered by:
> Dawid Golunski (https://legalhackers.com : https://ExploitBox.io)
> , as well as Filippo Cavallarin (see attached advisory for details)
>
> Official solution:
> Vendor seems to have released a new version of 1.4.23 on
> squirrelmail-20170424_0200-SVN.stable.tar.gz
> which still seems to be vulnerable hence a new subject/thread.
>

So Squirrelmail's last release was 2011.

**************************************
*** SquirrelMail Stable Series 1.4 ***
**************************************

Version 1.4.22 - 12 July 2011

I don't want to tell people what to do, but the fact is squirrelmail is
probably not something you should be using.



>
> The exploit from my advisory was also confirmed to work on Ubuntu
> package: '1.4.23~svn20120406-2ubuntu1.16.04.1'.
>
> Hence the updated version in the subject/advisory title.
>
> Full advisory URL:
>
> https://legalhackers.com/advisories/SquirrelMail-
> Exploit-Remote-Code-Exec-CVE-2017-7692-Vuln.html
>
>
>
> --
> Regards,
> Dawid Golunski
> https://legalhackers.com
> https://ExploitBox.io
> t: @dawid_golunski
>



-- 

Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a11450b981c5da1054df3f651--
