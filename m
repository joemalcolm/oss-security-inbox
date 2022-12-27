Received: (qmail 20199 invoked by uid 550); 27 Dec 2022 09:27:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30619 invoked from network); 27 Dec 2022 02:53:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=E9wxQy5JcGj+drlTlbDVyxbJetksrAR+3IMJ7l0k/iw=;
        b=lxmjhaPnK58v7CRvUNSsIV/KDqyCtuNnCT3C8/6pWM/Vj1Z8uyHgl+Gk1r+izxUS8k
         uLBl5S8QP1cuebrdIYplAn2Kp5yZZF+7K2djGX7l0IT4uzgXYZlExO9JvgO+oaAQP2Sh
         9drDNYNOPsUnAJt+RSj9XsaJu3HFE72JZtLGFm+UrBVjaR4vvjFHqwWQWoHUs4sCHD4O
         nLY0vOhB5nAssQSMcHjf+F9fIF9N92IzAgEp1JMN/QtgJh67TmU0Ii/p9ARAcflWKe51
         jARQ8cc4uVfyT2Ek5jxfQ/7+VanMk8wzLIwPb6mb6GxwE/3Hkgqp6Bj5IYb8E8/srsvf
         QUhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=E9wxQy5JcGj+drlTlbDVyxbJetksrAR+3IMJ7l0k/iw=;
        b=OduGYzsKGrBeIF//xmqVDPLm3DXuH2yskN2ihPSVfzyqbuQ+5xSQ03lDngAnU6D1jB
         Pe2UE1BDMiB2+1Eu3zLKI84PHvT10TKJK8Py+e0BTaSYBnDgolu/pb9dFZARIBrsyvD6
         8LvUft4lglS1UK0PgZBUbVc5jjJYl9QQ9W8oUozASvQcRs7b9YqYRC56VZMrKUQ7awvR
         qa9KBKzxK8/pNaFWwPKO7C0XMKEEFhdxsT+XCFGawtoN4xgMO7OaQFLwK6YyoV8nwmiK
         Fv5GO6G5V/bnZ4IZRi5uQ7ftJgJBnX59QnFF0/m/TqwdfkU4KlmCSw9NKCG/JjIPco3J
         +j0w==
X-Gm-Message-State: AFqh2krAJMTM7gQHoqdXfqFu0d9/IycdBMMxcLDdWRvjirSbXMRPTX9c
	xi21K84qWfocoUPhM9If7Gbr0sK7CYbHaUkd20kzIjxaYxFKbg==
X-Google-Smtp-Source: AMrXdXtAnCBxYjPJ3KXGa3ndsFYcS9HLekmKIzF5UGct+IiHEJ3DC7a1HvlQdcaLfFSWr9RN8OHQBNv33qj9Sx50XRw=
X-Received: by 2002:a17:90b:b08:b0:226:c75:1b38 with SMTP id
 bf8-20020a17090b0b0800b002260c751b38mr62143pjb.29.1672109624225; Mon, 26 Dec
 2022 18:53:44 -0800 (PST)
MIME-Version: 1.0
References: <Y6PQctuK5/GtDRa5@ip-172-31-85-199.ec2.internal>
In-Reply-To: <Y6PQctuK5/GtDRa5@ip-172-31-85-199.ec2.internal>
From: Xingyuan Mo <hdthky0@gmail.com>
Date: Tue, 27 Dec 2022 10:53:33 +0800
Message-ID: <CALV6CNNKsG3d+SEM=ukhZ8PnjsiXWB0Cb5bZPnN7QGMvuHPPTw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Re: Linux kernel: use-after-free in io_sqpoll_wait_sq

CVE-2022-47946 has been assigned to this issue.

Regards,
Xingyuan Mo
