X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1255" "Wednesday" "3" "June" "2020" "19:49:00" "+0300" "Georgi Guninski" "gguninski@gmail.com" "<CAGUWgD_FATArUVJB=_Exdw0Fs8MQZc2kcZubTUpfbf0_xM=Tag@mail.gmail.com>" "41" "[oss-security] Re: Exploitability of the integer overflows in djbdns 1.05?" "^Date:" nil nil "6" "2020060316:49:00" "[oss-security] Re: Exploitability of the integer overflows in djbdns 1.05?" (number mark "        gguninski@gm Jun  3   41/1255  " thread-indent "\"[oss-security] Re: Exploitability of the integer overflows in djbdns 1.05?\"\n") "<CAGUWgD_mFUvmCC0f-p7XE8V6N_YVTpaC0S07SWvk=uFoCn3ADw@mail.gmail.com>" ("<CAGUWgD_mFUvmCC0f-p7XE8V6N_YVTpaC0S07SWvk=uFoCn3ADw@mail.gmail.com>") nil nil nil nil nil nil nil "[oss-security] Re: Exploitability of the integer overflows in djbdns 1.05?" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13621 invoked by uid 550); 3 Jun 2020 17:23:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24223 invoked from network); 3 Jun 2020 16:49:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=B6lEqfen3bV7jVVf6KZAtFWiRRIYYfYZJ5Quw1rFI6U=;
        b=hgBTyp7lGBwvf7U8kFe980k3TxDHA0KI9cVr5a5vC5iyuKqqdBlRNWhOmni+XM9BJl
         Lv5L6cE7OSCJSvV7OJV84bsuUvx8OhrH4H2xWlw8+XgO8rqB3/u4W4Clcazg331B0c9Y
         nEjv0+eQeNltqcsvcZRcnzzeGP+mG/MMg91AUhrEwS0jltaNfeMqPdQLNOUoZuaO0W57
         L6oDdTVfT/hfxsg0mHhzDUpW8dkzsRXih5GJah7c3UsJYa3OiC9Qhy+0PAVZzRWzsxu1
         6vmavQMusTv0aRO9AiVVlmNfQMX0QaLRrxH3MzVkx0VKBT3t754tsIf+B9tcigq51RBL
         7h+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=B6lEqfen3bV7jVVf6KZAtFWiRRIYYfYZJ5Quw1rFI6U=;
        b=TXNonvCeafszb37DdYVZmt9m7BZnH5XlKP8FzKkLKsWRar3zAwcO/IMLcuxxoiepTA
         Rl1wi8ypy+UDwAJu9dvi2rZL0fTwEjxpj2KLMlMOHLlMoVeZYCsrww6qRpiOO2zG6jpU
         kapMv9UaRYVZ9J5vTr331IdoqgxMQBC+ExVc6Jh5BZIrZPj0GGabLWowwq708PuTxd3f
         Uhv0pxXScq688M2zOx9dNJNol8BkAqlNr94LNgTozJybhnGPN3OZCIdLzkqkPwfVK4lk
         v1HXPTAjzGvmd0o3wJIX6vZMtaDzlJeGBOVSehjkyICODY7kV2s8y5W/r2WlSksjmtSR
         H4Gw==
X-Gm-Message-State: AOAM531qSdteWshFRsBAkcgIRgrQirzdWC+8VMk98/TXR5ZGS5grTVW6
	gwKj11UlDVTHWpDPxBUfAsGZmlrjpyDIu8cbeJxiOGxD
X-Google-Smtp-Source: ABdhPJxDoX0b133tuHiQhrsuvj2UC4ChWWj3OVm4CSWinBuRFa9T1BswlKEjA7tWagJFlgL9dKBBMZNVWhEKpK4h9cY=
X-Received: by 2002:adf:a18b:: with SMTP id u11mr374009wru.102.1591202953563;
 Wed, 03 Jun 2020 09:49:13 -0700 (PDT)
MIME-Version: 1.0
References: <CAGUWgD_mFUvmCC0f-p7XE8V6N_YVTpaC0S07SWvk=uFoCn3ADw@mail.gmail.com>
In-Reply-To: <CAGUWgD_mFUvmCC0f-p7XE8V6N_YVTpaC0S07SWvk=uFoCn3ADw@mail.gmail.com>
Message-ID: <CAGUWgD_FATArUVJB=_Exdw0Fs8MQZc2kcZubTUpfbf0_xM=Tag@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Wed, 3 Jun 2020 19:49:00 +0300
From: Georgi Guninski <gguninski@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Exploitability of the integer overflows in djbdns 1.05?
To: oss-security@lists.openwall.com

Some potential bugs in djbdns 1.05, I didn't test them
on hardware.

in cdb_make.c:
cdb_make_finish:

    93      memsize = 1;
    94      for (i = 0;i < 256;++i) {
    95        u = c->count[i] * 2;
    96        if (u > memsize)
    97          memsize = u;
    98      }
    99
   100      memsize += c->numentries; /* no overflow possible up to now */
   101      u = (uint32) 0 - (uint32) 1;
   102      u /= sizeof(struct cdb_hp);
   103      if (memsize > u) { errno = error_nomem; return -1; }
   104
   105      c->split = (struct cdb_hp *) alloc(memsize * sizeof(struct cdb_hp));
   106      if (!c->split) return -1;
   107
   108      c->hash = c->split + c->numentries;
   109
   110      u = 0;
   111      for (i = 0;i < 256;++i) {
   112        u += c->count[i]; /* bounded by numentries, so no overflow */
   113        c->start[i] = u;
   114      }

Issue 1:  On line 105 alloc(-SMALL) overflows alloc() despite the check for
overflow (this might be mitigated by memory limits), e.g.
(memsize= (unsigned int) -1 )/sizeof(struct cdb_hp)).

In query.c:

Issue 2:  There are several usages:
   uint16_unpack_big(header + 8,&datalen);
   pos += datalen;

There appears no check if datalen doesn't overflow the buffer,
leading past the end.
