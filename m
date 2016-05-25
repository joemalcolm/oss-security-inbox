X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1585" "Wednesday" "25" "May" "2016" "10:51:15" "+0300" "Lior Kaplan" "kaplanlior@gmail.com" "<CAEsznC5htNHcq=f_tq8A99yD5k4t84AFaW=sj7RL589qMmoaXQ@mail.gmail.com>" "54" "[oss-security] Fwd: CVE for PHP 5.5.36 issues" nil nil nil "5" "2016052507:51:15" "[oss-security] Fwd: CVE for PHP 5.5.36 issues" (number mark "U       kaplanlior@g May 25   54/1585  " thread-indent "\"[oss-security] Fwd: CVE for PHP 5.5.36 issues\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5595 invoked by uid 550); 25 May 2016 07:51:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5486 invoked from network); 25 May 2016 07:51:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:cc;
        bh=RQWxXesWjvNbgc8GyCZz9YZIIxyNB6mPUNdRPNW5cz0=;
        b=CHUulsLXuZzzWW7uYWhM9wYa9PuVsBetWIX/OqF//GvXeeyscc//P9kSbp/UpuPqUM
         xqv40M+bFiPdNPMSivMs5RcgHWTBk5204AObDG2eDQ+3updcB3sIraZPhMCtRVn7iWv0
         EETbGXQJPfAP0v52La5p3W1KD3IiOE79UcQwhf8mMoceVSyl9mgX8biDzcL8JXxFzUXT
         dsJD2x5YLCtrX5y3isRWxfTbcWMw5/3AkDtV0U+9mZuNC4rkQ9sRE0HziH73BXIwdTvf
         BI6+400e8xAcS8pf/bNxHdQ2E/lBN+8CQTW1QOEkOPKhz5V9fGm4lOf8gjhqdMkf6JJE
         ivNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to:cc;
        bh=RQWxXesWjvNbgc8GyCZz9YZIIxyNB6mPUNdRPNW5cz0=;
        b=joW7FJzDMr7ZLC62sahwDe8w0ozPv6zCmLUsjL+emkV+UUiEiYhcnWmX/T0EUCm9I5
         5mtz+9+qZh34rDHc19Mf6wUSRwyqRds8o0DBA+xxo+aF3OFNn5YspDUsMa1b89xsC0gm
         dE5qsaW7vrwxmX4QAFUryrc4hdi7EMA6qI5ZxPyReXmyeZEzevZGcNPmNdDwEqOe6AJo
         8Lxgof0SYHfne/kohjwyxAtbJRvOKlxU2b3YJGRGGWBH5vQZBWte4F6b83osm9VGZi3B
         cRaAPyTqeQsDQFQC+6YfCpFWdD+ZWyVUXXuRSU0uJbPq6ydIrFTg5Lso3RQc/glXeCL4
         mxEw==
X-Gm-Message-State: ALyK8tLQCv+6DvmzzGmIKAUehVHZ92ZrSRwzMpfcBkZHc7r4J7ywYypLN7YKccjU6Ik2NNXZdk9POWX32fhZiQ==
MIME-Version: 1.0
X-Received: by 10.50.29.39 with SMTP id g7mr2571902igh.50.1464162675127; Wed,
 25 May 2016 00:51:15 -0700 (PDT)
Date: Wed, 25 May 2016 10:51:15 +0300
Message-ID: <CAEsznC5htNHcq=f_tq8A99yD5k4t84AFaW=sj7RL589qMmoaXQ@mail.gmail.com>
From: Lior Kaplan <kaplanlior@gmail.com>
To: cve-assign@mitre.org
Cc: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=047d7bd758cc25226f0533a5f019
Subject: [oss-security] Fwd: CVE for PHP 5.5.36 issues

--047d7bd758cc25226f0533a5f019
Content-Type: text/plain; charset=UTF-8

Hi,

Please assign CVE for the following issues, expected to be part of PHP
5.5.36
Code at http://git.php.net/?p=php-src.git;a=shortlog;h=refs/heads/PHP-5.5

#72227 is a backport from upstream, so we'd prefer to reuse their CVE (if
already exists).
#72135 and 72114 are PHP 5.x only bugs.

Thanks,

Kaplan

---------- Forwarded message ----------
From: Lior Kaplan <kaplanlior@gmail.com>
Date: Wed, May 25, 2016 at 12:55 AM
Subject: CVE for PHP 5.5.36 issues ?
To: "security@php.net" <security@php.net>

Following my mail bellow from last week, these are the issues which got
fixed in the security repository for PHP 5.5.

commit 7a1aac3343af85b4af4df5f8844946eaa27394ab
Author: Stanislav Malyshev <stas@php.net>
Date:   Mon May 23 00:28:02 2016 -0700

    Fixed bug #72227: imagescale out-of-bounds read

    Ported from
https://github.com/libgd/libgd/commit/4f65a3e4eedaffa1efcf9ee1eb08f0b504fbc31a

commit 97eff7eb57fc2320c267a949cffd622c38712484
Author: Stanislav Malyshev <stas@php.net>
Date:   Sun May 22 17:49:02 2016 -0700

    Fix bug #72241: get_icu_value_internal out-of-bounds read

commit 0da8b8b801f9276359262f1ef8274c7812d3dfda
Author: Stanislav Malyshev <stas@php.net>
Date:   Sun May 15 23:26:51 2016 -0700

    Fix bug #72135 - don't create strings with lengths outside int range

commit abd159cce48f3e34f08e4751c568e09677d5ec9c
Author: Stanislav Malyshev <stas@php.net>
Date:   Mon May 9 21:55:29 2016 -0700

    Fix bug #72114 - int/size_t confusion in fread

--047d7bd758cc25226f0533a5f019--
