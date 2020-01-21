X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["610" "Tuesday" "21" "January" "2020" "17:36:25" "+0000" "Nick Boyce" "nick.boyce@gmail.com" "<CACqxkWLqdgyMNidzGuffrrudaFYu+ip34V0iLgerSOS=QETniA@mail.gmail.com>" "23" "Re: [oss-security] CVE-2020-7040: storeBackup: denial of service and symlink attack vector via fixed lockfile path /tmp/storeBackup.lock" nil nil nil "1" "2020012117:36:25" "[oss-security] CVE-2020-7040: storeBackup: denial of service and symlink attack vector via fixed lockfile path /tmp/storeBackup.lock" (number mark "U       nick.boyce@g Jan 21   23/610   " thread-indent "\"Re: [oss-security] CVE-2020-7040: storeBackup: denial of service and symlink attack vector via fixed lockfile path /tmp/storeBackup.lock\"\n") "<20200120134055.GC10486@f195.suse.de>" ("<20200120134055.GC10486@f195.suse.de>") nil nil nil nil nil nil nil "Re: [oss-security] CVE-2020-7040: storeBackup: denial of service and symlink attack vector via fixed lockfile path /tmp/storeBackup.lock" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9359 invoked by uid 550); 21 Jan 2020 21:16:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24527 invoked from network); 21 Jan 2020 17:37:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=JqUg/pCmbe4iDndzvMeUujhD605HmCzJ0567UgOn9aE=;
        b=qaBQybgYixOqUMZ+1o0zGL927EjT/4s6lV6jl1DTSnm2rNVOfgc8frEaMQFOwdrpAn
         wXLb+3MgL3wTnVdYCx7BbhwXtzSM+DS3YECNVOZfGrlPtyXGJdqgh42q/q8zpV+kLL+E
         /kBsROhJmih3JCLveRzRmUsyyPfdWBViXUTvNq3ZMG1wjPM339Dy1zMlE++1crxnEKSB
         Lu8Ur1ki4hHg02G3HLQazQ/ARZBS1L5lEqTky7DRg5qvh4cTc3VrNvriPor0cu73yrJ7
         z3ZYcO5Xx4SHN5ynttybAtuBTnRqYfeN8PwZtZLkof5/PLydaZdywS/e45jaAi7Qk1EQ
         53Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=JqUg/pCmbe4iDndzvMeUujhD605HmCzJ0567UgOn9aE=;
        b=qNUBgjF7c00SGtOZSt6K+4PfwnMkF7hqdrEtOBhg7/I7u/8Lw9t1Ir6DUkDpDpE2jq
         G8phuHy1QoVyJMMIxiiVJZEqDUU4KDdj02x2TtDy56F3kg+sCtU1LmH0q31VUc+pIghk
         3SbGxqNkzZDn9z4qilP4ByxzTJ7ocIWDaoaylIkL+taIpPraBQCJPLZtBIS0ckABjBj+
         IqGcByimzIZhM2ZgSs0ZHIcVemF87LVW5GdUPNvEYVZ9tQu24K9Bvb6x4NhecOZdhOyV
         wB6unp5DnsnjSnnj5kqIEb9pbU9BsZAuFqIY4BaVqO62YBu8K4sSVvH0Q9Xyg35Pt6uP
         qhBA==
X-Gm-Message-State: APjAAAVI3Q/P4ioM/lXZjVY++flD7o8Wq+7caSdbDl3IFV+VPJJiBJVP
	TLJEXowcMxqHAx9BxFe62xQnC3GpFoR0uz5zdsy4dJ+p
X-Google-Smtp-Source: APXvYqzQz0zkbDT9wPBYk6+xQ5X7Or4AcdzdcT++Zm9F8n7CODrRkUx06Wz7t/Y+XoTMY/Ybpz1pzUR8dPBfirDu/KE=
X-Received: by 2002:a05:620a:b1c:: with SMTP id t28mr5515053qkg.360.1579628224291;
 Tue, 21 Jan 2020 09:37:04 -0800 (PST)
MIME-Version: 1.0
References: <20200120134055.GC10486@f195.suse.de>
In-Reply-To: <20200120134055.GC10486@f195.suse.de>
From: Nick Boyce <nick.boyce@gmail.com>
Date: Tue, 21 Jan 2020 17:36:25 +0000
Message-ID: <CACqxkWLqdgyMNidzGuffrrudaFYu+ip34V0iLgerSOS=QETniA@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: matthias.gerstner@suse.de
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE-2020-7040: storeBackup: denial of service and
 symlink attack vector via fixed lockfile path /tmp/storeBackup.lock

On Mon, 20 Jan 2020 at 13:42, Matthias Gerstner <mgerstner@suse.de> wrote:

> storeBackup [1] is a tool for performing disk-to-disk backups.
[...]
> [1]: http://storebackup.org

Er ... when I looked just now, the page at that URL began :

> How to Create Cryptocurrency =E2=80=93 Simple Strategy

and continued:

> Everyone is aware of the bitcoin which is the cryptocurrency
> trending in the world of IT

In "the world of IT" we are instantly wondering who exactly has
written this webpage about a backup utility ....   Should we tell the
site owner his site may have been stolen ?

Matthias ?

Cheers,
Nick
