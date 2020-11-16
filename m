X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1092" "Monday" "16" "November" "2020" "12:43:18" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20201116114318.GA335292@eldamar.lan>" "30" "Re: [oss-security] Buffer Overflow in raptor widely unfixed in Linux distros" nil nil nil "11" "2020111611:43:18" "[oss-security] Buffer Overflow in raptor widely unfixed in Linux distros" (number mark "U       carnil@debia Nov 16   30/1092  " thread-indent "\"Re: [oss-security] Buffer Overflow in raptor widely unfixed in Linux distros\"\n") "<20201113133331.48185f9f@computer>" ("<20201113133331.48185f9f@computer>") nil nil nil nil nil nil nil "Re: [oss-security] Buffer Overflow in raptor widely unfixed in Linux distros" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1273 invoked by uid 550); 16 Nov 2020 11:43:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1249 invoked from network); 16 Nov 2020 11:43:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=SnK+gcPeLNPszBLf23tADD65HdZYy3qyXMsSK/JdP2k=;
        b=jl6MxkQDFvLnE97JdueikgydVZgJccghJFyBBL/84aXf037kO/Y1EYMZq+fAioselc
         GXur97lppWcQ3A3nUZlutCxyVZJ9wNK+zpNU07YrjBOnXq+8Nv4+OyQD9ytL1zlXn4zQ
         HXEWi3KPLAX2D/X3fYShR8DlLZuMKoIMj540TEsIwRL51edMQCDwFXhk+0tmAHVkNWgr
         l6Zdi06Ge2PpCTvKiwtMs8G1xUnLo3hKwZyV4kbrLNXmCS9DzxCSmGurqV+C1JyTgSGQ
         yZda/XHg5+oNpLgazsosWHAxWrIXsoSISI9SKnZcSYA26JcBg7cDE1340qH0/jtGp66Y
         nj0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to;
        bh=SnK+gcPeLNPszBLf23tADD65HdZYy3qyXMsSK/JdP2k=;
        b=iePmHwDC5iDy/qbq10Rky5DpBBsx7Jj4I8UiLjoNuVSdOmvR3HFobeKTxJ61umnupz
         MGY4kafl1IfE7gUC7RNE1pPla9qF6YOVaFsxyGLBow/AmBMG8JwoVkunIHSczzEYhecV
         gIwYAox+eIICSgASDVGNlZoVpvXf48l+J8EEv8Wy8Xhd2o1RuV4hzOs8zAX3LPqGImM4
         0TxaTD0KxBE5Y2LZQJP9limtG3eKS5tAb1CoqhXR9R9bv17JNWJZ6RuNgzqKuMJxC2hd
         viAirLlkCkinOmKVVAFxCoFGRHkt2sxryB21uw7Eh+zP8zUYuhMF2hvNgmWbtzO5pmCF
         QmdQ==
X-Gm-Message-State: AOAM530l5y8thL50QSiqMbCiSNLg8xfff9dnBW/pz9kpN58jAgqhqHid
	F+TOyDszf+JjcBEnZ//GKQpGqjxXbWnRNg==
X-Google-Smtp-Source: ABdhPJwd3Idy1h+vmH7yBvBz1u7TVmS84LmrUmwzwXqqPt1DFEZ58ADdiijpmPNM20G/HUmX/kvrQg==
X-Received: by 2002:a05:600c:286:: with SMTP id 6mr11501525wmk.125.1605527000554;
        Mon, 16 Nov 2020 03:43:20 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Mon, 16 Nov 2020 12:43:18 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <20201116114318.GA335292@eldamar.lan>
References: <20201113133331.48185f9f@computer>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20201113133331.48185f9f@computer>
Subject: Re: [oss-security] Buffer Overflow in raptor widely unfixed in Linux
 distros

Hi,

On Fri, Nov 13, 2020 at 01:33:31PM +0100, Hanno Böck wrote:
[...]
> FWIW I recently tried to fuzz raptor again with the fix applied. I
> quickly found another OOB issue
> https://bugs.librdf.org/mantis/view.php?id=650
> 
> From the bug report:
> 
> A malformed input file can lead to a segfault due to an out of bounds
> array access in raptor_xml_writer_start_element_common.
> 
> Bug happens in line 230 of raptor_xml_writer.c (current git):
> https://github.com/dajobe/raptor/blob/master/src/raptor_xml_writer.c#L230
> 
> From looking at that code it seems to me it always expects
> nspace_declarations_count to be lower than element->attribute_count,
> however this input seems to create a different situation. I made an
> attempt at a patch that throws an error in this situation (but please
> review it, I am not familiar with what this code does and should do -
> though the patch doesn't seem to introduce test failures).
> 
> (proposed patch, example file and stacktrace can be found attached to
> the bugreport)

CVE-2020-25713 was assigned for this issue.

Regards,
Salvatore
