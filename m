X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["619" "Thursday" "23" "January" "2020" "15:17:27" "+0000" "Nick Boyce" "nick.boyce@gmail.com" "<CACqxkW+KKgmqZmEeardoPrSQGDccoRnQiCvg-T2qYuqTKgSXAA@mail.gmail.com>" "17" "Re: [oss-security] CVE-2020-7040: storeBackup: denial of service and symlink attack vector via fixed lockfile path /tmp/storeBackup.lock" nil nil nil "1" "2020012315:17:27" "[oss-security] CVE-2020-7040: storeBackup: denial of service and symlink attack vector via fixed lockfile path /tmp/storeBackup.lock" (number mark "U       nick.boyce@g Jan 23   17/619   " thread-indent "\"Re: [oss-security] CVE-2020-7040: storeBackup: denial of service and symlink attack vector via fixed lockfile path /tmp/storeBackup.lock\"\n") "<20200122130709.GA23176@f195.suse.de>" ("<20200120134055.GC10486@f195.suse.de>" "<CACqxkWLqdgyMNidzGuffrrudaFYu+ip34V0iLgerSOS=QETniA@mail.gmail.com>" "<20200122084245.GA10489@f195.suse.de>" "<20200122130709.GA23176@f195.suse.de>") nil nil nil nil nil nil nil "Re: [oss-security] CVE-2020-7040: storeBackup: denial of service and symlink attack vector via fixed lockfile path /tmp/storeBackup.lock" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26156 invoked by uid 550); 23 Jan 2020 16:06:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7430 invoked from network); 23 Jan 2020 15:18:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=uZD64tvkvFbs/LchK/4H/1yRkmCp+9JKt8vIp3dClo4=;
        b=QTrwpd8NC4tEXbMEwETifTL+eXJoGAR4pTuKrtErt63tMNDRoPqP2sERrGltPmljAL
         yR3eS164TiUjteCF3HMfXhUJy6k24M1uFqV7oEmKdgicbAt2dmdXzWLIIKrIXnvlXaKQ
         NNqOGNZeryw97LBpjyNKvLnn8dD2JjjrkuOhTcGayUt2yYZlzFD3rONswnmP7eWNcndr
         NvqCJM7wfuPlWu0RWnMLKMyI8gxn6AP3a0PZFd2GTyWDT6BPtBAFrBIJBJwyJt+yBNwa
         dhEfoelgRlwvvQ5pqE1stkFDii95LAMh2K9y8kdeCYBb21QxiYyy3k04efks4QE3fu6Z
         K6rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=uZD64tvkvFbs/LchK/4H/1yRkmCp+9JKt8vIp3dClo4=;
        b=R3+e6exTJ+Peh7kBhuRvZREq+6tIHxMCX0cK/tzjbMt6tx/HkasTMta9uW/dfU3uSG
         amcmPnbOqu0hsgVxjYOk2jSnD9JJMVn753Uu4Wh06uaPFJpT9VE/JsvS1H1IY5NNf6fv
         O8DGnBaken9DZWW5fYSoGRKKj/6Qx5jL0gN/DP+mAX0w5aA2xiWe7gOvo/T2xGTd07ff
         Iteb9h1p3m3wJS09HwNV/cr2PhkluGXl7hPryxEE/7Z4MwjHQPFExri2T3UJWVALRktM
         R7C4sEVxM8C0zjp0zo3TnFmSn/+56T8M0P2Uz/mwRw671voZ7xBHRuzwy1LSgLPkNvOe
         SURg==
X-Gm-Message-State: APjAAAUtASSm4rvTfkXXGdaqcBrgBLP9iCk7P5/OCF9nZ3neXTV+Oh9s
	+O7cuWVFQjZfULBeY7bn9/IRZHpQGxX3hXiaHXiq8w==
X-Google-Smtp-Source: APXvYqxW65cunR9U5R6zz9+kO5Q2cCkWIbsUMIfWuiIKSjRmViouOBYOOCyFtvBtDGTpUGafuJaGdWXIh71PqofUBiY=
X-Received: by 2002:ac8:1a69:: with SMTP id q38mr15579728qtk.96.1579792688296;
 Thu, 23 Jan 2020 07:18:08 -0800 (PST)
MIME-Version: 1.0
References: <20200120134055.GC10486@f195.suse.de> <CACqxkWLqdgyMNidzGuffrrudaFYu+ip34V0iLgerSOS=QETniA@mail.gmail.com>
 <20200122084245.GA10489@f195.suse.de> <20200122130709.GA23176@f195.suse.de>
In-Reply-To: <20200122130709.GA23176@f195.suse.de>
From: Nick Boyce <nick.boyce@gmail.com>
Date: Thu, 23 Jan 2020 15:17:27 +0000
Message-ID: <CACqxkW+KKgmqZmEeardoPrSQGDccoRnQiCvg-T2qYuqTKgSXAA@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: matthias.gerstner@suse.de
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] CVE-2020-7040: storeBackup: denial of service and
 symlink attack vector via fixed lockfile path /tmp/storeBackup.lock

On Wed, 22 Jan 2020 at 13:24, Matthias Gerstner
<matthias.gerstner@suse.de> wrote:
>
> > > Should we tell the site owner his site may have been stolen ?
> >
> > Hmm I never bothered to look deeper into the website but now that you're
> > pointing to it, it looks strange. I can give the upstream author a hint,
[...]
> I have heard back from the author and he told me that storebackup.org
> never was owned by him, but created by some user of storeBackup
[...]
> The official upstream website is on GNU Savannah [1].
> [1]: https://savannah.nongnu.org/projects/storebackup

Thanks Matthias for the clarification.

Nick
