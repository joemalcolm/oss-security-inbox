X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2270" "Tuesday" "23" "August" "2016" "22:04:44" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20160823200444.rcze3xsa6vjxyiws@eldamar.local>" "60" "Re: [oss-security] cracklib: Stack-based buffer overflow when parsing large GECOS field" nil nil nil "8" "2016082320:04:44" "[oss-security] cracklib: Stack-based buffer overflow when parsing large GECOS field" (number mark "U       carnil@debia Aug 23   60/2270  " thread-indent "\"Re: [oss-security] cracklib: Stack-based buffer overflow when parsing large GECOS field\"\n") "<8b386585-e699-ca12-56b3-6104701f9e9a@redhat.com>" ("<8b386585-e699-ca12-56b3-6104701f9e9a@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 4021 invoked by uid 550); 23 Aug 2016 20:04:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3991 invoked from network); 23 Aug 2016 20:04:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=FrmgeYmhX94ILTFh7YsSM8hw6vPux5LIVUt6dJ9fTUw=;
        b=hZp5EA88pRF9/ukeHT2FRjHywXyClMJRN/85U5qzMvB1s0vLPOTIKmc60K6eDlKFH7
         rvmISBZyNqkLGUwpdz5RjsKl2yTu90/LWWlhNAv2Y0xhHOZ6uXPK2GYHnyoR7Dc4nnG8
         cm3KSgoACHVzy6x/0ON0gG74NZzaEC0Dp6Fe2C5kIX4XfLUiXjORcPOW0UFpavOAad7K
         Q+hoqL3IlMqFWtaCt/79d6HRm3NeCKKbVxKzOw91rWRBy+2u326u/8+7zh99RnLq24mo
         dvEv/k0WbZf1TN2lnL3qIX4mNLiKMe5LRtf55bHsESG8V9iplgWG+6tRfJ9bKQOJJ3iA
         zdGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=FrmgeYmhX94ILTFh7YsSM8hw6vPux5LIVUt6dJ9fTUw=;
        b=NtYfmUGp7dF8fzYGWpQ1zEHcOuhlRYzeZ6f1IeEBeQQiRvN+SGeJJjdLBHwXjeB/tb
         qDlep5jaqtoG8qMP+p480KmTS0f/kXmKFagoRnn8NZXrltPA2lm/HJyEP1KiOvfHgxBl
         C8wEcxEtgUa/SOcgxA2YJBCzVg24uYrkaX7hsrj9OGK/q3SbYPhL8BVdX3H6qSs0A+Y5
         8iq3Un1wYO9/8UNSrtDXcfBimk6DlvQuGO2xxYq+Vb99n8poi1BfS15GAR0sg8bH1N0/
         xgxoeM+eS8bzHRqtlppQo53USJfZsqQ/N750aMN6oqwcHaU7IWV/aoBPhEvviG9rXm2b
         HfWw==
X-Gm-Message-State: AEkoouutFSjnDX8LQvgszPPHc5D6ZkPlHTbGpN7/0JCg0cbBIEiA6RfjTNqi1xd833Wskw==
X-Received: by 10.194.89.129 with SMTP id bo1mr23011807wjb.105.1471982686253;
        Tue, 23 Aug 2016 13:04:46 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Tue, 23 Aug 2016 22:04:44 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Cc: Howard Guo <hguo@suse.com>, Marcus Meissner <meissner@suse.de>,
	CVE Assignments MITRE <cve-assign@mitre.org>
Message-ID: <20160823200444.rcze3xsa6vjxyiws@eldamar.local>
References: <8b386585-e699-ca12-56b3-6104701f9e9a@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8b386585-e699-ca12-56b3-6104701f9e9a@redhat.com>
User-Agent: Mutt/1.6.2-neo (2016-08-08)
Subject: Re: [oss-security] cracklib: Stack-based buffer overflow when
 parsing large GECOS field

Hi,

On Tue, Aug 16, 2016 at 03:34:54PM +0530, Huzaifa Sidhpurwala wrote:
> Hi All,
> 
> A security flaw was reported to us by CSG Labs, details as follows:
> 
> A stack-based overflow was found in the way cracklib, a library used to
> stop users from choosing easy to guess passwords, handled large GECOS
> field in the /etc/passwd file. When an application compiled against the
> cracklib libary, such as "passwd" is used to parse the GECOS field, it
> could cause the application to crash or execute arbitary code with the
> permissions of the user running such an application.
> 
> To trigger the flaw, you need a specially-crafted "long" GECOS field,
> which can be done by a local user on the system. The attacker then needs
> to run some utility which uses cracklib to process this long GECOS field
> on the system. (such as "passwd" application which runs suid root)
> 
> All versions of the cracklib library shipped with Red Hat Enterprise
> Linux are compiled with FORTIFY_SOURCE, which detects the
> buffer-overflow and aborts the application safely.
> 
> Therefore the maximum impact of this flaw is application crash.
> 
> However, there may be other applications, distributions which dont
> compile cracklib with FORTIFY_SOURCE, and this can lead to easy code
> exec or even privsec.
> 
> A proposed patch is available at:
> https://bugzilla.redhat.com/attachment.cgi?id=1188599
> 
> This flaw was assigned CVE-2016-6318 and it was previously disclosed via
> linux-distros mailing list.

In the SuSE Bugzilla, it was noted that there is still another buffer
overflow present, cf. 

https://bugzilla.novell.com/show_bug.cgi?id=992966#c14

and the patch

https://build.opensuse.org/request/show/419768

> - Add patch 0004-overflow-processing-long-words.patch
>  to fix a new buffer overflow identified together with bsc#992966.
[...]
> The input word is guaranteed to be at most STRINGSIZE-1 in length.
> One of the mangle operations involves duplicating the input word,
> resulting in a string twice the length to be accommodated by both
> area variables.

https://build.opensuse.org/package/view_file/Base:System/cracklib/0004-overflow-processing-long-words.patch

was applied.

Should that possibly get a further CVE id for reference?

Regards,
Salvatore
