X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1815" "Sunday" "17" "December" "2017" "13:53:47" "+0100" "Raphael Geissert" "atomo64@gmail.com" "<CAA7hUgE_9Q_sta09JaBZNezm=7O5hvaJ1DVUARxdV+MMyvGGng@mail.gmail.com>" "39" "[oss-security] Sonatype Nexus Repository Manager 2.x weak password encryption" nil nil nil "12" "2017121712:53:47" "[oss-security] Sonatype Nexus Repository Manager 2.x weak password encryption" (number mark "U       atomo64@gmai Dec 17   39/1815  " thread-indent "\"[oss-security] Sonatype Nexus Repository Manager 2.x weak password encryption\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23738 invoked by uid 550); 17 Dec 2017 12:54:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23701 invoked from network); 17 Dec 2017 12:54:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=W4FuUmeD+rScEmprsvVrvhUy1iySax/cYOy8UBG4D6A=;
        b=YCzkvaHDEHXJTHqjsTtpDOPE6bfGlGXZ0NuiUng325GNA4cDT9HylhxDbL/cT8T/KZ
         t2oyXGwOvnE+2KqBCxZM516Bts33nESDvOgNzYF0CRMKbBlYQalB28bM8VCQrUtV+GrF
         8jqRRSaQ8h4w86R3bh0yTOMYQveqc8GKXWpTYh4ImNvx6jAqnSBpeffZMvSL9EJvNtaS
         s7WV+0OgLboWrQXWnpG7Bb3+c0AIYFPu5OP5BaFF7HXcEcvWUl/Yb4mDlu0///gHjLf3
         qgQO5QqppSYU6K90M/qGB8vaYKXps59jdFePLsdGoVt5CjqLEqgFLWgrWAJmU+KnwzKw
         cL8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=W4FuUmeD+rScEmprsvVrvhUy1iySax/cYOy8UBG4D6A=;
        b=ewKtDtaC2+fPBcsvXUDixSLObuelwlB1oqmUNfhq9a+1hk5uP90Vdk7obM63Sb/QB/
         9GIcm1b8quEYDpvpUyBBWpZkJ319nJKI5aVEQRT2YEyTjZanCdHp2CEwxtoPHbqF7LJj
         AonOju+cSmrMuAGg+j+fXlTRm/WpEH3rnzK3My083pXU9ahlw8/IyNKOnWJx+UlKpU3s
         eaCCT9uEOFkP9b8wyN8/7r3+j6R37WPCYkXOjW7PXh2tslQTqPma8REe13qq6sEQZnB9
         yOf1iqelbeMVChFz0GA/ptx/YlJO34wXAJBNkX2DlLASjrN/BHUxxTBkcNgTlA4Xvhoo
         nEOw==
X-Gm-Message-State: AKGB3mLrG49oUYw5uxEFJF+FN6SV2kBcaMC2i++51QfssaJHGEPERYdX
	8UMicngT9GBH0Xuzmp/2D1SgdQRcAHvH5Qic0nB26FzU
X-Google-Smtp-Source: ACJfBotOXHvK3L/MuWTZtygeJvHvWe1iFgTNkLSj9W4qs1MpsiL3aCsnexDHJTN11yPt/+ix8blTg3HCxwZ65RWv1PM=
X-Received: by 10.36.93.5 with SMTP id w5mr16004808ita.124.1513515248350; Sun,
 17 Dec 2017 04:54:08 -0800 (PST)
MIME-Version: 1.0
From: Raphael Geissert <atomo64@gmail.com>
Date: Sun, 17 Dec 2017 13:53:47 +0100
Message-ID: <CAA7hUgE_9Q_sta09JaBZNezm=7O5hvaJ1DVUARxdV+MMyvGGng@mail.gmail.com>
To: Open Source Security <oss-security@lists.openwall.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Sonatype Nexus Repository Manager 2.x weak password encryption

Hi,

The Nexus Repository Manager in at least version 2.14.5 [0] (latest of
the 2.x series), stores the LDAP bind password in an on-disk file
using PBE (bouncy castle's implementation of PBEWithSHAAnd128BitRC4).

This is all great except for:
- it using only 23 iterations[1]
- it using a hard-coded and weak password[2]

Therefore offering as much protection as a rot13 would.

Given that the same PasswordHelper containing the weak password is
present elsewhere in the code, it is very likely that this weak crypto
issue affects other passwords stored by Nexus:

- components/nexus-core/src/main/java/org/sonatype/nexus/configuration/PasswordHelper.java[3]
- components/nexus-security/src/main/java/org/sonatype/security/configuration/source/PasswordHelper.java[4]

It appears that this code is no longer used by the 3.x series.

FWIW, the on-file password is:

base64(SALT_SIZE || SALT || PBE_OUTPUT )

SALT_SIZE always being 8 (hard-coded).

N.b. I'll be filing a CVE request in a moment.
N.b. I have not contacted sonatype. I couldn't find an email address.

[0] https://help.sonatype.com/display/NXRM2/2017+Release+Notes
[1] https://github.com/sonatype/nexus-public/blob/nexus-2.x/components/nexus-ldap-common/src/main/java/org/sonatype/security/ldap/upgrade/cipher/DefaultPlexusCipher.java#L64
[2] https://github.com/sonatype/nexus-public/blob/nexus-2.x/components/nexus-ldap-common/src/main/java/org/sonatype/security/ldap/realms/persist/DefaultPasswordHelper.java
[3] https://github.com/sonatype/nexus-public/blob/nexus-2.x/components/nexus-core/src/main/java/org/sonatype/nexus/configuration/PasswordHelper.java
[4] https://github.com/sonatype/nexus-public/blob/nexus-2.x/components/nexus-security/src/main/java/org/sonatype/security/configuration/source/PasswordHelper.java

Cheers,
-- 
Raphael Geissert
