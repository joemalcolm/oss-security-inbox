X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["955" "Thursday" "22" "April" "2021" "11:44:49" "+0200" "Albert Veli" "albert.veli@gmail.com" nil "21" "Re: [oss-security] Malicious commits to Linux kernel as part of university study" nil nil nil "4" nil nil (number mark "U       albert.veli@ Apr 22   21/955   " thread-indent "\"Re: [oss-security] Malicious commits to Linux kernel as part of university study\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Malicious commits to Linux kernel as part of university study" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 6038 invoked by uid 550); 22 Apr 2021 09:52:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3592 invoked from network); 22 Apr 2021 09:45:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=NX3O02Ci1681VOIDxTtyIKfZ+pc6nV+2Py5jvyowjRk=;
        b=DjZ4YqLotHQ6N7dx3WdJFz2vEr42aRMADZ4Bp8UBHmrFgEMcp0iVeWPrrYgEMSt7ia
         +EaaOUSc9TCucyoB12iKn5jAc0KyjcTri26db2Rgqyb93fbZTm6+0RDxAgK5FiZd49Jw
         S1LZBOl5LNQtpdqH1cw0xUnyM41Pm0KcN/yU7A4ICESuCXuTrS9JQBWevm7YVVwx52VI
         vtFG9esFBmfmYqKGc+yCXvupN2ncjuXuqqvA4SveanlxjryTB1N8l8B/xGYxSE7xQ65X
         iwpGIKKvPZj8l2MJP26DXlmSI8vRc55bbecoIxsThG0ctEdX+YraLfNq+49SSnxrTm+D
         X6hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=NX3O02Ci1681VOIDxTtyIKfZ+pc6nV+2Py5jvyowjRk=;
        b=kSLjIDCbjFkW7Gh58uOfN2QOaLhfaovFgoq7Efd4eEZwe/VKhcokPRvkeXznHtY3B5
         L6+1o+MjvHtxDIVBX9+ZFarN2hJgg2J3+SvnjS5WKa0WzGuhzmGhI3G4RYi0a/RDK8Ig
         NIk1F6Xfpy5sm83j77j3PFqM0CnoQnZ0u+aF7BtAgrAj4tOPRtBD5rsICVLKB9Xbokjv
         9QRe9kyRjbQE37LiSoBLVegDRT2A444x7xcKJ/ukEDB3Dp6/geLEzseUyIXgrmY0lbNs
         pzPuCDlxanNjVmFH+Dl1gYhbG7sIrBXpz9/eFwgOgPeyAVkoAhkKpeHPVQDJtr9mKoS7
         AHYg==
X-Gm-Message-State: AOAM530bG9CT29nrZnOZjvcPg2MykxpL3ETAZAHsX92A9fcOsM1/3OAO
	u3EohQHQLSo11guLaFF+03izdgaknM5qq2dJwA6JhWlQ0Ns=
X-Google-Smtp-Source: ABdhPJwIXEfW4frvsvxx5bvmH9MO6ptDeEo7Ryc0OkyALWZbII7UlqxQWam3FImzcIIHYQV2FMvwzyN6tIDF1EWrp1U=
X-Received: by 2002:a17:902:8693:b029:eb:53f:1336 with SMTP id
 g19-20020a1709028693b02900eb053f1336mr2668841plo.52.1619084700944; Thu, 22
 Apr 2021 02:45:00 -0700 (PDT)
MIME-Version: 1.0
References: <20210422065959.GI13079@scully.more-magic.net>
In-Reply-To: <20210422065959.GI13079@scully.more-magic.net>
From: Albert Veli <albert.veli@gmail.com>
Date: Thu, 22 Apr 2021 11:44:49 +0200
Message-ID: <CAEo4CePqice09K5PPhmxwwF3jg=USrqRqM5FgVX_jCB8sZfDeA@mail.gmail.com>
To: Open Source Security <oss-security@lists.openwall.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] Malicious commits to Linux kernel as part of
 university study

Hi

On Thu, Apr 22, 2021 at 9:01 AM Peter Bex <peter@more-magic.net> wrote:
>
> They also published a paper:
> https://raw.githubusercontent.com/QiushiWu/qiushiwu.github.io/main/papers/OpenSourceInsecurity.pdf
>
> I don't know the scope of this research, but it could involve other OSS
> projects, now or in the future, as well.

Supply chain attacks are a real threat to open source projects. The
Linux kernel is not the easiest way to introduce malicious commits.
But other projects like much used pip python modules, npm javascript
modules and ruby gem modules might be less vetted before they accept
commits and that is a serious risk.

Proprietary projects are not immune to supply chain attacks either. An
example is the Encrochat proprietary chat application that was
subjected to a state sponsored supply chain attack last year which
compromised their user's data. Everything that uses automated updates
could be targeted by supply chain attacks.
