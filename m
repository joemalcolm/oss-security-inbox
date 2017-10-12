X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["622" "Thursday" "12" "October" "2017" "12:52:05" "+0200" "Hunger" "hunger@hunger.hu" "<CAPshzHa=n0hn+JSdb+D4WZqXQjcFF0D8ffepOqjtysHAb3=W9Q@mail.gmail.com>" "23" "Re: [oss-security] Privilege escalation with kill(-1, SIGKILL) in XNU kernel of macOS High Sierra" "^Cc:" nil nil "10" "2017101210:52:05" "[oss-security] Privilege escalation with kill(-1, SIGKILL) in XNU kernel of macOS High Sierra" (number mark "        hunger@hunge Oct 12   23/622   " thread-indent "\"Re: [oss-security] Privilege escalation with kill(-1, SIGKILL) in XNU kernel of macOS High Sierra\"\n") "<CANO=Ty2wCpT6iaGt05=+quEZYbWCgtxroceUs7YPk=6=Y1vQYg@mail.gmail.com>" ("<87h8v5b2rf.fsf@xps13.shealevy.com>" "<CANO=Ty2wCpT6iaGt05=+quEZYbWCgtxroceUs7YPk=6=Y1vQYg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31787 invoked by uid 550); 12 Oct 2017 11:29:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7443 invoked from network); 12 Oct 2017 10:52:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:in-reply-to:references:from:date:message-id
         :subject:to:cc;
        bh=KraVvGE0bxWHUrnes5KBLOzKUoAOep3LJnoNFEQa07o=;
        b=QKt3TbXklXMbTjEXy5kdK7Gxbld3j7FjH2QPbRBpgXrW9F6d4edaWfnMv/irD7tmnO
         bmq97D8VhIHTgZ/R6n4VbyJorUzrtYElOthPsBj6phMGUGC4O8vGCYKfmfOXmqASlyhQ
         iuWPC41+ki2k3elB7la4Fq6+zpaNMvGCISYfSYZ7SdF+9UaGbPOUMBSkLImMHlBTmeph
         6rEXU33jziV5/KbNvDS7PHzH9m3ELFKq0Xg8SV3yDOMgCLZys0TgxcMQiW3AVsATdKNf
         JFvjyZuuLdd7j+YfPh5zcOzI/cK/a1RS1S6Qge8JJ7/VeQuZQeoadz+qN6c/y+AaHWtZ
         +I6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
         :date:message-id:subject:to:cc;
        bh=KraVvGE0bxWHUrnes5KBLOzKUoAOep3LJnoNFEQa07o=;
        b=R6mBY641eVENxg5iv2AJc64F02R1EYGbCs32NJxeOd48pzOhmOyqrIq1TgxQEtMg7s
         G26i8TDUWawigtS52q8vwiDKdpGbUQn9AFFpOMMsNwrkN8eXXSsQTgVevywADeg9nr6Z
         UCkaHDpQvLHovwTKynfk29m0GzTRMPx5R3ewimm9CK6l79UHoKtAu2fXDxElYxXaPtk3
         OijGBa1B3iVx8i8gyo7G/V60hgiNrx5FehuvejVl4bEsSit0g82D0v2bbDTCF6Ml8dRz
         8jAqdo61H+4WG8jXD+Bt4fEYcb7EmsMIOMxs6GG6FvZaMtioM89UfVWU7hr3KKULzlzv
         Jy3g==
X-Gm-Message-State: AMCzsaVOS+qeHkKBeQqBCrHGzNXKUS70Xhqbg2wlw650GcYDhGPnw9kj
	DvqScQkRpvLCbEh19IVNJF53aisQRcDZxbYv3DgLzA==
X-Google-Smtp-Source: AOwi7QBzohrEfolKPwQSFi7YFo7IKxEJ6rWkwDiTu4KLvSEL9P4Djt/Y5upZi45oVhe1Rs/zSZ1e0pLXgAa+bQTw9BY=
X-Received: by 10.31.147.14 with SMTP id v14mr2043936vkd.117.1507805526558;
 Thu, 12 Oct 2017 03:52:06 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CANO=Ty2wCpT6iaGt05=+quEZYbWCgtxroceUs7YPk=6=Y1vQYg@mail.gmail.com>
References: <87h8v5b2rf.fsf@xps13.shealevy.com> <CANO=Ty2wCpT6iaGt05=+quEZYbWCgtxroceUs7YPk=6=Y1vQYg@mail.gmail.com>
X-Google-Sender-Auth: teaQQdUCWlow-WeaCYDDHoqphbo
Message-ID: <CAPshzHa=n0hn+JSdb+D4WZqXQjcFF0D8ffepOqjtysHAb3=W9Q@mail.gmail.com>
Content-Type: multipart/alternative; boundary="001a1141f6b0cd0f4d055b575425"
Cc: nix-devel@googlegroups.com, Graham Christensen <graham@grahamc.com>, 
	Franz Pletz <fpletz@fnordicwalking.de>, =?UTF-8?B?RG9tZW4gS2/FvmFy?= <domen@dev.si>, 
	Rob Vermaas <rob.vermaas@gmail.com>
Date: Thu, 12 Oct 2017 12:52:05 +0200
From: Hunger <hunger@hunger.hu>
Reply-To: oss-security@lists.openwall.com
Sender: hunger.hu@gmail.com
Subject: Re: [oss-security] Privilege escalation with kill(-1, SIGKILL) in XNU
 kernel of macOS High Sierra
To: oss-security@lists.openwall.com, kseifried@redhat.com

--001a1141f6b0cd0f4d055b575425
Content-Type: text/plain; charset="UTF-8"

On Thu, Oct 12, 2017 at 4:00 AM, Kurt Seifried <kseifried@redhat.com> wrote:

> So I normally wouldn't accept this posting (and no doubt Solar will be
> annoyed because this isn't Open Source per se, and he's 100% right) but
> this posting does provide a good teachable moment.
>


And here's the teachable moment for you...


The XNU kernel is Open Source:

https://opensource.apple.com/source/xnu/xnu-4570.1.46/

The Apple Public Source License 2.0 approved by the OSI:

https://opensource.org/licenses/APSL-2.0

--001a1141f6b0cd0f4d055b575425--
