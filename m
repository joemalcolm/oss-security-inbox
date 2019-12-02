X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1545" "Monday" "2" "December" "2019" "08:56:38" "-0800" "Tavis Ormandy" "taviso@gmail.com" "<20191202165638.GA3235@thinkstation>" "36" "[oss-security] virtual consoles" "^Date:" nil nil "12" "2019120216:56:38" "[oss-security] virtual consoles" (number mark "        taviso@gmail Dec  2   36/1545  " thread-indent "\"[oss-security] virtual consoles\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] virtual consoles" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3947 invoked by uid 550); 2 Dec 2019 17:12:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32167 invoked from network); 2 Dec 2019 16:56:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=wVJBIks5BuM9e6i2cVnJDGW2fRxr6OOYvVYaidS27Rw=;
        b=bb/Z9bzSTLoddHh0+8T+SvKlnV3Tn9Cn/zh9Bb0r6D1EpiLVpwDlC2s04f+qvs8S0B
         nGXPHDalgbkhB6Efj4YP6oOUStylmiEcXzK5uUBS4n+iiV9rcGr9fb9Cwio5WR+T+Sf0
         SabeDlPmih+TciR6ZErlFeR91XcZIEZ/hrOUT5dHkkR4heH65mKHjqVjiCYQpzu8Ypjl
         qHOk75j2yzmXY3rJwiTd0B2cU58Ot3Fr/92WjE6Ur/w7JLyP1DBASEasyQZX1yCteIbB
         3TqAPCn7HdV5JC6BN34dP2CuhLIOz2swa+w9K/I3Pm7hQSnFAAm8cxlQ2jWU+TXIi8X2
         yKWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=wVJBIks5BuM9e6i2cVnJDGW2fRxr6OOYvVYaidS27Rw=;
        b=Bzw7afWiV+NwXZ6XbGOWV5ZSFnfco50vrZYrzfsWMSZ5r5QS2nDu2pYhe7Wmqw7Zj2
         9Ya3swW0O0nGM0pNeX8igNJ9z/sDvxCMHjYCq+hSYT6di47favF23+tbvAbn2xtjBJ83
         ammU9n3pg/ouXYyxYxe6KZSTNV047oXBSGSlOlZZgUoKDYzHH0rkIvx9gKDxrBbFdaVc
         mUK1R/05XU/5d2tim2hXO2XcwT2bFixwH14dfVdmK81GnO3zx0wf31iRluqOAspARDh6
         eSCCb+eoF3eZv8cjFmwz0X5/2vOQ/weLkvSbtYbc07udwcxfr7MBK6zKaCbM+GviCmVP
         zIxw==
X-Gm-Message-State: APjAAAUBc0MbtUFc0GZ8dRLa8pIWRFOwEyWeZMKg9EdqmCKufbvsgfyZ
	sbF0L0ixjvYTtBIbNKGmDx5bmXX8uwo=
X-Google-Smtp-Source: APXvYqwaKbEbtfrfy+NBRcRJh5l7QzcJJJzzJn+d0+JOVnxI4L3l8FgG3rTm0YrU/PHinpwiKT428A==
X-Received: by 2002:aa7:96b7:: with SMTP id g23mr31023633pfk.108.1575305800915;
        Mon, 02 Dec 2019 08:56:40 -0800 (PST)
Message-ID: <20191202165638.GA3235@thinkstation>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
Date: Mon, 2 Dec 2019 08:56:38 -0800
From: Tavis Ormandy <taviso@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] virtual consoles
To: oss-security@lists.openwall.com

Hey List, we were discussing simple screen spoofing attacks today, and
whether we consider it a vulnerability or just social engineering. For
example, this paper on tricks Android malware can use to trick the user
into granting permissions to the wrong app.

https://www.usenix.org/system/files/conference/usenixsecurity15/sec15-paper-ren-chuangang.pdf

Regardless of your position, this is certainly possible on desktop Linux
too, unprivileged users can start a new X server and switch virtual
console, even over ssh.

e.g.

$ dbus-send --system --print-reply --dest=org.freedesktop.login1 /org/freedesktop/login1/seat/seat0 org.freedesktop.login1.Seat.SwitchTo uint32:2

(note: object paths may vary by distro, change the 2 to a different
number if you're already on VT2, or seat0 if you're on a different seat)

The obvious attack is to switch to a fake screensaver, then switch back
after authentication, or make a fake gdm login.

I'm sure this has been documented a million times, and most of us will
be familiar with the "Secure Attention Key" idea, but this is slightly
different from that attack as it's possible for an entirely remote user
(active, physically local users usually have additional privileges, as
it's assumed they can tamper with hardware anyway, etc).

Should this have some policykit action requirement, or require physical
presence? I don't know the answer.

Tavis.

-- 
-------------------------------------
taviso@sdf.lonestar.org | finger me for my pgp key.
-------------------------------------------------------
