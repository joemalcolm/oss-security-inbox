X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["386" "Monday" "26" "July" "2021" "18:59:30" "+0300" "Georgi Guninski" "gguninski@gmail.com" nil "10" "Re: [oss-security] Potential symlink attack in python3 __pycache__" nil nil nil "7" nil nil (number mark "U       gguninski@gm Jul 26   10/386   " thread-indent "\"Re: [oss-security] Potential symlink attack in python3 __pycache__\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Potential symlink attack in python3 __pycache__" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29793 invoked by uid 550); 26 Jul 2021 16:02:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28144 invoked from network); 26 Jul 2021 15:59:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=eWtrJmAUSS166TYETVdzM7sQ+iilylahhy8x3i17cx0=;
        b=ohs1Mdmm2SGBWsM2UWRWOWDHRhP2FFbbz4otLcwjVnZpbLHdXG61UeQjEYhAtf1AEO
         1LzebNVtS8pqQctj6bH2IZ7/3yDFQt+o3yFQgopyl0cvNoNgtMb23TH4GMOb4Nq0kz1C
         31A75B0d7WX4CsolKP6N5rE+GoFZAuP5n88vZ6N13QCSio/E6526JRr3/Qhl8IdqMn/L
         lEGGCa9WjU8Sp+066XndEGaQOIWNHEQV2A6kJWmqDIIxeqTIVYzeDlqv30DaXx1B1jcm
         OgGrwrVYuQRoIcL8nRIyhmRYipvb6RaPyBIv4J9MHo6R5t9hwMcfcLPz9gHD+FqeXcsp
         94mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=eWtrJmAUSS166TYETVdzM7sQ+iilylahhy8x3i17cx0=;
        b=mdHP0OapCAdzTy33E4RiXNR6K9csh+TSJaTcZgPvybRkwahWSRSfIovVBG7FbyJ+Jf
         TZm0aZmcmkoffRkXN+sSJlQu3fXjO5KJRIydb/Wg15iQAMrovwySay8teB7MuomNF+91
         7PJFbZ8ymbPbo8xf/JPn7CUErU8eYMFOieA+ouFhFbQoomb5S2uPYC5l78bbHp6kkD4w
         rtrdtmDmX/40J0pVKZkgJndxQxGKmZcqE+oFac/XYAv/vD+qyWX5wnEmolc/KfHJICIG
         ay6ABtEDXJDr7iaJ5jUGgmEI7c/9TdXUr/biSRCqBlP0mOXV36gs47yiEblOLCRWP+TY
         02FQ==
X-Gm-Message-State: AOAM532Iehh4HVy7nvwmxXQIRrETOst25FVcZZCeLlmpIXvVLIEVaRmo
	C28ZYRyVCiaoLANIBQDrDyjnxY8P0II4s2x0DypFmA3+v+E=
X-Google-Smtp-Source: ABdhPJwZaLi2catBfG7+Ad+27sCFPPOC93ubhUwKDTGi6itZ8ooeTdj5Fxol8IpPYfuLP0g6BlmI6K624FhignAkndw=
X-Received: by 2002:a05:6000:144a:: with SMTP id v10mr19737951wrx.339.1627315182898;
 Mon, 26 Jul 2021 08:59:42 -0700 (PDT)
MIME-Version: 1.0
References: <CAGUWgD_tV+cJjM_=TDrcNBhpcZOFm+JR2+Jv1tnpaSeXtM8EfQ@mail.gmail.com>
 <a373710a137a096ee8a530d960481a05566c1bae.camel@orlitzky.com>
In-Reply-To: <a373710a137a096ee8a530d960481a05566c1bae.camel@orlitzky.com>
From: Georgi Guninski <gguninski@gmail.com>
Date: Mon, 26 Jul 2021 18:59:30 +0300
Message-ID: <CAGUWgD_G65OBZcMXhErz14E+-6MncSHwr9ZZvogDQOMvaDWaHA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] Potential symlink attack in python3 __pycache__

On Sat, Jul 24, 2021 at 7:34 PM Michael Orlitzky <michael@orlitzky.com> wrote:

> When subdirectories of DIR1 are writable by anyone other than the
> person running the script, you have a bunch of problems:
>
>   https://bugs.python.org/issue16202
>
thanks.
python3 shell is still vulnerable from modules in the current
directory, but some of them like |sys| and |os| can't be spoofed.
