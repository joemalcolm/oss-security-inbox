Received: (qmail 1751 invoked by uid 550); 31 Oct 2022 12:09:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20301 invoked from network); 31 Oct 2022 09:17:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=XbFRJrAV+YgYT3CHM3AYe1BqVxZatVEbPQGinq9pC24=;
        b=Qne1JY8dgRFShduunGnNBq0e6gG0sDWPwKedxE12vkqRYlPsGO2AtyjaxB/+PV6Hk9
         hZGs/gWJW7S23tICm09VyJR6O+nwa0JI5e2ag41VhoAXolnPhvs8EkeM9LdcDJPCgYP6
         2SOE6rNspOk5UgY5nrzbJuPmcm3Yii4SpTxjYjl1z2UwteNWinupnECxhU7GINlO6xr4
         70+3BQvcIpl3nZbBAJGrsryHt690VW+4K7mO9iy2ccM7pQd1HHiS44pJV07fTjquQ6fw
         H2vnUgkphUF1+Xdlna5JbEfMNDrjJyNybDptWNvN3MRQ7d5G8D5KFSZyBZQNVkXps8aM
         NJNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XbFRJrAV+YgYT3CHM3AYe1BqVxZatVEbPQGinq9pC24=;
        b=rOIZPx/MeiQrXYktqYegb6DpWsX76X8qlaJD+HaBdZPYHgaMZxfRkZ/Tg1FpOIPOfL
         OcbpYc+9dm9QXYYXpdWl7SAJkm+xUm4FaS1sVJStKzrMD2ga0TVGxBNEY9axvOSwECGO
         MbHNV/p5q+N8wSuEMR5FsXQGgn4Qn+9vVqmEirnnIzh3mGTG6K+rysk+4KYQYZhzlFwd
         Ly+XGnQSOWAHJaA00/VClYrkVf9cpEruWNr86XX7z6z4cCa5KvDAN3uOMkNrtTeqM7FZ
         5uf1hVojdgu5lCN+ty8gATGmXEl2MY4U6HkNVVSLcZTnyRCE078kYsI7tKVjzA53GEoW
         IwGw==
X-Gm-Message-State: ACrzQf2JSzoTFTAuO2VUTIm9NQB4eWQsoECeA/BDurv0G6ElmzFJUOE5
	GYQa7kb53lF9vTyjIsF7JqDCnRTu5sEirIrBWlC1uIf8C9w=
X-Google-Smtp-Source: AMsMyM7hVuj0iaO06TqjkDS5plvDgfbwlnvRKNvTLr2liEyZm4M2j0GJIb7EbknPPOMiSfBAPX3953h14/VCdVX7M8M=
X-Received: by 2002:a5d:40d1:0:b0:236:786d:611e with SMTP id
 b17-20020a5d40d1000000b00236786d611emr7508891wrq.355.1667207826310; Mon, 31
 Oct 2022 02:17:06 -0700 (PDT)
MIME-Version: 1.0
From: Georgi Guninski <gguninski@gmail.com>
Date: Mon, 31 Oct 2022 11:16:37 +0200
Message-ID: <CAGUWgD_OwgwKVQ+kxLv00dvDnNC9ZU9gWEarwPjSxg7kxK3rbA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Is third party javascript on a login page considered dangerous?

In short, is third party javascript on a login page considered dangerous?

The JS has full access to the DOM of the page and can steal
the username and password, which might be reused on other services,
making it yet another cross site cookie, lol.

In general, the JS persists after login, potentially giving
access to sensitive information.

I believe static analysis can't catch all JS, since one script
may load another script.

Also, the JS might be dynamic, depending on the user.

Experience suggests the main 3rd party JS comes from google
and google do [k]no[w] evil [1]

Examples:
bugzilla.mozilla.org loads from googleanalytics
*.stackexchange.com loads from google and cloudfare.

[1] https://en.wikipedia.org/w/index.php?title=Don%27t_be_evil&oldid=1109436328
