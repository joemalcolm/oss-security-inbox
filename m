X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["437" "Tuesday" "6" "October" "2020" "11:29:34" "+0300" "Georgi Guninski" "gguninski@gmail.com" "<CAGUWgD8JLbW_GKgtgTp0SYy7zZkDzZuQiA=AZ6fm59Zu-6mZ6Q@mail.gmail.com>" "15" "Re: [oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?" nil nil nil "10" "2020100608:29:34" "[oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?" (number mark "U       gguninski@gm Oct  6   15/437   " thread-indent "\"Re: [oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?\"\n") "<20201005124358.GA806250@kroah.com>" ("<CAGUWgD_aZ6chnKWNf79_Ru=u=dFhMVX_qZEDv8tU1BajEx5ejw@mail.gmail.com>" "<20201005124358.GA806250@kroah.com>") nil nil nil nil nil nil nil "Re: [oss-security] major changes if gnu/linux dominates the desktop and/or mobile market?" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28492 invoked by uid 550); 6 Oct 2020 10:44:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13682 invoked from network); 6 Oct 2020 08:29:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=1/v5uOEPFGZ1pAUnnFDgJffhfE4/tXe7xk73jK9WPM0=;
        b=FPtWxtTQsY+fyxwlJE3wzhMjF7YtrARKlc2aZQ4gpFP/5RyFSPL8MPCQuz0/kbl8A/
         GrlhQwKPgAr0U2MDVQjW2dGyEcFqOciRna//uj7W4TXu+2lHeF4/uHyQIIathmSzf+Ws
         uH467IzHFXAysvgMvAoi82L20UmHZctbjiTt9GOJmD9UdMmcr5p618bJj3QDRjBg8uVg
         odjCTpgM5uPAHsYFfSg1rmakc2Q3uB+TS8FVtSJj0kFMfsPZdXYAenpf+UaNlOpuUHpo
         xJ70xtOtLBoRMlFiPRWw9kzLYKZ00QimwFwj5idLbm0RX+CD7z/qNzEY0tsxCdDxwLrX
         gNeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=1/v5uOEPFGZ1pAUnnFDgJffhfE4/tXe7xk73jK9WPM0=;
        b=seNDds3hCbtmXlVY6EJTKgm/jfjFAHlO5bqMPPtTNvHlRaNEkWdKTdLzgmdKOLcAn+
         Ueh8Y8GCv3fgeQWrsLmFxM1g4uGWeG95Nb93KyFy7Y6tSxJ6DIdWReMWlNJ4SnCmvloJ
         N+cAC7tjVTappip6yhiP6MLYNj6ZePrxGive4r6zu7QK7TFOTcQY95JZCuq4nRqrDdoa
         But80uCp1R1mivjrSAMKMWkrvGwzai/uAKLJ7uUyRlQ0vXwvZr/46hDhrM2jzsnYV8WK
         k8cZmKBt7kSOMAbT3btTQInTgz9tgpKdCf6CTseS+ZHriOKfv+0G4IZBX2t7Gk4qPGv+
         zAqw==
X-Gm-Message-State: AOAM531RgYFrs82TnbOyjVymQErDAtJlgo92Jrv8ZtIWsFVIzD+VP5jW
	O4/s2yxI+3Fso/u3efKGox8IOSda5fGibPILxDPKzj+OMoo=
X-Google-Smtp-Source: ABdhPJwgmy6fq8I4mXr1E6Puh4F4DazQcy7NyZx83rvacpeuXo6zkTQYAUhUPj7qEDQQYdzHhiETFHI29N4al3CdHvg=
X-Received: by 2002:a1c:6807:: with SMTP id d7mr3427676wmc.38.1601972986653;
 Tue, 06 Oct 2020 01:29:46 -0700 (PDT)
MIME-Version: 1.0
References: <CAGUWgD_aZ6chnKWNf79_Ru=u=dFhMVX_qZEDv8tU1BajEx5ejw@mail.gmail.com>
 <20201005124358.GA806250@kroah.com>
In-Reply-To: <20201005124358.GA806250@kroah.com>
From: Georgi Guninski <gguninski@gmail.com>
Date: Tue, 6 Oct 2020 11:29:34 +0300
Message-ID: <CAGUWgD8JLbW_GKgtgTp0SYy7zZkDzZuQiA=AZ6fm59Zu-6mZ6Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: greg@kroah.com, itz@very.loosely.org
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] major changes if gnu/linux dominates the desktop
 and/or mobile market?

On Mon, Oct 5, 2020 at 3:44 PM Greg KH <greg@kroah.com> wrote:
>

>
> "if"?  You do know the market share of Linux-based mobile phones, right?
> Last I looked, it made the Linux server market quantity a rounding error :)
>

AINL!

Android Is Not Linux!

https://www.theregister.com/2015/06/17/debian_chromium_hubbub/
Chrome, Debian Linux, and the secret binary blob download riddle
Browser snuck proprietary voice-snoop code into distro
