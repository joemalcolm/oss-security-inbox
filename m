X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["552" "Tuesday" "31" "January" "2017" "20:00:29" "+0100" "Pierre Kim" "pierre.kim.sec@gmail.com" "<CADxEXOgSQWqbWcQaK9cZjckN+QC-pOXSzdj+meNs5KUEm=jn+g@mail.gmail.com>" "22" "[oss-security] CVE requests: OpenBSD httpd - 2 DoS" nil nil nil "1" "2017013119:00:29" "[oss-security] CVE requests: OpenBSD httpd - 2 DoS" (number mark "U       pierre.kim.s Jan 31   22/552   " thread-indent "\"[oss-security] CVE requests: OpenBSD httpd - 2 DoS\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12171 invoked by uid 550); 31 Jan 2017 19:12:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5952 invoked from network); 31 Jan 2017 19:00:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=N8W6UKJY+kXNjovIEA5M4IK0mJgiNztrZqLT4wzt1UI=;
        b=r/wdRqlnl/hZ+/cO2JabDItO/c4wkn0GsuZcZu6v1YtS1nOsAv26jUmDjdeSywmdGm
         RosaJnCrCwD6QCHunOrUFFwQLQRCp3NxdBIABZHeo5dPR2C0ltKpssp25gujqqQq4gZD
         OJzm6OFosmOcngQ88PsM0jxvTO3DrkNZuBa2DSLtKu1ZcustZxd37J0SLjDbv9rDV67T
         OPsRwSuXTyCVsztDLtFuOOw5SrUVhE2JpZd4qv2pOD7WqK4VqwfwE2GM0LdVY85NOy+F
         3As3l8s87yf//PWy68F4djFD2v+TCboCCQtiK02LDFRIFJbFAPyuDkgnLgLo8BS3tvj7
         fwYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=N8W6UKJY+kXNjovIEA5M4IK0mJgiNztrZqLT4wzt1UI=;
        b=SdXhpX9RTuT33v+UfAXx2ritgmUvIxaD2gxn6N3qxu7aPS80EJfZK+BC43kNxeerm5
         z4XyfoLaA0O/Yu4cLwxNe3jIuj0HF8kvri6AfwC2qKr3Y0KsR1ySiAMnaepLGxphFtEC
         UMOKoo+sAN04R2v3et6pALLjwqFE0HF+A7Bb1caZxD64E9aZ6DBGmy4pe8Zz4UFvCD/C
         tFmplqgBcN/TayEFf5TFnRJvp0e03pBSsvxRcXRACQ3z+A8bCsSVPVikq+4kGj+TWIoW
         eC6ehwsh6jwNmwfnyZ8b4e5CBmKhTJPvarum2FDWhQcbthamWim2Cbz5S/W7UrwEJSv2
         ky4A==
X-Gm-Message-State: AIkVDXLTBjud/A2k9usKXASCOF1vEZAASsFgBYuCLljHLJFPU3lOChdD2RWr1XYgEeJ+8P+0TYK5O5AgHnlSTg==
X-Received: by 10.157.19.93 with SMTP id q29mr15505146otq.60.1485889229515;
 Tue, 31 Jan 2017 11:00:29 -0800 (PST)
MIME-Version: 1.0
From: Pierre Kim <pierre.kim.sec@gmail.com>
Date: Tue, 31 Jan 2017 20:00:29 +0100
Message-ID: <CADxEXOgSQWqbWcQaK9cZjckN+QC-pOXSzdj+meNs5KUEm=jn+g@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] CVE requests: OpenBSD httpd - 2 DoS

Hello,

Can you assign 2 CVE entries regarding OpenBSD httpd ?

- DoS: CPU exhaustion with SSL client-initiated renegotiation,
- DoS: Memory exhaustion by sending crafted HTTP requests with Bytes-range.

Errata for 6.0/5.9 is in progress, the memory exhaustion has been
patched today in -current
(see http://marc.info/?l=openbsd-cvs&m=148587359420912&w=2 ).
The advisory will be posted when
http://www.openbsd.org/errata{59,60}.html are updated.

Thank you,

Regards,

-- 
Pierre Kim
pierre.kim.sec@gmail.com
@PierreKimSec
https://pierrekim.github.io/
