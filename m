X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1512" "Friday" "17" "March" "2017" "12:56:55" "+0800" "Thuan Pham" "thuanpv@comp.nus.edu.sg" "<CAMNd5sse8gHbyjf+eAx+1hQgf6d1VQH0vDQRy3f_YxKtA6noEw@mail.gmail.com>" "48" "Re: [oss-security] CVE Request: multiple bugs found in BFD libraries and Binutils' utilities" nil nil nil "3" "2017031704:56:55" "[oss-security] CVE Request: multiple bugs found in BFD libraries and Binutils' utilities" (number mark "U       thuanpv@comp Mar 17   48/1512  " thread-indent "\"Re: [oss-security] CVE Request: multiple bugs found in BFD libraries and Binutils' utilities\"\n") "<3025119.tSIlaHEIMQ@arcadia>" ("<CAMNd5sthm7v3xxeZvpd6WBXQoM8OJsst+AWK9jQinzkM-VbZiw@mail.gmail.com>" "<3025119.tSIlaHEIMQ@arcadia>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11459 invoked by uid 550); 17 Mar 2017 14:34:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13974 invoked from network); 17 Mar 2017 04:57:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:in-reply-to:references:from:date:message-id
         :subject:to:cc;
        bh=j9MczyTpLanJRCJy6kjaPUFsUmRu1eiQEJQRMPVo+x8=;
        b=gmmWZ4NdFjr4zQG8TMyz1c9BcVAl+ZCeVxY/FjpOgMXZ7LmbsDU5SMpUhhRxSWOWqX
         p8ZvYXR2TCETpmVt4xDp06XAVILPKMDnex3+LnXsUd/RLpPi6SzcVShHe3T7uPeUg4zz
         WlYflREYtEpKcRMZ3XK7twkAtd2T2z8JiUJ6LFFVHjil0Hxb9veQvixD3SgS/3yl2QhN
         eruXd1XzJSnxi0a1aag/VZ05oZWjemSSLGPpBaNZcx0oDYN/iVQHzYe/Xvm/tzy//qWp
         dHQqC8VaEyY2dt9R0j3zgzFrCl5cArD2ByXWqAt7fGR0rqehdnOngaLQqoCzNrRvZXrq
         TBCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
         :date:message-id:subject:to:cc;
        bh=j9MczyTpLanJRCJy6kjaPUFsUmRu1eiQEJQRMPVo+x8=;
        b=NLA6wu5aY+Ocxsv8r0KzuIZplaHvJiH/l6AuXBu3SylU+Vvhjp+iPRFC7QdejMU4iP
         q2+ECqEV+pb+9qfXD5DzkZocdVDiBY/FgNeWgL12u9KZjQeRZnszWCja84lEoTiINfRT
         hDNPXzspBOoKJc2BHrBpD2zgapwMh5kc52YEyaffUKbYpGHW669TZwCHxkKEFN49qQOR
         3Rk82OxAr+gmYq8FALhJLjxNISLN0jw5xWADmSUddFkMhMgU9b9VjHqLnHf8My42Q1vx
         JkNAiss1Cc3n4ARIa/nRLIUPHaysf1sH54Obxn5OgrKdwhGkfQmNXhRVslU2/mAgz4Hz
         S3FA==
X-Gm-Message-State: AFeK/H2hLFSPOB+dFKl7/MtOwkMGaZ8YCe5Tj2/MpnLuNvFv66hPr7GU2xD6Q2XO7WnFWU808l6bdvbTgeBkTA==
X-Received: by 10.129.175.95 with SMTP id x31mr1354847ywj.203.1489726616493;
 Thu, 16 Mar 2017 21:56:56 -0700 (PDT)
MIME-Version: 1.0
Sender: thuanpv.nus@gmail.com
In-Reply-To: <3025119.tSIlaHEIMQ@arcadia>
References: <CAMNd5sthm7v3xxeZvpd6WBXQoM8OJsst+AWK9jQinzkM-VbZiw@mail.gmail.com>
 <3025119.tSIlaHEIMQ@arcadia>
From: Thuan Pham <thuanpv@comp.nus.edu.sg>
Date: Fri, 17 Mar 2017 12:56:55 +0800
X-Google-Sender-Auth: 5KnVYt5KgT5YgvL5RsAa6CyG_-c
Message-ID: <CAMNd5sse8gHbyjf+eAx+1hQgf6d1VQH0vDQRy3f_YxKtA6noEw@mail.gmail.com>
To: Agostino Sarubbo <ago@gentoo.org>
Cc: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=f403045e48b4c9e473054ae601e3
Subject: Re: [oss-security] CVE Request: multiple bugs found in BFD libraries
 and Binutils' utilities

--f403045e48b4c9e473054ae601e3
Content-Type: text/plain; charset=UTF-8

Dear Agostino,
Thank you very much for your prompt reply. I will choose the suitable bugs
based on your advice and submit to MITRE directly.
Many thanks,
Thuan

On Fri, Mar 17, 2017 at 4:15 AM, Agostino Sarubbo <ago@gentoo.org> wrote:

> On Friday 17 March 2017 00:58:05 Thuan Pham wrote:
> > Could you please check whether these bugs are suitable for CVEs?
>
> Thuan,
> thanks for sharing.
>
> Since few time the cve requests happens on https://cveform.mitre.org
> instead
> of here.
>
> From some time of fuzz experience, from multiple cve requests and multiple
> feedback from mitre I'd say:
> - In any way you are able to crash a library, it needs a cve because it is
> supposed to receive multiple inputs.
> - Undefined behavior in a library also needs a cve.
> - while the bug is in a command line tool:
> 1) if it is a simple crash like fpe / segv, it is considered just an
> inconvenience.
> 2) if it is an overflow with read of size 1 is also considered an
> inconveniece
> unless you can demostrate any evidence of damage.
> The mentioned cases are not just an inconvenience unless there are common
> cases where you know that for example a webapp relies on this command line
> tool.
> 3) if it is an overflow with write access it should have a cve.
>
>
> @everyone, if you think it is wrong or I missed something feel free to
> correct
> me.
>
> --
> Agostino Sarubbo
> Gentoo Linux Developer
>

--f403045e48b4c9e473054ae601e3--
