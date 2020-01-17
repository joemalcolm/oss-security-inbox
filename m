X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["729" "Thursday" "16" "January" "2020" "23:21:52" "-0500" "Jeffrey Walton" "noloader@gmail.com" "<CAH8yC8n6X75L0dC_50wjc+Cq-Cubj568g=NXon19s_-Kxgz+2w@mail.gmail.com>" "26" "[oss-security] Some AMD cpus with RDRAND fail to produce random numbers after suspend/resume" "^Date:" nil nil "1" "2020011704:21:52" "[oss-security] Some AMD cpus with RDRAND fail to produce random numbers after suspend/resume" (number mark "        noloader@gma Jan 16   26/729   " thread-indent "\"[oss-security] Some AMD cpus with RDRAND fail to produce random numbers after suspend/resume\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Some AMD cpus with RDRAND fail to produce random numbers after suspend/resume" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26438 invoked by uid 550); 17 Jan 2020 04:22:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26394 invoked from network); 17 Jan 2020 04:22:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=i28eBhmqwnBHnIhJJJSmUVh8NySdpswLxMsdxjRflPM=;
        b=UENRHMn++HJDnuo9qnjfgh6Mt3Qh0pSli+eWcnsTy9SsC7769YoaG45oJXP9SGOQdG
         nsbet7/dfbS1hb/glE+QbyOv+tA7MC2iUVJuq2bT+ivaSo44S5OOfVDZ55EZCXoAEEfh
         AF8+hD4z4qtkDdJlXUEq6yKPfAcNMEdx3/PGsvl+rWI4XctTjvlClHqB5mC4dSmVK3S8
         Tqv8H4UbQ9/fGBwynDZxCH6XUkqvrDoQDPhu40oge2oUcu01kl0Ce4cnpQIt4Wri4VWa
         M3kLVV7gu/ky1TA0ohhyw4VMbz1R6N5DhPLcaFTlP6ooCt9/NW4bvmQkG/kITEDbDvU+
         Hlug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=i28eBhmqwnBHnIhJJJSmUVh8NySdpswLxMsdxjRflPM=;
        b=EDBCL+quBenDuTx4vikva40fpsO9hRrr9eILWFineN52OhXkB6/iP0jU+oal8oWAn5
         aVBBOSzF5zdfZVbTu+8o4pliUOVSIEyGDtjklc33cwylyLvIpZ/DnvhhRzkxlvvZ+7p8
         sl8u6gOgGkWW4X0XcH0HDpIdvaxneC4VXzJYrQVwg0zTkmjIjWMRGn3qH8TVY7kaZyMT
         9FKRp/6g82lj3RVsk7vCTNdZ6ZO5PRIWZ6SyWvadlYi09dGh2jL8csyYjEPmq4WwPSrC
         W3fVmjBkLHpk4vrcMIvAU1AW2dhnms7GQWRvUn8OjHd6HSUz5yFHomlnrvWR8yazt57U
         JUng==
X-Gm-Message-State: APjAAAUaNP5bIbIfYUea3Ulj6LrBjFOYXQteQPk3QWINd/0zoJltyfOF
	ArpJ2W4qx1XjkFimnwj0CqSjjmH6BMTZjBBvNy9uNoJBbR0=
X-Google-Smtp-Source: APXvYqzBu1qZpnT1OlITSBEPjdb4khtagp8BsPpWJc0f71QsF1bu28HCFDRQUU9kedRnt6I8Bex/g9kGrC09CdiRa3A=
X-Received: by 2002:a02:c951:: with SMTP id u17mr32848530jao.27.1579234923098;
 Thu, 16 Jan 2020 20:22:03 -0800 (PST)
MIME-Version: 1.0
Message-ID: <CAH8yC8n6X75L0dC_50wjc+Cq-Cubj568g=NXon19s_-Kxgz+2w@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Thu, 16 Jan 2020 23:21:52 -0500
From: Jeffrey Walton <noloader@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Some AMD cpus with RDRAND fail to produce random numbers after suspend/resume
To: oss-security@lists.openwall.com

This just made my radar. It appears some AMD cpus with RDRAND fail to
produce random numbers after a suspend/resume. It looks like it was
first reported in 2014 or so.

Kernel bug:

    * https://bugzilla.kernel.org/show_bug.cgi?id=85911

Systemd bug:

    * https://github.com/systemd/systemd/issues/11810

Fedora bug:

    * https://bugzilla.redhat.com/show_bug.cgi?id=1150286

AMD patch:

    * https://lore.kernel.org/patchwork/patch/1115413/

I agree with Lennart Poettering. This seems CVE worthy given RDRAND is
often used to get the kernel generator (and other userland generators)
in good working order.

(Thanks to https://www.phoronix.com/scan.php?page=news_item&px=AMD-CPUs-RdRand-Suspend
for the article and links).
