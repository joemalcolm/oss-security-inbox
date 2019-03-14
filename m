X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1365" "Thursday" "14" "March" "2019" "19:48:22" "-0400" "Paul Moore" "paul@paul-moore.com" "<CAHC9VhSQRyh=4wRJTehjDYF8F0uRR3geqfFkAT+VTqrzoYSw4w@mail.gmail.com>" "31" "[oss-security] libseccomp: incorrect generation of syscall argument filters" "^Cc:" nil nil "3" "2019031423:48:22" "[oss-security] libseccomp: incorrect generation of syscall argument filters" (number mark "        paul@paul-mo Mar 14   31/1365  " thread-indent "\"[oss-security] libseccomp: incorrect generation of syscall argument filters\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] libseccomp: incorrect generation of syscall argument filters" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5577 invoked by uid 550); 15 Mar 2019 09:44:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10186 invoked from network); 14 Mar 2019 23:48:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=paul-moore-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=kE8XK5tHt0FKznenkEeBFBfEtTurQFTSUYN2u5HNmiE=;
        b=YHLgabAIf1tUjaam6ITYdHILJ1lEH1jVC3QVK5hrvdWGAX9QEKKyLttZrAXp0HKKqh
         2t6+oWHue/31dh4HlNod0hKoZIeQqxkQgqT3kLc4O7VxK22PK82shOQ+l8k02clBbaz1
         sFcKo1GR8YRXdqDHpq15cIKCCLAAZh0vIIqnv8+Bu87EgBopAkKcUfy2T5lreWXArAFC
         /RdVpsk0eX1qXNahI4DabpB2nHLitopfm7wPArUcngJkGHDba/7OI/uzqmKtNdb5Sews
         McXY9lHue/HWIL0nzI/tCZ4tjHjw6oTCrI2RjbHR49JPxTvIBnaf5d80+AiPy66QutIN
         e89Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=kE8XK5tHt0FKznenkEeBFBfEtTurQFTSUYN2u5HNmiE=;
        b=bu8gqr+GSPhK3CAcGw+oCuoLJX+j2XfHH/vm3fZkZC9q3EzJ3Gnsr5NMYZff8ecGza
         MD9lsoYhI4i0cP2clDhmFYyjjpvA+2SuIU0525/P7d56eTZCPCrs+zzRYIVU2zHc8Opr
         MkShOLG8sqqbgmcK2xVs+qil3u5lO6pkmkwr3VfTiWN2NSnHcnXv8ohiq00wUzR3BHaz
         wZKSUpldSTSeHUXfivSyy4Rk1xTK02UKS50fvmtRqrWDfufA0OEVayfRe4613As5sFJ8
         lLhH9DXVqRNxKppxcrZD2yicUy3pdQFiBmpOaPq854C5fv7ZU/xYA/eJ+sgstxf8XFu7
         Z1fA==
X-Gm-Message-State: APjAAAVjlz4r6gJzm8H2E37Q7iPQHW+A+lrn9L2iCwtyR39ML1rPn0im
	icvegbFj9FFW2/s+x5rH3aCpTlEYOe9W0/9jfCecHOAVWA==
X-Google-Smtp-Source: APXvYqzGST9sqrL+fkOQ+V8U/ZDWVvUj8JRMoH3oNPkYqETkA4GYYXQfn8teOJppaImmkt8f2UazhoXF0ZzfXrHO6f8=
X-Received: by 2002:a2e:968c:: with SMTP id q12mr371176lji.95.1552607313141;
 Thu, 14 Mar 2019 16:48:33 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAHC9VhSQRyh=4wRJTehjDYF8F0uRR3geqfFkAT+VTqrzoYSw4w@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: Jann Horn <jannh@google.com>
Date: Thu, 14 Mar 2019 19:48:22 -0400
From: Paul Moore <paul@paul-moore.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] libseccomp: incorrect generation of syscall argument filters
To: oss-security@lists.openwall.com

Jann Horn (CC'd) identified a problem in current versions of
libseccomp where the library did not correctly generate 64-bit syscall
argument comparisons using the arithmetic operators (LT, GT, LE, GE).
Jann has done a search using codesearch.debian.net and it would appear
that only systemd and Tor are using libseccomp in such a way as to
trigger the bad code.  In the case of systemd this appears to affect
the socket address family and scheduling class filters.  In the case
of Tor it appears that the bad filters could impact the memory
addresses passed to mprotect(2).

The libseccomp v2.4.0 release fixes this problem, and should be a
direct drop-in replacement for previous v2.x releases.  Due the
complexity, and associated risk, of backporting the fix to the v2.3.x
release stream, I've made the difficult decision not to backport the
fix.  Further, I'm not aware of any workarounds for this issue.
Adminstrators and distros are strongly encouraged to upgrade to
libseccomp v2.4.0 as soon as possible.

The related GitHub issue, complete with a brief discussion of the
problem and a list of the assocated patches can be found at the link
below:

* https://github.com/seccomp/libseccomp/issues/139

The libseccomp v2.4.0 release can be found at the link below:

* https://github.com/seccomp/libseccomp/releases/tag/v2.4.0

-- 
paul moore
www.paul-moore.com
