X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1073" "Tuesday" "11" "September" "2018" "17:25:47" "+0530" "Dhiraj Mishra" "mishra.dhiraj95@gmail.com" "<CAG8b5tSvm1nZ=Q=3L=YGnbjmnD1i8Le4xC3y=n=N+P4O1wYW-A@mail.gmail.com>" "32" "[oss-security] tdesktop leaks user IP address" nil nil nil "9" "2018091111:55:47" "[oss-security] tdesktop leaks user IP address" (number mark "U       mishra.dhira Sep 11   32/1073  " thread-indent "\"[oss-security] tdesktop leaks user IP address\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21537 invoked by uid 550); 11 Sep 2018 12:50:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16046 invoked from network); 11 Sep 2018 11:56:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=IeKnfAGXKneTdbmsMzGDbFmP9ZLSFZiO7Ou0HG65tBQ=;
        b=CuvqQnRuw0PxNi3npYgNe3WREy4A0GOWtDT0V0IsEtjClI5FPQEYDQLqoKe1b8dnCT
         y9EexWHEulOaBANrA0EzJKkReTcPoYZF488SsL7hX5In/swC8q59fJ4GO4iw9bFUjmWz
         HBtroyU8hVxEPjqBLpnB6rqwk9kScyPkSVU9rcK4LOTc3+xv09sOk+shVKkLBfr9GZ6D
         t9qq/ZwJY1OAz94sZrB3CHatoiYHFYUuWOKs1DkK5FV4Z9+SvI/r5N45J4+u0qNZiYaS
         Xh/l9l1UzHGIpEeY7h/4zqzykXQ/wPITiPu1MF3yYSZdwjZsnqJxFpHb8mBPStdWcTP6
         EMLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=IeKnfAGXKneTdbmsMzGDbFmP9ZLSFZiO7Ou0HG65tBQ=;
        b=P9gJGlOPkUl2KUuGmQZ37xx5JVPu7eamilmKe2/C/S5+SNbYhTIo3hTkeaHwNzqzjJ
         8hK67TEYk1uGChlYPEq2ZhNM0doqhHQwjv0OilQVCuddvk24Hl0L3d+JFaPCWHAatvgg
         TKaVYJrDd+bSGWsmAROT827D/EAPDEs0UX6BQ3Jxw5+14SVtdLY+SCbEi/NfHeMs5Nen
         eyp9ldNTqDGssdFm1liboRAL7Cu/+GcAXWkXlHkMXwD4Exj1zYVW9hpvY6znz3ZOkS80
         Cpoc93JjMBDbbYnePaZVEnyzyKirh41bIo6E1LxxqGI1qEMTh+kyGPQa2p3huxwNBDuh
         4A4g==
X-Gm-Message-State: APzg51B3BXaK2SE3d12za5LAO/f9KBF6Ob4xMzbSih8TbDK9sF1Sv+UA
	Jzrt6R6nIYHc04beDNTimpkw88BMP2taIvoroE5jID8X
X-Google-Smtp-Source: ANB0VdYgYj5p5R7IYqd73U8HsBrm0rM3OwcASJDVXBAAY3RMywyBgaWWPV2loAtupngp7VrzgQ7nBVEkFr3SeqcCPbA=
X-Received: by 2002:a17:902:68:: with SMTP id 95-v6mr26521124pla.248.1536666958444;
 Tue, 11 Sep 2018 04:55:58 -0700 (PDT)
MIME-Version: 1.0
From: Dhiraj Mishra <mishra.dhiraj95@gmail.com>
Date: Tue, 11 Sep 2018 17:25:47 +0530
Message-ID: <CAG8b5tSvm1nZ=Q=3L=YGnbjmnD1i8Le4xC3y=n=N+P4O1wYW-A@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000323c71057597288c"
Subject: [oss-security] tdesktop leaks user IP address

--000000000000323c71057597288c
Content-Type: text/plain; charset="UTF-8"

This is still not fix in telegram desktop  team says their is nothing to
fix here and this is working has intended.

tdesktop: https://github.com/telegramdesktop/tdesktop

*Steps to reproduce:*
1. ./Telegram
2. Call end user
3. The access log on CLI reveals the end user public IP address.

By default in tdesktop p2p is enable, which open a direct communication
when calling to the other user, potentially seeing his/her IP. Telegram is
supposedly is a secure messaging application but while calling another user
leaks his/her public IP address in access log. However, by navigating to
Settings and Privacy  > Calls > and set P2P to `nobody` in telegram apps in
(iOS and android) will not allow others to view public IP of end user, but
this option is still not available in tdesktop, which makes tdesktop
vulnerable to this issue.


Thank you

-- 
Regards

*Dhiraj Mishra.*GPG ID :  51720F56   |  Finger Print : 1F6A FC7B 05AA CF29
8C1C  ED65 3233 4D18 5172 0F56

--000000000000323c71057597288c--
