X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1336" "Friday" "25" "October" "2019" "20:09:01" "+0200" "Andrey Konovalov" "andreyknvl@gmail.com" "<CA+fCnZc5Qd0wkabhMgfte8OpPmTiYbT+pL7UC7xq6W_DMj1BZw@mail.gmail.com>" "38" "[oss-security] Do distros want to see CVEs for Linux kernel USB bugs?" "^Cc:" nil nil "10" "2019102518:09:01" "[oss-security] Do distros want to see CVEs for Linux kernel USB bugs?" (number mark "        andreyknvl@g Oct 25   38/1336  " thread-indent "\"[oss-security] Do distros want to see CVEs for Linux kernel USB bugs?\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Do distros want to see CVEs for Linux kernel USB bugs?" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32646 invoked by uid 550); 25 Oct 2019 18:09:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32611 invoked from network); 25 Oct 2019 18:09:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=F7zMZEI8nHghjjXyH5Y2SoYoZp+MEHtM1FsI6ED40QE=;
        b=X47GhXKNc2+WZyzJUVaFjhtkqYlYuNS4k2H9r95L2Q6VbgQKjON+bLpyi+k0E/XZx6
         YyOZIMS25mTak5KAWllpwxxXe8/8heUKFpM1rAEs7MkdzwZp3J1vQK75+lj8DSFPQ/dS
         khkI6BNvyAcFsM6hsSOOJUuZ858dd9O3chWsvWPXdvUGLCwSmD/tNIgmL1UT8Z4cTLKK
         u3o8Tvtd278iMCvBmqWykCqogFFtkWf3C1x6N4LxBIPI2fuKlmxvE1mHiu/it3yBo+oq
         P30tJEVpwUS8DEIuPtVDxghbyz4MmAOTNTz6RHWTuZ4y0W1l3wh7EeoJy5H7V6crwzOg
         DeQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=F7zMZEI8nHghjjXyH5Y2SoYoZp+MEHtM1FsI6ED40QE=;
        b=VtTAsA+1YWOgxNnigYrqy/zwTJq6Xt74b1gZNcI6Ea/k9Tq0v09lQTju6ZIcXhnVqa
         5rztObySI5NrJp27xNzuu1FEQuPxyQ25ceZc7ygAJS8BFRkz2IG8cBfZMj7Crhu3X+Bs
         ZExjaGO7wx9+aZoit1TbUg9q7jCpaahQHaPilKmgYQJ7yVfOLJ6yC8JnXMtfj8KOZpap
         ta6k+yEX3L8YtfFthvEnjh6AA9j1dm4PeXOL0hI0SFuNVsHGYaBFCP+4pY7Q1I+m0QIr
         aukD2DlYpyxU4LMv/X59Tq80ri7NjUb4NvVFJI8ovChxsP4b35Necf4ALytoIpiL3tRB
         MC8A==
X-Gm-Message-State: APjAAAV0voEKfyCxYbEIr85Mf6R34CWDSNnDWwBB9OgEzBmb2k16czRG
	njVxB0fWVk1vX3vMj6VIT+FiKTkDx2k0gvEtmvwvUEmz
X-Google-Smtp-Source: APXvYqzNXVFK6q/3cRgoHUsGxCYPd26d2t37u4ezSDcoAM6rUH0VhugX8tBH4hSYyp5Yqyy07oJyAkhtL1n09muSwuY=
X-Received: by 2002:a19:c192:: with SMTP id r140mr3651883lff.48.1572026952902;
 Fri, 25 Oct 2019 11:09:12 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CA+fCnZc5Qd0wkabhMgfte8OpPmTiYbT+pL7UC7xq6W_DMj1BZw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: mathias.payer@nebelwelt.net, Hui Peng <benquike@gmail.com>
Date: Fri, 25 Oct 2019 20:09:01 +0200
From: Andrey Konovalov <andreyknvl@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Do distros want to see CVEs for Linux kernel USB bugs?
To: oss-security@lists.openwall.com

Hi!

As we keep getting more USB bugs reported by syzbot [1], I'd like to
figure out what to do with those in regards to CVEs. Last time I
requested a bunch of CVEs for USB bugs, there was a long discussion
about whether that is the right thing to do, see the full thread here
[2].

I don't want to argue now whether CVEs are useful for the upstream
Linux kernel. My question is: with CVEs as they work today, do Linux
distros want to see CVEs filed for Linux kernel bugs that are
triggerable by a malicious USB device?

Since not all USB bugs are the same, let's bucket them into:

1. Different kinds of DoS (e.g. null-ptr-deref).
2. Info / uninitialized memory leaks.
3. Bugs that lead to arbitrary code execution.
4. Non-triaged memory corruptions (UAF/OOB).

Points 1-3 refer to the bugs that have been assessed for the impact
that they cause, while point 4 refers to the bugs that haven't been
looked at closely.

Keep in mind that:

1. Most of the time physical access to the USB port is required to
trigger these bugs.
2. Sometimes, in cases of e.g. exposed USB/IP or USBAnywhere like
vulnerabilities [3] these bugs can be triggered remotely.

Thanks!

[1] https://syzkaller.appspot.com/upstream?manager=ci2-upstream-usb

[2] https://www.openwall.com/lists/oss-security/2019/08/20/2

[3] https://github.com/eclypsium/USBAnywhere
