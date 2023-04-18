Received: (qmail 26125 invoked by uid 550); 18 Apr 2023 13:04:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6112 invoked from network); 18 Apr 2023 13:00:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681822822; x=1684414822;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=g3WQgP07J9gP6Dsa90WXunC0PLS8LOks3KyxD7+hgz8=;
        b=kqoRimw1WoZKvp/mYzE3wBTWriYF6+Z63muan3sulSbeJKao/LBFE54dMfOrGxhfvh
         N4FAiY7m60lqNH/VM7VSytphaaYM9UJL26UO5499cijg4ul5KsdEiJu7QXJoHwCW/JPC
         r1pbbOxP6JdluJJJNf+PsCAJuVFuSQDI/luPCSZpjlCvu/fMVY3wgTteu/X+tkDwqkjq
         VHlIpEpmPhwlsYoFy3a2bm1jNqBYk6rbm75+nzzXyeIeehKsg3C9hn4AsDIAiiqZz0oJ
         FUlw7HtKVDJAvtjnbxw8vn77Yx17e6SzzrQbNyQnSxHbDvuw9HFOOT82sWYXBSXQvuHp
         XlKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681822822; x=1684414822;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=g3WQgP07J9gP6Dsa90WXunC0PLS8LOks3KyxD7+hgz8=;
        b=l8eonpFwZLZhcq8Do2sdNPqVoFGzui6wVh/x5YMV2FyIKiW3r2iehohZ6oz5AETH3r
         57idMhVaHSs1QVZkikt67po634Ytt5oseYF893AcH0A4WfITyFNyGwmyINbbb8ZmHCAX
         M1LSGz/yhO9Sm3scQADYsceKp7sId8IDDrB2aOMoMsu+vsKNVFIM4XlE4f5HIL1ENQqU
         SyILJb+XmbR8k1spzBB+4vu+Bk5XVzGJqFKuv56ZzUC7RqiKIpYleQu5mzwogzcKheDE
         +cdc9bVF/ym9jqLXI5kHWk+8qVM3vZ/wTxcMxl2iKODsRbmEYqTjkzUcC27RiHzN1wSt
         oZ5w==
X-Gm-Message-State: AAQBX9ccaOyETwlozUWZjxojkkdAHQkecr8+ruo/sXkZ0HJ33bzhaxPy
	k+MMjDd4j6AkrUDyaJlsyOR2iuAYZaMq1vEjfubCw6/zxPCB4w==
X-Google-Smtp-Source: AKy350axlTc3SWuzbqMzeXcGRUbvJOKAFpUUf5TVOhjkyMUfXZipv1b2m4S8MEnzBjizI3R32XeKnhyjUr9hOEJe1Ms=
X-Received: by 2002:a17:90a:e517:b0:246:f73c:3aba with SMTP id
 t23-20020a17090ae51700b00246f73c3abamr2001184pjy.39.1681822822260; Tue, 18
 Apr 2023 06:00:22 -0700 (PDT)
MIME-Version: 1.0
From: Georgi Guninski <gguninski@gmail.com>
Date: Tue, 18 Apr 2023 15:59:17 +0300
Message-ID: <CAGUWgD88WiJwryGFt9hQe1rEpLX2PKb=ms-8iONvQ2qhDgtigA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Checking existence of firewalled web servers in Firefox via iframe.onload

In short in Firefox 112, it is possible to check existence
of firewalled web servers. This doesn't work in Chrome and Chromium 112
for me.

If user A has tcp connection to web server B, then in the
following html:

<iframe src="http://B" onload="load()" onerror="alert('error')" id="i1" />

the javascript function load() will get executed if B serves
valid document to A's browser and will not be executed otherwise.

This work for both http and https, and for http it is allowed
B to be IP address. Under some configurations of Apache2,
it serves http despite having https configured.

In some sense, this is close to nmap via javascript in a browser.

Potential privacy implication is when the attacker guess the
range of firewalled IPs and check them all in a loop.

For online test:
https://j.ludost.net/onload1.html

-- 
guninski:  https://j.ludost.net/resumegg.pdf
