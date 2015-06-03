X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["813" "Wednesday" "3" "June" "2015" "07:42:05" "-0500" "Dennis" "shr3kst3r@gmail.com" "<CAOupQd1AL9UfANeEFwuHnW8=cG84xM0ybcm31NEFgp7F=eKqkQ@mail.gmail.com>" "25" "[oss-security] Re: CVE Request: mime-support" nil nil nil "6" "2015060312:42:05" "[oss-security] Re: CVE Request: mime-support" (number mark "        shr3kst3r@gm Jun  3   25/813   " thread-indent "\"[oss-security] Re: CVE Request: mime-support\"\n") "<CAOupQd3ikV8aKBR-w2YRo4x93=YA-x-LY1cK4rMYRxWEoa7z5Q@mail.gmail.com>" ("<CAOupQd3ikV8aKBR-w2YRo4x93=YA-x-LY1cK4rMYRxWEoa7z5Q@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26040 invoked by uid 550); 3 Jun 2015 14:42:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18344 invoked from network); 3 Jun 2015 12:42:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=zN41QQ3V/coPhIY+2CkjVSBBiPqe1a0de+xBMAfTfVY=;
        b=F47L/1bgqksUkVchaWoc4FZD/BElX4TYTDE1X9C6SdrOa2eWCPMIPtKzapyKKq530d
         qAJ7Xug6Tx4B49tWk2WscC05JZGmWbR/m7ImagNpTZQx9XVLiv1G3lKJnBfhu1HGlM/z
         vRwOfFuMpeXoUmDtNFlz+gQDm083qgyObWvRChtJtc1upXoYZ8qyK3iHfQ+nlVP2feOR
         zqnyVe8u6QODQFuSHUFwvLstOc8rZjGyGhqWINxt5Qk0bS0DUkWcyktNxYej5XNldNEA
         CwBcTUcumlTw88XFmT91bETHioJBt5dPpAcDWmpmjv3H8T85wPTeR6j+aZUBcxtBCBrZ
         Kplg==
MIME-Version: 1.0
X-Received: by 10.55.16.165 with SMTP id 37mr58015379qkq.76.1433335325426;
 Wed, 03 Jun 2015 05:42:05 -0700 (PDT)
In-Reply-To: <CAOupQd3ikV8aKBR-w2YRo4x93=YA-x-LY1cK4rMYRxWEoa7z5Q@mail.gmail.com>
References: <CAOupQd3ikV8aKBR-w2YRo4x93=YA-x-LY1cK4rMYRxWEoa7z5Q@mail.gmail.com>
Message-ID: <CAOupQd1AL9UfANeEFwuHnW8=cG84xM0ybcm31NEFgp7F=eKqkQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113acec2ea89a505179c6227
Date: Wed, 3 Jun 2015 07:42:05 -0500
From: Dennis <shr3kst3r@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: mime-support
To: oss-security@lists.openwall.com

--001a113acec2ea89a505179c6227
Content-Type: text/plain; charset=UTF-8

Sorry, I should have put an affected version in the request: Debian
derivatives running mime-support less then 3.52-1.

-- Dennis

On Wed, Jun 3, 2015 at 7:35 AM, Dennis <shr3kst3r@gmail.com> wrote:

> Hi,
>
> This bug https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=589384
> deserves a CVE.  Basically, in the default configuration of apache +
> mod_php + mod_mime, files like test.php.blah will be executed as PHP code.
> The expected behavior is that only test.php will be executed as PHP.  Yes,
> it was fixed 5 years ago, but I am seeing it actively utilized against
> Ubuntu 12.04 (which did not get the fix), specifically against Wordpress
> plugins that allow file uploads.
>
> Thanks,
> Dennis
>

--001a113acec2ea89a505179c6227--
