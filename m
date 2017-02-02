X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1074" "Thursday" "2" "February" "2017" "09:31:30" "+0100" "Pierre Kim" "pierre.kim.sec@gmail.com" "<CADxEXOjnuSxVo=vr4zzQmGcJ5qQE4NtL4HghAgVsbG0nVn+qPw@mail.gmail.com>" "34" "[oss-security] Re: CVE requests: OpenBSD httpd - 2 DoS" nil nil nil "2" "2017020208:31:30" "[oss-security] Re: CVE requests: OpenBSD httpd - 2 DoS" (number mark "U       pierre.kim.s Feb  2   34/1074  " thread-indent "\"[oss-security] Re: CVE requests: OpenBSD httpd - 2 DoS\"\n") "<7e6f78b11fd1464ab075e4b7d8b959e3@imshyb01.MITRE.ORG>" ("<CADxEXOgSQWqbWcQaK9cZjckN+QC-pOXSzdj+meNs5KUEm=jn+g@mail.gmail.com>" "<7e6f78b11fd1464ab075e4b7d8b959e3@imshyb01.MITRE.ORG>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3339 invoked by uid 550); 2 Feb 2017 08:42:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29767 invoked from network); 2 Feb 2017 08:31:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=sRcJGCpUVb6xDqpX5aZ+p/dUgx0Oyk2LO4CwgT7v9yM=;
        b=bBqryOkm6XN8Z+SjdUWbTI8pkGjChGy5oNYg2sUu7yS1X1/GOW5CXAXbxnTRwx/C3C
         +WctQh/lHQJWcCsgU9J2GQukBy7woKpSndE+w88h8r7/ksvYkKl7wiPztVP+da71Isbf
         Xg848wFg1DKvFhleNjrfq4vefKXFq9FOcBEhaydiOK75ayiET5JvkiO+e2I3ZiqSWatC
         uRlFfUdS3TILdvCP+3hnWk7cYBECXSn8gEeJo+tw3KGOk5L5X7lOMHaNFDhR05JAa9vA
         62wSXlpHftFBJYYCQJKIN7fo+DHJ0TpENAkYvKbfoiL9xFa+OyVrelJD4sI3Rq3S3Q5U
         w4vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=sRcJGCpUVb6xDqpX5aZ+p/dUgx0Oyk2LO4CwgT7v9yM=;
        b=IFmilE83B35WcCaqb9ID8P/FMJnVPTLnJS4S1axVGd21rI2mFu6sjCP4eXs7Is+4fg
         Lf26jbM7Sw6GK3bpgJ9nBBN/hZtFmQpO7+djl8hsC1xLvxkrhOSV4k+hpDXh/Hr+A4Wb
         BpbVBnULa7UFE2qLsjhhmMgPJ8Y07O3y97r5S3YKCr+r9LUpLIiYgtrwmo8m3nWAupRs
         kS/9EF0wtidLOe8sHNWp9apYbOGywND0+IIT6gACmG4Ea+J44jcXt6Dilpe9R/O4sK4N
         XFAYoDLH9lgKWcdJo8jCuF6eX0CpYHOb4crBwgWbX8sjRje2K8BIbKvakroOKd1A+ucR
         E+iQ==
X-Gm-Message-State: AIkVDXJvbXqdd1b0dhMNsE/mTTAzdyt6dq8MWhajIvcYwawD+5v2kpwbSLR8WyB8I/B3r5VckaUbOd1y1hFZhQ==
X-Received: by 10.202.98.212 with SMTP id w203mr3743590oib.33.1486024291208;
 Thu, 02 Feb 2017 00:31:31 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <7e6f78b11fd1464ab075e4b7d8b959e3@imshyb01.MITRE.ORG>
References: <CADxEXOgSQWqbWcQaK9cZjckN+QC-pOXSzdj+meNs5KUEm=jn+g@mail.gmail.com>
 <7e6f78b11fd1464ab075e4b7d8b959e3@imshyb01.MITRE.ORG>
From: Pierre Kim <pierre.kim.sec@gmail.com>
Date: Thu, 2 Feb 2017 09:31:30 +0100
Message-ID: <CADxEXOjnuSxVo=vr4zzQmGcJ5qQE4NtL4HghAgVsbG0nVn+qPw@mail.gmail.com>
To: cve-assign@mitre.org
Cc: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] Re: CVE requests: OpenBSD httpd - 2 DoS

Hello,

>[...]

>> DoS: CPU exhaustion with SSL client-initiated renegotiation,
>
>Is this a public vulnerability? It does not have any obvious match with the
>latest https://github.com/openbsd/src/commits/master/usr.sbin/httpd commits.

>From OpenBSD team:

> o High CPU usage is a well-known issue of client-initiated
> renegotiation.  While this can cause higher than normal CPU usage, the
> processes are still able to service requests.
> As httpd uses LibreSSL's libtls, a sane TLS API on top of libssl, we
> decided to disable client-initiated renegotiation for libtls servers
> in -current. This change was already planned and has now been
> committed to LibreSSL.
>
> libssl http://marc.info/?l=openbsd-cvs&m=148587695222112&w=2
> libtls http://marc.info/?l=openbsd-cvs&m=148587827322528&w=2


If you think it doesn't deserve a CVE, then I will publish the advisory without.
>From my tests, during an attack, the httpd has some difficulties to
provide replies to clients.

Regards,

-- 
Pierre Kim
pierre.kim.sec@gmail.com
@PierreKimSec
https://pierrekim.github.io/
