X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["473" "Saturday" "8" "October" "2016" "10:15:55" "-0300" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdQhDOBYjZ86=9G_tE3n_MZZ=az179T67ztn0pZvUHeiKw@mail.gmail.com>" "19" "[oss-security] CVE request: invalid memory accesses parsing object files in libgit2" nil nil nil "10" "2016100813:15:55" "[oss-security] CVE request: invalid memory accesses parsing object files in libgit2" (number mark "U       gustavo.grie Oct  8   19/473   " thread-indent "\"[oss-security] CVE request: invalid memory accesses parsing object files in libgit2\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31842 invoked by uid 550); 8 Oct 2016 13:16:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31775 invoked from network); 8 Oct 2016 13:16:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=cDcZsN17wIaINXG0ML4ue2ayq0wzQ3BFQS8FO3b62Hk=;
        b=rMWxW8rwr/9O5gI7fXrbQV1JgNFDuhiurHjcBEI/jpx2VG/0FPZeUEXgh9m3dY/JOB
         hHuedgh8gG/1SPicTYoIruPzt7uy31Fz+2HtoP26T0IEG1bevg1GU8/1I+8n2MZGDWYz
         z4XK264HqzTQ1RU/Xo+l/ixXrxbxZCjMaCzhSbhLSFZzxN26LIhYjQJ6Db8fZ2wIkvS1
         4oD8XcIbxGzqjcmmjMftztwX/FFDJtVpiBd0dxM/VX7gilSX9twWTW+yoiDOgRizlGS4
         8wxUpiihi9EQzDcqfypFDUT8Dh9CYRixdeUglnV4yhDumoI53CYBOqLOIpHDnp8tNuzs
         LLXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=cDcZsN17wIaINXG0ML4ue2ayq0wzQ3BFQS8FO3b62Hk=;
        b=HvtTLyG/1tgtsEOlrWaaR8vETCI9GPL26l6VvXeCrTq/BR/iT0N3egdBWPXcq6A7td
         /URYUDzK4nPcy+T/OGbt5hMO6E03m6FaA4v9hIMovUkOgFgnR4EkyYsWVhCQkryiqm1Q
         0kcwBBI8NrlN3MI6NUMVAiTHjJPfEklUFcjMAUP/f0YcniH4Hh53SANebOJ0EmpesjmF
         Ho98XQO70RH7F/imXWFhq+f5P36lukeF5ScWU9G9lUfSq2hcvLHesYR+01Uv14rtbeyO
         pARATjvCF5tZYjES1x3vTGL7SbqZcF5uh4/LkceI4+rZ2KMNjWK1i/qghSYzxPDvIwUC
         dL3w==
X-Gm-Message-State: AA6/9RmPHTxZQvQQo5LknEic7qPV4PDj0OcyEG4xvdg1z5fbqMUYzrMCAGV4QVV+6krcGt3+ytlry8Lr7p/3UA==
X-Received: by 10.107.58.10 with SMTP id h10mr17153032ioa.78.1475932555625;
 Sat, 08 Oct 2016 06:15:55 -0700 (PDT)
MIME-Version: 1.0
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Date: Sat, 8 Oct 2016 10:15:55 -0300
Message-ID: <CACn5sdQhDOBYjZ86=9G_tE3n_MZZ=az179T67ztn0pZvUHeiKw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] CVE request: invalid memory accesses parsing object files in libgit2

Hi,

We recently reported two invalid memory accesses in the last revision
of libgit2:

* Read out-of-bounds in git_oid_nfmt:
https://github.com/libgit2/libgit2/issues/3936

* DoS using a null pointer derreference in git_commit_message:
https://github.com/libgit2/libgit2/issues/3937

The developers are preparing a patch to harden object parsing in libgit2 here:

https://github.com/libgit2/libgit2/pull/3956

Please assign one or more CVE if suitable.

Regards,
Gustavo.
