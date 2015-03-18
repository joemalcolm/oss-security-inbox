X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["456" "Wednesday" "18" "March" "2015" "20:19:26" "+1300" "Emmanuel Law" "emmanuel.law@gmail.com" "<CA+KTh2x04-9kdmsMhRcXUOD7XgQ+mJG-XEMe8q7ebZSUjOV6qQ@mail.gmail.com>" "20" "[oss-security] CVE Request: ZIP Integer Overflow leads to writing past heap boundary" nil nil nil "3" "2015031807:19:26" "[oss-security] CVE Request: ZIP Integer Overflow leads to writing past heap boundary" (number mark "        emmanuel.law Mar 18   20/456   " thread-indent "\"[oss-security] CVE Request: ZIP Integer Overflow leads to writing past heap boundary\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29786 invoked by uid 550); 18 Mar 2015 07:22:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27660 invoked from network); 18 Mar 2015 07:19:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=FnIOe4CLCxJU3Hwps83VAGk6z//vfWZ2LtuOBsaO84M=;
        b=GBDYiVZjvgMLMZwN0NPfDQbzq+CkoC6d5XJQ/JTV91EtXEGBH/EtpBcCfaTShL48zo
         lvMyq3OZyRL5VoCDz6nXDa0MM7bCb0lWvRpKTh5pXxNY7UDjw/uX3ZO6AHNUw4v6HamA
         raggHfS+s1Uxxnih8Z0OfVeV8/OdFvo+KgV7tMxdTFBQgdm5v9cJNQSHW2jGNEVMZmrW
         2mvCBr1Iq/sdy1BzjgQA8/CldYM4fy39SSUZtnVI+YVYMJNndGHhdwvBaQBeMjIjKQVF
         TtFj06YO24Y5jDDr8oP/Go/qUcDlPnAYAV6xS/keSifJJFVaaTruToDqOQiXkd7QXGVj
         y7YQ==
MIME-Version: 1.0
X-Received: by 10.107.130.16 with SMTP id e16mr105749073iod.80.1426663166418;
 Wed, 18 Mar 2015 00:19:26 -0700 (PDT)
Message-ID: <CA+KTh2x04-9kdmsMhRcXUOD7XgQ+mJG-XEMe8q7ebZSUjOV6qQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113eb8ca3fa32505118ae78e
Date: Wed, 18 Mar 2015 20:19:26 +1300
From: Emmanuel Law <emmanuel.law@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: ZIP Integer Overflow leads to writing past heap boundary
To: oss-security@lists.openwall.com, cve-assign@mitre.org

--001a113eb8ca3fa32505118ae78e
Content-Type: text/plain; charset=UTF-8

Hi,

found an integer overflow in PHP. When processing a malform zip file with
many entires, it leads to a heap overflow.

Affected Version <= PHP 5.6.6
Bug Report: https://bugs.php.net/bug.php?id=69253
Patch:
https://github.com/php/php-src/commit/ef8fc4b53d92fbfcd8ef1abbd6f2f5fe2c4a11e5

Could you please assign a CVE-ID for it?

Thanks,

Emmanuel

--001a113eb8ca3fa32505118ae78e--
