X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["778" "Monday" "3" "August" "2020" "16:41:37" "+0200" "Jason A. Donenfeld" "Jason@zx2c4.com" nil "19" nil "^Date:" nil nil "8" nil nil (number mark "        Jason@zx2c4. Aug  3   19/778   " thread-indent "\"[oss-security] ansi escape sequence injection into ubuntu's add-apt-repository\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] ansi escape sequence injection into ubuntu's add-apt-repository" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5932 invoked by uid 550); 3 Aug 2020 14:42:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5899 invoked from network); 3 Aug 2020 14:42:01 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
	:from:date:message-id:subject:to:content-type; s=mail; bh=kilTne
	cgAEnQg22Ms5TlGPFv+b4=; b=AgjajJLLb5c39JgZPwni6kEzyVMSw9quvlbok4
	i0eKImi8NbA8Ww5o73X5vjz8IdPP99PluwibQB1oZfGGxa203pJVYSbitrZaHsBJ
	SEwTLwQmZ5jOpAyGtbtXr+1jmlKFCnYNaSstvFkTgT0/HnlhkwFlRTUiyyeETCpR
	dGMB+XdtjL8aEAg8FGjCZA3iBGvZ8y2j/3hfgn+sfhXrVBhIWEe75D5M7ePxnjer
	/ulN4so435jjiZzicck2GLfDMwSa4y33f17QmhW5YiZ0bRXmPBuRULWWWVGRhObD
	40lW/OZxtMchnGmpI+rIPuRB7a/FumEMuQd1wckSoNLNcqvQ==
X-Gm-Message-State: AOAM531f3UzspOW0EH7QZW7Htz3ZTVzTZ4RzG8x4vEDlNmkbD+OW7GX1
	dU+fbL6v3cDoaaAi11ht95n1a3jUdSiTbNDEbpI=
X-Google-Smtp-Source: ABdhPJzXP9pDWjvmLutbqlD1o9v9uaOJqWKfTgHubdFx7+wHqT8kWksBFh8OjVBtnBfWGtHnZ8uTIS9ZZocBh+sMW1o=
X-Received: by 2002:a92:d392:: with SMTP id o18mr13249319ilo.224.1596465708057;
 Mon, 03 Aug 2020 07:41:48 -0700 (PDT)
MIME-Version: 1.0
X-Gmail-Original-Message-ID: <CAHmME9pxJZ8wYk0YEj0-78GOqwWgdZ8crvNE4usX7N-3KvGebw@mail.gmail.com>
Message-ID: <CAHmME9pxJZ8wYk0YEj0-78GOqwWgdZ8crvNE4usX7N-3KvGebw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Mon, 3 Aug 2020 16:41:37 +0200
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] ansi escape sequence injection into ubuntu's add-apt-repository
To: security@ubuntu.com, oss-security <oss-security@lists.openwall.com>

Hi,

I've found a rather low grade concern: I'm able to inject ANSI escape
sequences into PPA descriptions on Launchpad, and then have them
rendered by add-apt-repository *before* the user consents to actually
adding that repository. There might be some sort of trust barrier
issue with that. This could be used to clear the screen and imitate a
fresh bash prompt, upload files, dump the current screen to a file, or
other classic shenanigans, well chronicled in the archives of oss-sec.

PoC time -- I'm using this "feature" for good at the moment to
announce the deprecation in bold text of a PPA that I maintain:
https://data.zx2c4.com/add-apt-repository-ansi-injection.png

The proper fix to this is likely to do sanitization on the
add-apt-repository side.

Regards,
Jason
