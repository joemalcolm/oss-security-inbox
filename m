Received: (qmail 1836 invoked by uid 550); 24 Sep 2025 04:09:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28532 invoked from network); 24 Sep 2025 03:25:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758684348; x=1759289148; darn=lists.openwall.com;
        h=in-reply-to:from:content-language:references:cc:to:subject:reply-to
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=txtN71dnz4wPLpUWtDcOUTUjqm2Pra7VfBDrlCRktf4=;
        b=finGt+kcSLLfKH6yWz7RuyuUWi4oQWoZOdAaEXQq8sPhXIUv2hxOMBc7T02FCh9RKN
         HSZmy71rHi/dL5wmYUUw1IsLYPHEsHzoUvzVoMA64dzi1hJSuRSmS4EdAmpLVNOofE7X
         dEhZlHYUy2rb6sCxUBahu7UVSkRuRayzeMLNMI08MB3xNsmTbZKN27u5I/FIyzH9Pbnm
         1FhgJY8vUFBOzTn5tBcfkcNSpQiVdNDS7lDSdD/qhTtbJzbr1J62/eyOftBRW4JDWvZx
         Ktnrt2lWeRHwvwk9I/yIVOrsny2g0oj85L4G4+jAyCibRckh60EVEE+eulJNjA5l+kDG
         pFow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758684348; x=1759289148;
        h=in-reply-to:from:content-language:references:cc:to:subject:reply-to
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=txtN71dnz4wPLpUWtDcOUTUjqm2Pra7VfBDrlCRktf4=;
        b=OiahWBkdLvJcvoV8C1EQesykxjCwfmk2gls8/CDaqciPiCYBGu9G9wfNr7cF0miUi2
         Q18c0Bt8+CpAAxLTyXjS5BWfJNuKKCidZCiwc0ukREms1qAric4nM03I11Y8RzJnNfjA
         xmCuSIfAgSFkHwFN/uku39ZI6evSOCxZgh8KtLi6XZYzmmN0R9WiktgFxZkeTxmD2rFW
         sV3LwhGv+psQ8cN/XAOKMCEc4MMPEtGltKzuph/SdlKJ43MqYT9nUOiM0wnznsW+2jpx
         zpVEh7iJKgiAw6nlosIUXhEW7kyH5UyZORSLEdEw2IyyJ6/uHstdeOT40ut+mkpFVYWz
         CetA==
X-Gm-Message-State: AOJu0YxdpB8UlMqNVm+3vwOdABUsH+KRzwPOSQ2UVaKmDuDWCFIAffTg
	w4535DNRIKR5W19pLzv7qvzj9X3ok4ywbnBqAquYY2CQcAnkvufWo0Nrp7Zt/Q==
X-Gm-Gg: ASbGncvhW2NwepMzZMR2gjTpwDPsWW+0uY2zrswRr5INfuV1wSbkbq1O0Zmge/8aduf
	bpXkJg+Vz/lfSKBv0q5L/M+P+W5EQTscm4t1mMq5DgTrMaZOy6cxJBpa7lTWumbyJE2kIu6bHFX
	uqxrBVqrU6HcfSHI1JnFilnnp1K/pBBHB1bMnwCNlatOxcVCz/wZZDLDoIoIyC0r4tyWMLJH4jl
	1HOfZPOWWja8B8BshuHi6FVzfIAh92M6Dkr26ZHhv/OcPQqmRUPrmX5V4jqlBOg9rh1bXXKtm0Y
	Bb4rUVd4GoWJ8c52CLNkA3JmfSxIdjBd/4Ex/eLvSpMwdUJo9n/HBHUChZ2X9+zY1P6arjlRIjP
	geJyAauoyyouHsqwbjxA=
X-Google-Smtp-Source: AGHT+IFfjzuaWjXDai7mjHzIFMSBiXuG/0y1Mevl9v9JBnh7AAqkfWnLGLZweFF5UhX5QL+29XkCpg==
X-Received: by 2002:a05:690c:4d88:b0:72e:a82a:ab84 with SMTP id 00721157ae682-758a8aab027mr37714217b3.51.1758684347711;
        Tue, 23 Sep 2025 20:25:47 -0700 (PDT)
Content-Type: multipart/alternative;
 boundary="------------vIr9Ueh3SpyGVPtRTLrx0C96"
Message-ID: <43743160-7c83-4c4e-ad77-52e5058636c5@gmail.com>
Date: Tue, 23 Sep 2025 22:25:37 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com, "Adiletta, Andrew" <ajadiletta@wpi.edu>,
 Solar Designer <solar@openwall.com>
Cc: "openssh@openssh.com" <openssh@openssh.com>, "Tol, Caner" <mtol@wpi.edu>,
 "Sunar, Berk" <sunar@wpi.edu>, "Doroz, Yarkin" <ydoroz@wpi.edu>,
 "Todd C. Miller" <Todd.Miller@courtesan.com>,
 "pgut001@cs.auckland.ac.nz" <pgut001@cs.auckland.ac.nz>
References: <92a89d5d-e0de-c713-e7d2-83f971574eff@mindrot.org>
 <20250923032113.GA14348@openwall.com>
 <BL1PR01MB772308134BF946DF07159A05C11CA@BL1PR01MB7723.prod.exchangelabs.com>
Content-Language: en-US
From: Jacob Bachmeyer <jcb62281@gmail.com>
In-Reply-To: <BL1PR01MB772308134BF946DF07159A05C11CA@BL1PR01MB7723.prod.exchangelabs.com>
Subject: Re: [oss-security] Re: [EXT] Re: [oss-security] CVE-2023-51767: a
 bogus CVE in OpenSSH

--------------vIr9Ueh3SpyGVPtRTLrx0C96
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 9/23/25 20:42, Adiletta, Andrew wrote:
> [...]
>
> However, on the practicality, I do believe that we did not 
> mischaracterize the attack in the paper, and as Alexander concisely 
> mentioned, we are really trying to emphasize the issues with simple 
> 0/1 flag logic that leads down to sensitive execution flows. Also, 
> great point about the exit codes, in hindsight that would've been a 
> good point to address as well. But ulimately, we did make 
> syncronization an assumption as stated in the paper, citing that there 
> are other teams working on syncronization methods 
> (https://www.usenix.org/conference/usenixsecurity22/presentation/aldaya 
> <https://www.usenix.org/conference/usenixsecurity22/presentation/aldaya>).

This seems to confirm my previous assessment that your attack from the 
paper is a proof-of-concept.

> Slight clarification on Peter's point - I agree with your point about 
> rad-hard faults protection on modern CPUs, although the threat model 
> for Mayhem was that registers, as a limited resource, need to 
> constantly swap back to DRAM, where register values can be corrupted 
> via Rowhammer and the corrupted values are then stored in the register 
> when they are brought back from DRAM.

The critical issue for exploiting Rowhammer to corrupt spilled register 
values seems to be how long those spilled values remain live in DRAM 
before they are reloaded into the register file and ultimately used.


As I understand it, Rowhammer is a slow, probabilistic attack, 
requiring, at minimum, many milliseconds for a chance at success. If the 
target program is going to reload the values within microseconds, the 
probability of a successful attack rapidly approaches zero and there is 
no practical risk.  (A machine that vulnerable to Rowhammer is likely to 
flip too many bits in normal operation and crash so frequently that it 
gets replaced.)


This may point towards a previously-unrecognized security risk in OS 
schedulers, where delaying a privileged process is more than merely a 
denial-of-service.  Perhaps dynamic CPU affinities could be used to 
reduce the risk by reserving a core for privileged tasks when any are 
runnable?


Another solution could be a "scheduler yield" primitive that yields the 
processor but guarantees a full timeslice when the program is next 
resumed.  As long as the critical window can fit within a single 
scheduler timeslice, this would close the window on exploitation.

> From a hardware architectural standpoint, it might make sense to do a 
> hash check before and after register values are pushed and popped to 
> prevent this type of attack, but that was a bit out-of-scope for the 
> paper. But also, agree with your point on ECC as being a potentially 
> unreliable mitigation.

Any practical hash check will be no better than ECC:  the attacker need 
only also flip a few more bits.  Do not pretend that checksums are going 
to fix this.


If you think that a cryptographic digest is suitable for protecting 
register values spilled to the stack, then you have no idea how often 
registers are spilled and reloaded.



-- Jacob

--------------vIr9Ueh3SpyGVPtRTLrx0C96
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 9/23/25 20:42, Adiletta, Andrew
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:BL1PR01MB772308134BF946DF07159A05C11CA@BL1PR01MB7723.prod.exchangelabs.com">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <style type="text/css" style="display:none;">P {margin-top:0;margin-bottom:0;}</style>[...]
      <div class="elementToProof"
style="text-align: left; text-indent: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div class="elementToProof"
style="text-align: left; text-indent: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
        However, on the practicality, I do believe that we did not
        mischaracterize the attack in the paper, and as Alexander
        concisely mentioned, we are really trying to emphasize the
        issues with simple 0/1 flag logic that leads down to sensitive
        execution flows. Also, great point about the exit codes, in
        hindsight that would've been a good point to address as well.
        But ulimately, we did make syncronization an assumption as
        stated in the paper, citing that there are other teams working
        on syncronization methods (<a data-ogsc="" data-linkindex="0"
          data-auth="NotApplicable"
originalsrc="https://www.usenix.org/conference/usenixsecurity22/presentation/aldaya"
          rel="noopener noreferrer"
title="Original URL: https://www.usenix.org/conference/usenixsecurity22/presentation/aldaya. Click or tap if you trust this link."
          class="OWAAutoLink moz-txt-link-freetext"
          id="OWA634fa6af-207f-ef00-9ca2-1bdf2be9828f" target="_blank"
href="https://www.usenix.org/conference/usenixsecurity22/presentation/aldaya"
          moz-do-not-send="true">https://www.usenix.org/conference/usenixsecurity22/presentation/aldaya</a>).</div>
    </blockquote>
    <p>This seems to confirm my previous assessment that your attack
      from the paper is a proof-of-concept.</p>
    <blockquote type="cite"
cite="mid:BL1PR01MB772308134BF946DF07159A05C11CA@BL1PR01MB7723.prod.exchangelabs.com">
      <div class="elementToProof"
style="text-align: left; text-indent: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
        Slight clarification on Peter's point - I agree with your point
        about rad-hard faults protection on modern CPUs, although the
        threat model for Mayhem was that registers, as a limited
        resource, need to constantly swap back to DRAM, where register
        values can be corrupted via Rowhammer and the corrupted values
        are then stored in the register when they are brought back from
        DRAM.</div>
    </blockquote>
    <p>The critical issue for exploiting Rowhammer to corrupt spilled
      register values seems to be how long those spilled values remain
      live in DRAM before they are reloaded into the register file and
      ultimately used.</p>
    <p><br>
    </p>
    <p>As I understand it, Rowhammer is a slow, probabilistic attack,
      requiring, at minimum, many milliseconds for a chance at success. 
      If the target program is going to reload the values within
      microseconds, the probability of a successful attack rapidly
      approaches zero and there is no practical risk.  (A machine that
      vulnerable to Rowhammer is likely to flip too many bits in normal
      operation and crash so frequently that it gets replaced.)<br>
    </p>
    <p><br>
    </p>
    <p>This may point towards a previously-unrecognized security risk in
      OS schedulers, where delaying a privileged process is more than
      merely a denial-of-service.  Perhaps dynamic CPU affinities could
      be used to reduce the risk by reserving a core for privileged
      tasks when any are runnable?</p>
    <p><br>
    </p>
    <p>Another solution could be a "scheduler yield" primitive that
      yields the processor but guarantees a full timeslice when the
      program is next resumed.  As long as the critical window can fit
      within a single scheduler timeslice, this would close the window
      on exploitation.<br>
    </p>
    <blockquote type="cite"
cite="mid:BL1PR01MB772308134BF946DF07159A05C11CA@BL1PR01MB7723.prod.exchangelabs.com">
      <div class="elementToProof"
style="text-align: left; text-indent: 0px; font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">From
        a hardware architectural standpoint, it might make sense to do a
        hash check before and after register values are pushed and
        popped to prevent this type of attack, but that was a bit
        out-of-scope for the paper. But also, agree with your point on
        ECC as being a potentially unreliable mitigation.</div>
    </blockquote>
    <p>Any practical hash check will be no better than ECC:  the
      attacker need only also flip a few more bits.  Do not pretend that
      checksums are going to fix this.<br>
    </p>
    <p><br>
    </p>
    <p>If you think that a cryptographic digest is suitable for
      protecting register values spilled to the stack, then you have no
      idea how often registers are spilled and reloaded.</p>
    <p><br>
    </p>
    <p><br>
    </p>
    <p>-- Jacob<br>
    </p>
  </body>
</html>

--------------vIr9Ueh3SpyGVPtRTLrx0C96--
