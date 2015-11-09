X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["992" "Monday" "9" "November" "2015" "13:52:55" "+0000" "Pedro Vaz De Sousa Grilo" "pedrosousagrilo@gmail.com" "<CADZCc7eWUmZhzD+3BsEqoYKoRTfXXVcTygaBLhwUph1z=fO80w@mail.gmail.com>" "29" "Re: [oss-security] Assign CVE for common-collections remote code execution on deserialisation flaw" "^Date:" nil nil "11" "2015110913:52:55" "[oss-security] Assign CVE for common-collections remote code execution on deserialisation flaw" (number mark "        pedrosousagr Nov  9   29/992   " thread-indent "\"Re: [oss-security] Assign CVE for common-collections remote code execution on deserialisation flaw\"\n") "<5640442C.1050501@redhat.com>" ("<1904852023.6462846.1447029380024.JavaMail.zimbra@redhat.com>" "<5640442C.1050501@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20273 invoked by uid 550); 9 Nov 2015 14:48:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20186 invoked from network); 9 Nov 2015 13:53:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-type;
        bh=zUvlTv4+dXfbsjylhnqhR1FT9lcyW5+SGnf4rA4KamI=;
        b=QTzWCgDCozhn6o/g4ZwA5HPn+gfe/x+VZRnzojMaz1x0+pvL/FGh4PtafZy+DjitO5
         3v0LHa4wml829sTaMZyOoegHyjP3f7Bv9fbAkzVG4lzzw2OKEM9QWrYo30iJ8p30Uc6Z
         90Jtscr9UZS2i2PQwY9vYHJLv2/GVrX0BSDvT70DqDRyrCNM4yfcFem+bP3VCgDkJuXJ
         iQPUGlJmNlc/kFLe9ybbsfYmkTho4zjO0pRI4yGjxYWUKfjbcdNOLvZnEuoQ2OiMGpHW
         2yb7VMPxz43XL/PPSAJhAbv2Fvz1VMdzJ/EBBex0buw1cv46MaFw6E7zjGB2+Tt+WZYK
         LJmA==
X-Received: by 10.129.80.11 with SMTP id e11mr9344684ywb.303.1447077205287;
 Mon, 09 Nov 2015 05:53:25 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <5640442C.1050501@redhat.com>
References: <1904852023.6462846.1447029380024.JavaMail.zimbra@redhat.com> <5640442C.1050501@redhat.com>
Message-ID: <CADZCc7eWUmZhzD+3BsEqoYKoRTfXXVcTygaBLhwUph1z=fO80w@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1147d2b2c8b25405241bea82
Date: Mon, 9 Nov 2015 13:52:55 +0000
From: Pedro Vaz De Sousa Grilo <pedrosousagrilo@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Assign CVE for common-collections remote code
 execution on deserialisation flaw
To: oss-security@lists.openwall.com

--001a1147d2b2c8b25405241bea82
Content-Type: text/plain; charset=UTF-8

I think it is. You can execute remote code by exploiting HTTP, RMI and JMI

On Mon, Nov 9, 2015 at 6:58 AM, Florian Weimer <fweimer@redhat.com> wrote:

> On 11/09/2015 01:36 AM, Jason Shepherd wrote:
> > Hello oss-esc,
> >
> > It was found that a flaw in Apache commons-collections Java library
> allowed remote code execution when Deserialised with Java Object
> Serialization.
>
> This is not a vulnerability in the library.  How can this feature allow
> remote code execution if it does not involve any networking at all?
>
> The root cause is the incorrect use of Java deserialization.  As long as
> you do not fix that, something else on the classpath will serve the role
> of Apache Commons Collections.
>
> Disabling InvokerTransformer deserialization may be a prudent hardening
> measure, but calling the existing behavior a vulnerability is a bit of a
> stretch.
>
> Florian
>

--001a1147d2b2c8b25405241bea82--
