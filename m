X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["746" "Wednesday" "17" "July" "2019" "10:15:31" "+0300" "Tomer Brisker" "tbrisker@redhat.com" "<CAE=eJsfR_nb62gWqyM+4v5AQwgLziyJwQ9BwPHG+PFO7ezXMTA@mail.gmail.com>" "22" "[oss-security] CVE-2019-10198: Authorization bypass in Foreman tasks plugin" nil nil nil "7" "2019071707:15:31" "[oss-security] CVE-2019-10198: Authorization bypass in Foreman tasks plugin" (number mark "U       tbrisker@red Jul 17   22/746   " thread-indent "\"[oss-security] CVE-2019-10198: Authorization bypass in Foreman tasks plugin\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-10198: Authorization bypass in Foreman tasks plugin" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15805 invoked by uid 550); 17 Jul 2019 07:16:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15785 invoked from network); 17 Jul 2019 07:16:19 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=m/1RtDl1vkmd9ZQ1PHz98vHj/iMbPQKcWSiIFY0mTy4=;
        b=WvRnZ//Gk+T/wKXcTgks0Q904uV62M8ORLT/oiXdlYFMAQ2gn1Bwfz5XhSjh0jiDeT
         0vV2TU/uY2dZ7ZMS3MKSsIJ6twzwKUHqJNL8OsUeiH9m3eI78bnsgi0miF/zkZ90WkQo
         gBA61BYU2c182bCClO6P6iOfODaog2iCgUjG7iTfKTNYvaZQW0u33sNCK88qKuVrWJPl
         S75Iu+DwZlO7DcPxOWszW1w4O9MNbjWopYYvB7bLDFYT4N5G8Pv6IKAkpjpNSW7PhHh+
         wW/u7/FkBdSV/T/CtQRDPQYGeJtkEje+RyRRe7S8Da0UwVmVeXZwdnls0TGsNxs7Qfpu
         NmmQ==
X-Gm-Message-State: APjAAAW+/7IYwo0zGbfSgt42zKbxr7utLOw6/kDjk8oW5NoscPTE6x/3
	s4xNmYwQAG06xREIDpAeg4Dxou7KtYjMWbinhT73ZcAc9qI=
X-Google-Smtp-Source: APXvYqzIX1veiOo3c+sj9zCB/xCtmy3mSQ5dXGZxXrAlIzWWGDt1pbxLVisDzy2n9S5etWKKXUAzm3y8vNdv6eR/K6c=
X-Received: by 2002:a5b:342:: with SMTP id q2mr22636312ybp.382.1563347767815;
 Wed, 17 Jul 2019 00:16:07 -0700 (PDT)
MIME-Version: 1.0
From: Tomer Brisker <tbrisker@redhat.com>
Date: Wed, 17 Jul 2019 10:15:31 +0300
Message-ID: <CAE=eJsfR_nb62gWqyM+4v5AQwgLziyJwQ9BwPHG+PFO7ezXMTA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000005c8c5c058ddb4424"
Subject: [oss-security] CVE-2019-10198: Authorization bypass in Foreman tasks plugin

--0000000000005c8c5c058ddb4424
Content-Type: text/plain; charset="UTF-8"

Hello,

An authorization bypass was discovered in the Foreman tasks plugin which
allows authenticated users to see details of tasks without validating the
user has proper permissions to do so. Viewing the details requires prior
knowledge of the task UUID, which can not be easily guessed.

This affects Foreman tasks since version 0.7.8, and fixed in versions
0.15.7, 0.16.0 and newer.
Further information: https://projects.theforeman.org/issues/27275
Commit fixing the issue:
https://github.com/theforeman/foreman-tasks/commit/3104a46cf669ae62f9034e9547cb93cc03384cd9

-- 
Have a nice day,
Tomer Brisker (he/him/his)
Red Hat Engineering

--0000000000005c8c5c058ddb4424--
