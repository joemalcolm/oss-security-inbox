X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["462" "Tuesday" "31" "March" "2020" "16:10:40" "-0700" "Jason Bishop" "jason.bishop@gmail.com" "<CAJBS9=Dy9kpqHYJrh3xc_Gx5QvdpA1c2wMmF+Z1PXRSpb30Wtw@mail.gmail.com>" "16" "Re: [oss-security] pam-krb5 security advisory (4.9 and earlier)" nil nil nil "3" "2020033123:10:40" "[oss-security] pam-krb5 security advisory (4.9 and earlier)" (number mark "U       jason.bishop Mar 31   16/462   " thread-indent "\"Re: [oss-security] pam-krb5 security advisory (4.9 and earlier)\"\n") "<87imil8au6.fsf@hope.eyrie.org>" ("<87wo718b0x.fsf@hope.eyrie.org>" "<87mu7x8avo.fsf@hope.eyrie.org>" "<87imil8au6.fsf@hope.eyrie.org>") nil nil nil nil nil nil nil "Re: [oss-security] pam-krb5 security advisory (4.9 and earlier)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28131 invoked by uid 550); 1 Apr 2020 11:02:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25801 invoked from network); 31 Mar 2020 23:11:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=BjZX4OIpF/YAnIc1SqRHlbMMdjcVf70Xt5qJZqyS3yA=;
        b=SnShx3ys4OtaIyZV4I5dM+z1y3nK2OkyDRebNVafSqTY4Lj5jmsC8LDwopDjfT/lVr
         aiIaaAeY1il9zPU/4OCI904fENS6mf3wNcbi7kLN2AiO9Tg50LdvblxHCczOEkCImXnY
         TtcNT8PRcklODnmZ0iL1+2KpTzSC37ft+jry5PR5bbbdM4wdQ1rNpu0gNoTtj1dZZj9O
         +RpdW6AaQtPzPZ9CdxU/Nv9JUOEycpEUjb474SG9HZZnEAcsXNIPk4tlZ328Skf2VkZN
         08XSssdWoazReQzdpS/zUKOuv+eDAGbzC3rFBPi0DSq8HUc1mM4payq/dMB54ykvcYa0
         ExrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BjZX4OIpF/YAnIc1SqRHlbMMdjcVf70Xt5qJZqyS3yA=;
        b=PfW6u7cwhY9Xr9YHEKQbBgrqfl9JLuCGDmrP/HCCba7Nli0QTejVJpWtmmTlRTEiim
         YqtCXMXMDTIa60Xu0uXxofMXVYIzQDYfKNnRS2g4JAlmuR2UEsAlF7azAby3LwWKh+4m
         FOv440W/hzUAajxrH+uUApDp2hmI+VKU9YkzRc/XpXonnlwT8Qv3Cp4/PLK4X+iLdbhs
         BGmtDT9Ffp1RT745JFl7zuf9XiAr3l1/5GWDz4Yl2fiiH8xCYmb7es+B8lhpsw/SDmIb
         xYkjLB7BLyFtKTnGO+gtRzVEHF/TidNAXTROUACapsrQiTtUWr1nl+/gIpOItRDGMO8o
         E+dg==
X-Gm-Message-State: AGi0PubbenqeuEecd58c177pWeZpLZiTsMMzdzlxYOdTzKe5jhhBM3np
	V1iApPv4jRGf8B4BKloHhA0lIp3rIAsiNh7RIotAE6Bp
X-Google-Smtp-Source: APiQypK5kIFSPO/GrEodaD+mgWMb9E874K23E0+a/dJq7AeaX7qInNSUw9yVTUG+U7hvVZ7eoew8syzKFSp72QJg+d0=
X-Received: by 2002:a2e:9c8:: with SMTP id 191mr11123870ljj.259.1585696254065;
 Tue, 31 Mar 2020 16:10:54 -0700 (PDT)
MIME-Version: 1.0
References: <87wo718b0x.fsf@hope.eyrie.org> <87mu7x8avo.fsf@hope.eyrie.org> <87imil8au6.fsf@hope.eyrie.org>
In-Reply-To: <87imil8au6.fsf@hope.eyrie.org>
From: Jason Bishop <jason.bishop@gmail.com>
Date: Tue, 31 Mar 2020 16:10:40 -0700
Message-ID: <CAJBS9=Dy9kpqHYJrh3xc_Gx5QvdpA1c2wMmF+Z1PXRSpb30Wtw@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: kerberos@mit.edu
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] pam-krb5 security advisory (4.9 and earlier)

well.. it was a single byte overwrite.

On Mon, Mar 30, 2020 at 8:26 PM Russ Allbery <eagle@eyrie.org> wrote:
>
> Russ Allbery <eagle@eyrie.org> writes:
> > Russ Allbery <eagle@eyrie.org> writes:
>
> >> Public announcement: 2009-03-30
>
> > Mutter.  Obviously, this should be 2020-03-20.
>
> Or even 2020-03-30, a mistake that I have made every time I have written
> that date.
>
> --
> Russ Allbery (eagle@eyrie.org)             <https://www.eyrie.org/~eagle/>
