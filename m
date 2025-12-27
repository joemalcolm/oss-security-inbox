Received: (qmail 9830 invoked by uid 550); 27 Dec 2025 19:38:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22198 invoked from network); 27 Dec 2025 10:31:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766831482; x=1767436282; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=cA1FKdfQsGrHpLSxt0IeuCkicuVCytQyLkgLdQaAa3s=;
        b=gabKNcokEZim+mUHs8tQrQBP97FMv5hJpQBUvFp1TRHEwCHX/GCI1Q9vJh7eYvM+G9
         POAoAoEhKbeh0ZlSzZRDdjN4rxl4LfqDi6cEnthPYK7Zy67M/fYohI+cb75vaa/hWgW2
         NXRLR4y9CpUcTaAIMks3NnMKRz6ClLk/2CfpWRkY4XmJORpTKRsZXBaEDLKiz50NAbF1
         +4xQ+91PBDirb0jtUXoG0LQGUIIsUGv7vxeQPzwmFvEACNcu/xUZGufgLqWa5BlGmh7A
         bPW0Q75X+1Sut3n+Yk5O6WGZUDShViD0RCCzI8xOdrzozH65D0G641urSP5v0P6yV+m5
         Z2mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766831482; x=1767436282;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cA1FKdfQsGrHpLSxt0IeuCkicuVCytQyLkgLdQaAa3s=;
        b=R/ZNHBp6ZQdW4KoRo0njZrjLDKq2ExO+Heog7eyNeJrpu5c7YhGIkT11MT+XxuJr3v
         h4UqKw+/f7AxLSsgKvfamuiUR1xULNtEdI38g7sN0ABhPXh5Cvo5P4gxZgdF2XlWEPv1
         j4b9h5ZZiiVC7sOcrDS9s/OeBBrfZBEV2fkB2fFvJdBFAGconqhLm+K01B4uY6vcQ+2n
         PQ4ACqfPkTnQ9/U6F8sN/22UBhvQUmF2iZUV3QdQo14p9thzT+TDoUnxZ8WXuOm5aw1s
         FzlYVs8ePo4RmSOquNa0IzlYWiEP/g8s0mmcE03r3aSZwr0H49HklRoy6Dp9+LZhODe/
         Cw4g==
X-Gm-Message-State: AOJu0YzhdHGTpuJRyAvIqU8QL/tUSlH2PkM3wcEbsyf/pWLQujD9ILBU
	tCEVB1WL/XGABUyrAi/IGHqlA0ZTzu8G4Zi7iJZeJaRnnrSL8k5OeZgByd+Eeh3YvKY7q3M2Rfe
	S4hGX+AtXujWMMelZ8ySq26aLFMEskEjLESu4MyoWig==
X-Gm-Gg: AY/fxX7Yh7U+Snh3T6MEq1vRiddiSKdMSVstWtWaYwcb5j/vX4VNrBr9bWCKkrYi9P8
	x+uGTdq4fE/uIXoFidWLjwlm97Vaiz9oJgn7qwGPK0S8Cn4RoF0sqPhVKV/dex2JbbwgExPIc9w
	5jcAiNwaGatcq2vxrIkOT8yZNiwePnK9sYFnLzpzUlK/bf3f7OYr57wpEkVKwftWy1pKX5LsHkC
	rxc8VbTLyPYFxlYnXjKetZR7kCaud6vxL5dWHVtVeCrk49F7IEqkLE2FgsUhLmu3GvyA+Q=
X-Google-Smtp-Source: AGHT+IHyjrquq6gZWd2ShO/GVg/KZq79smdK+cmySvhNb3t16e7TicV3g+uAv95udeJH5G2jtBezEree66MoI4NRd7o=
X-Received: by 2002:a05:7022:248b:b0:119:e569:f865 with SMTP id
 a92af1059eb24-12171a68795mr23664332c88.2.1766831481652; Sat, 27 Dec 2025
 02:31:21 -0800 (PST)
MIME-Version: 1.0
From: roryqi <jerqi1242949407@gmail.com>
Date: Sat, 27 Dec 2025 18:31:06 +0800
X-Gm-Features: AQt7F2o7WMIoqqehR1u58XmPzikpXhcuo2jFVFGFrMhgAGY4u6YfhMaUGDxHTJQ
Message-ID: <CAOCXXtuV5_qg6kkC92qMe_nrjeyM2OLUdgVi0CSRvj6ax0cRkA@mail.gmail.com>
To: oss-security@lists.openwall.com, dev@uniffle.apache.org, 
	omkar parkhe <omkarparth@gmail.com>, announce@apache.org, security@apache.org
Content-Type: multipart/alternative; boundary="000000000000d78a8f0646ec8269"
Subject: [oss-security] CVE-2025-68637: : Insecure SSL Configuration in Uniffle HTTP Client

--000000000000d78a8f0646ec8269
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Severity:

Affected versions:

- undefined  before 0.10.0

Description:

A vulnerability.

This issue affects undefined: from before 0.10.0.

Users are recommended to upgrade to version 0.10.0, which fixes the issue.

Credit:

omkar parkhe =EF=BC=88finder=EF=BC=89

References:
https://uniffle.apache.orghttps://www.cve.org/CVERecord?id=3DCVE-2025-68637

--000000000000d78a8f0646ec8269--
