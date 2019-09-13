X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["715" "Friday" "13" "September" "2019" "11:25:20" "-0300" "Thiago H. de Paula Figueiredo" "thiagohp@gmail.com" "<CAE_88GZuxbwSuZy+oNqGLZj9hWHiyy7n7FhJY-fza_e0UinJjg@mail.gmail.com>" "25" "[oss-security] CVE-2019-0207: Apache Tapestry 5.4.2 Path Traversal vulnerability" nil nil nil "9" "2019091314:25:20" "[oss-security] CVE-2019-0207: Apache Tapestry 5.4.2 Path Traversal vulnerability" (number mark "U       thiagohp@gma Sep 13   25/715   " thread-indent "\"[oss-security] CVE-2019-0207: Apache Tapestry 5.4.2 Path Traversal vulnerability\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-0207: Apache Tapestry 5.4.2 Path Traversal vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29959 invoked by uid 550); 13 Sep 2019 17:46:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23585 invoked from network); 13 Sep 2019 14:25:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=209Y3jvzx585w1HndDhgJT1+6DsnZD7RZB22Qqh+OyY=;
        b=p2NTFdBYMfEXUeDoAkxux1CcW4pySQONyp7Sx5v/wjC7UAMq4mx3vf1ewCu75E0UN5
         VZYt1slGLoSQzpGvHEOSgchw2ZLzFXu5Vp+AhISN+G9buIKelCgscCZScmFShbDcf35T
         TFTgpDn1tWDDzF7FZKCXObQmMiXZ38N74r7w+FKyahQGMLmb3tB3SJ+hawjFl6uXfI4Y
         Z2Slsd+dgyfVSVzFNCImkHMTxxbAOZrt2APxUAxTrqJwCR8CiTnX31bH8So+NDSfokrq
         z9QaJRZnSsURD4CAMPXZWmzW9JraKomQOEN9dCfWlZhUxvPdNfly75q20/kS8XpRMiz9
         Io8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=209Y3jvzx585w1HndDhgJT1+6DsnZD7RZB22Qqh+OyY=;
        b=Gf4ow83pmAL+y6X1SqitFtk9Mc5N/Hlc85xNu0wuPZ8wNYblWZ396N2pSy9oLgdYe8
         1JSkRaqByjoCchJbfte/ODaSZTEjJIiT/Yx3OW6lv5Ub++vyi3wtQXK5AdDx1HcT3eSW
         axq2KiDpnssMBvs58mhivJyqQcKuGcs5X1X302we2eSsRspZqho7X9Of9+snUpAac9tv
         Ob8TuB//EFfkkNQj/VcT9cSwi4z6FUQcBNoSSsJUXbOR04ZyKway0VsRyPyoUi9lqqkW
         TukbZC6EF9YDbhztrU3vY/8z6gPmRNZQEp0JihAuBzBKd6oaxqe/9vTZw7NkdgtNVLcx
         DgrA==
X-Gm-Message-State: APjAAAWVJsNiW7qLYgSRq6mojfVdEBDLuKqVTYmS20Sby0BMLaVhJth4
	u+m2kLSbBt1G4JdRr8wlwhr2C/iYb8/hHEuNRWzJjZWR
X-Google-Smtp-Source: APXvYqzBVFLDKid5mVCsOyb9R9QcjxSPTsR5jHDkPyIx5xoU9SkkSJk4E4Zv4QQNEDfo7BoASBTs54dC7D8sbYKb0K4=
X-Received: by 2002:a05:651c:202:: with SMTP id y2mr30866050ljn.4.1568384731245;
 Fri, 13 Sep 2019 07:25:31 -0700 (PDT)
MIME-Version: 1.0
From: "Thiago H. de Paula Figueiredo" <thiagohp@gmail.com>
Date: Fri, 13 Sep 2019 11:25:20 -0300
Message-ID: <CAE_88GZuxbwSuZy+oNqGLZj9hWHiyy7n7FhJY-fza_e0UinJjg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000c6f2d40592700682"
Subject: [oss-security] CVE-2019-0207: Apache Tapestry 5.4.2 Path Traversal vulnerability

--000000000000c6f2d40592700682
Content-Type: text/plain; charset="UTF-8"

CVE-2019-0207: Apache Tapestry 5.4.2 Path Traversal vulnerability
Severity: important
Vendor: The Apache Software Foundation
Versions affected: all Apache Tapestry versions between 5.4.0, including
its betas, and 5.4.4

Description: Tapestry processes assets `/assets/ctx` using classes chain
`StaticFilesFilter -> AssetDispatcher -> ContextResource`, which doesn't
filter the character `\`, so attacker can perform a path traversal attack
to read any files on Windows platform.

Mitigation:
Upgrade to Tapestry 5.4.5, which is a drop-in replacement for any 5.4.x
version.

Credit:
Ricter Zheng

-- 
Thiago

--000000000000c6f2d40592700682--
