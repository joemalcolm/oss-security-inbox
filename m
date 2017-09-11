X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1025" "Monday" "11" "September" "2017" "20:58:57" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20170911185857.hfti4mrponqoddin@eldamar.local>" "27" "Re: [oss-security] GNU Emacs 25.2 enriched text remote code execution" "^Date:" nil nil "9" "2017091118:58:57" "[oss-security] GNU Emacs 25.2 enriched text remote code execution" (number mark "        carnil@debia Sep 11   27/1025  " thread-indent "\"Re: [oss-security] GNU Emacs 25.2 enriched text remote code execution\"\n") "<09f18b8d-037d-edd2-84d5-270cd9b44d54@cs.ucla.edu>" ("<09f18b8d-037d-edd2-84d5-270cd9b44d54@cs.ucla.edu>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14153 invoked by uid 550); 11 Sep 2017 18:59:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14132 invoked from network); 11 Sep 2017 18:59:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=1++bs9c3VKgDU885pXxR8GaqmVXorO8drFtOoCOhnBU=;
        b=qE/MiNFUd2GvvElowWSinvednYGZHHxxPnSVhFnWVWg54V8z0xvQZVE0wGQZLEAgGa
         B2Vs6aTGcAwJKNuJHU5O5/W+jfELARXc7LM6CYbCzM1rwUnHbRtAqhZW23JQ1XcPbLof
         Fq4VFka+4K/6yVtWx4VWWfLgIpQ23JnE/EeZSSRGJ7Jss+wyNqG8aF2t6vf+bi1wKOzU
         3O4yTum8Suow/erYrHiTfyIo4zmUbM9KGvcgUjs8rI2+oqUSeSf20yhfpoWvd7h8Rq9Z
         nra6rjchFcVm9af1Y9tp5gqtiEsCLcd8Pjn/SKpyAgQF/jr2kq0Jf4AZ3pnwN4K8ZrFO
         lLtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=1++bs9c3VKgDU885pXxR8GaqmVXorO8drFtOoCOhnBU=;
        b=EVmbF2CDvtDEvjOj52+22wPBnCHaWG5ZOLNaeq0CXws/md0DiFSv0wfwz6QwT28zUw
         4zgrfl8GzBSj/rF+hptsDYF5sTDS9FRi3CZYgni9nfCZqLzJDkFlk0nsHrB3hG4cMAR4
         3yDAdJMyINIF9qTqH4w+8brzbslbUNMVVpgQlll0AkihuFNVhSInPLUwTrSb4PY10FYX
         ZBfdgEzjhgmF57dQ5T4AkBf35B730K8s8zg00KtFsF/BYlbFKtLqLjq739/Ykob0zOU5
         bJrz0sGND4zEDzKunx8OYzZ6q94dyiewSORgEWFX64ta+6lLowcmppKkckA9UIdVwUhU
         II5w==
X-Gm-Message-State: AHPjjUh+AEsROa6D9ltiUNItJmsS7Oz4wpsoqATyYiKGUD3AZWLCK8JG
	lsll/ogQjgG9q6/F6cz7tQkU7Q==
X-Google-Smtp-Source: AOwi7QDEWpQxFfWWQdtnbA8fth35MVpRplCJuglzJjENDgYUMszd7UgQrM9W1DYyUkHUs0o5QFeE+w==
X-Received: by 10.28.232.138 with SMTP id f10mr6824443wmi.130.1505156338580;
        Mon, 11 Sep 2017 11:58:58 -0700 (PDT)
Message-ID: <20170911185857.hfti4mrponqoddin@eldamar.local>
References: <09f18b8d-037d-edd2-84d5-270cd9b44d54@cs.ucla.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <09f18b8d-037d-edd2-84d5-270cd9b44d54@cs.ucla.edu>
User-Agent: NeoMutt/20170609 (1.8.3)
Date: Mon, 11 Sep 2017 20:58:57 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: Re: [oss-security] GNU Emacs 25.2 enriched text remote code execution
To: oss-security@lists.openwall.com

Hi Paul,

On Sun, Sep 10, 2017 at 11:56:20PM -0700, Paul Eggert wrote:
> GNU Emacs is an extensible, customizable, free/libre text editor and
> software environment.  When Emacs renders MIME text/enriched data (Internet
> RFC 1896), it is vulnerable to arbitrary code execution. Since Emacs-based
> mail clients decode "Content-Type: text/enriched", this code is exploitable
> remotely. This bug affects GNU Emacs versions 19.29 through 25.2.
> 
> Although we know no efforts to exploit this in the wild, exploitation is easy.
[...]
> == Timeline ==
> 
> 2017-09-04. Bug reported to the Emacs bug tracker by Charles A. Roelli.
> 
> 2017-09-07. POC for remote code execution sent to the maintainers of Emacs
> and Gnus (Reiner Steib <Reiner.Steib@gmx.de>, private mail).
> 
> 2017-09-08. Patch (by Lars Ingebrigtsen <larsi@gnus.org>) to disable the
> problematic code and mitigation (private mail).
> 
> 2017-09-09. Patch committed in main development repository.

Have you requested a CVE for this issue?

Regards,
Salvatore
