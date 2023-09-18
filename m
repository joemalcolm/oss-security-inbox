Received: (qmail 15863 invoked by uid 550); 18 Sep 2023 23:09:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13844 invoked from network); 18 Sep 2023 20:37:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695069453; x=1695674253; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=l7K0C/N8lOfmxFDAkPT0JFk858C745bDZPNf/bMfYIw=;
        b=egSAQPOLQ1pFrSA6Q05liM3JyZHd40lPwMs90HB3DMLI/BtfS7fdOewUiILI/gtx4G
         ylgtJwAIMweqNjiH9sF0NQnBsQWms8kzsixcG7v5hhY7CyKlkPOsKWlEUwn1nwpmA2Oo
         HMjoXynzaPvS9B1JBqyRo2ZSlbitk7yESLmCZposqTgyxhxbHmb6DCSqyaYnWiCcBD5h
         7XNWXCiMRqJuODmo0Y/wfuD/U4sTSLovjAxsv/AawvcNKGivhymPuRWo7qt/8z/Sxv90
         JOHMY2B17lISMUjtTEr1yqFq/b9zVX3AsdCCqFxX26oW/DkF9x6cuyjidN4UNt+hiVnc
         JYbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695069453; x=1695674253;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=l7K0C/N8lOfmxFDAkPT0JFk858C745bDZPNf/bMfYIw=;
        b=i8tPR1sXSfhx4zsdbIhC5zZkYgLaYwtE6gx8eBLEOEwK5e5GNV4o2Hdob3JvAUzQ03
         ui5rm6+aPKVJ5N8wtcHTh8jzkKi+d9T9/mJ9OQaYOkhI7/oZCSM109Ctv/39Qh1hA9b1
         7tA5kwqNonC8vLSe6UBfwEFX3yEWHxIrmodqxmW3ZvA5hmA/NW+KwyOkXIEa9g/9Jfrr
         qpZk6QoxVOrE0OV9++cswqotS8MPgRP9w7qdYw7Hr8alRjNMp626i2h+ybW8v9tAAsTB
         K1PLy7B36T+FhWwe6zdqgRN5rT2SVXqQAGHYnn9Jpx4/JTkCjwHIXDWWULXbXKrTfI6K
         1Ggw==
X-Gm-Message-State: AOJu0YzRxBw05l4DOUnMW9GdYNqEiE7xl/SJnRAQjnVJsA4NFcfkxz1k
	U/ZIUmEhADFGo+jBpG/rUJPcKuRal0QIv94pTf+GUWU77qw=
X-Google-Smtp-Source: AGHT+IGcYZQdIColGGGeEe9Q8yzp4viyLSvJ0SiYLl/xjrHZ9c0/yGvu6pvD0XxZhe60JUbEG3/1Qbg9egyE7+mhCDg=
X-Received: by 2002:a05:6402:352:b0:51e:5251:8f45 with SMTP id
 r18-20020a056402035200b0051e52518f45mr8569937edw.4.1695069452848; Mon, 18 Sep
 2023 13:37:32 -0700 (PDT)
MIME-Version: 1.0
From: Steve Thompson <susurrus.of.qualia@gmail.com>
Date: Mon, 18 Sep 2023 13:37:20 -0700
Message-ID: <CAA0MYJUHngYsTR0miEO31PpMp+TyCgj6ebt9F4b2289SFwy5TQ@mail.gmail.com>
To: Steve Thompson <susurrus.of.qualia@gmail.com>, oss-security@lists.openwall.com
Content-Type: multipart/mixed; boundary="0000000000009b6b720605a81cc3"
Subject: [oss-security] Possible AMD Zen2 CVE

--0000000000009b6b720605a81cc3
Content-Type: multipart/alternative; boundary="0000000000009b6b700605a81cc1"

--0000000000009b6b700605a81cc1
Content-Type: text/plain; charset="UTF-8"

I've been beating my head against a wall for a while on this.  I'm not a
security researcher, or even currently employed in the industry so my
ability to analyze the problem I've seemingly discovered here is somewhat
limited.

I have a laptop with an AMD Ryzen 5700U.  I've been fooling around with
spinlocks for a while and for various reasons.  Back in late March I
basically finished a R/W ticket spinlock that I instrumented for testing
purposes.  A short test program was written and I found I was getting
deadlocks and other odd symptoms.  I was unsure of the implementation of
the algorithm and so I looked and looked at the code until my eyes started
bleeding.  The errors were occurring within a few thousand iterations with
moderate parallelism.

I eventually wrote several alternate implementations of naive spinlocks,
ticket spinlocks, and MCS spinlocks.   Many of them were problematic.   I
eventually developed a much simplified test program implementing a very
basic ticket spinlock that can be made to fail with a trivial code change
that should not affect the operation of the algorithm.

The code is included as an attachment; it is relatively short at ~300 LOC,
and most of those lines are boilerplate or initialization code.  The
business end is the wr_thread() function which is the vector passed to
pthread_create(),   In a loop, the following code is found:

      nr_spin = t1lock_acquire(&obj.lock);
#if defined BROKEN
      temp = ++obj.value;
#else
      ++obj.value;
#endif
      t1lock_release(&obj.lock);

If "BROKEN" is defined, you can see that an additional cache-line write is
made with the assignment to 'temp'.  When this code path is enabled, the
underlying cmpxchg operation in t1lock_acquire() occasionally succeeds when
it shouldn't, with a probability on the order of 1:5*10^6 when the CPU
frequency is allowed to climb to 4.3GHz. or thereabouts.  I should, but
have not yet investigated whether using an attached 4K, 60Hz monitor
notably affects this problem.

The test program is essentially a bank-account simulator that adds $.01 to
'obj.value' each iteration for N threads.  If the cmpxchg operation in
t1lock_acquire() functions correctly, the final "balance" in obj.value will
be the number of threads multiplied by the number of iterations each thread
performs.  When the "-DBROKEN" codepath is enabled, the final result may be
less than expected, indicating data loss from colliding threads.  Very
occasionally, a deadlock of all threads is observed.

As the probability of this error occurring is relatively low in a test
program that really hammers on a single shared resource, I would expect
this bug to manifest relatively rarely under typical usage patterns for
code that is found to be vulnerable.  However, different test programs,
such as with the previously mentioned R/W ticket lock show much higher
error-rates.  In that case, the lock structure is five fields in a 32 or
64-bit word.  One bit is used for mutual-exclusion between threads and the
other fields track queue depth and/or the number of instantaneous active
read-only threads.  It appears that the act of using a cmpxchg operation
followed by non-atomic field updates and a release operation on a single
machine word vastly increases the probability of an error occurring in
comparison to the included test code.

I have not yet found the underlying microarchitectural features responsible
for the manifestiation of this apparent CPU bug, which implies that
individual spinlock algorithms must be tested in-situ to identify code
arrangements that trigger the bug. It is my impression thus far that most
spinlock implementations do not do this testing, which suggests that the
number of spinlocks in the wild that are vulnerable to this bug is
currently unknown.  This bug might be exploitable to cause scheduler
malfunctions, database corruption, etc. in a deterministic fashion,
although i have yet to generate an exploit to this end -- that is beyond my
expertise at this stage.

Currently, I lack access to a lab where this can be tested on other CPUs,
Intel or otherwise to determine the scope of affected processors.  (I have,
however, detected the problem on a Core 2 Duo Macbook Pro from the Jurassic
period, which is interesting.)

The bug has not been verified yet.  I have been dealing with HP as the
laptop is under warranty, but in approximately two months they have been
unable to find a technician able to understand the source code or who is
able to interpret the results.  It is still possible I have made some sort
of stupid error, but at this point I am reasonably confident I am using
atomic operations correctly as per the x86-64 architecture specification
documents.

I've posted this here to acquire feedback, and I would greatly appreciate
advice on how to better characterize what is going on here, etc.   Calling
the test program with four threads and 10^7 for the number of loop
iterations will usually trigger the bug.

--0000000000009b6b700605a81cc1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div><div>I&#39;ve been beating my head against =
a wall for a while on this.=C2=A0 I&#39;m not a security researcher, or eve=
n currently employed in the industry so my ability to analyze the problem I=
&#39;ve seemingly discovered here is somewhat limited.=C2=A0=C2=A0</div><di=
v><br></div><div>I have a laptop with an AMD Ryzen 5700U.=C2=A0 I&#39;ve be=
en fooling around with spinlocks for a while and for various reasons.=C2=A0=
 Back in late March I basically finished a R/W ticket spinlock that I instr=
umented for testing purposes.=C2=A0 A short test program was written=C2=A0a=
nd I found I was getting deadlocks and other odd symptoms.=C2=A0 I was unsu=
re of the implementation of the algorithm and so I looked and looked at the=
 code until my eyes started bleeding.=C2=A0 The errors were occurring=C2=A0=
within a few thousand iterations with moderate parallelism.</div><div><br><=
/div><div>I eventually wrote several alternate implementations=C2=A0of naiv=
e spinlocks, ticket spinlocks, and MCS spinlocks.=C2=A0 =C2=A0Many of them =
were problematic.=C2=A0 =C2=A0I eventually developed a much simplified test=
 program implementing a very basic ticket spinlock that can be made to fail=
 with a trivial code change that should not affect the operation of the alg=
orithm.</div><div><br></div><div>The code is included as an attachment; it =
is relatively short at ~300 LOC, and most of those lines are boilerplate or=
 initialization code.=C2=A0 The business end is the wr_thread() function wh=
ich is the vector passed to pthread_create(),=C2=A0 =C2=A0In a loop, the fo=
llowing code is found:</div><div><br></div><div><blockquote style=3D"margin=
:0 0 0 40px;border:none;padding:0px"><div>=C2=A0 =C2=A0 =C2=A0 nr_spin =3D =
t1lock_acquire(&amp;obj.lock);<br>#if defined BROKEN<br>=C2=A0 =C2=A0 =C2=
=A0 temp =3D ++obj.value;<br>#else<br>=C2=A0 =C2=A0 =C2=A0 ++obj.value;<br>=
#endif<br>=C2=A0 =C2=A0 =C2=A0 t1lock_release(&amp;obj.lock);<br></div><div=
><br></div></blockquote>If &quot;BROKEN&quot; is defined, you can see that =
an additional cache-line write is made with the assignment to &#39;temp&#39=
;.=C2=A0 When this code path is enabled, the underlying cmpxchg operation i=
n t1lock_acquire() occasionally succeeds when it shouldn&#39;t, with a prob=
ability on the order of 1:5*10^6 when the CPU frequency is allowed to climb=
 to 4.3GHz. or thereabouts.=C2=A0 I should, but have not yet investigated w=
hether using an attached 4K, 60Hz monitor notably affects this problem.</di=
v><div><br></div><div>The test program is essentially a bank-account simula=
tor that adds $.01 to &#39;obj.value&#39; each iteration for N threads.=C2=
=A0 If the cmpxchg operation in t1lock_acquire() functions correctly, the f=
inal &quot;balance&quot; in obj.value will be the number of threads multipl=
ied by the number of iterations each thread performs.=C2=A0 When the &quot;=
-DBROKEN&quot; codepath is enabled, the final result may be less than expec=
ted, indicating data loss from colliding threads.=C2=A0 Very occasionally, =
a deadlock of all threads is observed.</div><div><br></div><div>As the prob=
ability of this error occurring is relatively low in a test program that re=
ally hammers on a single shared resource, I would expect this bug to manife=
st relatively rarely under typical usage patterns for code that is found to=
 be vulnerable.=C2=A0 However, different test programs, such as with the pr=
eviously mentioned R/W ticket lock show much higher error-rates.=C2=A0 In t=
hat case, the lock structure is five fields in a 32 or 64-bit word.=C2=A0 O=
ne bit is used for mutual-exclusion between threads and the other fields tr=
ack queue depth and/or the number of instantaneous active read-only threads=
.=C2=A0 It appears that the act of using a cmpxchg operation followed by no=
n-atomic field updates and a release operation on a single machine word vas=
tly increases the probability of an error occurring in comparison to the in=
cluded test code.</div><div><br></div><div>I have not yet found the underly=
ing microarchitectural features responsible for the manifestiation of this =
apparent CPU bug, which implies that individual spinlock algorithms must be=
 tested in-situ to identify code arrangements that trigger the bug. It is m=
y impression thus far that most spinlock implementations do not do this tes=
ting, which suggests that the number of spinlocks in the wild that are vuln=
erable to this bug is currently unknown.=C2=A0 This bug might be exploitabl=
e to cause scheduler malfunctions, database corruption, etc. in a determini=
stic fashion, although i have yet to generate an exploit to this end -- tha=
t is beyond my expertise at this stage.</div><div><br></div><div>Currently,=
 I lack access to a lab where this can be tested on other CPUs, Intel or ot=
herwise to determine the scope of affected processors.=C2=A0 (I have, howev=
er, detected the problem on a Core 2 Duo Macbook Pro from the Jurassic peri=
od, which is interesting.)</div><div><br></div><div>The bug has not been ve=
rified yet.=C2=A0 I have been dealing with HP as the laptop is under warran=
ty, but in approximately two months they have been unable to find a technic=
ian able to understand the source code or who is able to interpret the resu=
lts.=C2=A0 It is still possible I have made some sort of stupid error, but =
at this point I am reasonably confident I am using atomic operations correc=
tly as per the x86-64 architecture specification documents.</div><div><br><=
/div><div>I&#39;ve posted this here to acquire feedback, and I would greatl=
y appreciate advice on how to better characterize what is going on here, et=
c.=C2=A0 =C2=A0Calling the test program with four threads and 10^7 for the =
number of loop iterations will usually trigger the bug.</div><div><br></div=
><div><br></div></div>

--0000000000009b6b700605a81cc1--

--0000000000009b6b720605a81cc3
Content-Type: text/x-csrc; charset="US-ASCII"; name="bug_src.c"
Content-Disposition: attachment; filename="bug_src.c"
Content-Transfer-Encoding: base64
Content-ID: <f_lmpccx2i0>
X-Attachment-Id: f_lmpccx2i0

LyoKICAgRklMRTogICAgYnVnX3NyYy5jCgogICBDT01QSUxFOgoKICAgICAg
Z2NjIC1wdGhyZWFkIC1zdGQ9Yzk5IC1XYWxsIC1XZXh0cmEgLVdlcnJvciAt
bTY0IC1PMyAtbXR1bmU9em52ZXIyIC1nZ2RiIFwKICAgICAgICAgICAgICAg
IC1vIGdvb2QgYnVnX3NyYy5jICAtbHJ0CgogICAgICBDaGFuZ2UgJy1vIGdv
b2QnIHRvICctbyBiYWQnIGFuZCBhZGQgLURCUk9LRU4gdG8gZ2VuZXJhdGUg
YSBmYWlsaW5nIHRlc3QgCgkJYW5kIGFsc28gcmVtZW1iZXIgdG8gc2V0IHRo
ZSBhcmNoaXRlY3R1cmUgZm9yIHlvdXIgbWFjaGluZS4KCiovCiNpbmNsdWRl
IDxzdGRpby5oPgojaW5jbHVkZSA8c3RkbGliLmg+CiNpbmNsdWRlIDxwdGhy
ZWFkLmg+CiNpbmNsdWRlIDx0aW1lLmg+CiNpbmNsdWRlIDx1bmlzdGQuaD4K
I2luY2x1ZGUgPHN0ZGJvb2wuaD4KCiNpZiAhZGVmaW5lZCBUMUxPQ0tfUEFV
U0VfVEhSRVNICiNkZWZpbmUgVDFMT0NLX1BBVVNFX1RIUkVTSCAgIDEwCiNl
bmRpZgoKdHlwZWRlZiB1bnNpZ25lZCBsb25nIGxvbmcgdTY0Owp0eXBlZGVm
IHVuc2lnbmVkIGludCB1MzI7CnR5cGVkZWYgdW5zaWduZWQgc2hvcnQgdTE2
OwoKI2RlZmluZSBleHBlY3RfZmFsc2UoZSkgICAgX19idWlsdGluX2V4cGVj
dCgoZSksIDApCiNkZWZpbmUgZXhwZWN0X3RydWUoZSkgICAgIF9fYnVpbHRp
bl9leHBlY3QoKGUpLCAxKQojZGVmaW5lIGlmX3VuKGUpICAgICAgICAgICBp
ZiAoZXhwZWN0X2ZhbHNlKGUpKQojZGVmaW5lIGlmX2woZSkgICAgICAgICAg
ICBpZiAoZXhwZWN0X3RydWUoZSkpCgojZGVmaW5lIGRpZShmbXQsIGFyZy4u
LikgICB7IGZwcmludGYoc3Rkb3V0LCAiJXA6JXM6ICAiIGZtdCwgXAogICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKHZvaWQgKikgcHRo
cmVhZF9zZWxmKCksIF9fZnVuY19fLCAjIyBhcmcpOyBhYm9ydCgpOyB9Cgoj
ZGVmaW5lIEFTTV9DUFVfUEFVU0UgICAgICAgIF9fYXNtX18gdm9sYXRpbGUg
KCJwYXVzZSAgICAgXG5cdCIgOjo6ICkKCnR5cGVkZWYgc3RydWN0IHsKICAg
dTY0ICAgY291bnQ7CiAgIHU2NCAgIGNwdTsKfSB0c2NfdGltZXN0YW1wOwoK
I2RlZmluZSBBU01fQ1BVX1JEVFNDUCh2YWx1ZSwgY3B1KSAgIF9fYXNtX18g
dm9sYXRpbGUgKCAgICAgICAgICAgICAgICAgICAgXAogICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgInJkdHNjcCAgICAgICAgICAg
ICAgICAgICAgXG5cdCIgICBcCiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAic2hsICAgICQweDIwLCAlJXJkeCAgICAgICBcblx0
IiAgIFwKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICJvciAgICAgJSVyYXgsICUlcmR4ICAgICAgIFxuXHQiICAgXAogICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIm1vdnEgICAlJXJk
eCwgJVt2XSAgICAgICAgXG5cdCIgICBcCiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAibW92cSAgICUlcmN4LCAlW2NdICAgICAg
ICBcblx0IiAgIFwKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIDogW3ZdICI9ZyIgKHZhbHVlKSwgICAgICAgICAgICAgICAgXAog
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBbY10g
Ij1nIiAoY3B1KSAgICAgICAgICAgICAgICAgICBcCiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICA6ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIFwKICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIDogIiVyYXgiLCAiJXJjeCIsICAgICAgICAgICAgICAg
ICAgXAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAiJXJkeCIsICJtZW1vcnkiLCAiY2MiKQoKI2RlZmluZSBCRUdJTl9UU0Nf
VElNSU5HICAgICAgICAgICAgICAgICAgXAogICB7ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBcCiAgICAgIHRzY190aW1lc3RhbXAg
dHMxOyAgICAgICAgICAgICAgICAgIFwKICAgICAgdHNjX3RpbWVzdGFtcCB0
czI7ICAgICAgICAgICAgICAgICAgXAogICAgICBBU01fQ1BVX1JEVFNDUCh0
czEuY291bnQsIHRzMS5jcHUpOyBcCgojZGVmaW5lIEVORF9UU0NfVElNSU5H
KHJlc3VsdCkgICAgICAgICAgICBcCiAgICAgIEFTTV9DUFVfUkRUU0NQKHRz
Mi5jb3VudCwgdHMyLmNwdSk7IFwKICAgICAgaWYodHMxLmNwdSAhPSB0czIu
Y3B1KSAgICAgICAgICAgICAgXAogICAgICAgICByZXN1bHQgPSAxOyAgICAg
ICAgICAgICAgICAgICAgICBcCiAgICAgIGVsc2UgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIFwKICAgICAgICAgcmVzdWx0ID0gdHMyLmNvdW50
IC0gdHMxLmNvdW50OyAgXAoJfQoKI2RlZmluZSBBU01fQVRPTUlDX0NNUFhD
SEdXKHB0ciwgb2xkLCBuZXcsIHJlc3VsdCkgX19hc21fXyB2b2xhdGlsZSAo
ICAgICAgXAogICAgICAgICAgICAgICAgICAgICAgICAgICAieG9yICAgICAg
ICVbcl0sICVbcl0gICAgICAgICAgICAgICBcblx0IiAgICAgICBcCiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICJtb3Z3ICAgICAgJVtvXSwgJSVheCAg
ICAgICAgICAgICAgIFxuXHQiICAgICAgIFwKICAgICAgICAgICAgICAgICAg
ICAgICJsb2NrIGNtcHhjaGd3ICAlW25dLCAoJVtwXSkgICAgICAgICAgICAg
XG5cdCIgICAgICAgXAogICAgICAgICAgICAgICAgICAgICAgICAgICAiam5l
ICAwZiAgICAgICAgICAgICAgICAgICAgICAgICAgICBcblx0IiAgICAgICBc
CiAgICAgICAgICAgICAgICAgICAgICAgICAgICJ4b3IgICQxLCAgJVtyXSAg
ICAgICAgICAgICAgICAgICAgIFxuXHQiICAgICAgIFwKICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIjA6ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgXG5cdCIgICAgICAgXAogICAgICAgICAgICAgICAgICAgICAgICAg
ICA6IFtyXSAiPSZyIiAocmVzdWx0KSwgICAgICAgICAgICAgICAgICAgICAg
ICAgICBcCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgW29dICIrciIg
KG9sZCkgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFwKICAgICAg
ICAgICAgICAgICAgICAgICAgICAgOiBbcF0gInIiIChwdHIpLCAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgXAogICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIFtuXSAiciIgKG5ldykgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBcCiAgICAgICAgICAgICAgICAgICAgICAgICAgIDogImNj
IiwgIm1lbW9yeSIsICIlYXgiKQoKdHlwZWRlZiBzdHJ1Y3QgewogICB1MTYg
dGlja2V0OwogICB1MTYgcXVldWU7Cn0gdDFsb2NrOwoKI2RlZmluZSBUMUxP
Q0tfSU5JVElBTElaRVIgKHQxbG9jaykgeyAgICAgXAogICAudGlja2V0ID0g
MSwgICAgICAgICAgICAgICAgICAgICAgICAgICBcCiAgIC5xdWV1ZSA9IDAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIFwKfQoKX19pbmxpbmVfXyB2
b2lkICAgdDFsb2NrX3JlbGVhc2UodDFsb2NrICogb28pCnsKICAgb28tPnRp
Y2tldCsrOwoKICAgcmV0dXJuOwp9CgpfX2F0dHJpYnV0ZV9fKChub2lubGlu
ZSkpIHZvaWQgICB0MWxvY2tfcmVsYXgodTMyICBucl9zcGluKQp7CiAgIGlm
X2wgKG5yX3NwaW4gPCBUMUxPQ0tfUEFVU0VfVEhSRVNIKSB7CiAgICAgIEFT
TV9DUFVfUEFVU0U7CiAgICAgIHJldHVybjsKCX0KCiAgIGlmX2wgKG5yX3Nw
aW4gPCA2NTUzNikgewogICAgICBzY2hlZF95aWVsZCgpOwogICAgICByZXR1
cm47Cgl9CgogICBpZl91biAobnJfc3BpbiA9PSA2NTUzNikKICAgICAgZnBy
aW50ZihzdGRvdXQsICJUaHJlYWQgbWF5IGJlIGRlYWRsb2NrZWQuXG4iKTsK
CiAgIHNsZWVwKDEpOwoKICAgcmV0dXJuOwp9CgppbmxpbmUgYm9vbCB0MWxv
Y2tfY21weGNoZyh0MWxvY2sgKiBvbywgdTE2IG9sZCwgdTE2IG5ldykKewog
ICB1MzIgICByZXN1bHQ7CgogICBBU01fQVRPTUlDX0NNUFhDSEdXKCZvby0+
cXVldWUsIG9sZCwgbmV3LCByZXN1bHQpOwoKICAgcmV0dXJuIHJlc3VsdDsK
fQoKdTMyICAgdDFsb2NrX2FjcXVpcmUodDFsb2NrICogb28pCnsKICAgdDFs
b2NrIG9sZCwgbmV3OwogICB1MzIgICBucl9zcGluID0gMDsKICAgdTE2ICAg
dGlja2V0OwoKc3BpbjoKICAgbnJfc3BpbisrOwoKICAgb2xkID0gbmV3ID0g
Kigodm9sYXRpbGUgdDFsb2NrICopIG9vKTsKCiAgIGlmX3VuICgob2xkLnF1
ZXVlICsgMSkgPT0gKG9sZC50aWNrZXQgLSA2NTQwMCkpIHsKICAgICAgdDFs
b2NrX3JlbGF4KG5yX3NwaW4pOwogICAgICBnb3RvIHNwaW47Cgl9CgogICB0
aWNrZXQgPSArK25ldy5xdWV1ZTsKCiAgIGlmX3VuICghdDFsb2NrX2NtcHhj
aGcob28sIG9sZC5xdWV1ZSwgbmV3LnF1ZXVlKSkgewogICAgICB0MWxvY2tf
cmVsYXgobnJfc3Bpbik7CiAgICAgIGdvdG8gc3BpbjsKCX0KCndhaXQ6CiAg
IGlmICh0aWNrZXQgIT0gKCh2b2xhdGlsZSB0MWxvY2sgKikgb28pLT50aWNr
ZXQpIHsKICAgICAgdDFsb2NrX3JlbGF4KG5yX3NwaW4pOwogICAgICBucl9z
cGluKys7CiAgICAgIGdvdG8gd2FpdDsKCX0KCiAgIHJldHVybiBucl9zcGlu
Owp9Cgp1NjQgICB0aW1lc3RhbXAodm9pZCkgLyogbWljcm9zZWNvbmRzICov
CnsKICAgc3RydWN0IHRpbWVzcGVjIHRzOwogICBjbG9ja19nZXR0aW1lKENM
T0NLX01PTk9UT05JQywgJnRzKTsKICAgcmV0dXJuICh0cy50dl9zZWMgKiAx
MDAwMDAwMDAwICsgdHMudHZfbnNlYykgLyAxMDAwOwp9Cgp0eXBlZGVmIHN0
cnVjdCB7CiAgIHQxbG9jayAgIGxvY2s7CiAgIHU2NCAgICAgIHZhbHVlOwp9
IHNwcl90OwoKc3ByX3QgICAgb2JqID0geyAubG9jayA9IFQxTE9DS19JTklU
SUFMSVpFUiwgLnZhbHVlID0gMCB9OwoKdm9sYXRpbGUgdTY0ICAgdGVtcDsg
IC8qIFVucHJvdGVjdGVkIHNjcmliYmxlIHZhcmlhYmxlICovCgp2b2xhdGls
ZSBpbnQgICBzdGFydF9mbGFnID0gMDsKCnR5cGVkZWYgc3RydWN0IHsgCiAg
IHUzMiAgIGN5Y2xlczsKICAgdTMyICAgbnJfc3BpbjsKfSBzYW1wbGVfdDsK
CnZvaWQgKiB3cl90aHJlYWQodm9pZCAqIGRhdGEpCnsKICAgdTY0ICAgICAg
VDsKICAgc2FtcGxlX3QgKnNhbXBsZXM7CiAgIHUzMiAgICAgIG5yX3JvdW5k
cywgaSwgbnJfc3BpbjsKCiAgIG5yX3JvdW5kcyA9ICh1NjQpIGRhdGE7Cgog
ICBzYW1wbGVzID0gbWFsbG9jKG5yX3JvdW5kcyAqIHNpemVvZihzYW1wbGVf
dCkpOwogICBpZiAoIXNhbXBsZXMpCiAgICAgIGRpZSgiVW5hYmxlIHRvIGFs
bG9jYXRlIHNhbXBsZSBidWZmZXIgLSAlbSIpOwoKICAgd2hpbGUgKCFzdGFy
dF9mbGFnKQogICAgICBBU01fQ1BVX1BBVVNFOwoKICAgZm9yIChpID0gMDsg
aSA8IG5yX3JvdW5kczsgaSsrKSB7CiAgICAgIEJFR0lOX1RTQ19USU1JTkc7
CiAgICAgIG5yX3NwaW4gPSB0MWxvY2tfYWNxdWlyZSgmb2JqLmxvY2spOwoj
aWYgZGVmaW5lZCBCUk9LRU4KICAgICAgdGVtcCA9ICsrb2JqLnZhbHVlOwoj
ZWxzZQogICAgICArK29iai52YWx1ZTsKI2VuZGlmCiAgICAgIHQxbG9ja19y
ZWxlYXNlKCZvYmoubG9jayk7CiAgICAgIEVORF9UU0NfVElNSU5HKFQpOwoK
ICAgICAgaWYgKFQgPD0gMjgpICAgLyogcmR0c2NwIGlzIHVzdWFsbHkgYWJv
dXQgMjggY3ljbGVzICovCiAgICAgICAgIFQgPSAxOwogICAgICBlbHNlCiAg
ICAgICAgIFQgLT0gMjg7CgogICAgICBzYW1wbGVzW2ldLmN5Y2xlcyA9IFQ7
CiAgICAgIHNhbXBsZXNbaV0ubnJfc3BpbiA9IG5yX3NwaW47Cgl9CgogICBy
ZXR1cm4gKHZvaWQgKikgc2FtcGxlczsKfQoKdm9pZCAgcHJvY2Vzc190aHJl
YWRfcmVzdWx0KHNhbXBsZV90ICogc2FtcGxlcywgdTMyIG5yX3NhbXBsZXMp
CnsKICAgdTY0ICAgICAgbWF4ID0gMDsKICAgdTY0ICAgICAgYXZnID0gMDsK
ICAgZG91YmxlICAgbnJfc3BpbiA9IDAuMDsKICAgdTMyICAgICAgbWF4X25y
X3NwaW4gPSAwOwogICB1MzIgICAgICBpOwoKICAgaWYgKCFucl9zYW1wbGVz
IHx8ICFzYW1wbGVzKQogICAgICBkaWUoIlVzYWdlLiIpOwoKICAgZm9yIChp
ID0gMDsgaSA8IG5yX3NhbXBsZXM7IGkrKykgewogICAgICBpZiAobWF4IDwg
c2FtcGxlc1tpXS5jeWNsZXMpCiAgICAgICAgIG1heCA9IHNhbXBsZXNbaV0u
Y3ljbGVzOwoKICAgICAgaWYgKG1heF9ucl9zcGluIDwgc2FtcGxlc1tpXS5u
cl9zcGluKQogICAgICAgICBtYXhfbnJfc3BpbiA9IHNhbXBsZXNbaV0ubnJf
c3BpbjsKCiAgICAgIGF2ZyArPSBzYW1wbGVzW2ldLmN5Y2xlczsKICAgICAg
bnJfc3BpbiArPSBzYW1wbGVzW2ldLm5yX3NwaW47Cgl9CgogICBhdmcgLz0g
bnJfc2FtcGxlczsKICAgbnJfc3BpbiAvPSBucl9zYW1wbGVzOwoKICAgZnBy
aW50ZihzdGRvdXQsICIlcDogIGF2ZzogJS00cXUgICBtYXg6ICUtNHF1ICAg
bnJfc3Bpbl9hdmc6ICUyLjRmICAgbWF4X25yX3NwaW46ICV1XG4iLAoJCQkg
IHNhbXBsZXMsIGF2ZywgbWF4LCBucl9zcGluLCBtYXhfbnJfc3Bpbik7Cgog
ICBmcmVlKHNhbXBsZXMpOwoKICAgcmV0dXJuOwp9CgppbnQgbWFpbihpbnQg
YXJnYywgY2hhciAqKiBhcmd2KQp7CiAgIHU2NCAgICAgICAgIHN0YXJ0ID0g
MCwgc3RvcCA9IDA7CiAgIHUzMiAgICAgICAgIG5yX3RocmVhZHMgPSAwOwog
ICB1MzIgICAgICAgICBucl9zYW1wbGVzID0gMDsKICAgdTMyICAgICAgICAg
aTsKICAgcHRocmVhZF90ICogdGhyZWFkczsKICAgc2FtcGxlX3QgKiogcmVz
dWx0czsKCgogICBpZiAoYXJnYyAhPSAzKSB7CnVzYWdlOgogICAgICBwcmlu
dGYoIlVzYWdlOiAlcyBucl90aHJlYWRzIG5yX2l0ZXJcbiIsIGFyZ3ZbMF0p
OwogICAgICBwcmludGYoIiAgICAgICAgICBucl90aHJlYWRzIDw9IDEwMDBc
biIpOwogICAgICBleGl0KDEpOwoJfQoKICAgbnJfdGhyZWFkcyA9IHN0cnRv
dWwoYXJndlsxXSwgTlVMTCwgMCk7CgogICBpZiAoKG5yX3RocmVhZHMgPiAx
MDAwKSB8fCAhbnJfdGhyZWFkcykKICAgICAgZ290byB1c2FnZTsKCiAgIG5y
X3NhbXBsZXMgPSBzdHJ0b3VsKGFyZ3ZbMl0sIE5VTEwsIDApOwoKICAgaWYg
KCFucl9zYW1wbGVzKQogICAgICBnb3RvIHVzYWdlOwogICAKICAgaWYgKCEo
dGhyZWFkcyA9IG1hbGxvYyhzaXplb2YocHRocmVhZF90KSAqIG5yX3RocmVh
ZHMpKSkKICAgICAgZGllKCJVbmFibGUgdG8gbWFsbG9jIHRocmVhZCBhcnJh
eSAtICVtIik7CgogICBpZiAoIShyZXN1bHRzID0gbWFsbG9jKHNpemVvZihz
YW1wbGVfdCAqKSAqIG5yX3RocmVhZHMpKSkKICAgICAgZGllKCJVbmFibGUg
dG8gbWFsbG9jIHJlc3VsdHMgYXJyYXkgLSAlbSIpOwoKICAgZm9yIChpID0g
MDsgaSA8IG5yX3RocmVhZHM7IGkrKykgewogICAgICBpZiAocHRocmVhZF9j
cmVhdGUoJnRocmVhZHNbaV0sIE5VTEwsIHdyX3RocmVhZCwgKCh2b2lkICop
ICh1NjQpIG5yX3NhbXBsZXMpKSA9PSAtMSkKICAgICAgICAgZGllKCJVbmFi
bGUgdG8gY3JlYXRlIHRocmVhZCA9ICVtIik7Cgl9CgogICBmcHJpbnRmKHN0
ZG91dCwgIkxhdW5jaGVkICV1IHRocmVhZHMuXG4iLCBucl90aHJlYWRzKTsK
CiAgIHN0YXJ0ID0gdGltZXN0YW1wKCk7CiAgIAogICBzdGFydF9mbGFnID0g
MTsKCiAgIGZvciAoaSA9IDA7IGkgPCBucl90aHJlYWRzOyBpKyspCiAgICAg
IHB0aHJlYWRfam9pbih0aHJlYWRzW2ldLCAodm9pZCAqKSAmcmVzdWx0c1tp
XSk7CgogICBzdG9wID0gdGltZXN0YW1wKCk7CgogICBmb3IgKGkgPSAwOyBp
IDwgbnJfdGhyZWFkczsgaSsrKQogICAgICBwcm9jZXNzX3RocmVhZF9yZXN1
bHQocmVzdWx0c1tpXSwgbnJfc2FtcGxlcyk7CgogICBwcmludGYoInQybG9j
a190ZXN0LmM6XG5FbGFwc2VkIHRpbWU6ICUyLjRmIHNcbiIsICgoZG91Ymxl
KSAoc3RvcCAtIHN0YXJ0KSkgLyAxMDAwMDAwLjApOwogICBwcmludGYoIkF2
ZyB0cmFuc2FjdGlvbiBsYXRlbmN5OiAlMS4zZm5zXG4iLCAoKChkb3VibGUp
IChzdG9wIC0gc3RhcnQpKSAqIDEwMDAuMCkgCgkJCSAvICgoZG91YmxlKSAo
bnJfc2FtcGxlcyAqIG5yX3RocmVhZHMpKSk7CgogICBpZiAob2JqLnZhbHVl
ICE9IChucl9zYW1wbGVzICogbnJfdGhyZWFkcykpCiAgICAgIGRpZSgiVEVT
VCBGQUlMRUQ6IG9iai52YWx1ZSA9ICVxdTsgKG5yX3NhbXBsZXMgKiBucl90
aHJlYWRzKSA9ICV1XG4iLCBvYmoudmFsdWUsIAoJCQkgKG5yX3RocmVhZHMg
KiBucl9zYW1wbGVzKSk7CgogICBmcmVlKHRocmVhZHMpOwogICBmcmVlKHJl
c3VsdHMpOwoKICAgZXhpdCgwKTsKfQo=

--0000000000009b6b720605a81cc3--
