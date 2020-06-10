X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["869" "Thursday" "11" "June" "2020" "01:14:03" "+1000" "Wade Mealing" "wmealing@redhat.com" "<CALJHwhQ8BM=WpLme2x4oKUy2+u7Q_DBeHjP2Ot6GFvvGmdr1ZQ@mail.gmail.com>" "29" "Re: [oss-security] kernel: Multiple SSBD related flaws CVE-2020-10766 , CVE-2020-10767, CVE-2020-10768" "^Date:" nil nil "6" "2020061015:14:03" "[oss-security] kernel: Multiple SSBD related flaws CVE-2020-10766 , CVE-2020-10767, CVE-2020-10768" (number mark "        wmealing@red Jun 11   29/869   " thread-indent "\"Re: [oss-security] kernel: Multiple SSBD related flaws CVE-2020-10766 , CVE-2020-10767, CVE-2020-10768\"\n") "<20200610114427.GA1895802@kroah.com>" ("<CALJHwhSuSiuK+gU07w1-MNoB1sW0XQwfpYCOzcXhky5K5Ynj9w@mail.gmail.com>" "<20200610114427.GA1895802@kroah.com>") nil nil nil nil nil nil nil "Re: [oss-security] kernel: Multiple SSBD related flaws CVE-2020-10766 , CVE-2020-10767, CVE-2020-10768" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5841 invoked by uid 550); 10 Jun 2020 15:14:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5823 invoked from network); 10 Jun 2020 15:14:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1591802061;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=MlURXpY/9RiDifhVYI8BbLDgmi/KW24SNQ/FpGmYKRE=;
	b=WhZLnOMUDIMqqjHamm3qXYok163xnxqGSMTuBt+2Rll2I78BjqqPNNvkb0asO2dCn2cWaZ
	Ec2i3g9tLrx5Wg6VaxbTQktqUGEpgCQJUjJaATUC99mTD7OANC4ELv5j1zzlyOso3WIu+D
	2yaPdT9NimG6Wk76gJUdz+6TM86ncTI=
X-MC-Unique: qhDA9FBLPaGO3LaeqLwA9A-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=MlURXpY/9RiDifhVYI8BbLDgmi/KW24SNQ/FpGmYKRE=;
        b=lCfyq4T+7ncEYMA2B7EYCgRAJqIlnLb4kPvXVbpdzN+fjvOK7/3Abi8zvXIl1wEyVC
         xdgXtZ66AMJDW7mgTNnnTLxehdMUjqhB+hhLTx56nyOiF4yL3T7jyLJNg6oRj1o7QvX1
         YSTeGxwNxmA6DzFClldMTPmVtGh1DoNgTVAamdEhn8LwLtQV4yurwGGXFMDIRewW4oQ3
         JrVzxvklUZveNsP4UQKpj4iXw7NtQsgA9KBTJxlQUmv63yuMyqLZeVEnK8017qQ6iDgA
         ZXESzcn03n4MkwbjnDeHVOF2sVJBfVLMrfO5YdnvA4/Gwg6FhiysLmp5msoP06YdlBYH
         O+AQ==
X-Gm-Message-State: AOAM530mWuI3bATiY5tZlgu08fFTY3Q/fOjk41gxhVQ2hM9RnE3yc/t8
	KoZVT/D/TIv/f2KjdnTmONmC60RvPMdGpzl8fddFRXXm0FnbdqDTR1Yh6HSI8MA7IS/m37qFklE
	Xr6kmJ3GjDC74hqep7Q7JwcPY4r1Jc8qWh/7qCJBRkXzU
X-Received: by 2002:a1c:3c6:: with SMTP id 189mr3625227wmd.81.1591802054921;
        Wed, 10 Jun 2020 08:14:14 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy89UdHzG9AmAwzIAJO73RFrkVqyh8myLnHzWKsUm+5dpgMBOvgEjU1EGAvgfd33JC5ogf932fJ9atSjLorWko=
X-Received: by 2002:a1c:3c6:: with SMTP id 189mr3625207wmd.81.1591802054658;
 Wed, 10 Jun 2020 08:14:14 -0700 (PDT)
MIME-Version: 1.0
References: <CALJHwhSuSiuK+gU07w1-MNoB1sW0XQwfpYCOzcXhky5K5Ynj9w@mail.gmail.com>
 <20200610114427.GA1895802@kroah.com>
In-Reply-To: <20200610114427.GA1895802@kroah.com>
Message-ID: <CALJHwhQ8BM=WpLme2x4oKUy2+u7Q_DBeHjP2Ot6GFvvGmdr1ZQ@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Date: Thu, 11 Jun 2020 01:14:03 +1000
From: Wade Mealing <wmealing@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] kernel: Multiple SSBD related flaws CVE-2020-10766
 , CVE-2020-10767, CVE-2020-10768
To: oss-security@lists.openwall.com

> Did you ask the authors of the patches?  I think they might have already
> assigned CVEs from Google's pool, based on previous interactions with
> those developers...

I am in discussions with Anthony Steinhauser from Google, Anthony
stated there were no CVE's assigned.  This message was mainly for the
other CNA's  ( https://cve.mitre.org/cve/request_id.html ) who may be
able to assign CVE's.

If the kernel was a CVE Numbering Authority, they could assign their
own ( https://cve.mitre.org/cve/cna.html#become_a_cna ) and this whole
problem would not exist.  I'm not on the security@kernel.org mailing
list (even after asking), so I can't really say what goes on behind
those closed doors, I would think it falls under their interests.

> thanks,

No problem.

Wade Mealing

Product Security - Kernel, RHCE

Red Hat

wmealing@redhat.com

TRIED. TESTED. TRUSTED.

