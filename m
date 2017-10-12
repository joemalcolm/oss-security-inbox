X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["711" "Thursday" "12" "October" "2017" "13:02:40" "-0700" "Kees Cook" "keescook@chromium.org" "<CAGXu5jKM-reNUQpJwH-MTvCZomjCKkLm0CYf2imDbF3veycaLQ@mail.gmail.com>" "24" "[oss-security] CVE-2017-5123 Linux kernel v4.13 waitid() not calling access_ok()" nil nil nil "10" "2017101220:02:40" "[oss-security] CVE-2017-5123 Linux kernel v4.13 waitid() not calling access_ok()" (number mark "U       keescook@chr Oct 12   24/711   " thread-indent "\"[oss-security] CVE-2017-5123 Linux kernel v4.13 waitid() not calling access_ok()\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30594 invoked by uid 550); 12 Oct 2017 20:06:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26451 invoked from network); 12 Oct 2017 20:02:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:sender:from:date:message-id:subject:to:cc;
        bh=Pm+nHm1pSqcipAd3Xo7uLSkdO3s6UNSo7tB/dVReSeA=;
        b=enTNs4SArLZdLbzwmOKRg9EC9S4tokdxLwu5QhqFnJl4XwKOkvTwoC0m3pj9Yyd9Eh
         Md5Q0WEHH/gtbSnehcZbBXnBEoYfPshcSFAgwpXVNBzj3ymE2wDA5gqgiXtgQloPmQMx
         5aBpBFk6/fIgwMr6CLWMkDaGG4kd5UBgTs4nIdX3AfrMlOxeWbbWNKhz7mRaoiqhkCy3
         YIVncz7AV9wSWB7aPYclbLQaEfzyrW1XmhYGQBmWdarnxTkAhPLs6XYDIWH/Ul2xPvrY
         +uC3FvAQLGYcDb2JLga0Tltsl7XTqWbfySAniJBnzmu/1Pg/wnxfQsmX7F8RfSw+9fFZ
         sKyA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:sender:from:date:message-id:subject:to:cc;
        bh=Pm+nHm1pSqcipAd3Xo7uLSkdO3s6UNSo7tB/dVReSeA=;
        b=PYDoDyX7lFsWk4HicS1YR1qZaUKR1owTFLBccXxVp2OIXOTAmyqekMYzXBEX9vu1b5
         yE8Tm2wUGbI1XSBw/tjidM5B98g5/DwyEBMyX+wL4xEWQic4aWbr/EB/YBDfEGA7bBzB
         MXK61hfAaAxRvPz588zP7uoEWLFjxnReqKUR4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
         :to:cc;
        bh=Pm+nHm1pSqcipAd3Xo7uLSkdO3s6UNSo7tB/dVReSeA=;
        b=Hlu8ErSxjNr+6QwhSgt4By0/JvM5RXd2P2kkqmkkgxu9Ib7O8cA9CFO6B7trSnS6TU
         XulDNrlSF3IuOmYW2b4bUZXdhJjcv8K3BE98Ds5/J6JkbO7bFX9ChVRifkQIhVs+4Sfh
         PiSnIwksTyYiOXLVOoRQXNgWQTTJbX0cHg/5ZshiKKHEzNw9UmsfPD4wCyzAsVqYFqyL
         OhG9AA4f9rK7+0pYeYtcqE8D7071UbJbUf9AVOYqbwIisn9okwnbnb4S5fKS7jki07E1
         zptxoiOS3DF+AmR8Pt1kUKCbGDpgloyqcwjk2gxTFazDftTuSDZXUycZzpx6V/2oiKMv
         SB6g==
X-Gm-Message-State: AMCzsaXOhA8IJsrB4Yi1Q4nDq6tr53heZEejW7lPWDF39zt++ro092Al
	KrGhslwi+0Ig8gwZUkZgcxcCenK07ubGEw7P6y2RmX6gzFk=
X-Google-Smtp-Source: ABhQp+S5GRX08owCF6LshlJYUPwgpDY76wB0iVHJcY9rOQbaDmSQD6R2enfRfuT6obHYYT/PVULrvUhIz0j0g8ZtD88=
X-Received: by 10.107.48.76 with SMTP id w73mr4586116iow.301.1507838560730;
 Thu, 12 Oct 2017 13:02:40 -0700 (PDT)
MIME-Version: 1.0
Sender: keescook@google.com
From: Kees Cook <keescook@chromium.org>
Date: Thu, 12 Oct 2017 13:02:40 -0700
X-Google-Sender-Auth: -F4ElDNuJJj98PHkxri3P48-F-U
Message-ID: <CAGXu5jKM-reNUQpJwH-MTvCZomjCKkLm0CYf2imDbF3veycaLQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Chris Salls <chrissalls5@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] CVE-2017-5123 Linux kernel v4.13 waitid() not calling access_ok()

Hi,

Chris Salls discovered that when the waitid() syscall in Linux kernel
v4.13 was refactored, it accidentally stopped checking that the
incoming argument was pointing to userspace. This allowed local
attackers to write directly to kernel memory, which could lead to
privilege escalation.

Introduced by this commit:
https://git.kernel.org/linus/4c48abe91be03d191d0c20cc755877da2cb35622

Fixed with this commit to mainline tree:
https://git.kernel.org/linus/96ca579a1ecc943b75beba58bebb0356f6cc4b51

This should be fixed in the -stable free (in the future v4.13.7) soon:
https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git/log/?h=linux-4.13.y

Thanks,

-Kees

-- 
Kees Cook
Pixel Security
