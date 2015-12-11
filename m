X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1136" "Friday" "11" "December" "2015" "10:41:52" "-0500" "Glenn Randers-Pehrson" "glennrp@gmail.com" "<CA+PdXctCPbC9Km5yC+GwENxVz-cCYeQVY1Av+1LeU=55CK6YnA@mail.gmail.com>" "40" "Re: [oss-security] Re: CVE request - read underflow in libpng 1.2.55, 1.0.65, 1.4.18, and 1.5.25 (pngwutil.c)" "^Date:" nil nil "12" "2015121115:41:52" "[oss-security] Re: CVE request - read underflow in libpng 1.2.55, 1.0.65, 1.4.18, and 1.5.25 (pngwutil.c)" (number mark "        glennrp@gmai Dec 11   40/1136  " thread-indent "\"Re: [oss-security] Re: CVE request - read underflow in libpng 1.2.55, 1.0.65, 1.4.18, and 1.5.25 (pngwutil.c)\"\n") "<20151211153602.450948BC15E@smtpvmsrv1.mitre.org>" ("<2064c74f.134f0.1518c34b429.Coremail.xiaoqixue_1@163.com>" "<20151211153602.450948BC15E@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23615 invoked by uid 550); 11 Dec 2015 15:42:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23595 invoked from network); 11 Dec 2015 15:42:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=T5YNDTcgy8wSxb4V/XZNhsVe14EoKzTk7qGFknZeu+o=;
        b=T6vXl6zNgnYgn8q/ruNU27gkHtN5HQySh0cBUwLoPHHBCvGwpKCM8KYNaMK+uTzcPT
         JKgMN4/LLdJeWt5/UWhonIr66coqXuxlcYR0j6e+cUPKEdY/JbyMbvX7WpQLtd7hCygp
         l08T4DPuOB9pMyFVoIMw1CJIJsP4fU3aibhw9HQVickFLbmHuJhMYqO4gAHMOZwQXZZr
         WLwTE/1vSu0yqBbtwuywRiZUT8kdWj6xoLK94zc+Qor/AuyMrNNrU3THYT22MsZa+lIm
         saKGGz/l/s9dz5lXtAGnsbQ+/On+cwkYhVYoFXhHBmVDvRer5rOrQ3oGca37bzGnO96m
         UIrA==
MIME-Version: 1.0
X-Received: by 10.140.100.206 with SMTP id s72mr22906119qge.25.1449848512868;
 Fri, 11 Dec 2015 07:41:52 -0800 (PST)
In-Reply-To: <20151211153602.450948BC15E@smtpvmsrv1.mitre.org>
References: <2064c74f.134f0.1518c34b429.Coremail.xiaoqixue_1@163.com>
	<20151211153602.450948BC15E@smtpvmsrv1.mitre.org>
Message-ID: <CA+PdXctCPbC9Km5yC+GwENxVz-cCYeQVY1Av+1LeU=55CK6YnA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11c17252967ef10526a129fc
Date: Fri, 11 Dec 2015 10:41:52 -0500
From: Glenn Randers-Pehrson <glennrp@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE request - read underflow in libpng 1.2.55,
 1.0.65, 1.4.18, and 1.5.25 (pngwutil.c)
To: oss-security@lists.openwall.com

--001a11c17252967ef10526a129fc
Content-Type: text/plain; charset=UTF-8

On Fri, Dec 11, 2015 at 10:36 AM, <cve-assign@mitre.org> wrote:

> ...
>
> > there is a underflow read in png_check_keyword in pngwutil.c in
> libpng-1.2.54
>
> > if the data of "key" is only ' ' (0x20), it will read a byte before the
> buffer in line 1288.
>
> > it also impacts libpng 1.2.55, 1.0.65, 1.4.18, and 1.5.25 .
>
> >> The bug was introduced in libpng-0.90, was fixed in libpng-1.6.0, and
> will be
> >> fixed in libpng-1.0.66, 1.2.56, 1.4.19, and 1.5.26.
>
> > https://sourceforge.net/p/libpng/bugs/244/
>
> This says the problem was on a "1288 while (kp == ' ')" line but that
> seems very confusing because that line doesn't appear to be present in
> libpng-1.2.54 or any other version. As far as we can tell, the
> unpatched code has
>
>   while (*kp == ' ')
>
> and the patched code has
>
>   while (key_len && *kp == ' ')
>

That's correct.  The bug tracker at SourceForge has an unpleasant effect
of removing asterisks, backticks, and whatnot from bug reports, thereby
making the reports very confusing.

Glenn

--001a11c17252967ef10526a129fc--
