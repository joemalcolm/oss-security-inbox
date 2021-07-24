X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1076" "Saturday" "24" "July" "2021" "18:33:44" "+0300" "Georgi Guninski" "gguninski@gmail.com" nil "35" "[oss-security] Potential symlink attack in python3 __pycache__" nil nil nil "7" nil nil (number mark "U       gguninski@gm Jul 24   35/1076  " thread-indent "\"[oss-security] Potential symlink attack in python3 __pycache__\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Potential symlink attack in python3 __pycache__" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29989 invoked by uid 550); 24 Jul 2021 15:38:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28051 invoked from network); 24 Jul 2021 15:34:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=ho85YVuM2+rRNkoMuPiZnp2nW5rfavdIvfzQspPQs0Q=;
        b=sOlfjN/HKJO1hMxL8bJb3oew0P/aSQT8p9yv5Pm1QLoqaT3eqqMsnw5A2j2pzyvBK0
         rjndPxwJa/fAOEL2kUapYLwNhRtY3bFPyP3e2vSUBXiFx2Ny76Zo6vGU/skR8fQIzGaC
         dOxGu+1iTPl67OJeBrev3+dLB/onrTbmN+JH4P0/3toE66H6XyqZGwGuLOSTEDbnpvke
         SMhoBT5c1nK+q+TXgEw3NUAFgJHhaQX4Q0G5Rkb1xeIOV5ALdxGL7P92sIylCzqjffJ9
         jC2QZI62OcL0/RZL98zLaXp2KUNeo4UnhGGF7Z8xZq3kQu+KFXOQzk1t/oniB1bpX2US
         bVSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=ho85YVuM2+rRNkoMuPiZnp2nW5rfavdIvfzQspPQs0Q=;
        b=dUvug+NMWwoua78SQWd0v1LF9xTwzIocSHHmNx6DLFImZZSZ8SQYA3mlwiT5sZs5yW
         Z4Rdij953G6TPRS0sRTrNIolhBSEPn9vLgJwPxfib6ubXO99C6qEuJXeGUNlHQqwI4Xt
         FL0vjc+PRbFOxP20X/Pr94TyFDfdHjbyXwOvd11/IaRbx7oynGS5DvPGE4ABx7yS8oi2
         kMlEHJCLpekEXF8LvFd0ISqbr3SS1BifQKzFitgpI9AFT0GR0UYS0wuNQNZqas9woxGa
         7il6CNCMmR4zoLDDreWm8QaQe/MumG+KSbjyRW7uPoaH/E0kRb2Yqa/jEZztOWt8q1T0
         bLvA==
X-Gm-Message-State: AOAM5320CVn0LwEL85A/jZhl/CO1kw4fdeGOqrQO0yAMDXcOqTKZZiKo
	O9QAwEawM8GV4a/xE0DCz4fZnSmKKXnDMhkG7TipMpiEtFY=
X-Google-Smtp-Source: ABdhPJweq/OuygqmLzVj02oCaHIP+/QVUVBEcMV0YKvPgFz2h6sXtLEFXABebXH0M1E/gPuW5/ygowbRtlmEgn5YEho=
X-Received: by 2002:a5d:4c87:: with SMTP id z7mr10414509wrs.405.1627140835449;
 Sat, 24 Jul 2021 08:33:55 -0700 (PDT)
MIME-Version: 1.0
From: Georgi Guninski <gguninski@gmail.com>
Date: Sat, 24 Jul 2021 18:33:44 +0300
Message-ID: <CAGUWgD_tV+cJjM_=TDrcNBhpcZOFm+JR2+Jv1tnpaSeXtM8EfQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Potential symlink attack in python3 __pycache__

Not sure if this is vulnerability, but it looks like
classical symlink attack.

In python3, if a script in directory DIR1 does "import another",
then python3 creates directory __pycache__ in DIR1 and puts
some files in __pycache__.

According to our tests, if DIR1/__pycache__ is symlink to something,
then python3 follows the symlink.

We suspect the attacker has little to no control on the created files,
except that the files are created.

Here is an artificial session of root shooting herself in the leg
on ubuntu 20:

root@bialokote:~# python3 --version
Python 3.8.10
root@bialokote:~# cat /tmp/a.py
try:  import joro2
except:  print("error in import (2)")
root@bialokote:~# cat /tmp/joro2.py
print("in joro 2")
blah=0
root@bialokote:~# rm ~/tests/*
root@bialokote:~# rm /tmp/__pycache__ #XXX
root@bialokote:~# ls -l ~/tests
total 0
root@bialokote:~# ln -s ~/tests/ /tmp/__pycache__ #XXX shooting in leg
root@bialokote:~# python3 /tmp/a.py
in joro 2
root@bialokote:~# ls -l ~/tests
total 4
-rw-r--r-- 1 root root 144 Jul 24 16:58 joro2.cpython-38.pyc
root@bialokote:~#
