Received: (qmail 17961 invoked by uid 550); 9 Aug 2025 22:14:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9268 invoked from network); 9 Aug 2025 20:46:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754772391; x=1755377191; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ByEj4p9Q7C6fbbQnfAvw7fbDBSBjwuCdHTRw0DBEzK4=;
        b=g0zyYgF7wP6yHWHyNoZa7vYrkWZEHEOhT4f9nVTNTayBVvoKBsVXtEhDe/DshVq+GP
         cKi8G7Jj1dmmdJx1yRrOIjcQ3s0MlLxN8AUr9NIQD6wQT5Zt/nglFeaBFitacCUw75Pd
         FnQPK/6bwcP6c+5XLK/8vej59QX1Zxgzfhk9ofkylM0TD6YM0PXz5kygj7ivKCnqR97x
         Rc1/QTM+09+o6oONQsNxk+7/N62p+GRdFpWpRpW+FecFk3cRHQ9omqPRGkELA7Sv/y6d
         DnpoltbAM9ymOGAOfI2luag4vk5BIUVW1nuaKMU6QFe9m16UxgP/+XKEWmpNBKFpf0pG
         tU5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754772391; x=1755377191;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ByEj4p9Q7C6fbbQnfAvw7fbDBSBjwuCdHTRw0DBEzK4=;
        b=qCuchnzkFSNy+RrU9qyfsH9Xxa3f05c9eHl+SauY2yBTbJblM07GDoB1Ljwelj4EAB
         HNn6pdMPHSsD4TOFcBkHbvpveq3V9pcCqDWKjASruqH3N2X/m8gX7dDXj6xKtxwok2YB
         iUb05Q4PU3d7DRc/TGdYp7QJv0FyfQUNNxn2QkXwSYd4DK8etf7YC+icgIbgNzEgdcKF
         QNaQNrRDZKRmARG7zMGe4VrGpe30Pfb+mNH0wD9gt9Xe6AEll9zswlIMnWyPaXCrA6Za
         u1FEMijq9nAwjKSd9TyGlzbk+9a/xg3FhxDXoOApZ/qpGOyTJaPGxDfIW948NzGSRXDx
         nbXg==
X-Gm-Message-State: AOJu0Yx73h7OYXIKiqkJAEgi69iQq9C5K6Oe2zpHYcS3FUMj7hzeBwuL
	SlPu8SyiC796cAOXSpMPDZOblZNNCylUNXe8jpdxexSdNsSG+uWhGRx0OnbdcGa6eQ3Os+mfzyN
	zG7o7rV5KQeK/7gOwyfk7zLvWgsfzMixQkf193/g=
X-Gm-Gg: ASbGncsCoXrrs8OdM1Er86SIF1vEnPj405oDAqjWz+Xr+w+phBiqI3BgPrfjcqxbFqT
	wJ0TLkDtO9zXOSOPboluyXnRTkeE8V6CA6uc/dQ8Tt6mpBQ7CR8jroaGJlkzUAgpcGXMfgSkoow
	ASVr7IDiEEH6YUI5qb1fG/eM/ikjye0KAyWlQMg58M8xMZBvsPYnmaLxPWdJn+eKvu4ThLbLWlE
	NnicJqUcCz/9+MJ+ppTNOKiEg==
X-Google-Smtp-Source: AGHT+IFZDC3urzEnCHoGlahbT2i0XlgmAaxSlQQdzjC7eb5cd0/m79gzHxyspMDTwo7Jc9iNFDRkEPeKSWOy/a+tGmU=
X-Received: by 2002:a17:906:794b:b0:ae2:3544:8121 with SMTP id
 a640c23a62f3a-af9c6e7b438mr665412266b.9.1754772391126; Sat, 09 Aug 2025
 13:46:31 -0700 (PDT)
MIME-Version: 1.0
From: lunbun <lunbun021@gmail.com>
Date: Sat, 9 Aug 2025 13:46:19 -0700
X-Gm-Features: Ac12FXxiuFproRtYLv10_CKUnLLIZZJX4P-BdtjSuRcuP120xDAxLFyYbau27GI
Message-ID: <CAMqWyhi=xW2sq2+Hb2aJ=ta-zfi_Zay6CztQ9mvDqgjbKr1HpQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000008ebb2063bf4c973"
Subject: [oss-security] CVE-2025-55188: 7-Zip: Arbitrary file write on extraction, may lead
 to code execution

--00000000000008ebb2063bf4c973
Content-Type: text/plain; charset="UTF-8"

CVE-2025-55188: 7-Zip: Arbitrary file write on extraction, may lead to code
execution

Affected versions: 7-Zip prior to 25.01
Impact: Arbitrary file write, may lead to code execution
Fix: Update to 7-Zip 25.01
CVE ID: CVE-2025-55188
CVSS: 2.7 [AV:L/AC:H/PR:N/UI:R/S:C/C:N/I:L/A:N] (please see the note at the
end
of this post, however!)

## Summary

Extracting a maliciously-crafted archive with 7-Zip prior to 25.01 allows
for
arbitrary file write, which may lead to arbitrary code execution.

I recommend users to update to 7-Zip 25.01, which contains a fix for this.

## Attack Vector

The conditions necessary for this vulnerability to be exploited are:
1. User is on Linux
2. 7-Zip version prior to 25.01
3. User is extracting an archive of an archive format for which 7-Zip
supports
   symbolic links (e.g. .zip, .tar, .7z, .rar, etc...)

This attack may also be done on Windows, but additional conditions are
necessary. On Windows, the 7-Zip extraction process must have the capability
to create symbolic links (e.g. extract with Administrator privileges,
Windows
is in Developer Mode, etc...).

## Details

7-Zip before 25.01 does not always properly handle symbolic links during
extraction. Prior to 25.01, it was possible for a maliciously-crafted
archive
to create an unsafe symbolic link. 7-Zip follows symbolic links when
extracting, so this leads to arbitrary file write.

An attacker may leverage this arbitrary file write to achieve unauthorized
access/code execution, such as by overwriting a user's SSH keys or .bashrc
file
[1]. In one extraction, an attacker may attempt several times to leverage
this
vulnerability to write to sensitive files.

## Note about the CVE

As of me writing this, if you look up CVE-2025-55188, you will see that
online
references depict it as relatively benign (e.g. no mention of arbitrary file
write, CVSS score of 2.7). I don't know why, but MITRE has, in my opinion,
severely underreported this vulnerability as compared to what I submitted on
the CVE form. I have submitted a request for MITRE to reevaluate the CVSS
score, but I suspect they will not see it for a few days. Because of this,
if
any package repository maintainer needs additional proof that the
assertions I
made in this post are true, I am happy to privately provide a
proof-of-concept.

## Credits

lunbun (lunbun021@gmail.com, https://github.com/lunbun), reporter.
Igor Pavlov (7-Zip maintainer), especially for responding quickly and fixing
this quickly.

## References

[1]
https://blog.doyensec.com/2023/02/28/new-vector-for-dirty-arbitrary-file-write-2-rce.html

--00000000000008ebb2063bf4c973
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">CVE-2025-55188: 7-Zip: Arbitrary file write on extraction,=
 may lead to code execution<br><br>Affected versions: 7-Zip prior to 25.01<=
br>Impact: Arbitrary file write, may lead to code execution<br>Fix: Update =
to 7-Zip 25.01<br>CVE ID: CVE-2025-55188<br>CVSS: 2.7 [AV:L/AC:H/PR:N/UI:R/=
S:C/C:N/I:L/A:N] (please see the note at the end<br>of this post, however!)=
<br><br>## Summary<br><br>Extracting a maliciously-crafted archive with 7-Z=
ip prior to 25.01 allows for<br>arbitrary file write, which may lead to arb=
itrary code execution.<br><br>I recommend users to update to 7-Zip 25.01, w=
hich contains a fix for this.<br><br>## Attack Vector<br><br>The conditions=
 necessary for this vulnerability to be exploited are:<br>1. User is on Lin=
ux<br>2. 7-Zip version prior to 25.01<br>3. User is extracting an archive o=
f an archive format for which 7-Zip supports<br>=C2=A0 =C2=A0symbolic links=
 (e.g. .zip, .tar, .7z, .rar, etc...)<br><br>This attack may also be done o=
n Windows, but additional conditions are<br>necessary. On Windows, the 7-Zi=
p extraction process must have the capability<br>to create symbolic links (=
e.g. extract with Administrator privileges, Windows<br>is in Developer Mode=
, etc...).<br><br>## Details<br><br>7-Zip before 25.01 does not always prop=
erly handle symbolic links during<br>extraction. Prior to 25.01, it was pos=
sible for a maliciously-crafted archive<br>to create an unsafe symbolic lin=
k. 7-Zip follows symbolic links when<br>extracting, so this leads to arbitr=
ary file write.<br><br>An attacker may leverage this arbitrary file write t=
o achieve unauthorized<br>access/code execution, such as by overwriting a u=
ser&#39;s SSH keys or .bashrc file<br>[1]. In one extraction, an attacker m=
ay attempt several times to leverage this<br>vulnerability to write to sens=
itive files.<br><br>## Note about the CVE<br><br>As of me writing this, if =
you look up CVE-2025-55188, you will see that online<br>references depict i=
t as relatively benign (e.g. no mention of arbitrary file<br>write, CVSS sc=
ore of 2.7). I don&#39;t know why, but MITRE has, in my opinion,<br>severel=
y underreported this vulnerability as compared to what I submitted on<br>th=
e CVE form. I have submitted a request for MITRE to reevaluate the CVSS<br>=
score, but I suspect they will not see it for a few days. Because of this, =
if<br>any package repository maintainer needs additional proof that the ass=
ertions I<br>made in this post are true, I am happy to privately provide a =
proof-of-concept.<br><br>## Credits<br><br>lunbun (<a href=3D"mailto:lunbun=
021@gmail.com">lunbun021@gmail.com</a>, <a href=3D"https://github.com/lunbu=
n">https://github.com/lunbun</a>), reporter.<br>Igor Pavlov (7-Zip maintain=
er), especially for responding quickly and fixing<br>this quickly.<br><br>#=
# References<br><br>[1] <a href=3D"https://blog.doyensec.com/2023/02/28/new=
-vector-for-dirty-arbitrary-file-write-2-rce.html">https://blog.doyensec.co=
m/2023/02/28/new-vector-for-dirty-arbitrary-file-write-2-rce.html</a><br></=
div>

--00000000000008ebb2063bf4c973--
