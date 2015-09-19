X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["758" "Saturday" "19" "September" "2015" "10:51:04" "-0500" "Nathan Van Gheem" "nathan.van.gheem@plone.org" "<CAL8hw9HO8ONYEZFAfztUSvDnTON73Zr-xXXXGQL6jb_zDCqSbQ@mail.gmail.com>" "26" "[oss-security] CVE Request: Plone header injection" nil nil nil "9" "2015091915:51:04" "[oss-security] CVE Request: Plone header injection" (number mark "U       nathan.van.g Sep 19   26/758   " thread-indent "\"[oss-security] CVE Request: Plone header injection\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1572 invoked by uid 550); 19 Sep 2015 15:51:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1546 invoked from network); 19 Sep 2015 15:51:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:date:message-id:subject:from:to:content-type;
        bh=ZSefC6tZk061sEK+t19F2AfF7Bmfbbke3qqtjdFl/mc=;
        b=u8g9xvVPkINUGkrWoCN0hpJhdPNqvxnF1OKrmdzDzcDUOtPZJXuLzIjG0ZQyP4J041
         z6gFzCtfb5OChTVTxBCZXDjsmIoMJbmPYai8gQdKXtkqV+0DZ1qnpG4aOuUnMIx48qO4
         StzHyXwhZKHKU97iaE5iTZIZ7mD9+xyn5Q0IoJA+DWVXiUf8QwBIVwAQaAdxOfHVyaft
         kJxssZtqqEvAwN2NieDEauND6KS3VDE1+rPdYqIzSqcbOnwb/ZT/DvonB67d63l8fHnE
         FV3ZVY1hM+cQHrvUgeKyTWm8IvRFUlGGp/AlzlpxgAQVrU/gHCJeXuBp3j8c4k0oPQ8U
         T6qw==
MIME-Version: 1.0
X-Received: by 10.31.149.86 with SMTP id x83mr3478512vkd.104.1442677864483;
 Sat, 19 Sep 2015 08:51:04 -0700 (PDT)
Sender: vangheem@gmail.com
Date: Sat, 19 Sep 2015 10:51:04 -0500
X-Google-Sender-Auth: ojoF1r-V_kiWn7Pvh_lJQ_Ka94o
Message-ID: <CAL8hw9HO8ONYEZFAfztUSvDnTON73Zr-xXXXGQL6jb_zDCqSbQ@mail.gmail.com>
From: Nathan Van Gheem <nathan.van.gheem@plone.org>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a113d329ea3553305201b9d52
Subject: [oss-security] CVE Request: Plone header injection

--001a113d329ea3553305201b9d52
Content-Type: text/plain; charset=UTF-8

Hi,

Can a CVE be assigned to this issue, please?

   https://plone.org/security/20150910/header-injection

Users who had access to write cookie values were able to inject headers
into the response. Versions affected are all versions Plone 3. A hotfix has
been posted only as releases are not made of these versions any longer. The
code in question was actually fixed long ago but no CVE was ever assigned
and no hotfix was ever created for older versions of Plone.

The relevant code is:

https://plone.org/security/20150910/

The vendor credits with the discovery: Jan Pokorny from RedHat

Thanks, let me know if you'd like more information.

Nathan

--001a113d329ea3553305201b9d52--
