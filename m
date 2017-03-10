X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1453" "Friday" "10" "March" "2017" "12:56:25" "+0100" "Damien Regad" "dregad@mantisbt.org" "<CA+zp4VOOxRQqdJzt_ZPK3RDXo2zxmq+xEpnYUThtCoJCtwtEzw@mail.gmail.com>" "51" "[oss-security] Advisory: XSS issues in MantisBT (CVE-2017-6797, CVE-2017-6799)" nil nil nil "3" "2017031011:56:25" "[oss-security] Advisory: XSS issues in MantisBT (CVE-2017-6797, CVE-2017-6799)" (number mark "U       dregad@manti Mar 10   51/1453  " thread-indent "\"[oss-security] Advisory: XSS issues in MantisBT (CVE-2017-6797, CVE-2017-6799)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9274 invoked by uid 550); 10 Mar 2017 16:07:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1653 invoked from network); 10 Mar 2017 11:56:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:from:date:message-id:subject:to;
        bh=UdXHY+RjiDOZgi4sSfgq8GfKOviM2C3zv894zMf7G48=;
        b=Smw9f/XUbH/Ns8++5hLJLXjtfHHIVEuAM42WPG9RC3C2xgzymoQFmLJBvB/x4VIDxr
         ISHkaofS/HI8gP4kBGHTw+flJsDbt5NGr9FQMzQZFm7zXqXIX7N0rIICZofBCspzreQT
         MzQ7Ea0lnqVLRF7WJ/h+UsjJcasSNlyMLrnHyzBXs1VTZoTSy34fBNzEjXTv9mHnP5tC
         UfbWlLIDbsBK4/5aKNeOdXJzJ6r15NXFj3C1gPzKaJ5KNBN52HbMDB+g39N+so9Grjcx
         ehjV2PG54Gx3vrUHSqX7ArlyU2Rpy4qzUSMRubBlFk6c90FnUSY8n3kl68NewwcEXeyo
         ppOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
         :to;
        bh=UdXHY+RjiDOZgi4sSfgq8GfKOviM2C3zv894zMf7G48=;
        b=LTRFWz2fev2CQrqLF29NaMJkrR522oR8RJCqhRYoFifwSo3+1LxBx1r2P2A8V1OQZE
         Dfo54fdlUvc7oqMGkvOJLz+Z2mLkUmM5sZKjg+pYZov/Ib+BpaltQG6Yyicg/AVyUrZh
         v2aUINTCwkzI96CrseovgjqKAg6E+sNkaDVM0rRJK+ZUTiCWgwGK1vHp7QC3E5nPCiDr
         H1CaVVzi/ZDsmm+HiG9aLt8k80UvWvf2wCzkd6hISQgo0KW9r95F8GfSvAPeLT+AcZhh
         +WG43ax8lA1kpm6Rq1dFm2HCijHJDH0NkddSSTooHbv74aSbQE5nEALuFAV9swlln9/R
         8XUA==
X-Gm-Message-State: AMke39noYv51KJHIVjGTyKyH2U6nViGfbcCS2cqaM9hBgmU8iMJ4LMCyZLz1TEHlnsbzZVWUWkxK0dwyNDfPPA==
X-Received: by 10.200.40.42 with SMTP id 39mr19214845qtq.149.1489146986008;
 Fri, 10 Mar 2017 03:56:26 -0800 (PST)
MIME-Version: 1.0
Sender: dregad@gmail.com
From: Damien Regad <dregad@mantisbt.org>
Date: Fri, 10 Mar 2017 12:56:25 +0100
X-Google-Sender-Auth: UpZ-XCe79QEEHjQzOoxZpTgoqv4
Message-ID: <CA+zp4VOOxRQqdJzt_ZPK3RDXo2zxmq+xEpnYUThtCoJCtwtEzw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a1141075c1e9908054a5f0dec
Subject: [oss-security] Advisory: XSS issues in MantisBT (CVE-2017-6797, CVE-2017-6799)

--001a1141075c1e9908054a5f0dec
Content-Type: text/plain; charset=UTF-8

Please take note of the following 2 cross-site scripting issues in MantisBT

Best regards
Damien Regad
MantisBT developer


1. CVE-2017-6797: XSS in bug_change_status_page.php

A cross-site scripting (XSS) vulnerability in bug_change_status_page.php
allows remote attackers to inject arbitrary JavaScript via the
'action_type' parameter.

Affected versions: 1.3.0-beta.3 through 2.2.0
Fixed in versions: 1.3.7, 2.2.1 (not yet released)

Patch:
- 1.3:
https://github.com/mantisbt/mantisbt/commit/a2d90ecabf3bcf3aa22ed9dbbecfd3d37902956f
- 2.x:
https://github.com/mantisbt/mantisbt/commit/c272c3f65da9677e505ff692b1f1e476b3afa56e

Credits:
Reported by Etienne Landais, fixed by Damien Regad (MantisBT developer)

References:
MantisBT issue tracker http://www.mantisbt.org/bugs/view.php?id=22486


2. CVE-2017-6799 - XSS in view_filters_page.php

A cross-site scripting (XSS) vulnerability in view_filters_page.php allows
remote attackers to inject arbitrary JavaScript via the 'view_type'
parameter.

Affected versions: 2.1.0 through 2.2.0; fixed
Fixed in versions: 2.2.1 (not yet released)

Patch:
https://github.com/mantisbt/mantisbt/commit/1677251434b6e8b2be8f1d4376a3e78f7be14d95

Credits:
Reported by Etienne Landais, fixed by Damien Regad (MantisBT developer)

References:
MantisBT issue tracker http://www.mantisbt.org/bugs/view.php?id=22497

--001a1141075c1e9908054a5f0dec--
