X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/09/11/3
Message-ID: <CAG8b5tSvm1nZ=Q=3L=YGnbjmnD1i8Le4xC3y=n=N+P4O1wYW-A@mail.gmail.com>
Date: Tue, 11 Sep 2018 17:25:47 +0530
From: Dhiraj Mishra <mishra.dhiraj95@...il.com>
To: oss-security@...ts.openwall.com
Subject: tdesktop leaks user IP address
Content-Type: text/plain; charset=utf-8

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

