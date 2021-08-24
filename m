X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3066" "Tuesday" "24" "August" "2021" "20:14:02" "-0300" "Jean Diogo" "j@bsd.com.br" nil "62" "[oss-security] Possible memory leak on getspnam / getspnam_r" nil nil nil "8" nil nil (number mark "U       j@bsd.com.br Aug 24   62/3066  " thread-indent "\"[oss-security] Possible memory leak on getspnam / getspnam_r\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Possible memory leak on getspnam / getspnam_r" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21610 invoked by uid 550); 25 Aug 2021 08:14:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12169 invoked from network); 24 Aug 2021 23:14:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bsd.com.br; s=capeta;
        h=mime-version:from:date:message-id:subject:to;
        bh=HY1K4kTZGtkEnNI1lI7oXBWNrgrffRj2/lBFTAeleNo=;
        b=G5x796+c5vUV/vH/Gg+oJdf4LxYC8SUe1Jce8vxurZoYRUH+P6uRjhvF5yp8u1txaI
         2onHp2AshNraNy1MSIHfDv8YJV3NRzokP5jdHyvAHBV8t3ch8dwXJFt60KS5T2zAw+87
         K4CAFRPFaV+vxE0dVnWhmt6xyjR8jNVGCiBCE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=HY1K4kTZGtkEnNI1lI7oXBWNrgrffRj2/lBFTAeleNo=;
        b=nkHmsVi2KCYZe+T+9qzZE2YSeGZtE0TUs964A0zCeOqpeNBqv/b2jaUQICYRky2/zj
         X+/vOJSFZlrJx8POmZHwfzDbhFRXKlZ5F/kTRLGnSLGwU9+FOmYRFOeWJdweyFCVpFnA
         gDR68RXFkvoNk/4XfguQnVIlgAbp0CsQtLDMrn73wX6+bUC3BL+MdCeEw1YnvsgzQBxr
         4dgbiSC2lua9WjOdzINEFD4WvCj589nt4OyPlsAfkQQhLBYWmW5UT7xBLWt7a8kkb0bj
         pLwIn84WpUa/FNollE6MX1Yq5Hpvi9mz0EG4Gavx+CNb7hHbmtATfI04LeM0ZbSQ0iys
         l5/Q==
X-Gm-Message-State: AOAM533jvtVVdpO1S35qOpM5kL/l/LOZVn5xLmuEXmN5gwdDDOjAZZz/
	ZL+rfotwtuxuEtis4A/Wk+/9jilvwSuNPDtF19wmJ2srW1lZbQ==
X-Google-Smtp-Source: ABdhPJxV0MPUmkQRO0Reult2QaXGFpvOvv6v3cAkAK/qviHABvU212d3lLqinZLvBun2y1WypwrttmiibqJIFJWJ4CQ=
X-Received: by 2002:a2e:8495:: with SMTP id b21mr15108593ljh.4.1629846852988;
 Tue, 24 Aug 2021 16:14:12 -0700 (PDT)
MIME-Version: 1.0
From: Jean Diogo <j@bsd.com.br>
Date: Tue, 24 Aug 2021 20:14:02 -0300
Message-ID: <CAKpyPV-Z18FXae0t7vCozupvZ6+_9eeaoAQ=8_1sPM8Xfbn3ZQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000b627ed05ca564abf"
Subject: [oss-security] Possible memory leak on getspnam / getspnam_r

--000000000000b627ed05ca564abf
Content-Type: text/plain; charset="UTF-8"

Hi,

The function getspnam() and it's reentrant sister getspnam_r() do not clean
the content of allocated memory before returning to the user, resulting in
the leak of /etc/shadow content. In some cases this might be an issue.

>From my tests, it doesn't matter whether the user calls getspnam_r (which
buffer is controlled by the user) rather than getspnam, both functions
malloc the buffer on itself (apparently the heap pointer is stored on
<respbuf> in libc by _nss_files_getspnam_r from libnss) and does not zero
it before returning.

I understand that this may be a desired behavior, caching, however there
might be some situations where that's not desired and the user has no
control over this buffer.

Let me put ProFTPd as an example: it's daemon starts as root, when it
receives a connection it forks, opens all the files that it'll need, then
it calls getspnam with the provided FTP user to validate the provided
password. Later on it setreuid(nobody) abandoning root privileges [1]. Here
it doesn't matter whether it calls getspnam or getspnam_r, the malloced
buffer will remain on heap memory (and it's pointer in libc <buffer> and
<respbuf>, I suppose). So now the child process is running on a low
privileged user and has a copy of /etc/shadow on it's heap memory.
The vulnerability CVE-2020-9273 [2] (an use-after-free on heap) allowed me
to get RCE on ProFTPd, in an exploit I created last year. Additionally,
thanks to getspnam caching it is possible to read the root cryptogram (and
other users).

I'm not suggesting that ProFTPd architecture is correct [3]. The problem is
that even if ProFTPd calls getspnam_r it has no mechanism to zero the cache
before forking, since internal pointers are not known to the user (read
developer).

Thus, although caching is mostly required for performance, maybe this
(caching) should happen only on getspnam function but not on getspnam_r.
That's because on getspnam_r the user wants to have control over this
buffering, then the user has a way to clean up it's memory when this
caching is not desired.

Thanks guys, and sorry if I slipped into any concept.
dukpt.

References:
[1] - ProFTPd opens root-writable-only files while running as root. I
understand that the permissions are validated during opening, so read /
write operations to duplicated file descriptors after fork are guaranteed
(thanks to Rick Altherr for pointing me out);
[2] - https://nvd.nist.gov/vuln/detail/CVE-2020-9273 ;
[3] - It is a good programming practice to exec right after fork.

N.B.: Perhaps another option could be creating a function similar to
endspent but that not only close() /etc/shadow but also bzero() internal
allocated memory. Since endspent does not wipe memory it's very likely that
[gs]etpent family also have the same behavior (I didn't test all functions
from the manual, so there might be others in similar situations). Also,
from the tests I did I think getspent and getspnam share the same buffer.

--000000000000b627ed05ca564abf--
