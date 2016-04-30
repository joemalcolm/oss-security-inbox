X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1835" "Saturday" "30" "April" "2016" "11:52:50" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20160430095250.GA19211@eldamar.local>" "44" "[oss-security] Re: CVE Request: vtun: denial-of-service: high CPU usage after SIGHUP" nil nil nil "4" "2016043009:52:50" "[oss-security] Re: CVE Request: vtun: denial-of-service: high CPU usage after SIGHUP" (number mark "U       carnil@debia Apr 30   44/1835  " thread-indent "\"[oss-security] Re: CVE Request: vtun: denial-of-service: high CPU usage after SIGHUP\"\n") "<20160427215800.7EB1B72E003@smtpvbsrv1.mitre.org>" ("<20160426052013.GA4299@lorien.valinor.li>" "<20160427215800.7EB1B72E003@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28239 invoked by uid 550); 30 Apr 2016 09:53:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28218 invoked from network); 30 Apr 2016 09:53:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=cul5s9Lf8fN+Jt4i2yguFrH3sLKSG9osngSVcs9QVwg=;
        b=0v1IWb11+Dr7dAEhm3W9R3xBBuT73xz4I/j+JADfgdm+YXw2iA5JdOEk1t4yuVQfnz
         2ZjhE5tj5zbxywUr1sQZ5Haqx/Gy3kqtrVyGeZMOBYndkTl4+UzFPeD/fkNfAO6ixFkZ
         hUp9LErtxCSL6MEokDECcRfdgn5V7NLvevTp3jmn9I+sOiZ+Rnz47FMnzIarOu33ZhTW
         KQwW5KM/hYLwEHfIBdrUBm9w6/DnttSyxlvbXS4IKk4o8EggFCIRqbswZvUV0nCzHOv6
         teu70fMFGRrx+jmby/tTNRO4II0Fefd1BTToCwEag0O2GZSl8WvqTf8DUlSyFa2qAIBO
         m93w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=cul5s9Lf8fN+Jt4i2yguFrH3sLKSG9osngSVcs9QVwg=;
        b=hre61CjtfhlFE9jZ9fu2+UnUoDfkjptBtyFecYiozEIEUm96jUDB82WdUMV8G1ximm
         ObZJQScWL/xcEYwosRl2FD5tU8jeu1li1nLYZyajHCaydTvMi8BX1VwRZ0UxV4t2Iqsr
         Ij6Q7TY5Ro3gKMR3M5CNAggf3/3Bgq1+t/NrNqOhKPuHaRrJK4FOASSu8uBhqzwjnODC
         iUkimmRUpWkTjiPmFbI+yx6qGKTjUm/z8x/05r+WSMS/yJXW5NVxpybz7X6zhRyc0mM7
         4kNczzMkxJDoSyAdWfx3BtdLGSc6ixLO5uDR9TTjqvbV5KsRhLYysSbJ2HsO+YTZ0fhT
         9e1A==
X-Gm-Message-State: AOPr4FXgYarmFlj97ZqjwKdk/WOJNXA/1aURVFbGof/QBLKp2bMJ4XAGjeq5Ic4/8nh9Jw==
X-Received: by 10.194.71.171 with SMTP id w11mr29870470wju.36.1462009974195;
        Sat, 30 Apr 2016 02:52:54 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sat, 30 Apr 2016 11:52:50 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: cve-assign@mitre.org
Cc: oss-security@lists.openwall.com
Message-ID: <20160430095250.GA19211@eldamar.local>
References: <20160426052013.GA4299@lorien.valinor.li>
 <20160427215800.7EB1B72E003@smtpvbsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160427215800.7EB1B72E003@smtpvbsrv1.mitre.org>
User-Agent: Mutt/1.6.0 (2016-04-01)
Subject: [oss-security] Re: CVE Request: vtun: denial-of-service: high CPU usage after SIGHUP

Hi,

On Wed, Apr 27, 2016 at 05:58:00PM -0400, cve-assign@mitre.org wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
> 
> > https://bugs.debian.org/818489
> 
> Can you describe how this crosses a privilege boundary?
> 
> 
> >> When you send a SIGHUP to a vtun client process and it cannot connects
> >> to the remote server, vtun try to reconnect without sleep between each attempt.
> >> In result, the vtun process uses lot of CPU, and write to syslog without limit.
> 
> Is there an important way in which this differs from "The vtun client
> is not installed. The attacker simply writes their own program to
> reconnect without sleeping and make many syslog calls"?
> 
> For example: does vtun's resource consumption belong to the root
> account in a common scenario, but SIGHUP is accepted from an
> unprivileged user? Are different unprivileged users successfully
> sending SIGHUP to one another's vtun client processes? Do you mean
> that there's a potentially common attack pattern in which a
> man-in-the-middle attacker intentionally blocks connections to the
> remote server in order to trick the victim into sending a SIGHUP, and
> (in some sense) this man-in-the-middle attacker is thereby able to
> trigger the excessive resource consumption?
> 
> Sometimes there are CVE IDs for "a client application inadvertently
> starts launching a network DoS attack" but this is typically only in
> cases where someone can send forged packets to the client application
> in order to start the attack.

You are right -- I cannot think of a situation (or seems hard to find
a realistic example) right now where this issue would cross a
privilege boundary, and thus might just be considered as bug, but not
a vulnerability.

Thanks for your feedback, I'm fine to not have assigned an identifier
for this.

Regards,
Salvatore
