X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2205" "Wednesday" "1" "April" "2020" "19:42:38" "-0400" "Jeffrey Walton" "noloader@gmail.com" nil "45" nil "^Date:" nil nil "4" nil nil (number mark "        noloader@gma Apr  1   45/2205  " thread-indent "\"[oss-security] Deficient engineering processes\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Deficient engineering processes" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7659 invoked by uid 550); 1 Apr 2020 23:43:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7629 invoked from network); 1 Apr 2020 23:43:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=kUS3wB/dmlMpTtn7lzZuCXWi3flfaUb3Q/2Qs7VsOEQ=;
        b=L0mJzI3rjmqsIcBOBAZK85LhaWwfb2c1oskvKQGNCGpub+1ryA2Zeiqqbd0arzT37Z
         NKziRTDg+Y79EpUtJY3KEWThEY89WqYwr9NMPv8QJJ/bMNHq6UaW0nwRaUI+3j0sshRn
         CqXPfbMaOPD0nHe7FdifNXOPjzczuKjQ9N94CFEmU++1sw0pG+Ies36qAn061VUFuHLW
         YNKP60TMe40dX7cKExciuvWMFwnd7cBnQLLo0rkxlSpTdDvbihe4Bfe2ujHSWk2Mae1D
         xVsaBpnAkqu58w8uOCMYlULUln2pSbk34CzoQoJZlJwb0ZHnj33xc53GGK1vNiUw6vMU
         gESQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=kUS3wB/dmlMpTtn7lzZuCXWi3flfaUb3Q/2Qs7VsOEQ=;
        b=OE3mRDU2EoWRAOMtrBgWO+SUcCx4dkErHrI5H5O0BC1z5AOW/cWxPT1ImjNsmW6QD8
         6dOyuPQhbBgwEOYcrlODi21sE1hF1XZcqOMq3EW7JynF0B27KjdxiBoXIj7C7dijeuff
         NM2aP7qGSgaoVn3SfeFjp3noTKtVWtt+BX4qrAb/dMK9c/HhYA9VPshORrcddfjOKpLl
         uKOmkaoG55AEDsmsxVtkaJtAbiHOaGWCvaPGu/GRnexx3lEPsBflZ5BCDzbm3y+O49qm
         JjXqzK/YESQvqnk7oIDJ8o475ugpYBlQAqHBy14SuVkobGf7Ka1Mt+6ihnvxA4L3591v
         rwwg==
X-Gm-Message-State: AGi0PuY0L0gxbl5RtTRXpdjruObvL/cgifRE2Iw2zVxtxA/97S/jFqFR
	v5u01BrvLHYKug7bO5PD9u37iCFPxiUxvj/mQ9spqixAU44=
X-Google-Smtp-Source: APiQypLkSOIA0Lzy1Es+qIuiZv5op/fSgsm/9kwVKq+8/qs/vBFlXjaFxQVQnslOYbwap2CR7OH72m6benNZ5pfsv+8=
X-Received: by 2002:a05:6e02:54e:: with SMTP id i14mr581644ils.166.1585784568919;
 Wed, 01 Apr 2020 16:42:48 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAH8yC8=P-5i_0WT-AWSJ65JeY1C3BrB7p9e+4SCtH938H5ZqVA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Wed, 1 Apr 2020 19:42:38 -0400
From: Jeffrey Walton <noloader@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Deficient engineering processes
To: oss-security@lists.openwall.com

Hi Everyone,

Forgive my ignorance. I'm wondering how to handle deficient
engineering processes, and I hope folks can share their thoughts.

As I understand development lifecycles, there are 5 steps. The class I
took in college taught them as SADIE: Survey, Analysis, Design,
Implementation and Evaluation. I find a lot of projects have
deficiencies in Implementation and Evaluation.

Implementation is what most people think of with software. It is the
actual code. Implementation problems are usually handled through a bug
tracker. Implementation problems are usually instance problems. They
are an instance of a bigger class of problems the project may be
vulnerable to.

Evaluation is usually not handled. Evaluation is the feedback cycle,
and it is where postmortem analysis are supposed to be performed. The
postmortem analysis should reveal why an instance problem occurred.
Results from the analysis create changes, which are then fed back into
the the process and the cycle repeats.

For example, suppose a bug is reported for an undefined behavior
sanitizer finding. The developer may (or may not) fix the finding. At
the Evaluation phase, the postmortem should reveal why the bug
surfaced and why the project did not detect the defect. The postmortem
usually reveals a defective engineering process. For example, the
Continuous Integration pipeline may not include a job to build with
sanitizers.

My question is, how to convince someone that following standard
project management procedures is a good thing? How do we get them
onboard with improving their engineering processes? Especially the
evaluation phase, and leveraging a continuous integration pipeline to
detect errors before they are released to users?

I know the GNU Coding Standards does not help here. It lacks the
treatment of lifecycles and evaluation/feedback phase. It also lacks a
recommendation for a continuous integration pipeline so many GNU
projects do not use one. GNU Coding Standards also recommends "worse
practices", like encouraging memory leaks which breaks testing. (The
memory leaks are some of the worse advice I have seen in print.
Attempts to get it corrected have fallen on deaf ears).

Thanks in advance.
