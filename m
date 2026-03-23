Received: (qmail 28595 invoked by uid 550); 23 Mar 2026 15:41:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7738 invoked from network); 23 Mar 2026 14:32:10 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1774276320; cv=none;
        d=google.com; s=arc-20240605;
        b=M9xvUSbkzYOqPA1MscvoDN9C4y9ePfHP6T1hMkLFI9mKhMf5NoQUKN60cyklH9Yfdb
         RyEjCKs8M/EZJULeBE0CGVIbJI2U2t4TmZ/Ov7Bz0sZoDQlN8tqviVQLKRf96uC/HqY8
         tFaplRvBsJCL92yvy5W2BgY4HKAiK+LMpY2jGPRcxS4cx3G7AG5ntoZrSV/YAV6wAuNE
         wNo2hf998BQY+ZgmtSl02wouBl3EPmNTsdpEzzNqaxtCw9JvTeNChkUG90//PXx1rj7Z
         F0lkCLSwd9k3EUyOM8JuAg8yM03ivscZWOVCc+/Ikx4y0tTgBoHhyUTcOHgf6lwWR3J5
         EucA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=2HRrfhDAO3EDxJ4DKhVS6d1o6r3E3S3VmyHcTIcM3M8=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=kSe3GgWrKhfoRxzp3Lv2dDpdwW6tcRX1P/vxSDWESpwl4tDWVScB0wPTURvymWjz5n
         OPTjT2HsiBLJCdxW/OnjH9K3WfW5jEY6HBaQ+XhHbBfBXG8p+zB4n0xKTsWZuTG0oc5m
         yBQY/9thwVvAF4cA8QHvV433q8J0cxvszZYV8n3ifkKeAyJsT5yeM6XAFR52cuABMzyW
         as4AImbYHxD7D6vLV4wkC2Fzd/ogmthV8d1qGWZEZg35a42WmRWfQdvo3RoNw+h0MOOE
         3QmRZXoJw9iK8akcMSi/ihQoXhkNkqARr49i9jP1kecs1/JoaSFwujlJoFJdEL0FsVxr
         Dtgg==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1774276320; x=1774881120; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2HRrfhDAO3EDxJ4DKhVS6d1o6r3E3S3VmyHcTIcM3M8=;
        b=F9rSclZvwNxX3erwRGIKl3CaH5yoia/q2UJoHr//Ei9ODZdRRD/zd5GuZjWtLsRgAh
         z/6GMVSB6F06I/pVxaN2NUK0eoVpzG4KKHiUut+yKRo/v9JU93wvm7xdvWcj4+KPN1/b
         U8AzuTd6wXoGHzs3W9TpGaTqo3z1SlQY5CFs2U74u+ZSZ61g7kUVWiKTHAmv5ZnAe7NE
         c7JeudqTjbYmS6nktK7vxfOvDmul2qCalX9bknkaHmbKPUjVGcGqyxBqEFjOxHqBdj4c
         pO0wbdu3Fp+GKZ/Omx7MVr9QiQboA8XNczy6E81fPzOdOVJaQxPnypmyA/s3TlbExlMH
         InIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774276320; x=1774881120;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2HRrfhDAO3EDxJ4DKhVS6d1o6r3E3S3VmyHcTIcM3M8=;
        b=NSdAomBi1Bzv8kG/N74BiVbvHI5MIroReAIO6Imazz3bR+fd6zcVa0W9fir6Iybct6
         Kc0/bZbJSt7Rz9oa3VQ69+iWNIzUzN4+ntZY3TCQUhSvqj5RVv+o3VKim1nHI/FWZtAH
         XCQpOY+puAikQ7SqoDDwZpcL+xGkrCm8AeNNHN8slr4H/1AJuNmSK9bM9hNO7tWpk6Jl
         4T4+ZpKczU5N5b7CcQIOOmwCZZdaQIhPRIRBE8FIU47/PxF6f4rqcDphBtDuckdqTHX7
         Wub4fc/dk4QAHhodFpHblN2plMN1cn5l4Hd+QVo5pV4HU01+QxCfciJ8iJVbwvmz2pIa
         ii4A==
X-Gm-Message-State: AOJu0Yw5Ei23sA2d2HdduxyF38O7CcEF1ewlTrRkMGIcus5aHAwJAS37
	uBo8m4CpCZGTieXR/AzPpO+PkQfsjwxwLYuoxdxMJ+IXnkI6vY5B2jYnDIryj4Mgm11JvjOQwuQ
	6XLd8Z09N4vbZ0KL8S7HzufTXcsP9/emDUwcE
X-Gm-Gg: ATEYQzyrNSuV0wmNWHdXVXtbVDoOphprdvjZdHn76OuvtNPEM/AWRLErdalPQoURrLH
	tYt96YqN/8dhmd0WslvY6MB0z0Ox5/s4g9EX823FzXbRidJD6lFkO7Jzgz+hyCq6E/NQzqXMMiC
	cGkNbXybOXOrUISzBnDCG3cNKqDqj5i9uZcTHoou1ixM8pUAdZyfy7d5HHs2N1vXUM3A7RvUl9c
	f21R3lGOm3Ltltynl4YJRuYFUC9nI82q/Vk7hhnPx2rQRe8fH1rQciPHsu+z2P4jyFaVl/9ML4g
	hOj8yUU7
X-Received: by 2002:a05:6512:3088:b0:5a1:3d07:a057 with SMTP id
 2adb3069b0e04-5a285b02562mr4025099e87.19.1774276319811; Mon, 23 Mar 2026
 07:31:59 -0700 (PDT)
MIME-Version: 1.0
References: <8163893e-6611-4189-baac-bce24d03640d@oracle.com>
In-Reply-To: <8163893e-6611-4189-baac-bce24d03640d@oracle.com>
From: Jeremy Utiera <jeremyutiera@gmail.com>
Date: Tue, 24 Mar 2026 03:31:21 +1300
X-Gm-Features: AQROBzCTU0dw_spPERg-yIZ6u0LsrLVnCAAemzxKix2e0baTGHdO4nrvpoZiJ6E
Message-ID: <CAPgc6UDfFN0mzSdaweqbqVGrrCcDH8wkEiEKhAVm+o1cqk2+nw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] Trivy github actions repo compromised, infostealer added

On Sat, 21 Mar 2026 at 20:40, Alan Coopersmith
<alan.coopersmith@oracle.com> wrote:
>
> https://socket.dev/blog/trivy-under-attack-again-github-actions-compromise
> reports that a compromised credential with write access to the repository
> was used to modify 75 out of 76 version tags in the aquasecurity/trivy-action
> repository, the official GitHub Action for running Trivy vulnerability scans in
> CI/CD pipelines.

Of note, this attack is still on-going and the extent of Trivy's
compromise seems to be growing. After the above was announced, further
malicious actions were taken by the third party targeting them.
https://socket.dev/blog/trivy-docker-images-compromised details how
additional compromised Trivy artifacts (image tags `0.69.5` and
`0.69.6`) were published to Docker Hub on March 22 without
corresponding GitHub releases or tags.

Trivy published a GitHub Security Advisory and has since updated it
with the new Docker Hub compromise information:
https://github.com/aquasecurity/trivy/security/advisories/GHSA-69fq-xp46-6x23

Cheers,
Jeremy
