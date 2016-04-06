X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1952" "Wednesday" "6" "April" "2016" "18:38:42" "+0300" "Andrey Konovalov" "andreyknvl@gmail.com" "<CA+fCnZdR48yf579hcuHu8QGFySgkDQi13Y_owcoB5J6w4dS3VQ@mail.gmail.com>" "45" "[oss-security] Fwd: CVE Request: Linux: usbnet: memory corruption triggered by invalid USB descriptor" nil nil nil "4" "2016040615:38:42" "[oss-security] Fwd: CVE Request: Linux: usbnet: memory corruption triggered by invalid USB descriptor" (number mark "U       andreyknvl@g Apr  6   45/1952  " thread-indent "\"[oss-security] Fwd: CVE Request: Linux: usbnet: memory corruption triggered by invalid USB descriptor\"\n") "<20160405155139.AF6D4B2E07E@smtpvbsrv1.mitre.org>" ("<CA+fCnZccPp=xL1d1YCymBNefxw0KP_qmuuCJu9Jzyb1aMh9NXA@mail.gmail.com>" "<20160405155139.AF6D4B2E07E@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31951 invoked by uid 550); 6 Apr 2016 21:56:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16315 invoked from network); 6 Apr 2016 15:38:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc;
        bh=kPKdzDwa5QAO2+Y9dBB+dOAbkIRP6hh1sURlVnz8gBQ=;
        b=oqXpijxZlm/O6QXfORgXCk+eI3/rQwvaIq1jGdeUHoUqAccxrNMpfH4Q+HeZrHnyEw
         2l5Yj2tF3fO2reY9ZnMrb+Av3qVdR1aT/kOcXLs7+c85Sj6Iphgx7rC2ajgDf1vT/zDb
         CFUB+4fgTGWaEy66esLlpGiVVB4hvkPjDTiBzDkYhxfAj4LcgZXG0YP4kmv4y4/bQQ/i
         bHqP7Y0BGIu5XIrtpjzdzNPLDiFFR9wlVWHxn1NfPBtLN5FUkBRVEyFYx00owa4zfPja
         v1UUz4vRORMgKWbjwVa5MgZ+6Y98Tf5cy37oxRP5OhGYNwOG4TVm8GvwHCJeugOIfZBx
         8t7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc;
        bh=kPKdzDwa5QAO2+Y9dBB+dOAbkIRP6hh1sURlVnz8gBQ=;
        b=hZIxnGC75Y3NIOmUCU+NEdKLXVEKiWEbZaa07iGKjRmsWXDs/Dgl6ImXkNhNpZ0ak9
         tDv1n6Lp67MGohFBnVM78HiWlI/65P/+B98t+A17xc354Rpg0m7T95x5G0sqOTKxxqNS
         gpno77CvCWvekVa/7n8Z/QL+ILEPjqXtkKUasfJoar3o8idD8H9yDBBlJOxblvWEB+rA
         vMmjYE9AB20NPCpIjEpaR8XRiLBWEnErQ63xrmyNYdd5IzvXqZFiEw/vogDrnaqrHy4g
         t+CPzxydid5acUNbo+x7VppFdAyLfdH4jcWhuZDY5iyY8AuUA7W2kpHmWFrwSV5IQdWQ
         ELpQ==
X-Gm-Message-State: AD7BkJKviGQSSHhnY747GMf4ziDzKZQDFs0BNvZ3O/7Hvd+5bMNP9/cLbAJlqLD93uk7ddxecBBpwydtIgqyAA==
MIME-Version: 1.0
X-Received: by 10.60.94.102 with SMTP id db6mr5000210oeb.28.1459957122687;
 Wed, 06 Apr 2016 08:38:42 -0700 (PDT)
In-Reply-To: <20160405155139.AF6D4B2E07E@smtpvbsrv1.mitre.org>
References: <CA+fCnZccPp=xL1d1YCymBNefxw0KP_qmuuCJu9Jzyb1aMh9NXA@mail.gmail.com>
	<20160405155139.AF6D4B2E07E@smtpvbsrv1.mitre.org>
Date: Wed, 6 Apr 2016 18:38:42 +0300
Message-ID: <CA+fCnZdR48yf579hcuHu8QGFySgkDQi13Y_owcoB5J6w4dS3VQ@mail.gmail.com>
From: Andrey Konovalov <andreyknvl@gmail.com>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] Fwd: CVE Request: Linux: usbnet: memory corruption triggered by
 invalid USB descriptor

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> There's a flaw in the usbnet Linux kernel driver:
>
>> usbnet_link_change will call schedule_work and should be
>> avoided if bind is failing. Otherwise we will end up with
>> scheduled work referring to a netdev which has gone away.
>>
>> Instead of making the call conditional, we can just defer
>> it to usbnet_probe, using the driver_info flag made for
>> this purpose.
>
> The bug allows physically proximate attackers to cause a denial of
> service (NULL pointer dereference and system crash) or possibly have
> other impact by inserting a USB device with an invalid USB descriptor.
>
> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=4d06dd537f95683aba3651098ae288b7cbff8274
> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=1666984c8625b3db19a9abc298931d35ab7bc64b
> https://www.spinics.net/lists/netdev/msg367669.html

Use CVE-2016-3951.

- --
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXA955AAoJEL54rhJi8gl5NY0QAJ3rDGZ9FqmcCB7Defx4MvY1
nCDzmvcCv2hZdrkoYcHmk0G7O+5D2er6ds4lmuCe5LlByR8gjN+9omHTvCoaYEHh
kh4vfjireKsCrY/g9ZElSaUJITnHW2JL4/mv/EX4FjDWkTukAvN4r4Ld6q1827ZF
OU56NJL7QlNOG4Z/dTsJNbSp61hOSIIjOx/gr8L7Cj7PY23649hn5OBufSa22RWH
7vJDe9Yu9zWFCFpce2QlF6xJAT1ojmQX43hlpYo/Olv9r8nw0oeHYXe67RV+GKDQ
T/Btx+fM2cNaYwSczAnMDh/uNyn2zep0OcL0fOWHRgCZUQ0KWpBWgDA2aEIM4h+G
6qyDguMatCgVniYQQ1TiBSf8aNiluK0ZzonOd9gX4IWFsJIRMpTxbS0tmEij7p5U
efeS50dUGC3huT7cEh8GbZBj8xVKmwM+st+bOGgrYZ6Z/1UqzUuE7M1zYheXTyOD
F+KVqa3C8r548/yHiTajhF90H92XFYZLb5W/hn/Id/mqiGQvBBR4BE59yWGrEG86
LG//lJw53nbFIqXIQq1qevNqXOQsE0sQj/Wkv9k2/ez3GClKUxPFyWgJazDN8g8k
/FR0Bdd/kqVjaJ4pr8eO/PP8SHq+I71Os0BuuhJE00hn9TMqkvWHV46DKoXnW5Ck
LVHmzK4rafNRvycxIF2t
=KiV2
-----END PGP SIGNATURE-----
