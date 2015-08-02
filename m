X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["357" "Sunday" "2" "August" "2015" "13:27:55" "-0400" "Andrew Nacin" "nacin@wordpress.org" "<CABRvpqA_VEWLe7Wq21-jDhc533z=CJ+C=5rwihEzpoKU2VGf_g@mail.gmail.com>" "14" "[oss-security] Re: WP Slimstat < 4.1.6 - Referer Header XSS" nil nil nil "8" "2015080217:27:55" "[oss-security] Re: WP Slimstat < 4.1.6 - Referer Header XSS" (number mark "        nacin@wordpr Aug  2   14/357   " thread-indent "\"[oss-security] Re: WP Slimstat < 4.1.6 - Referer Header XSS\"\n") "<20150802110623.GB19794@tunkki>" ("<20150730003044.GB5181@pizzey.me>" "<20150802110623.GB19794@tunkki>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7967 invoked by uid 550); 2 Aug 2015 17:28:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7928 invoked from network); 2 Aug 2015 17:28:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:in-reply-to:references:from:date:message-id
         :subject:to:cc:content-type;
        bh=oRiwrS3Jw71YxSZXCpThe1+1STc1oX5YGhwE7Vt5g/o=;
        b=w6VFZMAYT9AqIqErYU/6aOJk/cDi3CkUK4DlMHFbACBJoZ0B9oT60RC8F3Stt/Qwss
         xvhP23zBta6KR70KXYJCD7QGjG7UZQOxJNiPXp3rMU2cen+fGpMUqpwrORYp35/2N8/h
         gCNRsvYYlD+k3lWeVlHWneptlcnZoBZgQH2C9GhbpHNO1PzYXdapC6KWAJBfL2A8+of7
         arLvO0Nz3pDG0r7DeBVg2DwCysYn65DsogedKwgPGTpZ8YulPBbs0qOL4shFhg6fa51y
         T9pueaR01aR3yeSjJY0ojPrI5grFomxXyYHvyLuqYOG4fyYZY4BcRUL/K2DcfcIaxWqP
         CqZQ==
X-Received: by 10.182.210.194 with SMTP id mw2mr12718882obc.59.1438536504735;
 Sun, 02 Aug 2015 10:28:24 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150802110623.GB19794@tunkki>
References: <20150730003044.GB5181@pizzey.me> <20150802110623.GB19794@tunkki>
X-Google-Sender-Auth: ftKL6crUVWIvOhJfFVJAJfFQ1xE
Message-ID: <CABRvpqA_VEWLe7Wq21-jDhc533z=CJ+C=5rwihEzpoKU2VGf_g@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11c22f125c7e74051c5761ea
Cc: Open Source Security <oss-security@lists.openwall.com>
Date: Sun, 2 Aug 2015 13:27:55 -0400
From: Andrew Nacin <nacin@wordpress.org>
Reply-To: oss-security@lists.openwall.com
Sender: andrewnacin@gmail.com
Subject: [oss-security] Re: WP Slimstat < 4.1.6 - Referer Header XSS
To: Henri Salo <henri@nerv.fi>

--001a11c22f125c7e74051c5761ea
Content-Type: text/plain; charset=UTF-8

On Sun, Aug 2, 2015 at 7:06 AM, Henri Salo <henri@nerv.fi> wrote:
>
> > Patched:  22/7/2015 as per
> https://plugins.trac.wordpress.org/changeset/1204104
>
> There seems to be major issue in WordPress Trac. Is this known issue Nacin?


Fixed, thanks.

--001a11c22f125c7e74051c5761ea--
