X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1052" "Tuesday" "18" "December" "2018" "11:44:32" "+0200" "saar amar" "saaramar5@gmail.com" "<CAF2z-PPRVy+4CQkJ=Abm6__D0f3vTjGXcPH6OG0OiF-iBn0HAg@mail.gmail.com>" "37" "[oss-security] Re: CVE-2018-20124 QEMU: rdma: OOB access when building scatter-gather array" nil nil nil "12" "2018121809:44:32" "[oss-security] Re: CVE-2018-20124 QEMU: rdma: OOB access when building scatter-gather array" (number mark "U       saaramar5@gm Dec 18   37/1052  " thread-indent "\"[oss-security] Re: CVE-2018-20124 QEMU: rdma: OOB access when building scatter-gather array\"\n") "<nycvar.YSQ.7.76.1812181420590.5773@xnncv>" ("<nycvar.YSQ.7.76.1812181420590.5773@xnncv>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26607 invoked by uid 550); 18 Dec 2018 10:38:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21577 invoked from network); 18 Dec 2018 09:44:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nx2CBSZETqsQiyj4ozrRcQQm+d+mj+Il/dgt7mKOlnU=;
        b=i0NkyGFQYL2ZTBhwglpBrDXoSkt7W/SQuwwP8XS5K/nm4WcfOwzbAiQZYzhOaClmsO
         TJK2zUuggSBf2nGcj2d1z2qw6bZ1mauXoWX1UO+ZAWdYN3/dH9ROuI7GUcKcrrzBLqEB
         w4oZgGKdPcWbmONUoJDY5ltSEziObmUFR8D8XqNB8aFCjUTIyp/F/ckQ/sHq2SSOMaQM
         7y8qrzZmrhNI+xo2u9m40bcuhnXjqmM5Q1VR4zjMOdzULQO5DmCUqYG4TX+/pi/lNS9/
         3P1RevmsEPyEcsKfmZSFxjj9iFPNm5o8C+6Shy4MO1uq75p6X1Vio6WsfhrrXHBnVLp1
         TCHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nx2CBSZETqsQiyj4ozrRcQQm+d+mj+Il/dgt7mKOlnU=;
        b=PlcYHuYWyRWh2tYWQZmKZv6uCczVZ7RJQKwXtriCP9WqFUgO7tzy8IZ+lhUGQF1xGn
         QnjN/BpOHEjRs2qOb2rBgBmYbA1ug1Tje3bUQIOWTbIcT2zQi4im8KF3N+0CnqwkP+wh
         Lllb7JjacSln9UJz5/nhYq7g3dguoknCM7dBO+uMSVQO0JB5BRAxbtqtWwSyyMsxeYeu
         uE2zHcd9lC2uVaud3/H9cBUHwlaEQbhc9gvRxKtCkBvx/ARYOaCBy64mED5xNnk4JfV5
         tmGpLaA9TVsZD629PyDFDlrwxroG5V2yS7+6ujke+9csU8I6oC79p4UUmh7h+ihQjVdH
         a15g==
X-Gm-Message-State: AA+aEWbxWucQiZPCUuQz+2HPjS916phOcy/We9RNivkn9BA37G46TLTL
	W1CoDiFUi6sJZWa6chALU0fZApQgxh/hycAkdUc=
X-Google-Smtp-Source: AFSGD/Uw/SzV/E6BjKNlKA0Ajf5PICJpD3UyXR2Ut194Qs6gKWcK8DBmu6bROMloXvGPVLMosFLPAKi+eSLUxiAXsZA=
X-Received: by 2002:a50:afa3:: with SMTP id h32mr15837885edd.150.1545126284000;
 Tue, 18 Dec 2018 01:44:44 -0800 (PST)
MIME-Version: 1.0
References: <nycvar.YSQ.7.76.1812181420590.5773@xnncv>
In-Reply-To: <nycvar.YSQ.7.76.1812181420590.5773@xnncv>
From: saar amar <saaramar5@gmail.com>
Date: Tue, 18 Dec 2018 11:44:32 +0200
Message-ID: <CAF2z-PPRVy+4CQkJ=Abm6__D0f3vTjGXcPH6OG0OiF-iBn0HAg@mail.gmail.com>
To: P J P <ppandit@redhat.com>
Cc: oss security list <oss-security@lists.openwall.com>
Content-Type: multipart/alternative; boundary="0000000000004a8424057d48bfe5"
Subject: [oss-security] Re: CVE-2018-20124 QEMU: rdma: OOB access when building
 scatter-gather array

--0000000000004a8424057d48bfe5
Content-Type: text/plain; charset="UTF-8"

Thanks all :) I'm happy it fixed, thanks for the response guys!

I'm wondering why it says "DOS" and not "execute arbitrary code on the
host, in the context of the QEMU process"? I have stack overflow, it pretty
clear I could gain more than simple DOS:)

What do your day?

On Tue, 18 Dec 2018, 10:53 P J P <ppandit@redhat.com wrote:

>    Hello,
>
> An out-of-bound stack buffer r/w access issue was found in QEMU's generic
> RDMA
> back-end implementation. It could occur when a driver tries to build
> scatter/gather element's array in build_host_sge_array() routine.
>
> A guest user/process could use this flaw to crash the QEMU process
> resulting
> in DoS.
>
> Upstream patch:
> ---------------
>    -> https://lists.gnu.org/archive/html/qemu-devel/2018-12/msg02822.html
>
> This issue was reported by Saar Amar.
>
> Thank you.
> --
> Prasad J Pandit / Red Hat Product Security Team
> 47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
>

--0000000000004a8424057d48bfe5--
