X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["73" "Sunday" "11" "March" "2018" "21:32:44" "+0100" "Raphael Geissert" "atomo64@gmail.com" "<CAA7hUgGRmab57_-iNd58m2RS+8GMtv8hgnN0JMfYFuo0-DKzZQ@mail.gmail.com>" "7" "[oss-security] Re: Portus, missing certificate validation on proxified https traffic" nil nil nil "3" "2018031120:32:44" "[oss-security] Re: Portus, missing certificate validation on proxified https traffic" (number mark "U       atomo64@gmai Mar 11    7/73    " thread-indent "\"[oss-security] Re: Portus, missing certificate validation on proxified https traffic\"\n") "<CAA7hUgG=6G+HYQQdByu=KV+t0RJ2UOBo+8iz2ZB=NyyGTpqcYA@mail.gmail.com>" ("<CAA7hUgG=6G+HYQQdByu=KV+t0RJ2UOBo+8iz2ZB=NyyGTpqcYA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18306 invoked by uid 550); 11 Mar 2018 20:33:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18264 invoked from network); 11 Mar 2018 20:33:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=wKUB9cWAvpHgxl2X3McrWKDcCe1MJWnu5n3vLNiK+aw=;
        b=PZlXkHNjOr0TRMnkuek+hK/tgGvQ3IRFr+9yk9mMehNEpw7JHRJpx1/QxA3uiWBO3m
         mF3htT++HAIPrfC2iXjro3HQKUGFk6xdsyP5NkZqh/1WCFKgC7x6sNiXwiQRgJt+bVKd
         ppgVcIDLwNYkSO+wciZvg8xTBFIvs4TtSnX+eW2diy/cKwl7YJkH1TFBNOXFyTsJwKHw
         KZ5K1o9Ye1/1wsctAkuWc5mf3P5fkAPNk66IhAgN7c+KtHg2JSkXODXa7nDspiS+MaFU
         l8hY+e3PoujeBDpotmmdQk2qBc3AjhMf0KFi+n33FPmt0qCVX96D9Yc+L6txmraTmst8
         ZU1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=wKUB9cWAvpHgxl2X3McrWKDcCe1MJWnu5n3vLNiK+aw=;
        b=m+BYWDZFzqb6QYlrP7ne26pnWMKz98xQy4vdXencjjpwGAtMQlJ98r7VeXCp2GhVuG
         duSXW/fY+bW6Nec4v8akQlr/rkUguBpFyN1q3RZWCLR7QKND9Xhv3mvmX9FAoIxxitRH
         IR+TTLENCD8r+5d7gbJtlngwlKriwwPMXWuaZ99KsOpPjjIAOurqgocREGHBhtyF0N8h
         0qDcDFRAVknHn89foJJ9x7eOvzAwPD9UzDSyce/ZvUau2rNEjhbMS9tQRcQwWy6wSaYY
         2UCKKaY1akGYxfeBrSRo/aiKj3VZv2XyzDJxm4wKeQHkdluf4AZAUdaTnTKc4hN+mRd+
         dPww==
X-Gm-Message-State: AElRT7HkZLsTJuAPca+7apxGcgl4v9qKfXE0D+RuXazcbttKpuZhwD80
	SSy4/kuG2dKFijpeUtAmro0dkvWu0bJuTudoR1FHYTIA
X-Google-Smtp-Source: AG47ELvbPBPXWo4Q43rGDiizSiBUOrMHGBbTKdwwDQROMZlGzs22F0emZi7DrW/qH9poBjseFFeZzbA2YxuMnVMuI+M=
X-Received: by 10.31.198.131 with SMTP id w125mr3503550vkf.158.1520800385182;
 Sun, 11 Mar 2018 13:33:05 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAA7hUgG=6G+HYQQdByu=KV+t0RJ2UOBo+8iz2ZB=NyyGTpqcYA@mail.gmail.com>
References: <CAA7hUgG=6G+HYQQdByu=KV+t0RJ2UOBo+8iz2ZB=NyyGTpqcYA@mail.gmail.com>
From: Raphael Geissert <atomo64@gmail.com>
Date: Sun, 11 Mar 2018 21:32:44 +0100
Message-ID: <CAA7hUgGRmab57_-iNd58m2RS+8GMtv8hgnN0JMfYFuo0-DKzZQ@mail.gmail.com>
To: Open Source Security <oss-security@lists.openwall.com>
Cc: security@suse.de, Avi Miller <avi.miller@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Re: Portus, missing certificate validation on proxified https traffic

Hi,

This has been assigned CVE-2018-8059.

Cheers,
-- 
Raphael Geissert
