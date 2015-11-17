X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1183" "Tuesday" "17" "November" "2015" "10:22:58" "-0700" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty3+RweqCJkjbANdi-+Q1u6bMJzQ36y+uSO3fhrRWXBbEg@mail.gmail.com>" "54" "[oss-security] Re: CVE request for Gnome gdm/screen lock crash" nil nil nil "11" "2015111717:22:58" "[oss-security] Re: CVE request for Gnome gdm/screen lock crash" (number mark "U       kseifried@re Nov 17   54/1183  " thread-indent "\"[oss-security] Re: CVE request for Gnome gdm/screen lock crash\"\n") "<CANO=Ty1uFFW-t_0XXpUGW501Jdd_bG+4zLYvBw-yBPyJzyUemA@mail.gmail.com>" ("<CANO=Ty1uFFW-t_0XXpUGW501Jdd_bG+4zLYvBw-yBPyJzyUemA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32294 invoked by uid 550); 17 Nov 2015 17:23:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32271 invoked from network); 17 Nov 2015 17:23:13 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:content-type;
        bh=tZSPBrASh6jRXilAbGf28smU8ruPre7SUYrd/O+ZM/c=;
        b=gPJJbjzGHY1SA8fKZRqrpQ9nxxgGvVtnbq3OiuS4X9gHOr2+qcWPJdWJgkNQSAckmU
         LTnOdpgYn+I6UIGDc3kqK8ayks26tDj4JzgZgaoXtY+fXVWIWig7CM0juxcu3J1eDf/c
         Qo2DU86gyCmbtZuisgrgFv+QWoEEBEySZ6CKHD7enzJlnS7YAJWAEM2/vwKgxagFXy+e
         pAwfHpKs83JcCGXDP0ToTX5uAfAbhoHpEDBx1sPmLWvyJpDCNiQrnYhNw5EHhQ4Ct22C
         mjX0I6X4pM1ZxOywvN3nFUmNXxoB7Z62rFBi/rwzSD7OLZ336DRcEh77YVMQWLWgeq9H
         ktFQ==
X-Gm-Message-State: ALoCoQlFp0SY58vCqQwbe3cuMSXD4SrqJGkBn9sefw6qxfvF4fRwUQOOSBbkdv4yQmCgv7XnSyYR
MIME-Version: 1.0
X-Received: by 10.129.125.193 with SMTP id y184mr41683689ywc.182.1447780978518;
 Tue, 17 Nov 2015 09:22:58 -0800 (PST)
In-Reply-To: <CANO=Ty1uFFW-t_0XXpUGW501Jdd_bG+4zLYvBw-yBPyJzyUemA@mail.gmail.com>
References: <CANO=Ty1uFFW-t_0XXpUGW501Jdd_bG+4zLYvBw-yBPyJzyUemA@mail.gmail.com>
Date: Tue, 17 Nov 2015 10:22:58 -0700
Message-ID: <CANO=Ty3+RweqCJkjbANdi-+Q1u6bMJzQ36y+uSO3fhrRWXBbEg@mail.gmail.com>
From: Kurt Seifried <kseifried@redhat.com>
To: oss-security <oss-security@lists.openwall.com>
Content-Type: multipart/alternative; boundary=001a11492bfcf042990524bfc697
Subject: [oss-security] Re: CVE request for Gnome gdm/screen lock crash

--001a11492bfcf042990524bfc697
Content-Type: text/plain; charset=UTF-8

Ah apologies, I missed the email (was on PTO for the last week) where
Martin assigned one:

CVE-2015-7496 gdm: crash when holding Escape in lock screen



On Tue, Nov 17, 2015 at 9:37 AM, Kurt Seifried <kseifried@redhat.com> wrote:

> https://bugzilla.gnome.org/show_bug.cgi?id=758032
>
> Christoph Reiter (lazka) 2015-11-12 22:14:26 UTC
>
> Credit to my cat for finding this..
>
> * Running gnome session
> * Press <super>+l to lock
> * Press Escape and hold
>
> Expected:
>
> * The slider thing going up an down in an endless loop
>
> Happing:
>
> * After ~5 times the slider window coming and going GS crashes
>
> using GS 3.18.1 on debian sid
>
> Comment 1 <https://bugzilla.gnome.org/show_bug.cgi?id=758032#c1>
>
>
>
> --
>
> --
> Kurt Seifried -- Red Hat -- Product Security -- Cloud
> PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
> Red Hat Product Security contact: secalert@redhat.com
>



-- 

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a11492bfcf042990524bfc697--
