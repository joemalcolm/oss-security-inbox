X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["888" "Monday" "1" "May" "2017" "11:52:20" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<55840.351476462-sendEmail@localhost>" "42" "[oss-security] telegram-desktop: insecure permission of $HOME/.TelegramDesktop directory" nil nil nil "5" "2017050111:52:20" "[oss-security] telegram-desktop: insecure permission of $HOME/.TelegramDesktop directory" (number mark "U       ago@gentoo.o May  1   42/888   " thread-indent "\"[oss-security] telegram-desktop: insecure permission of $HOME/.TelegramDesktop directory\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9476 invoked by uid 550); 1 May 2017 11:52:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9428 invoked from network); 1 May 2017 11:52:39 -0000
Message-ID: <55840.351476462-sendEmail@localhost>
From: "Agostino Sarubbo" <ago@gentoo.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Mon, 1 May 2017 11:52:20 +0000
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-588281.171004386"
Subject: [oss-security] telegram-desktop: insecure permission of $HOME/.TelegramDesktop directory

------MIME delimiter for sendEmail-588281.171004386
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
Telegram-desktop is the official desktop client for Telegram.

During the navigation of my filesystem I found the .TelegramDesktop with 755 permission:

drwxr-xr-x  4 ago  ago      4096 nov 23 14:30 .TelegramDesktop

Affected version:
At least from 0.10.19 to 1.0.29

Fixed version:
N/A

Commit fix:
N/A

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
CVE-2016-10351

Timeline:
2016-11-23: bug discovered and reported to upstream
2017-05-01: blog post about the issue
2017-05-01: CVE assigned

Permalink:
https://blogs.gentoo.org/ago/2017/05/01/telegram-desktop-insecure-permission-of-home-telegramdesktop-directory/

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-588281.171004386--

