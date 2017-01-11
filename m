X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["712" "Wednesday" "11" "January" "2017" "15:54:29" "-0500" "Scott Arciszewski" "scott@paragonie.com" "<CAKws9z20vYG_enKh4H9cUZ6dYXF7nPT5U_GHb6EkCjMn6rdptA@mail.gmail.com>" "22" "[oss-security] Introducing sodium_compat, a PHP polyfill for libsodium" nil nil nil "1" "2017011120:54:29" "[oss-security] Introducing sodium_compat, a PHP polyfill for libsodium" (number mark "U       scott@parago Jan 11   22/712   " thread-indent "\"[oss-security] Introducing sodium_compat, a PHP polyfill for libsodium\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19875 invoked by uid 550); 11 Jan 2017 20:54:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19835 invoked from network); 11 Jan 2017 20:54:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=paragonie-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=zVGNy0FD0+3xtjc1G9r5CpEEyWDjMNDguvuZnGmZ3Eo=;
        b=Js2iPUSI5bm97yA7SNYIm714Em73oYJVfFYUMBVUb/wbjfr38UiX09g+0I+gHWzH6a
         6vAgYX2BZkfmI/cikLs8PquljTQItyk3weMiRLocqejtpCwL7dqpuJ/oU1dG05CH28Jz
         6Ma+0B++Ta0TNFYDuupr6z/ykwHPpflxvxQNVJ1nMEd0yc3Rdi4zeY7GIVGvZc1hPeV5
         0yKeXR4UOHxkuJwobizbowuy97DFlqpNMFE4A44Leg2+HzAuArof396nhHi1leAeHcPd
         bsXFF/fD1ft74zzbH6FM0+A4hwCxMM8qF8/FPvkHftNdolGD8LsMU8smO35XE61FQH68
         z9Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=zVGNy0FD0+3xtjc1G9r5CpEEyWDjMNDguvuZnGmZ3Eo=;
        b=L1wXCMc9ny0U0sDOz+l+nked/G1Er9cLCREz2WFggY1JnOZUDBlbfcArrvCg8ErkHp
         cqdemyCtIKzK+uwjBRfIBdf9hvyRjxvkk+/Vx6t9Z6A9+9ueyAN3y7CXMkfvFOhQqp/c
         mDr5CGXej9UAvmJUFu+GHbWP4vnGpqpeJ5JoHQN+EnJQJwA4zUFq1LuGRF7CW7huIHK2
         tdyBMX/5ZryrZ+M/x7NQUVhZYiIyjyR+/uVnMPyN9N8zhzuvrhbxYguF3EVtZYfMoLeb
         ZSISaDvnV0MBh4c2WRIQ0VN/AkRF8GwvH60Q74ZuOStNmYK4ZR0M5TJfsfJEsvEUh3Qm
         X9Kg==
X-Gm-Message-State: AIkVDXLlwuv142KGEzpOwf0jx5IkblU9PmN8w0wdfMm3g1GEJU/voVnVS/RDq93zsRpDIZ+xp9B266X8BDeuUQ==
X-Received: by 10.157.46.114 with SMTP id c47mr5118811otd.176.1484168069459;
 Wed, 11 Jan 2017 12:54:29 -0800 (PST)
MIME-Version: 1.0
From: Scott Arciszewski <scott@paragonie.com>
Date: Wed, 11 Jan 2017 15:54:29 -0500
Message-ID: <CAKws9z20vYG_enKh4H9cUZ6dYXF7nPT5U_GHb6EkCjMn6rdptA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a113e3e529149b40545d7ce7e
Subject: [oss-security] Introducing sodium_compat, a PHP polyfill for libsodium

--001a113e3e529149b40545d7ce7e
Content-Type: text/plain; charset=UTF-8

Hello,

I've been working on this for a while. I was originally going to include a
PHP implementation of Argon2, but it turned out to be really slow (and I
didn't feel confident in my implementation, to boot).

Source code: https://github.com/paragonie/sodium_compat

Announcement post:
https://paragonie.com/blog/2017/01/let-s-make-2017-year-simply-secure-php-cryptography

It's ISC licensed, just like libsodium, so once it's been audited you
should be able to use it in any PHP projects without hassle.

Scott Arciszewski
Chief Development Officer
Paragon Initiative Enterprises <https://paragonie.com>

--001a113e3e529149b40545d7ce7e--
