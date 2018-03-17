X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2611" "Saturday" "17" "March" "2018" "14:53:46" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20180317135346.GA8389@eldamar.local>" "53" "Re: [oss-security] Squirrelmail directory traversal vulnerability allows exfiltrating files from server" nil nil nil "3" "2018031713:53:46" "[oss-security] Squirrelmail directory traversal vulnerability allows exfiltrating files from server" (number mark "U       carnil@debia Mar 17   53/2611  " thread-indent "\"Re: [oss-security] Squirrelmail directory traversal vulnerability allows exfiltrating files from server\"\n") "<20180317100343.4edeba53@pc1>" ("<20180317100343.4edeba53@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1357 invoked by uid 550); 17 Mar 2018 13:54:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1328 invoked from network); 17 Mar 2018 13:53:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=bMVktK3MEyJ/1w/Zgnd/2Tzzyk63XdJeHMpJSScxzfk=;
        b=Wb3GMTsnrvoknD9Jcom7QkpB8/gKV4934T/4inwNtw3FEUfxffLQcd5+HL7Db27QeQ
         QdcMRqTsGexOujKCn6MzGEuPIEZWvYfxGHSvneIepDV5pBuWvS7YZAqG/sJk+USwOi/B
         RcG/Ac/VqRRP4Nnq1u7DspugP0E4HX2JUZN6x+LAYaPivOPW7jVV2hctONk6vOUVNVwQ
         cvPDU02OXUqTLgT+prL7/WgQAHPWINIp+jcz1+HM9evp+yo3Di40rKABqG2q25LRoJa3
         AOpsJ/M4YOTXKzxgTlB5oAKFxvf9YN58JlkaKk4W78Ob2LIGl6ATPKoR1zRVw49yolNl
         MrEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent;
        bh=bMVktK3MEyJ/1w/Zgnd/2Tzzyk63XdJeHMpJSScxzfk=;
        b=UCHMOABRZERfxesl9EdFotOCg+zqmCV4+0POJkfGsV0ybqQMcjFzQAkrsG1C/JSoGW
         5JYD8YRYy4nAmK8lMzZQCN7KObAs7cmScj/a5qTJdbR3YQCo8dA24dQ+P+hDW8lXErmM
         cuqbF96qtZlXMtYzOIYSJBASZX6mK+QA3ahZQMFfutbb3TC2+Ug+L508ziCfp8F3tkVT
         i6C96HzSxf/fnkt4Kkux8mBR3XLUgHwX3ak3zmZor53x9kTmB9odl6FumR51JLeJIdw8
         X4+svsh+S0NaTM7AqTQp8vb7uzCNuvUs3sMR5G4b0C1pGilYOuF+Q+iB58KT61oe+jLJ
         9LQA==
X-Gm-Message-State: AElRT7HKZeljjIYJkKsZ4hcQeb6R7oslmli3q32qfw2FO24y2E1WcxVW
	vzzXZDBLfbBa7CkTqiUzVj0KVQ==
X-Google-Smtp-Source: AG47ELuhVo5MGzqsd2a+RWHTd6Ihmo8kjsVusYtz0tx6CJeDNQKr+rFQ5lAmlD7iK5fln8k7wUiqRQ==
X-Received: by 10.28.217.67 with SMTP id q64mr368247wmg.12.1521294827693;
        Sat, 17 Mar 2018 06:53:47 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sat, 17 Mar 2018 14:53:46 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <20180317135346.GA8389@eldamar.local>
References: <20180317100343.4edeba53@pc1>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20180317100343.4edeba53@pc1>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [oss-security] Squirrelmail directory traversal vulnerability
 allows exfiltrating files from server

Hi

On Sat, Mar 17, 2018 at 10:03:43AM +0100, Hanno Böck wrote:
> Hi,
> 
> During the Troopers conference this week an unpatched vulnerability in
> squirrelmail was presented by Florian Grunow from ERNW [1].
> 
> The issue is that when uploading a mail attachment a temporary file is
> generated on the server that the client later references when sending
> the mail. The filename is not sanitized in any way, so by passing a
> filename of the form "../../../../some_path/some_filename" one can use
> this to attach arbitrary files from the server that can be accessed by
> the PHP process to a mail. Thus an attacker who has a mail account
> could use this to exfiltrate files and send them as attachments.
> 
> The bug is unfixed. The finders say they tried to reach out to the
> squirrelmail developers, but were unable to contact them.
> 
> Squirrelmail hasn't had a release for many years and the webpage has
> its last news from 2013. But despite that until recently the subversion
> repository and the provided svn snapshots still provided security
> fixes, e.g. a 2017 found injection vuln [2] was fixed.
> Despite its stale state I believe many people still use squirrelmail,
> in my experience it works better than alternatives like roundcube in
> situations where you have very weak internet connections.
> 
> I created a preliminary quick and dirty patch that should close the
> main hole [3]. It guarantees that the filename only contains letters
> and numbers (this should be okay as the filename is created by
> squirrelmail and usually doesn't contain any user-controlled
> characters in normal operation) and otherwise just terminates the
> process. There may be an obscure cornercase where this patch does not
> fully protect: If for some reason a user can guess another users
> temporary filename while writing a mail one may be able to exfiltrate
> that. I find that unlikely enough that I haven't bothered looking more
> into this.
> 
> The researchers found this flaw while investigating a check point
> appliance that bundles squirrelmail for their webmail functionality. As
> squirrelmail is GPL I asked check point to share the patch, which they
> did and I'm providing it here [4]. I haven't reviewed it, but the ERNW
> people told me it may not work with all PHP versions.
> 
> In any case if anyone has contact to the squirrelmail authors it would
> be great if they could incorporate a fix (and maybe even provide a new
> release). Otherwise everyone using squirrelmail should obviously
> patch this manually.

MITRE has assigned 'CVE-2018-8741' for this issue.

Regards,
Salvatore
