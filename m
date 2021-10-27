X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1594" "Wednesday" "27" "October" "2021" "06:07:39" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" nil "37" "Re: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2021-0006" nil nil nil "10" nil nil (number mark "U       carnil@debia Oct 27   37/1594  " thread-indent "\"Re: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2021-0006\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] WebKitGTK and WPE WebKit Security Advisory WSA-2021-0006" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22180 invoked by uid 550); 27 Oct 2021 04:07:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22159 invoked from network); 27 Oct 2021 04:07:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=TZah4nGrVQylqBDWZVdykCiPrs3MH0sWjRsO9nsndco=;
        b=orDjkSlSjILjPF0Db1RBrYjo2TxHcKLVlFUgrd3gN2hjFm5jCTXoHQcmhiDsChbdvI
         VpIYlRAziZUTi5Bg3eBdRSGqik6MH1scvSZ7+A6/RPfJFim0eXGvcodebMeWsJImGdF2
         K3vbMnYkvFUZZGp27t3uEkuqXlAXMeuF5q5Ih+ytou3ovOl2tYLvrxct3ARTI1w4BH+o
         6npE/g6LCXPMBE8AgPwGL3JFcQzpBErhQjTqU6FBuqv1N2429Dq9prDPb4ouQEBPkHTk
         cy/zUBwqxZvjjuDigNKrSw/8dg+ln8arIghfGy1lmaW2KrDQu8uhd5M0Pz6tjYFrIogZ
         RUow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to;
        bh=TZah4nGrVQylqBDWZVdykCiPrs3MH0sWjRsO9nsndco=;
        b=MB4YfbIC7N4yX23Eu/GAk95P8nxK8tNKwn6XAayiwGZ7oT5RbE33KNfgrvq7j9MI1j
         6xMCagwx9vfZ118gxuSVoWaPlF9w6IxbeQ0kU+okX20IteOZoD/Q9/gkuzH9QQQiG82j
         Z5D84e6PfCIFdkjMPqSQYSxP0F6P8f3QhDY2NXARk3weqYiE7SCX6gFCN1C9tM6zX3vF
         umI1kfGjwyIXOCcB9XbeygYdUNwcG6mSySxMVYPP08qUaiUniJ+bzerpOojGqCoFf7yu
         E47wRD8NpQdSgGXc2+bFmiQrVGEhRceRYyFz8lFekngV++SxtXoorewRFs4x/3ZQYnMW
         obFg==
X-Gm-Message-State: AOAM533bkPWPeioJ1i2MsWxBKJxuBf6u1RwsBa9JhNuQCsRwSl595SuP
	RS56XsbGmA++ndTbUtfvVBU=
X-Google-Smtp-Source: ABdhPJzr9s5yOy3q2MsxNyk38N2XnuTgrDn2Sn07LS8tXt7RlXudEE0PQBlxIfMIgzkfzF/5pFcpRA==
X-Received: by 2002:a2e:9b55:: with SMTP id o21mr30324061ljj.141.1635307661313;
        Tue, 26 Oct 2021 21:07:41 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Wed, 27 Oct 2021 06:07:39 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: Carlos Alberto Lopez Perez <clopez@igalia.com>
Cc: security@webkit.org, oss-security@lists.openwall.com,
	Alberto Garcia <berto@igalia.com>
Message-ID: <YXjQiwOj3gF/phTC@elende.valinor.li>
References: <03eb1900-5593-09ff-8814-008632c46c5c@igalia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <03eb1900-5593-09ff-8814-008632c46c5c@igalia.com>
Subject: Re: [oss-security] WebKitGTK and WPE WebKit Security Advisory
 WSA-2021-0006

Hi,

[dropping most other recipients]

On Tue, Oct 26, 2021 at 08:05:36PM +0100, Carlos Alberto Lopez Perez wrote:
> ------------------------------------------------------------------------
> WebKitGTK and WPE WebKit Security Advisory                 WSA-2021-0006
> ------------------------------------------------------------------------
> 
> Date reported           : October 26, 2021
> Advisory ID             : WSA-2021-0006
> WebKitGTK Advisory URL  : https://webkitgtk.org/security/WSA-2021-0006.html
> WPE WebKit Advisory URL : https://wpewebkit.org/security/WSA-2021-0006.html
> CVE identifiers         : CVE-2021-30846, CVE-2021-30848,
>                           CVE-2021-30849, CVE-2021-30851,
>                           CVE-2021-30858, CVE-2021-42762.
> 
> Several vulnerabilities were discovered in WebKitGTK and WPE WebKit.
[...]
> CVE-2021-30851
>     Versions affected: WebKitGTK and WPE WebKit before 2.34.0.
>     Credit to Samuel Groß of Google Project Zero.
>     Impact: Processing maliciously crafted web content may lead to code
>     execution. Description: A memory corruption vulnerability was
>     addressed with improved locking.

CVE-2021-30851 seems to be REJECTED (cf.
https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-30851). Is
there a typo in the CVE id for this one or did the CVE got rejected
later on? The CVE entry only states "Reason: This candidate was
withdrawn by the CVE program." so might give a light indication
towards that the CVE used has a typo and should be another one?

Can you clarify or have any insights here?

Regards,
Salvatore
