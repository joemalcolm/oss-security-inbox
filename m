X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2445" "Sunday" "30" "October" "2016" "14:29:17" "-0300" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdTySquYm3M=mk+oVhiYUR+_np3=atHDMryVu6znwJ_0EQ@mail.gmail.com>" "49" "[oss-security] CVE request - integer overflow and crash parsing regex in mujs" nil nil nil "10" "2016103017:29:17" "[oss-security] CVE request - integer overflow and crash parsing regex in mujs" (number mark "U       gustavo.grie Oct 30   49/2445  " thread-indent "\"[oss-security] CVE request - integer overflow and crash parsing regex in mujs\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5280 invoked by uid 550); 30 Oct 2016 17:29:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5262 invoked from network); 30 Oct 2016 17:29:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=7YeKseJl61pgakr1luLWEqAzPaK2VfcBy4zzp+Tja7w=;
        b=FekimmbvtT5igHGOk4mQ2gi0JLNK4yu5cqYDzy6KRa62lnf5svTeVP/cLG+3lK3MGS
         Py497AXZrR5yyLTr78v/9ifJ4wjvq6HkaUDI/og3jaU29+7ud5dCJelXU0Iu8z4QeH1p
         0BmkEwnPMy2hjMHVp/UJattRhq+jEVe48S7EX4bEuSbNNa1xu4a+O1D0mWAg/qVDBxL0
         KhsXRWKuWn9lu2MsKj0wy3mlYWL6stXwXqv+TTRpqbpem6azXVmdJJdGgp8A23fMW73r
         It+A12+IJLIOTlEPIV3DL2aLYpPnLdMaEbXvVfqjdoQ+M8z6JOLcgunHATNtiMYivXUR
         bn3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=7YeKseJl61pgakr1luLWEqAzPaK2VfcBy4zzp+Tja7w=;
        b=AkQPmkOOzYobWkKyhROuH5dyjVhBX+t+/yuzsIEjwAJK0BCNOT95Ec08NuOHqOAXO+
         gse8dBFz+EEXYJZoj+lY16M0Vk6OOgZkP3Btg4ZG6QMyjuigh+f+GQBHoOc98YWcwkqM
         v1POnIb4IRBKVBYLc+ZSlfGR+/Fe5oaCvpSv0WXMhuYEEcwX9I26XN7vt53N92dqExid
         /CRz7kVqEKG7HtLIQ9WMsSx8MjWno89zJTfwvtwLfoiV9LwcX3WHtJmb8mpPvYxocGwI
         djcCeStYJt8I4pNB7RCdT2xswcRXhiQ4F4QBooqnXl+0Sb2UVlhBLhfjsWgji/Ufhs0L
         iGUQ==
X-Gm-Message-State: ABUngvfrfWV4u6XIL+KGQbUDLF1hx7q2C53jQ6zAunZkOYSotleYU3RwTDE35fwAWrTE7EJWAFe8YIlwFPzjGw==
X-Received: by 10.36.120.76 with SMTP id p73mr6769214itc.45.1477848558173;
 Sun, 30 Oct 2016 10:29:18 -0700 (PDT)
MIME-Version: 1.0
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Date: Sun, 30 Oct 2016 14:29:17 -0300
Message-ID: <CACn5sdTySquYm3M=mk+oVhiYUR+_np3=atHDMryVu6znwJ_0EQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a114ab4705783c90540186e75
Subject: [oss-security] CVE request - integer overflow and crash parsing regex in mujs

--001a114ab4705783c90540186e75
Content-Type: text/plain; charset=UTF-8

Hi,

It seems there is an integer overflow somewhere affecting function
js_regcomp (line 843 in regexp.c) in mujs. To reproduce (tested in revision
5c337af4b3df80cf967e4f9f6a21522de84b392a):

$ echo '(/.{135303839468541,43}/);' | valgrind --quiet ./build/mujs
==29376== Argument 'size' of function malloc has a fishy (possibly
negative) value: -5152
==29376==    at 0x4C2AB8D: malloc (in
/usr/lib/valgrind/vgpreload_memcheck-amd64-linux.so)
==29376==    by 0x415FCC: js_regcomp (in /home/g/Work/Code/mujs/build/mujs)
==29376==    by 0x41D127: js_newregexp (in
/home/g/Work/Code/mujs/build/mujs)
==29376==    by 0x40A0C1: jsR_run (in /home/g/Work/Code/mujs/build/mujs)
==29376==    by 0x40A8C6: js_call (in /home/g/Work/Code/mujs/build/mujs)
==29376==    by 0x40B9BB: js_pcall (in /home/g/Work/Code/mujs/build/mujs)
==29376==    by 0x401D63: eval_print (in /home/g/Work/Code/mujs/build/mujs)
==29376==    by 0x40183A: main (in /home/g/Work/Code/mujs/build/mujs)
==29376==
==29376== Invalid write of size 2
==29376==    at 0x415FE1: js_regcomp (in /home/g/Work/Code/mujs/build/mujs)
==29376==    by 0x41D127: js_newregexp (in
/home/g/Work/Code/mujs/build/mujs)
==29376==    by 0x40A0C1: jsR_run (in /home/g/Work/Code/mujs/build/mujs)
==29376==    by 0x40A8C6: js_call (in /home/g/Work/Code/mujs/build/mujs)
==29376==    by 0x40B9BB: js_pcall (in /home/g/Work/Code/mujs/build/mujs)
==29376==    by 0x401D63: eval_print (in /home/g/Work/Code/mujs/build/mujs)
==29376==    by 0x40183A: main (in /home/g/Work/Code/mujs/build/mujs)
==29376==  Address 0x2 is not stack'd, malloc'd or (recently) free'd
==29376==
==29376==
==29376== Process terminating with default action of signal 11 (SIGSEGV)
==29376==  Access not within mapped region at address 0x2
==29376==    at 0x415FE1: js_regcomp (in /home/g/Work/Code/mujs/build/mujs)
==29376==    by 0x41D127: js_newregexp (in
/home/g/Work/Code/mujs/build/mujs)
==29376==    by 0x40A0C1: jsR_run (in /home/g/Work/Code/mujs/build/mujs)
==29376==    by 0x40A8C6: js_call (in /home/g/Work/Code/mujs/build/mujs)
==29376==    by 0x40B9BB: js_pcall (in /home/g/Work/Code/mujs/build/mujs)
==29376==    by 0x401D63: eval_print (in /home/g/Work/Code/mujs/build/mujs)
==29376==    by 0x40183A: main (in /home/g/Work/Code/mujs/build/mujs)

This test case was found using QuickFuzz. Please assign CVE is suitable.

--001a114ab4705783c90540186e75--
