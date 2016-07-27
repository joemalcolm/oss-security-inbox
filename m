X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["214" "Wednesday" "27" "July" "2016" "22:26:01" "+0200" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdRcZ7YGWxfGf2NsJnb0tiJkCZQR7jkARtJZoZujjcFJ6A@mail.gmail.com>" "9" "Re: [oss-security] Re: CVE Request: Write out-of-bounds in gdk-pixbuf 2.30.7" nil nil nil "7" "2016072720:26:01" "[oss-security] Re: CVE Request: Write out-of-bounds in gdk-pixbuf 2.30.7" (number mark "U       gustavo.grie Jul 27    9/214   " thread-indent "\"Re: [oss-security] Re: CVE Request: Write out-of-bounds in gdk-pixbuf 2.30.7\"\n") "<20160726213218.C0BD36C49F4@smtpvmsrv1.mitre.org>" ("<CAGkswnQeO6oXv+so+DRCMWHqpVKuKYjZ3dTo=gZo2GzycdArhw@mail.gmail.com>" "<20160726213218.C0BD36C49F4@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16197 invoked by uid 550); 27 Jul 2016 20:26:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16173 invoked from network); 27 Jul 2016 20:26:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=rWoNWVBB4tLV6JG4mD7r+Ql/KCPXJSAfXsS2oZQe+BI=;
        b=f18ne8pelqzeR6RfukDXEEJCpl8+H9ELnz5TF4I7za8CRmuB3PcNec2tVMf4bMfE/n
         n2tEVpHYvrxFAPAfsyMm5ltXMdq2aM/EtrQFlz/iJ5+7Rcxoj2dk5wEjdBMT0XntoLkn
         EsMyOt+JQ9ARHPv9GmeqafzUMVfE38YbHPKpJ8E3X9lThXI0zQA8Pr61j/v1YfbRhozr
         UkNyOOEahojYd6xzNPiJY0uTnuaOtgxupvWCwG15n/6prl/mxNHMHuApXICtTRcEI9gx
         J1XE5t/zjRTknDEX2NhTQqSG+O76jND4kCRsnY0OPV8mfQpwyH6aimQEMmH5vhVfngjr
         JAVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=rWoNWVBB4tLV6JG4mD7r+Ql/KCPXJSAfXsS2oZQe+BI=;
        b=LVFPmVNBoA9USH1aWLLSmdwbhXOhrjy+XaO4CALgnEcZFJLOZhf3/7wSqIllnKi1hX
         IG4ziRkZu5DpIXwMjkthKlRJ4l/ZKASPDb1r8LVFvPA3ZXHaDChjdIi+ofrFOcfyDneQ
         4F+kBUgXRvAI7CbuNS6sNJuLIePm71hXyOwpRxmIUVSK1HZtudGazZZ6Wvb7P9EuFt/z
         gBXWkTrs92H8LNy4kz7krI6DuvwTL+1LxyE3N/1fZ13d0enu3qxC/ofQ5hIfYqFS/7o1
         Vd+3czX5iXaBdxb3O48WV5oD1tSJIMbwaKn/Dl9R9T8MCcD0uhZx8cam+n1E0HngKcHS
         LgfQ==
X-Gm-Message-State: AEkoous9NWMTbpyHjJQlv9yiF63ut1K4ZaM9rhm6mVTaOlmk7J5+HJ/Zba4stdYVdqNOA3ee5HtdKuTOTf9XEw==
X-Received: by 10.36.209.196 with SMTP id w187mr37525891itg.47.1469651161833;
 Wed, 27 Jul 2016 13:26:01 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160726213218.C0BD36C49F4@smtpvmsrv1.mitre.org>
References: <CAGkswnQeO6oXv+so+DRCMWHqpVKuKYjZ3dTo=gZo2GzycdArhw@mail.gmail.com>
 <20160726213218.C0BD36C49F4@smtpvmsrv1.mitre.org>
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Date: Wed, 27 Jul 2016 22:26:01 +0200
Message-ID: <CACn5sdRcZ7YGWxfGf2NsJnb0tiJkCZQR7jkARtJZoZujjcFJ6A@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: Re: [oss-security] Re: CVE Request: Write out-of-bounds in gdk-pixbuf 2.30.7

> Use CVE-2016-6352.

Also, the upstream report is here:

https://bugzilla.gnome.org/show_bug.cgi?id=769170#

and they said:

> I have reproduced this with 2.30.7, 2.31.1 and 2.35.2. It doesn't happen with 2.26.1.
