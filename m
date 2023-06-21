Received: (qmail 7774 invoked by uid 550); 21 Jun 2023 11:36:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22173 invoked from network); 21 Jun 2023 00:17:23 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687306631; x=1689898631;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Gu4L8qH54itGiOfS/fpXf5W9KJtJoi6azXYPWJHh7rg=;
        b=Z4ym4fQg8r9WD/qb+LiQNW5xA99hQA187a1houOspYguTgNZZX8WsiBbZmHRMxyVyV
         hquAMAr7pLbOFFXjgKnb9cRhUn4nNv91FMH2lDqFEe91Qz0SzWpRbvGYBnOl+DAtgzG7
         Yt5HMKChIVWS1nFsaa6Qku2im9RLgLPTHJa6/DqKrorEo7BMPRlcyiJxPgAxwXS2tSzc
         ksS0yKJri4gLBXrF1NnCo50d5lgE/68lv71/NzHFfLgwrfxq+QDuRL9rHgGH5jiyiHPB
         OxNKfMGt+rK5iNcjsAfcNnA42yliAV8x0LYxMOCTwysNgiD9oKRv5RidQgmtzX4MonSk
         9Tsw==
X-Gm-Message-State: AC+VfDyG2ivU+UmRTy/cYB/sWUn0o/QeWNhtk/Czwkh3La5rIJU4J323
	B0Pl4QqOQQppMYtaXH07VkBLP/LHojFfh97nrUrd4AIUr88=
X-Google-Smtp-Source: ACHHUZ4LAbcyGv46RZ0nZauNMDcwndXc+Pkx61mpaiO7hsJkFQRdEhcqrwZO/VqH6vQNuxByOE0ulhjiOmWhdIKUB4E=
X-Received: by 2002:a05:651c:1048:b0:2b5:828c:bfc7 with SMTP id
 x8-20020a05651c104800b002b5828cbfc7mr520398ljm.19.1687306630649; Tue, 20 Jun
 2023 17:17:10 -0700 (PDT)
MIME-Version: 1.0
From: Alistair Crooks <agc@pkgsrc.org>
Date: Tue, 20 Jun 2023 17:16:58 -0700
Message-ID: <CAN5gJXqyLMcJD0Wnfy6B4OJKpaggjZGHN-nRkk8DDO=s=y6TLg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="00000000000058dce905fe98b0ba"
Subject: [oss-security] PAM/Kerberos issue on NetBSD

--00000000000058dce905fe98b0ba
Content-Type: text/plain; charset="UTF-8"

Hi folks,

The fix for a pam/kerberos issue on NetBSD has already been fixed and
pullups requested for release branches, see:
https://mail-index.netbsd.org/source-changes/2023/06/20/msg145461.html
(commit log appended to this mail) and CVE-2023-3326

For various platforms, the exposure is not thought to be that great

+ Linux - not believed to be affected (would be good to get some
corroboration for this)
+ FreeBSD - affected, but not in the default install
+ OpenBSD - no kerberos
+ DragonflyBSD - no kerberos
+ NetBSD - sadly affected

This was found via code inspection by Taylor Campbell (riastradh@NetBSD.org
)

My apologies for the pre-announcement not making the distros list ahead of
time, an internal miscommunication.

Regards,
agc

Module Name:    src
Committed By:   riastradh
Date:           Tue Jun 20 22:17:18 UTC 2023

Modified Files:
        src/lib/libpam/modules/pam_krb5: pam_krb5.8 pam_krb5.c

Log Message:
pam_krb5: Refuse to operate without a key to verify tickets.

New allow_kdc_spoof overrides this to restore previous behaviour
which was vulnerable to KDC spoofing, because without a host or
service key, pam_krb5 can't distinguish the legitimate KDC from a
spoofed one.

This way, having pam_krb5 enabled isn't dangerous even if you create
an empty /etc/krb5.conf to use client SSO without any host services.

Perhaps this should use krb5_verify_init_creds(3) instead, and
thereby respect the rather obscurely named krb5.conf option
verify_ap_req_nofail like the Linux pam_krb5 does, but:

- verify_ap_req_nofail is default-off (i.e., vulnerable by default),
- changing verify_ap_req_nofail to default-on would probably affect
  more things and therefore be riskier,
- allow_kdc_spoof is a much clearer way to spell the idea,
- this patch is a smaller semantic change and thus less risky, and
- a security change with compatibility issues shouldn't have a
  workaround that might introduce potentially worse security issues
  or more compatibility issues.

Perhaps this should use krb5_verify_user(3) with secure=1 instead,
for simplicity, but it's not clear how to do that without first
prompting for the password -- which we shouldn't do at all if we
later decide we won't be able to use it anyway -- and without
repeating a bunch of the logic here anyway to pick the service name.

References about verify_ap_req_nofail:
- mit-krb5 discussion about verify_ap_req_nofail:
  https://mailman.mit.edu/pipermail/krbdev/2011-January/009778.html
- Oracle has the default-secure setting in their krb5 system:
  https://docs.oracle.com/cd/E26505_01/html/E27224/setup-148.html
  https://docs.oracle.com/cd/E26505_01/html/816-5174/krb5.conf-4.html#REFMAN4krb5.conf-4
  https://docs.oracle.com/cd/E19253-01/816-4557/gihyu/
- Heimdal issue on verify_ap_req_nofail default:
  https://github.com/heimdal/heimdal/issues/1129


To generate a diff of this commit:
cvs rdiff -u -r1.12 -r1.13 src/lib/libpam/modules/pam_krb5/pam_krb5.8
cvs rdiff -u -r1.30 -r1.31 src/lib/libpam/modules/pam_krb5/pam_krb5.c

Please note that diffs are not public domain; they are subject to the
copyright notices on the relevant files.

--00000000000058dce905fe98b0ba--
