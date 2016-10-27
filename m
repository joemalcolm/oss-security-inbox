X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["737" "Thursday" "27" "October" "2016" "13:58:38" "-0700" "Adith Sudhakar" "adith.sudhakar@gmail.com" "<CALOY+aw+wkyLM1BkHGzPQzbP-8_-RM+hjRa6XyTv0Mnt8fLkaw@mail.gmail.com>" "23" "[oss-security] CVE-2016-7067 - CSRF in Monit Service Manager" nil nil nil "10" "2016102720:58:38" "[oss-security] CVE-2016-7067 - CSRF in Monit Service Manager" (number mark "U       adith.sudhak Oct 27   23/737   " thread-indent "\"[oss-security] CVE-2016-7067 - CSRF in Monit Service Manager\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11560 invoked by uid 550); 27 Oct 2016 22:23:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23754 invoked from network); 27 Oct 2016 20:59:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=FuaJ2H8c2OIsbJ65+Twl1+G3atC2nW/BqIvQ3g8q5oc=;
        b=BxfbMYmz0C89ROaJvM80u3NZDju1gW463KZaWlZhmR2LFtZ1BrnsdytwNWmFKh86gg
         UvtK1oi65tmLHMGX9oss31CUta9I8oRCD0gZN8eTAuhqcClcTMQ6X2U78l7blyVgk9rB
         Z3cObPe/uX8eV1qJ73FznUNmToAehya1fcjOxi1KThF7+ZO/4arHGG/wNHOQqp9Oac6z
         HFAEetI7woSitqeeqerSNBI//Q5yKsHHUo/aZJALZc4YfG6Nx5UrSFVAByMIVtDts3rA
         XwhLp2xiAhRayr9DNwGtDbDI+mnJBcvOYPDASjdUS+vDingMfrlM7zUf4Nx1+SfOnqqg
         Wqrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=FuaJ2H8c2OIsbJ65+Twl1+G3atC2nW/BqIvQ3g8q5oc=;
        b=mBpWxh6H81MEEq1y6YHY/dt6aGoqaAiQu+BWs5DwK/1n4BfsaHy3zDuvj2YBPuue+K
         yPNPtIYWqtZXyvv9q/DXzPVOsR1kzh82bfZPufVORjny9Wg2qHn6RlmJ1GM00fe6LHQF
         ChGlu+hkVszz/BDgYHrr+R/pwasgbqZWTJ5fc3toRGlkvxNquBeaa5pfI3vMu9nEXfvJ
         1/gcoqYkDzLLcrEMRkuY6M3vJnSulJL+XA0uxcEdqJedCv+UyNV3WuVKFNwXOlOV82/J
         B1ZFnUQ/CXuuuJ32kJe8+AtFHB7rFbtrqEddmN7c784iNFxraexLl8wj19perWqYoCs3
         Ob7Q==
X-Gm-Message-State: ABUngvdXz071/v5AhEsSU+aJb3l3bduYCc4I/u++lSp9geFkOyd4o2+mMZdu81LMALeAetLzX+6/ZgRwt3f7Xg==
X-Received: by 10.200.35.229 with SMTP id r34mr7941360qtr.22.1477601948446;
 Thu, 27 Oct 2016 13:59:08 -0700 (PDT)
MIME-Version: 1.0
From: Adith Sudhakar <adith.sudhakar@gmail.com>
Date: Thu, 27 Oct 2016 13:58:38 -0700
Message-ID: <CALOY+aw+wkyLM1BkHGzPQzbP-8_-RM+hjRa6XyTv0Mnt8fLkaw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a1142bb3841bc54053fdf0366
Subject: [oss-security] CVE-2016-7067 - CSRF in Monit Service Manager

--001a1142bb3841bc54053fdf0366
Content-Type: text/plain; charset=UTF-8

Hello,

I'd found a CSRF issue in Monit(https://mmonit.com/monit/) in the Service
Manager application that affects versions 5.19.0 and earlier. Red Hat has
assigned CVE-2016-7067 to this issue. Monit has fixed this issue in version
5.20.0

Description:
The forms in Monit's Service Manager are vulnerable to a cross site request
forgery attack.
Successful exploitation will enable an attacker to disable/enable all
monitoring for a particular host, disable/enable monitoring for a specific
service.

Upstream Commit:
https://bitbucket.org/tildeslash/monit/commits/c6ec3820e627f85417053e6336de2987f2d863e3?at=master

Adith Sudhakar

--001a1142bb3841bc54053fdf0366--
