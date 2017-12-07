X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["369" "Thursday" "7" "December" "2017" "16:53:44" "+0800" "feer james" "pnigos70@gmail.com" "<CAKSZ2QtFnvxxRAKSBiCB60T7LX641-+hVeeUddPmAYH426Zxdw@mail.gmail.com>" "18" "[oss-security] CVE Request -- Arbitrary command execution in mercurial repo with a git submodule" nil nil nil "12" "2017120708:53:44" "[oss-security] CVE Request -- Arbitrary command execution in mercurial repo with a git submodule" (number mark "U       pnigos70@gma Dec  7   18/369   " thread-indent "\"[oss-security] CVE Request -- Arbitrary command execution in mercurial repo with a git submodule\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 4075 invoked by uid 550); 7 Dec 2017 10:19:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16283 invoked from network); 7 Dec 2017 08:53:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=HUxR+DHE/m//MuL20mGF02kyWt4rU2z9AqlUGJRa59I=;
        b=pyIabJa+emkIrYWGsYDCIJIQ3kieKuaWOU+eXgixhw829RgqbVX6P7/WzGqBnQiAoJ
         futv5Yw48BFRr9bXI91rKB9aHKF5aAA9RKtghzS0FslqH19AEeUhoZeQCmKnEGx9k62I
         mA+afeNeej3luZ2WutguHHJPR6K/q1q73MYaIWsqWq4JGcmQe4wMbKUa4K9ulSyNt/10
         Y0qjzsdvwAFiAdBzOoj7HNqCF3HL96XrfDk02yzzUsFGIzvKTNipfVTHsSt3kz1RBB89
         TGgqUut7C4vqDrvyC+WLAlkxiFNQdI+VVJBwPFkk00V+Pu5zS5w6qRohCsD+lxiiE/X6
         F9Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=HUxR+DHE/m//MuL20mGF02kyWt4rU2z9AqlUGJRa59I=;
        b=bVbhK9lRJ+4kkbHrPs72jFSuycGz0fHY1pylED3Z+NXDvwHIhtr6nPbMFqUCoZJ0oM
         NtzVditKy3/MhGMpS54i8Ma2D5nL73B80oEP9HYowz0NtL2plWoCM6WzLfG+V9wftdCY
         /qWl4YguAjuUyO2y52yQ8b1LKFiZ7Nopp3qxJSEx6b8U7MoWDHxEqI1ECUQnZRTNQIn5
         +tjjAxrgmK1A8thkk+G7pCTrfY87RDZdugk9ouDRvoGEJMTiTHVZPdzKrlzpxVOw5Zpf
         xyvd2RtykTqKcb/s7C87Z61KUrZyGejX0/ilZVoAcS98ERg9ZnHupRDbVM7y3JF8Q6e0
         y5eQ==
X-Gm-Message-State: AJaThX6m9ofi6HzcDrRnNZboBhct5fOwK1VlRzLKSZ2DdMg2ZdSaq1UZ
	INxzFtlE8mE4q3eba7dY2kHY4dCpQEx+jWzGvK4=
X-Google-Smtp-Source: AGs4zMYIi8M2QBJYjmFjS8JKNWGcodAMYPfM2TTeAgSN5E+6gouI8wNSK+9klprn/BQilMe3wt/cJHk72UdBLFyO7VY=
X-Received: by 10.202.117.13 with SMTP id q13mr20622782oic.52.1512636824881;
 Thu, 07 Dec 2017 00:53:44 -0800 (PST)
MIME-Version: 1.0
From: feer james <pnigos70@gmail.com>
Date: Thu, 7 Dec 2017 16:53:44 +0800
Message-ID: <CAKSZ2QtFnvxxRAKSBiCB60T7LX641-+hVeeUddPmAYH426Zxdw@mail.gmail.com>
To: cve-assign@mitre.org, oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="001a1134fb3e9f1052055fbc34f5"
Subject: [oss-security] CVE Request -- Arbitrary command execution in mercurial repo with a
 git submodule

--001a1134fb3e9f1052055fbc34f5
Content-Type: text/plain; charset="UTF-8"

Hello mitre,

I'd like to request a cve id for this vulnerability.

*Vulnerability Details:*
https://bz.mercurial-scm.org/show_bug.cgi?id=5730

*Offical fix release:*
https://www.mercurial-scm.org/wiki/WhatsNew#Mercurial_4.4.1_.282017-11-07.29


Terry,
Thanks!

--001a1134fb3e9f1052055fbc34f5--
