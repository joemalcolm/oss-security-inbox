Received: (qmail 28084 invoked by uid 550); 11 Apr 2024 13:44:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29706 invoked from network); 11 Apr 2024 10:39:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712831931; x=1713436731; darn=lists.openwall.com;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=Spwb+Xa80oMp2lygGVi7vbURVNTX8+CsbJkj71AywgQ=;
        b=NRWs4XnxSBlk4g/I8hKKBwRSJdDTDezn9/Lh7Pn6fMyVwYdi/mkHCbpzuopXi6T3MG
         fuI1dXbtSAoE401vsvhTZZRpP9/9Dac39ZAIUZlo8+a03WQd5idgwRbMgTj/vWEi3R3J
         b9faHgKe1Sj/4oxurOWRDSSDGVkgLfld8rwYH1R6+3+ZGVQzTDMY8THCfzFx03tgIKDN
         kcN6yCGKdGIruTRT73w4D6QBzbpY77NlGmyCrfeMWVtGEbGI/MwEi+41pNRYO9oLJ1WT
         y5YX3BqXWYl//5LNGSolGvzKMmQDtUllgWHg5jCbOoQ/FPsKiEeNkL4TuWUGoC5bHy0d
         ZNsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712831931; x=1713436731;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Spwb+Xa80oMp2lygGVi7vbURVNTX8+CsbJkj71AywgQ=;
        b=tb4M+nQFGUktxbtZYJfcf1EBiBuZrAB8Z3MjYTXd6GBCDY5C354AYLDoHdnR2yhfL2
         EtOSO8znx2HkNwR+3wECftq+7S5p4gO3U83jljHN5eA0cytiOF1SYIPOQCZT+cK4OIrU
         wv9i8BIlptkUrYVMx/kXfuR/padLOk8aDaDp4ZFpQe6DJH+WzytA5eXgrC5KqhH8F1qO
         doYaLZCv/gZAu02voCTu3MfJc5KnWzd3RSUh1B9NSkZuckG5z7FIujsYwHwD4vXpI0f2
         rd+4Fl76vkSOBcRHZRx1WL/U+S5WdT+UW9R6El00v/+Wq+3AY5T+6iqnMNBbxeGIhzIM
         tSPw==
X-Gm-Message-State: AOJu0Yw3V0sECpc4raJ/LvjcM+6I99X0IPqRduimhYTI/i3rxBXK1+X7
	RVycZROmvDWlEd6Qk+bMV70uxBW1GzV7PWrnXHn1fN+PwovFduUaIaOK0t7v
X-Google-Smtp-Source: AGHT+IF4dPbmdc67/ejK/aBxgiNFWzQCuRId5sihYqhAbFMCVS9dzT9+kd8rm2JpNK3tYUH5nIMj/A==
X-Received: by 2002:ac2:42ca:0:b0:516:cd76:ee11 with SMTP id n10-20020ac242ca000000b00516cd76ee11mr3255617lfl.17.1712831930417;
        Thu, 11 Apr 2024 03:38:50 -0700 (PDT)
Sender: Maxim Nikulin <m.a.nikulin@gmail.com>
Message-ID: <29c2fa7d-febb-4496-bac7-a963998d7bcb@gmail.com>
Date: Thu, 11 Apr 2024 17:38:48 +0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sean Whitton <spwhitton@spwhitton.name>,
 Salvatore Bonaccorso <carnil@debian.org>
Cc: oss-security@lists.openwall.com, emacs@packages.debian.org,
 emacs-devel@gnu.org, Ihor Radchenko <yantar92@posteo.net>
References: <874jccjpvy.fsf@melete.silentflame.com> <87y19nu22i.fsf@localhost>
 <87bk6he8h4.fsf_-_@melete.silentflame.com> <87o7ahe85l.fsf@localhost>
 <Zhafa3wcZONJX-_k@eldamar.lan> <87y19kcle1.fsf@melete.silentflame.com>
Content-Language: en-US, ru-RU
From: Max Nikulin <manikulin@gmail.com>
In-Reply-To: <87y19kcle1.fsf@melete.silentflame.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Re: Is CVE-2024-30203 bogus? (Emacs)

On 11/04/2024 16:13, Sean Whitton wrote:
> On Wed 10 Apr 2024 at 04:17pm +02, Salvatore Bonaccorso wrote:
> 
>> Note that the CVE assignment (by MITRE as assigning CNA) for
>> CVE-2024-30203 is explicitly as follows:
>>
>>> In Emacs before 29.3, Gnus treats inline MIME contents as trusted.
>>
>> https://git.savannah.gnu.org/cgit/emacs.git/commit/?h=emacs-29&id=937b9042ad7426acdcca33e3d931d8f495bdd804
> 
> This commit doesn't fix anything at all, just fyi.

This Emacs commit

     2024-02-20 12:44:30 +0300 Ihor Radchenko:
     * lisp/gnus/mm-view.el (mm-display-inline-fontify): Mark contents 
untrusted.)

is not enough to fix the issue. More changes are required to make the
fix effective, namely

ccc188fcf98 2024-02-20 12:43:51 +0300 Ihor Radchenko: * lisp/files.el 
(untrusted-content): New variable.
6f9ea396f49 2024-02-20 12:47:24 +0300 Ihor Radchenko: org-latex-preview: 
Add protection when `untrusted-content' is non-nil


When external Org mode is loaded, that version should contain

https://git.savannah.gnu.org/cgit/emacs/org-mode.git/commit/?id=03635a335
2024-02-20 12:47:24 +0300 Ihor Radchenko: org-latex-preview: Add 
protection when `untrusted-content' is non-nil

besides Emacs commits ccc188fcf98 and 937b9042ad7

Emacs commit 6f9ea396f49 (fix of built-in Org mode) is currently
associated with CVE-2024-30203, however Org mode commit 03635a335
is not.
