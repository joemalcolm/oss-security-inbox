X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1914" "Wednesday" "2" "January" "2019" "16:53:16" "-0500" "Jeffrey Walton" "noloader@gmail.com" "<CAH8yC8kY-oSpFTTY2QEyM9HAWj6_h69xUAFSD=5PF7iLczqdAA@mail.gmail.com>" "59" "Re: [oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)" "^Cc:" nil nil "1" "2019010221:53:16" "[oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)" (number mark "        noloader@gma Jan  2   59/1914  " thread-indent "\"Re: [oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)\"\n") "<20190101124110.GA15804@espresso.pseudorandom.co.uk>" ("<CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com>" "<nn5zv8prfe.fsf@armitage.lysator.liu.se>" "<20190101124110.GA15804@espresso.pseudorandom.co.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24150 invoked by uid 550); 3 Jan 2019 00:18:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17952 invoked from network); 2 Jan 2019 21:54:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=TkJhiYr1TS/PgM/jz9+XuhYduRGB1URhGkACCcrpYy0=;
        b=tFdn9B3QPWGqh6QPY2rESQBl+TqoYZUOKLU1ITWwRd7PCEoYxkNNJeF1fJVbAuZWEx
         c7+OCHrZ0ZbhiKeYCXe3nOkezVYwfeldwoYs24zKkUCE9VwLOuCQ/a1bEabdB/w6fbGw
         vGEKlKwcnFWL9WlhiPZRmOG8FVm+rHQswemBnM9+L0SHRpXQ5lo/+zd5fQ3X8yW+yvAw
         v6XRZtHrMW0zG1SXsjp5i29PZSYSrlniZJzszzc+m8FQfmeuaTvewnQngdtdG/6RU+tB
         JmTBGoE0OwCNWSgLuH6uf928rGkKjvAzxZMCjcj7UfvitfTKNfLKf7WMnfLbVsEUCVax
         Jxlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc:content-transfer-encoding;
        bh=TkJhiYr1TS/PgM/jz9+XuhYduRGB1URhGkACCcrpYy0=;
        b=XzXxczHTUlf/KS68b0y7pZ3vKdebxfs84vEwcuSDfOKF6mcU9KCp2byTP8W6iwwTAB
         ITNr9JixLdAZ41QA5PpPOeoIkD7DIKgk2+6/ybt6iy2/3iggCpWB3oG9akCkkTRYqTz9
         pMPZ8HYxDXAJv3mZ6DVSVuklWgLYW4ouzWTde+Z+vSpLxLT7XLXkblTjXiGu3Rk7rIZr
         z7oP3CK/gM2+AY8rbbrA7SPWhT3+L6S4sHRAOfhoRl7v/hk/tcfgOQWB1Q+b2c7sEPIB
         c4AWBzLWswP9zmNJc6gacoU2/gpddLLshFapp2OdYRUVy8L74rmBXTAbFVKOmAeXE7xB
         9veA==
X-Gm-Message-State: AJcUukfnutAge6eiCCa6j8u7ln/OSpVO1GmVATwtbBiR4XLOIcO67hdh
	Ot63QTzZ9te1dOW83d4hYmrL7AFZ3JcKuJV14HMVI8Dg
X-Google-Smtp-Source: ALg8bN6dnVBJS5uhwsLMuf/B1qykMhGWwm/SVaJbgRblt64ijL8O6EtGkL4iBxBdCeTlbb7LlseBHL+eQPduN/mH8Dk=
X-Received: by 2002:a5d:94c7:: with SMTP id y7mr10450525ior.285.1546466033176;
 Wed, 02 Jan 2019 13:53:53 -0800 (PST)
MIME-Version: 1.0
References: <CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com>
 <nn5zv8prfe.fsf@armitage.lysator.liu.se> <20190101124110.GA15804@espresso.pseudorandom.co.uk>
In-Reply-To: <20190101124110.GA15804@espresso.pseudorandom.co.uk>
Message-ID: <CAH8yC8kY-oSpFTTY2QEyM9HAWj6_h69xUAFSD=5PF7iLczqdAA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Cc: gmp-bugs@gmplib.org
Date: Wed, 2 Jan 2019 16:53:16 -0500
From: Jeffrey Walton <noloader@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Asserts considered harmful (or GMP spills its
 sensitive information)
To: oss-security@lists.openwall.com

On Tue, Jan 1, 2019 at 7:42 AM Simon McVittie <smcv@debian.org> wrote:
>
> On Tue, 01 Jan 2019 at 12:07:17 +0100, Niels M=C3=B6ller wrote:
> > A security sensitive application can easily disable generation of core
> > files, using setrlimit (on the linux kernel, prctl may also be useful).
>
> If you want to avoid core dumps being recorded on Linux in the presence of
> system configuration that writes them into a pipe to a command instead
> of to a core file (systemd-coredump, corekeeper, abrt, apport etc.,
> using a string starting with | in /proc/sys/kernel/core_pattern), then
> you need to use prctl PR_SET_DUMPABLE. Setting RLIMIT_CORE to 0 prevents
> the kernel from creating core dump files itself, but does not prevent
> it from writing them to pipes.

This is kind of interesting. It looks like systems running systemd
with coredumpctl store the dumps in journald. Systemd does not appear
to offer a way to clear them, so a '/var/log/journal/*/*' is needed.

$ cat coredump.c
#include <stdio.h>
#include <assert.h>

int main(int argc, char* argv[])
{
    char password[128];
    printf("Please enter your password:\n");
    if(fgets(password, sizeof(password), stdin) !=3D NULL) {
        /* do some real work, detect an error condition, then... */
        assert(0);
    }

    return 0;
}


$ gcc coredump.c -o coredump.exe
$ ./coredump.exe
Please enter your password:
supersecretpassword
coredump.exe: coredump.c:11: main: Assertion `0' failed.
Aborted (core dumped)


$ coredumpctl list
TIME                            PID   UID   GID SIG COREFILE  EXE
Wed 2019-01-02 16:23:15 EST   10827  1000  1000   6 present   /home/jwalton=
/...


$ coredumpctl -o coredump.exe.core dump 10827
           PID: 10827 (coredump.exe)
           UID: 1000 (jwalton)
           GID: 1000 (jwalton)
        Signal: 6 (ABRT)


$ strings coredump.exe.core | grep supersecret
supersecretpassword
supersecretpassword
