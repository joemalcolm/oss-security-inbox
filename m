Received: (qmail 5397 invoked by uid 550); 19 Apr 2023 13:29:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7458 invoked from network); 19 Apr 2023 12:46:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681908402; x=1684500402;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=4Yi7Hn1zoLabDWsdCbxRIBsJSopy9MoLZTWgJOC7Kcw=;
        b=TRI9wOlf2l3chkdoUk7vDlbnMpGapfY/XohUp/TsKaVbzhFUt62k61chSWwIUvqHnv
         TjPo5pq2ErKySQw6ow62qqGU6uS9agI6H152JcsMYR95ZiwtX08Er3agcjoXF0lB15vB
         dh/J5sriyLDEGVVYdkSpf6CpYdiYzmXZYKlHPGM8lyRXrd0xMLmpyLNUPSJRzNaZuPxI
         AMuMc2BXYNsJQ+kYMy077MU260Cl/V+xpjhGoMKOjyRt2+FPY1aBTwP1RUVvpIr+OG72
         3eMida0IJQAMb3wNib3Il35lLt9RNonu3r71+4LI7mIE+fRmsrvcwKHswebzd+Zd+j/S
         Qzow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681908402; x=1684500402;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4Yi7Hn1zoLabDWsdCbxRIBsJSopy9MoLZTWgJOC7Kcw=;
        b=Itcb4yJYBciDdvHDqIqxgTzmh8FlQyj25T1dNeCtLvkbNOpAijNlCd3o6q7ldfn+fK
         99jYI+vSfibXJQOXPLvO5J8whCxKbesnQbJNYsO7NTEqcT3sEs9niwOdk3C9Cod3MAVf
         wCydYNRvMV8zA/R22nOBTmjq0z8z+yQFSCdW8R8vPsHJGvupVz00rZ+xaOHbe7N9O+2P
         PoI6uqxGuR9P358OFLAgHmRQwwgcT9Mx0BJRN8zpF4UNuZqy5gnJ+Btzf3vB4rRFIlVy
         IuwHdfXN16wkYCLsUTq7/u1y3ReGsLgiArkPYgtp49k1nkQEiSNrT3IOKSi+jOib49CX
         vKUg==
X-Gm-Message-State: AAQBX9ekfKnda201FefIrkiCDWgcFZO+cOkkHIMxBwMxlnXGdjZGJp6l
	hKjbk6XAcfQa4jOv/SNv8BcOQcQ4oymxn7+RhfjCzrQS9RUg7g==
X-Google-Smtp-Source: AKy350ZYIlbSCyVzPdDAz4D5U5KJ54MXH5wZhSPI02I8uL2uzUYxegiAAkUjNxKqDbcYwHMc26x4Lb8oJ6+zCOo9AtE=
X-Received: by 2002:a05:6a20:c193:b0:d9:77f7:d62e with SMTP id
 bg19-20020a056a20c19300b000d977f7d62emr3772730pzb.36.1681908402308; Wed, 19
 Apr 2023 05:46:42 -0700 (PDT)
MIME-Version: 1.0
From: Georgi Guninski <gguninski@gmail.com>
Date: Wed, 19 Apr 2023 15:45:36 +0300
Message-ID: <CAGUWgD9UDNkNMsixAnLcmS0OuWM0Btvx6fRbRr1OSk1UsXhy2g@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Checking existence of firewalled URLs via javascript's script.onload

There is minor information disclosure vulnerability similar
to nmap in browser.

It is possible to check the existence of firewalled URL U via
the following javascript in a browser:

<script src="U"
    onload="alert('Exists')"
    onerror="alert('Does not exist')">

This might have privacy implication on potentially
"semi-blind CSRF" (XXX does this makes sense?).

Works for me in Firefox, Chrome and Chromium 112.

I believe the issue won't be fixed because it will break
stuff in the mess called internet.

For online test:

https://www.guninski.com/onload2.html

-- 
guninski:  https://j.ludost.net/resumegg.pdf
