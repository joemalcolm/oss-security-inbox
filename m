X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["905" "Friday" "6" "May" "2016" "15:14:55" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" "<20160506131455.GA17272@lorien.valinor.li>" "28" "[oss-security] CVE Requests: Linux: BPF flaws (one use-after-free / local root privilege escalation)" nil nil nil "5" "2016050613:14:55" "[oss-security] CVE Requests: Linux: BPF flaws (one use-after-free / local root privilege escalation)" (number mark "U       carnil@debia May  6   28/905   " thread-indent "\"[oss-security] CVE Requests: Linux: BPF flaws (one use-after-free / local root privilege escalation)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19508 invoked by uid 550); 6 May 2016 13:15:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19490 invoked from network); 6 May 2016 13:15:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=9H6LpdYlpj9CthrFkqY04YG+9q33WMkD8zy2DYKz6p8=;
        b=lmDKUwl+g1e/Idn2v/0AxYuz6OP2c5+ioEqeUSSHXkXBBdEzuJzshfgWjy6NIogyfo
         VyRPB2fnoLVEAAVSNqflaL0lvDljCeZMjWHtplPUAJVbatfKJ/7O34RQGRs48YTUoVYU
         VwfSZcAhn/EywWL8TDyStWdae0p5OtspPATAq6bZjRbvDKi4ZJMIclFvM2IDSh1eL7y6
         kdDHqusGh+jVCKaF6GIA7CUkmV9z93WMAfGLDvq19upIQ62QbPJ/rd8KY9xBCkn2Xo9e
         tebwxGdqjnQAz7NCLkJeYNYq1tDUIqEU8Fp+5cYmT1aAte6B90Dkvksfm2q62HPhQbIx
         2RAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=9H6LpdYlpj9CthrFkqY04YG+9q33WMkD8zy2DYKz6p8=;
        b=VRm8l3C1GGzwAEnyMjYqGVcbENXcrv3aD7tn5RUxuWeK935XFwiaAB55Qh+MgQFfIy
         fTZTB6IBfJ/BvOoVnjw6ePW7/WuxnaRCLrvvztzBnXmTXsah/nNa3UDlmcNNgKG5yrcw
         hAJ9noSoAIAM+ojg+GYl6eiGBhsxKnG2Cp3JShcm6dc/SAqEI8wm3XU5eXJP4YdQxNvD
         L+ziUi1N6r7EXt2rSGQGnji0LYXrO76xglQ/sFCnUfhYG/xXs1RNa98zwkTaBWnsC+Sw
         jaCezHS5z48Q4mMZkPnsWY+saxWKDxw6ubf9kPDBdCDQ67+y6z2FLUzFYbFvbQQnm6m+
         E8cQ==
X-Gm-Message-State: AOPr4FVfc4WPrGU712vNwGdfFVXnaq/E/2ru9vmpM66KXdQ2PDfFw51UK2k22KAANr0QTw==
X-Received: by 10.28.94.12 with SMTP id s12mr9715400wmb.54.1462540496836;
        Fri, 06 May 2016 06:14:56 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Fri, 6 May 2016 15:14:55 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Cc: Ben Hutchings <benh@debian.org>
Message-ID: <20160506131455.GA17272@lorien.valinor.li>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [oss-security] CVE Requests: Linux: BPF flaws (one use-after-free / local root
 privilege escalation)

A use-after-free flaw via double-fdput in bpf was recently fixed in
Linux. Details:

https://bugs.chromium.org/p/project-zero/issues/detail?id=808

Fixed via:
https://git.kernel.org/linus/8358b02bf67d3a5d8a825070e1aa73f25fb2e4c7

And as well reported/forwarded in Debian:
https://bugs.debian.org/823603

Could you please assign a CVE for this issue?

The following two might as well warrant a CVE (Ben Hutchings CC'ed has
already applied those to the packaging repository in Debian):

bpf: fix refcnt overflow:
https://git.kernel.org/linus/92117d8443bc5afacc8d5ba82e541946310f106e

bpf: fix check_map_func_compatibility logic
https://git.kernel.org/linus/6aff67c85c9e5a4bc99e5211c1bac547936626ca

Not sure though if the later one has a security impact. The bug
allowed generic map functions to be applied to special map types
(program, perf events) that did not support them properly.

Regards,
Salvatore
