X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["999" "Monday" "12" "October" "2020" "16:51:11" "-0400" "Jeffrey Walton" "noloader@gmail.com" "<CAH8yC8kJ1VST96SB9=v2DC4djfa-NfTBN1dL29ZuOFbVGzOF2w@mail.gmail.com>" "22" "Re: [oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022" "^Date:" nil nil "10" "2020101220:51:11" "[oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022" (number mark "        noloader@gma Oct 12   22/999   " thread-indent "\"Re: [oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022\"\n") "<20201012203108.GA25626@wopr>" ("<CAGUWgD_U_oDLPbhAGa=tAaUf3OFM9Ac9j19nwyY-tf7KkQipag@mail.gmail.com>" "<20201007191856.2v7cpinvpzsmzuiw@yuggoth.org>" "<87v9flhhj5.fsf@canidae.wired.pri>" "<20201012194139.GA30753@openwall.com>" "<20201012203108.GA25626@wopr>") nil nil nil nil nil nil nil "Re: [oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3107 invoked by uid 550); 12 Oct 2020 20:51:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 2031 invoked from network); 12 Oct 2020 20:51:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to;
        bh=3iw5c69J/16PsT8wRUja0vKaS7ZACHXomWP/u460XC8=;
        b=BhR4OJhSoXUuH1LDVEn8uCiC/ujAfc8SYyRwj96ubV1eQlaBJSo2yWrMciUhztwm9b
         YliBSyRHwE5qurSA2HvXcEvIEcI8uule0jaFiK3FX0l2WdjBZdWlqqY9f2/GdqGC78Je
         x0IW5c5UYFVZCwdyHk8uJIL0J3/dG/37IfwMOQXptXS+ff8a+0AMOHV8PRWqweGRsOm/
         5ggyr5d3C1Xzsba8PEkUxMJtQO5IVRWCQyEzH3a3578CLI7waqblE1MnCA4LHlByptvF
         AHOGDy/tQNh4cYKphq9W0m0OfO9NEVGfGNMeITheT+XeoT/UQK+lVyhBjiQKY7T1AGJo
         BXaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to;
        bh=3iw5c69J/16PsT8wRUja0vKaS7ZACHXomWP/u460XC8=;
        b=E5c/zpNJ6LWZXsnhp1aKsPNrzv0yZKkMdSfj0BG77o5S8We9vNgtFVVx5hj5yfuD1o
         sDG5zVxdwqs5JRYXdwG6ljEbcrevLpppmLL617EZa1+Lwcar1TVxVA6waM+J99NhhYAk
         lkRgP5suPRs3Pqu4mF8Eb64NkgiuEy7gaTWZy3llWWexj1ukcegmvgHZl74TwdI6TH9a
         B5VWEl/M3LftUB5GtRE5+ZK4vRmRR9JYC9YLw4A+oojPzCvbGAoqYv9rbzf9M9RLo9i9
         64a1Wh4Ky3eBrc4w4AsSAQUUDBit+Ij0jVvf4skqooRTlO4UdgZGfw6ABZ+8U/z3rB3o
         te7Q==
X-Gm-Message-State: AOAM531EIvq1IJy2qEpPYY7uN982CP7DFbVa0cv2fc/sexz+4UWJlOeT
	o3gruwayG84lDlXL2B8xtiWOdS+emATrKCNvd7j7aF6KqRMPnA==
X-Google-Smtp-Source: ABdhPJyE0/w6bwfs58nSE72827guATohpIjZSarZfzgh7zRrdpZyAj820sEJPiqTeHnhyJrpXtZiWKHcwPzGzyqra0A=
X-Received: by 2002:a05:6638:12cc:: with SMTP id v12mr16493155jas.75.1602535882579;
 Mon, 12 Oct 2020 13:51:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAGUWgD_U_oDLPbhAGa=tAaUf3OFM9Ac9j19nwyY-tf7KkQipag@mail.gmail.com>
 <20201007191856.2v7cpinvpzsmzuiw@yuggoth.org> <87v9flhhj5.fsf@canidae.wired.pri>
 <20201012194139.GA30753@openwall.com> <20201012203108.GA25626@wopr>
In-Reply-To: <20201012203108.GA25626@wopr>
Message-ID: <CAH8yC8kJ1VST96SB9=v2DC4djfa-NfTBN1dL29ZuOFbVGzOF2w@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Mon, 12 Oct 2020 16:51:11 -0400
From: Jeffrey Walton <noloader@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Debian FEATURE: /home/loser is with permissions
 755, default umask 0022
To: oss-security@lists.openwall.com

On Mon, Oct 12, 2020 at 4:32 PM Kurt H Maier <khm@sciops.net> wrote:
>
> On Mon, Oct 12, 2020 at 09:41:39PM +0200, Solar Designer wrote:
> > I also think the defaults should be changed, and not only on Debian.
>
> This is just kicking the can down the road.  X years ago people
> complained about oppressive defaults.  X years from now these defaults
> will also be insufficient.   We could save a lot of treadmill labor
> dollars by just admitting that global filesystem namespaces are a
> mistake, but the sunk cost fallacy is preventing this.  It's the same
> story as SETUID all over again.

Maybe it's time to take a more defensive posture and guide a user
through the setup if they wish. Nowadays you've got those
systemd-triggered first-time logon GUI wizards that could include a
step to setup file sharing, like making /home/loser/www available to
other users.

The defensive posture should keep security conscious folks happy, and
the setup wizard will keep promiscuous users happy.

Jeff
