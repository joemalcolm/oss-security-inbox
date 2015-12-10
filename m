X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["715" "Thursday" "10" "December" "2015" "09:23:04" "-0500" "Glenn Randers-Pehrson" "glennrp@gmail.com" "<CA+PdXctvtEfe4gB2VcYJTOMiB5XwZqBQuNpCPSEF8qVgVt1tnw@mail.gmail.com>" "26" "Re: [oss-security] CVE request - read underflow in libpng 1.2.55, 1.0.65, 1.4.18, and 1.5.25 (pngwutil.c)" "^Date:" nil nil "12" "2015121014:23:04" "[oss-security] CVE request - read underflow in libpng 1.2.55, 1.0.65, 1.4.18, and 1.5.25 (pngwutil.c)" (number mark "        glennrp@gmai Dec 10   26/715   " thread-indent "\"Re: [oss-security] CVE request - read underflow in libpng 1.2.55, 1.0.65, 1.4.18, and 1.5.25 (pngwutil.c)\"\n") "<2064c74f.134f0.1518c34b429.Coremail.xiaoqixue_1@163.com>" ("<20151210061616.87FBA8BC232@smtpvmsrv1.mitre.org>" "<2064c74f.134f0.1518c34b429.Coremail.xiaoqixue_1@163.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3521 invoked by uid 550); 10 Dec 2015 14:23:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3502 invoked from network); 10 Dec 2015 14:23:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=H4S0JZxyJlFJY6qETFDLn28Iu4Q+rUJYtMWQjMuE2rw=;
        b=qejy0cJytvpVwUVjVwSnNF7uyHz2FZEYbx79CQgfwgUMORiI6F9ex1Ua9jQqtxoPah
         sJt2tDG60uhJni362gkBYShX/Tqfxjh0Hj5QdL5xsSf4X1pQ0wViOqzFoTmgdw2zxP+n
         PHihp2ZHX0g/nYKRmgNDxy8u9dmKAN9xgYkvMMSSXEWDbBXkdBjOOXEVwqzsZAFH6GJM
         f5i4AnmcDSEovNTJ3BGsyhcaO1Wf9GmftjmFB1sPMXgYao7ccX9SCn6ZDz8OeLVseMie
         WPlKenwmMgUJXP4vU3BEdWYBXekm0Wh0VzXcheIWXg68JDiW+lAvxApxqtzkxuZMXJAa
         imAg==
MIME-Version: 1.0
X-Received: by 10.55.75.8 with SMTP id y8mr15805223qka.2.1449757384694; Thu,
 10 Dec 2015 06:23:04 -0800 (PST)
In-Reply-To: <2064c74f.134f0.1518c34b429.Coremail.xiaoqixue_1@163.com>
References: <20151210061616.87FBA8BC232@smtpvmsrv1.mitre.org>
	<2064c74f.134f0.1518c34b429.Coremail.xiaoqixue_1@163.com>
Message-ID: <CA+PdXctvtEfe4gB2VcYJTOMiB5XwZqBQuNpCPSEF8qVgVt1tnw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a114a888aece39305268bf1a4
Date: Thu, 10 Dec 2015 09:23:04 -0500
From: Glenn Randers-Pehrson <glennrp@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request - read underflow in libpng 1.2.55,
 1.0.65, 1.4.18, and 1.5.25 (pngwutil.c)
To: oss-security@lists.openwall.com

--001a114a888aece39305268bf1a4
Content-Type: text/plain; charset=UTF-8

The bug was introduced in libpng-0.90, was fixed in libpng-1.6.0, and will
be
fixed in libpng-1.0.66, 1.2.56, 1.4.19, and 1.5.26.

Glenn Randers-Pehrson
libpng custodian

On Thu, Dec 10, 2015 at 9:04 AM, xiaoqixue_1 <xiaoqixue_1@163.com> wrote:

>
>
> there is a underflow read in png_check_keyword in pngwutil.c in
> libpng-1.2.54, which is found by XiaoQixue and ChenYu.
>
> if the data of "key" is only ' ' (0x20), it will read a byte before the
> buffer in line 1288.
>
> it also impacts libpng 1.2.55, 1.0.65, 1.4.18, and 1.5.25 .
>
> the details as follows:
> https://sourceforge.net/p/libpng/bugs/244/

--001a114a888aece39305268bf1a4--
